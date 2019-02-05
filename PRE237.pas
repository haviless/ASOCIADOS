// Inicio Uso Estándares: 01/08/2011
// Unidad               : PRE237
// Formulario           : Fmstapo
// Fecha de Creación    : 15/12/2003
// Autor                : Área de Desarrollo de Sistemas).
// Objetivo             : Impresión de los reportes de cuenta individual
// Actualizaciones
// HPP_201009_ASO, HPC_201009_ASO se copia opción de Consulta de Cuenta Individual del módulo de Previsión
// HPC_200312_ASO 15/12/2003 : Impresión de los diferentes reportes de cuenta individual.
// HPC_201119_ASO 18/08/2011 : permitir la impresión de la direccion en el reporte estadistico de la cuenta individual.
// HPP_201109_ASO,  se realiza el pase a producción, a partir del pase HPC_201119_ASO
// HPC_201301_ASO   se corrige error que ocurre durante el acceso al dataset, para solucionar
//                  se asigna un dataset creado exclusivamente para cada tipo de reporte 
// SPP_201303_ASO : El pase a producción se solicita a partir del HPC_201301_ASO
// HPC_201308_ASO : Se corrige la cantidad de meses aportados
// SPP_201309_ASO : Se realiza el pase a plataforma a partir de lo indicado en el HPC_201308_ASO
// HPC_201309_ASO : Se agrega un texto al final de los tres reportes, de la cuenta individual, sobre la firma del CADAP
// SPP_201310_ASO : Se realiza el pase a producción a partir del HPC_201309_ASO
// SPP_201402_ASO : Cambio del Logo en Reportes
// SPP_201402_ASO : Se realiza el pase a producción a partir del HPC_201401_ASO
// SPP_201403_ASO : Se añaden nuevo logo institucional.
// SPP_201403_ASO : Se realiza el pase a producción sobre el HPC_201402_ASO.
// HPC_201510_ASO : Agregar en Consultas aplicaciones de CCI

Unit PRE237;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB, DBClient,
   ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
   ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppParameter, ppStrtch,
   ppSubRpt, ppDBBDE, ppChrtDP, DbChart, ppChrt, Series, TeEngine,
   jpeg,
   ppMemo,
// Inicio HPC_201510_ASO   : Nueva Opción de Contactabilidad
   TeeProcs, Chart, ppEndUsr, Mask, wwdbedit, ppRegion; 
// Fin    HPC_201510_ASO   : Nueva Opción de Contactabilidad
Type
   Tfmstapo = Class(TForm)
      dbgcueind: TwwDBGrid;
      btnimprime: TBitBtn;
      btnSalir: TBitBtn;
      ppdbpcueind: TppDBPipeline;
      pprccueind: TppReport;
      ppHeaderBand3: TppHeaderBand;
      ppDetailBand3: TppDetailBand;
      ppSummaryBand3: TppSummaryBand;
      ppLine1: TppLine;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      pplblasocodmod: TppLabel;
      pplblasoapenomdni: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      pplblusenom: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      pplblupagonom: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      pplblupronom: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      pplblregpen: TppLabel;
      ppLabel12: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      pplblasoresnom: TppLabel;
      pplblasofresnom: TppLabel;
      pplblasorescese: TppLabel;
      pplblasofrescese: TppLabel;
      ppLabel15: TppLabel;
      ppLabel23: TppLabel;
      pplblanoapo: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      pplblcapacu: TppLabel;
      ppLine5: TppLine;
      ppLine7: TppLine;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppLabel40: TppLabel;
      ppDBText1: TppDBText;
      ppLabel41: TppLabel;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLabel39: TppLabel;
      ppltotacum: TppLabel;
      ppLblUser: TppLabel;
      ppLabel44: TppLabel;
      ppraportes: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppLine8: TppLine;
      ppSystemVariable4: TppSystemVariable;
      // Inicio: SPP_201403_ASO
      // ppLabel24: TppLabel;
      // ppLabel27: TppLabel;
      // Fin: SPP_201403_ASO
      ppLabel42: TppLabel;
      ppLabel43: TppLabel;
      ppSystemVariable5: TppSystemVariable;
      ppLabel45: TppLabel;
      ppLabel46: TppLabel;
      pplbltitulo_a: TppLabel;
      ppLabel48: TppLabel;
      ppLabel49: TppLabel;
      pplasocodmod_a: TppLabel;
      pplasoapenomdni_a: TppLabel;
      ppLabel54: TppLabel;
      ppLabel55: TppLabel;
      pplblusenom_a: TppLabel;
      ppLabel57: TppLabel;
      ppLabel58: TppLabel;
      pplblupagonom_a: TppLabel;
      ppLabel60: TppLabel;
      ppLabel61: TppLabel;
      pplblupronom_a: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      pplblregpen_a: TppLabel;
      ppLabel66: TppLabel;
      ppLabel67: TppLabel;
      ppLabel68: TppLabel;
      ppLabel69: TppLabel;
      pplblasoresnom_a: TppLabel;
      pplblasofresnom_a: TppLabel;
      pplblasoresces_a: TppLabel;
      pplblasofresces_a: TppLabel;
      ppLabel93: TppLabel;
      ppLabel94: TppLabel;
      ppSystemVariable6: TppSystemVariable;
      ppDetailBand1: TppDetailBand;
      dbgaportes: TwwDBGrid;
      ppdbpestcue: TppDBPipeline;
      pprantes1997: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppLine9: TppLine;
      ppSystemVariable7: TppSystemVariable;
      // Inicio: SPP_201403_ASO
      // ppLabel52: TppLabel;
      // ppLabel53: TppLabel;
      // Fin: SPP_201403_ASO
      ppLabel56: TppLabel;
      ppLabel59: TppLabel;
      ppSystemVariable8: TppSystemVariable;
      ppLabel62: TppLabel;
      ppLabel65: TppLabel;
      pplbltitulo_b: TppLabel;
      ppLabel71: TppLabel;
      ppLabel72: TppLabel;
      pplblasocodmod_b: TppLabel;
      pplblasoapenomdni_b: TppLabel;
      ppLabel78: TppLabel;
      ppLabel79: TppLabel;
      pplblusenom_b: TppLabel;
      ppLabel83: TppLabel;
      ppLabel84: TppLabel;
      pplblupagonom_b: TppLabel;
      ppLabel86: TppLabel;
      ppLabel88: TppLabel;
      pplblupronom_b: TppLabel;
      ppLabel90: TppLabel;
      ppLabel92: TppLabel;
      pplblregpen_b: TppLabel;
      ppLabel97: TppLabel;
      ppLabel99: TppLabel;
      ppLabel100: TppLabel;
      ppLabel101: TppLabel;
      pplblasoresnom_b: TppLabel;
      pplblasofresnom_b: TppLabel;
      pplblasoresces_b: TppLabel;
      pplblasofresces_b: TppLabel;
      ppLine10: TppLine;
      ppLine15: TppLine;
      ppLabel106: TppLabel;
      ppLabel107: TppLabel;
      ppLabel108: TppLabel;
      ppLabel109: TppLabel;
      ppLabel110: TppLabel;
      ppLabel111: TppLabel;
      ppSystemVariable9: TppSystemVariable;
      ppLabel112: TppLabel;
      ppLabel113: TppLabel;
      ppLabel114: TppLabel;
      ppLabel115: TppLabel;
      ppLabel116: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppSummaryBand2: TppSummaryBand;
      ppLine16: TppLine;
      pplbluser_b: TppLabel;
      ppLabel121: TppLabel;
      ppLine17: TppLine;
      pplblmonben_b: TppLabel;
      ppLabel120: TppLabel;
      pplblbeneficio_b: TppLabel;
      lblnoaportes: TLabel;
      rgtiprep: TRadioGroup;
      rgmodcueind: TRadioGroup;
      pprcueindres: TppReport;
      ppParameterList1: TppParameterList;
      ppbderes20002004: TppBDEPipeline;
      ppbdeal2000: TppBDEPipeline;
      ppdbRepLiqxFallec: TppDBPipeline;
      // Inicio: SPP_201303_ASO
      ppbdedetalle: TppBDEPipeline;
      ppsrdesfecces: TppSubReport;
      ppChildReport3: TppChildReport;
      ppTitleBand2: TppTitleBand;
      ppDetailBand4: TppDetailBand;
      ppSummaryBand4: TppSummaryBand;
      ppLabel104: TppLabel;
      ppLabel155: TppLabel;
      ppLabel157: TppLabel;
      ppLabel160: TppLabel;
      ppLabel165: TppLabel;
      ppLine24: TppLine;
      ppLine28: TppLine;
      ppLabel161: TppLabel;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppDBText27: TppDBText;
      ppLine29: TppLine;
      ppLine33: TppLine;
      ppLabel162: TppLabel;
      ppdbpapodesces: TppBDEPipeline;
      ppDBCalc1: TppDBCalc;
      ppLabel1: TppLabel;
      ppLine13: TppLine;
      ppLabel95: TppLabel;
      ppLabel98: TppLabel;
      ppLabel192: TppLabel;
      ppLabel194: TppLabel;
      ppLabel197: TppLabel;
      ppLabel198: TppLabel;
      ppLine47: TppLine;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText49: TppDBText;
      ppDBText50: TppDBText;
      ppLine39: TppLine;
      ppLine51: TppLine;
      ppLabel185: TppLabel;
      pplblmonben_a: TppLabel;
      pplbluser_a: TppLabel;
      ppLabel188: TppLabel;
      ppDBCalc13: TppDBCalc;
      ppDBCalc14: TppDBCalc;
      ppDBCalc15: TppDBCalc;
      ppLine11: TppLine;
      ppLabel183: TppLabel;
      ppLabel190: TppLabel;
      ppLabel193: TppLabel;
      ppSummaryBand8: TppSummaryBand;
      ppSubReport1: TppSubReport;
      ppChildReport5: TppChildReport;
      ppTitleBand5: TppTitleBand;
      ppLabel181: TppLabel;
      ppLabel182: TppLabel;
      ppLabel184: TppLabel;
      ppLabel186: TppLabel;
      ppLabel187: TppLabel;
      ppLine36: TppLine;
      ppLine40: TppLine;
      ppLabel189: TppLabel;
      ppLine41: TppLine;
      ppDetailBand9: TppDetailBand;
      ppDBText37: TppDBText;
      ppDBText38: TppDBText;
      ppDBText39: TppDBText;
      ppSummaryBand9: TppSummaryBand;
      ppLine45: TppLine;
      ppLabel191: TppLabel;
      ppDBCalc7: TppDBCalc;
      ppLabel195: TppLabel;
      ppLine46: TppLine;
      btnprocesar: TBitBtn;
      ppDBCalc8: TppDBCalc;
      ppSystemVariable1: TppSystemVariable;
// Inicio SPP_201402_ASO  : Cambio del Logo en Reportes
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppSystemVariable2: TppSystemVariable;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      pplblTitCueInd: TppLabel;
      ppLabel51: TppLabel;
      ppLabel145: TppLabel;
      ppSystemVariable3: TppSystemVariable;
      ppLabel168: TppLabel;
      ppMemo3: TppMemo;
      ppMemo4: TppMemo;
      ppBDEdetapo: TppBDEPipeline;
      pprresest: TppReport;
      ppParameterList2: TppParameterList;
      cdsest: TClientDataSet;
      dsest: TDataSource;
      Image1: TImage;
      Chart1: TChart;
      Series1: TPieSeries;
      ppLabel166: TppLabel;
    ppDesigner1: TppDesigner;
    ppHeaderBand4: TppHeaderBand;
    ppLine18: TppLine;
    ppSystemVariable10: TppSystemVariable;
// Fin SPP_201402_ASO  : Cambio del Logo en Reportes
    ppLabel77: TppLabel;
    ppLabel80: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppLabel85: TppLabel;
    ppLabel89: TppLabel;
    ppTitPrin: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    pplasocodmod: TppLabel;
    pplasoapenomdni: TppLabel;
    ppLabel117: TppLabel;
    ppLabel118: TppLabel;
    pplusenom: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    pplupagonom: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    pplupronom: TppLabel;
    ppLabel128: TppLabel;
    ppLabel129: TppLabel;
    pplregpendes: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    pplnumresnom: TppLabel;
    pplfecresnom: TppLabel;
    pplnumresces: TppLabel;
    pplfecresces: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    pplanoapo: TppLabel;
    ppLine21: TppLine;
    ppLabel158: TppLabel;
    ppLabel159: TppLabel;
    ppSystemVariable12: TppSystemVariable;
    ppLine25: TppLine;
    ppsrresumen: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLabel124: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel138: TppLabel;
    ppLabel144: TppLabel;
    ppLabel105: TppLabel;
    ppLabel119: TppLabel;
    ppLine27: TppLine;
    pplblres20002004: TppLabel;
    ppLine26: TppLine;
    ppLabel127: TppLabel;
    ppLabel130: TppLabel;
    ppLabel137: TppLabel;
    ppLabel141: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine23: TppLine;
    ppsrdetalle: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppltitdet: TppLabel;
    ppLine30: TppLine;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppLine31: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBText31: TppDBText;
    pplnommes: TppLabel;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine32: TppLine;
    ppsrapodesces: TppSubReport;
    ppChildReport6: TppChildReport;
    ppTitleBand6: TppTitleBand;
    ppLabel47: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel81: TppLabel;
    ppLine14: TppLine;
    ppLine38: TppLine;
    ppLabel82: TppLabel;
    ppLine42: TppLine;
    ppDetailBand10: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine43: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLabel91: TppLabel;
    ppLine44: TppLine;
    ppLabel28: TppLabel;
    // ppImage1: TppImage; SPP_201403_ASO
    ppTitAcumHasta1997: TppLabel;
    ppDBAcumHasta1997: TppDBText;
    ppLabel146: TppLabel;
    pplFecUltApo: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand10: TppSummaryBand;
    ppShape1: TppShape;
    pplsalacu: TppLabel;
    pplusuario: TppLabel;
    ppLabel209: TppLabel;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    pplbonacu: TppLabel;
    pplintacu: TppLabel;
    ppltotAcu: TppLabel;
    pplporapoacu: TppLabel;
    pplporbonacu: TppLabel;
    pplporintacu: TppLabel;
    pplportotacu: TppLabel;
    ppLine34: TppLine;
    pplapoacu: TppLabel;
    ppLabel212: TppLabel;
    ppMemo2: TppMemo;
    ppDesigner2: TppDesigner;
    ppHeaderBand7: TppHeaderBand;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    pplasoapenomdni_nc: TppLabel;
    pplasodni_nc: TppLabel;
    pplasodir_nc2_l1: TppLabel;
    ppldst_nc: TppLabel;
    pplprv_nc: TppLabel;
    ppldep_nc: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    pplasotelf1_nc: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLabel264: TppLabel;
    ppLabel266: TppLabel;
    pplasocodmod_nc: TppLabel;
    pplunipro_nc: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppldstdeslab_nc: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    pplprvdeslab_nc: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppldepdeslab_nc: TppLabel;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppluniges_nc: TppLabel;
    pplunipag_nc: TppLabel;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    pplasodeslab_nc: TppLabel;
    pplasodirleb_nc: TppLabel;
    pplasofresnom_nc: TppLabel;
    ppLabel280: TppLabel;
    pplasoresnom_nc: TppLabel;
    ppLabel231: TppLabel;
    pplanoapo_nc: TppLabel;
    ppShape4: TppShape;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel248: TppLabel;
    ppLabel258: TppLabel;
    ppLabel261: TppLabel;
    ppShape9: TppShape;
    ppShape11: TppShape;
    ppShape10: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppldesini: TppLabel;
    pplapoini: TppLabel;
    pplintini: TppLabel;
    pplbonini: TppLabel;
    pplsalini: TppLabel;
    ppLabel50: TppLabel;
    pplcpocenedu: TppLabel;
    ppLabel167: TppLabel;
    ppLabel169: TppLabel;
    ppLabel87: TppLabel;
    ppLabel170: TppLabel;
    pplcpoNIVEDU: TppLabel;
    pplasodir_nc2_l2: TppLabel;
    ppLabel142: TppLabel;
    ppLabel143: TppLabel;
    pplFecCalculo: TppLabel;
    ppLabel147: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText40: TppDBText;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape21: TppShape;
    pplanomes: TppLabel;
    ppSummaryBand7: TppSummaryBand;
    ppShape17: TppShape;
    ppShape20: TppShape;
    ppLabel163: TppLabel;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape22: TppShape;
    pplapofin: TppLabel;
    pplintfin: TppLabel;
    pplbonfin: TppLabel;
    pplsalfin: TppLabel;
    ppImage3: TppImage;
    pplsaldoal: TppLabel;
    pplblMsj1: TppLabel;
    ppLabel148: TppLabel;
    ppDesigner3: TppDesigner;
    ppcadap: TppLabel;
    ppcadap2: TppLabel;
    ppcadap3: TppLabel;
    ppImage4: TppImage;  // SPP_201403_ASO
    ppImage5: TppImage;  // SPP_201403_ASO
    ppImage2: TppImage;
    ppImage1: TppImage;  // SPP_201403_ASO
// Fin SPP_201402_ASO  : Cambio del Logo en Reportes
// Inicio  HPC_201510_ASO : Agregar en Consultas aplicaciones de CCI
    pnlCCI: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeTotCCI: TwwDBEdit;
    dbeSaldo: TwwDBEdit;
    ppdbCCIDet: TppBDEPipeline;
    ppdbCCIDetppField1: TppField;
    ppdbCCIDetppField2: TppField;
    ppdbCCIDetppField3: TppField;
    ppdbCCIDetppField4: TppField;
    ppdbCCIDetppField5: TppField;
    ppdbCCIDetppField6: TppField;
    ppdbCCI: TppBDEPipeline;
    ppRegion2: TppRegion;
    ppFooterBand1: TppFooterBand;
    ppSubReport2: TppSubReport;
    ppRegion1: TppRegion;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    ppShape24: TppShape;
    ppShape23: TppShape;
    ppDBText42: TppDBText;
    ppLabel96: TppLabel;
    ppSummaryBand11: TppSummaryBand;  // SPP_201403_ASO
    ppLabel13: TppLabel;
    ppRegion3: TppRegion;
    ppLabel219: TppLabel;
    ppSubReport3: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppLine6: TppLine;
    ppLabel27: TppLabel;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand11: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText48: TppDBText;
    ppDBText51: TppDBText;
    ppLabel14: TppLabel;
    ppLabel24: TppLabel;
    ppLine12: TppLine;
    ppLine19: TppLine;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand12: TppSummaryBand;
    ppLine4: TppLine;
    ppDBCalc9: TppDBCalc;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLine20: TppLine;
    ppLine35: TppLine;
    ppLine37: TppLine;
    ppLine48: TppLine;
    ppDBText52: TppDBText;
    ppLabel70: TppLabel;
    ppLabel73: TppLabel;
    ppParameterList3: TppParameterList;
    ppSubReport4: TppSubReport;
    ppChildReport8: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppLine49: TppLine;
    ppLabel208: TppLabel;
    ppHeaderBand6: TppHeaderBand;
    ppDetailBand13: TppDetailBand;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppLabel213: TppLabel;
    ppLabel214: TppLabel;
    ppLine50: TppLine;
    ppLine52: TppLine;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand13: TppSummaryBand;
    ppLine53: TppLine;
    ppDBCalc10: TppDBCalc;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine56: TppLine;
    ppLine57: TppLine;
    ppDBText56: TppDBText;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
// Fin  HPC_201510_ASO : Agregar en Consultas aplicaciones de CCI

      Procedure FormActivate(Sender: TObject);
      Procedure btnSalirClick(Sender: TObject);
      Procedure pplblNombreMesPrint(Sender: TObject);
      Procedure pplbluser_aPrint(Sender: TObject);
      Procedure ppLabel95Print(Sender: TObject);
      Procedure pplusuarioPrint(Sender: TObject);
      Procedure ppLabel180Print(Sender: TObject);
      Procedure ppLblUserPrint(Sender: TObject);
      Procedure rgtiprepClick(Sender: TObject);
      Procedure btnimprimeClick(Sender: TObject);
      Procedure btnprocesarClick(Sender: TObject);
      Procedure ppMemo2Print(Sender: TObject);
      Procedure ppMemo3Print(Sender: TObject);
      Procedure ppMemo4Print(Sender: TObject);
      Procedure ppLabel20Print(Sender: TObject);
      Procedure ppLabel132Print(Sender: TObject);
      Procedure pplanomesPrint(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
   Private
    { Private declarations }
   Public
      xanomesnom, xanomesces, xSql, anoultapo, mesultapo: String;
      xaportes, xbonus, xinteres, xmonini: Double;
    { Public declarations }
   End;

Var
   fmstapo: Tfmstapo;

Implementation

Uses ASODM, VCLCom;
{$R *.dfm}

Procedure Tfmstapo.FormActivate(Sender: TObject);
Begin
   If DM1.xSgr = 'R' Then
   Begin
      rgtiprep.ItemIndex := 0;
      rgtiprep.Enabled := False;
   End;
   dbgcueind.Visible := True;
   dbgcueind.Top := 61;
   dbgcueind.Left := 8;
   dbgaportes.Visible := False;
   // Inicio: SPP_201303_ASO
   If DM1.cdsestapo.Active Then DM1.cdsestapo.EmptyDataSet;
   If DM1.cdsCueInd.Active Then DM1.cdsCueInd.EmptyDataSet;
   // Fin: SPP_201303_ASO
   
   If DM1.xpvslbennr <> '' Then
   Begin
      If DM1.cdsQry2.Active Then
      Begin
         If (DM1.cdsQry2.FieldByName('PVSTIPBEN').AsString = '01')
            And (Copy(DM1.cdsQry2.FieldByName('ASOFRESCESE').AsString, 7, 4) + Copy(DM1.cdsQry2.FieldByName('ASOFRESCESE').AsString, 4, 2) >= '199912') Then
         Begin
            rgtiprep.ItemIndex := 0;
            rgtiprep.Enabled := False;
         End;
      End;
   End;

   btnimprime.Enabled := False;
   rgmodcueind.Enabled := False;

// Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
   pnlCCI.Visible:=False;
// Fin HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
End;

Procedure Tfmstapo.btnSalirClick(Sender: TObject);
Begin
   fmstapo.Close;
End;

Procedure Tfmstapo.pplblNombreMesPrint(Sender: TObject);
Begin
   // Inicio: SPP_201303_ASO
   pplnommes.Caption := DM1.NombreMes(DM1.cdsCtaIndAnoAct.FieldByName('MES').AsString);
   // Fin: SPP_201303_ASO
End;

Procedure Tfmstapo.pplbluser_aPrint(Sender: TObject);
Begin
   // Inicio: SPP_201303_ASO
   If DM1.cdsCtaIndApoCes.RecordCount > 0 Then pplbluser_a.Visible := False;
   // Fin: SPP_201303_ASO
End;

Procedure Tfmstapo.ppLabel95Print(Sender: TObject);
Begin

   If DM1.cdsQry2.Active Then
   Begin
      If DM1.cdsQry2.FieldByName('ASOFRESCESE').AsDateTime > StrToDate('30/11/1999') Then
      Begin
         ppLabel185.Visible := False;
         ppLabel188.Visible := False;
         pplblmonben_a.Visible := False;
      End;
   End
   Else
   Begin
      ppLabel185.Visible := True;
      ppLabel188.Visible := True;
      pplblmonben_a.Visible := True;
   End;
End;

Procedure Tfmstapo.pplusuarioPrint(Sender: TObject);
Begin
   // Inicio: SPP_201303_ASO
   If DM1.cdsCtaIndApoCes.RecordCount > 0 Then pplusuario.Visible := False;
   // Fin: SPP_201303_ASO
End;

Procedure Tfmstapo.ppLabel180Print(Sender: TObject);
Begin
   ppLabel191.Visible := True;
End;

Procedure Tfmstapo.ppLblUserPrint(Sender: TObject);
Begin
   // Inicio: SPP_201303_ASO
   If DM1.cdsCtaIndApoCes.RecordCount > 0 Then
      ppLblUser.Visible := False
   Else
      ppLblUser.Visible := True;
   // Fin: SPP_201303_ASO
End;

Procedure Tfmstapo.btnprocesarClick(Sender: TObject);
Var
   xultapo, xSql, xfecnom, xfecces: String;
   xapoofi, xaporec, xniv, xdev: Double;
// Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
   nSaldoCI : Double;
// Fin HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
Begin
   xfecnom := Copy(DM1.asofresnom, 7, 4) + Copy(DM1.asofresnom, 4, 2);
   xfecces := Copy(DM1.asofrescese, 7, 4) + Copy(DM1.asofrescese, 4, 2);
   xanomesnom := xfecnom;
   xanomesces := xfecces;
   xultapo := DM1.anoultapo + DM1.mesultapo;
   If rgtiprep.ItemIndex = 0 Then
   Begin
      xSql := 'SELECT SUBSTR(A.APOSEC,1,4) TRANSANO, SUBSTR(A.APOSEC,5,2) TRANSMES, SUBSTR(A.APOSEC,1,4)||''-''||SUBSTR(A.APOSEC,5,2) APOSEC,'
         + ' A.TRANSMTO, C.USENOM FROM APO301 A, APO201 B, APO101 C'
         + ' WHERE A.ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ' AND A.APOSEC > ' + QuotedStr(xfecces)
         + ' AND A.APOSEC <= ' + QuotedStr(xultapo)
         + ' AND A.ASOID = B.ASOID AND B.USEID = C.USEID AND B.UPAGOID = C.UPAGOID AND B.UPROID = C.UPROID ORDER BY APOSEC';
      // Inicio: SPP_201303_ASO
      DM1.cdsCtaIndApoCes.Close;
      DM1.cdsCtaIndApoCes.DataRequest(xSql);
      DM1.cdsCtaIndApoCes.Open;
      // Fin: SPP_201303_ASO
      If Copy(DM1.asofrescese, 7, 4) + Copy(DM1.asofrescese, 4, 2) < '199701' Then
      Begin
         MessageDlg('No se puede generar cuenta individual para fechas de cese menores a Ene/1997 ', mtInformation, [mbOk], 0);
         Exit;
      End;
      dbgcueind.Refresh;
      dbgcueind.Visible := True;
      dbgaportes.Visible := False;
      dbgcueind.Top := 61;
      dbgcueind.Left := 8;
      xSql := 'DELETE T_CTAIND1';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := 'BEGIN P_CUENTA_INDIVIDUAL(' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString)
         + ',' + QuotedStr(DM1.asofresnom) + ',' + QuotedStr(DM1.asofrescese) + ','''', ''N''); END;';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);

      xSql := 'SELECT * FROM T_CTAIND1 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString)
         + ' AND ANO||MES < to_char(sysdate,''YYYYMM'') '
         + ' ORDER BY ANO,MES';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      DM1.cdsCuentas.Close;
      DM1.cdsCuentas.DataRequest(xSql);
      DM1.cdsCuentas.Open;
      DM1.cdsCuentas.First;
      xmonini := DM1.cdsCuentas.FieldByName('ACUMESANT').AsFloat;
      If DM1.cdsCuentas.RecordCount > 0 Then
      Begin
         rgmodcueind.Enabled := True;
         btnimprime.Enabled := True;
      End
      Else
      Begin
         MessageDlg('No existe información de cuenta individual', mtInformation, [mbOk], 0);
         Exit;
      End;
      DM1.cdsCueInd.EmptyDataSet;
      dbgcueind.Visible := True;
      dbgcueind.Top := 61;
      dbgcueind.Left := 8;
      dbgaportes.Visible := False;
      lblnoaportes.Visible := False;
      TNumericField(DM1.cdsCueInd.FieldByName('CAPACU')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsCueInd.FieldByName('INTERES')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsCueInd.FieldByName('BONUS')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsCueInd.FieldByName('APORTE')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsCueInd.FieldByName('DEVOLUC')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsCueInd.FieldByName('TOTACU')).DisplayFormat := '###,###,##0.00';
      If DM1.cdsCuentas.Active = True Then
      Begin
         DM1.cdsCuentas.First;
         While Not DM1.cdsCuentas.Eof Do
         Begin
            DM1.cdsCueInd.Append;
            DM1.cdsCueInd.FieldByName('MES').AsString := DM1.NombreMes(DM1.cdsCuentas.FieldByName('MES').AsString);
            DM1.cdsCueInd.FieldByName('ANO').AsString := DM1.cdsCuentas.FieldByName('ANO').AsString;
            xSql := 'SELECT MAX(USEABR) USEABR FROM APO301 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString)
               + ' AND TRANSANO = ' + QuotedStr(DM1.cdsCuentas.FieldByName('ANO').AsString) + ' AND TRANSMES = ' + QuotedStr(DM1.cdsCuentas.FieldByName('MES').AsString);
            DM1.cdsQry.Close;
            DM1.cdsQry.DataRequest(xSql);
            DM1.cdsQry.Open;
            DM1.cdsCueInd.FieldByName('USENOM').AsString := DM1.cdsQry.FieldByName('USEABR').AsString;
            DM1.cdsCueInd.FieldByName('CAPACU').AsFloat := DM1.cdsCuentas.FieldByName('ACUMESANT').AsFloat;
            DM1.cdsCueInd.FieldByName('INTERES').AsFloat := DM1.cdsCuentas.FieldByName('INTCAPACU').AsFloat;
            DM1.cdsCueInd.FieldByName('BONUS').AsFloat := DM1.cdsCuentas.FieldByName('BONOS').AsFloat;
            DM1.cdsCueInd.FieldByName('APORTE').AsFloat := DM1.cdsCuentas.FieldByName('CAPITAL').AsFloat;
            DM1.cdsCueInd.FieldByName('DEVOLUC').AsFloat := DM1.cdsCuentas.FieldByName('TRANSMTODEV').AsFloat;
            DM1.cdsCueInd.FieldByName('TOTACU').AsFloat := DM1.cdsCuentas.FieldByName('ACUMULADO').AsFloat;
            ppltotacum.Caption := FormatFloat('###,###.00', DM1.cdsCueInd.FieldByName('TOTACU').AsFloat);
            DM1.cdsCuentas.Next;
         End;
      End;
      DM1.cdsCueInd.First;
      xaportes := 0;
      xbonus := 0;
      xinteres := 0;
      While Not DM1.cdsCueInd.Eof Do
      Begin
         xaportes := xaportes + DM1.cdsCueInd.FieldByName('APORTE').AsFloat;
         xbonus := xbonus + DM1.cdsCueInd.FieldByName('BONUS').AsFloat;
         xinteres := xinteres + DM1.cdsCueInd.FieldByName('INTERES').AsFloat;
         DM1.cdsCueInd.Next;
      End;
      DM1.cdsCueInd.First;
      dbgcueind.ColumnByName('APORTE').FooterValue := FormatFloat('###,###.#0', xaportes);
      dbgcueind.ColumnByName('BONUS').FooterValue := FormatFloat('###,###.#0', xbonus);
      dbgcueind.ColumnByName('INTERES').FooterValue := FormatFloat('###,###.#0', xinteres);
   End;
   If rgtiprep.ItemIndex = 1 Then
   Begin
      If xfecces < '199701' Then
      Begin
         btnimprime.Enabled := True;
         Exit;
      End;
      // Inicio: SPP_201303_ASO
      xSql := 'SELECT A.TRANSANO, A.TRANSMES, A.TRANSANO||''-''||A.TRANSMES APOSEC, A.TRANSMTO, C.USENOM FROM APO301 A, APO201 B, APO101 C'
         + ' WHERE A.ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ' AND A.TRANSANO||A.TRANSMES > ' + QuotedStr(xfecces)
         + ' AND A.TRANSANO||A.TRANSMES <= ' + QuotedStr(xultapo)
         + ' AND A.ASOID = B.ASOID AND B.USEID = C.USEID AND B.UPAGOID = C.UPAGOID AND B.UPROID = C.UPROID ORDER BY A.TRANSANO, A.TRANSMES';
      DM1.cdsCtaIndApoCes.Close;
      DM1.cdsCtaIndApoCes.DataRequest(xSql);
      DM1.cdsCtaIndApoCes.Open;
      // Fin: SPP_201303_ASO
      dbgaportes.Visible := True;
      dbgcueind.Visible := False;
      dbgaportes.Top := 61;
      dbgaportes.Left := 8;
      dbgaportes.Refresh;
      TNumericField(DM1.cdsestapo.FieldByName('APOOFI')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsestapo.FieldByName('APOREC')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsestapo.FieldByName('NIV')).DisplayFormat := '###,###,##0.00';
      TNumericField(DM1.cdsestapo.FieldByName('DEV')).DisplayFormat := '###,###,##0.00';
      xSql := 'SELECT C.USENOM, A.APOANO, A.APOMES, NVL(A.APOVALOR,0) APOVALOR, NVL(B.TRANSMTO,0) TRANSMTO, NVL(A.APOVALOR,0)-(NVL(B.TRANSMTO,0)-NVL(B.TRANSMTODEV,0)+NVL(B.DEVAPOBEN,0)) NIV'
         + ' FROM APO117 A, (SELECT TRANSANO, TRANSMES, MAX(USEID) USEID, MAX(UPAGOID) UPAGOID, MAX(UPROID) UPROID, SUM(NVL(TRANSMTO,0)) TRANSMTO, SUM(NVL(TRANSMTODEV,0)) TRANSMTODEV, SUM(NVL(DEVAPOBEN,0)) DEVAPOBEN'
         + ' FROM APO301 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ' AND FORPAGOABR <> ''BEN'' GROUP BY TRANSANO, TRANSMES) B, APO101 C WHERE APOANO||APOMES >= ' + QuotedStr(xfecnom) + ' AND APOANO||APOMES <= ' + QuotedStr(xfecces) + ' AND A.APOANO = B.TRANSANO(+)'
         + ' AND A.APOMES = B.TRANSMES(+) AND B.USEID = C.USEID(+) AND B.UPAGOID = C.UPAGOID(+) AND B.UPROID = C.UPROID(+) ORDER BY A.APOANO, A.APOMES';
      DM1.cdsQry25.Close;
      DM1.cdsQry25.DataRequest(xSql);
      DM1.cdsQry25.Open;
      If DM1.cdsQry25.RecordCount = 0 Then
      Begin
         Exit;
      End;
      btnimprime.Enabled := True;
      DM1.cdsestapo.EmptyDataSet;
      While Not DM1.cdsQry25.Eof Do
      Begin
         DM1.cdsestapo.Append;
         DM1.cdsestapo.FieldByName('APOANO').AsString := DM1.cdsQry25.FieldByName('APOANO').AsString;
         DM1.cdsestapo.FieldByName('APOMES').AsString := DM1.cdsQry25.FieldByName('APOMES').AsString;
         DM1.cdsestapo.FieldByName('USENOM').AsString := DM1.cdsQry25.FieldByName('USENOM').AsString;
         DM1.cdsestapo.FieldByName('APOOFI').AsFloat := DM1.cdsQry25.FieldByName('APOVALOR').AsFloat;
         DM1.cdsestapo.FieldByName('APOREC').AsFloat := DM1.cdsQry25.FieldByName('TRANSMTO').AsFloat;
         If DM1.cdsQry25.FieldByName('NIV').AsFloat > 0 Then
            DM1.cdsestapo.FieldByName('NIV').AsFloat := DM1.cdsQry25.FieldByName('NIV').AsFloat;
         If DM1.cdsQry25.FieldByName('NIV').AsFloat < 0 Then
            DM1.cdsestapo.FieldByName('DEV').AsFloat := Abs(DM1.cdsQry25.FieldByName('NIV').AsFloat);
         DM1.cdsestapo.FieldByName('MES').AsString := DM1.NombreMes(DM1.cdsQry25.FieldByName('APOMES').AsString);
         DM1.cdsQry25.Next;
      End;
      DM1.cdsestapo.First;
      xapoofi := 0;
      xaporec := 0;
      xniv := 0;
      xdev := 0;
      While Not DM1.cdsestapo.Eof Do
      Begin
         xapoofi := xapoofi + DM1.cdsestapo.FieldByName('APOOFI').AsFloat;
         xaporec := xaporec + DM1.cdsestapo.FieldByName('APOREC').AsFloat;
         xniv := xniv + DM1.cdsestapo.FieldByName('NIV').AsFloat;
         xdev := xdev + DM1.cdsestapo.FieldByName('DEV').AsFloat;
         DM1.cdsestapo.Next;
      End;
      DM1.cdsestapo.First;
      dbgaportes.ColumnByName('APOOFI').FooterValue := FormatFloat('###,###.#0', xapoofi);
      dbgaportes.ColumnByName('APOREC').FooterValue := FormatFloat('###,###.#0', xaporec);
      dbgaportes.ColumnByName('NIV').FooterValue := FormatFloat('###,###.#0', xniv);
      dbgaportes.ColumnByName('DEV').FooterValue := FormatFloat('###,###.#0', xdev);
   End;

// Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
  dm1.ResumenCCI( DM1.cdsAsociado.FieldByName('ASOID').AsString );

  if DM1.cdsRepCCI.FieldByName('TOTCCI').AsFloat>0 then
  begin
     If rgtiprep.ItemIndex = 0 Then
        nSaldoCI:= strtofloat(StringReplace(ppltotacum.Caption,',','',[rfReplaceAll]))
     else
        nSaldoCI:= xapoofi;

     DM1.cdsRepCCI.Edit;
     DM1.cdsRepCCI.FieldByName('SALDO').AsFloat:= nSaldoCI -DM1.cdsRepCCI.FieldByName('TOTCCI').AsFloat;
     DM1.cdsRepCCI.Post;

     dbeTotCCI.DataField :='TOTCCI';
     dbeTotCCI.DataSource:=DM1.dsRepCCI;

     dbeSaldo.DataField  :='SALDO';
     dbeSaldo.DataSource :=DM1.dsRepCCI;

     TNumericField(DM1.cdsRepCCI.FieldByName('TOTCCI')).DisplayFormat := '###,###,##0.00';
     TNumericField(DM1.cdsRepCCI.FieldByName('SALDO')).DisplayFormat := '###,###,##0.00';
     pnlCCI.Visible:=True;
  end
  else
     pnlCCI.Visible:=False;
// Fin    HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI

End;

Procedure Tfmstapo.rgtiprepClick(Sender: TObject);
Begin
   dbgcueind.Visible := True;
   dbgaportes.Visible := False;
   rgmodcueind.Enabled := False;
   btnimprime.Enabled := False;
   DM1.cdsestapo.EmptyDataSet;
   DM1.cdsCueInd.EmptyDataSet;
   If rgtiprep.ItemIndex = 0 Then
   Begin
      dbgcueind.ColumnByName('APORTE').FooterValue := FormatFloat('###,###.#0', 0);
      dbgcueind.ColumnByName('BONUS').FooterValue := FormatFloat('###,###.#0', 0);
      dbgcueind.ColumnByName('INTERES').FooterValue := FormatFloat('###,###.#0', 0);
      dbgcueind.Visible := True;
      dbgcueind.Top := 61;
      dbgcueind.Left := 8;
      dbgaportes.Visible := False;
   End
   Else
   Begin
      dbgaportes.ColumnByName('APOOFI').FooterValue := FormatFloat('###,###.#0', 0);
      dbgaportes.ColumnByName('APOREC').FooterValue := FormatFloat('###,###.#0', 0);
      dbgaportes.ColumnByName('NIV').FooterValue := FormatFloat('###,###.#0', 0);
      dbgaportes.ColumnByName('DEV').FooterValue := FormatFloat('###,###.#0', 0);
      dbgaportes.Visible := True;
      dbgaportes.Top := 61;
      dbgaportes.Left := 8;
      dbgcueind.Visible := False;
   End;
End;

Procedure Tfmstapo.btnimprimeClick(Sender: TObject);
Var
   xfecini, xultano, xAnoMesIni: String;
   xtmp: Double;
   xAno, xMes, xMesIni, xAnoIni, i: Integer;
   xtotal_pie: Double;
   Chart: TDBChart;
   Series: TPieSeries;
   Image: TImage;
   Jpeg: TJpegImage;
   apo, int, bon: Double;

   XULT_ANHOMES_APORT: String;

Begin
// Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
   DM1.DetalleCCI(DM1.cdsAsociado.FieldByName('ASOID').AsString);
   ppdbCCI.DataSource:=DM1.dsRepCCI;
// Fin    HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI

   If rgtiprep.ItemIndex = 0 Then
   Begin
      xSql := 'SELECT A.TRANSANO, A.TRANSMES, A.TRANSANO||''-''||A.TRANSMES APOSEC, A.TRANSMTO, C.USENOM FROM APO301 A, APO201 B, APO101 C'
         + ' WHERE A.ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ' AND A.APOSEC > ' + QuotedStr(xanomesces)
         + ' AND A.APOSEC <= ' + QuotedStr(anoultapo + mesultapo)
         + ' AND A.ASOID = B.ASOID AND B.USEID = C.USEID AND B.UPAGOID = C.UPAGOID AND B.UPROID = C.UPROID ORDER BY APOSEC';
      DM1.cdsQry25.Close;
      DM1.cdsQry25.DataRequest(xSql);
      DM1.cdsQry25.Open;
      If rgmodcueind.ItemIndex = 0 Then
      Begin
         xultano := Copy(DM1.asofrescese, 7, 4);
         // Inicio: SPP_201303_ASO
         xSql := 'SELECT MIN(NVL(ACUMESANT,0)) ACUMESANT, MAX(NVL(ACUMULADO,0)) ACUMULADO,'
            + ' SUM(NVL(CAPITAL,0)) CAPITAL, SUM(NVL(INTCAPACU,0)) INTCAPACU, SUM(NVL(BONOS,0)) BONOS'
            + ' FROM T_CTAIND1 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ' AND ANO < ''2000'''
            + ' AND ANO||MES < to_char(sysdate,''YYYYMM'') ';
         DM1.cdsCtaIndCab.Close;
         DM1.cdsCtaIndCab.DataRequest(xSql);
         DM1.cdsCtaIndCab.Open;
         xSql := 'SELECT ANO, MIN(NVL(ACUMESANT,0)) ACUMESANT, SUM(NVL(CAPITAL,0)) CAPITAL, SUM(NVL(INTCAPACU,0)) INTCAPACU, SUM(NVL(BONOS,0)) BONOS,'
            + ' MAX(NVL(ACUMULADO,0)) ACUMULADO, TO_CHAR(TO_DATE(MIN(ANO||MES),''YYYYMM''),''MON YYYY'') DESDE'
            + ' FROM T_CTAIND1 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString)
            + ' AND ANO < ' + QuotedStr(IntToStr(StrToInt(xultano)))
            + ' AND ANO||MES < to_char(sysdate,''YYYYMM'') '
            + ' GROUP BY ANO ORDER BY ANO';
         DM1.cdsCtaIndResAnoAnt.Close;
         DM1.cdsCtaIndResAnoAnt.DataRequest(xSql);
         DM1.cdsCtaIndResAnoAnt.Open;
         pplblres20002004.Caption := 'RESUMEN CUENTA INDIVIDUAL ' + DM1.cdsCtaIndResAnoAnt.FieldByName('DESDE').AsString + ' - ' + IntToStr(StrToInt(xultano) - 1);

         xSql := 'SELECT ANO, MES, NVL(ACUMESANT,0) ACUMESANT, NVL(CAPITAL,0) CAPITAL, NVL(INTCAPACU,0) INTCAPACU, NVL(BONOS,0) BONOS,'
            + ' NVL(ACUMULADO,0) ACUMULADO FROM T_CTAIND1 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString)
            + ' AND ANO = ' + QuotedStr(xultano)
            + ' AND ANO||MES < to_char(sysdate,''YYYYMM'') '
            + ' ORDER BY ANO,MES';
         DM1.cdsCtaIndAnoAct.Close;
         DM1.cdsCtaIndAnoAct.DataRequest(xSql);
         DM1.cdsCtaIndAnoAct.Open;
         // Fin: SPP_201303_ASO
      // Impresion de datos generales del asociado
         pplasocodmod.Caption := DM1.cdsAsociado.FieldByName('ASOCODMOD').AsString;
         pplasoapenomdni.Caption := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
         pplnumresnom.Caption := DM1.asoresnom;
         pplnumresces.Caption := DM1.asorescese;
         pplfecresnom.Caption := DM1.asofresnom;
         pplfecresces.Caption := DM1.asofrescese;
         xSql := 'SELECT REGPENDES FROM APO105 WHERE REGPENID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('REGPENID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplregpendes.Caption := DM1.cdsQry.FieldByName('REGPENDES').AsString;
         xSql := 'SELECT USENOM FROM APO101 WHERE USEID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('USEID').AsString)
            + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplusenom.Caption := Copy(DM1.cdsQry.FieldByName('USENOM').AsString, 1, 29);
         xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplupagonom.Caption := Copy(DM1.cdsQry.FieldByName('UPAGONOM').AsString, 1, 29);
         xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplupronom.Caption := Copy(DM1.cdsQry.FieldByName('UPRONOM').AsString, 1, 29);
         xSql := 'SELECT REGPENDES FROM APO105 WHERE REGPENID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('REGPENID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         // Inicio: SPP_201303_ASO
         if (Copy(DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString,7,4) + Copy(DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString,4,2)) <= '199612' then
         begin
           xSql := 'SELECT TO_CHAR(TO_DATE(' + QuotedStr(DM1.asofresnom) + '), ''MON YYYY'') FECNOMB FROM DUAL';
           DM1.cdsQry.Close;
           DM1.cdsQry.DataRequest(xSql);
           DM1.cdsQry.Open;
           ppTitAcumHasta1997.Visible := True;
           ppTitAcumHasta1997.Caption := 'PERIODO ACUMULADO DE ' + DM1.cdsQry.FieldByName('FECNOMB').AsString + ' A DIC 1996';
           ppDBAcumHasta1997.Visible := True;
         end
         else
         begin
           ppTitAcumHasta1997.Visible := False;
           ppDBAcumHasta1997.Visible := False;
         end;

         //COLOCAR FECHA DE ULTIMO APORTE
         xSql := 'SELECT MAX(LAST_DAY(TO_DATE(ANO || MES,''YYYYMM''))) ULTAPO'
            + ' FROM T_CTAIND1'
            + ' WHERE ANO || MES <= TO_CHAR(SYSDATE, ''YYYYMM'') AND NVL(CAPITAL, 0) > 0';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
           pplFecUltApo.Caption := DM1.cdsQry.fieldbyname('ULTAPO').AsString
         else
           pplFecUltApo.Caption := '';

         // Inicio: SPP_201309_ASO
         if DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString = '' then
         begin
           xSql := 'SELECT MAX(NVL(ACUMULADO,0)) ACUMULADO, MAX(ANOSERF) ANOSERF, '
              + ' TRUNC(MOD(MONTHS_BETWEEN(SYSDATE, TO_DATE(''' + DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString + ''')), 12)) MESESSER '
              + ' FROM T_CTAIND1'
              + ' WHERE ANO||MES < to_char(sysdate,''YYYYMM'') ';
         end
         else
         begin
           xSql := 'SELECT MAX(NVL(ACUMULADO,0)) ACUMULADO, MAX(ANOSERF) ANOSERF, '
              + ' TRUNC(MOD(MONTHS_BETWEEN(TO_DATE(''' + DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString + '''), TO_DATE(''' + DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString + ''')), 12)) MESESSER '
              + ' FROM T_CTAIND1'
              + ' WHERE ANO||MES < to_char(sysdate,''YYYYMM'') ';
         end;
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         //pplanoapo.Caption := IntToStr(StrToInt(Copy(DM1.asofrescese, 7, 4)) - StrToInt(Copy(DM1.asofresnom, 7, 4)));
         pplanoapo.Caption := DM1.cdsQry.FieldByName('ANOSERF').AsString + ' año(s) ' + DM1.cdsQry.FieldByName('MESESSER').AsString + ' mes(es)';
         //pplmonapo.Caption := FormatFloat('###,###.00', DM1.cdsCuentas.FieldByName('ACUMESANT').AsFloat);
         // Fin: SPP_201309_ASO
      // Etapa 1997 a 1999
         ppltitdet.Caption  := 'DETALLE DE CUENTA INDIVIDUAL AÑO : ' + xultano;
         pplusuario.Caption := 'Impreso por   : ' + DM1.DevuelveValor('TGE006', 'USERNOM', 'USERID', DM1.wUsuario);
      // ppLabel96.Caption  := 'ESTADO DE CUENTA INDIVIDUAL DE APORTES AL ' + DateToStr(date);
         ppTitPrin.Caption  := 'ESTADO DE CUENTA INDIVIDUAL DE APORTES AL ' + Trim(DateToStr(DM1.FechaSys));
      // Fin: SPP_201303_ASO

         pplapoacu.Caption := FloatToStrF(xaportes + xmonini, ffNumber, 10, 2);
         pplbonacu.Caption := FloatToStrF(xbonus, ffNumber, 10, 2);
         pplintacu.Caption := FloatToStrF(xinteres, ffNumber, 10, 2);
         ppltotAcu.Caption := FloatToStrF(xmonini + xaportes + xbonus + xinteres, ffNumber, 10, 2);
         pplporapoacu.Caption := FloatToStrF(((xaportes + xmonini) / (xmonini + xaportes + xbonus + xinteres)) * 100, ffNumber, 10, 2) + '%';
         pplporintacu.Caption := FloatToStrF((xinteres / (xmonini + xaportes + xbonus + xinteres)) * 100, ffNumber, 10, 2) + '%';
         xtmp := 100 - (StrToFloat(FloatToStrF(((xaportes + xmonini) / (xmonini + xaportes + xbonus + xinteres)) * 100, ffNumber, 10, 2)) + StrToFloat(FloatToStrF((xinteres / (xmonini + xaportes + xbonus + xinteres)) * 100, ffNumber, 10, 2)));
         pplporbonacu.Caption := FloatToStrF(xtmp, ffNumber, 10, 2) + '%';

      // Inicio: SPP_201310_ASO - Aviso en los reportes si firmó CADAP
         xSQL := 'SELECT AUTDESAPO FROM APO201 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ' AND AUTDESAPO = ''S'' ';
         If DM1.CountReg(xSQL) = 0 Then
            Begin
            ppcadap.Caption := 'Obs: El asociado NO firmó la carta de autorización de descuento de aportes';
            End
         Else
            Begin
            ppcadap.Caption := 'Obs: El asociado firmó la carta de autorización de descuento de aportes';
            End;
      // Fin: SPP_201310_ASO

         pprcueindres.Print;
         pprcueindres.Stop;
         //ppDesigner1.Show;
      End;
      If rgmodcueind.ItemIndex = 1 Then
      Begin
         DM1.cdsCuentas.First;
         // Inicio: SPP_201309_ASO
         // Inicio: SPP_201303_ASO
         if DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString = '' then
         begin
           xSql := 'SELECT MAX(ANOSERF) ANOSERF, '
              + ' TRUNC(MOD(MONTHS_BETWEEN(SYSDATE, TO_DATE(''' + DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString + ''')), 12)) MESESSER '
              + ' FROM T_CTAIND1'
              + ' WHERE ANO||MES < to_char(sysdate,''YYYYMM'') ';
         end
         else
         begin
           xSql := 'SELECT MAX(ANOSERF) ANOSERF, '
              + ' TRUNC(MOD(MONTHS_BETWEEN(TO_DATE(''' + DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString + '''), TO_DATE(''' + DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString + ''')), 12)) MESESSER '
              + ' FROM T_CTAIND1'
              + ' WHERE ANO||MES < to_char(sysdate,''YYYYMM'') ';
         end;
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         
         pplblcapacu.Caption := FormatFloat('###,###.00', DM1.cdsCuentas.FieldByName('ACUMESANT').AsFloat);
         pplblanoapo.Caption := DM1.cdsQry.FieldByName('ANOSERF').AsString + ' año(s) ' + DM1.cdsQry.FieldByName('MESESSER').AsString + ' mes(es)';
         //pplblanoapo.Caption := IntToStr(StrToInt(Copy(DM1.asofrescese, 7, 4)) - StrToInt(Copy(DM1.asofresnom, 7, 4)));
         // Fin: SPP_201309_ASO
         pplblTitCueInd.Caption := 'ESTADO DE CUENTA INDIVIDUAL DE APORTES AL ' + DateToStr(DM1.FechaSys);
         xSql := 'SELECT REGPENDES FROM APO105 WHERE REGPENID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('REGPENID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplblregpen.Caption := DM1.cdsQry.FieldByName('REGPENDES').AsString;
         // Fin: SPP_201303_ASO
         xSql := 'SELECT USENOM FROM APO101 WHERE USEID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('USEID').AsString)
            + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplblusenom.Caption := Copy(DM1.cdsQry.FieldByName('USENOM').AsString, 1, 29);
         xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplblupagonom.Caption := Copy(DM1.cdsQry.FieldByName('UPAGONOM').AsString, 1, 29);
         xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplblupronom.Caption := Copy(DM1.cdsQry.FieldByName('UPRONOM').AsString, 1, 29);
         pplblasoresnom.Caption := DM1.asoresnom;
         pplblasofresnom.Caption := DM1.asofresnom;
         pplblasorescese.Caption := DM1.asorescese;
         pplblasofrescese.Caption := DM1.asofrescese;
         pplblasocodmod.Caption := DM1.cdsAsociado.FieldByName('ASOCODMOD').AsString;
         pplblasoapenomdni.Caption := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
         ppLblUser.Caption := 'Impreso por   : ' + DM1.DevuelveValor('TGE006', 'USERNOM', 'USERID', DM1.wUsuario);
         ppLabel191.Caption := 'Impreso por   : ' + DM1.DevuelveValor('TGE006', 'USERNOM', 'USERID', DM1.wUsuario);

         // Inicio: SPP_201310_ASO - Aviso en los reportes si firmó CADAP
         xSQL := 'SELECT AUTDESAPO FROM APO201 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ' AND AUTDESAPO = ''S'' ';
         If DM1.CountReg(xSQL) = 0 Then
            Begin
            ppcadap2.Caption := 'Obs: El asociado NO firmó la carta de autorización de descuento de aportes';
            End
         Else
            Begin
            ppcadap2.Caption := 'Obs: El asociado firmó la carta de autorización de descuento de aportes';
            End;
         // Fin: SPP_201310_ASO

         pprccueind.Print;
// Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
         pprccueind.Stop;
// Fin    HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
         //ppDesigner3.Show;
      End;
      If rgmodcueind.ItemIndex = 2 Then
      Begin

         // COLOCAR NIVEL DEL CENTRO EDUCATIVO
         xSql := 'SELECT UPPER(NIVEDU_DES) NIVEDU_DES, B.CENEDUID FROM ASO_CEN_EDU B, NIV_CEN_EDU C WHERE B.NIVEDU_ID = C.NIVEDU_ID(+) AND B.CENEDUID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('CENEDUID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplcpoNIVEDU.Caption := DM1.cdsQry.FieldByName('NIVEDU_DES').AsString;

         pplasoapenomdni_nc.Caption := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;

         // Se parte la dirección en dos lineas
         pplasodni_nc.Caption := DM1.cdsAsociado.FieldByName('ASODNI').AsString;
         pplasodir_nc2_l1.Caption := Copy(DM1.cdsAsociado.FieldByName('ASODIR').AsString,1,90);
         pplasodir_nc2_l2.Caption := Copy(DM1.cdsAsociado.FieldByName('ASODIR').AsString,91,90);

         ppldep_nc.Caption := DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', Copy(DM1.cdsAsociado.FieldByName('ZIPID').AsString, 1, 2));
         pplprv_nc.Caption := DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', Copy(DM1.cdsAsociado.FieldByName('ZIPID').AsString, 1, 4));
         ppldst_nc.Caption := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', DM1.cdsAsociado.FieldByName('ZIPID').AsString);
         pplasotelf1_nc.Caption := DM1.cdsAsociado.FieldByName('ASOTELF1').AsString;
         pplasocodmod_nc.Caption := DM1.cdsAsociado.FieldByName('ASOCODMOD').AsString;
         xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplunipro_nc.Caption := DM1.cdsQry.FieldByName('UPRONOM').AsString;
         xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplunipag_nc.Caption := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
         xSql := 'SELECT USENOM FROM APO101 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND USEID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('USEID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         ppluniges_nc.Caption := DM1.cdsQry.FieldByName('USENOM').AsString;
         pplasofresnom_nc.Caption := DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString;
         pplasoresnom_nc.Caption := DM1.cdsAsociado.FieldByName('ASORESNOM').AsString;
         // Inicio: SPP_201303_ASO
         pplFecCalculo.Caption := DM1.asofrescese;
         // Fin: SPP_201303_ASO

         // cambio considerando la nueva tabla de Centros Educativos
         xSQL := 'SELECT NOMCENEDU, DIREC, CENPO, DPTO.DPTODES DPTO, PROV.CIUDDES PROV, DIST.ZIPDES DIST '
            + '  FROM ASO_CEN_EDU CE, APO158 DPTO, APO123 PROV, APO122 DIST '
            + ' WHERE CENEDUID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('CENEDUID').AsString)
            + '   AND SUBSTR(CE.UBIGEO_DIR, 1, 2) = DPTO.DPTOID(+) '
            + '   AND SUBSTR(CE.UBIGEO_DIR, 1, 2) = PROV.DPTOID(+) '
            + '   AND SUBSTR(CE.UBIGEO_DIR, 1, 4) = PROV.CIUDID(+) '
            + '   AND SUBSTR(CE.UBIGEO_DIR, 1, 2) = DIST.DPTOID(+) '
            + '   AND SUBSTR(CE.UBIGEO_DIR, 1, 4) = DIST.CIUDID(+) '
            + '   AND CE.UBIGEO_DIR = DIST.ZIPID(+) ';

         DM1.cdsQry24.Close;
         DM1.cdsQry24.DataRequest(xSql);
         DM1.cdsQry24.Open;

         pplcpocenedu.Caption := DM1.cdsQry24.FieldByName('CENPO').AsString;
         If trim(DM1.cdsQry24.FieldByName('NOMCENEDU').AsString) <> '' Then
            pplasodeslab_nc.Caption := DM1.cdsQry24.FieldByName('NOMCENEDU').AsString
         Else
            pplasodeslab_nc.Caption := DM1.cdsAsociado.FieldByName('ASODESLAB').AsString;

         If trim(DM1.cdsQry24.FieldByName('DIREC').AsString) <> '' Then
            pplasodirleb_nc.Caption := DM1.cdsQry24.FieldByName('DIREC').AsString
         Else
            pplasodirleb_nc.Caption := DM1.cdsAsociado.FieldByName('ASODIRLAB').AsString;

         If trim(DM1.cdsQry24.FieldByName('DIST').AsString) <> '' Then
            ppldstdeslab_nc.Caption := DM1.cdsQry24.FieldByName('DIST').AsString
         Else
            ppldstdeslab_nc.Caption := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', DM1.cdsAsociado.FieldByName('ASODSTLABID').AsString);

         If trim(DM1.cdsQry24.FieldByName('PROV').AsString) <> '' Then
            pplprvdeslab_nc.Caption := DM1.cdsQry24.FieldByName('PROV').AsString
         Else
            pplprvdeslab_nc.Caption := DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', Copy(DM1.cdsAsociado.FieldByName('ASODSTLABID').AsString, 1, 4));

         If trim(DM1.cdsQry24.FieldByName('DPTO').AsString) <> '' Then
            ppldepdeslab_nc.Caption := DM1.cdsQry24.FieldByName('DPTO').AsString
         Else
            ppldepdeslab_nc.Caption := DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', Copy(DM1.cdsAsociado.FieldByName('ASODSTLABID').AsString, 1, 2));

         xSql := 'SELECT MAX(ANO||MES) vFechaFinal,MAX(ANOSERF) vANOSERF FROM T_CTAIND1'
            + ' WHERE ANO||MES < to_char(sysdate,''YYYYMM'') ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         xAno := StrToInt(Copy(DM1.cdsQry.FieldByName('vFechaFinal').AsString, 1, 4));
         xMes := StrToInt(Copy(DM1.cdsQry.FieldByName('vFechaFinal').AsString, 5, 2));

         xMesIni := xMes - 6;
         xAnoIni := xAno;
         If xMesIni < 1 Then
         Begin
            xMesIni := xMesIni + 12;
            xAnoIni := xAno - 1;
         End;
         xAnoMesIni := DM1.StrZero(IntToStr(xAnoIni), 4) + DM1.StrZero(IntToStr(xMesIni), 2);

         xSql := 'SELECT MIN(NVL(ACUMESANT,0)) INICIAL, SUM(NVL(CAPITAL,0)) APORTE, SUM(NVL(INTCAPACU,0)) INTERES, SUM(NVL(BONOS,0)) BONUS, MAX(NVL(ACUMULADO,0)) SALDO, max(anoserf) anoserf FROM T_CTAIND1'
            + ' WHERE ANO||MES <= ' + QuotedStr(xAnoMesIni)
            + ' AND ANO||MES < to_char(sysdate,''YYYYMM'') '
            + ' ORDER BY ANO, MES';
         DM1.cdsQry20.Close;
         DM1.cdsQry20.DataRequest(xSql);
         DM1.cdsQry20.Open;
         xSql := 'SELECT ANO, MES, NVL(CAPITAL,0) APORTE, NVL(INTCAPACU,0) INTERES, NVL(BONOS,0) BONUS, NVL(ACUMULADO,0) SALDO FROM T_CTAIND1'
            + ' WHERE ANO||MES > ' + QuotedStr(xAnoMesIni)
            + ' AND ANO||MES < to_char(sysdate,''YYYYMM'') '
            + ' ORDER BY ANO, MES';
         // Inicio: SPP_201303_ASO
         DM1.cdsCtaIndEstad.Close;
         DM1.cdsCtaIndEstad.DataRequest(xSql);
         DM1.cdsCtaIndEstad.Open;
         
// COLOCAR FECHA DE ULTIMO APORTE
         // Inicio: SPP_201309_ASO
         if DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString = '' then
         begin
           xSql := 'SELECT MAX(ANHOMES) XULT_ANHOMES_APORT, MAX(ANOSERF) ANOSERF, MAX(MESESSER) MESESSER'
              + '  FROM (SELECT (ANO || MES) ANHOMES, ANOSERF, '
              + '          TRUNC(MOD(MONTHS_BETWEEN(SYSDATE, TO_DATE(''' + DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString + ''')), 12)) MESESSER'
              + '          FROM T_CTAIND1 '
              + '         WHERE ANO || MES <= TO_CHAR(SYSDATE, ''YYYYMM'') '
              + '           AND NVL(CAPITAL, 0) > 0)';
         end
         else
         begin
           xSql := 'SELECT MAX(ANHOMES) XULT_ANHOMES_APORT, MAX(ANOSERF) ANOSERF, MAX(MESESSER) MESESSER'
              + '  FROM (SELECT (ANO || MES) ANHOMES, ANOSERF, '
              + '          TRUNC(MOD(MONTHS_BETWEEN(TO_DATE(''' + DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString + '''), TO_DATE(''' + DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString + ''')), 12)) MESESSER'
              + '          FROM T_CTAIND1 '
              + '         WHERE ANO || MES <= TO_CHAR(SYSDATE, ''YYYYMM'') '
              + '           AND NVL(CAPITAL, 0) > 0)';
         end;
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
            XULT_ANHOMES_APORT := DM1.cdsQry.fieldbyname('XULT_ANHOMES_APORT').AsString;

         If trim(DM1.cdsQry.fieldbyname('XULT_ANHOMES_APORT').AsString) = '' Then
            XULT_ANHOMES_APORT := xAnoMesIni;

         pplanoapo_nc.Caption := DM1.cdsQry.FieldByName('ANOSERF').AsString + ' año(s) ' + DM1.cdsQry.FieldByName('MESESSER').AsString + ' mes(es)';
         // Fin: SPP_201309_ASO

         xfecini := '01/' + COPY(XULT_ANHOMES_APORT, 5, 2) + '/' + COPY(XULT_ANHOMES_APORT, 1, 4);
         xSql := 'SELECT LAST_DAY(' + QuotedStr(xfecini) + ') FEC_FIN FROM DUAL';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;

         //Calculo de años de aportacion del ANOSERF
         pplanoapo_nc.Caption := pplanoapo_nc.Caption
           + ' (FEC.ULT.APORTE: ' + DM1.cdsQry.fieldbyname('FEC_FIN').AsString + ')';
         //pplanoapo_nc.Caption := DM1.cdsQry20.fieldbyname('anoserf').AsString + ' (FECHA ULTIMO APORTE: ' + DM1.cdsQry.fieldbyname('FEC_FIN').AsString + ')';
         ppldesini.Caption := 'SALDO AL : ' + DateToStr(Date);
         xfecini := '01/' + IntToStr(xMesIni) + '/' + IntToStr(xAnoIni);
         xSql := 'SELECT LAST_DAY(' + QuotedStr(xfecini) + ') FEC_INI FROM DUAL';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         ppldesini.Caption := 'SALDO AL : ' + DM1.cdsQry.FieldByName('FEC_INI').AsString;
         pplapoini.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('INICIAL').AsFloat + DM1.cdsQry20.FieldByName('APORTE').AsFloat, ffNumber, 10, 2);
         pplintini.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('INTERES').AsFloat, ffNumber, 10, 2);
         pplbonini.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('BONUS').AsFloat, ffNumber, 10, 2);
         pplsalini.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('SALDO').AsFloat, ffNumber, 10, 2);
         xSql := 'SELECT MIN(NVL(ACUMESANT,0)) ACUMESANT,  SUM(NVL(CAPITAL,0)) CAPITAL,  SUM(NVL(INTCAPACU,0)) INTCAPACU, SUM(NVL(BONOS,0)) BONOS, MAX(NVL(ACUMULADO,0)) ACUMULADO  FROM T_CTAIND1'
            + ' WHERE ANO||MES < to_char(sysdate,''YYYYMM'') ';
         DM1.cdsQry22.Close;
         DM1.cdsQry22.DataRequest(xSql);
         DM1.cdsQry22.Open;

// COLOCAR FECHA DE ULTIMO APORTE
         pplapofin.Caption := '(*) ' + FloatToStrF(DM1.cdsQry22.FieldByName('ACUMESANT').AsFloat + DM1.cdsQry22.FieldByName('CAPITAL').AsFloat, ffNumber, 10, 2);
         pplblMsj1.caption := '(*) SALDO QUE CORRESPONDE A LO EFECTIVAMENTE RECIBIDO POR LA INSTITUCIÓN.';
       // Fin: SPP_201303_ASO

         pplintfin.Caption := FloatToStrF(DM1.cdsQry22.FieldByName('INTCAPACU').AsFloat, ffNumber, 10, 2);
         pplbonfin.Caption := FloatToStrF(DM1.cdsQry22.FieldByName('BONOS').AsFloat, ffNumber, 10, 2);
         pplsalfin.Caption := FloatToStrF(DM1.cdsQry22.FieldByName('ACUMULADO').AsFloat, ffNumber, 10, 2);

// Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
         xtotal_pie :=
            DM1.cdsQry22.FieldByName('ACUMESANT').AsFloat + DM1.cdsQry22.FieldByName('CAPITAL').AsFloat
            + DM1.cdsQry22.FieldByName('INTCAPACU').AsFloat + DM1.cdsQry22.FieldByName('BONOS').AsFloat
            - DM1.cdsRepCCI.FieldByName('TOTCCI').AsFloat;
         pplsaldoal.Caption := 'SALDO AL '+DateToStr(Date) + ' : S/. ' + FloatToStrF(xtotal_pie, ffNumber, 10, 2);
// Fin    HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI

         apo := StrToFloat(FloatToStrF(((DM1.cdsQry22.FieldByName('ACUMESANT').AsFloat + DM1.cdsQry22.FieldByName('CAPITAL').AsFloat) / xtotal_pie) * 100, ffNumber, 5, 2));
         int := StrToFloat(FloatToStrF((DM1.cdsQry22.FieldByName('INTCAPACU').AsFloat / xtotal_pie) * 100, ffNumber, 5, 2));
         bon := StrToFloat(FloatToStrF((DM1.cdsQry22.FieldByName('BONOS').AsFloat / xtotal_pie) * 100, ffNumber, 5, 2));

         Chart1.Series[0].Clear;
         Chart1.Series[0].Add(apo, 'Aportes');
         Chart1.Series[0].Add(int, 'Intereses');
         Chart1.Series[0].Add(bon, 'Bonus');

      // crea o bitmap de memória
         Image := TImage.Create(Nil);

         Image.Width := Chart1.Width;
         Image.Height := Chart1.Height;

      // configura os valores específicos

         Chart1.Draw(Image1.Canvas, Image.BoundsRect);
         Jpeg := TJpegImage.Create;
         Jpeg.Assign(Image1.Picture.Bitmap);
         ppImage3.Picture.Bitmap := image1.Picture.Bitmap;

         // Inicio: SPP_201310_ASO - Aviso en los reportes si firmó CADAP
         xSQL := 'SELECT AUTDESAPO FROM APO201 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ' AND AUTDESAPO = ''S'' ';
         If DM1.CountReg(xSQL) = 0 Then
            Begin
            ppcadap3.Caption := 'Obs: El asociado NO firmó la carta de autorización de descuento de aportes';
            End
         Else
            Begin
            ppcadap3.Caption := 'Obs: El asociado firmó la carta de autorización de descuento de aportes';
            End;
         // Fin: SPP_201310_ASO

// Inicio HPC_201510_ASO : Agregar en Consultas aplicaciones de CCI
         if DM1.cdsRepCCI.FieldByName('TOTCCI').AsFloat<=0 then
            ppSubReport2.Visible:=False;
// Fin HPC_201510_ASO : Agregar en Consultas aplicaciones de CCI

         pprresest.Print;
         //ppDesigner2.Show;
      End;
   End;
   If rgtiprep.ItemIndex = 1 Then
   Begin
      If xanomesces < '199701' Then
      Begin
         pplblmonben_b.Caption := FormatFloat('###,###.00', DM1.calculamontodecese(DM1.asofresnom, DM1.asofrescese, DM1.tipben));
         pplbluser_b.Caption := 'Impreso por   : ' + DM1.DevuelveValor('TGE006', 'USERNOM', 'USERID', DM1.wUsuario);
         pplblasocodmod_b.Caption := DM1.cdsAsociado.FieldByName('ASOCODMOD').AsString;
         pplblasoapenomdni_b.Caption := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
         pplblasoresnom_b.Caption := DM1.asoresnom;
         pplblasoresces_b.Caption := DM1.asorescese;
         pplblasofresnom_b.Caption := DM1.asofresnom;
         pplblasofresces_b.Caption := DM1.asofrescese;

         xSql := 'SELECT REGPENDES FROM APO105 WHERE REGPENID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('REGPENID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplblregpen_b.Caption := DM1.cdsQry.FieldByName('REGPENDES').AsString;
         xSql := 'SELECT USENOM FROM APO101 WHERE USEID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('USEID').AsString)
            + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplblusenom_b.Caption := Copy(DM1.cdsQry.FieldByName('USENOM').AsString, 1, 29);
         xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplblupagonom_b.Caption := Copy(DM1.cdsQry.FieldByName('UPAGONOM').AsString, 1, 29);
         xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         pplblupronom_b.Caption := Copy(DM1.cdsQry.FieldByName('UPRONOM').AsString, 1, 29);
         pplbltitulo_b.Caption := 'ESTADO DE APORTES RECAUDADOS AL ' + DM1.asofrescese;

         pprantes1997.Print;
         Exit;
      End;

      xSql := 'SELECT A.TRANSANO, A.TRANSMES, A.TRANSANO||''-''||A.TRANSMES APOSEC, A.TRANSMTO, C.USENOM FROM APO301 A, APO201 B, APO101 C'
         + ' WHERE A.ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ' AND A.APOSEC > ' + QuotedStr(xanomesces)
         + ' AND A.APOSEC <= ' + QuotedStr(anoultapo + mesultapo)
         + ' AND A.ASOID = B.ASOID AND B.USEID = C.USEID AND B.UPAGOID = C.UPAGOID AND B.UPROID = C.UPROID ORDER BY APOSEC';
      DM1.cdsQry25.Close;
      DM1.cdsQry25.DataRequest(xSql);
      DM1.cdsQry25.Open;
      pplbltitulo_a.Caption := 'ESTADO DE APORTES RECAUDADOS AL ' + DateToStr(DM1.FechaSys);
      pplblmonben_a.Caption := FormatFloat('###,###.00', DM1.calculamontodecese(DM1.asofresnom, DM1.asofrescese, DM1.tipben));
      pplblregpen_a.Caption := DM1.DevuelveValor('APO105', 'REGPENDES', 'REGPENID', DM1.cdsAsociado.FieldByName('REGPENID').AsString);
      pplasocodmod_a.Caption := DM1.cdsAsociado.FieldByName('ASOCODMOD').AsString;
      pplasoapenomdni_a.Caption := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
      xSql := 'SELECT USENOM FROM APO101 WHERE USEID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('USEID').AsString)
         + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplblusenom_a.Caption := Copy(DM1.cdsQry.FieldByName('USENOM').AsString, 1, 29);
      xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplblupagonom_a.Caption := Copy(DM1.cdsQry.FieldByName('UPAGONOM').AsString, 1, 29);
      xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplblupronom_a.Caption := Copy(DM1.cdsQry.FieldByName('UPRONOM').AsString, 1, 29);
      pplblasoresnom_a.Caption := DM1.asoresnom;
      pplblasoresces_a.Caption := DM1.asorescese;
      pplblasofresnom_a.Caption := DM1.asofresnom;
      pplblasofresces_a.Caption := DM1.asofrescese;
      pplblasocodmod.Caption := DM1.cdsAsociado.FieldByName('ASOCODMOD').AsString;
      pplblasoapenomdni.Caption := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
      pplbluser_a.Caption := 'Impreso por   : ' + DM1.DevuelveValor('TGE006', 'USERNOM', 'USERID', DM1.wUsuario);
      ppLabel162.Caption := 'Impreso por   : ' + DM1.DevuelveValor('TGE006', 'USERNOM', 'USERID', DM1.wUsuario);
      ppraportes.Print;
   End;

End;

Procedure Tfmstapo.ppMemo2Print(Sender: TObject);
Begin
   // Inicio: SPP_201303_ASO
   If DM1.cdsCtaIndApoCes.RecordCount > 0 Then ppMemo2.Visible := False;
   If DM1.xSgr = 'E' Then ppMemo2.Visible := False;
   // Fin: SPP_201303_ASO
End;

Procedure Tfmstapo.ppMemo3Print(Sender: TObject);
Begin
   // Inicio: SPP_201303_ASO
   If DM1.cdsCtaIndApoCes.RecordCount > 0 Then
      ppMemo3.Visible := False
   Else
      ppMemo3.Visible := True;
   If DM1.xSgr = 'E' Then ppMemo3.Visible := False;
   // Fin: SPP_201303_ASO
End;

Procedure Tfmstapo.ppMemo4Print(Sender: TObject);
Begin
   If DM1.xSgr = 'E' Then ppMemo4.Visible := False;
End;

Procedure Tfmstapo.ppLabel20Print(Sender: TObject);
Begin
   If DM1.xSgr = 'E' Then
      ppLabel20.Caption := 'Cese'
   Else
      ppLabel20.Caption := 'Fecha de Calculo';
End;

Procedure Tfmstapo.ppLabel132Print(Sender: TObject);
Begin
   If DM1.xSgr = 'E' Then
      ppLabel132.Caption := 'Cese'
   Else
      ppLabel132.Caption := 'Fecha de Calculo';
End;

Procedure Tfmstapo.pplanomesPrint(Sender: TObject);
Var
   xMes: String;
Begin
  // Inicio: SPP_201303_ASO
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '01' Then xMes := 'ENE - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '02' Then xMes := 'FEB - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '03' Then xMes := 'MAR - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '04' Then xMes := 'ABR - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '05' Then xMes := 'MAY - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '06' Then xMes := 'JUN - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '07' Then xMes := 'JUL - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '08' Then xMes := 'AGO - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '09' Then xMes := 'SET - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '10' Then xMes := 'OCT - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '11' Then xMes := 'NOV - ';
   If DM1.cdsCtaIndEstad.FieldByName('MES').AsString = '12' Then xMes := 'DIC - ';
   pplanomes.Caption := xMes + DM1.cdsCtaIndEstad.FieldByName('ANO').AsString;
  // Fin: SPP_201303_ASO
End;

Procedure Tfmstapo.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin

   DM1.cdsCuentas.Close;
   DM1.cdsCuentas.Filter := '';
   DM1.cdsCuentas.IndexFieldNames := '';

   DM1.cdsQry.Close;
   DM1.cdsQry.Filter := '';
   DM1.cdsQry.IndexFieldNames := '';

   // Inicio: SPP_201303_ASO
   {DM1.cdsQry19.Close;
   DM1.cdsQry19.Filter := '';
   DM1.cdsQry19.IndexFieldNames := '';}
   // Fin: SPP_201303_ASO
   
   DM1.cdsQry20.Close;
   DM1.cdsQry20.Filter := '';
   DM1.cdsQry20.IndexFieldNames := '';

   // Inicio: SPP_201303_ASO
   {DM1.cdsQry21.Close;
   DM1.cdsQry21.Filter := '';
   DM1.cdsQry21.IndexFieldNames := '';}
   // Fin: SPP_201303_ASO

   DM1.cdsQry22.Close;
   DM1.cdsQry22.Filter := '';
   DM1.cdsQry22.IndexFieldNames := '';

   DM1.cdsQry24.Close;
   DM1.cdsQry24.Filter := '';
   DM1.cdsQry24.IndexFieldNames := '';

   DM1.cdsQry25.Close;
   DM1.cdsQry25.Filter := '';
   DM1.cdsQry25.IndexFieldNames := '';

   // Inicio: SPP_201303_ASO
   DM1.cdsCtaIndCab.Close;
   DM1.cdsCtaIndCab.Filter := '';
   DM1.cdsCtaIndCab.IndexFieldNames := '';

   DM1.cdsCtaIndResAnoAnt.Close;
   DM1.cdsCtaIndResAnoAnt.Filter := '';
   DM1.cdsCtaIndResAnoAnt.IndexFieldNames := '';

   DM1.cdsCtaIndAnoAct.Close;
   DM1.cdsCtaIndAnoAct.Filter := '';
   DM1.cdsCtaIndAnoAct.IndexFieldNames := '';

   DM1.cdsCtaIndEstad.Close;
   DM1.cdsCtaIndEstad.Filter := '';
   DM1.cdsCtaIndEstad.IndexFieldNames := '';

   DM1.cdsCtaIndApoCes.Close;
   DM1.cdsCtaIndApoCes.Filter := '';
   DM1.cdsCtaIndApoCes.IndexFieldNames := '';
   // Fin: SPP_201303_ASO

   Action := caFree;
End;

End.

