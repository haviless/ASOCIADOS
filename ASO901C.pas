// Unidad                  :  ASO901C.pas
// Formulario              :  FSeleccionDesaut
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Desautoriza Nuevos Asociados recien creados

// Actualizaciones:
// HPC_201307_ASO - 11/04/2013 
// SPP_201308_ASO    : Se realiza el pase a plataforma a partir del HPC_201307_ASO

unit ASO901C;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdbdatetimepicker, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons,
  DB;

type
  TFSeleccionDesaut = class(TForm)
    GbAsociados: TGroupBox;
    Label3: TLabel;
    lblFecha: TLabel;
    BitMostrar: TBitBtn;
    gbBuscar: TGroupBox;
    edtBuscar: TEdit;
    dtgAsociado: TwwDBGrid;
    BitSalir: TBitBtn;
    rbtDni: TRadioButton;
    rbtCuenta: TRadioButton;
    rbtCodMod: TRadioButton;
    rbtApeNom: TRadioButton;
    DtpFecIni: TwwDBDateTimePicker;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure rbtApeNomClick(Sender: TObject);
    procedure rbtDniClick(Sender: TObject);
    procedure rbtCuentaClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure dtgAsociadoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgAsociadoDblClick(Sender: TObject);
    function VrfCtaAhorros(xAsoId:String):String;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LimpiaGrid;
  public
    { Public declarations }
  end;

var
  FSeleccionDesaut: TFSeleccionDesaut;

implementation

uses ASODM, ASO900, ASO260, ASO942;

{$R *.dfm}

procedure TFSeleccionDesaut.FormCreate(Sender: TObject);
begin
  DM1.BlqComponentes(Self);
  
  DM1.xCnd := 'DESAUT';
  gbbuscar.Width := 430;
  gbbuscar.Height := 40;
  edtBuscar.Width := 407;
  edtBuscar.Height := 28;
  GbAsociados.Caption := 'Buscar Por ' + rbtApeNom.Caption;
end;

procedure TFSeleccionDesaut.FormActivate(Sender: TObject);
var
  xSQL : String;
begin
  DtpFecIni.Date:=Date;
  DM1.sAPO201:='ASO_NUE_CLI';
  xSQL:='SELECT * FROM ASO_NUE_CLI WHERE TO_DATE(FEC_AUT_CLI) = ''' + DtpFecIni.Text + ''''
       +'  AND EST_AUT_CLI=''AP'' ';
  DM1.cdsAsociado.Close;
  DM1.cdsAsociado.DataRequest(xSQL);
  DM1.cdsAsociado.Open;
end;

procedure TFSeleccionDesaut.BitMostrarClick(Sender: TObject);
var
   xSQL, xSQL2:String;
begin
   If rbtApeNom.Checked Then
   begin
      xSQL:='select SOLICITUD, ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, '
           +'       ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, '
           +'       ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, '
           +'       VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, '
           +'       DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, '
           +'       ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, '
           +'       ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, '
           +'       ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, '
           +'       TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, '
           +'       CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, '
           +'       OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, '
           +'       VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, '
           +'       ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, '
           +'       ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, '
           +'       ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, '
           +'       ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, DESHABILITADO, '
           +'       VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, '
           +'       ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, '
           +'       OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO, GENCODBAR, ENVAUTDES, '
           +'       CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, '
           +'       DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, '
           +'       NOMDIRVIV, ANOENV, ENVIO, CODOTRDOCIDE, NUMOTRDOCIDE, CODMOTDESTAPO, '
           +'       AUTDESCUO, FECAUTDESCUO, USUREGAUTDESCUO, OFIREGAUTDESCUO, '
           +'       CODMODAUTDESCUO, MDFASODIR, MDFZIPID, MDFCNTREG, MDFUSRMOD, MDFFECMOD, '
           +'       EMICARTA, DESMANVIV, CODMOTDESTCUO, FECACTPAD, EST_AUT_CLI, '
           +'       USU_AUT_CLI, FEC_AUT_CLI, OBS_AUT_CLI, USU_CRE_CLI, FEC_CRE_CLI, '
           +'       OBS_AUT_CLI_UGE, OBS_AUT_CLI_PAD, OBS_AUT_CLI_OTR, CENEDUID, '
           +'       FALLECIDO, TIPO_FALL_ID '
           +' from  ASO_NUE_CLI '
           +'where  EST_AUT_CLI = ''AP'' '
           +'  and  TO_DATE(FEC_AUT_CLI)='+QuotedStr(DtpFecIni.Text)
           +'  and  ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');
      xSQL2:='select EST_AUT_CLI, TRUNC(FEC_CRE_CLI) FEC_CRE_CLI '
           +'   from ASO_NUE_CLI '
           +'  where EST_AUT_CLI = ''AP'' AND TO_DATE(FEC_AUT_CLI)='+QuotedStr(DtpFecIni.Text)
           +'    and ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');
   end;
   
   If rbtDni.Checked  Then
   begin
      xSQL:='select SOLICITUD, ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, '
           +'       ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, '
           +'       ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, '
           +'       VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, '
           +'       DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, '
           +'       ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, '
           +'       ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, '
           +'       ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, '
           +'       TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, '
           +'       CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, '
           +'       OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, '
           +'       VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, '
           +'       ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, '
           +'       ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, '
           +'       ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, '
           +'       ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, DESHABILITADO, '
           +'       VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, '
           +'       ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, '
           +'       OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO, GENCODBAR, ENVAUTDES, '
           +'       CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, '
           +'       DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, '
           +'       NOMDIRVIV, ANOENV, ENVIO, CODOTRDOCIDE, NUMOTRDOCIDE, CODMOTDESTAPO, '
           +'       AUTDESCUO, FECAUTDESCUO, USUREGAUTDESCUO, OFIREGAUTDESCUO, '
           +'       CODMODAUTDESCUO, MDFASODIR, MDFZIPID, MDFCNTREG, MDFUSRMOD, MDFFECMOD, '
           +'       EMICARTA, DESMANVIV, CODMOTDESTCUO, FECACTPAD, EST_AUT_CLI, '
           +'       USU_AUT_CLI, FEC_AUT_CLI, OBS_AUT_CLI, USU_CRE_CLI, FEC_CRE_CLI, '
           +'       OBS_AUT_CLI_UGE, OBS_AUT_CLI_PAD, OBS_AUT_CLI_OTR, CENEDUID, '
           +'       FALLECIDO, TIPO_FALL_ID '
           +'  from ASO_NUE_CLI '
           +' where EST_AUT_CLI = ''AP'' '
           +'   and TO_DATE(FEC_AUT_CLI)='+QuotedStr(DtpFecIni.Text)
           +'   and ASODNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');
      xSQL2:='select EST_AUT_CLI, trunc(FEC_CRE_CLI) FEC_CRE_CLI '
           +'   from ASO_NUE_CLI '
           +'  where EST_AUT_CLI = ''AP'' AND TO_DATE(FEC_AUT_CLI)='+QuotedStr(DtpFecIni.Text)
           +'    and ASODNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');
   end;
   
   If rbtCuenta.Checked  Then
   begin
      xSQL:='select SOLICITUD, ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, '
           +'       ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, '
           +'       ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, '
           +'       VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, '
           +'       DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, '
           +'       ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, '
           +'       ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, '
           +'       ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, '
           +'       TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, '
           +'       CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, '
           +'       OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, '
           +'       VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, '
           +'       ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, '
           +'       ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, '
           +'       ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, '
           +'       ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, DESHABILITADO, '
           +'       VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, '
           +'       ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, '
           +'       OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO, GENCODBAR, ENVAUTDES, '
           +'       CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, '
           +'       DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, '
           +'       NOMDIRVIV, ANOENV, ENVIO, CODOTRDOCIDE, NUMOTRDOCIDE, CODMOTDESTAPO, '
           +'       AUTDESCUO, FECAUTDESCUO, USUREGAUTDESCUO, OFIREGAUTDESCUO, '
           +'       CODMODAUTDESCUO, MDFASODIR, MDFZIPID, MDFCNTREG, MDFUSRMOD, MDFFECMOD, '
           +'       EMICARTA, DESMANVIV, CODMOTDESTCUO, FECACTPAD, EST_AUT_CLI, '
           +'       USU_AUT_CLI, FEC_AUT_CLI, OBS_AUT_CLI, USU_CRE_CLI, FEC_CRE_CLI, '
           +'       OBS_AUT_CLI_UGE, OBS_AUT_CLI_PAD, OBS_AUT_CLI_OTR, CENEDUID, '
           +'       FALLECIDO, TIPO_FALL_ID '
           +'  from ASO_NUE_CLI '
           +' where EST_AUT_CLI = ''AP'' '
           +'   and TO_DATE(FEC_AUT_CLI)='+QuotedStr(DtpFecIni.Text)
           +'   and ASONCTA LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');
      xSQL2:='select EST_AUT_CLI, trunc(FEC_CRE_CLI) FEC_CRE_CLI '
           +'   from ASO_NUE_CLI '
           +'  where EST_AUT_CLI = ''AP'' AND TO_DATE(FEC_AUT_CLI)='+QuotedStr(DtpFecIni.Text)
           +'    and ASONCTA LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');
   end;
   
   If rbtCodMod.Checked  Then
   begin
      xSQL:='select SOLICITUD, ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, '
           +'       ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, '
           +'       ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, '
           +'       VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, '
           +'       DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, '
           +'       ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, '
           +'       ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, '
           +'       ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, '
           +'       TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, '
           +'       CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, '
           +'       OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, '
           +'       VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, '
           +'       ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, '
           +'       ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, '
           +'       ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, '
           +'       ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, DESHABILITADO, '
           +'       VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, '
           +'       ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, '
           +'       OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO, GENCODBAR, ENVAUTDES, '
           +'       CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, '
           +'       DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, '
           +'       NOMDIRVIV, ANOENV, ENVIO, CODOTRDOCIDE, NUMOTRDOCIDE, CODMOTDESTAPO, '
           +'       AUTDESCUO, FECAUTDESCUO, USUREGAUTDESCUO, OFIREGAUTDESCUO, '
           +'       CODMODAUTDESCUO, MDFASODIR, MDFZIPID, MDFCNTREG, MDFUSRMOD, MDFFECMOD, '
           +'       EMICARTA, DESMANVIV, CODMOTDESTCUO, FECACTPAD, EST_AUT_CLI, '
           +'       USU_AUT_CLI, FEC_AUT_CLI, OBS_AUT_CLI, USU_CRE_CLI, FEC_CRE_CLI, '
           +'       OBS_AUT_CLI_UGE, OBS_AUT_CLI_PAD, OBS_AUT_CLI_OTR, CENEDUID, '
           +'       FALLECIDO, TIPO_FALL_ID '
           +'  from ASO_NUE_CLI '
           +' where EST_AUT_CLI = ''AP'' '
           +'   and TO_DATE(FEC_AUT_CLI)='+QuotedStr(DtpFecIni.Text)
           +'   and ASOCODMOD LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');
      xSQL2:='select EST_AUT_CLI, trunc(FEC_CRE_CLI) FEC_CRE_CLI '
           +'   from ASO_NUE_CLI '
           +'  where EST_AUT_CLI = ''AP'' AND TO_DATE(FEC_AUT_CLI)='+QuotedStr(DtpFecIni.Text)
           +'    and ASOCODMOD LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');
   end;
   
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL2);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>0 then
      lblFecha.Caption := DM1.cdsQry.FieldByName('EST_AUT_CLI').AsString
                       +' - '
                       +DateToStr(DM1.cdsQry.FieldByName('FEC_CRE_CLI').AsDateTime);
   DM1.cdsAsociado.Close;
   DM1.cdsAsociado.DataRequest(xSQL);
   DM1.cdsAsociado.Open;
end;

procedure TFSeleccionDesaut.rbtApeNomClick(Sender: TObject);
begin
  LimpiaGrid;
  gbbuscar.Width:=430; gbbuscar.Height  :=44;
  edtBuscar.Width:=407; edtBuscar.Height:=24;
  GbAsociados.Caption:='Buscar Por '+rbtApeNom.Caption;
  edtBuscar.SetFocus;
end;

procedure TFSeleccionDesaut.rbtDniClick(Sender: TObject);
begin
LimpiaGrid;
gbbuscar.Width:=137; gbbuscar.Height  :=44;
edtBuscar.Width:=114; edtBuscar.Height:=24;
GbAsociados.Caption:='Buscar Por '+rbtDni.Caption;  edtBuscar.SetFocus;
end;

procedure TFSeleccionDesaut.rbtCuentaClick(Sender: TObject);
begin
LimpiaGrid;
gbbuscar.Width:=137; gbbuscar.Height  :=44;
edtBuscar.Width:=114; edtBuscar.Height:=24;
GbAsociados.Caption:='Buscar Por '+rbtCuenta.Caption;  edtBuscar.SetFocus;
end;

procedure TFSeleccionDesaut.rbtCodModClick(Sender: TObject);
begin
LimpiaGrid;
gbbuscar.Width:=137; gbbuscar.Height  :=44;
edtBuscar.Width:=114; edtBuscar.Height:=24;
GbAsociados.Caption:='Buscar Por '+rbtCodMod.Caption;  edtBuscar.SetFocus;
end;

procedure TFSeleccionDesaut.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFSeleccionDesaut.LimpiaGrid;
begin
  edtBuscar.Text:=''; DM1.cdsAsociado.Close;  DM1.cdsAsociado.DataRequest('SELECT * FROM ASO_NUE_CLI WHERE 1 = 2');   DM1.cdsAsociado.Open;
end;

procedure TFSeleccionDesaut.dtgAsociadoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   if DM1.cdsAsociado.FieldByName('AsoTipId').AsString='CE' then
     begin
       If Field.DisplayName = 'Tipo' Then
         Begin
          dtgAsociado.Canvas.Font.Color := clRed;
          dtgAsociado.DefaultDrawDataCell(Rect, Field, State);
         End;
     end;

   if DM1.cdsAsociado.FieldByName('EST_AUT_CLI').AsString='AP' then
     begin
       If Field.DisplayName = 'Estado' Then
         Begin
          dtgAsociado.Canvas.Font.Color := clGreen;
          dtgAsociado.DefaultDrawDataCell(Rect, Field, State);
         End;
     end;
   if DM1.cdsAsociado.FieldByName('EST_AUT_CLI').AsString='RE' then
     begin
       If Field.DisplayName = 'Estado' Then
         Begin
          dtgAsociado.Canvas.Font.Color := clRed;
          dtgAsociado.DefaultDrawDataCell(Rect, Field, State);
         End;
     end;
end;

procedure TFSeleccionDesaut.dtgAsociadoDblClick(Sender: TObject);
Var
  xAsoId, xSQL: String;
Begin
  DM1.xInsert := '0';
  If dtgAsociado.DataSource.DataSet.RecordCount > 0 Then
  Begin
     If (DM1.xCnd = 'DESAUT') Then
     Begin
     Try
        //DM1.sAso_where:='SOLICITUD='''+DM1.cdsAso.fieldbyname('SOLICITUD').AsString+''' AND ';
        xAsoId:=DM1.cdsAsociado.fieldbyname('ASOID').AsString;
        xSQL:='SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId));
        DM1.cdsAso.Close;
        DM1.cdsAso.DataRequest(xSQL);
        DM1.cdsAso.Open;

        //Verifico si el Asociado esta con Observación
        xSQL:='SELECT ESTADO,OBSERVACION FROM ASO007 WHERE ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString +''' ORDER BY ITEM DESC ';
        DM1.cdsQry.CLOSE;
        DM1.cdsQry.DataRequest(XSQL);
        DM1.cdsQry.Open;
        If (DM1.cdsQry.RecordCount>0) and (TRIM(DM1.cdsQry.FieldByName('ESTADO').AsString)='I') Then
        Begin
           MessageDlg('El Asociado tiene la siguiente Observación por levantar :'+#13+Trim(DM1.cdsQry.FieldByName('OBSERVACION').AsString) , mtError, [mbOk], 0);
           Exit;
        End;

        //Verifico si no es unica la Cuenta de Ahorros
        If VrfCtaAhorros(xAsoId)='N'  Then
        Begin
          MessageDlg('La CUENTA DE AHORROS No Es Unica,...Verifique ', mtError, [mbOk], 0);
          Exit;
        End;

        //Departamentos
        xSQL:='SELECT * FROM TGE158';
        DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL); DM1.cdsPadre.Open;
        DM1.cdsRec.Close; DM1.cdsRec.DataRequest(xSQL); DM1.cdsRec.Open;
        //Sexos
        xSQL:='SELECT ID,DESCRIP FROM TGE817';
        DM1.cdsSexo.Close; DM1.cdsSexo.DataRequest(xSQL); DM1.cdsSexo.Open;
        If (DM1.cdsAso.fieldbyname('ASOTIPID').AsString='NI') AND (DM1.cdsAso.fieldbyname('TCREACION').AsString='01') Then
          //Tipos de asociado
          xSQL:='SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID = ''CE'''
        Else
        Begin
          //El nivel 02 y 03 pueden ver todo los tipos de asociados (segun requerimiento)
          If ( ((Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03') or (Copy(DM1.CrgArea(DM1.wUsuario),6,2)='02')) and (DM1.wofides='01') ) then
            xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE FLG_NUE = ''S'''
          else
          Begin
                  //Si el Cliente endiferente de DO y CE solo podra ver en mismo tipo de docente
            xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE FLG_NUE = ''S''';
          End;
        End;

        DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;
        xSQL:='SELECT REGPENID, REGPENDES FROM APO105';
        DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;
        xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP, PROVDES FROM TGE201 WHERE CLAUXID = ''A''';
        DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;
        xSQL:='SELECT UPROID, UPRONOM FROM APO102';
        DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL);  DM1.cdsUPro.Open;
        xSQL:='SELECT UPROID, UPAGOID, UPAGONOM FROM APO103';
        DM1.cdsUPago.Close; DM1.cdsUPago.DataRequest(xSQL); DM1.cdsUPago.Open;
        xSQL:='SELECT UPROID, UPAGOID, USEID, USENOM '
             +'  FROM APO101 WHERE NVL(FDESHABILITADO,''S'') = ''N''';
        DM1.cdsUSE.Close; DM1.cdsUSE.DataRequest(xSQL); DM1.cdsUSE.Open;

        FMantAsociado := TFMantAsociado.create(self);
        FMantAsociado.lkcDpto.Text  := DM1.cdsAso.fieldbyname('ASODPTO').AsString;
        FMantAsociado.lkcProv.Text  := DM1.cdsAso.fieldbyname('CIUDID').AsString;
        FMantAsociado.lkcDist.Text  := DM1.cdsAso.fieldbyname('ZIPID').AsString;
        FMantAsociado.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
        FMantAsociado.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
        FMantAsociado.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
        FMantAsociado.edtanos.Text := DM1.tiempoTranscurrido(dm1.FechaSys,FMantAsociado.dbdtFecNac.Date);

        If DM1.xCnd = 'DESAUT' Then
        begin
           FMantAsociado.bitAutoriza.Visible:=False;
           FMantAsociado.bitRechaza.Visible :=False;
           FMantAsociado.lblEstado.Visible:=True;
           FMantAsociado.pnlEstado.Visible:=True;
           FMantAsociado.btnActualizaReniec.Visible:=False;

           //if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='AP' then
           begin
              FMantAsociado.lblEstado.Caption:='AUTORIZADO';
           end;

           {if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='RE' then
           begin
              FMantAsociado.lblEstado.Caption:='RECHAZADO';
           end;}

           FMantAsociado.BitReasignacion.Visible:=False;
           FMantAsociado.BitResol.Visible       :=False;
           FMantAsociado.BitCuentas.Visible     :=False;
           FMantAsociado.BitSocio.Visible       :=False;
           FMantAsociado.BitModifica.Visible    :=False;
           FMantAsociado.BitGrabar.Visible      :=False;
           FMantAsociado.BitVerifica.Visible    :=False;
           FMantAsociado.BitPrest.Visible       :=False;
           FMantAsociado.BitMstApo.Visible      :=False;
           FMantAsociado.BitAutDes.Visible      :=False;
           FMantAsociado.bbtnCarta.Visible      :=False;
           FMantAsociado.bbtnN3.Visible         :=False;
           FMantAsociado.bbtnN1.Visible         :=False;

           FMantAsociado.gbIdentidadAso.Enabled:=False;
           FMantAsociado.dbeTel1.Enabled:=False;
           FMantAsociado.dbeTel2.Enabled:=False;
           FMantAsociado.bbtnN1.Visible     :=False;
           FMantAsociado.bitAutoriza.Visible:=True;
           FMantAsociado.bitRechaza.Visible :=False;
           FMantAsociado.lblEstado.Visible  :=True;
           FMantAsociado.pnlEstado.Visible  :=True;
           {if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='N3' then
           begin
              FMantAsociado.lblEstado.Caption     :='';
              FMantAsociado.lblEstado.Visible     :=False;
              FMantAsociado.pnlEstado.Visible     :=False;
              FMantAsociado.gbIdentidadAso.Enabled:=True;
              FMantAsociado.BitVerifica.Visible   :=true;

              FMantAsociado.dbeTel1.Enabled:=False;
              FMantAsociado.dbeTel2.Enabled:=False;
              if DM1.cdsAso.FieldByName('ACTARCREN').AsString ='S' then
              begin
                 FMantAsociado.bitAutoriza.Visible:=true;
                 FMantAsociado.bitRechaza.Visible :=true;
                 FMantAsociado.bbtnN1.Visible     :=true;
              end
              else
              begin
                 FMantAsociado.btnActualizaReniec.Visible:=True;
              end;

              FMantAsociado.BitReasignacion.Visible:=True;
              FMantAsociado.BitResol.Visible       :=True;
              FMantAsociado.BitCuentas.Visible     :=True;
              FMantAsociado.BitSocio.Visible       :=True;
           end;

           if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='NU' then
           begin
              FMantAsociado.bitAutoriza.Visible:=True;
              FMantAsociado.bitRechaza.Visible :=True;
              FMantAsociado.lblEstado.Visible  :=False;
              FMantAsociado.pnlEstado.Visible  :=False;
              FMantAsociado.bbtnN3.Visible     :=True;
           end;}
        end;

        if DM1.wofides<>'01' then
        begin
           FMantAsociado.btnActualizaReniec.Visible:=False;
        end;

        DM1.xSgr:='CTR';
        DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');

        FOtorPre:=nil;

        If DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId)),'SRB000','ESTDEP')='02' Then
           FMantAsociado.pnlPrefente.Visible:=True
        Else FMantAsociado.pnlPrefente.Visible:=False;

        FMantAsociado.lblAsoApeNom.Caption:=DM1.cdsAso.fieldbyname('ASOAPENOM').AsString+' (Dato de Planillas)';
        If DM1.xOfiDes>'01' Then
        Begin
           If DM1.cdsAso.fieldbyname('ASOTIPID').AsString='CE' Then
           Begin
              FMantAsociado.DbLlRegPen.Enabled:=False;
           End;
        End;
        FMantAsociado.Caption := 'Desautorización de Asociado';
        FMantAsociado.ShowModal;
     Finally
        DM1.cdsPadre.Close; DM1.cdsHijo.Close; DM1.cdsCAso.Close; DM1.cdsRec.Close; DM1.cdsTRela.Close; DM1.cdsQry7.Close;
        DM1.cdsSexo.Close; DM1.cdsTAso.Close; DM1.cdsResol.Close; DM1.cdscarta.Close;
        FMantAsociado.Free;
     End;
     End;
  End;
  BitMostrar.OnClick(BitMostrar);
end;

function TFSeleccionDesaut.VrfCtaAhorros(xAsoId: String): String;
var xSQL:String;
begin
  xSQL:='SELECT ASOID,ASONCTA FROM APO207 WHERE ASOID='+QuotedStr(xAsoId)+' AND SITCTA=''A''  ';
  DM1.cdsCtasBco.Close; DM1.cdsCtasBco.DataRequest(xSQL); DM1.cdsCtasBco.Open;
  If DM1.cdsCtasBco.RecordCount > 1 Then   Result:='N'  Else   Result:='S' ;
  
  DM1.cdsCtasBco.Close;
end;

procedure TFSeleccionDesaut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsAsociado.Close;
  DM1.cdsAso.Close;
end;

end.
