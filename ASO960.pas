unit ASO960;

// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO960.pas
// Formulario              :  FDesacValid
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Desactiva Validaciones del Asociado

// Actualizaciones:
// HPP_200901_ASO
// HPP_200902_ASO  el valor DNI no se pondrá en nulo y se modificara a través de la
//                 opción de Mantenimiento de Asociados
// HPP_201003_ASO  Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// HPC_201121_ASO - 30/12/2011 - se añade la desvalidación de RENIEC a Nuevos Asociados
// DPP_201201_ASO   : Se realiza el pase a partir del doc. HPC_201121_ASO
// HPC_201306_ASO   : Se modifica para evitar el error de indice no encontrado al retornar al bookmark
// SPP_201307_ASO   : Se realiza el pase a producción a partir del HPC_201306_ASO
// HPC_201502_ASO  : El Usuario de OFIDES o Agencias tiene acceso a la opción de "Captura de datos de RENIEC" según los siguiente criterios:
//                   El asociado tiene historial de actualizaciones de RENIEC ó tiene al menos un aporte registrado.
//HPC_201508_ASO    : Renovación de Reglas para el acceso a Desactivacion de Captura de Reniec
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES
// HPC_201602_ASO   : Volver activar validaciones que anteriormente fue desvalidado.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB, DBClient,
  ExtCtrls;

type
  TfDesacValid = class(TForm)
    grbAso: TGroupBox;
    grbVal: TGroupBox;
    GbAsociados: TGroupBox;
    gbBuscar: TGroupBox;
    edtBuscar: TEdit;
    rbtApeNom: TRadioButton;
    rbtDni: TRadioButton;
    rbtCuenta: TRadioButton;
    rbtCodMod: TRadioButton;
    BitMostrar: TBitBtn;
    BitSalir: TBitBtn;
    dtgAsociado: TwwDBGrid;
    dtgValidaciones: TwwDBGrid;
    pnlDesactivaFlag: TPanel;
    Shape1: TShape;
    BitBtn1: TBitBtn;
    Button1: TButton;
    GroupBox3: TGroupBox;
    chkDatActRen: TCheckBox;
    chkCodModDni: TCheckBox;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    pnlDesactivaCamposValid: TPanel;
    Shape2: TShape;
    Label1: TLabel;
    Button2: TButton;
    BitBtn3: TBitBtn;
    GroupBox4: TGroupBox;
    edtObs: TEdit;
    rgTipoMaestro: TRadioGroup; // DPP_201201_ASO
    procedure rbtApeNomClick(Sender: TObject);
    procedure rbtDniClick(Sender: TObject);
    procedure rbtCuentaClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgAsociadoRowChanged(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dtgAsociadoDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure chkDatActRenClick(Sender: TObject);
    procedure chkCodModDniClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure LimpiaGrids();
    procedure LimpiaGridsVal();
    procedure Registro_Aud(xAsoId,xSecuencia,xCodReg:String);
    Function CodReg():String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDesacValid: TfDesacValid;

implementation

uses ASODM;

{$R *.dfm}

procedure TfDesacValid.rbtApeNomClick(Sender: TObject);
begin
   edtBuscar.Text:='';
   LimpiaGrids;
   gbbuscar.Width  :=430;
   gbbuscar.Height :=40;
   edtBuscar.Width :=407;
   edtBuscar.Height:= 24;
   GbAsociados.Caption:='Buscar Por '+rbtApeNom.Caption;
   edtBuscar.SetFocus;
end;

procedure TfDesacValid.rbtDniClick(Sender: TObject);
begin
   edtBuscar.Text:='';
   LimpiaGrids;
   gbbuscar.Width:=137;
   gbbuscar.Height :=40;
   edtBuscar.Width:=114;
   edtBuscar.Height := 24;
   GbAsociados.Caption:='Buscar Por '+rbtDni.Caption;
   edtBuscar.SetFocus;
end;

procedure TfDesacValid.rbtCuentaClick(Sender: TObject);
begin
   edtBuscar.Text:='';
   LimpiaGrids;
   gbbuscar.Width:=137;
   gbbuscar.Height :=40;
   edtBuscar.Width:=114;
   edtBuscar.Height := 24;
   GbAsociados.Caption:='Buscar Por '+rbtCuenta.Caption;
   edtBuscar.SetFocus;
end;

procedure TfDesacValid.rbtCodModClick(Sender: TObject);
begin
   edtBuscar.Text:='';
   LimpiaGrids;
   gbbuscar.Width:=137;
   gbbuscar.Height :=40;
   edtBuscar.Width:=114;
   edtBuscar.Height := 24;
   GbAsociados.Caption:='Buscar Por '+rbtCodMod.Caption;
   edtBuscar.SetFocus;
end;

procedure TfDesacValid.BitMostrarClick(Sender: TObject);
var
   xSQL:String;
begin
// Inicio: DPP_201201_ASO
   if rgTipoMaestro.ItemIndex=0 then
      DM1.sAPO201:='APO201'
   else
      DM1.sAPO201:='ASO_NUE_CLI';

   If Length(Trim(edtBuscar.Text)) > 0 Then
   Begin
// - Modificaciones por Fallecimiento del asociado
      If rbtApeNom.Checked Then
         xSQL:='SELECT * FROM '+DM1.sAPO201+' WHERE ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%') + ' AND NVL(FALLECIDO,''N'') = ''N''';

      If rbtDni.Checked Then
         xSQL:='SELECT * FROM '+DM1.sAPO201+' WHERE ASODNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%') + ' AND NVL(FALLECIDO,''N'') = ''N''';

      If rbtCuenta.Checked Then
         xSQL:='SELECT * FROM '+DM1.sAPO201+' WHERE ASONCTA LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%') + ' AND NVL(FALLECIDO,''N'') = ''N''';

      If rbtCodMod.Checked Then
         xSQL:='SELECT * FROM '+DM1.sAPO201+' WHERE ASOCODMOD LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%') + ' AND NVL(FALLECIDO,''N'') = ''N''';
// Fin: DPP_201201_ASO

      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest(xSQL);
      DM1.cdsAso.Open;
      //Inicio HPC_201508_ASO
      //Inicio HPC_201502_ASO
      //If((DM1.xOfiDes <> '01') and (not dm1.validaAso_Old(dm1.cdsAso.fieldbyname('Asoid').AsString,dm1.cdsAso.fieldbyname('AsoDni').AsString)) ) Then
      //Begin
      //  ShowMessage('Debe Actualizar los datos de RENIEC por la Sede Central, comuníquese con el área de Actualización de Datos');
      //  DM1.cdsAso.EmptyDataSet;
      // BitSalirClick(Self);
      //  Exit;
      //End;
      //Final HPC_201502_ASO
      //Final HPC_201508_ASO
      dtgAsociadoRowChanged(SELF);
      dtgAsociado.SetFocus;
   End
   Else
   Begin
      MessageDlg('Debe Ingresar Un Criterio Para La Busqueda', mtError, [mbOk], 0);
      edtBuscar.SetFocus;
   End;
end;

procedure TfDesacValid.LimpiaGrids;
begin
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest('Select * From APO201 Where ASOID='+QuotedStr('@#$!*@/#&^'));
   DM1.cdsAso.Open;
end;


procedure TfDesacValid.FormActivate(Sender: TObject);
begin
   LimpiaGrids;
   LimpiaGridsVal;
   rbtApeNomClick(self);
   dtgAsociado.SetControlType('ACTARCREN',fctCheckBox,'S;N');
   dtgAsociado.SetControlType('VALCODMODDNI',fctCheckBox,'S;N');
   //Inicio HPC_201502_ASO
   If  DM1.wofides<>'01' Then
        BitBtn2.Visible := False
   Else
        BitBtn2.Visible := True;
   //Final HPC_201502_ASO
end;


procedure TfDesacValid.dtgAsociadoRowChanged(Sender: TObject);
var
   XSQL:string;
begin
  // Inicio: SPP_201307_ASO
   //DM1.cdsQry.DisableControls;
   XSQL:='SELECT USUVAL,OFIUSU,B.OFDESNOM,FECVAL,CAMPO,DATVAL,STATUS '
        +'FROM VAL_DAT_ASO A,APO110 B '
        +'WHERE ASOID='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
        +'  AND STATUS=''S'' AND A.OFIUSU=B.OFDESID (+) ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
   dtgValidaciones.DataSource := DM1.dsQry;
   //DM1.cdsQry.EnableControls;
  // Fin: SPP_201307_ASO
end;


procedure TfDesacValid.LimpiaGridsVal;
var
   XSQL:String;
begin
   XSQL:='SELECT USUVAL,OFIUSU,B.OFDESNOM,FECVAL,CAMPO,DATVAL,STATUS '
        +'FROM VAL_DAT_ASO A,APO110 B '
        +'WHERE ASOID=''AAAAAAAAAA'' AND A.OFIUSU=B.OFDESID (+) ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;
   dtgValidaciones.DataSource := DM1.dsQry;
end;

procedure TfDesacValid.BitSalirClick(Sender: TObject);
begin
   DM1.cdsAso.CLOSE;
   DM1.cdsAso.IndexFieldNames:='';
   DM1.cdsQry.CLOSE;
   DM1.cdsQry.IndexFieldNames:='';
   CLOSE;
end;

procedure TfDesacValid.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;

procedure TfDesacValid.dtgAsociadoDblClick(Sender: TObject);
begin
// Inicio: DPP_201201_ASO
   if rgTipoMaestro.ItemIndex=1 then // si es Nuevo (ASO_NUE_CLI)
   begin
      if DM1.cdsAso.FieldByName('EST_AUT_CLI').AsString='AP' then
      begin
         ShowMessage('El Nuevo Asociado ya fue Aprobado, no se puede cambiar validación');
         exit;
      end;
   end;
// Fin: DPP_201201_ASO

//Inicio HPC_201502_ASO
  If DM1.VerDNICaduco(DM1.cdsAso.FieldByname('ASODNI').AsString)='NO CADUCO' Then
  Begin
    ShowMessage('Tome en cuenta que el DNI a ACTUALIZAR NO A CADUCADO, Consumirá la cuota de acceso a las CONSULTAS DE RENIEC') ;
  End;
//Fianl HPC_201502_ASO

   if DM1.cdsAso.FieldByName('VALCODMODDNI').AsString = 'S' then
      chkCodModDni.Checked  := True
   else
      chkCodModDni.Checked  := False;

   if DM1.cdsAso.FieldByName('ACTARCREN').AsString = 'S' then
      chkDatActRen.Checked  := True
   else
      chkDatActRen.Checked  := False;

   GbAsociados.Enabled := False;
   grbAso.Enabled      := False;
   grbVal.Enabled      := False;

   pnlDesactivaFlag.Left    := 184;
   pnlDesactivaFlag.Top     := 173;
   pnlDesactivaFlag.Visible := True;
   // Inicio: HPC_201602_ASO --Validación
   If DM1.cdsAso.FieldByName('ACTARCREN').AsString = 'S' then
      DM1.xDNI := '0'
   Else
      DM1.xDNI := '1';
   // Fin: HPC_201602_ASO
end;

procedure TfDesacValid.Button1Click(Sender: TObject);
begin
   pnlDesactivaFlag.Visible := False;
   GbAsociados.Enabled := True;
   grbAso.Enabled      := True;
   grbVal.Enabled      := True;
end;

Procedure TfDesacValid.BitBtn1Click(Sender: TObject);
Var
   XREN,XDNI,XSQL,xCodReg,xasoid : String;
   xvalcodmoddni:String;
   xactarcren:String;
   B:TBookmark;
begin
   //Inicio: HPC_201602_ASO --Validación
   Dm1.cdsQry7.Close;
   B:= DM1.cdsAso.GetBookmark;
   If MessageDlg('ESTA SEGURO(A) DE ACTUALIZAR' ,mtConfirmation, [mbYes, mbNo], 0) = mrNo  then
      exit;
   xasoid:= DM1.cdsAso.FieldByName('ASOID').AsString;
   xCodReg:=CodReg; //Genera Numero de Log
   
   // If not chkDatActRen.Checked then xren:='N' else xren:='S';
   // If not chkCodModDni.Checked then
   // begin
   //    xdni:='N';
   //    xren:='N';
   // end
   // else
   //    xdni:='S';
   If chkDatActRen.Checked then
      xren := 'S'
   else
      xren := 'N';
   If chkCodModDni.Checked then
      xdni := 'S'
   else
      xdni := 'N';
   Registro_Aud(xAsoId,'0',xCodReg); //Antes del Cambio
   // Inicio: DPP_201201_ASO
   xSQL:= 'UPDATE '+DM1.sAPO201+' '
         +'SET ACTARCREN = '+QuotedStr(xren)+', VALCODMODDNI = '+QuotedStr(xdni);
   // Fin: DPP_201201_ASO
   xSQL := xSQL + ' WHERE ASOID = '+QuotedStr(xAsoid);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   // If (DM1.cdsAso.FieldByName('VALCODMODDNI').AsString = 'S') And (chkCodModDni.Checked = False) Then
   //    xvalcodmoddni := 'N';
   // If (DM1.cdsAso.FieldByName('ACTARCREN').AsString    = 'S') And (chkDatActRen.Checked = False) Then
   //    xactarcren    := 'N';
   // Fin: HPC_201602_ASO

   xSQL := 'INSERT INTO ASO_VAL_CAM_LOG (ASOID, ACTARCREN, VALCODMODDNI, FECHOR, ASOAPENOMDNI, ASOTIPID, ASODNI, USUVAL) '
          +' VALUES ('+QuotedStr(xasoid)+','+QuotedStr(xactarcren)+','+QuotedStr(xvalcodmoddni)+', SYSDATE,'
                      +QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','
                      +QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString)+','
                      +QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)+','
                      +QuotedStr(DM1.wUsuario)+')';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   Registro_Aud(xAsoId,'1',xCodReg); //Despues del Cambio
   Button1Click(self);
   MessageDlg('<<< Se grabó con éxito >>> ', mtError, [mbOk], 0);
   BitMostrarClick(self);
   DM1.cdsAso.GotoBookmark(B);
   DM1.cdsAso.FreeBookmark(B);
end;

// Inicio: HPC_201602_ASO
// Realiza la validación para desactivar RENIEC.
procedure TfDesacValid.chkDatActRenClick(Sender: TObject);
//var XSQL:string;
var xSql:string;
begin
   xSql := 'SELECT COUNT(DNI) CANTIDAD FROM INF_RENIEC_CAP WHERE DNI = '+QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If (DM1.cdsQry.FieldByName('CANTIDAD').AsInteger = 0) And (DM1.xDNI = '1') Then
   Begin
      MessageDlg('No se puede activar flag, por que no cuenta con registro de RENIEC.', mtError, [mbOk], 0);
      pnlDesactivaFlag.Visible := False;
      grbAso.Enabled := True;
      DM1.xDNI := '';
      chkDatActRen.Checked := False;
   End;

  // If (DM1.cdsAso.FieldByName('ACTARCREN').AsString<>'S') and  (chkDatActRen.Checked) then
  // Begin
  //    MessageDlg('POR ESTA OPCION SOLO PUEDE DESACTIVAR FLAG', mtError, [mbOk], 0);
  //    chkDatActRen.Checked := False;
  // End;

End;
// Fin: HPC_201602_ASO


procedure TfDesacValid.chkCodModDniClick(Sender: TObject);
begin
   If (DM1.cdsAso.FieldByName('VALCODMODDNI').AsString<>'S') and  (chkCodModDni.Checked) then
   Begin
      MessageDlg('POR ESTA OPCION SOLO PUEDE DESACTIVAR FLAG', mtError, [mbOk], 0);
      chkCodModDni.Checked := False;
   End;
end;

function TfDesacValid.CodReg: String;
var
   xSQL,xResAbn:String;
   xCorAbn:Integer;
begin
   DM1.cdsListaCred.Close;
   xSQL:='SELECT CREAREA,CORREANO,TIPO,ASOID '
        +'FROM CRE206 '
        +'WHERE CORREANO='+QuotedStr(Copy(DateToStr(DM1.FechaSys),7,4))
        +'  AND CREAREA=''ASO'' AND TIPO=''1'' ';
   DM1.cdsListaCred.DataRequest(xSQL);
   DM1.cdsListaCred.Open;
   If DM1.cdsListaCred.RecordCount=1 Then
   Begin
      xCorAbn:=StrToInt(DM1.cdsListaCred.fieldbyname('ASOID').AsString) + 1;
      xResAbn:=Format('%.10d',[xCorAbn]);
      DM1.cdsListaCred.Edit;
      DM1.cdsListaCred.fieldbyname('ASOID').AsString:=xResAbn;
      DM1.cdsListaCred.ApplyUpdates(0);
      Result:=xResAbn;
   End;
   DM1.cdsListaCred.Close;
end;


procedure TfDesacValid.Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
var
   xSQL:String;
begin
   If Length(Trim(xCodReg))=0 Then
   Begin
      MessageDlg(' No Se Grabó Log De USUARIO Informe al Equipo De Sistemas ', mtError, [mbOk], 0);
      Exit;
   End;
   Screen.Cursor:=crHourGlass;
   // INICIO HPC_201513_ASO
   xSQL:='INSERT INTO APO201_LOG(ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, '
        +'                       ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, '
        +'                       ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, '
        +'                       ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, '
        +'                       TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, '
        +'                       ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, '
        +'                       USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, '
        +'                       ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, '
        +'                       FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, '
        +'                       VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, '
        +'                       ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, '
        +'                       ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, '
        +'                       VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, USUARIO_AUD, '
        +'                       REGISTRO_AUD, SECUENCIA, CODREG, MODULOID,VALCODMODDNI,ACTARCREN,REINGRESO, CENEDUID) '
        +'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, '
        +'       ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, '
        +'       ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, '
        +'       ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, '
        +'       TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, '
        +'       ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, '
        +'       USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, '
        +'       ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, '
        +'       FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, '
        +'       VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, '
        +'       ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, '
        +'       ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, '
        +'       VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP,'+QuotedStr(DM1.wUsuario)+','
        +'       SYSDATE,'+QuotedStr(xSecuencia)+','+QuotedStr(xCodReg)+',''ASO'',VALCODMODDNI,ACTARCREN,REINGRESO, CENEDUID '
        +'FROM APO201 WHERE ASOID='+QuotedStr(xAsoId);
   // FIN HPC_201513_ASO        
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   Screen.Cursor:=crDefault;
End;

procedure TfDesacValid.BitBtn3Click(Sender: TObject);
var
   XSQL,xasoid :STRING;
   B:TBookmark;
begin
   B:= DM1.cdsAso.GetBookmark;
   If Length(trim(edtObs.Text))= 0 then
   Begin
      MessageDlg('Debe Ingresar Observación', mtError, [mbOk], 0);
      edtObs.SetFocus;
      exit;
   End;

   If MessageDlg('ESTA SEGURO(A) DE ACTUALIZAR' ,mtConfirmation, [mbYes, mbNo], 0) = mrNo  then exit;

   xasoid:= DM1.cdsAso.FieldByName('ASOID').AsString;

   xSQL:= 'UPDATE VAL_DAT_ASO '
         +'SET STATUS=NULL,USUDESVAL='+quotedstr(DM1.wUsuario)+','
         +'    FECDESVAL=SYSDATE,OBSDESVAL='+quotedstr(TRIM(edtObs.Text))+' '
         +'WHERE ASOID='''+xasoid+''' AND STATUS=''S'' ';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);


   xSQL := 'INSERT INTO ASO_VAL_CAM_LOG (ASOID, FECHOR, ASOAPENOMDNI, ASOTIPID, ASODNI, USUVAL, VALTODCAM) '
          +'VALUES ('+QuotedStr(xasoid)+', SYSDATE,'+QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString)+','
                     +QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString)+','
                     +QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)  +','
                     +QuotedStr(DM1.wUsuario)+',''N'')';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   Button2Click(self);
   MessageDlg('<<< Se Grabo Con Exito >>> ', mtError, [mbOk], 0);
   BitMostrarClick(self);
   DM1.cdsAso.GotoBookmark(B);
   DM1.cdsAso.FreeBookmark(B);
end;

procedure TfDesacValid.BitBtn2Click(Sender: TObject);
begin
   edtObs.Text := '';
   GbAsociados.Enabled := False;
   grbAso.Enabled      := False;
   grbVal.Enabled      := False;

   pnlDesactivaCamposValid.Left    := 155;
   pnlDesactivaCamposValid.Top     := 262;
   pnlDesactivaCamposValid.Visible := True;
end;

procedure TfDesacValid.Button2Click(Sender: TObject);
begin
   edtObs.Text  := '';
   pnlDesactivaCamposValid.Visible := False;
   GbAsociados.Enabled := True;
   grbAso.Enabled      := True;
   grbVal.Enabled      := True;
end;

procedure TfDesacValid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;



end.
