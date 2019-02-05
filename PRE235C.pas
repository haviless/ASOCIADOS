// Inicio Uso Estándares: 01/08/2011
// Unidad               : PRE235C
// Formulario           : FModExpben
// Fecha de Creación    : 07/06/2017
// Autor                : Jesús Castillo Pampas
// Objetivo             : Formulario de Consulta Expediente de beneficios
// Actualizaciones      :
//HPC_201702_ASO        : Creación del Formulario

//Inicio HPC_201702_ASO
//Creación de formulario que muestra los datos del expediente de beneficios

Unit PRE235C;
Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, Buttons, IniFiles, ExtCtrls, ComCtrls, Grids, Wwdbigrd,
   Wwdbgrid, wwdblook, Wwdbdlg, wwdbdatetimepicker, IdBaseComponent,
   IdComponent, IdTCPConnection, IdTCPClient, IdFTP, wwriched, jpeg, db,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppDB, ppDBPipe, ppDBBDE, PRE901C;
Type
   TFModExpben = Class(TForm)
      Label1: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Panel1: TPanel;
      meAsoApeNomDni: TMaskEdit;
      Panel2: TPanel;
      meAsoDocNum: TMaskEdit;
      Panel3: TPanel;
      meUsenom: TMaskEdit;
      Panel6: TPanel;
      meAsocodmod: TMaskEdit;
      meUseid: TMaskEdit;
      Panel4: TPanel;
      meUpagonom: TMaskEdit;
      meUpagoid: TMaskEdit;
      Panel5: TPanel;
      meUpronom: TMaskEdit;
      meUproid: TMaskEdit;
      Label8: TLabel;
      Panel7: TPanel;
      meAsodir: TMaskEdit;
      Panel8: TPanel;
      meAsozipdes: TMaskEdit;
      Label9: TLabel;
      Label10: TLabel;
      Panel9: TPanel;
      meAsodeslab: TMaskEdit;
      Label11: TLabel;
      Panel10: TPanel;
      meAsodirlab: TMaskEdit;
      Panel11: TPanel;
      meAsozipdeslab: TMaskEdit;
      Label12: TLabel;
      pgmulti: TPageControl;
      tsforpag: TTabSheet;
      tsresoluciones: TTabSheet;
      tsdatper: TTabSheet;
      btncerrar: TBitBtn;
      GroupBox2: TGroupBox;
      Label18: TLabel;
      Label22: TLabel;
      dbdtpfecces: TwwDBDateTimePicker;
      Label23: TLabel;
      Label24: TLabel;
      pnlnumresnom: TPanel;
      menumresnom: TMaskEdit;
      pnlfecresnom: TPanel;
      mefecresnom: TMaskEdit;
      pnlnumresces: TPanel;
      menumresces: TMaskEdit;
      pnlobservacion: TPanel;
      StaticText1: TStaticText;
      gbtipben: TGroupBox;
      Label17: TLabel;
      lblfacinv: TLabel;
      Panel16: TPanel;
      metipbenef: TMaskEdit;
      dbltipbenef: TwwDBLookupCombo;
      btnliqben: TBitBtn;
      IdFTP1: TIdFTP;
      Label2: TLabel;
      Panel14: TPanel;
      measotelef: TMaskEdit;
      timerobsevaciones: TTimer;
      redit: TwwDBRichEdit;
      GroupBox3: TGroupBox;
      ImgFotoConfirme: TImage;
      ImgFirmaConfirme: TImage;
    ppRReniec: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape41: TppShape;
    ppLabel21: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape31: TppShape;
    ppShape28: TppShape;
    ppShape26: TppShape;
    ppShape21: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape27: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFirma: TppImage;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppLabel141: TppLabel;
    ppDBText34: TppDBText;
    ppFoto: TppImage;
    ppFooterBand1: TppFooterBand;
    ppBDEReniec: TppBDEPipeline;
    Label26: TLabel;
    Panel15: TPanel;
    meregpen: TMaskEdit;
    TabSheet1: TTabSheet;
    rgforsolben: TRadioGroup;
    rgtipret: TRadioGroup;
    btnnueseg: TBitBtn;
    gborigen: TGroupBox;
    Label20: TLabel;
    Label16: TLabel;
    dblcdptoid: TwwDBLookupCombo;
    dblccodofi: TwwDBLookupCombo;
    Panel12: TPanel;
    meofides: TMaskEdit;
    Panel13: TPanel;
    medptodes: TMaskEdit;
    GBfecrec: TGroupBox;
    DBDTPfecrecexp: TwwDBDateTimePicker;
    dbdtpfacinv: TwwDBDateTimePicker;
    pprRetiro: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    pplasodir: TppLabel;
    ppldepdir: TppLabel;
    pplprodir: TppLabel;
    ppldisdir: TppLabel;
    pplasotelfij: TppLabel;
    pplasotelcel: TppLabel;
    ppldiacese: TppLabel;
    pplmescese: TppLabel;
    pplanocese: TppLabel;
    pplcenedu: TppLabel;
    ppldiscenedu: TppLabel;
    pplprocenedu: TppLabel;
    ppldepcenedu: TppLabel;
    ppldianom: TppLabel;
    pplmesnom: TppLabel;
    pplanonom: TppLabel;
    pplciudad: TppLabel;
    pprFallecimiento: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLasodirF1: TppLabel;
    ppLasodepF: TppLabel;
    ppLasoproF: TppLabel;
    ppLAsodisF: TppLabel;
    ppLdiaresfall: TppLabel;
    ppLmesresfal: TppLabel;
    ppLanoresfal: TppLabel;
    ppLasocenedufal: TppLabel;
    pplciudadfal: TppLabel;
    ppLdisasoceneduF: TppLabel;
    ppLproasoceneduF: TppLabel;
    ppLdianomfal: TppLabel;
    ppLmesnomfal: TppLabel;
    ppLanonomfal: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppLasoapenomsol: TppLabel;
    ppLDNIsol: TppLabel;
    ppLasodirF2: TppLabel;
    ppLdepAsoceneduF: TppLabel;
    ppLAsopenomR: TppLabel;
    ppLASODNIR: TppLabel;
    ppLASOCODMODR: TppLabel;
    ppLRESCESE: TppLabel;
    ppLRESNOM: TppLabel;
    ppLAsoapenomdniF: TppLabel;
    ppLASODNIF: TppLabel;
    ppLASOCODMODF: TppLabel;
    ppLasoresceseF: TppLabel;
    ppLasoresnomF: TppLabel;
    CboCausaCese: TFCboCausaCese;
    GroupBox1: TGroupBox;
    meanoultapo: TMaskEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    memesultapo: TMaskEdit;
    GroupBox4: TGroupBox;
    Label27: TLabel;
    meDNIsol: TMaskEdit;
    Label28: TLabel;
    meapenomsol: TMaskEdit;
    Label29: TLabel;
    mevinparentesco: TMaskEdit;
    GroupBox5: TGroupBox;
    dblcBanco: TwwDBLookupCombo;
    dblcforpag: TwwDBLookupCombo;
    dblcagegir: TwwDBLookupComboDlg;
    lblagegir: TLabel;
    lblasoncta: TLabel;
    lblbanco: TLabel;
    lblforpag: TLabel;
    rgCobAso: TRadioGroup;
    pnlasoncta: TPanel;
    measoncta: TMaskEdit;
    pnlagegir: TPanel;
    meagengir: TMaskEdit;
    pnlbanco: TPanel;
    mebancodes: TMaskEdit;
    pnlforpag: TPanel;
    meforpagodes: TMaskEdit;
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure rgCobAsoClick(Sender: TObject);
      Procedure dblcdBancoidChange(Sender: TObject);
      Procedure dbltipbenefChange(Sender: TObject);
      Procedure dblcDeporiChange(Sender: TObject);
      Procedure dblcBancoChange(Sender: TObject);
      Procedure dblcagegirChange(Sender: TObject);
      Procedure dblcagegirExit(Sender: TObject);
      Procedure btncerrarClick(Sender: TObject);
      Procedure dblcdptoidChange(Sender: TObject);
      Procedure dbdtpfacinvExit(Sender: TObject);
      Procedure dblcdptoidExit(Sender: TObject);
      Procedure btnliqbenClick(Sender: TObject);
      Procedure dbdtpfeccesExit(Sender: TObject);
      Procedure dbltipbenefExit(Sender: TObject);
      Procedure dblcBancoExit(Sender: TObject);
      Procedure Timer1Timer(Sender: TObject);
      Procedure timerobsevacionesTimer(Sender: TObject);
      Procedure ImgFotoConfirmeDblClick(Sender: TObject);
      Procedure dblcforpagExit(Sender: TObject);
    procedure btnnuesegClick(Sender: TObject);
    procedure dblccodofiChange(Sender: TObject);
    procedure DBDTPfecrecexpExit(Sender: TObject);
    procedure dblcforpagChange(Sender: TObject);

   Private
      Procedure habilitaModFam;
   Public
      sModExpR : String;
      Procedure llena;
      Procedure deshabilita;
      Procedure habilita;
      Function chksolicitud: Boolean;
      Procedure llenaredit;
   End;
Var
   FModExpben: TFModExpben;
Implementation

Uses ASODM,PRE241C,PRE292C;
{$R *.dfm}

Procedure TFModExpben.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin
   pgmulti.TabIndex := 0;
   rgCobAso.ItemIndex := -1;
   If DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString <> '01' Then
      xSql := 'SELECT TIPDESEID, TIPDESEDES, FLACOBPRE FROM CRE104 A WHERE NVL(FLAHISPRE, ''X'') = ''S'' ORDER BY TIPDESEID'
   Else
      xSql := 'SELECT TIPDESEID, TIPDESEDES, FLACOBPRE FROM CRE104 A WHERE NVL(FLAVIGPRE, ''X'') = ''S'' ORDER BY TIPDESEID';
   DM1.cdsFPago.Close;
   DM1.cdsFPago.DataRequest(xSql);
   DM1.cdsFPago.Open;
   llena;
   deshabilita;
   If (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '02') Or (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '06') Then
   Begin

      btnliqben.Enabled := True;
      tsforpag.Enabled := False;

   End;

  xSql:='SELECT a.pvslbennr, '
       +   'nvl((select max(case when pvslnofc is not null then ''S'' else ''N'' end) '
       +         ' from PVS307 b '
       +        ' where a.pvslbennr = b.pvslbennr and pvslnofc is not null ),''N'') tiene_num_ofi '
       + ' FROM PVS306 a '
       + 'WHERE ASOID = '''+DM1.cdsExpLiq.FieldByName('ASOID').AsString+''' '
       +  ' and a.pvslbennr='''+DM1.cdsExpLiq.FieldByname('pvslbennr').AsString+''' and numbenori is not null ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  sModExpR:='N';
  if (DM1.cdsQry.RecordCount=1) and (DM1.cdsQry.FieldByname('tiene_num_ofi').AsString='N') then
  begin
    tsforpag.Enabled := True;
    habilitaModFam;
    sModExpR:='S';
  end;

End;

Procedure TFModExpben.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
End;

Procedure TFModExpben.llena;
Var
   xSql: String;
Begin
   If DM1.cdsExpLiq.FieldByName('PVSTIPRET').AsString <> '' Then
      rgtipret.ItemIndex := DM1.cdsExpLiq.FieldByName('PVSTIPRET').AsInteger;
   xSql := 'SELECT '
   +' asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid, upagoid, asoresnom, asofresnom, resid,'
   +' regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto, asodpto, zonaid, zonanomb, ubigeoid, dptoid, paisid, refdom,'
   +' asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum, asolibmil, asoruc, estcivid, asosexo, asoemail, bancoid, asoncta, sitcta, asodni, graacid,'
   +' grainsid, profid, asofmov, asofluging, asodir, usuario, hreg, freg, asolugest, fecterest, tiempoest, asolnacid, asorescese, asofrescese,'
   +' fgarante, zipid, ciudid, archivoftp, ciaid, flagvar, asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea, usr_ben, fec_ben, ctaser, cargo,'
   +' variascuot, crencuota, nfusion, idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni, asonomdni, asoapenomdni, asodeslab,'
   +' asodirlab, asodptlabid, asoprvlabid, asodstlabid, asotellab, dptnacid, prvnacid, dstnacid, vialabid, zonalabid, fecact, indicador, ccosid, password,'
   +' codafp, deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant, actarcren, reingreso, autdesapo, fecautdesapo, usuregautdesapo,'
   +' ofiregautdesapo, codmodautdesapo, codarchivo, gencodbar, envautdes, corenvautdes, codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, codurbviv,'
   +' desurbviv, numetaviv, desetaviv, numintviv, nomdirviv, anoenv, envio, codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo,'
   +' ofiregautdescuo, codmodautdescuo, mdfasodir, mdfzipid, mdfcntreg, mdfusrmod, mdffecmod, emicarta, desmanviv, codmotdestcuo, fecactpad, ceneduid, fallecido,'
   +' tipo_fall_id, en_actualiz, codtiptel1, codreftel1, codtiptel2, codreftel2, codpension, fecregautdesapo, codleypen, numautonp, codblocharen, numblocharen,'
   +' coddepintren, desdepintren, asoapecasdni, invalidez, tipo_inva_id, fecautonp, asoaptser, fecactsit, codreglab, usuautonp, oriopeonp, codciutelfij1, codciutelfij2,'
   +' fecreccadaps, usureccadaps, codmotautcadaps, codpre'
   +' FROM APO201 WHERE ASOID = ' + QuotedStr(DM1.cdsExpLiq.FieldByName('ASOID').AsString);
   DM1.cdsAsociado.Close;
   DM1.cdsAsociado.DataRequest(xSql);
   DM1.cdsAsociado.Open;
   meregpen.Text := DM1.DevuelveValor('APO105', 'REGPENABR', 'REGPENID', Copy(DM1.cdsAsociado.FieldByName('REGPENID').AsString,1,2));
   If DM1.cdsAsociado.FieldByName('REGPENID').AsString = '03' Then
   Begin
      xSql := 'SELECT SUBSTR(PROV,4,2) CODAFP, PROVDES DESAFP  FROM TGE201 WHERE SUBSTR(PROV,1,1) = ''A'' AND CLAUXID = ''A'' AND SUBSTR(PROV,4,2) = '+QuotedStr(DM1.cdsAsociado.FieldByName('CODAFP').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      meregpen.Text := meregpen.Text + ' - ' + DM1.cdsQry.FieldByName('DESAFP').AsString;
   End;
  DM1.CargaImagenes(DM1.cdsAsociado.FieldByName('ASODNI').AsString);
  ImgFotoConfirme.Picture.Assign(DM1.Jpg);
  ImgFirmaConfirme.Picture.Assign(DM1.jpgFirma);
  llenaredit;
  If (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '01') Or (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '05') Then
  Begin
      xSql := 'SELECT '
      +' ciaid, tipbenef, benefdes, benefabr, usuario, freg, hreg, tb, cuentaid'
      +' FROM TGE186 WHERE TIPBENEF IN (''01'',''02'',''03'')';
      DM1.cdsTipBenef.Close;
      DM1.cdsTipBenef.DataRequest(xSql);
      DM1.cdsTipBenef.Open;
      xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
      DM1.cdsDpto.Close;
      DM1.cdsDpto.DataRequest(xSql);
      DM1.cdsDpto.Open;
      dblcdptoid.Selected.Clear;
      dblcdptoid.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
      dblcdptoid.Selected.Add('DPTODES'#9'25'#9'Departamento'#9#9);
      dblcdptoid.Text := DM1.cdsExpLiq.FieldByName('DEPORIEXP').AsString;
      dblccodofi.Text := DM1.cdsExpLiq.FieldByName('OFIORIEXP').AsString;
      dbltipbenef.Text := DM1.cdsExpLiq.FieldByName('PVSTIPBEN').AsString;
      meAsozipdes.Text := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', DM1.cdsAsociado.FieldByName('ZIPID').AsString) + '/'
         + DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', Copy(DM1.cdsAsociado.FieldByName('ZIPID').AsString, 1, 4)) + '/'
         + DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', Copy(DM1.cdsAsociado.FieldByName('ZIPID').AsString, 1, 2));
      meAsozipdeslab.Text := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', DM1.cdsAsociado.FieldByName('ASODSTLABID').AsString) + '/'
         + DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', Copy(DM1.cdsAsociado.FieldByName('ASODSTLABID').AsString, 1, 4)) + '/'
         + DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', Copy(DM1.cdsAsociado.FieldByName('ASODSTLABID').AsString, 1, 2));
      measotelef.Text := DM1.cdsAsociado.FieldByName('ASOTELF1').AsString;
      menumresnom.Text := DM1.cdsAsociado.FieldByName('ASORESNOM').AsString;
      dbdtpfecces.Date := DM1.cdsExpLiq.FieldByName('ASOFRESCESE').AsDateTime;
      menumresces.Text := DM1.cdsExpLiq.FieldByName('ASORESCESE').AsString;
      mefecresnom.Text := DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString;
      meAsoncta.Text := DM1.cdsAsociado.FieldByName('ASONCTA').AsString;
      meUpagoid.Text := DM1.cdsAsociado.FieldByName('UPAGOID').AsString;
      meUproid.Text := DM1.cdsAsociado.FieldByName('UPROID').AsString;
      meUseid.Text := DM1.cdsAsociado.FieldByName('USEID').AsString;
      meAsodir.Text := DM1.cdsAsociado.FieldByName('ASODIR').AsString;
      meAsodeslab.Text := DM1.cdsAsociado.FieldByName('ASODESLAB').AsString;
      meAsodirlab.Text := DM1.cdsAsociado.FieldByName('ASODIRLAB').AsString;
      meAsocodmod.Text := DM1.cdsAsociado.FieldByName('ASOCODMOD').AsString;
      meAsoApeNomDni.Text := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
      meUpagoid.Text := DM1.cdsAsociado.FieldByName('UPAGOID').AsString;
      meUproid.Text := DM1.cdsAsociado.FieldByName('UPROID').AsString;
      meUseid.Text := DM1.cdsAsociado.FieldByName('USEID').AsString;
      meAsodir.Text := DM1.cdsAsociado.FieldByName('ASODIR').AsString;
      meAsodeslab.Text := DM1.cdsAsociado.FieldByName('ASODESLAB').AsString;
      meAsodirlab.Text := DM1.cdsAsociado.FieldByName('ASODIRLAB').AsString;
      If DM1.cdsAsociado.FieldByName('ASODNI').AsString = '' Then
      Begin
         xSql := 'SELECT TIPDOCABR FROM TGE159 WHERE TIPDOCCOD = ' + QuotedStr(DM1.cdsAsociado.FieldByName('TIPDOCCOD').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         meAsoDocNum.Text := DM1.cdsQry.FieldByName('TIPDOCABR').AsString + '-' + DM1.cdsAsociado.FieldByName('ASODOCNUM').AsString;
      End
      Else
      Begin
         xSql := 'SELECT TIPDOCABR FROM TGE159 WHERE TIPDOCCOD = ' + QuotedStr('10');
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         meAsoDocNum.Text := DM1.cdsQry.FieldByName('TIPDOCABR').AsString + '-' + DM1.cdsAsociado.FieldByName('ASODNI').AsString;
      End;
      xSql := 'SELECT USENOM FROM APO101 WHERE USEID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('USEID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      meUsenom.Text := DM1.cdsQry.FieldByName('USENOM').AsString;
      xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      meUpagonom.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
      xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      meUpronom.Text := DM1.cdsQry.FieldByName('UPRONOM').AsString;
      meanoultapo.Text := Copy(DM1.cdsExpLiq.FieldByName('PVSULTAPO').AsString, 1, 4);
      memesultapo.Text := Copy(DM1.cdsExpLiq.FieldByName('PVSULTAPO').AsString, 6, 2);
      If dbltipbenef.Text = '01' Then
      Begin
         rgtipret.Visible := True;
         dbdtpfacinv.Visible := False;
         dbdtpfacinv.text := '';
      End;
      If dbltipbenef.Text = '02' Then
      Begin
         rgtipret.Visible := False;
         dbdtpfacinv.Visible := True;
         dbdtpfacinv.Date := DM1.cdsExpLiq.FieldByName('ASOFECFAL').AsDateTime;
      End;
      If dbltipbenef.Text = '03' Then
      Begin
         rgtipret.Visible := False;
         dbdtpfacinv.Visible := True;
         dbdtpfacinv.Date := DM1.cdsExpLiq.FieldByName('ASOFECINV').AsDateTime;
      End;
      pgmulti.TabIndex := 0;
      If DM1.cdsExpLiq.FieldByName('PVSCOBASO').AsString = 'S' Then
      Begin
         rgCobAso.ItemIndex := 0;
         dblcforpag.Text := DM1.cdsExpLiq.FieldByName('FORPAGOID').AsString;
         DM1.cdsFPago.Locate('TIPDESEID', dblcforpag.Text, []);
         meforpagodes.Text :=  DM1.cdsFPago.FieldByName('TIPDESEDES').AsString;
         If DM1.cdsFPago.FieldByName('FLACOBPRE').AsString = 'B' Then
            xSql := 'SELECT BANCOID, BANCONOM FROM TGE105 WHERE FLAVIGPRE = ''S'' AND CLAUXID = ''B'''
         Else
            xSql := 'SELECT BANCOID, BANCONOM FROM TGE105 WHERE FLAVIGPRE = ''S'' AND CLAUXID = ''C''';
         DM1.cdsBcos.Close;
         DM1.cdsBcos.DataRequest(xSql);
         DM1.cdsBcos.Open;
         dblcBanco.Text := DM1.cdsExpLiq.FieldByName('BANCOID').AsString;
         dblcagegir.Text := DM1.cdsExpLiq.FieldByName('AGENBCOID').AsString;
         measoncta.Text := DM1.cdsExpLiq.FieldByName('ASONCTA').AsString;
      End
      Else
      Begin
         rgCobAso.ItemIndex := 1;
      End;
  End;
   If (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '02') Or (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '06') Then
   Begin
      xSql := 'SELECT '
      +' ciaid, pvslbennr, pvsltipbe, pvslfecbe, asoid, asocodmod, asocodaux, pvslapnom_xx, pvsldni_xx, pvsldir_xx, pvsldpto_xx, pvslprov_xx, pvsldist_xx,'
      +' pvslceed_xx, pvslcedp_xx, pvslcepr_xx, pvslcedi_xx, pvslupri_xx, pvsluprn_xx, pvslupai_xx, pvslupan_xx, pvslusei_xx, pvslusen_xx, pvslnres_xx,'
      +' pvslfres_xx, pvslnces_xx, pvslfces_xx, pvslulap, pvsltaap, pvslnvou_xx, pvslestad, forpagoid_xx, bancoid_xx, pvslncta_xx, pvsexpnro, pvsldesnm_xx,'
      +' pvsltben_xx, pvsltdev_xx, pvsltdsc_xx, pvslsald_xx, pvsltpre_xx, pvslsldp_xx, pvstinnc_xx, pvstpran_xx, pvslobs_xx, usuario, freg, hreg, pvslnofc_xx,'
      +' pvsestliq, pvslfpago_xx, agenbcoid_xx, pvsltcre_xx, pvsfanul, pvsusuanul, pvsmotanul, cntanomm, tipocont, cntflag, pvslliqant_xx, pvscobaso, asoapenomdni,'
      +' tipdoccod, asodocnum, useid, upagoid, uproid, asodir, zipid, asodeslab, asodirlab, asodstlabid, asoresnom, asofresnom, asorescese, asofrescese,'
      +' pvsultapo_xx, asoncta, monliqben, mondes, mondev, monpag, asodni, asotelf1, codotrdocide, numotrdocide, autdesapo, fecautdesapo, pvstipret, numopeban,'
      +' fecopeban, numbenori, diferido, fecdifliq'
      +' FROM PVS306 WHERE PVSLBENNR = ' + QuotedStr(DM1.cdsExpLiq.FieldByName('PVSLBENNR').AsString);
      DM1.cdsCabLiq.Close;
      DM1.cdsCabLiq.DataRequest(xSql);
      DM1.cdsCabLiq.Open;
	    xSql := 'SELECT DPTOID, DPTODES FROM APO158';
      DM1.cdsDpto.Close;
      DM1.cdsDpto.DataRequest(xSql);
      DM1.cdsDpto.Open;
      dblcdptoid.Text := DM1.cdsExpLiq.FieldByName('DEPORIEXP').AsString;
      dblccodofi.Text := DM1.cdsExpLiq.FieldByName('OFIORIEXP').AsString;
      xSql := 'SELECT ciaid, tipbenef, benefdes, benefabr, usuario, freg, hreg, tb, cuentaid FROM TGE186 WHERE TIPBENEF IN (''01'',''02'',''03'')';
      DM1.cdsTipBenef.Close;
      DM1.cdsTipBenef.DataRequest(xSql);
      DM1.cdsTipBenef.Open;
      dbltipbenef.Text := DM1.cdsCabLiq.FieldByName('PVSLTIPBE').AsString;
      menumresnom.Text := DM1.cdsCabLiq.FieldByName('ASORESNOM').AsString;
      mefecresnom.Text := DM1.cdsCabLiq.FieldByName('ASOFRESNOM').AsString;
      menumresces.Text := DM1.cdsCabLiq.FieldByName('ASORESCESE').AsString;
      dbdtpfecces.Date := DM1.cdsCabLiq.FieldByName('ASOFRESCESE').AsDateTime;
      meAsoncta.Text := DM1.cdsCabLiq.FieldByName('ASONCTA').AsString;
      meUproid.Text := DM1.cdsCabLiq.FieldByName('UPROID').AsString;
      xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = ' + QuotedStr(meUproid.Text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      meUpronom.Text := DM1.cdsQry.FieldByName('UPRONOM').AsString;
      meUpagoid.Text := DM1.cdsCabLiq.FieldByName('UPAGOID').AsString;
      xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPAGOID = ' + QuotedStr(meUpagoid.Text) + ' AND UPROID = ' + QuotedStr(meUproid.Text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      meUpagonom.Text := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
      meUseid.Text := DM1.cdsCabLiq.FieldByName('USEID').AsString;
      xSql := 'SELECT USENOM FROM APO101 WHERE USEID = ' + QuotedStr(meUseid.Text) + ' AND UPAGOID = ' + QuotedStr(meUpagoid.Text) + ' AND UPROID = ' + QuotedStr(meUproid.Text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      meUsenom.Text := DM1.cdsQry.FieldByName('USENOM').AsString;
      meAsodir.Text := DM1.cdsCabLiq.FieldByName('ASODIR').AsString;
      meAsodeslab.Text := DM1.cdsCabLiq.FieldByName('ASODESLAB').AsString;
      meAsodirlab.Text := DM1.cdsCabLiq.FieldByName('ASODIRLAB').AsString;
      meAsocodmod.Text := DM1.cdsCabLiq.FieldByName('ASOCODMOD').AsString;
      meAsoApeNomDni.Text := DM1.cdsCabLiq.FieldByName('ASOAPENOMDNI').AsString;
      If DM1.cdsCabLiq.FieldByName('ASODNI').AsString = '' Then
      Begin
         xSql := 'SELECT TIPDOCABR FROM TGE159 WHERE TIPDOCCOD = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('TIPDOCCOD').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         meAsoDocNum.Text := DM1.cdsQry.FieldByName('TIPDOCABR').AsString + '-' + DM1.cdsCabLiq.FieldByName('ASODOCNUM').AsString;
      End
      Else
      Begin
         xSql := 'SELECT TIPDOCABR FROM TGE159 WHERE TIPDOCCOD = ' + QuotedStr('10');
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         meAsoDocNum.Text := DM1.cdsQry.FieldByName('TIPDOCABR').AsString + '-' + DM1.cdsCabLiq.FieldByName('ASODNI').AsString;
      End;
      meAsozipdes.Text := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', DM1.cdsCabLiq.FieldByName('ZIPID').AsString) + '/'
         + DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', Copy(DM1.cdsCabLiq.FieldByName('ZIPID').AsString, 1, 4)) + '/'
         + DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', Copy(DM1.cdsCabLiq.FieldByName('ZIPID').AsString, 1, 2));
      meAsozipdeslab.Text := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', DM1.cdsCabLiq.FieldByName('ASODSTLABID').AsString) + '/'
         + DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', Copy(DM1.cdsCabLiq.FieldByName('ASODSTLABID').AsString, 1, 4)) + '/'
         + DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', Copy(DM1.cdsCabLiq.FieldByName('ASODSTLABID').AsString, 1, 2));
      meanoultapo.Text := Copy(DM1.cdsCabLiq.FieldByName('PVSLULAP').AsString, 1, 4);
      memesultapo.Text := Copy(DM1.cdsCabLiq.FieldByName('PVSLULAP').AsString, 6, 2);
	    If dbltipbenef.Text = '01' Then
      Begin
         rgtipret.Visible := True;
         rgtipret.ItemIndex := StrToInt(DM1.cdsExpLiq.FieldByName('PVSTIPRET').AsString);
         dbdtpfacinv.Visible := False;
         dbdtpfacinv.text := '';
      End;
      If dbltipbenef.Text = '02' Then
      Begin
         rgtipret.Visible := False;
         dbdtpfacinv.Visible := True;
         dbdtpfacinv.Date := DM1.cdsExpLiq.FieldByName('ASOFECFAL').AsDateTime;
      End;
      If dbltipbenef.Text = '03' Then
      Begin
         rgtipret.Visible := False;
         dbdtpfacinv.Visible := True;
         dbdtpfacinv.Date := DM1.cdsExpLiq.FieldByName('ASOFECINV').AsDateTime;
      End;
      pgmulti.TabIndex := 0;
      If DM1.cdsCabLiq.FieldByName('PVSCOBASO').AsString = 'S' Then
      Begin
         rgCobAso.ItemIndex := 0;
         dblcforpag.Text := DM1.cdsExpLiq.FieldByName('FORPAGOID').AsString;
         DM1.cdsFPago.Locate('TIPDESEID', dblcforpag.Text, []);
         If DM1.cdsFPago.FieldByName('FLACOBPRE').AsString = 'B' Then
            xSql := 'SELECT BANCOID, BANCONOM FROM TGE105 WHERE FLAVIGPRE = ''S'' AND CLAUXID = ''B'''
         Else
            xSql := 'SELECT BANCOID, BANCONOM FROM TGE105 WHERE FLAVIGPRE = ''S'' AND CLAUXID = ''C''';
         DM1.cdsBcos.Close;
         DM1.cdsBcos.DataRequest(xSql);
         DM1.cdsBcos.Open;

         dblcBanco.Text := DM1.cdsExpLiq.FieldByName('BANCOID').AsString;

         xSql := 'SELECT A.AGENBCOID, A.AGENBCODES, B.DPTODES FROM COB102 A, APO158 B WHERE A.DPTOID = B.DPTOID(+) AND A.BANCOID = ' + QuotedStr(dblcBanco.Text)
            + ' ORDER BY DPTODES, AGENBCODES';
         DM1.cdsAgBco.Close;
         DM1.cdsAgBco.DataRequest(xSql);
         DM1.cdsAgBco.Open;  

         dblcagegir.Text := DM1.cdsExpLiq.FieldByName('AGENBCOID').AsString;
         measoncta.Text := DM1.cdsExpLiq.FieldByName('ASONCTA').AsString;
      End
      Else
      Begin
         rgCobAso.ItemIndex := 1;
      End;
   End;
   If dbltipbenef.Text = '01' Then
   Begin
      lblfacinv.Visible := False;
      dbdtpfacinv.Visible := False;
      dbdtpfacinv.Text := '';
   End;
   If dbltipbenef.Text = '02' Then
   Begin
      lblfacinv.Visible := True;
      lblfacinv.Caption := 'Fecha de fallecimiento :';
      dbdtpfacinv.Visible := True;
      rgCobAso.ItemIndex := 1;
      rgCobAso.Enabled := False;
   End;
   If dbltipbenef.Text = '03' Then
   Begin
      lblfacinv.Visible := True;
      lblfacinv.Caption := 'Fecha de invalidez :';
      dbdtpfacinv.Visible := True;
   End;
   If dbltipbenef.Text <> '02' Then
   Begin
      pgmulti.TabIndex := 0;
   End;

  xSql := 'SELECT count(1) REGISTROS FROM COB_FSC_DEUDA_FSC_CAB WHERE ASOID = '+QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString)+ ' AND ID_EST_FSC NOT IN (''04'',''13'')';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  meapenomsol.Text     := DM1.cdsExpLiq.FieldByName('APENOMSOL').AsString;
  meDNIsol.Text        := DM1.cdsExpLiq.FieldByName('DNISOL').AsString;
  mevinparentesco.Text := DM1.cdsExpLiq.FieldByName('VINPARSOL').AsString;
  If DM1.cdsExpLiq.FieldByName('FORSOLBEN').AsString = 'S' Then rgforsolben.ItemIndex := 0;
  If DM1.cdsExpLiq.FieldByName('FORSOLBEN').AsString = 'O' Then rgforsolben.ItemIndex := 1;
  CboCausaCese.FG_IR_REGISTRO_CODIGO(DM1.cdsExpLiq.FieldByName('TIPBENEF').AsString, DM1.cdsExpLiq.FieldByName('CODCAUCES').AsString);
  DBDTPfecrecexp.Date := DM1.cdsExpLiq.FieldByName('FECRECEXP').AsDateTime;
End;

Procedure TFModExpben.rgCobAsoClick(Sender: TObject);
Begin
   If rgCobAso.ItemIndex = 0 Then
   Begin
      dblcBanco.Visible := true;
      lblbanco.Visible := true;
      pnlbanco.Visible := true;
      lblforpag.Visible := true;
      dblcforpag.Visible := true;
      pnlforpag.Visible := true;
      dblcforpag.Enabled := True;
      If dblcforpag.Text = '05' Then
      Begin
         lblagegir.Visible := True;
         dblcagegir.Visible := True;
         pnlagegir.Visible := True;
      End;
      If dblcforpag.Text = '06' Then
      Begin
         lblasoncta.Visible := True;
         pnlasoncta.Visible := True;
      End;
   End
   Else
   Begin
      dblcBanco.Visible := false;
      lblbanco.Visible := false;
      pnlbanco.Visible := false;
      lblforpag.Visible := false;
      dblcforpag.Visible := false;
      pnlforpag.Visible := false;
      lblagegir.Visible := false;
      dblcagegir.Visible := false;
      pnlagegir.Visible := false;
      lblasoncta.Visible := false;
      pnlasoncta.Visible := false;
   End;
End;

Procedure TFModExpben.dblcdBancoidChange(Sender: TObject);
Begin
   If DM1.cdsTipBenef.Locate('TIPBENEF', dbltipbenef.Text, []) Then
      metipbenef.Text := DM1.cdsTipBenef.FieldByName('BENEFDES').AsString
   Else
   Begin
      If Length(dbltipbenef.Text) <> 2 Then
      Begin
         Beep;
         dbltipbenef.Text := '';
      End;
   End;
End;

Procedure TFModExpben.dbltipbenefChange(Sender: TObject);
Begin
   If DM1.cdsTipBenef.Active = False Then Exit;
   CboCausaCese.FG_CARGA_DATOS(dbltipbenef.Text);
   If Length(dbltipbenef.Text) = 2 Then
   Begin
      If DM1.cdsTipBenef.Locate('TIPBENEF', dbltipbenef.Text, []) Then
      Begin
         metipbenef.Text := DM1.cdsTipBenef.FieldByName('BENEFDES').AsString;
      End
      Else
      Begin
         MessageDlg('Código no Válido', mtInformation, [mbOk], 0);
         dbltipbenef.Text := '';
         metipbenef.Text := '';
      End;
   End;
   If (dbltipbenef.Text = '01') Or (dbltipbenef.Text = '03') Then rgCobAso.Enabled := True;
   If dbltipbenef.Text = '01' Then
   Begin
      lblfacinv.Visible := False;
      dbdtpfacinv.Visible := False;
      dbdtpfacinv.Text := '';
   End;
   If dbltipbenef.Text = '02' Then
   Begin
      lblfacinv.Visible := True;
      lblfacinv.Caption := 'Fecha de fallecimiento :';
      dbdtpfacinv.Visible := True;
      Exit;
   End;
   If dbltipbenef.Text = '03' Then
   Begin
      lblfacinv.Visible := True;
      lblfacinv.Caption := 'Fecha de invalidez :';
      dbdtpfacinv.Visible := True;
      Exit;
   End;
End;

Procedure TFModExpben.dblcDeporiChange(Sender: TObject);
Var
   xSql: String;
Begin
   If dblcdptoid.Text = '' Then
   Begin
      medptodes.Text := '';
      dblccodofi.Text := '';
      meofides.Text := '';
   End;
   If Length(dblcdptoid.Text) = 2 Then
   Begin
      If DM1.cdsDpto.Locate('DPTOID', dblcdptoid.Text, []) Then
      Begin
         medptodes.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
         xSql := 'SELECT OFDESID, OFDESNOM FROM APO110 WHERE DPTOID = '+QuotedStr(dblcdptoid.Text)+' ORDER BY OFDESID';
         DM1.cdsOfDes.Close;
         DM1.cdsOfDes.DataRequest(xSql);
         DM1.cdsOfDes.Open;
         dblccodofi.Selected.Clear;
         dblccodofi.Selected.Add('OFDESID'#9'2'#9'Código'#9#9);
         dblccodofi.Selected.Add('OFDESNOM'#9'35'#9'Oficina'#9#9);
      End
      Else
      Begin
         MessageDlg('Código no Válido', mtInformation, [mbOk], 0);
         dblcdptoid.Text := '';
         medptodes.Text := '';
         dblccodofi.Text := '';
         meofides.Text := '';
         Exit;
      End;
   End;
End;

Procedure TFModExpben.dblcBancoChange(Sender: TObject);
Begin
   If Trim(dblcBanco.Text) = '' Then
   Begin
      dblcBanco.Text := '';
      mebancodes.Text := '';
   End;
   If Length(dblcBanco.Text) = 2 Then
   Begin
      If DM1.cdsBcos.Locate('BANCOID', dblcBanco.Text, []) Then
      Begin
         mebancodes.Text := DM1.cdsBcos.FieldByName('BANCONOM').AsString;
      End
      Else
      Begin
         MessageDlg('Código no Válido', mtInformation, [mbOk], 0);
         dblcBanco.Text := '';
         mebancodes.Text := '';
      End;
   End;
End;

Procedure TFModExpben.dblcagegirChange(Sender: TObject);
Var
   xSql: String;
Begin
   If dblcforpag.Text = '05' Then
   Begin
      If dblcagegir.Text = '' Then meagengir.Text := '';
      If Length(dblcagegir.Text) = 8 Then
      Begin

         If DM1.cdsAgBco.Locate('AGENBCOID', dblcagegir.Text, []) Then
         Begin
            meagengir.Text := DM1.cdsAgBco.FieldByName('AGENBCODES').AsString;
         End
         Else
         Begin
            MessageDlg('Código no Válido', mtInformation, [mbOk], 0);
            dblcagegir.Text := '';
            meagengir.Text := '';
         End;
      End;
   End;
End;

Procedure TFModExpben.dblcagegirExit(Sender: TObject);
Var
   xSql: String;
Begin
   If Trim(dblcagegir.Text) <> '' Then
   Begin
      xSql := 'SELECT bancoid, agenbcoid, agenbcodes, agenbcoabr, tipagenid, dptoid, provid, zipid, ubigeoid, usuario, freg, hreg FROM COB102 WHERE AGENBCOID = ' + QuotedStr(dblcagegir.Text);
      If DM1.verificaexiste(xSql) = False Then
      Begin
         MessageDlg('Código de agencia no válida', mtInformation, [mbOk], 0);
         dblcagegir.Text := '';
         Exit;
      End;
   End;
End;

Procedure TFModExpben.btncerrarClick(Sender: TObject);
Begin
   FModExpben.Close;
End;

Procedure TFModExpben.deshabilita;
Begin
   rgtipret.Enabled := False;
   meAsocodmod.Enabled := False;
   meAsoDocNum.Enabled := False;
   meAsoApeNomDni.Enabled := False;
   meUseid.Enabled := False;
   meUsenom.Enabled := False;
   meUpagoid.Enabled := False;
   meUpagonom.Enabled := False;
   meUproid.Enabled := False;
   meUpronom.Enabled := False;
   meAsodir.Enabled := False;
   meAsozipdes.Enabled := False;
   meAsodeslab.Enabled := False;
   meAsodirlab.Enabled := False;
   meAsozipdeslab.Enabled := False;
   dbltipbenef.Enabled := False;
   dblcdptoid.Enabled := False;
   rgCobAso.Enabled := False;
   dblcforpag.Enabled := False;
   dblcBanco.Enabled := False;
   dblcagegir.Enabled := False;
   measoncta.Enabled := False;
   menumresces.Enabled := False;
   dbdtpfecces.Enabled := False;
   meanoultapo.Enabled := False;
   memesultapo.Enabled := False;
   dbdtpfacinv.Enabled := False;
   meapenomsol.Enabled     := False;
   meDNIsol.Enabled        := False;
   mevinparentesco.Enabled := False;
   rgforsolben.Enabled := False;
   DBDTPfecrecexp.Enabled := False;
   dblccodofi.Enabled := False;
End;

Procedure TFModExpben.habilita;
Begin
   rgtipret.Enabled    := True;
   dbltipbenef.Enabled := True;
   dblcdptoid.Enabled := True;
   dbdtpfacinv.Enabled := true;

   If (dbltipbenef.Text = '01') Or (dbltipbenef.Text = '03') Then
      rgCobAso.Enabled := True
   Else
      rgCobAso.Enabled := False;

   dblcforpag.Enabled := true;
   dblcBanco.Enabled := true;
   dblcagegir.Enabled := true;
   measoncta.Enabled := true;
   menumresces.Enabled := true;
   dbdtpfecces.Enabled := true;
   meanoultapo.Enabled := true;
   memesultapo.Enabled := true;

   meapenomsol.Enabled     := True;
   meDNIsol.Enabled        := True;
   mevinparentesco.Enabled := True;

   rgforsolben.Enabled := True;
   DBDTPfecrecexp.Enabled := True;
   dblccodofi.Enabled := True;


End;

Procedure TFModExpben.habilitaModFam;
Begin
   rgtipret.Enabled    := False;
   meAsocodmod.Enabled := False;
   meAsoDocNum.Enabled := False;
   meAsoApeNomDni.Enabled := False;
   meUseid.Enabled    := False;
   meUsenom.Enabled   := False;
   meUpagoid.Enabled  := False;
   meUpagonom.Enabled := False;
   meUproid.Enabled   := False;
   meUpronom.Enabled  := False;
   meAsodir.Enabled   := False;
   meAsozipdes.Enabled := False;
   meAsodeslab.Enabled := False;
   meAsodirlab.Enabled := False;
   meAsozipdeslab.Enabled := False;
   dbltipbenef.Enabled := False;
   dblcdptoid.Enabled := False;

   rgCobAso.Enabled   := True;
   dblcforpag.Enabled := True;
   dblcBanco.Enabled  := True;

   dblcagegir.Enabled := False;
   measoncta.Enabled := False;
   menumresces.Enabled := False;
   dbdtpfecces.Enabled := False;
   meanoultapo.Enabled := False;
   memesultapo.Enabled := False;
   dbdtpfacinv.Enabled := False;
   meapenomsol.Enabled     := False;
   meDNIsol.Enabled        := False;
   mevinparentesco.Enabled := False;

   rgforsolben.Enabled := False;
End;

Function TFModExpben.chksolicitud: Boolean;
Begin
   If dbltipbenef.Text = '' Then
   Begin
      MessageDlg('Ingrese el tipo de beneficio', mtInformation, [mbOk], 0);
      Result := False;
      Exit;
   End;
   If dblcdptoid.Text = '' Then
   Begin
      MessageDlg('Ingrese el departamento de origen del expediente', mtInformation, [mbOk], 0);
      Result := False;
      Exit;
   End;

   If dbltipbenef.Text = '01' Then
   Begin
      dbdtpfacinv.Text := '';
   End;
   //Verificar en el caso que sea por fallecimiento
   If dbltipbenef.Text = '02' Then
   Begin
      If dbdtpfacinv.Text = '' Then
      Begin
         MessageDlg('Ingrese la fecha de fallecimiento', mtInformation, [mbOk], 0);
         Result := False;
         Exit;
      End;
   End;
   //Verificar en el caso que sea por invalidez
   If dbltipbenef.Text = '03' Then
   Begin
      If dbdtpfacinv.Text = '' Then
      Begin
         MessageDlg('Ingrese la fecha de invalidez', mtInformation, [mbOk], 0);
         Result := false;
         Exit;
      End;
   End;
   //Datos personales del asociado
   //Verificando si se ha seleccionado al asociado
   If meAsocodmod.Text = '' Then
   Begin
      MessageDlg('Seleccione el asociado', mtInformation, [mbOk], 0);
      Result := False;
      Exit;
   End;
   //Verificando datos del asociado
   If meAsoApeNomDni.Text = '' Then
   Begin
      MessageDlg('Ingrese los apellidos y nombre(s) del cesante ', mtInformation, [mbOk], 0);
      Result := False;
      Exit;
   End;
   //Verificando DNI
   If meAsoDocNum.Text = '' Then
   Begin
      MessageDlg('Ingrese el número de DNI del cesante', mtInformation, [mbOk], 0);
      Result := False;
      Exit;
   End;
   //Verificando UGEL
   If meUseid.Text = '' Then
   Begin
      MessageDlg('Ingrese los datos de la UGEL del asociado', mtInformation, [mbOk], 0);
      Result := False;
      Exit;
   End;
   //Verificando UPAGOID
   If meUpagoid.Text = '' Then
   Begin
      MessageDlg('Ingrese los datos de la unidad de pago del asociado', mtInformation, [mbOk], 0);
      Result := False;
      Exit;
   End;
   //Verificando UPROID
   If meUproid.Text = '' Then
   Begin
      MessageDlg('Ingrese los datos de la unidad de proceso del asociado', mtInformation, [mbOk], 0);
      Result := False;
      Exit;
   End;
   // Dirección domiciliaria
   If meAsodir.Text = '' Then
   Begin
      MessageDlg(' Actualice la dirección del asociado ', mtInformation, [mbOk], 0);
      Result := False;
      Exit;
   End;
   // Ubigeo de la dirección del asociado
   If meAsozipdes.Text = '' Then
   Begin
      MessageDlg(' Actualice el ubigeo de la dirección del asociado ', mtInformation, [mbOk], 0);
      Result := False;
      Exit;
   End;
   // Resoluciones del asociado
   //Verifica el numero de resolución de nombramiento
   If menumresnom.Text = '' Then
   Begin
      MessageDlg('Ingrese el número de resolución de nombramiento', mtInformation, [mbOk], 0);
      pgmulti.TabIndex := 1;
      Result := False;
      Exit;
   End;
   //Verifica fecha de resolución de nombramiento
   If mefecresnom.Text = '' Then
   Begin
      MessageDlg('Ingrese la fecha de resolución de nombramiento', mtInformation, [mbOk], 0);
      pgmulti.TabIndex := 1;
      Result := False;
      Exit;
   End;
   //Verifica numero de resolución de cese
   If menumresces.Text = '' Then
   Begin
      MessageDlg('Ingrese el número de resolución de cese', mtInformation, [mbOk], 0);
      pgmulti.TabIndex := 1;
      Result := False;
      Exit;
   End;
   //Verifica fecha de resolución de cese
   If dbdtpfecces.Text = '' Then
   Begin
      MessageDlg('Ingrese la fecha de resolución de cese', mtInformation, [mbOk], 0);
      pgmulti.TabIndex := 1;
      Result := False;
      Exit;
   End;
   //verifica si fecha de cese es menor a la fecha de nombramiento
   If dbdtpfecces.Date < StrToDate(mefecresnom.Text) Then
   Begin
      MessageDlg('Fecha de resolución de cese es menor a la fecha de resolución de nombramiento', mtInformation, [mbOk], 0);
      pgmulti.TabIndex := 1;
      Result := False;
      Exit;
   End;
   //Verificando si cobra el asociado
   pgmulti.TabIndex := 0;
   If rgCobAso.ItemIndex = 0 Then
   Begin
   //Verificando si ingreso la forma de pago
      If dblcforpag.text = '' Then
      Begin
         MessageDlg('Ingrese la forma de pago', mtInformation, [mbOk], 0);
         Result := false;
         Exit;
      End;
      //Si es cheque
      If dblcforpag.text = '01' Then
      Begin
         If dblcBanco.Text = '' Then
         Begin
            MessageDlg('Ingrese el banco', mtInformation, [mbOk], 0);
            Result := False;
            Exit;
         End;
         dblcagegir.Text := '';
         meagengir.Text := '';
         measoncta.Text := '';
      End;
      //Si es giros a agencias
      If dblcforpag.text = '05' Then
      Begin
         If dblcBanco.Text = '' Then
         Begin
            MessageDlg('Ingrese el banco', mtInformation, [mbOk], 0);
            Result := False;
            Exit;
         End;
         If dblcagegir.Text = '' Then
         Begin
            MessageDlg('Ingrese la agencia del banco', mtInformation, [mbOk], 0);
            Result := False;
            Exit;
         End;
         measoncta.Text := '';
      End;
    //Si es abono en cuenta
      If dblcforpag.text = '06' Then
      Begin
      // Verificando si se ingreo el banco
         If dblcBanco.Text = '' Then
         Begin
            MessageDlg('Ingrese el banco', mtInformation, [mbOk], 0);
            Result := False;
            Exit;
         End;
      // verificando que exista cuenta
         If meAsoncta.Text = '' Then
         Begin
            MessageDlg('Ingrese el número de la cuenta del banco', mtInformation, [mbOk], 0);
            Result := False;
            Exit;
         End;
         dblcagegir.Text := '';
         meagengir.Text := '';
      End;
    //Si es abono en cuenta de ahorros
      If dblcforpag.text = '11' Then
      Begin
         If dblcBanco.Text = '' Then
         Begin
            MessageDlg('Ingrese el banco', mtInformation, [mbOk], 0);
            Result := False;
            Exit;
         End;
         dblcagegir.Text := '';
         meagengir.Text := '';
         measoncta.Text := '';
      End;
   End;
  // Revisando ultimos aportes
   If Copy(dbdtpfecces.Text, 7, 4) + Copy(dbdtpfecces.Text, 4, 2) < '199701' Then
   Begin
      meanoultapo.Text := Copy(dbdtpfecces.Text, 7, 4);
      memesultapo.Text := Copy(dbdtpfecces.Text, 4, 2);
   End
   Else
   Begin
      If Length(trim(meanoultapo.Text)) <> 4 Then
      Begin
         MessageDlg('Existe una inconsistencia en el año del ultimo aporte', mtInformation, [mbOk], 0);
         pgmulti.TabIndex := 2;
         Result := False;
         Exit;
      End;
      If StrToInt(meanoultapo.Text) > StrToInt(Copy(DateToStr(Date), 7, 4)) Then
      Begin
         MessageDlg('Existe una inconsistencia en el año del ultimo aporte.' + #13 + 'Año del ultimo aporte mayor al año actual', mtInformation, [mbOk], 0);
         pgmulti.TabIndex := 2;
         Result := False;
         Exit;
      End;
      If Length(trim(memesultapo.Text)) <> 2 Then
      Begin
         MessageDlg('Existe una inconsistencia en el mes del ultimo aporte', mtInformation, [mbOk], 0);
         pgmulti.TabIndex := 2;
         Result := False;
         Exit;
      End;
      If (StrToInt(memesultapo.Text) < 1) Or (StrToInt(memesultapo.Text) > 12) Then
      Begin
         MessageDlg('El rango de los meses deben estar entre 1 y 12', mtInformation, [mbOk], 0);
         pgmulti.TabIndex := 2;
         Result := False;
         Exit;
      End;
   End;
   Result := True;
End;

Procedure TFModExpben.llenaredit;
Var
   xtexto, xSql: String;
Begin
   xSql := 'SELECT B.ESTAPRDES FROM ASO_FAC_GES_CAB A, ASO_FAC_GES_DET B WHERE SUBSTR(A.NUMMEM,4,11) = '+QuotedStr('EXP'+DM1.cdsExpLiq.FieldByName('PVSEXPNRO').AsString)
   +' AND A.IDEGESFAL = B.IDEGESFAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('ESTAPRDES').AsString = 'POR APLICAR' Then xtexto := 'Los créditos han sido transferidos al área de cobranzas para la evaluación de la aplicación del FDD.';
   If DM1.cdsQry.FieldByName('ESTAPRDES').AsString = 'APLICADO'    Then xtexto := 'Los créditos han sido aplicados al FDD.';
   If DM1.cdsQry.FieldByName('ESTAPRDES').AsString = 'NO APLICA'   Then xtexto := 'Los créditos no pueden ser aplicados al FDD.';
   redit.Color := clMoneyGreen;
   redit.Font.Style := [fsbold];
   redit.Lines.Text := xtexto;
   pnlobservacion.Visible := True;
   // Mensaje para las observaciones. Revisando si ya fue liquidado
   redit.Lines.Clear;
   If (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '02') Or (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '06') Then
   Begin
      redit.Color := clMoneyGreen;
      redit.Font.Style := [fsbold];
      redit.Lines.Text := 'Expediente ya cuenta con liquidación.';
      pnlobservacion.Visible := True;
   End
   Else
   Begin
      If (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '01') Then
      Begin
         redit.Color := clMoneyGreen;
         redit.Font.Style := [fsbold];
         redit.Lines.Text := 'Expediente en trámite';
         pnlobservacion.Visible := True;
      End;
      If (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '05') Then
      Begin
         redit.Color := clMoneyGreen;
         redit.Font.Style := [fsbold];
         redit.Lines.Text := 'Expediente reingresante en trámite';
         pnlobservacion.Visible := True;
      End;
      xSql := 'SELECT ASOID, COUNT(1) CUENTA FROM PVS302 WHERE ASOID = '+QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString)+' AND DSGESTAD NOT IN ''13'' GROUP BY ASOID';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         redit.Color := clMoneyGreen;
         redit.Font.Style := [fsbold];
         redit.Lines.Text := redit.Lines.Text + 'Asociado cuenta con ' + DM1.cdsQry.FieldByName('CUENTA').AsString + ' carta(s) de designación'#13#13;
      End;
      // revisando si tiene retención judicial
      xSql := 'SELECT '
      +' ciaid, asoid, rtjcorr, rtjtdem, rtjporc, rtjimpor, rtjfpoim, rtjapepat, rtjapemat, rtjnombr, rtjgirar, rtjdptoid, rtjfrec, rtjnofic,'
      +' rtjobs, rtjestad, usuario, freg, hreg, rtjjuzg, rtjnro, forpagoid, bancoid, agenbcoid, cueaho, pvslbennr, anulado, asoapenomdni,'
      +' apenomben, tipdocben, numdocben, codotrdocide, numotrdocide'
      +' FROM PVS305 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         redit.Color := clMoneyGreen;
         redit.Font.Style := [fsbold];
         redit.Lines.Text := redit.Lines.Text + 'Asociado cuenta con retención judicial.'#13#13;
      End;
      If Length(Trim(redit.Lines.Text)) > 0 Then
      Begin
         pnlobservacion.Visible := True;
      End;
   End;
End;

Procedure TFModExpben.dblcdptoidChange(Sender: TObject);
Var
   xSql: String;
Begin
   If dblcdptoid.Text = '' Then
   Begin
      medptodes.Text := '';
      dblccodofi.Text := '';
      meofides.Text := '';
   End;
   If Length(dblcdptoid.Text) = 2 Then
   Begin
      If DM1.cdsDpto.Locate('DPTOID', dblcdptoid.Text, []) Then
      Begin
         medptodes.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
         xSql := 'SELECT OFDESID, OFDESNOM FROM APO110 WHERE DPTOID = '+QuotedStr(dblcdptoid.Text);
         DM1.cdsOfDes.Close;
         DM1.cdsOfDes.DataRequest(xSql);
         DM1.cdsOfDes.Open;
         dblccodofi.Selected.Clear;
         dblccodofi.Selected.Add('OFDESID'#9'2'#9'Código'#9#9);
         dblccodofi.Selected.Add('OFDESNOM'#9'35'#9'Oficina'#9#9);
      End
      Else
      Begin
         MessageDlg('Código no Válido', mtInformation, [mbOk], 0);
         dblcdptoid.Text := '';
         medptodes.Text := '';
         Exit;
      End;
   End;
End;

Procedure TFModExpben.dbdtpfacinvExit(Sender: TObject);
Begin
   If dbdtpfacinv.Enabled = True Then
   Begin
      If dbltipbenef.Text = '02' Then
      Begin
         If dbdtpfacinv.Text = '' Then
         Begin
            MessageDlg('Ingrese la fecha de fallecimiento', mtInformation, [mbOk], 0);
            Exit;
         End
         Else
         Begin
            Exit;
         End;
      End;

      If dbltipbenef.Text = '03' Then
      Begin
         If dbdtpfacinv.Text = '' Then
         Begin
            MessageDlg('Ingrese la fecha de invalidez', mtInformation, [mbOk], 0);
            Exit;
         End
         Else
         Begin
            pgmulti.TabIndex := 1;
            Exit;
         End;
      End;
      pgmulti.TabIndex := 0;
      Exit;

   End;

End;

Procedure TFModExpben.dblcdptoidExit(Sender: TObject);
Var
   xSql: String;
Begin
   If Trim(dblcdptoid.Text) <> '' Then
   Begin
      xSql := 'SELECT dptoid, dptodes, dptoabr FROM TGE158 WHERE DPTOID = ' + QuotedStr(dblcdptoid.Text);
      If DM1.verificaexiste(xSql) = False Then
      Begin
         MessageDlg('Código de departamento no válida', mtInformation, [mbOk], 0);
         dblcdptoid.Text := '';
         Exit;
      End;
   End;
End;

Procedure TFModExpben.btnliqbenClick(Sender: TObject);
Var
   xSql: String;
Begin
   xSql := 'SELECT '
   +' A.ciaid, A.pvslbennr, A.pvsltipbe, A.pvslfecbe, A.asoid, A.asocodmod, A.asocodaux, A.pvslapnom_xx, A.pvsldni_xx, A.pvsldir_xx, A.pvsldpto_xx, pvslprov_xx,'
   +' A.pvsldist_xx, A.pvslceed_xx, A.pvslcedp_xx, A.pvslcepr_xx, A.pvslcedi_xx, A.pvslupri_xx, A.pvsluprn_xx, A.pvslupai_xx, A.pvslupan_xx, A.pvslusei_xx,'
   +' A.pvslusen_xx, A.pvslnres_xx, A.pvslfres_xx, A.pvslnces_xx, A.pvslfces_xx, A.pvslulap, A.pvsltaap, A.pvslnvou_xx, A.pvslestad, A.forpagoid_xx, A.bancoid_xx,'
   +' A.pvslncta_xx, A.pvsexpnro, pvsldesnm_xx, A.pvsltben_xx, A.pvsltdev_xx, A.pvsltdsc_xx, A.pvslsald_xx, A.pvsltpre_xx, A.pvslsldp_xx, A.pvstinnc_xx,'
   +' A.pvstpran_xx, A.pvslobs_xx, A.usuario, A.freg, A.hreg, A.pvslnofc_xx, A.pvsestliq, A.pvslfpago_xx, A.agenbcoid_xx, A.pvsltcre_xx, A.pvsfanul, A.pvsusuanul,'
   +' A.pvsmotanul, A.cntanomm, A.tipocont, A.cntflag, A.pvslliqant_xx, A.pvscobaso, A.asoapenomdni, A.tipdoccod, A.asodocnum, A.useid, A.upagoid, A.uproid, A.asodir,'
   +' A.zipid, A.asodeslab, A.asodirlab, A.asodstlabid, A.asoresnom, A.asofresnom, A.asorescese, A.asofrescese, A.pvsultapo_xx, A.asoncta, A.monliqben, A.mondes, A.mondev,'
   +' A.monpag, A.asodni, A.asotelf1, A.codotrdocide, A.numotrdocide, A.autdesapo, A.fecautdesapo, A.pvstipret, A.numopeban, A.fecopeban, A.numbenori, A.diferido, A.fecdifliq,'

   +' B.FORSOLBEN FROM PVS306 A, PVS301 B WHERE A.PVSLBENNR = ' + QuotedStr(DM1.cdsExpLiq.FieldByName('PVSLBENNR').AsString)
   +' AND A.ASOID = B.ASOID(+) AND A.PVSLBENNR = B.PVSLBENNR(+)';
   DM1.cdsCabLiq.Close;
   DM1.cdsCabLiq.DataRequest(xSql);
   DM1.cdsCabLiq.Open;
   Try
      FLiquidacionBeneficio := TFLiquidacionBeneficio.create(Self);
      FLiquidacionBeneficio.ShowModal;
   Finally
      FLiquidacionBeneficio.Free;
   End;
End;

Procedure TFModExpben.dbdtpfeccesExit(Sender: TObject);
Begin
   If (date <= dbdtpfecces.Date) Then
   Begin
      MessageDlg('Fecha de cese es menor o igual a la fecha actual', mtInformation, [mbOk], 0);
      dbdtpfecces.Text := '';
      Exit;
   End;
End;

Procedure TFModExpben.dbltipbenefExit(Sender: TObject);
Var
   xSql: String;
Begin
   If Trim(dbltipbenef.Text) <> '' Then
   Begin
      xSql := 'SELECT  ciaid, tipbenef, benefdes, benefabr, usuario, freg, hreg, tb, cuentaid FROM TGE186 WHERE TIPBENEF = ' + QuotedStr(dbltipbenef.Text);
      If DM1.verificaexiste(xSql) = False Then
      Begin
         MessageDlg('Tipo de beneficio no válido', mtInformation, [mbOk], 0);
         dbltipbenef.Text := '';
         Exit;
      End;
   End;
   If dbltipbenef.Enabled = True Then
   Begin
      If dbltipbenef.Text = '01' Then
      Begin
         rgtipret.Visible := True;
         lblfacinv.Visible := False;
         dbdtpfacinv.Visible := False;
         dbdtpfacinv.Text := '';
         If rgCobAso.ItemIndex = -1 Then
         Begin
            pgmulti.TabIndex := 0;
            rgCobAso.ItemIndex := 0;
         End;
         Exit;
      End;
      If dbltipbenef.Text = '02' Then
      Begin
         rgtipret.Visible := False;
         lblfacinv.Visible := True;
         lblfacinv.Caption := 'Fecha de fallecimiento :';
         dbdtpfacinv.Visible := True;
         pgmulti.TabIndex := 0;
         rgCobAso.Enabled := True;
         rgCobAso.ItemIndex := 1;
         rgCobAso.Enabled := False;
         Exit;
      End;
      If dbltipbenef.Text = '03' Then
      Begin
         rgtipret.Visible := False;
         lblfacinv.Visible := True;
         lblfacinv.Caption := 'Fecha de invalidez :';
         dbdtpfacinv.Visible := True;
         pgmulti.TabIndex := 0;
         rgCobAso.Enabled := True;
         Exit;
      End;
   End;
End;

Procedure TFModExpben.dblcBancoExit(Sender: TObject);
Var
   xSql: String;
Begin
   If Trim(dblcBanco.Text) <> '' Then
   Begin
      xSql := 'SELECT '
      +' bancoabr, bancoid, banconom, bancopccado, bancopccaso, bancopcfedo, bancopcfeso, bancopcledo, bancopcleso, bancopcprdo, bancopcprso,'
      +' bancopfcado, bancopfcaso, bancopffedo, bancopffeso, bancopfledo, bancopfleso, bancopfprdo, bancopfprso, bancoplledo, bancoplleso,'
      +' bcotipcta, cuentaid, remesaid, ctadifp, ctadifg, cptodifp, cptodifg, tmonid, cptoid, bancoprf, ccosdif, clauxid, auxid, equbanofi,'
      +' flavigpre, flahispre, flavigcob, ccbcoidpre, bcodir, bcosec, monmaxcie, flacajchi'
      +' FROM TGE105 WHERE BANCOID = ' + QuotedStr(dblcBanco.Text);
      If DM1.verificaexiste(xSql) = False Then
      Begin
         MessageDlg('Código de banco no válido', mtInformation, [mbOk], 0);
         dblcBanco.Text := '';
         Exit;
      End;
   End;
End;

Procedure TFModExpben.Timer1Timer(Sender: TObject);
Begin
   If redit.Visible = True Then
      redit.Visible := False
   Else
      redit.Visible := True;
End;

Procedure TFModExpben.timerobsevacionesTimer(Sender: TObject);
Begin
   If redit.Visible = True Then
      redit.Visible := False
   Else
      redit.Visible := True;
End;

Procedure TFModExpben.ImgFotoConfirmeDblClick(Sender: TObject);
Var xSql:String;
begin

   xSql := 'SELECT DNI, NUMLIB, APEPAT, APEMAT, NOMBRE, OTRDOC, LUGNAC, NOMPAD, NOMMAD, FECNAC, ESTATURA, '
      + '       SEXO, ESTCIV, GRAINS, LUGDOM, RESTRICCIONES, FECINS, STAVOT, FECEMIDOC, DIRECCION, '
      + '       FOTO, FIRMA, USUACT, FECACT, OFIACT, EQUUSU, UNICO, '
      + '       case when FLAG_EXPIRA IS NULL THEN '''' '
      + '            when FLAG_EXPIRA=''V'' THEN ''VIGENTE'' '
      + '            when FLAG_EXPIRA=''C'' THEN ''CADUCADO'' '
      + '       else ''INDEFINIDO'' end FLAG_EXPIRA '
      + '  FROM INF_RENIEC_CAP '
      + ' WHERE DNI=''' + TRIM(DM1.cdsAsociado.FieldByName('ASODNI').AsString) + '''AND ROWNUM < 2 '
      + ' ORDER BY FECACT DESC ';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(XSQL);
   DM1.cdsReporte.Open;
   If DM1.cdsReporte.RecordCount = 0 Then
   Begin
     MessageDlg('No existen datos de RENIEC para imprimir', mtCustom, [mbOk], 0);
     Exit;
   End;
   ppBDEReniec.DataSource := DM1.dsReporte;
   ppFoto.Picture.Assign(DM1.JPG);
   ppFirma.Picture.Assign(DM1.jpgFirma);
   ppRReniec.Print;
   ppRReniec.Stop;
End;

Procedure TFModExpben.dblcforpagExit(Sender: TObject);
Var
   xSql: String;
Begin
   If DM1.cdsFPago.Locate('TIPDESEID', dblcforpag.Text, []) Then
   Begin
      meforpagodes.Text := DM1.cdsFPago.FieldByName('TIPDESEDES').AsString;
      If DM1.cdsFPago.FieldByName('FLACOBPRE').AsString = 'B' Then
         xSql := 'SELECT BANCOID, BANCONOM FROM TGE105 WHERE FLAVIGPRE = ''S'' AND CLAUXID = ''B'''
      Else
         xSql := 'SELECT BANCOID, BANCONOM FROM TGE105 WHERE FLAVIGPRE = ''S'' AND CLAUXID = ''C''';
      DM1.cdsBcos.Close;
      DM1.cdsBcos.DataRequest(xSql);
      DM1.cdsBcos.Open;
      If (dblcforpag.Text = '01') Or (dblcforpag.Text = '11') Or (dblcforpag.Text = '16') Or (dblcforpag.Text = '19') Then
      Begin
         If dblcforpag.Text <> '19' Then
         Begin
            lblasoncta.Visible := False;
            pnlasoncta.Visible := False;
            meAsoncta.Text := '';
            dblcBanco.Text := '03';
         End
         Else
         Begin
            dblcBanco.Text := '15';
            lblasoncta.Visible := True;
            lblasoncta.Top := 65;
            pnlasoncta.Visible := True;
            pnlasoncta.Top := 65;
            measoncta.Text := DM1.cdsAsociado.FieldByName('ASONCTA').AsString;
            lblasoncta.Top := 54;
            pnlasoncta.Top := 54;
         End;
         lblagegir.Visible := False;
         dblcagegir.Visible := False;
         pnlagegir.Visible := False;
         dblcagegir.Text := '';
      End;
      If dblcforpag.Text = '05' Then
      Begin
         dblcBanco.Text := '04';
         dblcagegir.Selected.Clear;
         dblcagegir.Selected.Add('AGENBCOID'#9'8'#9'Código'#9#9);
         dblcagegir.Selected.Add('AGENBCODES'#9'25'#9'Nombre de Agencia'#9#9);
         dblcagegir.Selected.Add('DPTODES'#9'20'#9'Departamento de Agencia'#9#9);
         xSql := 'SELECT A.AGENBCOID, A.AGENBCODES, B.DPTODES FROM COB102 A, APO158 B WHERE A.DPTOID = B.DPTOID(+) AND A.BANCOID = ' + QuotedStr(dblcBanco.Text)
            + ' ORDER BY DPTODES, AGENBCODES';
         DM1.cdsAgBco.Close;
         DM1.cdsAgBco.DataRequest(xSql);
         DM1.cdsAgBco.Open;
         lblagegir.Visible := True;
         dblcagegir.Visible := True;
         pnlagegir.Visible := True;
         dblcagegir.Text := '';
         meagengir.Text := '';

         lblagegir.Left := 105;
         lblagegir.Top := 68;

         dblcagegir.Left := 194;
         dblcagegir.Top := 68;

         pnlagegir.Left := 265;
         pnlagegir.Top := 68;

         lblasoncta.Visible := False;
         pnlasoncta.Visible := False;
         meAsoncta.Text := '';
      End;
      If dblcforpag.Text = '06' Then
      Begin
         lblagegir.Visible := False;
         dblcagegir.Visible := False;
         pnlagegir.Visible := False;
         dblcagegir.Text := '';
         lblasoncta.Visible := True;
         pnlasoncta.Visible := True;
         lblasoncta.Left := 110;
         lblasoncta.Top := 57;
         pnlasoncta.Left := 274;
         pnlasoncta.Top := 57;
      End;
   End
   Else
   Begin
      If (DM1.cdsExpLiq.FieldByName('GENPORWEB').AsString = 'S') And (Trim(DM1.cdsExpLiq.FieldByName('VERSEDE').AsString)= '') Then Exit;
      MessageDlg('Forma de pago no válida', mtInformation, [mbOk], 0);
      dblcforpag.Text := '';
      Exit;
   End;
End;

procedure TFModExpben.btnnuesegClick(Sender: TObject);
begin
   If (DM1.cdsExpLiq.FieldByName('GENPORWEB').AsString = 'S')  And (DM1.cdsExpLiq.FieldByName('VERSEDE').AsString <> 'S') Then
   Begin
      MessageDlg('Expediente generado por Web. Deben tener flag de verificado por Sede Central.', mtInformation, [mbOk], 0);
      Exit;
   End;
   Try
      FNueSegExp := TFNueSegExp.Create(Self);
      FNueSegExp.ShowModal;
   Finally
      FNueSegExp.Free;
   End;
End;

procedure TFModExpben.dblccodofiChange(Sender: TObject);
begin
  If dblccodofi.Text = '' Then
  Begin
     dblccodofi.Text := '';
     meofides.Text := '';
  End
  Else
     If Length(dblccodofi.Text) = 2 then
        If DM1.cdsOfDes.Locate('OFDESID', dblccodofi.Text , []) Then
           meofides.Text   := DM1.cdsOfDes.FieldByName('OFDESNOM').AsString
        Else
        Begin
           MessageDlg('Código no Válido', mtInformation, [mbOk], 0);
           dblccodofi.Text := '';
           meofides.Text := '';
        End;
end;

procedure TFModExpben.DBDTPfecrecexpExit(Sender: TObject);
begin
   If DBDTPfecrecexp.Date > DM1.FechaSys Then
   Begin
      MessageDlg('Fecha de recepción no puede ser mayor al día de hoy.', mtInformation, [mbOk], 0);
      DBDTPfecrecexp.Text := '';
   End;
end;

procedure TFModExpben.dblcforpagChange(Sender: TObject);
begin
dblcforpagExit(self);
end;

End.
//Final HPC_201702_ASO
