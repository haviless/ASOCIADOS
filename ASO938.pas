// Inicio Uso Estándares : 01/08/2011
// Unidad                : ASO938
// Formulario            : fCtasAhorro
// Fecha de Creación     : 01/08/2011
// Autor                 : Equipo de Sistemas
// Objetivo		           : Registro de las cuenta de ahorros
// HPC_201602_ASO        : Se añade boton para eliminar una cuenta de ahorros

unit ASO938;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
  jpeg,IniFiles,DateUtils;

type
  TfCtasAhorro = class(TForm)
    grpDatos: TGroupBox;
    dtgCuentas: TwwDBGrid;
    grpCuentas: TGroupBox;
    dbeCtaAho: TwwDBEdit;
    Label10: TLabel;
    DbLlTipBan: TwwDBLookupCombo;
    Panel10: TPanel;
    edtDesBan: TEdit;
    Label1: TLabel;
    dbSitCta: TwwDBLookupCombo;
    Panel1: TPanel;
    EdtDesCta: TEdit;
    Label2: TLabel;
    z2bbtnAcepta: TfcShapeBtn;
    chkHabilita: TCheckBox;
    fcShapeBtn1: TfcShapeBtn;
    pnlCanCta: TPanel;
    memObsCancelacion: TMemo;
    Button1: TButton;
    fcShapeBtn2: TfcShapeBtn;
    Label3: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    BitSalir: TBitBtn;
    // Inicio: HPC_201602_ASO --Botón para eliminar una cuenta de ahorros
    z2bbtnElimina: TfcShapeBtn;
    pnlElimina: TPanel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    stbanco: TStaticText;
    stnumero: TStaticText;
    stestado: TStaticText;
    fcselimina: TfcShapeBtn;
    fcssalirelimina: TfcShapeBtn;
    // Fin: HPC_201602_ASO
    procedure dtgCuentasDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DbLlTipBanChange(Sender: TObject);
    procedure dbSitCtaChange(Sender: TObject);
    procedure z2bbtnAceptaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure chkHabilitaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure fcShapeBtn2Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    // Inicio: HPC_201602_ASO --Botón para eliminar una cuenta de ahorros
    procedure z2bbtnEliminaClick(Sender: TObject);
    procedure fcseliminaClick(Sender: TObject);
    procedure fcssalireliminaClick(Sender: TObject);
    // Fin: HPC_201602_ASO
  private
    { Private declarations }
    function ValidaCuenta(xCuenta:String):String;
    function AsignaNroItem(xAsoId:String):String;
    function VrfAutCtaAhorros(xAsoId,xCuenta:String):String;
    function NumAportes(xAsoId,xMeses,xFecCons:String):Integer;
    function MesIniApo(xFecCons,xMeses:String):String;
    function MesIniCal(xFecActual:String):String;
//    function DesPresTel(xAsoId:String):String;
    function VrfCtaAhorros(xAsoId:String):String;
    function VrfCtaAhorrosMas(xAsoId:String):String;

  public
    { Public declarations }
  end;

var
  fCtasAhorro: TfCtasAhorro;

implementation

uses ASODM;

{$R *.dfm}

procedure TfCtasAhorro.dtgCuentasDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  If DM1.cdsGradoA.FieldByName('SITCTA').AsString='A' Then
     begin
        dtgCuentas.Canvas.Font.Color := clRed;
        dtgCuentas.DefaultDrawDataCell(rect,Field,State);
      end;
end;

procedure TfCtasAhorro.DbLlTipBanChange(Sender: TObject);
begin
   If DM1.cdsRecursos.Locate('BANCOID',DbLlTipBan.Text,[]) then
      Begin
        edtDesBan.Text := DM1.cdsRecursos.FieldByName('BANCONOM').asstring;
      End
   Else
      Begin
        if Length(DbLlTipBan.Text) <> 2 then
           Begin
              Beep;
              edtDesBan.Text  :='';
           End;
      End
end;

procedure TfCtasAhorro.dbSitCtaChange(Sender: TObject);
begin
   If DM1.cdsSitCta.Locate('SITCTAID',dbSitCta.Text,[]) then
      Begin
        EdtDesCta.Text := DM1.cdsSitCta.FieldByName('SITCTADES').asstring;
      End
   Else
      Begin
        if Length(dbSitCta.Text) <> 1 then
           Begin
              Beep;
              EdtDesCta.Text  :='';
           End;
      End


end;

procedure TfCtasAhorro.z2bbtnAceptaClick(Sender: TObject);
var xSQL,xItem,xAsoId,xFecReso,xFecCons:String;
    xNumAportes:Integer;
begin
   If DM1.xCnd='AUT' Then
   begin
      ShowMessage('No tiene acceso a Modificar...');
      Exit;
   end;

   if dbSitCta.Text='C' then
   begin
      MessageDlg('No se puede Cancelar Cuenta de Ahorros por este Boton', mtError,[mbOk],0);
      Exit;
   end;

   xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
   If Length(Trim(edtDesBan.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar Un Banco', mtError,[mbOk],0);
      Exit;
   End;

   If Length(Trim(dbeCtaAho.Text))<>10 Then
   Begin
      MessageDlg(' La Cuenta De Ahorros Debe Tener 10 Caracteres ', mtError,[mbOk],0);
      Exit;
   End;

   If ValidaCuenta(dbeCtaAho.Text)='N' Then
   Begin
      MessageDlg(' La Cuenta De Ahorros No Es Valida ', mtError,[mbOk],0);
      Exit;
   End;

   If Length(Trim(EdtDesCta.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar Un Situación', mtError,[mbOk],0);
      Exit;
   End;

   xSQL:='SELECT ASOID, ASOAPENOMDNI, ASONCTA, SITCTA FROM APO201 '
        +'WHERE ASOID<>'+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
        + ' AND ASONCTA='+QuotedStr(dbeCtaAho.Text);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   begin
      MessageDlg('En Maestro de Asociados, la Cuenta    :    '+pChar(dbeCtaAho.Text)+#13+' Pertenece a :   '+DM1.cdsQry.FieldByname('ASOAPENOMDNI').AsString+#13+#13+'                VERIFIQUE !!!!', mtError,[mbOk],0);
      Exit;
   end;

   If Length(Trim(DM1.RecuperaDatos('ASO_NUE_CLI','ASONCTA',Trim(dbeCtaAho.Text),'ASODNI')))>0 Then
   Begin
      xSQL:='SELECT ASOID, ASONCTA, SITCTA FROM ASO_NUE_CLI '
           +'WHERE ASOID<>'+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
           + ' AND ASONCTA='+QuotedStr(dbeCtaAho.Text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      begin
         MessageDlg('En Maestro de Nuevos Asociados, la Cuenta    :    '+pChar(dbeCtaAho.Text)+#13+' Pertenece a :    '+pChar(Trim(DM1.RecuperaDatos('ASO_NUE_CLI','ASONCTA',Trim(dbeCtaAho.Text),'ASOAPENOMDNI')))+#13+#13+'                VERIFIQUE !!!!', mtError,[mbOk],0);
         Exit;
      end;
   End;

   If Copy(Trim(dbeCtaAho.Text),1,1)<>'4' Then
   Begin
     MessageDlg(' Cuenta No Valida , VERIFIQUE !!!!', mtError,[mbOk],0);
     Exit;
   End;

   If Trim(DM1.cdsAso.fieldbyname('ASOTIPID').AsString)='DO' Then
   Begin
        xSQL:='SELECT TRANSMES||''/''||TRANSANO PERIODO,FORPAGOABR FRMPAG,TRANSMTO MONTO, '+
              'TRANSFOPE,USUARIO,USEID||'' - ''||USEABR USES,HREG FROM APO301 '+
              'WHERE ASOID='+QuotedStr(xAsoId)+' AND TRANSINTID=''APO'' ';
        DM1.cdsCuotas.Close; DM1.cdsCuotas.DataRequest(xSQL); DM1.cdsCuotas.Open;
        If DM1.cdsCuotas.RecordCount=0 Then
           Begin
              MessageDlg(' No Puede Crear Cuentas De Ahorros ASOCIADOS ACTIVOS Que No Tienen Aportes Registrados', mtError, [mbOk], 0);
              DM1.cdsCuotas.Close;
              Exit;
           End;
           DM1.cdsCuotas.Close;
   End;

   If VrfAutCtaAhorros(xAsoId, dbeCtaAho.Text)='S' Then
   Begin
      If Trim(DM1.cdsAso.fieldbyname('ASOTIPID').AsString)='DO' Then
      Begin
         If Length(Trim(DM1.cdsAso.Fieldbyname('ASOFRESNOM').AsString))=0 Then
         Begin
            MessageDlg(' No Puede Aprobar Creditos a Docentes Activos Sin Fecha De Nombramiento ', mtError, [mbOk], 0);
            Exit;
         End;
         xSQL:='SELECT CODIGO FROM CUENTAS_PER WHERE CODIGO='+QuotedStr(Copy(Trim(dbeCtaAho.Text),1,4));
         DM1.cdsCtasBco.Close;
         DM1.cdsCtasBco.DataRequest(xSQL);
         DM1.cdsCtasBco.Open;
         If DM1.cdsCtasBco.RecordCount > 0 Then
         Begin
            xSQL:='INSERT INTO ASO001(ASOID,USUARIO,HREG,IDCODIGO,ASONCTA,ASOAPENOM,ASODNI) VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,''03032005'','+QuotedStr(Trim(dbeCtaAho.Text))+','+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOAPENOM').AsString))+','+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASODNI').AsString))+') ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            MessageDlg('SE NECESITA ACTUALIZACION DE DATOS COMUNICARSE CON'+#13+'UNIDAD DE ACTUALIZACION DE DATOS TLF: 219-0201', mtError, [mbOk], 0);
            DM1.cdsCtasBco.Close;

            xSQL:='SELECT ASOID,ASONCTA FROM ASO002 WHERE ASOID='+QuotedStr(xAsoId)+' AND ASONCTA='+QuotedStr(Trim(dbeCtaAho.Text));
            DM1.cdsTCredito.Close;
            DM1.cdsTCredito.DataRequest(xSQL);
            DM1.cdsTCredito.Open;
            If DM1.cdsTCredito.RecordCount=0 Then
            Begin
               xSQL:='INSERT INTO ASO002(ASOID,USUARIO,HREG,IDCODIGO,ASONCTA,ASOAPENOM,ASODNI) VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,''03032005'','+QuotedStr(Trim(dbeCtaAho.Text))+','+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOAPENOM').AsString))+','+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASODNI').AsString))+') ';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
               xFecReso:=DateToStr(DM1.FechasOutPut(DM1.cdsAso.Fieldbyname('ASOFRESNOM').AsDateTime)); xFecCons:=MesIniCal(DateToStr(DM1.FechaSys));
               xSQL:='SELECT TRUNC(ROUND(MONTHS_BETWEEN('+QuotedStr(xFecCons)+','+QuotedStr(xFecReso)+'),2),0) MESES FROM DUAL';
               DM1.cdsTResol.Close; DM1.cdsTResol.DataRequest(xSQL); DM1.cdsTResol.Open;
               If DM1.cdsTResol.FieldByName('MESES').AsInteger > 0 Then
               Begin
                  //xMesTran := DM1.cdsTResol.FieldByName('MESES').AsInteger; //*-*
                  xNumAportes:=NumAportes(xAsoId, '3', xFecCons);
                  If xNumAportes=3 Then
                  Begin
                     If VrfCtaAhorros(xAsoId)='N'  Then
                     Begin
                        MessageDlg('La CUENTA DE AHORROS Es NUEVA Debe Ser AUTORIZADA ', mtError, [mbOk], 0);
                        Exit;
                     End;

                     If VrfCtaAhorrosMas(xAsoId)='N'  Then
                     Begin
                        MessageDlg('La CUENTA DE AHORROS No Es UNICA Debe Ser AUTORIZADA ', mtError, [mbOk], 0);
                        Exit;
                     End;

                            { If DesPresTel(xAsoId)='N'  Then
                                Begin
                                    MessageDlg('El Asociado No Tiene Ningun Descuento Por TELEAHORROS a la Fecha', mtError, [mbOk], 0);
                                    Exit;
                                End; }

                                xSQL:='UPDATE ASO002 SET FECAUT='+QuotedStr(DateToStr(DM1.FechaSys))+',USRAUT=''AUTOMATICO'',MOTAUT=''AUTORIZACION AUTOMATICA SEGUN MEMORANDUM N°0317-2005-DM-COB'',FHAUT=SYSDATE  WHERE ASOID='+QuotedStr(xAsoId)+' AND ASONCTA='+QuotedStr(Trim(dbeCtaAho.Text)) ;
                                DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                  End
                  Else
                  Begin
                     MessageDlg('El Asociado No Tiene APORTES Cancelados En Forma Consecutiva En Los Ultimos 3 Meses ', mtError, [mbOk], 0);
                     Exit;
                  End;
               End
               Else
               Begin
                  MessageDlg(' Verifique Fecha De Resolución De NOMBRAMIENTO Inconsistente ', mtError, [mbOk], 0);
                  Exit;
               End;
               DM1.cdsTResol.Close;
            End
            Else
            Begin
               If Length(Trim(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId))+' AND ASONCTA='+QuotedStr(Trim(dbeCtaAho.Text)),'ASO002','FECAUT'))) = 0 Then
                     MessageDlg('REGISTRO DE ASOCIADO YA SE ENCUENTRA EN TABLA DE CONTROL, CONSULTE UNIDAD DE ACTUALIZACION DE DATOS ', mtError, [mbOk], 0);
            End;
            DM1.cdsTCredito.Close;

            If Length(Trim(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId))+' AND ASONCTA='+QuotedStr(Trim(dbeCtaAho.Text)),'ASO002','FECAUT'))) = 0 Then
            Begin
               Exit;
            End
            Else
            Begin
               MessageDlg(#13+'REGISTRO DE ASOCIADO YA SE ENCUENTRA AUTORIZADO '+#13+#13+'Por : '+pChar(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId))+' AND ASONCTA='+QuotedStr(Trim(dbeCtaAho.Text)),'ASO002','USRAUT'))+#13+#13+'Motivo : '+pChar(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId))+' AND ASONCTA='+QuotedStr(Trim(dbeCtaAho.Text)),'ASO002','MOTAUT')), mtInformation, [mbOk], 0);
            End;
         End;
         DM1.cdsCtasBco.Close;
      End;
   End;

   If Copy(Trim(dbeCtaAho.Text),1,5)='40911' Then
   Begin
      MessageDlg(' Cuenta No Valida , VERIFIQUE !!!!', mtError,[mbOk],0);
      Exit;
   End;

   xSQL := 'UPDATE APO207 SET SITCTA=''C'' WHERE ASOID ='+QuotedStr(xAsoId);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xItem:=AsignaNroItem(xAsoId);
   xSQL:='INSERT INTO APO207(ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASONCTA, SITCTA, '
        +'                   USUARIO, FREG, HREG, ASOITEM, BANCOID) '
        +'VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.cdsAso.fieldbyname('ASOCODMOD').AsString)+','
        +QuotedStr(DM1.cdsAso.fieldbyname('ASOCODAUX').AsString)+','
        +QuotedStr(DM1.cdsAso.fieldbyname('ASOAPENOM').AsString)+','
        +QuotedStr(dbeCtaAho.Text)+','+QuotedStr(dbSitCta.Text)+','
        +QuotedStr(DM1.wUsuario)+','+QuotedStr(DateToStr(DM1.FechaSys))+',SYSDATE,'
        +QuotedStr(xItem)+','+QuotedStr(DbLlTipBan.Text)+')';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   DM1.cdsAso.Edit;
   DM1.cdsAso.FieldByName('ASONCTA').AsString := TRIM(dbeCtaAho.Text) ;
   DM1.cdsAso.FieldByName('SITCTA').AsString := TRIM(dbSitCta.Text) ;
   xSQL:='UPDATE '+DM1.sAPO201+' SET ASONCTA='+QuotedStr(dbeCtaAho.Text)+',SITCTA='+QuotedStr(dbSitCta.Text)+',BANCOID='+QuotedStr(DbLlTipBan.Text)+' WHERE ASOID='+QuotedStr(xAsoId);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   xSQL:='SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASONCTA, SITCTA,B.SITCTADES, A.USUARIO, '
        +'       A.FREG, A.HREG, ASOITEM, A.BANCOID, C.BANCONOM '
        +'FROM APO207 A,COB103 B,TGE105 C '
        +'WHERE A.SITCTA=B.SITCTAID  AND A.BANCOID=C.BANCOID '
        +'  AND ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' '
        +'ORDER BY ASOITEM DESC';
   DM1.cdsGradoA.Close;
   DM1.cdsGradoA.DataRequest(xSQL);
   DM1.cdsGradoA.Open;
   If DM1.cdsGradoA.RecordCount > 1 Then DM1.cdsGradoA.First;
   {DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId)));
   DM1.cdsAso.Open;}
   If DM1.xCnd<>'M' Then DM1.CrgDatos;
   dbeCtaAho.Text:=''; dbSitCta.Text:='';
end;

function TfCtasAhorro.ValidaCuenta(xCuenta: String): String;
var  y, x, z, Resto, Suma : Integer;
begin
  If xCuenta='0000000000' Then Result:='N';
  y:= 0; Suma:=0;
  for x:= 7 downto 1 do
  Begin
    y := y +1;  Suma := Suma + StrToInt (Copy(xCuenta,x+3,1) ) * y;
  End;
  y := 1;
  for z := 3 downto 1 do
  Begin
    y := y + 1; Suma := Suma + StrtoInt (Copy(xCuenta,z,1)) * y;
  End;
  Resto := Suma mod 11;
  If Resto <> 0 Then Result:='N' Else Result:='S';

end;

procedure TfCtasAhorro.FormActivate(Sender: TObject);
begin
DbLlTipBan.Text:='04'; chkHabilita.SetFocus;
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Modificaciones por Fallecimiento del asociado
  IF (DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S') or
     (DM1.xCnd = 'AUT') THEN
  BEGIN
    chkHabilita.Enabled := false;
    DbLlTipBan.Enabled := false;
    dbeCtaAho.ReadOnly := true;
    dbSitCta.Enabled := false;

    z2bbtnAcepta.Enabled := false;
    fcShapeBtn1.Enabled := false;
  END;
// Fin: HPP_201003_ASO
end;

procedure TfCtasAhorro.chkHabilitaClick(Sender: TObject);
begin
If chkHabilita.Checked Then
   Begin
    DbLlTipBan.Text:=''; DbLlTipBan.Enabled:=True;
   End
Else
   Begin
    DbLlTipBan.Text:='04'; DbLlTipBan.Enabled:=False;
   End;
end;

procedure TfCtasAhorro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

function TfCtasAhorro.AsignaNroItem(xAsoId: String): String;
var xSQL:String;
    xNumero:Integer;
begin
   xSQL:='SELECT ASOID,ASOITEM FROM APO207 WHERE ASOID='+QuotedStr(xAsoId)+' AND ASOID IS NOT NULL ORDER BY ASOITEM';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
      Begin
         DM1.cdsQry.First; xNumero := 0;
         While Not DM1.cdsQry.Eof Do
         Begin
            xNumero := xNumero + 1;
            If xNumero<>DM1.cdsQry.FieldByName('ASOITEM').AsInteger Then
               Begin
                  Result:=Format('%.3d',[xNumero]);
                  Exit;
               End;
            DM1.cdsQry.Next;
         End;
         If DM1.cdsQry.Eof Then
            Begin
               Result:=Format('%.3d',[xNumero+1]);
               Exit;
            End;
      End
   Else
      Result := '001';

   DM1.cdsQry.Close;

end;

function TfCtasAhorro.VrfAutCtaAhorros(xAsoId, xCuenta: String): String;
var xSQL:String;
begin
xSQL:='SELECT CODIGO FROM CUENTAS_PER WHERE CODIGO='+QuotedStr(Copy(Trim(xCuenta),1,4));
DM1.cdsListaCred.Close; DM1.cdsListaCred.DataRequest(xSQL); DM1.cdsListaCred.Open;
If DM1.cdsListaCred.RecordCount > 0 Then
   Begin
      xSQL:='SELECT ASOID,ASONCTA,FECAUT FROM ASO002 WHERE ASOID='+QuotedStr(xAsoId)+' AND ASONCTA='+QuotedStr(xCuenta)+' AND FECAUT IS NOT NULL' ;
      DM1.cdsReclamoMotiv.Close; DM1.cdsReclamoMotiv.DataRequest(xSQL); DM1.cdsReclamoMotiv.Open;
      If DM1.cdsReclamoMotiv.RecordCount>0 Then
         Begin
            Result:='N';
         End
      Else
         Begin
            Result:='S';
         End;
      DM1.cdsReclamoMotiv.Close
   End
Else
   Begin
     Result:='N';
   End;
DM1.cdsListaCred.Close


end;

{function TfCtasAhorro.DesPresTel(xAsoId: String): String;
var xSQL:String;
begin
   xSQL:='SELECT ASOID,CREFPAG,FORPAGID FROM CRE310 WHERE ASOID='+QuotedStr(xAsoId)+' AND FORPAGID=''18'' AND CREESTID<>''13'' ';
   DM1.cdsUPro.Close; DM1.cdsUPro.DataRequest(xSQL); DM1.cdsUPro.Open;
   If DM1.cdsUPro.RecordCount > 0 Then   Result:='S'  Else   Result:='N' ;

   DM1.cdsUPro.Close;
end;}

function TfCtasAhorro.MesIniApo(xFecCons, xMeses: String): String;
var xSQL:String;
begin
   xSQL:='SELECT ADD_MONTHS('+QuotedStr(xFecCons)+',-'+QuotedStr(Trim(xMeses))+')  FECINI FROM DUAL';
   DM1.cdsUPro.Close; DM1.cdsUPro.DataRequest(xSQL); DM1.cdsUPro.Open;
   If DM1.cdsUPro.RecordCount > 0 Then
       Result:=Copy(DM1.cdsUPro.FieldByName('FECINI').AsString,7,4)+Copy(DM1.cdsUPro.FieldByName('FECINI').AsString,4,2) ;

   DM1.cdsUPro.Close;

end;

function TfCtasAhorro.MesIniCal(xFecActual: String): String;
var xSQL:String;
begin
   xSQL:='SELECT ADD_MONTHS('+QuotedStr(xFecActual)+',-2)  FECCAL FROM DUAL';
   DM1.cdsUPro.Close; DM1.cdsUPro.DataRequest(xSQL); DM1.cdsUPro.Open;
   If DM1.cdsUPro.RecordCount > 0 Then
       Result:=DM1.cdsUPro.FieldByName('FECCAL').AsString;

   DM1.cdsUPro.Close;


end;

function TfCtasAhorro.NumAportes(xAsoId, xMeses,  xFecCons: String): Integer;
var xSQL,xPeriodo:String;
begin
xPeriodo:=Copy(xFecCons,7,4)+Copy(xFecCons,4,2) ;
xSQL:='SELECT ASOID FROM APO301 WHERE ASOID='+QuotedStr(xAsoId)+' AND APOSEC >'+QuotedStr(MesIniApo(xFecCons,xMeses))+' AND APOSEC<='+QuotedStr(xPeriodo);
DM1.cdsUPro.Close; DM1.cdsUPro.DataRequest(xSQL); DM1.cdsUPro.Open;
If DM1.cdsUPro.RecordCount > 0 Then
   Begin
     Result:=DM1.cdsUPro.RecordCount;
   End
Else
   Begin
     Result:=0;
   End;
DM1.cdsUPro.Close;


end;

function TfCtasAhorro.VrfCtaAhorros(xAsoId: String): String;
var xSQL:String;
begin
   xSQL:='SELECT ASOID,ASONCTA FROM APO207 WHERE ASOID='+QuotedStr(xAsoId);
   DM1.cdsUPro.Close; DM1.cdsUPro.DataRequest(xSQL); DM1.cdsUPro.Open;
   If DM1.cdsUPro.RecordCount = 0 Then
      Result:='N'
   Else
      Result:='S' ;

   DM1.cdsUPro.Close;

end;

function TfCtasAhorro.VrfCtaAhorrosMas(xAsoId: String): String;
var xSQL:String;
begin
   xSQL:='SELECT ASOID,ASONCTA FROM APO207 WHERE ASOID='+QuotedStr(xAsoId);
   DM1.cdsUPro.Close; DM1.cdsUPro.DataRequest(xSQL); DM1.cdsUPro.Open;
   If DM1.cdsUPro.RecordCount > 1 Then
      Result:='N'
   Else
      Result:='S' ;

   DM1.cdsUPro.Close;


end;

procedure TfCtasAhorro.fcShapeBtn2Click(Sender: TObject);
var xasoid,xsql:string;

begin

If Length(trim(memObsCancelacion.Text)) = 0 then
   Begin
     MessageDlg('Debe Ingresar Motivo de Cancelacion de Cuenta', mtError, [mbOk], 0);
     memObsCancelacion.SetFocus;
     exit;
   End;

  If MessageDlg('Esta seguro de Cancelar Cuenta' ,mtConfirmation, [mbYes, mbNo], 0) = mrNo  then
  Begin
    exit;
  End;

  xAsoId:=DM1.cdsGradoA.fieldbyname('ASOID').AsString;

  if DM1.cdsGradoA.fieldbyname('ASOID').AsString='' then
    xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;

  if DM1.cdsGradoA.fieldbyname('ASOID').AsString<>'' then
  begin
    //Cambio estado de la cuenta actual
    xsql:='UPDATE APO207 SET SITCTA=''C'' '
         +'WHERE ASOID='+QuotedStr(XaSOID)+' AND ASONCTA='+QuotedStr(DM1.cdsGradoA.FieldByName('ASONCTA').AsString)
         + ' AND ASOITEM='+QuotedStr(DM1.cdsGradoA.FieldByName('ASOITEM').AsString);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  end;

  DM1.cdsAso.Edit;
  DM1.cdsAso.FieldByName('SITCTA').AsString := 'C';
  xSQL:='UPDATE '+DM1.sAPO201+' SET SITCTA=''C'' WHERE ASOID='+QuotedStr(xAsoId);
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);

  {if DM1.cdsGradoA.fieldbyname('ASOID').AsString<>'' then
  begin
    //Inserto en APO207 NUEVO REGISTRO
    xItem:=AsignaNroItem(xAsoId);
    xSQL:='INSERT INTO APO207(ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASONCTA, SITCTA, USUARIO, FREG, HREG, ASOITEM, BANCOID,MOTCTA) '+
        'VALUES ('+QuotedStr(xAsoId)+','+
                 QuotedStr(DM1.cdsGradoA.fieldbyname('ASOCODMOD').AsString)+','+
                 QuotedStr(DM1.cdsGradoA.fieldbyname('ASOCODAUX').AsString)+','+
                 QuotedStr(DM1.cdsGradoA.fieldbyname('ASOAPENOM').AsString)+','+
                 QuotedStr(DM1.cdsGradoA.fieldbyname('ASONCTA').AsString)+','+
                 QuotedStr('C')+','+
                 QuotedStr(DM1.wUsuario)+','+
                 QuotedStr(DateToStr(DM1.FechaSys))+',SYSDATE,'+
                 QuotedStr(xItem)+','+
                 QuotedStr(DM1.cdsGradoA.fieldbyname('BANCOID').AsString)+','+
                 QuotedStr(trim(memObsCancelacion.Text))+')';
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  end;}

  MessageDlg('<< Grabación existosa >>', mtError, [mbOk], 0);
  Button1Click(Self);
  fCtasAhorro.Close;
end;


procedure TfCtasAhorro.fcShapeBtn1Click(Sender: TObject);
begin
   If DM1.xCnd='AUT' Then
   begin
      ShowMessage('No tiene acceso a Modificar...');
      Exit;
   end;
   
  if DM1.cdsGradoA.fieldbyname('SITCTA').AsString<>'A' then
  begin
     ShowMessage('Solo se pueden cancelar cuentas Activas. Seleccionar registro correctamente...');
     Exit;
  end;
  pnlCanCta.Left     := 128;
  pnlCanCta.Top      := 56;
  pnlCanCta.Visible  := True;
  grpCuentas.Enabled := False;
  grpDatos.Enabled   := False;
  memObsCancelacion.SetFocus;
end;

procedure TfCtasAhorro.Button1Click(Sender: TObject);
begin
 grpCuentas.Enabled     := True;
 grpDatos.Enabled       := True;
 memObsCancelacion.Text := '';
 pnlCanCta.Visible      := False;

end;

procedure TfCtasAhorro.BitSalirClick(Sender: TObject);
begin
   close;
end;

// Inicio: HPC_201602_ASO
// Se añade boton para eliminar la cuenta de ahorros
procedure TfCtasAhorro.z2bbtnEliminaClick(Sender: TObject);
Var xSql, xItem: String;
begin
   xSql := 'Select Max(ASOITEM) ASOITEM, Lpad(Max(ASOITEM+1),3,''0'') NUE_ASOITEM From APO207 Where ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xItem := DM1.cdsQry.FieldByName('NUE_ASOITEM').AsString;
   If Trim(DM1.cdsQry.FieldByName('ASOITEM').AsString) <> '' Then
   Begin
      pnlElimina.Visible := True;
      pnlElimina.Top := 24;
      pnlElimina.Left := 220;
      stbanco.Caption := DM1.cdsGradoA.FieldByName('BANCONOM').AsString;
      stnumero.Caption := DM1.cdsGradoA.FieldByName('ASONCTA').AsString;
      stestado.Caption := DM1.cdsGradoA.FieldByName('SITCTADES').AsString;
   End;
End;

procedure TfCtasAhorro.fcseliminaClick(Sender: TObject);
Var xSql:String;
begin
   If MessageDlg('¿ Seguro de eliminar la cuenta de ahorros?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
      xSql := 'Insert INTO APO207 (ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASONCTA, SITCTA, USUARIO, FREG, HREG, ASOITEM, BANCOID, MOTCTA)'
      +' Select ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASONCTA, ''E'','+QuotedStr(DM1.wUsuario)+', TO_DATE(FREG), HREG,'+QuotedStr(DM1.cdsQry.FieldByName('NUE_ASOITEM').AsString)+', BANCOID, MOTCTA  From APO207'
      +' Where ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) +' And ASOITEM = '+QuotedStr(DM1.cdsQry.FieldByName('ASOITEM').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      xSql := 'Update APO201 Set ASONCTA = Null, SITCTA = Null Where ASOID =  '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      xSql := 'Update ASO_NUE_CLI Set ASONCTA = Null, SITCTA = Null Where ASOID =  '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      // Se refresca Qry de Cuentas de ahorros
      xSql := 'SELECT A.ASOITEM, ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASONCTA, SITCTA,B.SITCTADES, A.USUARIO, A.FREG, A.HREG, ASOITEM, A.BANCOID, C.BANCONOM'
      +' FROM APO207 A,COB103 B,TGE105 C WHERE A.SITCTA  = B.SITCTAID AND A.BANCOID = C.BANCOID'
      +' AND ASOID = '+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' ORDER BY A.ASOITEM DESC';
      DM1.cdsGradoA.Close;
      DM1.cdsGradoA.DataRequest(xSql);
      DM1.cdsGradoA.Open;
      // Se actualiza los campos de cuenta de ahorros en el mantenimiento de asociados
      DM1.cdsAso.Edit;
      DM1.cdsAso.FieldByName('ASONCTA').AsString := '';
      DM1.cdsAso.FieldByName('SITCTA').AsString := '';
   End;
   pnlElimina.Visible := False;
end;

procedure TfCtasAhorro.fcssalireliminaClick(Sender: TObject);
begin
   pnlElimina.Visible := False;
end;
// Fin: HPC_201602_ASO

end.
