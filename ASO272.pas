Unit ASO272;

// Inicio Uso Estándares   : 01/08/2011
// Unidad                  : ASO272
// Formulario              : fMasDatos
// Fecha de Creación       : 19/01/2015
// Autor                   : Equipo de Sistemas
// Objetivo                : Mantenimiento de Contactabilidad de Asociados

// Actualizaciones         :
// HPC_201501_ASO          : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos)

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB, DBClient, ppCtrls,
   ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppReport, ppDB, ppComm,
   ppRelatv, ppDBPipe, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
   IdFTP, ExtCtrls, wwdblook, Mask, wwdbedit;
Type
   TfMasDatos = Class(TForm)
      BitSalir: TBitBtn;
      Panel1: TPanel;
      Label10: TLabel;
      Panel2: TPanel;
      Label1: TLabel;
      Panel3: TPanel;
      Label2: TLabel;
      dtgTelef: TwwDBGrid;
      dtgTelefonoIButton: TwwIButton;
      dtgDirecc: TwwDBGrid;
      dtgDireccionIButton: TwwIButton;
      BitActivarTelefono: TBitBtn;
      BitActivarDireccion: TBitBtn;
      bitActivarCorreo: TBitBtn;
      dtgCorreos: TwwDBGrid;
      dtgCorreoIButton: TwwIButton;
      Panel4: TPanel;
      Label3: TLabel;
      Label24: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      EdtAsoNomDni: TwwDBEdit;
      wwDBEdit2: TwwDBEdit;
      wwDBEdit1: TwwDBEdit;
      Label6: TLabel;
      wwDBEdit3: TwwDBEdit;
      dbeTipAsoDes: TwwDBEdit;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure dtgTelefDrawDataCell(Sender: TObject; const Rect: TRect;
         Field: TField; State: TGridDrawState);
      procedure BitActivarTelefonoClick(Sender: TObject);
      procedure BitActivarDireccionClick(Sender: TObject);
      procedure bitActivarCorreoClick(Sender: TObject);
      procedure BitSalirClick(Sender: TObject);
      procedure dtgTelefonoIButtonClick(Sender: TObject);
      procedure dtgDireccionIButtonClick(Sender: TObject);
      procedure dtgCorreoIButtonClick(Sender: TObject);
      procedure FormShow(Sender: TObject);
    procedure dtgTelefDblClick(Sender: TObject);
    procedure dtgDireccDblClick(Sender: TObject);
    procedure dtgCorreosDblClick(Sender: TObject);

   Private
      procedure fn_cargar_correos;
      procedure fn_cargar_direcciones;
      procedure fn_cargar_telefonos;
      procedure cdsAfterScrollTelefono(DataSet: TDataSet);
      procedure cdsAfterScrollDireccion(DataSet: TDataSet);
      procedure cdsAfterScrollCorreo(DataSet: TDataSet);
    { Private declarations }
   Public
    { Public declarations }
      xsAsoId : string;
   End;

Var
   fMasDatos: TfMasDatos;

Implementation

Uses  ASODM, ASO273, ASO274, ASO275;

{$R *.dfm}

procedure TfMasDatos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtgTelef.DataSource.DataSet.AfterScroll := nil;
  dtgDirecc.DataSource.DataSet.AfterScroll := nil;
  dtgCorreos.DataSource.DataSet.AfterScroll := nil;
  Action := caFree;
end;


procedure TfMasDatos.BitSalirClick(Sender: TObject);
begin
  Close;
end;


procedure TfMasDatos.FormShow(Sender: TObject);
var
   xSQL : string;
begin

   dbeTipAsoDes.Text := DM1.RecuperaDatos('APO107', 'ASOTIPID', DM1.cdsAso.fieldbyname('ASOTIPID').AsString, 'ASOTIPDES');

   xSQL:='SELECT ASOTELF1 || CASE WHEN ASOTELF2 IS NOT NULL THEN '' / ''||ASOTELF2 END TELEFONOS, '
      +        ' ASODIR, ZIPID, ASOEMAIL '
      + '   FROM APO201 '
      + '  WHERE ASOID = ' + QuotedStr(xsAsoId)
      + '    AND (ASOTELF1 IS NOT NULL OR ASOTELF2 IS NOT NULL)';
   DM1.cdsQry8.Close;
   DM1.cdsQry8.DataRequest( xSQL );
   DM1.cdsQry8.Open;

   xSQL:='SELECT ASOID FROM GES_TEL_ASO WHERE ASOID = ' + QuotedStr(xsAsoId) + ' and CODFUEINF=''02'' '
        +  ' and NROTELF='''+DM1.cdsQry8.FieldByname('TELEFONOS').AsString+'''';
   If DM1.CountReg(xSQL) = 0 Then
   Begin
      xSQL := 'INSERT INTO GES_TEL_ASO (IDTIPTEL, NROTELF, ACTIVO, ASOID, USUARIO, '
            + '                         HREG, OBSTEL, USUMOD, MODREG, FLGMIGUBIC, CODFUEINF )'
            + ' SELECT ''01'', ASOTELF1 || CASE WHEN ASOTELF2 IS NOT NULL THEN '' / ''||ASOTELF2 END , ''N'', ASOID, USUARIO, '
            + '        SYSDATE, ''INSERTADO AUTOMATICAMENTE'', NULL, NULL, ''N'', ''02'' '
            + '   FROM APO201 '
            + '  WHERE ASOID = ' + QuotedStr(xsAsoId)
            + '    AND (ASOTELF1 IS NOT NULL OR ASOTELF2 IS NOT NULL)';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   xSQL := 'SELECT ASOID FROM GES_DOM_ASO WHERE ASOID = ' + QuotedStr(xsAsoId) + ' and CODFUEINF=''02'' '
        +  ' and ASODIR='''+DM1.cdsQry8.FieldByname('ASODIR').AsString+''''
        +  ' and UBIGEO='''+DM1.cdsQry8.FieldByname('ZIPID').AsString+'''';
   If DM1.CountReg(xSQL) = 0 Then
   Begin
      xSQL := 'INSERT INTO GES_DOM_ASO(ASODIR, UBIGEO, ACTIVO, ASOID, USUARIO, '
            + '                        HREG, OBSTEL, MODREG, USUMOD, '
            + '                        FLGMIGUBIC, CODFUEINF)'
            + '     SELECT ASODIR, ZIPID, ''N'', ASOID, USUARIO, '
            + '            SYSDATE, ''INSERTADO AUTOMATICAMENTE'', NULL, NULL, '
            + '            ''N'', ''02'' '
            + '       FROM APO201 '
            + '      WHERE ASOID = ' + QuotedStr(xsAsoId)
            + '        AND ASODIR IS NOT NULL';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   xSQL := 'SELECT ASOID FROM GES_COR_ASO WHERE ASOID = ' + QuotedStr(xsAsoId) + ' and CODFUEINF=''02'' '
        +  ' and CORREO='''+DM1.cdsQry8.FieldByname('ASOEMAIL').AsString+'''';
   If DM1.CountReg(xSQL) = 0 Then
   Begin
      xSQL := 'INSERT INTO GES_COR_ASO(CODTIPCOR, CORREO, ACTIVO, ASOID, USUARIO, '
            + '                        HREG, OBSCOR, USUMOD, MODREG, '
            + '                        FLGMIGUBIC, CODFUEINF)'
            + '     SELECT ''01'', ASOEMAIL, ''N'', ASOID, USUARIO, '
            + '            SYSDATE, ''INSERTADO AUTOMATICAMENTE'', NULL, NULL, '
            + '            ''N'', ''02'' '
            + '       FROM APO201 '
            + '      WHERE ASOID = ' + QuotedStr(xsAsoId)
            + '        AND ASOEMAIL IS NOT NULL';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   fn_cargar_telefonos();
   fn_cargar_direcciones();
   fn_cargar_correos();
end;


procedure TfMasDatos.fn_cargar_telefonos;
var xSQL : string;
begin
   if dtgTelef.DataSource <> nil then
      dtgTelef.DataSource.DataSet.AfterScroll := nil;
   xSQL := 'SELECT B.DESTIPTEL, A.NROTELF, C.DESFUEINF, A.OBSTEL, A.IDTIPTEL, '
         + '       NVL(A.MODREG, A.HREG) FECHA, NVL(A.USUMOD, A.USUARIO) USUARIO, A.ACTIVO, A.ACTIVO, A.ROWID  '
         + '  FROM GES_TEL_ASO A, '
         + '       GES_TIP_TEL_MAE B, '
         + '       GES_FUE_INF_MAE C '
         + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
         + '   AND A.IDTIPTEL = B.CODTIPTEL '
         + '   AND A.CODFUEINF = C.CODFUEINF '
         + ' ORDER BY A.ACTIVO DESC, NVL(A.MODREG, A.HREG) DESC ';
   DM1.cdsDocPago.Close;
   DM1.cdsDocPago.DataRequest(xSQL);
   DM1.cdsDocPago.Open;
   dtgTelef.DataSource := DM1.dsDocPago;
   with dtgTelef do
   begin
        Selected.Clear;
        Selected.Add('DESTIPTEL'#9'15'#9'TIPO');
        Selected.Add('NROTELF'#9'25'#9'NRO TELÉFONO');
        Selected.Add('DESFUEINF'#9'15'#9'FUENTE');
        Selected.Add('FECHA'#9'25'#9'FECHA');
        Selected.Add('USUARIO'#9'15'#9'USUARIO');
        ApplySelected;
        DataSource.DataSet.AfterScroll := cdsAfterScrollTelefono;
        cdsAfterScrollTelefono(DataSource.DataSet);
   end;
end;


procedure TfMasDatos.fn_cargar_direcciones;
var xSQL : string;
begin
   if dtgDirecc.DataSource <> nil then
      dtgDirecc.DataSource.DataSet.AfterScroll := nil;
   xSQL := 'SELECT A.ASODIR, B.DPTODES, C.CIUDDES, D.ZIPDES, E.DESFUEINF, A.UBIGEO, OBSTEL, '
         + '       NVL(A.MODREG, A.HREG) FECHA, NVL(A.USUMOD, A.USUARIO) USUARIO, A.ACTIVO, A.ROWID '
         + '  FROM GES_DOM_ASO A, TGE158 B, TGE121 C, TGE122 D, GES_FUE_INF_MAE E '
         + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
         + '   AND SUBSTR(A.UBIGEO, 1, 2) = B.DPTOID '
         + '   AND SUBSTR(A.UBIGEO, 1, 4) = C.DPTOID||C.CIUDID '
         + '   AND SUBSTR(A.UBIGEO, 1, 6) = D.DPTOID||D.CIUDID||D.ZIPID '
         + '   AND A.CODFUEINF = E.CODFUEINF '
         + ' ORDER BY ACTIVO DESC, NVL(A.MODREG, A.HREG) DESC ';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;
   dtgDirecc.DataSource := DM1.dsMGrupo;
   with dtgDirecc do
   begin
        Selected.Clear;
        Selected.Add('ASODIR'#9'45'#9'DIRECCIÓN');
        Selected.Add('DPTODES'#9'16'#9'DEPARTAMENTO');
        Selected.Add('CIUDDES'#9'18'#9'PROVINCIA');
        Selected.Add('ZIPDES'#9'20'#9'DISTRITO');
        Selected.Add('DESFUEINF'#9'12'#9'FUENTE');
        Selected.Add('FECHA'#9'22'#9'FECHA');
        Selected.Add('USUARIO'#9'15'#9'USUARIO');
        ApplySelected;
        DataSource.DataSet.AfterScroll := cdsAfterScrollDireccion;
        cdsAfterScrollDireccion(DataSource.DataSet);
   end;
end;


procedure TfMasDatos.fn_cargar_correos;
var xSQL : string;
begin
   if dtgCorreos.DataSource <> nil then
      dtgCorreos.DataSource.DataSet.AfterScroll := nil;

   xSQL := 'SELECT B.DESTIPCOR, A.CORREO, C.DESFUEINF, '
         + '       NVL(A.MODREG, A.HREG) FECHA, NVL(A.USUMOD, A.USUARIO) USUARIO, '
         + '       A.ACTIVO, A.ROWID, A.OBSCOR '
         + '  FROM GES_COR_ASO A, GES_TIP_COR_MAE B, GES_FUE_INF_MAE  C '
         + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
         + '   AND A.CODTIPCOR = B.CODTIPCOR '
         + '   AND A.CODFUEINF = C.CODFUEINF '
         + ' ORDER BY ACTIVO DESC, NVL(A.MODREG, A.HREG) DESC ';
   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSQL);
   DM1.cdsDSocioE.Open;
   dtgCorreos.DataSource := DM1.dsDSocioE;
   with dtgCorreos do
   begin
        Selected.Clear;
        Selected.Add('DESTIPCOR'#9'15'#9'TIPO');
        Selected.Add('CORREO'#9'40'#9'CORREO');
        Selected.Add('DESFUEINF'#9'15'#9'FUENTE');
        Selected.Add('FECHA'#9'22'#9'FECHA');
        Selected.Add('USUARIO'#9'15'#9'USUARIO');
        ApplySelected;
        DataSource.DataSet.AfterScroll := cdsAfterScrollCorreo;
        cdsAfterScrollCorreo(DataSource.DataSet);
   end;
end;


procedure TfMasDatos.dtgTelefDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  // evento preparado y enlazado para telefonos, direcciones y correos
  if TwwDBGrid(Sender).DataSource.DataSet.FieldByName('ACTIVO').AsString = 'S' then
  begin
      if (State = [gdSelected..gdFocused]) or (State = [gdSelected]) then TwwDBGrid(Sender).Canvas.Font.Color := clBlack;
      TwwDBGrid(Sender).Canvas.Brush.Color := $00FFF2D9;
  end;
  TwwDBGrid(Sender).DefaultDrawDataCell(Rect, Field, State);
end;
(******************************************************************************)

procedure TfMasDatos.cdsAfterScrollTelefono(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ACTIVO').AsString = 'S' then
    BitActivarTelefono.Caption := 'DesValidar'
  else
    BitActivarTelefono.Caption := 'Validar';
end;

(******************************************************************************)

procedure TfMasDatos.cdsAfterScrollDireccion(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ACTIVO').AsString = 'S' then
    BitActivarDireccion.Caption := 'DesValidar'
  else
    BitActivarDireccion.Caption := 'Validar';
end;
(******************************************************************************)

procedure TfMasDatos.cdsAfterScrollCorreo(DataSet: TDataSet);
begin
  if DataSet.FieldByName('ACTIVO').AsString = 'S' then
    bitActivarCorreo.Caption := 'DesValidar'
  else
    bitActivarCorreo.Caption := 'Validar';
end;
(******************************************************************************)

procedure TfMasDatos.BitActivarTelefonoClick(Sender: TObject);
var xSQL, xActivo : string;
    xRowId : string;
begin
   with dtgTelef.DataSource do
   begin
      xRowId := DataSet.FieldByName('ROWID').AsString;
      xSQL := 'UPDATE GES_TEL_ASO '
            + '   SET ACTIVO = CASE WHEN ACTIVO = ''S'' THEN ''N'' ELSE ''S'' END '
            + '      ,MODREG = SYSDATE '
            + '      ,USUMOD = ' + QuotedStr(DM1.wUsuario)
            + ' WHERE ROWID = ' + QuotedStr(DataSet.FieldByName('ROWID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      fn_cargar_telefonos;
      DataSet.Locate('ROWID',VarArrayOf([xRowId]),[]);
   end;
end;
(******************************************************************************)

procedure TfMasDatos.BitActivarDireccionClick(Sender: TObject);
var xSQL, xActivo : string;
    xRowId : string;
begin
   with dtgDirecc.DataSource do
   begin
      xRowId := DataSet.FieldByName('ROWID').AsString;
      xSQL := 'UPDATE GES_DOM_ASO '
            + '   SET ACTIVO = ''N'' '
            + '      ,MODREG = SYSDATE '
            + '      ,USUMOD = ' + QuotedStr(DM1.wUsuario)
            + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
            + '   AND NVL(ACTIVO, ''N'') = ''S'' '
            + '   AND ROWID <> ' + QuotedStr(DataSet.FieldByName('ROWID').AsString);            
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      xSQL := 'UPDATE GES_DOM_ASO '
            + '   SET ACTIVO = CASE WHEN ACTIVO = ''S'' THEN ''N'' ELSE ''S'' END '
            + '      ,MODREG = SYSDATE '
            + '      ,USUMOD = ' + QuotedStr(DM1.wUsuario)
            + ' WHERE ROWID = ' + QuotedStr(DataSet.FieldByName('ROWID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      fn_cargar_direcciones;
      DataSet.Locate('ROWID',VarArrayOf([xRowId]),[]);
   end;
end;
(******************************************************************************)

procedure TfMasDatos.bitActivarCorreoClick(Sender: TObject);
var xSQL, xActivo : string;
    xRowId : string;
begin
   with dtgCorreos.DataSource do
   begin
      xRowId := DataSet.FieldByName('ROWID').AsString;
      xSQL := 'UPDATE GES_COR_ASO '
            + '   SET ACTIVO = CASE WHEN ACTIVO = ''S'' THEN ''N'' ELSE ''S'' END '
            + '      ,MODREG = SYSDATE '
            + '      ,USUMOD = ' + QuotedStr(DM1.wUsuario)
            + ' WHERE ROWID = ' + QuotedStr(DataSet.FieldByName('ROWID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      fn_cargar_correos;
      DataSet.Locate('ROWID',VarArrayOf([xRowId]),[]);
   end;
end;
(******************************************************************************)

procedure TfMasDatos.dtgTelefonoIButtonClick(Sender: TObject);
Var xSQL: String;
Begin
   Try
      DM1.xNuevo := 'S';
      fInfmImp := TfInfmImp.create(Self);
      fInfmImp.xsAsoId := self.xsAsoId;
      if fInfmImp.ShowModal = mrOk then fn_cargar_telefonos;
   Finally
      fInfmImp.Free;
   End;
end;
(******************************************************************************)

procedure TfMasDatos.dtgDireccionIButtonClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Try
      DM1.xNuevo := 'S';
      fInfDirecc := TfInfDirecc.create(Self);
      fInfDirecc.xsAsoId := self.xsAsoId;
      if fInfDirecc.ShowModal = mrOK then fn_cargar_direcciones;
   Finally
      fInfDirecc.Free;
   End;
end;
(******************************************************************************)

procedure TfMasDatos.dtgCorreoIButtonClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Try
      DM1.xNuevo := 'S';
      fInfCorreo := TfInfCorreo.create(Self);
      fInfCorreo.xsAsoId := self.xsAsoId;
      if fInfCorreo.ShowModal = mrOK then fn_cargar_correos;
   Finally
      fInfCorreo.Free;
   End;
end;
(******************************************************************************)
procedure TfMasDatos.dtgTelefDblClick(Sender: TObject);
begin
   ShowMessage( 'Observacion : '+DM1.cdsDocPago.FieldByname('OBSTEL').AsString )
end;

procedure TfMasDatos.dtgDireccDblClick(Sender: TObject);
begin
   ShowMessage( 'Observacion : '+DM1.cdsMGrupo.FieldByname('OBSTEL').AsString )
end;

procedure TfMasDatos.dtgCorreosDblClick(Sender: TObject);
begin
   ShowMessage( 'Observacion : '+DM1.cdsDSocioE.FieldByname('OBSCOR').AsString )
end;

End.

