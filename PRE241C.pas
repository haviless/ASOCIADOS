// Inicio Uso Estándares: 01/08/2011
// Unidad               : PRE241C
// Formulario           : FLiquidacionBeneficio
// Fecha de Creación    : 07/06/2017
// Autor                : Jesús Castillo Pampas
// Objetivo             : Formulario de Consulta Liquidación de Beneficios
// Actualizaciones      :
//HPC_201702_ASO        : Creación del Formulario

//Inicio HPC_201702_ASO
//Creación de formulario que muestra los datos de la Liquidación de Beneficios

Unit PRE241C;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, DBGrids, DB,
   DBClient, fcpanel, fcButton, fcImgBtn, fcShapeBtn, Mask, fcLabel,
   ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppDB, ppDBPipe, ppDBBDE,
   ppComm, ppRelatv, ppProd, ppReport, Buttons, ppStrtch, ppSubRpt,
   ppParameter, DBCtrls, ppVar, jpeg, IniFiles, IdBaseComponent,
   IdComponent, IdTCPConnection, IdTCPClient, IdFTP, wwdbdatetimepicker;

Type
   TFLiquidacionBeneficio = Class(TForm)
      Panel1: TPanel;
      Panel2: TPanel;
      Panel3: TPanel;
      Panel5: TPanel;
      lblAsoApeNomDNI: TLabel;
      lblAsoDNI: TLabel;
      lblAsoDir: TLabel;
      lblUbigeoDir: TLabel;
      lblAsoCodMod: TLabel;
      lblCe: TLabel;
      lblUse: TLabel;
      lblUbigeoCe: TLabel;
      lblFecNom: TLabel;
      lblFecCes: TLabel;
      lblUltApo: TLabel;
      lblTotAnoApo: TLabel;
      lblNumResNom: TLabel;
      lblNumResCes: TLabel;
      dbgDetCalBen: TwwDBGrid;
      Panel4: TPanel;
      dbgDetDev: TwwDBGrid;
      Panel6: TPanel;
      dbgDetDes: TwwDBGrid;
      Panel7: TPanel;
      Panel8: TPanel;
      dbgForPag: TwwDBGrid;
      fcSalBen: TfcLabel;
      pprImprimePrevio: TppReport;
      BDEPDetCalLiq: TppBDEPipeline;
      BDEPDetDev: TppBDEPipeline;
      BDEPDetDes: TppBDEPipeline;
      BDEPForPag: TppBDEPipeline;
      BDEPRetJud: TppBDEPipeline;
      BDEPObs: TppBDEPipeline;
      ppParameterList1: TppParameterList;
      pprdesdev: TppReport;
      ppbdepcreditos: TppBDEPipeline;
      ppDetailBand7: TppDetailBand;
      ppbdepnivapo: TppBDEPipeline;
      ppbdepdevapo: TppBDEPipeline;
      srcreditos: TppSubReport;
      ppChildReport9: TppChildReport;
      ppDetailBand8: TppDetailBand;
      ppSummaryBand7: TppSummaryBand;
      ppDBText13: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText36: TppDBText;
      ppLabel67: TppLabel;
      ppShape54: TppShape;
      ppLabel68: TppLabel;
      ppLabel69: TppLabel;
      ppLabel70: TppLabel;
      ppLabel71: TppLabel;
      ppLabel72: TppLabel;
      ppShape55: TppShape;
      ppShape56: TppShape;
      ppShape57: TppShape;
      ppLabel73: TppLabel;
      ppShape58: TppShape;
      ppShape59: TppShape;
      ppLabel76: TppLabel;
      ppLabel75: TppLabel;
      ppDBCalc12: TppDBCalc;
      ppDBCalc13: TppDBCalc;
      ppDBCalc14: TppDBCalc;
      ppLine22: TppLine;
      ppDBCalc15: TppDBCalc;
      ppLabel99: TppLabel;
      ppHeaderBand4: TppHeaderBand;
      ppLine27: TppLine;
      ppTitleBand6: TppTitleBand;
      pnlmenanu: TPanel;
      ppsrdevapo: TppSubReport;
      ppChildReport6: TppChildReport;
      ppLabel86: TppLabel;
      ppShape63: TppShape;
      ppLabel87: TppLabel;
      ppLabel89: TppLabel;
      ppLabel91: TppLabel;
      ppDetailBand13: TppDetailBand;
      ppDBText21: TppDBText;
      ppDBTmes: TppDBText;
      ppDBText23: TppDBText;
      ppSummaryBand13: TppSummaryBand;
      ppLine25: TppLine;
      ppLabel93: TppLabel;
      ppDBCalc17: TppDBCalc;
      ppsrnivapo: TppSubReport;
      ppChildReport5: TppChildReport;
      ppLabel78: TppLabel;
      ppShape60: TppShape;
      ppShape61: TppShape;
      ppLabel79: TppLabel;
      ppShape62: TppShape;
      ppLabel81: TppLabel;
      ppLabel83: TppLabel;
      ppDetailBand9: TppDetailBand;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText20: TppDBText;
      ppSummaryBand9: TppSummaryBand;
      ppLine23: TppLine;
      ppLine24: TppLine;
      ppLabel85: TppLabel;
      ppDBCalc16: TppDBCalc;
      btnImprimePrevio: TBitBtn;
      btncerrar: TBitBtn;
      pnldetalles: TPanel;
      btncerrargrid: TBitBtn;
      stmensaje: TStaticText;
      dbgDetalles: TwwDBGrid;
      ppHeaderBand1: TppHeaderBand;
      pplblLiqBen: TppLabel;
      ppldesben: TppLabel;
      pplfecliq: TppLabel;
      ppLine1: TppLine;
      ppLabel7: TppLabel;
      pplAsoApeNomDni: TppLabel;
      pplAsoDni: TppLabel;
      pplZipDes: TppLabel;
      pplAsoDir: TppLabel;
      pplAsoCodMod: TppLabel;
      pplCentroEducativo: TppLabel;
      pplUse: TppLabel;
      pplUseZip: TppLabel;
      ppShape3: TppShape;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      pplFecNom: TppLabel;
      pplFecCes: TppLabel;
      pplAnoApo: TppLabel;
      pplNumResNoM: TppLabel;
      pplNumResCes: TppLabel;
      pplUltApo: TppLabel;
      ppLine2: TppLine;
      ppLabel17: TppLabel;
      ppShape4: TppShape;
      ppShape7: TppShape;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppShape6: TppShape;
      ppShape5: TppShape;
      ppSummaryBand1: TppSummaryBand;
      ppLine3: TppLine;
      ppLabel18: TppLabel;
      ppShape9: TppShape;
      ppShape8: TppShape;
      ppSRDevoluciones: TppSubReport;
      ppChildRDevolucion: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppLine4: TppLine;
      ppLabel19: TppLabel;
      ppShape10: TppShape;
      ppShape11: TppShape;
      ppDetailBand2: TppDetailBand;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppShape14: TppShape;
      ppShape15: TppShape;
      ppSummaryBand2: TppSummaryBand;
      ppLine5: TppLine;
      ppLabel20: TppLabel;
      ppDBCalc2: TppDBCalc;
      ppShape12: TppShape;
      ppShape13: TppShape;
      ppLabel5: TppLabel;
      ppLabel4: TppLabel;
      pplasotelef: TppLabel;
      SRObs: TppSubReport;
      ppChildReport4: TppChildReport;
      ppTitleBand5: TppTitleBand;
      ppLine10: TppLine;
      ppLabel27: TppLabel;
      ppShape35: TppShape;
      ppShape36: TppShape;
      ppDetailBand6: TppDetailBand;
      ppShape37: TppShape;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      ppShape38: TppShape;
      ppSummaryBand6: TppSummaryBand;
      ppLine12: TppLine;
      ppShape39: TppShape;
      ppShape40: TppShape;
      ppLabel29: TppLabel;
      ppLine13: TppLine;
      ppLabel30: TppLabel;
      ppLine14: TppLine;
      pplblUsuario: TppLabel;
      ppanula: TppLabel;
      pplimppor: TppLabel;
      ppSRRetJud: TppSubReport;
      ppChildReport3: TppChildReport;
      ppTitleBand4: TppTitleBand;
      ppShape29: TppShape;
      ppShape30: TppShape;
      ppDetailBand5: TppDetailBand;
      ppShape31: TppShape;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppShape32: TppShape;
      ppSummaryBand5: TppSummaryBand;
      ppLine11: TppLine;
      ppLabel28: TppLabel;
      ppDBCalc5: TppDBCalc;
      ppShape33: TppShape;
      ppShape34: TppShape;
      ppLabel33: TppLabel;
      SRForPago: TppSubReport;
      ppChildReport2: TppChildReport;
      ppTitleBand3: TppTitleBand;
      ppLine8: TppLine;
      ppLabel23: TppLabel;
      ppShape22: TppShape;
      ppShape23: TppShape;
      ppDetailBand4: TppDetailBand;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppShape24: TppShape;
      ppShape25: TppShape;
      ppSummaryBand4: TppSummaryBand;
      ppLine9: TppLine;
      ppLabel24: TppLabel;
      ppDBCalc4: TppDBCalc;
      ppShape26: TppShape;
      ppShape27: TppShape;
      ppLabel32: TppLabel;
      ppSRDescuentos: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand2: TppTitleBand;
      ppLine6: TppLine;
      ppLabel21: TppLabel;
      ppShape16: TppShape;
      ppShape17: TppShape;
      ppDetailBand3: TppDetailBand;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppShape18: TppShape;
      ppShape19: TppShape;
      ppSummaryBand3: TppSummaryBand;
      ppLine7: TppLine;
      ppLabel22: TppLabel;
      ppDBCalc3: TppDBCalc;
      ppShape20: TppShape;
      ppShape21: TppShape;
      ppShape28: TppShape;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      pplSalDis: TppLabel;
      ppLabel6: TppLabel;
      ppLabel31: TppLabel;
      ImagAso: TppImage;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      IdFTP1: TIdFTP;
      ppSystemVariable1: TppSystemVariable;
      ppLabel37: TppLabel;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppLabel38: TppLabel;
      ppLine15: TppLine;
      ppDBCalc6: TppDBCalc;
      ppDBCalc7: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppLine16: TppLine;
      ppDBCalc9: TppDBCalc;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppDBText22: TppDBText;
      ppLabel41: TppLabel;
      ppLabel42: TppLabel;
      ppShape1: TppShape;
    ppbdepfonsol: TppBDEPipeline;
    ppLine20: TppLine;
    ppSystemVariable3: TppSystemVariable;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    pppvslbennr: TppLabel;
    ppasoapenomdni: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    pppvslfecbe: TppLabel;
    ppLabel96: TppLabel;
    pptipobenabr: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppFooterBand1: TppFooterBand;
    ppTitleBand7: TppTitleBand;
    ppTitleBand9: TppTitleBand;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel50: TppLabel;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine26: TppLine;
    ppLine31: TppLine;
    srFonSol: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand10: TppTitleBand;
    ppDetailBand11: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppDBText29: TppDBText;
    ppShape45: TppShape;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppShape46: TppShape;
    ppLabel54: TppLabel;
    ppShape47: TppShape;
    ppLabel55: TppLabel;
    ppShape48: TppShape;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppLine35: TppLine;
    ppDBCalc11: TppDBCalc;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel74: TppLabel;
    ppLabel77: TppLabel;
    ppLabel80: TppLabel;
    ppLabel82: TppLabel;
    ppLabel84: TppLabel;
    ppDBText24: TppDBText;
    ppDBCalc10: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLabel88: TppLabel;
    ppShape2: TppShape;
    ppLabel90: TppLabel;
    pplregpen: TppLabel;
    pploriexp: TppLabel;
    ppImage1: TppImage;
    ppImage2: TppImage;
    srCCI: TppSubReport;
    ppChildReport7: TppChildReport;
    dbeCCI: TppBDEPipeline;
    ppTitleBand8: TppTitleBand;
    ppDetailBand10: TppDetailBand;
    ppSummaryBand10: TppSummaryBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppShape42: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppLabel61: TppLabel;
    ppLabel92: TppLabel;
    ppLabel100: TppLabel;
    ppLabel102: TppLabel;
    ppDBText27: TppDBText;
    ppShape49: TppShape;
    ppLabel3: TppLabel;
    ppLabel62: TppLabel;
    ppDBText28: TppDBText;
    ppDBCalc19: TppDBCalc;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine32: TppLine;
    ppLabel101: TppLabel;
    ppLabel103: TppLabel;
    ppTotbenAsi: TppLabel;
    ppLine36: TppLine;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLine37: TppLine;
    ppImage3: TppImage;
    ppShape41: TppShape;
    Bevel1: TBevel;
    lblNumLiq: TLabel;
    lblFecLiq: TLabel;
    lblFecDif: TLabel;
    lblDif: TLabel;

      Procedure FormActivate(Sender: TObject);
      Procedure fcShapeBtn1Click(Sender: TObject);
      Procedure dbgDetDevDblClick(Sender: TObject);
      Procedure dbgDetDesDblClick(Sender: TObject);
      Procedure btnImprimePrevioClick(Sender: TObject);
      Procedure btncerrarClick(Sender: TObject);
      Procedure btncerraranulacionClick(Sender: TObject);
      Procedure btncerrargridClick(Sender: TObject);
      Procedure srcreditosPrint(Sender: TObject);
      Procedure ppsrnivapoPrint(Sender: TObject);
      Procedure ppsrdevapoPrint(Sender: TObject);
      Procedure ppDBText8Print(Sender: TObject);
      Procedure ppDBText10Print(Sender: TObject);
      Procedure ppLabel39Print(Sender: TObject);
      procedure ppDBText12Print(Sender: TObject);
      // Se controla impresión de linea en el total de cuenta individual
      procedure ppLine36Print(Sender: TObject);
      procedure bbtnCerrarDifClick(Sender: TObject);

   Private
      sNuevaLiq : String;
      Procedure AnulaPagos(xAsoId, xCreDid, xDocPag, xFrmPag, xFecPag: String);
      Procedure AplicaSaldoPre(xAsoId, xCreDid: String);
      Procedure AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado: String; tCremtoCob: Currency);
      Procedure DistCrono(xAsoId, xCredId, xCreCuota, xCreEstid, xCreEstado, xCrefPag: String; xCremtoCob, xCremToInt, xCremtoExc: Currency);
      Function SumaExceso(xAsoId, xCredId, xCreCuota: String): Currency;
      Procedure repcarabo;
      Procedure BorraFotos;
      Procedure BotonesEstado( bEstado : Boolean );
      Procedure CopiaBeneficio;
      Procedure GrabaDetFamilia;
      Procedure CopiarLiquidacion;
      Procedure ActualizarDetalleLiquidacion;

    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FLiquidacionBeneficio: TFLiquidacionBeneficio;

Implementation


Uses ASODM,Math;


{$R *.dfm}

Procedure TFLiquidacionBeneficio.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin

   sNuevaLiq := 'N';
   pnldetalles.Visible := False;
   // Verificando si la liquidación ya esta anulada  o extornada
   If (DM1.cdsCabLiq.FieldByName('PVSESTLIQ').AsString = '13') Or (DM1.cdsCabLiq.FieldByName('PVSESTLIQ').AsString = '04') Then
   Begin
      pnlmenanu.Visible := True;
   End
   Else
   begin
      pnlmenanu.Visible := False;
   end;

   If DM1.cdsCabLiq.FieldByName('CNTFLAG').AsString = 'S' Then

   Else
   // Llenando registros para la presentación
   lblAsoApeNomDNI.Caption := DM1.cdsCabLiq.FieldByName('ASOAPENOMDNI').AsString;
   lblAsoDNI.Caption := DM1.cdsCabLiq.FieldByName('ASODNI').AsString;
   lblAsoApeNomDNI.Caption := DM1.cdsCabLiq.FieldByName('ASOAPENOMDNI').AsString;
   lblAsoDir.Caption := DM1.cdsCabLiq.FieldByName('ASODIR').AsString;
   If Length(Trim(DM1.cdsCabLiq.FieldByName('ZIPID').AsString)) = 6 Then lblUbigeoDir.Caption := DM1.desubigeo(DM1.cdsCabLiq.FieldByName('ZIPID').AsString);
   lblAsoCodMod.Caption := DM1.cdsCabLiq.FieldByName('ASOCODMOD').AsString;
   lblCe.Caption := DM1.cdsCabLiq.FieldByName('ASODESLAB').AsString;
   If Length(Trim(DM1.cdsCabLiq.FieldByName('ASODSTLABID').AsString)) = 6 Then lblUbigeoCe.Caption := DM1.desubigeo(DM1.cdsCabLiq.FieldByName('ASODSTLABID').AsString);
   lblUse.Caption := DM1.desuse(DM1.cdsCabLiq.FieldByName('USEID').AsString, DM1.cdsCabLiq.FieldByName('UPAGOID').AsString, DM1.cdsCabLiq.FieldByName('UPROID').AsString);
   lblFecNom.Caption := DM1.cdsCabLiq.FieldByName('ASOFRESNOM').AsString;
   lblFecCes.Caption := DM1.cdsCabLiq.FieldByName('ASOFRESCESE').AsString;
   lblNumResNom.Caption := DM1.cdsCabLiq.FieldByName('ASORESNOM').AsString;
   lblNumResCes.Caption := DM1.cdsCabLiq.FieldByName('ASORESCESE').AsString;
   lblUltApo.Caption := DM1.cdsCabLiq.FieldByName('PVSLULAP').AsString;
   lblTotAnoApo.Caption := DM1.cdsCabLiq.FieldByName('PVSLTAAP').AsString;
   lblNumLiq.Caption := Copy(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString,5,10);
   lblFecLiq.Caption := DM1.cdsCabLiq.FieldByName('PVSLFECBE').AsString;

   lblDif.Visible:=False;
   lblFecDif.Visible:=False;
   if DM1.cdsCabLiq.FieldByName('FECDIFLIQ').AsString<>'' then
   begin
      lblDif.Visible:=True;
      lblFecDif.Visible:=True;
      lblFecDif.Caption := DM1.cdsCabLiq.FieldByName('FECDIFLIQ').AsString;
   end;

   If DM1.cdsCabLiq.FieldByName('FORSOLBEN').AsString = 'O' Then pploriexp.Caption := 'ORIGEN : OFICIO INTERNO';
   If DM1.cdsCabLiq.FieldByName('FORSOLBEN').AsString = 'S' Then pploriexp.Caption := 'ORIGEN : SOLICITUD DEL BENEFICIARIO';
   DM1.liquidacionbeneficio := 0;
   xSql := 'SELECT PVSLCONCE, PVSLMONTO, TIPDES FROM PVS307 WHERE PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString) + ' AND PVSLAGRID = ''DET'' ORDER BY PVSLSEC';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   DM1.cdsQry.First;
   DM1.cdsDetCalLiq.Close;
   DM1.cdsDetCalLiq.Open;
   DM1.cdsDetCalLiq.EmptyDataSet;
   While Not DM1.cdsQry.Eof Do
   Begin
      DM1.cdsDetCalLiq.Append;
      DM1.cdsDetCalLiq.FieldByName('DESC').AsString := DM1.cdsQry.FieldByName('PVSLCONCE').AsString;
      DM1.cdsDetCalLiq.FieldByName('MONTO').AsFloat := DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
      // Se actualiza campo de tipo de conceptos en el detalle de beneficios
      DM1.cdsDetCalLiq.FieldByName('TIPDES').AsString := DM1.cdsQry.FieldByName('TIPDES').AsString;
      DM1.cdsDetCalLiq.Post;
      // Inserta valoe a la variable "liquidaciónbeneficio"
      If DM1.cdsQry.FieldByName('TIPDES').AsString <> 'TC' Then
         DM1.liquidacionbeneficio := DM1.liquidacionbeneficio + DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
      DM1.cdsQry.Next;
   End;
   If DM1.cdsDetCalLiq.RecordCount = 0 Then
   Begin
      DM1.cdsDetCalLiq.Append;
      DM1.cdsDetCalLiq.FieldByName('DESC').AsString := 'Error no existe información de calculo de beneficio';
      DM1.cdsDetCalLiq.Post;
   End;
   dbgDetCalBen.ColumnByName('DESC').FooterValue := 'TOTAL BENEFICIO ASIGNADO '
      + DM1.DevuelveValor('TGE186', 'BENEFDES', 'TIPBENEF', DM1.cdsCabLiq.FieldByName('PVSLTIPBE').AsString);
   dbgDetCalBen.ColumnByName('MONTO').FooterValue := FormatFloat('###,###.#0', DM1.liquidacionbeneficio);
   // Detalle de Devoluciones
   DM1.montoDevolucion := 0;
   xSql := 'SELECT PVSLCONCE, PVSLMONTO  FROM PVS307 WHERE PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
      + ' AND PVSLAGRID = ''DEV'' ORDER BY PVSLSEC';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   DM1.cdsQry.First;
   DM1.cdsDetDev.Close;
   DM1.cdsDetDev.Open;
   DM1.cdsDetDev.EmptyDataSet;
   While Not DM1.cdsQry.Eof Do
   Begin
      DM1.cdsDetDev.Append;
      DM1.cdsDetDev.FieldByName('DESC').AsString := DM1.cdsQry.FieldByName('PVSLCONCE').AsString;
      DM1.cdsDetDev.FieldByName('MONTO').AsFloat := DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
      DM1.cdsDetDev.Post;
      DM1.montoDevolucion := DM1.montoDevolucion + DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
      DM1.cdsQry.Next;
   End;
   If DM1.cdsDetDev.RecordCount = 0 Then
   Begin
      DM1.cdsDetDev.Append;
      DM1.cdsDetDev.FieldByName('DESC').AsString := 'No existen conceptos por devolución';
      DM1.cdsDetDev.Post;
   End;
   TNumericField(DM1.cdsDetDev.FieldByName('MONTO')).DisplayFormat := '###,###,##0.00';
   dbgDetDev.ColumnByName('DESC').FooterValue := 'TOTAL DEVOLUCIONES';
   dbgDetDev.ColumnByName('MONTO').FooterValue := FormatFloat('###,###.#0', DM1.montoDevolucion);

  // Detalle de Descuentos
   DM1.montoDescuento := 0;
   xSql := 'SELECT PVSLCONCE, PVSLMONTO, CREDID FROM PVS307 WHERE PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
      + ' AND PVSLAGRID = ''DSC'' ORDER BY PVSLSEC';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   DM1.cdsQry.First;
   DM1.cdsDetDes.Close;
   DM1.cdsDetDes.Open;
   DM1.cdsDetDes.EmptyDataSet;
   While Not DM1.cdsQry.Eof Do
   Begin
      DM1.cdsDetDes.Append;
      DM1.cdsDetDes.FieldByName('DESC').AsString := DM1.cdsQry.FieldByName('PVSLCONCE').AsString;
      DM1.cdsDetDes.FieldByName('MONTO').AsFloat := DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
      DM1.cdsDetDes.FieldByName('CREDID').AsString := DM1.cdsQry.FieldByName('CREDID').AsString;
      DM1.montoDescuento := DM1.montoDescuento + DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
      DM1.cdsDetDes.Post;
      DM1.cdsQry.Next;
   End;
   If DM1.cdsDetDes.RecordCount = 0 Then
   Begin
      DM1.cdsDetDes.Append;
      DM1.cdsDetDes.FieldByName('DESC').AsString := 'No existen conceptos por descuentos';
      DM1.cdsDetDes.Post;
   End;
   TNumericField(DM1.cdsDetDes.FieldByName('MONTO')).DisplayFormat := '###,###,##0.00';
   dbgDetDes.ColumnByName('DESC').FooterValue := 'TOTAL DESCUENTOS';
   dbgDetDes.ColumnByName('MONTO').FooterValue := FormatFloat('###,###.#0', DM1.montoDescuento);
   fcSalBen.Caption := FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.montoDescuento), ffNumber, 10, 2);

  // Formas de Pago
   DM1.totalMontoFormadePago := 0;
   xSql := 'SELECT PVSLCONCE, PVSLMONTO, PVSLNOFC, NROCHEQUE, PVSLNVOU FROM PVS307 WHERE PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
      + ' AND PVSLAGRID = ''FPG'' ORDER BY PVSLSEC';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   DM1.cdsQry.First;
   DM1.cdsForPag.Close;
   DM1.cdsForPag.Open;
   DM1.cdsForPag.EmptyDataSet;
   While Not DM1.cdsQry.Eof Do
   Begin
      DM1.cdsForPag.Append;
      If Copy(DM1.cdsQry.FieldByName('PVSLCONCE').AsString, 1, 1) <> '*' Then
      Begin
         If DM1.cdsQry.FieldByName('PVSLNOFC').AsString <> '' Then
            DM1.cdsForPag.FieldByName('DESC').AsString := DM1.cdsQry.FieldByName('PVSLCONCE').AsString + '  [OFC:' + DM1.cdsQry.FieldByName('PVSLNOFC').AsString + ']'
         Else
            If DM1.cdsQry.FieldByName('NROCHEQUE').AsString <> '' Then
               DM1.cdsForPag.FieldByName('DESC').AsString := DM1.cdsQry.FieldByName('PVSLCONCE').AsString + '  [CHQ:' + DM1.cdsQry.FieldByName('NROCHEQUE').AsString + ']'
            Else
               DM1.cdsForPag.FieldByName('DESC').AsString := DM1.cdsQry.FieldByName('PVSLCONCE').AsString;
      End
      Else
         DM1.cdsForPag.FieldByName('DESC').AsString := DM1.cdsQry.FieldByName('PVSLCONCE').AsString + '  [VOUCHER N° ' + DM1.cdsQry.FieldByName('PVSLNVOU').AsString + ']';
      DM1.cdsForPag.FieldByName('MONTO').AsFloat := DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
      DM1.cdsForPag.Post;
      DM1.totalMontoFormadePago := DM1.totalMontoFormadePago + DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
      DM1.cdsQry.Next;
   End;
   If DM1.cdsForPag.RecordCount = 0 Then
   Begin
      DM1.cdsForPag.Append;
      DM1.cdsForPag.FieldByName('DESC').AsString := 'Error no existen designatarios';
      DM1.cdsForPag.Post;
   End;
   TNumericField(DM1.cdsForPag.FieldByName('MONTO')).DisplayFormat := '###,###,##0.00';
   dbgForPag.ColumnByName('DESC').FooterValue := 'TOTAL PAGOS';
   dbgForPag.ColumnByName('MONTO').FooterValue := FormatFloat('###,###.#0', DM1.totalMontoFormadePago);
  //Retenciones judiciales
   xSql := 'SELECT PVSLCONCE, PVSLMONTO  FROM PVS307 WHERE PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
      + ' AND PVSLAGRID = ''RET'' ORDER BY PVSLSEC';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   DM1.cdsRetJud.Close;
   DM1.cdsRetJud.Open;
   DM1.cdsRetJud.EmptyDataSet;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      While Not DM1.cdsQry.Eof Do
      Begin
         DM1.cdsRetJud.Append;
         DM1.cdsRetJud.FieldByName('DESC').AsString := DM1.cdsQry.FieldByName('PVSLCONCE').AsString;
         DM1.cdsRetJud.FieldByName('MONTO').AsFloat := DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
         DM1.cdsRetJud.Post;
         DM1.totalMontoFormadePago := DM1.totalMontoFormadePago + DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
         DM1.cdsQry.Next;
      End;
   End;
  // Observaciones
   xSql := 'SELECT PVSLCONCE, PVSLMONTO  FROM PVS307 WHERE PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
      + ' AND PVSLAGRID = ''OBS'' ORDER BY PVSLSEC';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   DM1.cdsQry.First;
   DM1.cdsObs.Close;
   DM1.cdsObs.Open;
   DM1.cdsObs.EmptyDataSet;
   While Not DM1.cdsQry.Eof Do
   Begin
      DM1.cdsObs.Append;
      DM1.cdsObs.FieldByName('DESC').AsString := DM1.cdsQry.FieldByName('PVSLCONCE').AsString;
      DM1.cdsObs.FieldByName('MONTO').AsFloat := DM1.cdsQry.FieldByName('PVSLMONTO').AsFloat;
      DM1.cdsObs.Post;
      DM1.cdsQry.Next;
   End;
   If DM1.cdsObs.RecordCount = 0 Then
   Begin
      DM1.cdsObs.Append;
      DM1.cdsObs.FieldByName('DESC').AsString := 'No existen observaciones registradas';
      DM1.cdsObs.Post;
   End;

  xSql:='SELECT a.pvslbennr, '
       +   'nvl((select max(case when pvslnofc is not null then ''S'' else ''N'' end) '
       +         ' from PVS307 b '
       +        ' where a.pvslbennr = b.pvslbennr and pvslnofc is not null ),''N'') tiene_num_ofi '
       + ' FROM PVS306 a '
       + 'WHERE ASOID = '''+DM1.cdsCabLiq.FieldByName('ASOID').AsString+''' '
       +  ' and PVSESTLIQ not in (''13'', ''04'') '
       +  ' and a.pvslbennr='''+DM1.cdsCabLiq.FieldByname('pvslbennr').AsString+''' and numbenori is not null ';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;

End;

Procedure TFLiquidacionBeneficio.fcShapeBtn1Click(Sender: TObject);
Begin
   pnldetalles.Visible := False;
End;

Procedure TFLiquidacionBeneficio.dbgDetDevDblClick(Sender: TObject);
Var
   xSql: String;
   apomonto, devmto: Double;
Begin
   If Copy(DM1.cdsDetDev.FieldByName('DESC').AsString, 1, 3) = 'DEV' Then
   Begin
      xSql := 'SELECT APOANO, APOMES, APOMONTO, DEVMTO FROM APO305 WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
         + ' AND TRANSNOPE = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
         + ' AND USUANU IS NULL';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      DM1.cdsQry.First;
      apomonto := 0;
      devmto := 0;
      While Not DM1.cdsQry.Eof Do
      Begin
         apomonto := apomonto + DM1.cdsQry.FieldByName('APOMONTO').AsFloat;
         devmto := devmto + DM1.cdsQry.FieldByName('DEVMTO').AsFloat;
         DM1.cdsQry.Next;
      End;
      dbgDetalles.DataSource := DM1.dsQry;
      dbgDetalles.Selected.Clear;
      dbgDetalles.Selected.Add('APOANO'#9'11'#9'Año de la~Devolución'#9#9);
      dbgDetalles.Selected.Add('APOMES'#9'11'#9'Mes de la~Devolución'#9#9);
      dbgDetalles.Selected.Add('APOMONTO'#9'11'#9'Monto del~Aporte'#9#9);
      dbgDetalles.Selected.Add('DEVMTO'#9'11'#9'Monto~Devuelto'#9#9);
      dbgDetalles.ApplySelected;
      TNumericField(DM1.cdsQry.FieldByName('APOMONTO')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsQry.FieldByName('DEVMTO')).DisplayFormat := '###,###,##0.00';
      pnldetalles.Visible := True;
      pnldetalles.Top := 240;
      pnldetalles.Left := 32;
      stmensaje.Caption := 'DEVOLUCIONES DE APORTES PAGADAS POR BENEFICIOS';
      dbgDetalles.ColumnByName('APOMES').FooterValue := 'TOTAL';
      dbgDetalles.ColumnByName('APOMONTO').FooterValue := FormatFloat('###,###.#0', apomonto);
      dbgDetalles.ColumnByName('DEVMTO').FooterValue := FormatFloat('###,###.#0', devmto);
   End;
End;

Procedure TFLiquidacionBeneficio.dbgDetDesDblClick(Sender: TObject);
Var
   xSql: String;
   transmto, apovalor, creamort, creinteres, creflat, credesgrav, cremtocob: Double;
Begin
  // Para pago de cuotas
   If Copy(DM1.cdsDetDes.FieldByName('CREDID').AsString, 1, 3) <> '' Then
   Begin
    xSql := 'SELECT CRECUOTA, CREAMORT, CREINTERES, MONCOBDESGRAV, CREFLAT, CREMTOCOB FROM CRE310'
         + ' WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByname('ASOID').AsString)
         + ' AND CREDID = ' + QuotedStr(DM1.cdsDetDes.FieldByName('CREDID').AsString)
         + ' AND CREDOCPAG = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
         + ' AND CREESTID NOT IN (''04'',''13'')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      DM1.cdsQry.First;
      creamort := 0;
      creinteres := 0;
      creflat := 0;
      cremtocob := 0;
      credesgrav := 0;
      While Not DM1.cdsQry.Eof Do
      Begin
         creamort := creamort + DM1.cdsQry.FieldByName('CREAMORT').AsFloat;
         creinteres := creinteres + DM1.cdsQry.FieldByName('CREINTERES').AsFloat;
         creflat := creflat + DM1.cdsQry.FieldByName('CREFLAT').AsFloat;
         cremtocob := cremtocob + DM1.cdsQry.FieldByName('CREMTOCOB').AsFloat;
         credesgrav := credesgrav + DM1.cdsQry.FieldByName('MONCOBDESGRAV').AsFloat;
         DM1.cdsQry.Next;
      End;
      DM1.cdsQry.First;
      dbgDetalles.DataSource := DM1.dsQry;
      dbgDetalles.Selected.Clear;
      dbgDetalles.Selected.Add('CRECUOTA'#9'11'#9'Cuota~Cobrada'#9#9);
      dbgDetalles.Selected.Add('CREAMORT'#9'11'#9'Amortización~Cobrada'#9#9);
      dbgDetalles.Selected.Add('CREINTERES'#9'11'#9'Interes~Cobrado'#9#9);
      dbgDetalles.Selected.Add('CREFLAT'#9'11'#9'Flat~Cobrado'#9#9);
      dbgDetalles.Selected.Add('MONCOBDESGRAV'#9'11'#9'Desgravamen~Cobrado'#9#9);
      dbgDetalles.Selected.Add('CREMTOCOB'#9'11'#9'Monto~Cobrado'#9#9);
      dbgDetalles.ApplySelected;
      TNumericField(DM1.cdsQry.FieldByName('CRECUOTA')).DisplayFormat := '###';
      TNumericField(DM1.cdsQry.FieldByName('CREAMORT')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsQry.FieldByName('CREINTERES')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsQry.FieldByName('CREFLAT')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsQry.FieldByName('MONCOBDESGRAV')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsQry.FieldByName('CREMTOCOB')).DisplayFormat := '###,###,##0.00';
      pnldetalles.Visible := True;
      pnldetalles.Top := 240;
      pnldetalles.Left := 32;
      dbgDetalles.ColumnByName('CRECUOTA').FooterValue := 'TOTAL';
      dbgDetalles.ColumnByName('CREAMORT').FooterValue := FormatFloat('###,###.#0', creamort);
      dbgDetalles.ColumnByName('CREINTERES').FooterValue := FormatFloat('###,###.#0', creinteres);
      dbgDetalles.ColumnByName('CREFLAT').FooterValue := FormatFloat('###,###.#0', creflat);
      dbgDetalles.ColumnByName('MONCOBDESGRAV').FooterValue := FormatFloat('###,###.#0', credesgrav);
      dbgDetalles.ColumnByName('CREMTOCOB').FooterValue := FormatFloat('###,###.#0', cremtocob);
      stmensaje.Caption := 'CUOTAS DE CREDITOS PAGADAS POR BENEFICIOS';
   End;
  // Nivelaciones de beneficios
   If Copy(DM1.cdsDetDes.FieldByName('DESC').AsString, 1, 3) = 'NIV' Then
   Begin
      xSql := 'SELECT A.TRANSANO, A.TRANSMES, A.TRANSMTO, B.APOVALOR FROM APO301 A, APO117 B'
         + ' WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
         + ' AND TRANSNOPE = ' + QuotedStr(DM1.cdsCabLiq.FieldByname('PVSLBENNR').AsString)
         + ' AND A.TRANSANO = B.APOANO AND A.TRANSMES = B.APOMES';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      DM1.cdsQry.First;
      transmto := 0;
      apovalor := 0;
      While Not DM1.cdsQry.Eof Do
      Begin
         transmto := transmto + DM1.cdsQry.FieldByName('TRANSMTO').AsFloat;
         apovalor := apovalor + DM1.cdsQry.FieldByName('APOVALOR').AsFloat;
         DM1.cdsQry.Next;
      End;
      DM1.cdsQry.First;
      dbgDetalles.DataSource := DM1.dsQry;
      dbgDetalles.Selected.Clear;
      dbgDetalles.Selected.Add('TRANSANO'#9'11'#9'Año de la~Nivelación'#9#9);
      dbgDetalles.Selected.Add('TRANSMES'#9'11'#9'Mes de la~Nivelación'#9#9);
      dbgDetalles.Selected.Add('TRANSMTO'#9'11'#9'Monto de la~Nivelación'#9#9);
      dbgDetalles.Selected.Add('APOVALOR'#9'11'#9'Monto del~Aporte'#9#9);
      dbgDetalles.ApplySelected;
      TNumericField(DM1.cdsQry.FieldByName('TRANSMTO')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsQry.FieldByName('APOVALOR')).DisplayFormat := '###,###,##0.00';
      pnldetalles.Visible := true;
      pnldetalles.Top := 240;
      pnldetalles.Left := 32;
      stmensaje.Caption := 'NIVELACIONES DE APORTES PAGADAS POR BENEFICIOS';
      dbgDetalles.ColumnByName('TRANSMES').FooterValue := 'TOTAL';
      dbgDetalles.ColumnByName('TRANSMTO').FooterValue := FormatFloat('###,###.#0', transmto);
      dbgDetalles.ColumnByName('APOVALOR').FooterValue := FormatFloat('###,###.#0', apovalor);
   End;
End;

Procedure TFLiquidacionBeneficio.btnImprimePrevioClick(Sender: TObject);
Var
   xSql: String;
Begin
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
   +' FROM APO201 WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString);
   DM1.cdsAsociado.Close;
   DM1.cdsAsociado.DataRequest(xSql);
   DM1.cdsAsociado.Open;
   dm1.CargaImagenes(DM1.cdsAsociado.FieldByName('ASODNI').AsString);
   ImagAso.Picture.Assign(DM1.Jpg);
   ppTotbenAsi.Caption := FloatToStrF(DM1.liquidacionbeneficio,ffNumber,10,2);
   pplregpen.Caption := DM1.DevuelveValor('APO105', 'REGPENABR', 'REGPENID', Copy(DM1.cdsAsociado.FieldByName('REGPENID').AsString,1,2));
   If DM1.cdsAsociado.FieldByName('REGPENID').AsString = '03' Then
   Begin
      xSql := 'SELECT SUBSTR(PROV,4,2) CODAFP, PROVDES DESAFP  FROM TGE201 WHERE SUBSTR(PROV,1,1) = ''A'' AND CLAUXID = ''A'''
      +' AND SUBSTR(PROV,4,2) = '+QuotedStr(DM1.cdsAsociado.FieldByName('CODAFP').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplregpen.Caption := pplregpen.Caption + ' - ' + DM1.cdsQry.FieldByName('DESAFP').AsString;
   End;

   If (DM1.cdsCabLiq.FieldByName('PVSESTLIQ').AsString = '04') Or (DM1.cdsCabLiq.FieldByName('PVSESTLIQ').AsString = '13') Then
   Begin
      ppanula.Visible := True;
      ppanula.Caption := 'LIQUIDACIÓN ANULADA POR : ' + UpperCase(DM1.DevuelveValor('USERTABLE', 'USERNOM', 'USERID', DM1.cdsCabLiq.FieldByName('PVSUSUANUL').AsString))
         + ' EL : ' + DM1.cdsCabLiq.FieldByName('PVSFANUL').AsString;
   End
   Else
      ppanula.Visible := False;


   ppldesben.Caption := DM1.DevuelveValor('TGE186', 'BENEFDES', 'TIPBENEF', DM1.cdsCabLiq.FieldByName('PVSLTIPBE').AsString);
   If (DM1.cdsCabLiq.FieldByName('PVSLTIPBE').AsString = '01') And (DM1.cdsCabLiq.FieldByName('PVSTIPRET').AsString = '1')  Then
      ppldesben.Caption := ppldesben.Caption + ' (INVALIDEZ TEMPORAL-PARCIAL)';

   pplblLiqBen.Caption := '';
   If DM1.cdsCabLiq.FieldByName('PVSESTLIQ').AsString = '05' Then
      pplblLiqBen.Caption := 'RE-';
   pplblLiqBen.Caption := pplblLiqBen.Caption+'LIQUIDACIÓN DE BENEFICIO Nº ' + Copy(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString, 5, 7);

   pplfecliq.Caption := 'FECHA : ' + DM1.cdsCabLiq.FieldByname('HREG').AsString;
   pplAsoApeNomDni.Caption := DM1.cdsCabLiq.FieldByname('ASOAPENOMDNI').AsString;
   pplAsoDni.Caption := DM1.cdsCabLiq.FieldByname('ASODNI').AsString;
   pplasotelef.Caption := DM1.cdsCabLiq.FieldByname('ASOTELF1').AsString;
   pplAsoDir.Caption := DM1.cdsCabLiq.FieldByname('ASODIR').AsString;
   pplZipDes.Caption := DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', Copy(DM1.cdsCabLiq.FieldByName('ZIPID').AsString, 1, 2)) + '/'
      + DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', Copy(DM1.cdsCabLiq.FieldByName('ZIPID').AsString, 1, 4)) + '/'
      + DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', DM1.cdsCabLiq.FieldByName('ZIPID').AsString);
   pplAsoCodMod.Caption := DM1.cdsCabLiq.FieldByName('ASOCODMOD').AsString;
   pplCentroEducativo.Caption := DM1.cdsCabLiq.FieldByName('ASODESLAB').AsString;
   xSql := 'SELECT USENOM FROM APO101 WHERE USEID = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('USEID').AsString)
      + ' AND UPAGOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('UPROID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   pplUse.Caption := 'U.S.E. : ' + DM1.cdsQry.FieldByName('USENOM').AsString;
   pplUseZip.Caption := DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', Copy(DM1.cdsCabLiq.FieldByName('ASODSTLABID').AsString, 1, 2)) + '/'
      + DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', Copy(DM1.cdsCabLiq.FieldByName('ASODSTLABID').AsString, 1, 4)) + '/'
      + DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', DM1.cdsCabLiq.FieldByName('ASODSTLABID').AsString);
   pplFecNom.Caption := DM1.cdsCabLiq.FieldByName('ASOFRESNOM').AsString;
   pplFecCes.Caption := DM1.cdsCabLiq.FieldByName('ASOFRESCESE').AsString;
   pplNumResNoM.Caption := DM1.cdsCabLiq.FieldByName('ASORESNOM').AsString;
   pplNumResCes.Caption := DM1.cdsCabLiq.FieldByName('ASORESCESE').AsString;
   pplUltApo.Caption := DM1.cdsCabLiq.FieldByName('PVSLULAP').AsString;
   pplAnoApo.Caption := DM1.cdsCabLiq.FieldByName('PVSLTAAP').AsString;
   pplSalDis.Caption := fcSalBen.Caption;
   pplblUsuario.Caption := UpperCase(DM1.DevuelveValor('USERTABLE', 'USERNOM', 'USERID', DM1.cdsCabLiq.FieldByName('USUARIO').AsString));
   pplimppor.Caption := 'IMPRESO POR : ' + UpperCase(DM1.DevuelveValor('USERTABLE', 'USERNOM', 'USERID', DM1.wUsuario));
   pprImprimePrevio.Print;
   pprImprimePrevio.Stop;
   repcarabo;
End;

Procedure TFLiquidacionBeneficio.btncerrarClick(Sender: TObject);
Begin
   FLiquidacionBeneficio.Close;
End;

Procedure TFLiquidacionBeneficio.BotonesEstado( bEstado : Boolean );
begin
   btnImprimePrevio.Enabled  := bEstado;
end;

Procedure TFLiquidacionBeneficio.btncerraranulacionClick(Sender: TObject);
Begin
   BotonesEstado( True );
   sNuevaLiq:='N';
End;

Procedure TFLiquidacionBeneficio.btncerrargridClick(Sender: TObject);
Begin
   pnldetalles.Visible := False;
End;

Procedure TFLiquidacionBeneficio.repcarabo;
Var
   xSql: String;
Begin
  //Creditos
   xSql := 'SELECT A.CREDID, A.CRECUOTA, A.CREAMORT, A.CREINTERES, A.MONCOBDESGRAV, A.CREFLAT, A.CREMTOCOB, B.CREFVEN, B.CREFVENINI'
      + '  FROM CRE310 A, CRE302 B '
      + ' WHERE A.ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
      + '   AND A.CREDOCPAG = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString) + ' AND A.CREESTID NOT IN (''04'', ''13'')'
      + '   AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND A.CRECUOTA = B.CRECUOTA'
      + ' ORDER BY A.CREDID, A.CRECUOTA';
   DM1.cdsQry20.Close;
   DM1.cdsQry20.DataRequest(xSql);
   DM1.cdsQry20.Open;

   xSql:='select A.CODAPLICA, A.CREDID, A.MONAPL, A.PERAPL, B.FECOPERA, B.NUMOPERA'
        + ' FROM COB_APLI_CCI_DET A, COB_APLI_CCI_CAB B'
        +' WHERE NUMLIQBEN=' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
        +  ' AND A.CODAPLICA=B.CODAPLICA '
        +' ORDER BY A.CREDID';
   DM1.cdsQry26.Close;
   DM1.cdsQry26.DataRequest(xSql);
   DM1.cdsQry26.Open;

  //Nivelaciones
   xSql := 'SELECT TRANSANO, B.MESDESL, TRANSMTO '
      + '  FROM APO301 A, TGE181 B '
      + ' WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
      + '   AND TRANSNOPE = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
      + '   AND A.TRANSMES = B.MESIDR ORDER BY TRANSANO, TRANSMES';
   DM1.cdsQry21.Close;
   DM1.cdsQry21.DataRequest(xSql);
   DM1.cdsQry21.Open;
  //Devoluciones
   xSql := 'SELECT APOANO, B.MESDESL, DEVMTO '
      + '  FROM APO305 A, TGE181 B '
      + ' WHERE ASOID     = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
      + '   AND TRANSNOPE = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
      + '   AND A.APOMES  = B.MESIDR '
      + '   AND USUANU    IS NULL ORDER BY APOANO, APOMES';
   DM1.cdsQry22.Close;
   DM1.cdsQry22.DataRequest(xSql);
   DM1.cdsQry22.Open;
   // Se añade en el reporte de abonos y cargos cobrados por beneficios los cobros realizados al fondo solidario
   xSql := 'SELECT B.NUM_DEU, B.IMP_COB_DEU, USU_COB_DEU, B.EST_COB_COD, B.EST_COB_DES'
   +' FROM COB_FSC_DEUDA_FSC_CAB A, COB_FSC_PAGOS_AL_FSC B'
   +' WHERE A.ASOID = '+QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
   +' AND A.ASOID = B.ASOID AND A.NUM_DEU = B.NUM_DEU'
   +' AND B.NROOPE = '+QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
   +' AND B.EST_COB_COD NOT IN (''04'',''13'')';
   DM1.cdsQry23.Close;
   DM1.cdsQry23.DataRequest(xSql);
   DM1.cdsQry23.Open;
   pppvslbennr.Caption := DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString;
   pppvslfecbe.Caption := DM1.cdsCabLiq.FieldByName('PVSLFECBE').AsString;
   ppasoapenomdni.Caption := DM1.cdsCabLiq.FieldByName('ASOAPENOMDNI').AsString;
   xSql := 'SELECT BENEFDES FROM TGE186 WHERE TIPBENEF = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLTIPBE').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   pptipobenabr.Caption := DM1.cdsQry.FieldByName('BENEFDES').AsString;
   // Se añade la condicion que si existe información en el Qry de Fondo Solidario muestra el reporte
   If (DM1.cdsQry20.RecordCount > 0) Or (DM1.cdsQry21.RecordCount > 0) Or (DM1.cdsQry22.RecordCount > 0) Or (DM1.cdsQry23.RecordCount > 0) Then
   Begin
      pprdesdev.Print;
      pprdesdev.Stop;
   End;
End;

Procedure TFLiquidacionBeneficio.srcreditosPrint(Sender: TObject);
Begin
   If DM1.cdsQry20.RecordCount = 0 Then srcreditos.Visible := False;
End;

Procedure TFLiquidacionBeneficio.ppsrnivapoPrint(Sender: TObject);
Begin
   If DM1.cdsQry21.RecordCount = 0 Then ppsrnivapo.Visible := False;
End;

Procedure TFLiquidacionBeneficio.ppsrdevapoPrint(Sender: TObject);
Begin
   If DM1.cdsQry22.RecordCount = 0 Then ppsrdevapo.Visible := False;
End;

Procedure TFLiquidacionBeneficio.ppDBText8Print(Sender: TObject);
Begin
   If Copy(DM1.cdsForPag.FieldByName('DESC').AsString, 1, 1) = '*' Then
      ppDBText8.Visible := False
   Else
      ppDBText8.Visible := True;
End;

Procedure TFLiquidacionBeneficio.ppDBText10Print(Sender: TObject);
Begin
   If Copy(DM1.cdsRetJud.FieldByName('DESC').AsString, 1, 1) = '*' Then
      ppDBText10.Visible := False
   Else
      ppDBText10.Visible := True;
End;

Procedure TFLiquidacionBeneficio.AnulaPagos(xAsoId, xCreDid, xDocPag, xFrmPag, xFecPag: String);
Var
   tAsoid, tCreDid, tCreCuota, tEstado, xSQL, rSQL, xObs: String;
   xcreestid, xcreestado: String;
   tCremtoCob: Currency;
Begin
   xObs := 'CUOTA ANULADA DESDE EL MONDULO DE BENEFICIO POR ANULACION DE LIQUIDACION';
   xSQL := 'SELECT ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG ' +
      ',CREAMORT,CREINTERES,CREFLAT,CREMTOCOB,TMONID,TCAMBIO,USUARIO,FREG,HREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,ARCHIVOFTP,CREOBS,CREANO,NROOPE,NRONABO,AREAID,CREMES,CREMTODEV,FORPAGOABR,TRANSINTID,CREESTID,CREESTADO,CREMTOCUO ' +
      ',CREDOCPAG,AGENBCOID,FORPAGID,FORPAGABR,NROREFINAN,CREFLAGDEV,CREESTANT,CREESTANTDES,NROOPETMP,FOPERACTMP,ASOSITID,CNTANOMM,TIPOCONT,NVL(CREMTOEXC,0) CREMTOEXC,NVL(CREAPLEXC,0) CREAPLEXC,PERCONTA,TIPNABO,CNTFLAG FROM CRE310 ' +
      ' WHERE ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid)) + ' AND CREDOCPAG=' + QuotedStr(Trim(xDocPag)) + ' AND FORPAGID=' + QuotedStr(Trim(xFrmPag)) + ' AND CREFPAG =To_Date(' + QuotedStr(Trim(xFecPag)) + ',''dd/mm/yyyy'') AND CREESTID NOT IN (''04'',''13'', ''99'') Order By ASOID,CREDID,CRECUOTA ';
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest(xSQL);
   DM1.cdsCuotas.Open;
   If DM1.cdsCuotas.RecordCount > 0 Then
   Begin
      If DM1.cdsCuotas.FieldByName('CNTFLAG').AsString = 'S' Then
      Begin
         xcreestid := '04';
         xcreestado := 'EXTORNADO';
      End
      Else
      Begin
         xcreestid := '13';
         xcreestado := 'ANULADO';
      End;
      rSQL := 'UPDATE CRE310 '
         + '   SET CREESTID = ' + QuotedStr(xcreestid) + ', CREESTADO = ' + QuotedStr(xcreestado) + ' WHERE'
         + ' ASOID=' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid))
         + ' AND CREDOCPAG=' + QuotedStr(Trim(xDocPag)) + ' AND FORPAGID=' + QuotedStr(Trim(xFrmPag))
         + ' AND CREFPAG =To_Date(' + QuotedStr(Trim(xFecPag)) + ',''dd/mm/yyyy'') ';
      DM1.DCOM1.AppServer.EjecutaSql(rSQL);
      DM1.cdsCuotas.First;
      While Not DM1.cdsCuotas.Eof Do
      Begin
         tAsoid := DM1.cdsCuotas.FieldByName('ASOID').AsString;
         tCreDid := DM1.cdsCuotas.FieldByName('CREDID').AsString;
         tCreCuota := DM1.cdsCuotas.FieldByName('CRECUOTA').AsString;
         tCremtoCob := DM1.cdsCuotas.FieldByName('CREMTOCOB').AsFloat;
         tEstado := Trim(DM1.cdsCuotas.FieldByName('CREESTANT').AsString) + Trim(DM1.cdsCuotas.FieldByName('CREESTANTDES').AsString);
         AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado, tCremtoCob);
         DM1.cdsCuotas.Next;
      End;
      DM1.cdsCuotas.First;
      While Not DM1.cdsCuotas.Eof Do
      Begin
         rSQL := 'INSERT INTO COB901(ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA,CREFPAG ' +
            ',CREAMORT , CREINTERES, CREFLAT,CREMTOCOB,TMONID, ' +
            'TCAMBIO,USUARIO,FREG,HREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,ASOAPENOM,ARCHIVOFTP,CREOBS,CREANO,NROOPE,NRONABO,AREAID, ' +
            'CREMES,CREMTODEV,FORPAGOABR,TRANSINTID,CREESTID,CREESTADO,CREMTOCUO ' +
            ',CREDOCPAG,AGENBCOID,FORPAGID,FORPAGABR,NROREFINAN,CREFLAGDEV,CREESTANT,CREESTANTDES,NROOPETMP,FOPERACTMP,ASOSITID,CNTANOMM,TIPOCONT,CREMTOEXC,CREAPLEXC,PERCONTA,TIPNABO,CNTFLAG,CREMENANU,USRANULA,FECANULA )' +
            'VALUES (' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODAUX').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('USEID').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('TIPCREID').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CREDID').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CRECUOTA').AsString) + ' ' +
            ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CREFPAG').AsString) + ',' + DM1.cdsCuotas.FieldByName('CREAMORT').AsString + ',' + DM1.cdsCuotas.FieldByName('CREINTERES').AsString + ',' + DM1.cdsCuotas.FieldByName('CREFLAT').AsString + ',' + DM1.cdsCuotas.FieldByName('CREMTOCOB').AsString + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('TMONID').AsString) + ',' + DM1.cdsCuotas.FieldByName('TCAMBIO').AsString + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('USUARIO').AsString) + ' ' +
            ',' + QuotedStr(DateToStr(DM1.cdsCuotas.FieldByName('FREG').AsDateTime)) + ',' + QuotedStr(DateToStr(DM1.cdsCuotas.FieldByName('HREG').AsDateTime)) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('UPROID').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('DPTOID').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('UPAGOID').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('BANCOID').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CCBCOID').AsString) + ' ' +
            ',' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('ARCHIVOFTP').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CREOBS').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CREANO').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('NROOPE').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('NRONABO').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('AREAID').AsString) + ' ' +
            ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CREMES').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CREMTODEV').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGOABR').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('TRANSINTID').AsString) + ',' + QuotedStr('13') + ',' + QuotedStr('ANULADO') + ',' + DM1.cdsCuotas.FieldByName('CREMTOCUO').AsString + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CREDOCPAG').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('AGENBCOID').AsString) + ' ' +
            ',' + QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGID').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('FORPAGABR').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('NROREFINAN').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CREFLAGDEV').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CREESTANT').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CREESTANTDES').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('NROOPETMP').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('FOPERACTMP').AsString) + ' ' +
            ',' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOSITID').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CNTANOMM').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('TIPOCONT').AsString) + ',' + DM1.cdsCuotas.FieldByName('CREMTOEXC').AsString + ',' + DM1.cdsCuotas.FieldByName('CREAPLEXC').AsString + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('PERCONTA').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('TIPNABO').AsString) + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('CNTFLAG').AsString) + ',' + QuotedStr(Trim(xobs)) + ' ' +
            ',' + QuotedStr(DM1.wUsuario) + ',SYSDATE' + ')';
         DM1.DCOM1.AppServer.EjecutaSql(rSQL);
         DM1.cdsCuotas.Next;
      End;
   End;
End;

Procedure TFLiquidacionBeneficio.AplicaSaldoPre(xAsoId, xCreDid: String);
Var
   xSaldoAct: Currency;
   xSql: String;
Begin
   xSaldoAct := DM1.SaldoActual(xAsoId, xCreDid, '0');
   DM1.cdsCreditos.Close;
   xSql := 'SELECT ASOID,CREDID,CREESTID,CREESTADO,CRESDOACT '
      + '  FROM CRE301'
      + ' WHERE ASOID = ' + QuotedStr(Trim(xAsoId)) + ' AND CREDID=' + QuotedStr(Trim(xCreDid))
      + '   AND CREESTID IN (''02'',''21'')';
   DM1.cdsCreditos.DataRequest(xSql);
   DM1.cdsCreditos.Open;
   If xSaldoAct > 0 Then
   Begin
      DM1.cdsCreditos.Edit;
      DM1.cdsCreditos.fieldbyname('CRESDOACT').AsFloat := xSaldoAct;
      DM1.cdsCreditos.fieldbyname('CREESTID').AsString := '02';
      DM1.cdsCreditos.fieldbyname('CREESTADO').AsString := 'POR COBRAR';
      DM1.cdsCreditos.ApplyUpdates(0);
   End
   Else
   Begin
      DM1.cdsCreditos.Edit;
      DM1.cdsCreditos.fieldbyname('CREESTID').AsString := '21';
      DM1.cdsCreditos.fieldbyname('CREESTADO').AsString := 'CANCELADO';
      DM1.cdsCreditos.fieldbyname('CRESDOACT').AsFloat := xSaldoAct;
      DM1.cdsCreditos.ApplyUpdates(0);
   End;
   DM1.cdsCreditos.Close;
End;

Procedure TFLiquidacionBeneficio.AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado: String; tCremtoCob: Currency);
Var
   xCreEstid, xCreEstado, xSql: String;
   xCrefPag, xCrefVen: String;
   xCremtoCob, xCremtoExc: Currency;
   xCreAmort, xCreInteres, xCreFlat: Currency;
   xCremtoInt: Currency;
Begin
   xCremToInt  := 0;
   xCreAmort   := 0;
   xCreFlat    := 0;
   xCreInteres := 0;
   xCremtoExc  := 0;
   xSQL := 'SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CREMTOCOB,CREMONLOC,CREMONEXT,CRECAPITAL,'
      + '       CREMTOINT,CREMTOFLAT,FORPAGOABR,CREESTID,CREESTADO,FLGINT,FLGPAG,'
      + '       CREDOCPAG,CRESALDO,NVL(TCAMBIO,0) TCAMBIO,CREMTO,CREAMORT,CREINTERES,CREFLAT'
      + '  FROM CRE302 '
      + ' WHERE ASOID = ' + QuotedStr(Trim(tAsoId)) + ' AND CREDID=' + QuotedStr(Trim(tCreDid)) + ' AND CRECUOTA=' + QuotedStr(Trim(tCreCuota));
   DM1.cdsBanco.Close;
   DM1.cdsBanco.DataRequest(xSQL);
   DM1.cdsBanco.Open;
   If DM1.cdsBanco.RecordCount > 0 Then
   Begin
      xCrefVen := DM1.cdsBanco.FieldByName('CREFVEN').AsString;
      xCreAmort := DM1.cdsBanco.FieldByName('CREAMORT').AsFloat;
      xCreInteres := DM1.cdsBanco.FieldByName('CREINTERES').AsFloat;
      xCreFlat := DM1.cdsBanco.FieldByName('CREFLAT').AsFloat;
      xCremtoInt := DM1.cdsBanco.FieldByName('CREMTOINT').AsFloat;
      xSql := 'UPDATE CRE302 '
         + '   SET CREMTOCOB  = 0.00, '
         + '       CREMONLOC  = 0.00, '
         + '       CREMONEXT  = 0.00, '
         + '       TCAMBIO    = 0.00, '
         + '       CRECAPITAL = 0.00, '
         + '       CREMTOINT  = 0.00, '
         + '       CREMTOFLAT = 0.00, '
         + '       CREESTID   = ' + QuotedStr(Copy(tEstado, 1, 2)) + ', CREESTADO = ' + QuotedStr(Copy(tEstado, 3, 25)) + ', FLGINT=NULL, FLGPAG=NULL'
         + ' WHERE ASOID      = ' + QuotedStr(Trim(tAsoId)) + ' AND CREDID = ' + QuotedStr(Trim(tCreDid))
         + '   AND CRECUOTA   = ' + QuotedStr(Trim(tCreCuota));
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
   End;
  //Recupera el Saldo Actual Regraba Pagos
   xSQL := 'SELECT MAX(CREFPAG) CREFPAG,SUM(NVL(CREMTOCOB,0)) CREMTOCOB '
      + '  FROM CRE310 '
      + ' WHERE ASOID    = ' + QuotedStr(Trim(tAsoId)) + ' AND CREDID=' + QuotedStr(Trim(tCreDid))
      + '   AND CRECUOTA = ' + QuotedStr(Trim(tCreCuota)) + ' AND CREESTID NOT IN (''04'',''13'', ''99'')'
      + '   AND CREFLAGDEV IS NULL';
   DM1.cdsBanco.Close;
   DM1.cdsBanco.DataRequest(xSQL);
   DM1.cdsBanco.Open;
   If DM1.cdsBanco.RecordCount > 0 Then
   Begin
      xCremtoCob := DM1.cdsBanco.FieldByName('CREMTOCOB').AsCurrency;
      xCrefPag := DM1.cdsBanco.FieldByName('CREFPAG').AsString;
      If xCremtoCob > 0 Then
      Begin
         If (Copy(xCrefVen, 7, 4) + Copy(xCrefVen, 4, 2) > Copy(xCrefPag, 7, 4) + Copy(xCrefPag, 4, 2)) And (xCremToInt = 0) Then
         Begin
            If xCremtoCob > (xCreAmort + xCreFlat) Then
               xCremtoExc := xCremtoCob - (xCreAmort + xCreFlat)
            Else
               xCremtoExc := 0;
            If xCremtoCob >= (xCreAmort + xCreFlat) Then
            Begin
               xCreEstid := '26';
               xCreEstado := 'CANCELADO A BEN';
            End
            Else
            Begin
               xCreEstid := '27';
               xCreEstado := 'PARCIAL';
            End;
            DistCrono(tAsoId, tCredId, tCreCuota, xCreEstid, xCreEstado, xCrefPag, xCremtoCob, xCremtoInt, xCremtoExc);
         End
         Else
         Begin
            If xCremtoCob > (xCreAmort + xCreInteres + xCreFlat) Then
               xCremtoExc := xCremtoCob - (xCreAmort + xCreInteres + xCreFlat)
            Else
               xCremtoExc := 0;
            If xCremtoCob >= (xCreAmort + xCreInteres + xCreFlat) Then
            Begin
               xCreEstid := '24';
               xCreEstado := 'CANCELADO BEN';
            End
            Else
            Begin
               xCreEstid := '27';
               xCreEstado := 'PARCIAL';
            End;
            DistCrono(tAsoId, tCredId, tCreCuota, xCreEstid, xCreEstado, xCrefPag, xCremtoCob, xCremtoInt, xCremtoExc);
         End;
      End
      Else
      Begin
         xCreEstid := '02';
         xCreEstado := 'POR COBRAR';
         DistCrono(tAsoId, tCredId, tCreCuota, xCreEstid, xCreEstado, xCrefPag, xCremtoCob, xCremtoInt, xCremtoExc);
      End;
   End;
   DM1.cdsBanco.Close;
End;

Procedure TFLiquidacionBeneficio.DistCrono(xAsoId, xCredId, xCreCuota, xCreEstid, xCreEstado, xCrefPag: String; xCremtoCob, xCremToInt, xCremtoExc: Currency);
Var
   xSQL: String;
   sUno, sDos: Currency;
   xEstado: Integer;
Begin
   sUno := 0.00;
   sDos := 0.00;
   xSQL := 'SELECT ASOID,CREDID,CRECUOTA,CRESALDO,CREFPAG,CREFVEN,CREMTO,CREAMORT,CREINTERES,CREFLAT,CREMTOCOB, ' +
      'CRECAPITAL,CREMTOINT,CREMTOFLAT,CREMTOEXC,CREESTID,CREESTADO, CREFVENINI FROM CRE302 WHERE ASOID=' + QuotedStr(xAsoId) + ' AND ' +
      'CREDID=' + QuotedStr(xCredId) + ' AND CRECUOTA=' + xCreCuota;
   DM1.cdsTAso.Close;
   DM1.cdsTAso.DataRequest(xSQL);
   DM1.cdsTAso.Open;
   If DM1.cdsTAso.RecordCount > 0 Then
   Begin
      If (Copy(DM1.cdsTAso.fieldbyname('CREFVENINI').AsString, 7, 4) + Copy(DM1.cdsTAso.fieldbyname('CREFVENINI').AsString, 4, 2) > Copy(xCrefPag, 7, 4) + Copy(xCrefPag, 4, 2)) And (xCremToInt = 0) Then
         xEstado := 0
      Else
         xEstado := 1;
      DM1.cdsTAso.Edit;
      If xEstado > 0 Then
      Begin
         If xCremtoCob > DM1.cdsTAso.fieldbyname('CREFLAT').AsCurrency Then
         Begin
            DM1.cdsTAso.fieldbyname('CREMTOFLAT').AsCurrency := DM1.cdsTAso.fieldbyname('CREFLAT').AsCurrency;
            sUno := xCremtoCob - DM1.cdsTAso.fieldbyname('CREFLAT').AsCurrency;
            If sUno > DM1.cdsTAso.fieldbyname('CREINTERES').AsCurrency Then
            Begin
               DM1.cdsTAso.fieldbyname('CREMTOINT').AsCurrency := DM1.cdsTAso.fieldbyname('CREINTERES').AsCurrency;
               sDos := sUno - DM1.cdsTAso.fieldbyname('CREINTERES').AsCurrency;
               If sDos > DM1.cdsTAso.fieldbyname('CREAMORT').AsCurrency Then
               Begin
                  DM1.cdsTAso.fieldbyname('CRECAPITAL').AsCurrency := DM1.cdsTAso.fieldbyname('CREAMORT').AsCurrency;
               End
               Else
               Begin
                  DM1.cdsTAso.fieldbyname('CRECAPITAL').AsCurrency := sDos;
               End;
            End
            Else
            Begin
               DM1.cdsTAso.fieldbyname('CREMTOINT').AsCurrency := sUno;
            End;
         End
         Else
         Begin
            DM1.cdsTAso.fieldbyname('CREMTOFLAT').AsCurrency := xCremtoCob;
         End;
      End
      Else
      Begin
         DM1.cdsTAso.fieldbyname('CREMTOINT').AsCurrency := 0.00;
         If xCremtoCob > DM1.cdsTAso.fieldbyname('CREFLAT').AsCurrency Then
         Begin
            DM1.cdsTAso.fieldbyname('CREMTOFLAT').AsCurrency := DM1.cdsTAso.fieldbyname('CREFLAT').AsCurrency;
            sUno := xCremtoCob - DM1.cdsTAso.fieldbyname('CREFLAT').AsCurrency;
            If sUno > DM1.cdsTAso.fieldbyname('CREAMORT').AsCurrency Then
            Begin
               DM1.cdsTAso.fieldbyname('CRECAPITAL').AsCurrency := DM1.cdsTAso.fieldbyname('CREAMORT').AsCurrency;
            End
            Else
            Begin
               DM1.cdsTAso.fieldbyname('CRECAPITAL').AsCurrency := sUno;
            End;
         End
         Else
         Begin
            DM1.cdsTAso.fieldbyname('CREMTOFLAT').AsCurrency := xCremtoCob;
         End;
      End;
      DM1.cdsTAso.fieldbyname('CREESTID').AsString := xCreEstid;
      DM1.cdsTAso.fieldbyname('CREESTADO').AsString := xCreEstado;
      DM1.cdsTAso.fieldbyname('CREFPAG').AsString := xCrefPag;
      DM1.cdsTAso.fieldbyname('CREMTOCOB').AsCurrency := xCremtoCob;
      DM1.cdsTAso.fieldbyname('CREMTOEXC').AsCurrency := SumaExceso(xAsoId, xCredId, xCreCuota);
      DM1.cdsTAso.ApplyUpdates(0);
   End;
   DM1.cdsTAso.Close;

End;

Function TFLiquidacionBeneficio.SumaExceso(xAsoId, xCredId, xCreCuota: String): Currency;
Var
   xSQL: String;
Begin
   xSQL := 'SELECT SUM(NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0)) CREMTOEXC FROM CRE310 WHERE ASOID=' + QuotedStr(xAsoId)
      + ' AND CREDID=' + QuotedStr(xCredId) + ' AND '
      + 'CRECUOTA=' + QuotedStr(xCreCuota) + ' AND CREESTID NOT IN (''04'',''13'') ';
   DM1.cdsInt.Close;
   DM1.cdsInt.DataRequest(xSQL);
   DM1.cdsInt.Open;
   If DM1.cdsInt.RecordCount > 0 Then
      If DM1.cdsInt.Fieldbyname('CREMTOEXC').AsCurrency < 0 Then
         Result := 0
      Else
         Result := DM1.cdsInt.Fieldbyname('CREMTOEXC').AsCurrency
   Else
      Result := 0;
   DM1.cdsInt.Close;
End;

Procedure TFLiquidacionBeneficio.BorraFotos;
Var
   search: TSearchRec;
   nFiles: integer;
Begin
   nFiles := FindFirst('C:\SOLEXES\*.JPG', faAnyFile, search);
   While nFiles = 0 Do
   Begin
      SysUtils.DeleteFile('C:\SOLEXES\' + Search.Name);
      nFiles := FindNext(Search);
   End;
   FindClose(Search);
End;

Procedure TFLiquidacionBeneficio.ppLabel39Print(Sender: TObject);
Begin
   If DM1.cdsQry20.FieldByName('CREFVEN').AsString <> DM1.cdsQry20.FieldByName('CREFVENINI').AsString Then
      ppLabel39.Visible := True
   Else
      ppLabel39.Visible := False;
End;

procedure TFLiquidacionBeneficio.ppDBText12Print(Sender: TObject);
begin
  If Copy(DM1.cdsObs.FieldByName('DESC').AsString,1,5) = 'SALDO' Then
     ppDBText12.BlankWhenZero := False
  Else
     ppDBText12.BlankWhenZero := True;
end;

procedure TFLiquidacionBeneficio.ppLine36Print(Sender: TObject);
begin
   If DM1.cdsDetCalLiq.FieldByName('TIPDES').AsString = 'TC' Then
      ppLine36.Visible := True
   Else
      ppLine36.Visible := False;
end;

Procedure TFLiquidacionBeneficio.CopiarLiquidacion;
Var
   xSql, xinicio, xfinal: String;
   xReg:String;
   montofondo:Double;
begin
      // Llenando registros para la presentación
      xSql:='SELECT REGPENID, CODAFP, ASODESLAB, ASODIRLAB, ASODSTLABID, ASOID, ASOAPENOMDNI, ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASODNI, ZIPID, ASOCODMOD, ASOCODAUX, ASODESLAB, ASODSTLABID, USEID, '
           +       'UPAGOID, UPROID, ASODIR, TIPDOCCOD, ASODOCNUM, ASOTELF1, IDIMAGE, ASOFRESNOM, ASORESNOM, ASOFRESCESE, ASORESCESE, AUTDESAPO, ASOAPECASDNI, AUTDESAPO, FECAUTDESAPO '
           + 'FROM APO201 WHERE ASOID = ' + QuotedStr( DM1.cdsCabLiq.FieldByName('ASOID').AsString);
      DM1.cdsAsociado.Close;
      DM1.cdsAsociado.DataRequest(xSql);
      DM1.cdsAsociado.Open;

      xSql:='select PVSEXPNRO from PVS306 '
           + 'where ASOID='+QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
           +  ' and PVSLBENNR='+QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;

      xSql:='SELECT ciaid, pvsexpnro, pvstipben, asoid, asocodmod, asocodaux, dptoid_xx, ciuid_xx, '
           +       'pvsestado, pvsfecini_xx, pvsresnom_xx, pvsfresnm_xx, pvsresces_xx, pvsfrescs_xx, '
           +       'pvsfinval_xx, pvsfnaci_xx, pvsedad_xx, pvsffalle_xx, pvscausa, forpagoid, bancoid, '
           +       'pvsnrocta_xx, pvsimpben_xx, pvsapoaa_xx, pvsapomm_xx, pvsapodd_xx, pvssexo_xx, regpenid_xx, '
           +       'pvsultapo, pvsliqnro_xx, pvsvou_xx, pvsfconc_xx, pvsconcl_xx, usuario, freg, hreg, agenbcoid, '
           +       'pvsnom_xx, pvsnrochq_xx, pvsfliq_xx, pvsdnideudo_xx, reprid, bcodptoid_xx, pvsncargo_xx, '
           +       'pvsnabono_xx, asocobben_xx, useid_xx, upagoid_xx, uproid_xx, pvscobaso, asoapenomdni, asoncta, '
           +       'pvslbennr, pvslfecbe, asoresnom, asofresnom, asorescese, asofrescese, asofecnac, tipdoccod, '
           +       'asodocnum, asodni, asofecinv, asofecfal, ofdesidori, disoriexp, pvssegui_xx, usu_anu, fec_anu, '
           +       'com_anu, codotrdocide, numotrdocide, pvsfecexp, usucreexp, apenomsol, dnisol, vinparsol, forsolben, '
           +       'pvstipret, genporweb, versede, conofide, cod_err_dni, obs_memo_actual, tipbenef, codcauces '
           + ' FROM PVS301 WHERE ASOID = '+QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
           +  ' AND PVSEXPNRO = '+QuotedStr(DM1.cdsQry.FieldByName('PVSEXPNRO').AsString);
      DM1.cdsExpLiq.Close;
      DM1.cdsExpLiq.DataRequest(xSql);
      DM1.cdsExpLiq.Open;

      DM1.totalMontoDescuento:= DM1.montoDescuento;

      DM1.formadepago( DM1.cdsCabLiq.FieldByName('ASOID').AsString );

      DM1.DCOM1.AppServer.SOLStartTransaction;

      Try
         DM1.cntanomm := Copy(DateToStr(DM1.FechaSys), 7, 4) + Copy(DateToStr(DM1.FechaSys), 4, 2);

         // Hallando numero de liquidación
         DM1.numeroLiquidacion := DM1.Gennumliq;

         CopiaBeneficio;

         GrabaDetFamilia;

         DM1.Grabafamiliares(DM1.cdsAsociado.FieldByName('ASOID').AsString);

         ActualizarDetalleLiquidacion;
      Except
         MessageDlg('Error al intentar actualizar la Base de datos', mtInformation, [mbOk], 0);
         DM1.DCOM1.AppServer.SOLRollBack;
         DM1.xSgr := 'G';
         btncerrar.OnClick(btncerrar);
         Exit;
      End;

      DM1.DCOM1.AppServer.SOLCommit;

      MessageDlg('Liquidación Generada de manera satisfactoria', mtInformation, [mbOk], 0);
      DM1.xSgr := 'G';
      btncerrar.OnClick(btncerrar);
end;

Procedure TFLiquidacionBeneficio.ActualizarDetalleLiquidacion;
Var
   xSql: String;
Begin
   // Pago de Creditos
   xSql:='UPDATE CRE310 '
       +   'SET CREDOCPAG = '''+DM1.numeroLiquidacion+''' '
      + ' WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
      + '   AND CREDOCPAG = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
      + '   AND CREESTID NOT IN (''04'', ''13'')';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   //  Descuentos por aplicaciones de CCI
   xSql:='update COB_APLI_CCI_DET '
        +  ' SET NUMLIQBEN=' + QuotedStr(DM1.numeroLiquidacion)
        +' WHERE NUMLIQBEN=' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
        +  ' AND ASOID = '   + QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Nivelaciones
   xSql:='UPDATE APO301 '
      + '   SET TRANSNOPE = ' + QuotedStr(DM1.numeroLiquidacion)
      + ' WHERE ASOID = '     + QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
      + '   AND TRANSNOPE = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Devoluciones
   xSql:='UPDATE APO305 '
      + '   SET TRANSNOPE = ' + QuotedStr(DM1.numeroLiquidacion)
      + ' WHERE ASOID     = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
      + '   AND TRANSNOPE = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
      + '   AND USUANU IS NULL';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // cobros realizados al fondo solidario
   xSql:='UPDATE COB_FSC_PAGOS_AL_FSC '
      +  '   SET NROOPE = '+ QuotedStr(DM1.numeroLiquidacion)
      +  ' WHERE ASOID = '+QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
      +  '   AND NROOPE = '+QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
      +  '   AND EST_COB_COD NOT IN (''04'',''13'')';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Resoluciones
   xSql:='UPDATE ASO_RESOLUCIONES '
      +  '   SET NUMLIQ = '+ QuotedStr(DM1.numeroLiquidacion)
      +  ' WHERE ASOID = '+QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
      +  '   AND NUMLIQ = '+QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Expediente
   xSql:='UPDATE PVS301 '
        +   'SET PVSLBENNR = ' + QuotedStr(DM1.numeroLiquidacion)+', '
        +       'PVSLFECBE = TO_DATE(SYSDATE) '
        + 'WHERE ASOID = '+QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
        +  ' AND PVSEXPNRO = '+QuotedStr(DM1.cdsExpLiq.FieldByName('PVSEXPNRO').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Cartas de designación
   xSql:='UPDATE PVS302 '
        +   'SET PVSLBENNR = ' + QuotedStr(DM1.numeroLiquidacion)
        + 'WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByname('ASOID').AsString)
        +  ' AND ( PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
        +   ' OR PVSLBENNR IS NULL )';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Cartas de designación
   xSql:='UPDATE PVS303 '
        +  ' SET PVSLBENNR = ' + QuotedStr(DM1.numeroLiquidacion) + ' '
        + 'WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByname('ASOID').AsString)
        +  ' AND ( PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
        +   ' OR PVSLBENNR IS NULL )';
   DM1.DCOM1.AppServer.EjecutaSql(xSql);

   // Retenciones judiciales
   xSql:='UPDATE PVS304 '
        +  ' SET PVSLBENNR = ' + QuotedStr(DM1.numeroLiquidacion) + ' '
        + 'WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByname('ASOID').AsString)
         + ' AND ( PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
        +   ' OR PVSLBENNR IS NULL )';
   DM1.DCOM1.AppServer.EjecutaSql(xSql);

   // Retenciones judiciales
   xSql:='UPDATE PVS305 '
        +  ' SET PVSLBENNR = ' + QuotedStr(DM1.numeroLiquidacion) + ' '
        + 'WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByname('ASOID').AsString)
        +  ' AND ( PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
        +   ' OR PVSLBENNR IS NULL )';
   DM1.DCOM1.AppServer.EjecutaSql(xSql);

   // Familiares
   xSql:='UPDATE APO203 '
        +  ' SET PVSLBENNR = ' + QuotedStr(DM1.numeroLiquidacion) + ' '
        + 'WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByname('ASOID').AsString)
        +  ' AND ( PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
        +   ' OR PVSLBENNR IS NULL )';
   DM1.DCOM1.AppServer.EjecutaSql(xSql);

   // Libretas
   xSql:='UPDATE PVS308 '
        +  ' SET PVSLBENNR = ' + QuotedStr(DM1.numeroLiquidacion) + ' '
        + 'WHERE ASOID = ' + QuotedStr(DM1.cdsCabLiq.FieldByname('ASOID').AsString)
        +  ' AND ( PVSLBENNR = ' + QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)
        +   ' OR PVSLBENNR IS NULL )';
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
End;

Procedure TFLiquidacionBeneficio.GrabaDetFamilia;
Var
   item: Integer;
   xCremort, xCreinteres, xCreflat, xIntncob, xValor: Double;
   xSql, xVoucher, xFlgVoucher, xDif: String;
begin
   xSql:='delete from PVS307 '
        + 'where pvslbennr='''+DM1.numeroLiquidacion+''' and pvslagrid=''FPG''';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Formas de Pago (PVS307)
   DM1.numeroVoucherLib := '';
   DM1.numeroVoucher := '';
   DM1.cdsForPag.First;
   While Not DM1.cdsForPag.Eof Do
   Begin
      item := item + 1;
      // Tomando voucher para las libretas de ahorros y otras formas de pago
      If (DM1.cdsForPag.FieldByName('FORPAGID').AsString = '11') And (DM1.numeroVoucherLib = '') Then DM1.numeroVoucherLib := DM1.Gennumvou;
      If (DM1.cdsForPag.FieldByName('FORPAGID').AsString <> '11') Then DM1.numeroVoucher := DM1.Gennumvou;
      If DM1.cdsForPag.FieldByName('FORPAGID').AsString = '11' Then
         xVoucher := DM1.numeroVoucherLib
      Else
         xVoucher := DM1.numeroVoucher;
      If DM1.cdsForPag.FieldByName('PORCENTAJE').AsFloat = 0 Then
         xValor := 0
      Else
         xValor := DM1.cdsForPag.FieldByName('PORCENTAJE').AsFloat;
      xSql := 'INSERT INTO PVS307 (CIAID, PVSLBENNR, PVSLTIPBE,PVSLAGRID,PVSLSEC,PVSLCONCE,PVSLMONTO,USUARIO,FREG,'
         + ' HREG,PVSLNVOU,BANCOID, FORPAGOID, PVSLSALDO, PVSNOMBRE,FLGVOUCHER, AGENBCOID, PVSLDNIBEN, PVSLNCTA, APENOMTUT,'
         + ' DOCIDETUT, FECNACMEN, PORDES, APEPATTUT, APEMATTUT, NOMTUT, APEPATCOB, APEMATCOB, NOMCOB, CODRELCOB, DIRDOMCOB, CODZIPCOB, TELFIJCOB, TELMOVCOB, APECASCOB)'
         + ' VALUES (' + QuotedStr('02') + ',' + QuotedStr(DM1.numeroLiquidacion) + ',' + QuotedStr(DM1.cdsExpLiq.FieldByName('PVSTIPBEN').AsString)
         + ',' + QuotedStr('FPG') + ',' + IntToStr(item) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('DESC').AsString) + ',' + FloatToStr(DM1.cdsForPag.FieldByName('MONTO').AsFloat)
         + ',' + QuotedStr(DM1.wUsuario) + ', TO_CHAR(SYSDATE, ''DD/MM/YYYY''), SYSDATE, ' + QuotedStr(xVoucher) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('BANCOID').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('FORPAGID').AsString)
         + ',' + FloatToStr(DM1.cdsForPag.FieldByName('MONTO').AsFloat) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('PVSNOMBRE').AsString)
         + ',' + QuotedStr('S') + ',' + QuotedStr(DM1.cdsForPag.FieldByName('AGENBCOID').AsString) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('PVSLDNIBEN').AsString) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('PVSLNCTA').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APENOMTUT').AsString) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('DOCIDETUT').AsString) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('FECNACMEN').AsString)
         + ',' + FloatToStr(xValor)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APEPATTUT').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APEMATTUT').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('NOMTUT').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APEPATCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APEMATCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('NOMCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('CODRELCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('DIRDOMCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('CODZIPCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('TELFIJCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('TELMOVCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APECASCOB').AsString)
         + ')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      DM1.cdsForPag.Next;
      item := item + 1;
      If DM1.cdsForPag.FieldByName('PORCENTAJE').AsFloat = 0 Then
         xValor := 0
      Else
         xValor := DM1.cdsForPag.FieldByName('PORCENTAJE').AsFloat;
      xSql := 'INSERT INTO PVS307 (CIAID, PVSLBENNR, PVSLTIPBE,PVSLAGRID,PVSLSEC,PVSLCONCE,PVSLMONTO,USUARIO,FREG,'
         + ' HREG,PVSLNVOU,BANCOID, FORPAGOID, PVSLSALDO, PVSNOMBRE,FLGVOUCHER, AGENBCOID, PVSLDNIBEN, PVSLNCTA, APENOMTUT, DOCIDETUT, FECNACMEN, PORDES,'
         + ' APEPATTUT, APEMATTUT, NOMTUT, APEPATCOB, APEMATCOB, NOMCOB, CODRELCOB, DIRDOMCOB, CODZIPCOB, TELFIJCOB, TELMOVCOB, APECASCOB)'
         + ' VALUES (' + QuotedStr('02') + ',' + QuotedStr(DM1.numeroLiquidacion) + ',' + QuotedStr(DM1.cdsExpLiq.FieldByName('PVSTIPBEN').AsString)
         + ',' + QuotedStr('FPG') + ',' + IntToStr(item) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('DESC').AsString) + ',' + FloatToStr(DM1.cdsForPag.FieldByName('MONTO').AsFloat)
         + ',' + QuotedStr(DM1.wUsuario) + ', TO_CHAR(SYSDATE, ''DD/MM/YYYY''), SYSDATE, ' + QuotedStr(xVoucher) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('BANCOID').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('FORPAGID').AsString)
         + ',' + FloatToStr(DM1.cdsForPag.FieldByName('MONTO').AsFloat) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('PVSNOMBRE').AsString)
         + ',' + QuotedStr('N') + ',' + QuotedStr(DM1.cdsForPag.FieldByName('AGENBCOID').AsString) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('PVSLDNIBEN').AsString) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('PVSLNCTA').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APENOMTUT').AsString) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('DOCIDETUT').AsString) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('FECNACMEN').AsString)
         + ',' + FloatToStr(xValor)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APEPATTUT').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APEMATTUT').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('NOMTUT').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APEPATCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APEMATCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('NOMCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('CODRELCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('DIRDOMCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('CODZIPCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('TELFIJCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('TELMOVCOB').AsString)
         + ',' + QuotedStr(DM1.cdsForPag.FieldByName('APECASCOB').AsString)
         + ')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      // Grabando en tabla de cheques los que son para pagar por cheques
      If (DM1.cdsForPag.FieldByName('MONTO').AsFloat > 0) And (DM1.cdsForPag.FieldByName('FORPAGID').AsString = '01') Then
      Begin
         xSql := 'INSERT INTO PVS_CHE_GEN_CAB(ASOID, PVSLBENNR, APENOMBEN, DOCIDEBEN, MONCHE, ESTCHE, PORDES, PVSNVOU, PVSLTIPBE, PVSLFECBE, BANCOID)'
            + ' VALUES (' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ',' + QuotedStr(DM1.numeroLiquidacion) + ',' + QuotedStr(DM1.cdsForPag.FieldByName('PVSNOMBRE').AsString)
            + ',' + QuotedStr(DM1.cdsForPag.FieldByName('PVSLDNIBEN').AsString) + ',' + FloatToStr(DM1.cdsForPag.FieldByName('MONTO').AsFloat) + ',' + QuotedStr('01') + ',' + FloatToStr(xValor)
            + ',' + QuotedStr(DM1.numeroVoucher) + ',' + QuotedStr(DM1.cdsExpLiq.FieldByName('PVSTIPBEN').AsString) + ', TO_CHAR(SYSDATE, ''DD/MM/YYYY''),' + QuotedStr(DM1.cdsForPag.FieldByName('BANCOID').AsString) + ')';
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      End;
      DM1.cdsForPag.Next;
   End;
  // Formas de Pago Retenciones Judiciales
   DM1.numeroVoucherLib := '';
   DM1.numeroVoucher := '';
   DM1.cdsRetJud.First;
end;

Procedure TFLiquidacionBeneficio.CopiaBeneficio;
Var
   sSql : String;
Begin

  sSql:='Insert into pvs306 (ciaid, pvslbennr, pvsltipbe, pvslfecbe, asoid, asocodmod, asocodaux,  pvslulap, pvsltaap, pvslestad, pvsexpnro,'
  +' usuario, freg, hreg, pvsestliq, pvsfanul, pvsusuanul, pvsmotanul, cntanomm, tipocont, cntflag, pvscobaso, asoapenomdni, tipdoccod, asodocnum,'
  +' useid, upagoid, uproid, asodir, zipid, asodeslab, asodirlab, asodstlabid, asoresnom, asofresnom, asorescese, asofrescese, asoncta, monliqben,'
  +' mondes, mondev, monpag, asodni, asotelf1, codotrdocide, numotrdocide, autdesapo, fecautdesapo, pvstipret, numopeban, fecopeban, numbenori,'
  +' diferido, fecdifliq)'
  +' select ciaid, '+QuotedStr(DM1.numeroLiquidacion)+', pvsltipbe, to_date(sysdate), asoid, asocodmod, asocodaux,  pvslulap, pvsltaap, pvslestad, pvsexpnro,'
  +' usuario, to_date(sysdate), sysdate, '+QuotedStr('02')+', null, null, null, cntanomm, tipocont, cntflag, pvscobaso, asoapenomdni, tipdoccod, asodocnum,'
  +' useid, upagoid, uproid, asodir, zipid, asodeslab, asodirlab, asodstlabid, asoresnom, asofresnom, asorescese, asofrescese, asoncta, monliqben,'
  +' mondes, mondev, monpag, asodni, asotelf1, codotrdocide, numotrdocide, autdesapo, fecautdesapo, pvstipret, numopeban,'
  +' fecopeban,'+QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString)+', diferido, fecdifliq'
  +' from pvs306 where PVSLBENNR = '+QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString);
  DM1.DCOM1.AppServer.EjecutaSQL(sSql);
  sSql:='insert into pvs307 (ciaid, pvslbennr, pvsltipbe, pvslagrid, pvslsec, pvslconce, pvslmonto, usuario, freg, hreg, pvslnvou, credid, bancoid,'
  +' forpagoid, pvslsaldo, pvsnombre, pvspagado, flgvoucher, pvslnofc, agenbcoid, nrocheque, cntflag, pvslncta, pvsldniben, pordes, creamort,'
  +' creinteres, creflat, intncob, tipdes, apenomtut, docidetut, fecnacmen, fecpag, usupag, codrelcob, nomcob, apematcob, apepatcob, nomtut, '
  +' apemattut, apepattut, salcreantliq, numcheger, dniruc, usuimpcheger, fechorimpcheger, codotrdocide, numotrdocide, moncobdesgrav, dirdomcob,'
  +' codzipcob, telfijcob, telmovcob, apecascob, fechoremail, fechormovil, emailcob)'
  +' select ciaid, '+QuotedStr(DM1.numeroLiquidacion)+', pvsltipbe, pvslagrid, pvslsec, pvslconce, pvslmonto, usuario, freg, hreg, pvslnvou, credid, bancoid,'
  +' forpagoid, pvslsaldo, pvsnombre, pvspagado, flgvoucher, null, agenbcoid, nrocheque, cntflag, pvslncta, pvsldniben, pordes, creamort,'
  +' creinteres, creflat, intncob, tipdes, apenomtut, docidetut, fecnacmen, fecpag, usupag, codrelcob, nomcob, apematcob, apepatcob, nomtut,'
  +' apemattut, apepattut, salcreantliq, numcheger, dniruc, usuimpcheger, fechorimpcheger, codotrdocide, numotrdocide, moncobdesgrav, dirdomcob,'
  +' codzipcob, telfijcob, telmovcob, apecascob, fechoremail, fechormovil, emailcob from pvs307 where PVSLBENNR = '+QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString);
  DM1.DCOM1.AppServer.EjecutaSQL(sSql);
  
  // Actualiza
  sSql:='select PVSEXPNRO from PVS306 '
       + 'where ASOID='+QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
       +  ' and PVSLBENNR='+QuotedStr(DM1.cdsCabLiq.FieldByName('PVSLBENNR').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(sSql);
  DM1.cdsQry.Open;

  sSql:='UPDATE PVS301 '
       +  ' SET PVSLBENNR = ''' + DM1.numeroLiquidacion +''' '
       + 'WHERE ASOID = '+QuotedStr(DM1.cdsCabLiq.FieldByName('ASOID').AsString)
       +  ' AND PVSEXPNRO = '+QuotedStr(DM1.cdsQry.FieldByName('PVSEXPNRO').AsString);
  DM1.DCOM1.AppServer.EjecutaSQL(sSql);
End;

procedure TFLiquidacionBeneficio.bbtnCerrarDifClick(Sender: TObject);
begin
   BotonesEstado( True );
end;

End.
//Final HPC_201702_ASO
