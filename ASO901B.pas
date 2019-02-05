unit ASO901B;

// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO901B.pas
// Formulario              :  FSeleccionAut
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Autoriza o Rechaza Nuevos Asociados

// Actualizaciones:
// HPP_00024_ASO - 23/09/2008
// HPC_201121_ASO - 30/12/2011 - se muestra la fecha en que se realizó el pase de N1 a N3
// DPP_201201_ASO    : Se realiza el pase a partir del doc. HPC_201121_ASO
// DPP_201202_ASO    : Se realiza el pase de acuerdo al HPC_201203_ASO
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
  // INICIO HPC_201513_ASO
  jpeg,IniFiles,DateUtils, Wwdatsrc, DBClient, wwclient;
  // FIN HPC_201513_ASO
type
  TfSeleccionAut = class(TForm)
    GbAsociados: TGroupBox;
    BitMostrar: TBitBtn;
    gbBuscar: TGroupBox;
    edtBuscar: TEdit;
    dtgAsociado: TwwDBGrid;
    BitSalir: TBitBtn;
    rbtDni: TRadioButton;
    rbtCuenta: TRadioButton;
    rbtCodMod: TRadioButton;
    rbtApeNom: TRadioButton;
    Label3: TLabel;
    DtpFecIni: TwwDBDateTimePicker;
    lblFecha: TLabel; // DPP_201201_ASO
    // INICIO HPC_201513_ASO
    cbListaEstados: TwwDBLookupCombo;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    dtpEnvioN3Inicio: TwwDBDateTimePicker;
    dtpEnvioN3Fin: TwwDBDateTimePicker;
    Label2: TLabel;
    Label4: TLabel;
    // FIN HPC_201513_ASO
    procedure BitMostrarClick(Sender: TObject);
    procedure dtgAsociadoDblClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rbtApeNomClick(Sender: TObject);
    procedure rbtDniClick(Sender: TObject);
    procedure rbtCuentaClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
    function VrfCtaAhorros(xAsoId:String):String;
    procedure edtBuscarExit(Sender: TObject);
    procedure dtgAsociadoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
    // INICIO HPC_201513_ASO
    xxCdsQryEstado : TwwClientDataSet;
     xxDsQryEstado : TwwDataSource;
    // FIN HPC_201513_ASO
    procedure LimpiaGrid;
  public
    { Public declarations }
  end;

var
  fSeleccionAut: TfSeleccionAut;

implementation

uses ASODM, ASO908, ASO936, ASO900, ASO942, ASO903, ASO260;

{$R *.dfm}

procedure TfSeleccionAut.BitMostrarClick(Sender: TObject);
var
// inicio: DPP_201201_ASO
   xSQL, xSQL2:String;
// Fin: DPP_201201_ASO
// INICIO HPC_201513_ASO
   xsCodigoEstado : String;
// FIN HPC_201513_ASO
begin
    // INICIO HPC_201513_ASO
    IF dtpEnvioN3Fin.Date < dtpEnvioN3Inicio.Date THEN BEGIN
        MessageDlg('La fecha de Inicio del Envío a N3 debe ser menos que la fecha de Fin', mtInformation, [mbOk], 0);
        Exit;
    END;


    if Assigned(xxCdsQryEstado) and (xxCdsQryEstado.RecordCount > 0) and (cbListaEstados.Text<>'') then begin
      xxCdsQryEstado.Locate('DESCRIPCION', VarArrayof([cbListaEstados.Text]), []);
      xsCodigoEstado := xxCdsQryEstado.fieldbyname('CODIGO').asstring
    end else
      xsCodigoEstado := '';
    // FIN HPC_201513_ASO


// inicio: DPP_201201_ASO
   If rbtApeNom.Checked Then
   begin
      // INICIO HPC_201513_ASO
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
           +'where  EST_AUT_CLI <> ''NU'' '
           +'  and  ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%')
           //+'  and  to_date(FEC_CRE_CLI)='+quotedstr(DtpFecIni.Text)
           +'  AND  EST_AUT_CLI = CASE WHEN ' + QuotedStr(xsCodigoEstado) + ' = ''^^'' THEN EST_AUT_CLI ELSE ' + QuotedStr(xsCodigoEstado) + ' END '
           +'  AND  TRUNC(FEC_CRE_CLI) BETWEEN TO_DATE(' + QuotedStr(dtpEnvioN3Inicio.Text)+ ',''DD/MM/YYYY'') AND TO_DATE(' + QuotedStr(dtpEnvioN3Fin.Text)+ ',''DD/MM/YYYY'') ';
      xSQL2:='select EST_AUT_CLI, trunc(FEC_CRE_CLI) FEC_CRE_CLI '
           +'   from ASO_NUE_CLI '
           +'  where EST_AUT_CLI <> ''NU'' '
           +'    and ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%')
           +'    AND  EST_AUT_CLI = CASE WHEN ' + QuotedStr(xsCodigoEstado) + ' = ''^^'' THEN EST_AUT_CLI ELSE ' + QuotedStr(xsCodigoEstado) + ' END '
           +'    AND  TRUNC(FEC_CRE_CLI) BETWEEN TO_DATE(' + QuotedStr(dtpEnvioN3Inicio.Text)+ ',''DD/MM/YYYY'') AND TO_DATE(' + QuotedStr(dtpEnvioN3Fin.Text)+ ',''DD/MM/YYYY'') ';
      // FIN HPC_201513_ASO
   end;

   If rbtDni.Checked  Then
   begin
      // INICIO HPC_201513_ASO
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
           +' where EST_AUT_CLI <> ''NU'' '
           +'   and ASODNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%')
           //+'   and to_date(FEC_CRE_CLI)='+quotedstr(DtpFecIni.Text)
           +'   AND  EST_AUT_CLI = CASE WHEN ' + QuotedStr(xsCodigoEstado) + ' = ''^^'' THEN EST_AUT_CLI ELSE ' + QuotedStr(xsCodigoEstado) + ' END '
           +'   AND  TRUNC(FEC_CRE_CLI) BETWEEN TO_DATE(' + QuotedStr(dtpEnvioN3Inicio.Text)+ ',''DD/MM/YYYY'') AND TO_DATE(' + QuotedStr(dtpEnvioN3Fin.Text)+ ',''DD/MM/YYYY'') ';
      xSQL2:='select EST_AUT_CLI, trunc(FEC_CRE_CLI) FEC_CRE_CLI '
           +'   from ASO_NUE_CLI '
           +'  where EST_AUT_CLI <> ''NU'' '
           +'    and ASODNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%')
           +'    AND  EST_AUT_CLI = CASE WHEN ' + QuotedStr(xsCodigoEstado) + ' = ''^^'' THEN EST_AUT_CLI ELSE ' + QuotedStr(xsCodigoEstado) + ' END '
           +'    AND  TRUNC(FEC_CRE_CLI) BETWEEN TO_DATE(' + QuotedStr(dtpEnvioN3Inicio.Text)+ ',''DD/MM/YYYY'') AND TO_DATE(' + QuotedStr(dtpEnvioN3Fin.Text)+ ',''DD/MM/YYYY'') ';
      // FIN HPC_201513_ASO
   end;

   If rbtCuenta.Checked  Then
   begin
      // INICIO HPC_201513_ASO
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
           +' where EST_AUT_CLI <> ''NU'' '
           +'   and ASONCTA LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%')
           //+'   and to_date(FEC_CRE_CLI)='+quotedstr(DtpFecIni.Text)
           +'   AND  EST_AUT_CLI = CASE WHEN ' + QuotedStr(xsCodigoEstado) + ' = ''^^'' THEN EST_AUT_CLI ELSE ' + QuotedStr(xsCodigoEstado) + ' END '
           +'   AND  TRUNC(FEC_CRE_CLI) BETWEEN TO_DATE(' + QuotedStr(dtpEnvioN3Inicio.Text)+ ',''DD/MM/YYYY'') AND TO_DATE(' + QuotedStr(dtpEnvioN3Fin.Text)+ ',''DD/MM/YYYY'') ';
      xSQL2:='select EST_AUT_CLI, trunc(FEC_CRE_CLI) FEC_CRE_CLI '
           +'   from ASO_NUE_CLI '
           +'  where EST_AUT_CLI <> ''NU'' '
           +'    and ASONCTA LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%')
           +'    AND  EST_AUT_CLI = CASE WHEN ' + QuotedStr(xsCodigoEstado) + ' = ''^^'' THEN EST_AUT_CLI ELSE ' + QuotedStr(xsCodigoEstado) + ' END '
           +'    AND  TRUNC(FEC_CRE_CLI) BETWEEN TO_DATE(' + QuotedStr(dtpEnvioN3Inicio.Text)+ ',''DD/MM/YYYY'') AND TO_DATE(' + QuotedStr(dtpEnvioN3Fin.Text)+ ',''DD/MM/YYYY'') ';
     // FIN HPC_201513_ASO
   end;

   If rbtCodMod.Checked  Then
   begin
      // INICIO HPC_201513_ASO
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
           +' where EST_AUT_CLI <> ''NU'' '
           +'   and ASOCODMOD LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%')
           //+'   and to_date(FEC_CRE_CLI)='+quotedstr(DtpFecIni.Text)
           +'   AND  EST_AUT_CLI = CASE WHEN ' + QuotedStr(xsCodigoEstado) + ' = ''^^'' THEN EST_AUT_CLI ELSE ' + QuotedStr(xsCodigoEstado) + ' END '
           +'   AND  TRUNC(FEC_CRE_CLI) BETWEEN TO_DATE(' + QuotedStr(dtpEnvioN3Inicio.Text)+ ',''DD/MM/YYYY'') AND TO_DATE(' + QuotedStr(dtpEnvioN3Fin.Text)+ ',''DD/MM/YYYY'') ';
      xSQL2:='select EST_AUT_CLI, trunc(FEC_CRE_CLI) FEC_CRE_CLI '
           +'   from ASO_NUE_CLI '
           +'  where EST_AUT_CLI <> ''NU'' '
           +'    and ASOCODMOD LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%')
           +'    AND  EST_AUT_CLI = CASE WHEN ' + QuotedStr(xsCodigoEstado) + ' = ''^^'' THEN EST_AUT_CLI ELSE ' + QuotedStr(xsCodigoEstado) + ' END '
           +'    AND  TRUNC(FEC_CRE_CLI) BETWEEN TO_DATE(' + QuotedStr(dtpEnvioN3Inicio.Text)+ ',''DD/MM/YYYY'') AND TO_DATE(' + QuotedStr(dtpEnvioN3Fin.Text)+ ',''DD/MM/YYYY'') ';
      // FIN HPC_201513_ASO
   end;

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL2);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>0 then
      lblFecha.Caption := DM1.cdsQry.FieldByName('EST_AUT_CLI').AsString
                       +' - '
                       +datetostr(DM1.cdsQry.FieldByName('FEC_CRE_CLI').AsDateTime);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSQL);
   DM1.cdsAso.Open;
// Fin: DPP_201201_ASO
end;

Procedure TfSeleccionAut.dtgAsociadoDblClick(Sender: TObject);
Var
  xAsoId, xSQL: String;
Begin
  dm1.xInsert := '0';
  If dtgAsociado.DataSource.DataSet.RecordCount > 0 Then
  Begin
     If DM1.xCnd<>'AUT' Then
     begin
         if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='AP' then
         begin
            ShowMessage('Cliente fue Autorizado. Consultar en el Maestro de Asociados');
            Exit;
         end;
         if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='RE' then
         begin
            ShowMessage('Cliente fue Rechazado. Verificar...');
            Exit;
         end;
     end;

     If (DM1.xCnd = 'M') or (DM1.xCnd = 'AUT') Then
     Begin
     Try
        DM1.sAso_where:='SOLICITUD='''+DM1.cdsAso.fieldbyname('SOLICITUD').AsString+''' AND ';
        xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
        xSQL:='SELECT * FROM '+DM1.sAPO201+' WHERE '+DM1.sAso_where+' ASOID='+QuotedStr(Trim(xAsoId));
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

        If DM1.xCnd = 'AUT' Then
        begin
           FMantAsociado.bitAutoriza.Visible:=False;
           FMantAsociado.bitRechaza.Visible :=False;
           FMantAsociado.lblEstado.Visible:=True;
           FMantAsociado.pnlEstado.Visible:=True;
           FMantAsociado.btnActualizaReniec.Visible:=False;

           if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='AP' then
           begin
              FMantAsociado.lblEstado.Caption:='AUTORIZADO';
           end;

           if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='RE' then
           begin
              FMantAsociado.lblEstado.Caption:='RECHAZADO';
           end;

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

           if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='N3' then
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
           end;
        end
        else
        begin
           FMantAsociado.bitAutoriza.Visible:=False;
           FMantAsociado.bitRechaza.Visible :=False;

           FMantAsociado.BitReasignacion.Visible:=True;
           FMantAsociado.BitResol.Visible       :=True;
           FMantAsociado.BitCuentas.Visible     :=True;
           FMantAsociado.BitSocio.Visible       :=True;
           FMantAsociado.BitModifica.Visible    :=True;
           FMantAsociado.BitGrabar.Visible      :=True;
           FMantAsociado.BitVerifica.Visible    :=True;
           FMantAsociado.BitPrest.Visible       :=True;
           FMantAsociado.BitMstApo.Visible      :=True;
           FMantAsociado.BitAutDes.Visible      :=True;
           FMantAsociado.bbtnCarta.Visible      :=True;

           FMantAsociado.btnActualizaReniec.Visible:=True;
        end;

        if DM1.wofides<>'01' then
        begin
           FMantAsociado.btnActualizaReniec.Visible:=False;
        end;

        DM1.xSgr:='CTR';
       //INICIO: DPP_201202_ASO
       //SE QUITA LA CARGA DE IMAGENES POR FTP
        {FOtorPre:= TfOtorPre.create(self);
        FOtorPre.CargaFoto(DM1.RecuperaDatos(DM1.sAPO201, 'ASOID',Trim(DM1.cdsAso.FieldByName('ASOID').AsString),'IDIMAGE'));
        FOtorPre.CargaFirma(DM1.RecuperaDatos(DM1.sAPO201, 'ASOID',Trim(DM1.cdsAso.FieldByName('ASOID').AsString),'IDIMAGE'));
        FOtorPre.Free;}
        DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');
       //FINAL: DPP_201202_ASO

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
        FMantAsociado.Caption := 'Autorización de Asociado';
        FMantAsociado.ShowModal;
     Finally
        DM1.cdsPadre.Close; DM1.cdsHijo.Close; DM1.cdsCAso.Close; DM1.cdsRec.Close; DM1.cdsTRela.Close; DM1.cdsQry7.Close;
        DM1.cdsSexo.Close; DM1.cdsTAso.Close; DM1.cdsResol.Close; DM1.cdscarta.Close;
        FMantAsociado.Free;
     End;

     End
     Else If DM1.xCnd='X' Then
          Begin
             If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<>'03' Then Exit;
             Try
               fAuditoria := TfAuditoria.create(Self);
               xSQL:='SELECT TABLA,GRUPO,CAMPO,COMPONENTE,CAMPODES,NVL(MARCAR,''X'') MARCAR FROM SIS001 WHERE CAMPO NOT IN (''TITULO'',''BOTON'') AND TABLA=''Detalle'' ORDER BY CAMPODES';
               DM1.cdsEgrCaja.Close; DM1.cdsEgrCaja.DataRequest(xSQL);  DM1.cdsEgrCaja.Open;
               fAuditoria.lblAsoApeNom.Caption:=DM1.cdsAso.fieldbyname('ASOAPENOMDNI').AsString;
               fAuditoria.ShowModal;
             Finally
                 fAuditoria.Free;
             End;
          End
          Else
          Begin
            //INICIO: DPP_201202_ASO
            //SE QUITA LA CARGA DE IMAGENES POR FTP
             {FOtorPre.CargaFoto(DM1.cdsAso.FieldByName('IDIMAGE').AsString);
             FOtorPre.CargaFirma(DM1.cdsAso.FieldByName('IDIMAGE').AsString);}
             DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');
            //FINAL: DPP_201202_ASO
             DM1.LimpiaDatos;
             DM1.CrgDatos;
             FOtorPre.Botones(True);
             FOtorPre.lblMtoPre.Caption:=FormatFloat('###,###.#0',FOtorPre.SaldoSrb(DM1.cdsAso.FieldByName('ASOID').AsString));
             FOtorPre.dtgPrestamos.SetFocus;
             Close;
          End;
  End;
  BitMostrar.OnClick(BitMostrar);
end;

procedure TfSeleccionAut.BitSalirClick(Sender: TObject);
begin
   if DM1.xCnd='AUT' then
   begin
      Close;
      Exit;
   end;

   If DM1.xCnd='M' Then
   Begin
      DM1.xCnd := 'S';
      Close;
   End
   Else
      If DM1.xCnd='X' Then
      Begin
         Close;
      End
      Else
         If DM1.xCnd='D' Then
         Begin
            Close;
         End
         Else
         Begin
            DM1.LimpiaDatos;
            DM1.cdsAso.Close;
            Close;
           // if FOtorPre=nil then Exit;
            FOtorPre:= TfOtorPre.create(self);
            FOtorPre.EdtCodMod.Text:='';
            FOtorPre.EdtCodMod.SetFocus;
         End;
end;

procedure TfSeleccionAut.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TfSeleccionAut.FormActivate(Sender: TObject);
var
  xSQL : String;
begin
  // INICIO HPC_21513_ASO
  dtpEnvioN3Inicio.Date:=Date;
  dtpEnvioN3Fin.Date:=Date;
  Label3.Visible := false;
  DtpFecIni.Visible := false;
  // DtpFecIni.Date:=Date;
  // FIN HPC_21513_ASO
  DM1.sAPO201:='ASO_NUE_CLI';
  xSQL:='SELECT * FROM ASO_NUE_CLI WHERE to_date(FEC_CRE_CLI)='''+DtpFecIni.Text+''''
       +'  and EST_AUT_CLI=''N3'' ';
  DM1.cdsAso.Close;
  DM1.cdsAso.DataRequest(xSQL);
  DM1.cdsAso.Open;
end;

procedure TfSeleccionAut.FormCreate(Sender: TObject);
// INICIO HPC_201513_ASO
var xsSQL : String;
// FIN HPC_201513_ASO
begin
  DM1.BlqComponentes(Self);

  DM1.xCnd := 'AUT';
  gbbuscar.Width := 430;
  gbbuscar.Height := 40;
  edtBuscar.Width := 407;
  edtBuscar.Height := 28;
  GbAsociados.Caption := 'Buscar Por ' + rbtApeNom.Caption;
  // INICIO HPC_201513_ASO
  DM1.FG_CONECTA_CDS(xxCdsQryEstado, xxDsQryEstado);
  xsSQL := 'SELECT ''^^'' CODIGO '
         + '			,'' -- TODOS -- '' DESCRIPCION '
         + '			,0 ORDEN '
         + '	FROM DUAL '
         + 'UNION ALL '
         + 'SELECT CODIGO '
         + '			,DESCRIPCION '
         + '			,ROWNUM ORDEN '
         + '	FROM (SELECT DISTINCT EST_AUT_CLI CODIGO '
         + '											 ,EST_AUT_CLI DESCRIPCION '
         + '					FROM ASO_NUE_CLI '
         + '				 WHERE EST_AUT_CLI <> ''NU'') '
         + ' ORDER BY ORDEN ';
  xxCdsQryEstado.Close;
  xxCdsQryEstado.DataRequest(xsSQL);
  xxCdsQryEstado.Open;
  cbListaEstados.LookupTable := xxCdsQryEstado;
  cbListaEstados.LookupField := 'DESCRIPCION';
  cbListaEstados.Selected.Clear;
  cbListaEstados.Selected.Add('DESCRIPCION'#9'8'#9'Estado');
  cbListaEstados.LookupValue := xxCdsQryEstado.fieldbyname('DESCRIPCION').AsString;
  // FIN HPC_201513_ASO
end;

procedure TfSeleccionAut.rbtApeNomClick(Sender: TObject);
begin
  LimpiaGrid;
  gbbuscar.Width:=430; gbbuscar.Height  :=44;
  edtBuscar.Width:=407; edtBuscar.Height:=24;
  GbAsociados.Caption:='Buscar Por '+rbtApeNom.Caption;
  edtBuscar.SetFocus;
end;

procedure TfSeleccionAut.rbtDniClick(Sender: TObject);
begin
LimpiaGrid;
gbbuscar.Width:=137; gbbuscar.Height  :=44;
edtBuscar.Width:=114; edtBuscar.Height:=24;
GbAsociados.Caption:='Buscar Por '+rbtDni.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccionAut.rbtCuentaClick(Sender: TObject);
begin
LimpiaGrid;
gbbuscar.Width:=137; gbbuscar.Height  :=44;
edtBuscar.Width:=114; edtBuscar.Height:=24;
GbAsociados.Caption:='Buscar Por '+rbtCuenta.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccionAut.rbtCodModClick(Sender: TObject);
begin
LimpiaGrid;
gbbuscar.Width:=137; gbbuscar.Height  :=44;
edtBuscar.Width:=114; edtBuscar.Height:=24;
GbAsociados.Caption:='Buscar Por '+rbtCodMod.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccionAut.LimpiaGrid;
begin
  edtBuscar.Text:=''; DM1.cdsAso.Close;  DM1.cdsAso.DataRequest('SELECT * FROM '+DM1.sAPO201+' WHERE ASOCODMOD='+QuotedStr('@#$!*@/#&^'));   DM1.cdsAso.Open;
end;

function TfSeleccionAut.VrfCtaAhorros(xAsoId: String): String;
var xSQL:String;
begin
   xSQL:='SELECT ASOID,ASONCTA FROM APO207 WHERE ASOID='+QuotedStr(xAsoId)+' AND SITCTA=''A''  ';
   DM1.cdsCtasBco.Close; DM1.cdsCtasBco.DataRequest(xSQL); DM1.cdsCtasBco.Open;
   If DM1.cdsCtasBco.RecordCount > 1 Then   Result:='N'  Else   Result:='S' ;

   DM1.cdsCtasBco.Close;

end;

procedure TfSeleccionAut.edtBuscarExit(Sender: TObject);
begin
If Length(Trim(edtBuscar.Text))<> 0 Then BitMostrarClick(self);
end;


procedure TfSeleccionAut.dtgAsociadoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   if DM1.cdsAso.FieldByName('AsoTipId').AsString='CE' then
     begin
       If Field.DisplayName = 'Tipo' Then
         Begin
          dtgAsociado.Canvas.Font.Color := clRed;
          dtgAsociado.DefaultDrawDataCell(Rect, Field, State);
         End;
     end;

   if DM1.cdsAso.FieldByName('EST_AUT_CLI').AsString='AP' then
     begin
       If Field.DisplayName = 'Estado' Then
         Begin
          dtgAsociado.Canvas.Font.Color := clGreen;
          dtgAsociado.DefaultDrawDataCell(Rect, Field, State);
         End;
     end;
   if DM1.cdsAso.FieldByName('EST_AUT_CLI').AsString='RE' then
     begin
       If Field.DisplayName = 'Estado' Then
         Begin
          dtgAsociado.Canvas.Font.Color := clRed;
          dtgAsociado.DefaultDrawDataCell(Rect, Field, State);
         End;
     end;
end;

end.
