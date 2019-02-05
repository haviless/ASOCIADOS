unit ASO202;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO202
// Formulario           : fGestionCartera
// Fecha de Creación    : 07/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Gestionar la cartera y creacion de hojas de ruta.
// Actualizaciones      :
// SPP_201404_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO
// HPC_201407_ASO       : Se corrige la numeracion de los registros al buscar la hojas de ruta.
// SPP_201406_ASO       : Se realiza el pase a producción a partir del HPC_201407_ASO.
// HPC_201412_ASO       : Visualiza la ultima Cartera Asignada.
// SPP_201407_ASO       : Se realiza el pase a producción a partir del HPC_201412_ASO.
// HPC_201503_ASO       : Cambios en Hoja de Ruta en la parte de Filtros
// HPC_201504_ASO       : Filtro de FALLECIDOS, impresión de Cuenta Individual
// HPC_201707_ASO       : Se retira la unidad ASO304 y se añade PRE935
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, Mask, wwdblook,
  Wwdbdlg, ComCtrls, ExtCtrls,wwExport,shellapi, ppParameter, ppStrtch,
  ppMemo, ppBands, ppClass, ppCtrls, jpeg, ppVar, ppPrnabl, ppCache,
  ppProd, ppReport, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppComm, ppEndUsr,
//Inicio HPC_201504_ASO
//ppModule, daDataModule, DBGrids;
  ppModule, daDataModule, DBGrids, ValEdit;
//Final HPC_201504_ASO

type
  TfGestionCartera = class(TForm)
    wwDBLookupComboDlg1: TwwDBLookupComboDlg;
    gbFiltros: TGroupBox;
    gbFiltro2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rbDomicilio: TRadioButton;
    rbColegio: TRadioButton;
    dblcdcoddep: TwwDBLookupComboDlg;
    medesdep: TMaskEdit;
    dblcdcodpro: TwwDBLookupComboDlg;
    medespro: TMaskEdit;
    dblcdcoddis: TwwDBLookupComboDlg;
    medesdis: TMaskEdit;
    gbTipoCar: TGroupBox;
    cbAfiliacion: TCheckBox;
    cbNoveles: TCheckBox;
    cbFamiliarizada: TCheckBox;
    cbPrecese: TCheckBox;
    gbFiltro1: TGroupBox;
    Label4: TLabel;
    dblcdResponsable: TwwDBLookupComboDlg;
    gbGestion: TGroupBox;
    rbPendientes: TRadioButton;
    rbCerradas: TRadioButton;
    mdesResponsable: TMaskEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    dblcdColegio: TwwDBLookupComboDlg;
    mdesColegio: TMaskEdit;
    Label8: TLabel;
    rbTodas: TRadioButton;
    bFiltrar: TBitBtn;
    bSalir: TBitBtn;
    rbNoAsignadas: TRadioButton;
    rbAsignadas: TRadioButton;
    gbContador: TGroupBox;
    Label11: TLabel;
    lblAfiliacion: TLabel;
    Label14: TLabel;
    lblNoveles: TLabel;
    Label15: TLabel;
    lblFamili: TLabel;
    Label17: TLabel;
    lblPrecese: TLabel;
    Label10: TLabel;
    lblContador: TLabel;
    pcGestion: TPageControl;
    tsPersonal: TTabSheet;
    dtgAsignacion: TwwDBGrid;
    dtgAsociadoIButton: TwwIButton;
    pnlPersonal: TPanel;
    bABloque: TBitBtn;
    bAUno: TBitBtn;
    tsHojaruta: TTabSheet;
    dtgCabHoja: TwwDBGrid;
    wwIButton2: TwwIButton;
    pnlBuscaCab: TPanel;
    Label7: TLabel;
    Label6: TLabel;
    bBuscaFechas: TBitBtn;
    dtpFin: TDateTimePicker;
    dtpInicio: TDateTimePicker;
    tsDetalle: TTabSheet;
    pnlHojaruta: TPanel;
    bQBloque: TBitBtn;
    bQUno: TBitBtn;
    bExportar: TBitBtn;
    bImprimir: TBitBtn;
    dtgHojaRuta: TwwDBGrid;
    wwIButton1: TwwIButton;
    ppDesigner1: TppDesigner;
    ppbdReporteHojaRuta: TppBDEPipeline;
    pprReporteHojaRuta: TppReport;
    ppParameterList1: TppParameterList;
    ppDesigner2: TppDesigner;
    ppbdReporteColegios: TppBDEPipeline;
    pprReporteColegios: TppReport;
    ppParameterList2: TppParameterList;
    bConsolidado: TBitBtn;
    dblTipoGest: TwwDBLookupCombo;
    Label5: TLabel;
    mdesTipoGest: TMaskEdit;
    txtColegioAso: TEdit;
    lblBuscar: TLabel;
    gbEstResult: TGroupBox;
    rbExitoso: TRadioButton;
    rbNoExitoso: TRadioButton;
    Label9: TLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel40: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel41: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppImage2: TppImage;
    ppLabel44: TppLabel;
    ppLabel46: TppLabel;
    ppLine21: TppLine;
    ppLine30: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine40: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine56: TppLine;
    pplUsuario: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine57: TppLine;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine67: TppLine;
    ppLine68: TppLine;
    ppLine69: TppLine;
    ppLabel65: TppLabel;
    ppLine70: TppLine;
    ppLine71: TppLine;
    ppLine72: TppLine;
    ppLine73: TppLine;
    ppPageStyle1: TppPageStyle;
    ppLine74: TppLine;
    ppHeaderBand1: TppHeaderBand;
    ppltitulo: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel22: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBText5: TppDBText;
    ppLabel32: TppLabel;
    ppImage1: TppImage;
    ppLabel21: TppLabel;
    ppLabel2: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel18: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine1: TppLine;
    ppLine14: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine28: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    ppDBText1: TppDBText;
    ppLine15: TppLine;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppLine17: TppLine;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine20: TppLine;
    ppDBText13: TppDBText;
    ppDBText9: TppDBText;
    ppDBText12: TppDBText;
    ppDBText26: TppDBText;
    ppLine58: TppLine;
    ppLine61: TppLine;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLine10: TppLine;
    ppLine63: TppLine;
    ppLine64: TppLine;
    ppDBText10: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppLine66: TppLine;
    ppDBText31: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel25: TppLabel;
    ppDBText3: TppDBText;
    ppLabel27: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppDBText14: TppDBText;
    ppLabel37: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppDBText2: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel19: TppLabel;
    ppDBText11: TppDBText;
    ppLabel20: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel3: TppLabel;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine12: TppLine;
    ppLine27: TppLine;
    ppLine29: TppLine;
    ppLabel17: TppLabel;
    ppLine3: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLabel29: TppLabel;
    ppLine9: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel30: TppLabel;
    ppDBMemo2: TppDBMemo;
    ppLabel7: TppLabel;
    ppLabel33: TppLabel;
    ppLine8: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel13: TppLabel;
    ppLine19: TppLine;
    ppLine2: TppLine;
    ppLabel12: TppLabel;
    ppLine13: TppLine;
    ppLine31: TppLine;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel48: TppLabel;
    ppLabel60: TppLabel;
    ppLine60: TppLine;
    ppLabel61: TppLabel;
    ppLabel16: TppLabel;
    ppLabel9: TppLabel;
    ppLine11: TppLine;
    ppLabel45: TppLabel;
    ppLabel47: TppLabel;
    ppLine45: TppLine;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLine59: TppLine;
    ppLine62: TppLine;
    ppLine65: TppLine;
    ppLabel64: TppLabel;
    ppDBText32: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLabel31: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel4: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLabel11: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    dtgExcel: TwwDBGrid;
    wwIButton3: TwwIButton;
    dtgData: TDBGrid;
 //Inicio HPC_201503_ASO
    gbadiciona: TGroupBox;
    gbAdiciona2: TGroupBox;
    pprReporteHojaRutaDomicilio: TppReport;
    ppParameterList3: TppParameterList;
    ppHeaderBand3: TppHeaderBand;
    ppLabel66: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLabel67: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppImage3: TppImage;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape2: TppShape;
    ppLine75: TppLine;
    ppLine76: TppLine;
    ppLine77: TppLine;
    ppLine78: TppLine;
    ppDBCalc10: TppDBCalc;
    ppLine79: TppLine;
    ppDBText33: TppDBText;
    ppLine80: TppLine;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppLine81: TppLine;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppLine82: TppLine;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppLine83: TppLine;
    ppLine84: TppLine;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppLine85: TppLine;
    ppLine86: TppLine;
    ppLine87: TppLine;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppLine88: TppLine;
    ppDBText47: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppDBText48: TppDBText;
    ppLine89: TppLine;
    ppLine90: TppLine;
    ppSummaryBand3: TppSummaryBand;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel75: TppLabel;
    ppDBText49: TppDBText;
    ppLabel76: TppLabel;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLabel77: TppLabel;
    ppDBText50: TppDBText;
    ppLabel78: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppDBText51: TppDBText;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine91: TppLine;
    ppLine92: TppLine;
    ppLine93: TppLine;
    ppLine94: TppLine;
    ppLine95: TppLine;
    ppLine96: TppLine;
    ppLine97: TppLine;
    ppLine98: TppLine;
    ppLine99: TppLine;
    ppLine100: TppLine;
    ppLine101: TppLine;
    ppLine102: TppLine;
    ppLine103: TppLine;
    ppLine104: TppLine;
    ppLine105: TppLine;
    ppLine106: TppLine;
    ppLine107: TppLine;
    ppGroupFooterBand8: TppGroupFooterBand;
    chkCADAPS: TCheckBox;
    rdgApoReg: TRadioGroup;
 //Final HPC_201503_ASO
 //Inicio HPC_20154_ASO
    lblFallecidos: TLabel;
    dblcFallecidos: TwwDBLookupCombo;
    pnlCuentaInd: TPanel;
    vleDNI: TValueListEditor;
    btnBloque: TBitBtn;
    Shape1: TShape;
    btnCtaInd: TBitBtn;
    btnPnlExit: TButton;
 //Final HPC_201504_ASO
    procedure FormActivate(Sender: TObject);
    procedure dblcdcoddepChange(Sender: TObject);
    procedure dblcdcoddepExit(Sender: TObject);
    procedure dblcdcodproChange(Sender: TObject);
    procedure dblcdcodproExit(Sender: TObject);
    procedure dblcdcoddisChange(Sender: TObject); 
    procedure dblcdResponsableChange(Sender: TObject);
    procedure dblcdColegioChange(Sender: TObject);
    procedure dblcdColegioExit(Sender: TObject);
    procedure dblcdResponsableExit(Sender: TObject); 
    procedure rbDomicilioClick(Sender: TObject);
    procedure rbColegioClick(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure txtColegioAsoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bABloqueClick(Sender: TObject);
    procedure bAUnoClick(Sender: TObject);
    procedure BuscarHojaRutaDetalle(xPerAsiHoj : String);
    procedure BuscarPersonal;
    procedure BuscarPersonal2;
    procedure pcGestionChange(Sender: TObject);
    procedure bQBloqueClick(Sender: TObject);
    procedure bQUnoClick(Sender: TObject);
    procedure BuscarHojaRuta; 
    procedure bBuscaFechasClick(Sender: TObject);
    function isFechasValidas():boolean;
    procedure dtgCabHojaDblClick(Sender: TObject);
    procedure bExportarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure dtgHojaRutaDblClick(Sender: TObject);
    procedure bConsolidadoClick(Sender: TObject);
    procedure dblTipoGestChange(Sender: TObject);
    procedure rbAsignadasClick(Sender: TObject);
    procedure rbNoAsignadasClick(Sender: TObject);
    procedure rbPendientesClick(Sender: TObject);
    procedure rbCerradasClick(Sender: TObject);
    procedure rbTodasClick(Sender: TObject);
    procedure rbAsignadasDblClick(Sender: TObject);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
 //Inicio HPC_201504_ASO
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCtaIndClick(Sender: TObject);
    procedure btnPnlExitClick(Sender: TObject);
    procedure btnBloqueClick(Sender: TObject);
 //Final HPC_201504_ASO
    
  private
    { Private declarations }
  public
    { Public declarations }
    //Inicio HPC_201503_ASO
    xSoloConsulta: String;
    //Final HPC_201503_ASO
 //Inicio HPC_201504_ASO
    vArchivoXLS: String;
    Procedure limpiarLista();
    Function isSeleccionado(): boolean;
    Procedure log(Mensaje: String; IArchivoPadre: String = '');
    Function crearReporte(ICont: integer): String;
 //Final HPC_201504_ASO
  end;

var
  fGestionCartera: TfGestionCartera;
  Var xPerAsiHoj : String;
  Var xIdAsociado : String;
  Var xDniAsociado : String;
  Var xNomAsociado :String;
  Var xPeriodoCartera :String;
  Var xPrintWhere : String;

implementation

//Inicio HPC_201504_ASO
//uses ASODM,ASO001, DateUtils, DB, ASO203;
// Inicio: HPC_201707_ASO
// Se añade la unidad PRE935 (cuenta individual en lote)
// uses ASODM,ASO001, DateUtils, DB, ASO203,ASO304;
uses ASODM,ASO001, DateUtils, DB, ASO203, PRE935;
// Fin: HPC_201707_ASO
//Final HPC_201504_ASO
{$R *.dfm}



procedure TfGestionCartera.FormActivate(Sender: TObject);
Var xSql:String;
begin



    //Inicio HPC_201504_ASO
   //--Llena combo Fallecidos--//
      xSql := 'SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                           +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                           + 'AND C.ESTREG=1 '
                           +  'AND D.ESTREG=1   '
                           +  'AND C.CODCAB=''FIRMO'' ORDER BY 1 DESC '  ;
      DM1.cdsQry25.Close;
      DM1.cdsQry25.DataRequest(xSql);
      DM1.cdsQry25.Open;
      dblcFallecidos.LookupTable := DM1.cdsQry25;
      dblcFallecidos.LookupField := 'NOMVAL';
      dblcFallecidos.Selected.Clear;
      dblcFallecidos.Selected.Add('NOMVAL'#9'8'#9'Código'#9#9);
      dblcFallecidos.Text:='NO';
    //Final HPC_201504_ASO

   //--Llena Combo Departamento--//
   xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSql);
   DM1.cdsDpto.Open;
   dblcdcoddep.Selected.Clear;
   dblcdcoddep.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
   dblcdcoddep.Selected.Add('DPTODES'#9'15'#9'Descripción'#9#9);

   //--Llena Combo Tipo de Gestion--//
   xSql := ' SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''TIPOGEST'' '  ;
   DM1.cdsTipoGes.Close;
   DM1.cdsTipoGes.DataRequest(xSql);
   DM1.cdsTipoGes.Open;
   dblTipoGest.Selected.Clear;
   dblTipoGest.Selected.Add('VALDES01'#9'2'#9'Código'#9#9);
   dblTipoGest.Selected.Add('NOMVAL'#9'15'#9'Descripción'#9#9);

   //--Llena Combo Responsable--//
   xSql := ' SELECT DISTINCT O.USERID,T.USERNOM FROM ASO_NIV_USU_OTO O   '
            +'   INNER JOIN TGE006 T ON O.USERID=T.USERID  '
            +'   WHERE O.USERNIV=''N1'' --ASESORES '  ;
   DM1.cdsResponsable.Close;
   DM1.cdsResponsable.DataRequest(xSql);
   DM1.cdsResponsable.Open;
   dblcdResponsable.Selected.Clear;
   dblcdResponsable.Selected.Add('USERID'#9'2'#9'UserId'#9#9);
   dblcdResponsable.Selected.Add('USERNOM'#9'15'#9'Nombre'#9#9);
   dblcdResponsable.Text:=DM1.wUsuario;

   //--Valores iniciales--//
    dtgExcel.Visible:=false;
    //Inicio HPC_201503_ASO
    //rbDomicilio.Checked :=true;
    //rbColegio.Checked:= false;
    rbDomicilio.Checked :=False;
    rbColegio.Checked:= True;
    //Final HPC_201503_ASO
    dblcdcoddis.Enabled:=false;
    dblcdcodpro.Enabled:=false;
    dblcdColegio.Enabled:=false;
    cbAfiliacion.Checked:=true;
    cbNoveles.Checked:=true;
    cbFamiliarizada.Checked:=true;
    cbPrecese.Checked:=true;
    rbNoAsignadas.Checked:=true;
    gbGestion.Caption:='Est. Asig. Hoja Ruta';
    rbNoAsignadas.Left:=11;
    rbAsignadas.Left:=105;
    rbTodas.Left:=184;
    rbPendientes.Visible:=false;
    rbCerradas.Visible:=false;
    pnlPersonal.Enabled:=false;
    pnlHojaruta.Enabled:=false; 
    lblContador.Caption := IntToStr(0) + ' Registros ';
    lblAfiliacion.Caption:=IntToStr(0);
    lblNoveles.Caption:='0';
    lblFamili.Caption:='0';
    lblPrecese.Caption:='0';
    //Inicio HPC_201503_ASO
    //dblcdResponsable.Enabled:=false;
    If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3') or (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N4') Then
    Begin
      dblcdResponsable.Enabled:=true;
      xSoloConsulta:='S';
      gbadiciona.Enabled  := False;
      //gbAdiciona2.Enabled := False;
    End
    Else
    Begin
      dblcdResponsable.Enabled:=false;
      xSoloConsulta:='N';
      gbadiciona.Enabled  := True;
      //gbAdiciona2.Enabled := True;
    End;
    //Final HPC_201503_ASO
    lblBuscar.Caption:='Buscar Asociado:';
    pcGestion.ActivePage:=tsPersonal;
    BuscarPersonal;
    pnlPersonal.Enabled:=true;
    dtpInicio.Date:=StrToDate('01/'+copy(DateToStr(EndOfTheMonth(Date)),4,7));
    dtpFin.Date:=EndOfTheMonth(Date);
    tsDetalle.TabVisible:=false;
end;

procedure TfGestionCartera.dblcdcoddepChange(Sender: TObject);
Var xSql:String;
begin
  if dblcdcoddep.Text <>'' then
  begin
  If Length(Trim(dblcdcoddep.Text)) = 2 Then
  begin
     medesdep.Text := DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', dblcdcoddep.Text);
     If Trim(medesdep.Text) <> '' Then
     Begin
        xSql := 'SELECT CIUDID, CIUDDES FROM APO123 WHERE DPTOID = '+QuotedStr(dblcdcoddep.Text)+' ORDER BY CIUDID';
        DM1.cdsProvin.Close;
        DM1.cdsProvin.DataRequest(xSql);
        DM1.cdsProvin.Open;
        dblcdcodpro.Selected.Clear;
        dblcdcodpro.Selected.Add('CIUDID'#9'4'#9'Código'#9#9);
        dblcdcodpro.Selected.Add('CIUDDES'#9'15'#9'Descripción'#9#9);
     End;
    dblcdcodpro.Enabled:=true;
  end;
  end
  else
  begin
        dblcdcoddep.Text := '';
        medesdep.Text    := '';
        dblcdcodpro.Text := '';
        medespro.Text    := '';
        dblcdcoddis.Text := '';
        medesdis.Text    := '';
        dblcdColegio.Text:='';
        mdesColegio.Text :='';
        dblcdColegio.Enabled:=false;
  End;
End;

procedure TfGestionCartera.dblcdcoddepExit(Sender: TObject);
begin
  If Trim(dblcdcoddep.Text) = '' Then
  Begin
     medesdep.Text    := '';
     dblcdcodpro.Enabled:=false;
     dblcdcodpro.Text := '';
     medespro.Text    := '';
     dblcdcoddis.Enabled:=false;
     dblcdcoddis.Text := '';
     medesdis.Text    := '';
  End;
end;

procedure TfGestionCartera.dblcdcodproChange(Sender: TObject);
Var xSql:String;
begin
  if dblcdcodpro.Text <>'' then
  begin
  If Length(Trim(dblcdcodpro.Text)) = 4 Then
  Begin
     medespro.Text := DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', dblcdcodpro.Text);
     If Trim(medespro.Text) <> '' Then
     Begin
        xSql := 'SELECT ZIPID, ZIPDES FROM APO122 WHERE CIUDID = '+QuotedStr(dblcdcodpro.Text)+' ORDER BY ZIPID';
        DM1.cdsDist.Close;
        DM1.cdsDist.DataRequest(xSql);
        DM1.cdsDist.Open;
        dblcdcoddis.Selected.Clear;
        dblcdcoddis.Selected.Add('ZIPID'#9'6'#9'Código'#9#9);
        dblcdcoddis.Selected.Add('ZIPDES'#9'25'#9'Descripción'#9#9);
     End;
     dblcdcoddis.Enabled:=true;
  End;
  end
  else
  begin
  dblcdcodpro.Text := '';
  medespro.Text    := '';
  dblcdcoddis.Text := '';
  medesdis.Text    := '';
  dblcdColegio.Text:='' ;
  mdesColegio.Text:='';
  dblcdColegio.Enabled:=false;
  end;
end;

procedure TfGestionCartera.dblcdcodproExit(Sender: TObject);
begin
  If Trim(dblcdcodpro.Text) = '' Then
  Begin
     medespro.Text    := '';
     dblcdcoddis.Enabled:=false;
     dblcdcoddis.Text := '';
     medesdis.Text    := '';
  End;
end;

procedure TfGestionCartera.dblcdcoddisChange(Sender: TObject);
Var xSql: String;
begin
  if dblcdcoddis.Text <>'' then
  begin
  If Length(Trim(dblcdcoddis.Text)) = 6 Then
  Begin
   medesdis.Text := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', dblcdcoddis.Text);

   if rbColegio.Checked=true then
   begin
        //--Llena Combo Colegio--//
        xSql :='SELECT ACE.NOMCENEDU ||  '' ('' || NVE.NIVEDU_DES || '')'' NOMCENEDU, '
                + '       ACE.CENEDUID '
                + '  FROM ASO_CEN_EDU ACE, NIV_CEN_EDU NVE '
                + ' WHERE ACE.NIVEDU_ID = NVE.NIVEDU_ID(+) '
                + '   AND ACE.UBIGEO_DIR = ' + QuotedStr(dblcdcoddis.Text)
                + ' ORDER BY NOMCENEDU, NIVEDU_DES';
        DM1.cdsColegio.Close;
        DM1.cdsColegio.DataRequest(xSQL);
        DM1.cdsColegio.Open;
        dblcdColegio.LookupTable := DM1.cdsColegio;
        dblcdColegio.LookupField := 'CENEDUID';
        dblcdColegio.Selected.Clear;
        dblcdColegio.Selected.Add('NOMCENEDU'#9'70'#9'Colegio');
        dblcdColegio.Enabled:=true;
   end;
  end;
  end
  else
  begin
   dblcdcoddis.Text := '';
   medesdis.Text    := '';
   dblcdColegio.Text := '';
   mdesColegio.Text  := '';
   dblcdColegio.Enabled:=false;
  end;
end;

procedure TfGestionCartera.dblTipoGestChange(Sender: TObject);
begin
    if dblTipoGest.Text<>'' then
   begin
        If DM1.cdsTipoGes.Locate('VALDES01', VarArrayof([dblTipoGest.Text]), []) Then
        mdesTipoGest.Text :=DM1.cdsTipoGes.fieldbyname('NOMVAL').AsString;
   end
   else
   begin
        mdesTipoGest.Text :='';
   end;
end;

procedure TfGestionCartera.dblcdResponsableChange(Sender: TObject);
begin
      if dblcdResponsable.Text<>'' then
      begin
         If DM1.cdsResponsable.Locate('USERID', VarArrayof([dblcdResponsable.Text]), []) Then
         mdesResponsable.Text:= DM1.cdsResponsable.fieldbyname('USERNOM').AsString;
      end
      else
      begin
         mdesResponsable.Text :='';
      end;
end;

procedure TfGestionCartera.dblcdResponsableExit(Sender: TObject);
begin
    If Trim(dblcdResponsable.Text) = '' Then
     mdesResponsable.Text    := '';
end;


procedure TfGestionCartera.dblcdColegioChange(Sender: TObject);
begin
      mdesColegio.Text := DM1.cdsColegio.fieldbyname('CENEDUID').AsString;
end;

procedure TfGestionCartera.dblcdColegioExit(Sender: TObject);
begin
    If Trim(dblcdColegio.Text) = '' Then
     mdesColegio.Text    := '';
end;


procedure TfGestionCartera.rbDomicilioClick(Sender: TObject);
begin
        dblcdcoddep.Text:='';
        dblcdcodpro.Text:='';
        dblcdcoddis.Text:='';
        dblcdColegio.Text:='';
        dblcdcodpro.Enabled:=false;
        dblcdcoddis.Enabled:=false;
        lblBuscar.Caption:='Buscar Asociado:';
        //Inicio HPC_201503_ASO
        chkCADAPS.Enabled := False;
        chkCADAPS.Checked := False;
        //Final HPC_201503_ASO

end;

procedure TfGestionCartera.rbColegioClick(Sender: TObject);
begin
        dblcdcoddep.Text:='';
        dblcdcodpro.Text:='';
        dblcdcoddis.Text:='';
        dblcdColegio.Text:='';
        dblcdcodpro.Enabled:=false;
        dblcdcoddis.Enabled:=false;
        lblBuscar.Caption:='Buscar Colegio:';
        //Inicio HPC_201503_ASO
        chkCADAPS.Enabled := True;
        chkCADAPS.Checked := False;
        //Final HPC_201503_ASO

end;
 
//Inicio: SPP_201407_ASO
procedure TfGestionCartera.BuscarPersonal;
Var xSql: String;
Var xSqlsum: String;
Var xSqlWhere : String;
Var tipo1 :String;
Var tipo2 :String;
Var tipo3 :String;
Var tipo4 :String;
Var tipo5 :String;
Var tipo6 :String;
Var xTipoCar :String;
Var xColegio :String;
Var xEstRes :String;
Var xPer:String;
begin
        //--Valida si la busqueda es los Asignados
        if rbAsignadas.Checked or  rbTodas.Checked = true then
        begin
                BuscarPersonal2;
                exit;
        end;

        //Obtener el ultimo Periodo.
        //Inicio HPC_201503_ASO
        //xSql:='SELECT MAX(TO_DATE(G.PERCAR,''DD/MM/YYYY'')) PERCAR FROM ASO_GENERA_ASIGNA_CARTERA_MOV G WHERE G.CODUSUASI='+QuotedStr(DM1.wUsuario) ;
        xSql:='SELECT MAX(TO_DATE(G.PERCAR,''DD/MM/YYYY'')) PERCAR FROM ASO_GENERA_ASIGNA_CARTERA_MOV G WHERE G.CODUSUASI='+QuotedStr(dblcdResponsable.Text) ;
        //Final HPC_201503_ASO
        DM1.cdsTemp2.Close;
        DM1.cdsTemp2.DataRequest(xSql);
        DM1.cdsTemp2.Open;
        //DM1.cdsTemp.FieldByName('PERCAR').AsString

        //CONSULTA PRINCIPAL
        xSql:=' SELECT   rownum,GAC.CODGEN,GAC.PERCAR,SUBSTR(GAC.PERCAR,4,7) PERCAR_SUB,H.PERASIHOJ,GAC.ASOID,GAC.DNIASO,GAC.CODMOD,GAC.NOMASO,GAC.DIRASO,DEPA.DPTODES DEP_ASO,PROVA.CIUDDES PROV_ASO,'
        +' DISA.ZIPABR DIS_ASO,GAC.CENEDU,GAC.DIRCOL,DEPC.DPTODES DEP_COL,PROVC.CIUDDES PROV_COL,DISC.ZIPABR DIS_COL,GAC.TIPCAR,TCAR.NOMVAL TIPO_CAR,'
      //Inicio HPC_201503_ASO       //
      //+' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTASIHOJ, EAH.NOMVAL EST_ASIGHOJA'
      //+' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC '
      // +' LEFT JOIN APO158  DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
      // +' LEFT JOIN APO123  PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
      // +' LEFT JOIN APO122  DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
        +' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTASIHOJ, EAH.NOMVAL EST_ASIGHOJA,ASO.ASOAPTSER '
        +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC '
        +' INNER JOIN APO201  ASO ON GAC.ASOID=ASO.ASOID '
        +' LEFT JOIN APO158  DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
        +' LEFT JOIN APO123  PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
        +' LEFT JOIN APO122  DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
      //Final  HPC_201503_ASO
        +'                                                                                                                               '
        +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
        +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)'
        +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL'
        +'                                                                                                                               '
        +' LEFT JOIN ASO_HOJARUTA_MOV H ON H.CODUSU=GAC.CODUSUASI AND H.ASOID=GAC.ASOID AND GAC.PERCAR=H.PERCAR AND H.ESTREG=''1'''
        +' LEFT JOIN ASO_GENERICA_DET TCAR ON TCAR.CODCAB=''TIPOCART'' AND TCAR.VALDES01=GAC.TIPCAR AND TCAR.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB ON TCAB.CODCAB=TCAR.CODCAB AND TCAB.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET TGES ON TGES.CODCAB=''TIPOGEST'' AND TGES.VALDES01=GAC.TIPGES AND TGES.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB2 ON TCAB2.CODCAB=TGES.CODCAB AND TCAB2.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET EASI ON EASI.CODCAB=''ESTASIGNACION'' AND EASI.VALDES01=GAC.ESTASIG AND EASI.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB3 ON TCAB3.CODCAB=EASI.CODCAB AND TCAB3.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET EAH ON EAH.CODCAB=''ESTASIGHOJARUTA'' AND EAH.VALDES01=H.ESTASIHOJ AND EAH.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB4 ON TCAB4.CODCAB=EAH.CODCAB AND TCAB4.ESTREG=1'
        //Inicio HPC_201504_ASO
        +' LEFT JOIN (SELECT DNI,'
        +'             RESTRICCIONES,'
        +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK3'
        +'             FROM INF_RENIEC_CAP) R ON R.DRK3 = 1'
        +'                              AND R.DNI = GAC.DNIASO'
        //Final HPC_201504_ASO

        +' WHERE GAC.PERCAR='+QuotedStr(DM1.cdsTemp2.FieldByName('PERCAR').AsString) +' AND GAC.ESTREG=1';


       //--Condicionales--//
       if  rbDomicilio.Checked= true then
       begin
        xSqlWhere :=' ';
        if dblcdcoddep.Text<>'' then
                xSqlWhere :=' AND DEPA.DPTOID='+QuotedStr(dblcdcoddep.Text);
        if dblcdcodpro.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND PROVA.CIUDID='+QuotedStr(dblcdcodpro.Text);
        if dblcdcoddis.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND DISA.ZIPID='+QuotedStr(dblcdcoddis.Text);

       end;

       if rbColegio.Checked=true then
       begin
        xSqlWhere :=' ';
        if dblcdcoddep.Text<>'' then
                xSqlWhere :=' AND DEPC.DPTOID='+dblcdcoddep.Text;
        if dblcdcodpro.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND PROVC.CIUDID='+QuotedStr(dblcdcodpro.Text);
        if dblcdcoddis.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND DISC.ZIPID='+QuotedStr(dblcdcoddis.Text);
        if dblcdColegio.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND GAC.CENEDUID='+QuotedStr(mdesColegio.Text);

         //Inicio HPC_201503_ASO
         //Solo aquellos COLEGIOS que tienen almenos UN ASOCIADO SIN CARTA DE AUTORIZACION DE DESCUENTO
         If chkCADAPS.Checked Then
         Begin
         xSqlWhere:= xSqlWhere +' AND 0<(SELECT COUNT(1) ' // ASOID,AUTDES,DEPC.DPTOID,PROVC.DPTOID,DISC.DPTOID,GAC.CENEDU,GAC.CENEDUID
                    +'FROM ASO_GENERA_ASIGNA_CARTERA_MOV A '
                    +'LEFT JOIN APO158  DEPC ON DEPC.DPTOID=SUBSTR(A.UBICOL,1,2) '
                    +'LEFT JOIN APO123  PROVC ON PROVC.DPTOID=SUBSTR(A.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(A.UBICOL,1,4) '
                    +'LEFT JOIN APO122  DISC ON DISC.DPTOID=SUBSTR(A.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(A.UBICOL,1,4) AND DISC.ZIPID=A.UBICOL '
                    +'WHERE A.CENEDUID=GAC.CENEDUID  AND NVL(AUTDES,''N'')=''N'') ';
         End;           
         //Final HPC_201503_ASO
        end;

        //Inicio HPC_201503_ASO
        Case rdgApoReg.ItemIndex Of
           0: xSqlWhere:= xSqlWhere +' ';
           1: xSqlWhere:= xSqlWhere+ ' AND NVL(ASO.ASOAPTSER,''N'')=''S''  ';
           2: xSqlWhere:= xSqlWhere+ ' AND NVL(ASO.ASOAPTSER,''N'')=''N''  ';
        End;
        //Final HPC_201503_ASO

       //Inicio HPC_201504_ASO
       if dblcFallecidos.Text<>'' then
       begin
          if dblcFallecidos.Text='SI' then
                 xSqlWhere:=xSqlWhere+' AND (NVL(FALLECIDO,''N'')=''S'' OR NVL(UPPER(RESTRICCIONES),'' '') LIKE ''FALLE%'')';
          if dblcFallecidos.Text='NO' then
                 xSqlWhere:=xSqlWhere+' AND (NVL(FALLECIDO,''N'')=''N'' AND NVL(UPPER(RESTRICCIONES),'' '') NOT LIKE ''FALLE%'')';
       end;
       //Final HPC_201504_ASO

        if cbAfiliacion.Checked=true then
                tipo1:=QuotedStr('1')
        else
        begin
                tipo1:=QuotedStr('0');
        end;
        if cbNoveles.Checked=true then
                tipo2:=QuotedStr('2')
        else
        begin
                tipo2:=QuotedStr('0');
        end;
        if cbFamiliarizada.Checked=true then
                tipo3:=QuotedStr('3')
        else
        begin
                tipo3:=QuotedStr('0');
        end;
        if cbPrecese.Checked=true then
                tipo4:=QuotedStr('4')
        else
        begin
                tipo4:=QuotedStr('0');
        end;

        xSqlWhere:= xSqlWhere +' AND GAC.TIPCAR IN ('+tipo1+','+tipo2+','+tipo3+','+tipo4+')';

        if dblTipoGest.Text<>'' then
                 xSqlWhere:= xSqlWhere +' AND GAC.TIPGES='+QuotedStr(dblTipoGest.Text);
        if dblcdResponsable.Text<>'' then
                 xSqlWhere:= xSqlWhere +' AND GAC.CODUSUASI='+QuotedStr(dblcdResponsable.Text);

        if rbTodas.Checked=false then
        begin
                if rbAsignadas.Checked=true then
                       xSqlWhere:= xSqlWhere +' AND H.ESTASIHOJ='+QuotedStr('1');
                if rbNoAsignadas.Checked=true then
                       xSqlWhere:= xSqlWhere +' AND NVL(H.ESTASIHOJ,0)=0';
        end;

        //caja de texto buscar--//
        xColegio:='%'+txtColegioAso.Text+'%';
        if rbDomicilio.Checked=true then
        begin
                if txtColegioAso.Text<>'' then
                         xSqlWhere:= xSqlWhere +'AND GAC.NOMASO LIKE '+QuotedStr(xColegio);
        end;
        if rbColegio.Checked=true then
        begin
                if txtColegioAso.Text<>'' then
                         xSqlWhere:= xSqlWhere +'AND GAC.CENEDU LIKE '+QuotedStr(xColegio);
        end;



       //--llenar la Grilla--//
         xSqlsum:=xSql+xSqlWhere; //guarda query para contar las carteras
         xSql:=xSql+xSqlWhere;

         DM1.cdsConsultaCartera.Close;
         DM1.cdsConsultaCartera.DataRequest(xSql);
         DM1.cdsConsultaCartera.Open;
         DM1.cdsConsultaCartera.IndexFieldNames:='ROWNUM';
         dtgAsignacion.DataSource := DM1.dsConsultaCartera;
        // lblContador.Caption := IntToStr(DM1.cdsConsultaCartera.RecordCount) + ' Registros ';

         dtgAsignacion.Selected.Clear;
         dtgAsignacion.Selected.Add('ROWNUM'#9'5'#9'Numero'#9#9);
         dtgAsignacion.Selected.Add('PERCAR_SUB'#9'10'#9'Per. Cartera'#9#9);
         dtgAsignacion.Selected.Add('PERASIHOJ'#9'10'#9'Hoja de Ruta'#9#9);
         dtgAsignacion.Selected.Add('DNIASO'#9'10'#9'D.N.I.'#9#9);
         dtgAsignacion.Selected.Add('ASOID'#9'10'#9'AsoId'#9#9);
         dtgAsignacion.Selected.Add('CODMOD'#9'12'#9'Cod.Mod'#9#9);
         dtgAsignacion.Selected.Add('NOMASO'#9'15'#9'Nombre Completo'#9#9);
         dtgAsignacion.Selected.Add('DIRASO'#9'15'#9'Dirección'#9#9);
         dtgAsignacion.Selected.Add('DEP_ASO'#9'15'#9'Departamento'#9#9);
         dtgAsignacion.Selected.Add('PROV_ASO'#9'15'#9'Provincia'#9#9);
         dtgAsignacion.Selected.Add('DIS_ASO'#9'15'#9'Distrito'#9#9);
         dtgAsignacion.Selected.Add('CENEDU'#9'18'#9'Centro Educativo'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('DIRCOL'#9'18'#9'Dirección'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('DEP_COL'#9'15'#9'Departamento'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('PROV_COL'#9'15'#9'Provincia'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('DIS_COL'#9'15'#9'Distrito'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('TIPO_CAR'#9'12'#9'Cartera'#9#9);
         dtgAsignacion.Selected.Add('TIPO_GEST'#9'12'#9'Gestion'#9#9);
         dtgAsignacion.Selected.Add('CODUSUASI'#9'12'#9'Responsable'#9#9);
         dtgAsignacion.Selected.Add('EST_ASIGHOJA'#9'12'#9'Esta.Hojaruta'#9#9);
         dtgAsignacion.ApplySelected;

         //--Contador de cartera//
         lblAfiliacion.Caption:=IntToStr(0);
         lblNoveles.Caption:='0';
         lblFamili.Caption:='0';
         lblPrecese.Caption:='0';

         xSqlsum:= 'SELECT DISTINCT T2.tipcar,COUNT(T2.TIPCAR) over (partition by T2.TIPCAR) CANT FROM (SELECT DISTINCT T.ASOID,T.TIPCAR FROM ('+xSqlsum+')T) T2 order by T2.tipcar asc';

          DM1.cdsTemp.Close;
          DM1.cdsTemp.DataRequest(xSqlsum);
          DM1.cdsTemp.Open;

          While Not DM1.cdsTemp.Eof Do
          Begin
            Refresh;
            xTipoCar := DM1.cdsTemp.FieldByName('tipcar').AsString;
            if xTipoCar='1' then
                  lblAfiliacion.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='2' then
                  lblNoveles.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='3' then
                  lblFamili.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='4' then
                  lblPrecese.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;

            DM1.cdsTemp.Next;
          End;
          lblContador.Caption:=IntToStr(StrToInt(lblAfiliacion.Caption)+StrToInt(lblNoveles.Caption)+StrToInt(lblFamili.Caption)+StrToInt(lblPrecese.Caption))+ ' Registros ';

end;
//Fin: SPP_201407_ASO

//Inicio: SPP_201407_ASO
procedure TfGestionCartera.BuscarPersonal2;
Var xSql: String;
Var xSqlsum: String;
Var xSqlWhere : String;
Var tipo1 :String;
Var tipo2 :String;
Var tipo3 :String;
Var tipo4 :String;
Var tipo5 :String;
Var tipo6 :String;
Var xTipoCar :String;
Var xColegio :String;
Var xEstRes :String;
begin
        //--E ; NE--//
        if rbAsignadas.Checked=true then
        begin
               if rbExitoso.Checked=true then
                        xEstRes:='E';
               if rbNoExitoso.Checked=true then
                        xEstRes:='NE';
        end;


        if  xEstRes <> '' then
        begin
                //CONSULTA PRINCIPAL
                xSql:=' SELECT  distinct rownum,GAC.CODGEN,GAC.PERCAR,SUBSTR(GAC.PERCAR,4,7) PERCAR_SUB,H.PERASIHOJ,GAC.ASOID,GAC.DNIASO,GAC.CODMOD,GAC.NOMASO,GAC.DIRASO,DEPA.DPTODES DEP_ASO,PROVA.CIUDDES PROV_ASO,'
                +' DISA.ZIPABR DIS_ASO,GAC.CENEDU,GAC.DIRCOL,DEPC.DPTODES DEP_COL,PROVC.CIUDDES PROV_COL,DISC.ZIPABR DIS_COL,GAC.TIPCAR,TCAR.NOMVAL TIPO_CAR,'
              //Inicio HPC_201503_ASO       //
              //+' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTASIHOJ, EAH.NOMVAL EST_ASIGHOJA,'
              //+' (SELECT XXRES.ESTRES FROM ASO_RESULT_ASEPREV_MOV  XXRES WHERE  XXRES.ESTRES='+QuotedStr(xEstRes)+' AND XXRES.CODRES=(SELECT MAX(XRES.CODRES) FROM ASO_RESULT_ASEPREV_MOV XRES WHERE XRES.CODUSU=GAC.CODUSUASI AND XRES.ASOID=GAC.ASOID AND XRES.PERCAR=H.PERCAR)) ESTRES'
              //+' FROM ASO_GENERA_ASIGNA_CARTERA_MOV  GAC'
              //+' LEFT JOIN APO158  DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
              //+' LEFT JOIN APO123  PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
              //+' LEFT JOIN APO122  DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
                +' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTASIHOJ, EAH.NOMVAL EST_ASIGHOJA,ASO.ASOAPTSER, '
                +' (SELECT XXRES.ESTRES FROM ASO_RESULT_ASEPREV_MOV  XXRES WHERE  XXRES.ESTRES='+QuotedStr(xEstRes)+' AND XXRES.CODRES=(SELECT MAX(XRES.CODRES) FROM ASO_RESULT_ASEPREV_MOV XRES WHERE XRES.CODUSU=GAC.CODUSUASI AND XRES.ASOID=GAC.ASOID AND XRES.PERCAR=H.PERCAR)) ESTRES'
                +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV  GAC'
                +' INNER JOIN APO201  ASO ON GAC.ASOID=ASO.ASOID '
                +' LEFT JOIN APO158  DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
                +' LEFT JOIN APO123  PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
                +' LEFT JOIN APO122  DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
               //Final  HPC_201503_ASO
                +'                                                                                                                               '
                +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
                +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)'
                +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL'
                +'                                                                                                                               '
                +' LEFT JOIN ASO_HOJARUTA_MOV H ON H.CODUSU=GAC.CODUSUASI AND H.ASOID=GAC.ASOID AND GAC.PERCAR=H.PERCAR AND H.ESTREG=''1'''
                +' LEFT JOIN ASO_RESULT_ASEPREV_MOV RES ON RES.CODUSU=GAC.CODUSUASI AND RES.ASOID=GAC.ASOID AND RES.PERCAR=H.PERCAR AND RES.ESTREG=''1'''
                +' LEFT JOIN ASO_GENERICA_DET TCAR ON TCAR.CODCAB=''TIPOCART'' AND TCAR.VALDES01=GAC.TIPCAR AND TCAR.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB ON TCAB.CODCAB=TCAR.CODCAB AND TCAB.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_DET TGES ON TGES.CODCAB=''TIPOGEST'' AND TGES.VALDES01=GAC.TIPGES AND TGES.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB2 ON TCAB2.CODCAB=TGES.CODCAB AND TCAB2.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_DET EASI ON EASI.CODCAB=''ESTASIGNACION'' AND EASI.VALDES01=GAC.ESTASIG AND EASI.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB3 ON TCAB3.CODCAB=EASI.CODCAB AND TCAB3.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_DET EAH ON EAH.CODCAB=''ESTASIGHOJARUTA'' AND EAH.VALDES01=H.ESTASIHOJ AND EAH.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB4 ON TCAB4.CODCAB=EAH.CODCAB AND TCAB4.ESTREG=1'
                //Inicio HPC_201504_ASO
                +'  LEFT JOIN (SELECT DNI,'
                +'             RESTRICCIONES,'
                +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK3'
                +'             FROM INF_RENIEC_CAP) R ON R.DRK3 = 1'
                +'                              AND R.DNI = GAC.DNIASO'
                //Final HPC_201504_ASO

                +' WHERE GAC.ESTREG=1'
                +' AND (SELECT XXRES.ESTRES FROM ASO_RESULT_ASEPREV_MOV XXRES WHERE  XXRES.ESTRES='+QuotedStr(xEstRes)+' AND XXRES.CODRES=(SELECT MAX(XRES.CODRES) FROM ASO_RESULT_ASEPREV_MOV XRES WHERE XRES.CODUSU=GAC.CODUSUASI AND XRES.ASOID=GAC.ASOID AND XRES.PERCAR=H.PERCAR)) IS NOT NULL' ;

               //--Condicionales--//
               if  rbDomicilio.Checked= true then
               begin
                xSqlWhere :=' ';
                if dblcdcoddep.Text<>'' then
                        xSqlWhere :=' AND DEPA.DPTOID='+QuotedStr(dblcdcoddep.Text);
                if dblcdcodpro.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND PROVA.CIUDID='+QuotedStr(dblcdcodpro.Text);
                if dblcdcoddis.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND DISA.ZIPID='+QuotedStr(dblcdcoddis.Text);

               end;

               if rbColegio.Checked=true then
               begin
                xSqlWhere :=' ';
                if dblcdcoddep.Text<>'' then
                        xSqlWhere :=' AND DEPC.DPTOID='+dblcdcoddep.Text;
                if dblcdcodpro.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND PROVC.CIUDID='+QuotedStr(dblcdcodpro.Text);
                if dblcdcoddis.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND DISC.ZIPID='+QuotedStr(dblcdcoddis.Text);
                if dblcdColegio.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND GAC.CENEDUID='+QuotedStr(mdesColegio.Text);

                 //Inicio HPC_201503_ASO
                 //Solo aquellos COLEGIOS que tienen almenos UN ASOCIADO SIN CARTA DE AUTORIZACION DE DESCUENTO
                 If chkCADAPS.Checked Then
                 Begin
                  xSqlWhere:='AND 0<(SELECT COUNT(1) ' // ASOID,AUTDES,DEPC.DPTOID,PROVC.DPTOID,DISC.DPTOID,GAC.CENEDU,GAC.CENEDUID
                             +'FROM ASO_GENERA_ASIGNA_CARTERA_MOV A '
                             +'LEFT JOIN APO158  DEPC ON DEPC.DPTOID=SUBSTR(A.UBICOL,1,2) '
                             +'LEFT JOIN APO123  PROVC ON PROVC.DPTOID=SUBSTR(A.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(A.UBICOL,1,4) '
                             +'LEFT JOIN APO122  DISC ON DISC.DPTOID=SUBSTR(A.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(A.UBICOL,1,4) AND DISC.ZIPID=A.UBICOL '
                             +'WHERE A.CENEDUID=GAC.CENEDUID  AND NVL(AUTDES,''N'')=''N'') ';
                 End;
                 //Final HPC_201503_ASO
                end;

                 //Inicio HPC_201503_ASO
                 Case rdgApoReg.ItemIndex Of
                    0: xSqlWhere:= xSqlWhere +' ';
                    1: xSqlWhere:= xSqlWhere+ ' AND NVL(ASO.ASOAPTSER,''N'')=''S''  ';
                    2: xSqlWhere:= xSqlWhere+ ' AND NVL(ASO.ASOAPTSER,''N'')=''N''  ';
                 End;
                 //Final HPC_201503_ASO

                 //Inicio HPC_201504_ASO
                 if dblcFallecidos.Text<>'' then
                 begin
                     if dblcFallecidos.Text='SI' then
                            xSqlWhere:=xSqlWhere+' AND (NVL(ASO.FALLECIDO,''N'')=''S'' OR NVL(UPPER(RESTRICCIONES),'' '') LIKE ''FALLE%'')';
                     if dblcFallecidos.Text='NO' then
                            xSqlWhere:=xSqlWhere+' AND (NVL(ASO.FALLECIDO,''N'')=''N'' AND NVL(UPPER(RESTRICCIONES),'' '') NOT LIKE ''FALLE%'')';
                 end;
                 //Final HPC_201504_ASO


                if cbAfiliacion.Checked=true then
                        tipo1:=QuotedStr('1')
                else
                begin
                        tipo1:=QuotedStr('0');
                end;
                if cbNoveles.Checked=true then
                        tipo2:=QuotedStr('2')
                else
                begin
                        tipo2:=QuotedStr('0');
                end;
                if cbFamiliarizada.Checked=true then
                        tipo3:=QuotedStr('3')
                else
                begin
                        tipo3:=QuotedStr('0');
                end;
                if cbPrecese.Checked=true then
                        tipo4:=QuotedStr('4')
                else
                begin
                        tipo4:=QuotedStr('0');
                end;

                xSqlWhere:= xSqlWhere +' AND GAC.TIPCAR IN ('+tipo1+','+tipo2+','+tipo3+','+tipo4+')';

                if dblTipoGest.Text<>'' then
                         xSqlWhere:= xSqlWhere +' AND GAC.TIPGES='+QuotedStr(dblTipoGest.Text);
                if dblcdResponsable.Text<>'' then
                         xSqlWhere:= xSqlWhere +' AND GAC.CODUSUASI='+QuotedStr(dblcdResponsable.Text);

                if rbTodas.Checked=false then
                begin
                        if rbAsignadas.Checked=true then
                               xSqlWhere:= xSqlWhere +' AND H.ESTASIHOJ='+QuotedStr('1');
                        if rbNoAsignadas.Checked=true then
                               xSqlWhere:= xSqlWhere +' AND NVL(H.ESTASIHOJ,0)=0';
                end;

                //caja de texto buscar--//
                xColegio:='%'+txtColegioAso.Text+'%';
                if rbDomicilio.Checked=true then
                begin
                        if txtColegioAso.Text<>'' then
                                 xSqlWhere:= xSqlWhere +'AND GAC.NOMASO LIKE '+QuotedStr(xColegio);
                end;
                if rbColegio.Checked=true then
                begin
                        if txtColegioAso.Text<>'' then
                                 xSqlWhere:= xSqlWhere +'AND GAC.CENEDU LIKE '+QuotedStr(xColegio);
                end;
          end
          else
          begin
               //CONSULTA PRINCIPAL
                xSql:=' SELECT  distinct rownum,GAC.CODGEN,GAC.PERCAR ,SUBSTR(GAC.PERCAR,4,7) PERCAR_SUB,H.PERASIHOJ,GAC.ASOID,GAC.DNIASO,GAC.CODMOD,GAC.NOMASO,GAC.DIRASO,DEPA.DPTODES DEP_ASO,PROVA.CIUDDES PROV_ASO,'
                +' DISA.ZIPABR DIS_ASO,GAC.CENEDU,GAC.DIRCOL,DEPC.DPTODES DEP_COL,PROVC.CIUDDES PROV_COL,DISC.ZIPABR DIS_COL,GAC.TIPCAR,TCAR.NOMVAL TIPO_CAR,'
              //Inicio HPC_201503_ASO
              //+' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTASIHOJ, EAH.NOMVAL EST_ASIGHOJA,'
              //+' (SELECT XXRES.ESTRES FROM ASO_RESULT_ASEPREV_MOV  XXRES WHERE  XXRES.ESTRES='+QuotedStr(xEstRes)+' AND XXRES.CODRES=(SELECT MAX(XRES.CODRES) FROM ASO_RESULT_ASEPREV_MOV  XRES WHERE XRES.CODUSU=GAC.CODUSUASI AND XRES.ASOID=GAC.ASOID AND XRES.PERCAR=H.PERCAR)) ESTRES'
              //+' FROM ASO_GENERA_ASIGNA_CARTERA_MOV  GAC'
              //+' LEFT JOIN APO123  PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
              //+' LEFT JOIN APO122  DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
              //+'                                                                                                                               '
              //+' LEFT JOIN APO158  DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
              //+' LEFT JOIN APO123  PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)'
              //+' LEFT JOIN APO122  DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL'
                +' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTASIHOJ, EAH.NOMVAL EST_ASIGHOJA,ASO.ASOAPTSER, '
                +' (SELECT XXRES.ESTRES FROM ASO_RESULT_ASEPREV_MOV  XXRES WHERE  XXRES.ESTRES='+QuotedStr(xEstRes)+' AND XXRES.CODRES=(SELECT MAX(XRES.CODRES) FROM ASO_RESULT_ASEPREV_MOV  XRES WHERE XRES.CODUSU=GAC.CODUSUASI AND XRES.ASOID=GAC.ASOID AND XRES.PERCAR=H.PERCAR)) ESTRES'
                +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV  GAC'
                +' INNER JOIN APO201  ASO ON GAC.ASOID=ASO.ASOID '
                +' LEFT JOIN APO158  DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
                +' LEFT JOIN APO123  PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
                +' LEFT JOIN APO122  DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
                +'                                                                                                                               '
                +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
                +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)'
                +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL'
              //Final  HPC_201503_ASO
                +'                                                                                                                               '
                +' LEFT JOIN ASO_HOJARUTA_MOV H ON H.CODUSU=GAC.CODUSUASI AND H.ASOID=GAC.ASOID AND GAC.PERCAR=H.PERCAR AND H.ESTREG=''1'''
                +' LEFT JOIN ASO_RESULT_ASEPREV_MOV RES ON RES.CODUSU=GAC.CODUSUASI AND RES.ASOID=GAC.ASOID AND RES.PERCAR=H.PERCAR AND RES.ESTREG=''1'''
                +' LEFT JOIN ASO_GENERICA_DET TCAR ON TCAR.CODCAB=''TIPOCART'' AND TCAR.VALDES01=GAC.TIPCAR AND TCAR.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB ON TCAB.CODCAB=TCAR.CODCAB AND TCAB.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_DET TGES ON TGES.CODCAB=''TIPOGEST'' AND TGES.VALDES01=GAC.TIPGES AND TGES.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB2 ON TCAB2.CODCAB=TGES.CODCAB AND TCAB2.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_DET EASI ON EASI.CODCAB=''ESTASIGNACION'' AND EASI.VALDES01=GAC.ESTASIG AND EASI.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB3 ON TCAB3.CODCAB=EASI.CODCAB AND TCAB3.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_DET EAH ON EAH.CODCAB=''ESTASIGHOJARUTA'' AND EAH.VALDES01=H.ESTASIHOJ AND EAH.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB4 ON TCAB4.CODCAB=EAH.CODCAB AND TCAB4.ESTREG=1'
               //Inicio HPC_201504_ASO
                +'  LEFT JOIN (SELECT DNI,'
                +'             RESTRICCIONES,'
                +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK3'
                +'             FROM INF_RENIEC_CAP) R ON R.DRK3 = 1'
                +'                              AND R.DNI = GAC.DNIASO'
               //Final HPC_201504_ASO

                +' WHERE GAC.ESTREG=1';

               //--Condicionales--//
               if  rbDomicilio.Checked= true then
               begin
                xSqlWhere :=' ';
                if dblcdcoddep.Text<>'' then
                        xSqlWhere :=' AND DEPA.DPTOID='+QuotedStr(dblcdcoddep.Text);
                if dblcdcodpro.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND PROVA.CIUDID='+QuotedStr(dblcdcodpro.Text);
                if dblcdcoddis.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND DISA.ZIPID='+QuotedStr(dblcdcoddis.Text);

               end;

               if rbColegio.Checked=true then
               begin
                xSqlWhere :=' ';
                if dblcdcoddep.Text<>'' then
                        xSqlWhere :=' AND DEPC.DPTOID='+dblcdcoddep.Text;
                if dblcdcodpro.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND PROVC.CIUDID='+QuotedStr(dblcdcodpro.Text);
                if dblcdcoddis.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND DISC.ZIPID='+QuotedStr(dblcdcoddis.Text);
                if dblcdColegio.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND GAC.CENEDUID='+QuotedStr(mdesColegio.Text);

                //Inicio HPC_201503_ASO
                //Solo aquellos COLEGIOS que tienen almenos UN ASOCIADO SIN CARTA DE AUTORIZACION DE DESCUENTO
                If chkCADAPS.Checked Then
                Begin
                 xSqlWhere:='AND 0<(SELECT COUNT(1) ' // ASOID,AUTDES,DEPC.DPTOID,PROVC.DPTOID,DISC.DPTOID,GAC.CENEDU,GAC.CENEDUID
                            +'FROM ASO_GENERA_ASIGNA_CARTERA_MOV A '
                            +'LEFT JOIN APO158  DEPC ON DEPC.DPTOID=SUBSTR(A.UBICOL,1,2) '
                            +'LEFT JOIN APO123  PROVC ON PROVC.DPTOID=SUBSTR(A.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(A.UBICOL,1,4) '
                            +'LEFT JOIN APO122  DISC ON DISC.DPTOID=SUBSTR(A.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(A.UBICOL,1,4) AND DISC.ZIPID=A.UBICOL '
                            +'WHERE A.CENEDUID=GAC.CENEDUID  AND NVL(AUTDES,''N'')=''N'') ';
                End;
                //Final HPC_201503_ASO
                end;

                 //Inicio HPC_201503_ASO
                 Case rdgApoReg.ItemIndex Of
                    0: xSqlWhere:= xSqlWhere +' ';
                    1: xSqlWhere:= xSqlWhere+ ' AND NVL(ASO.ASOAPTSER,''N'')=''S''  ';
                    2: xSqlWhere:= xSqlWhere+ ' AND NVL(ASO.ASOAPTSER,''N'')=''N''  ';
                 End;
                 //Final HPC_201503_ASO

                  //Inicio HPC_201504_ASO
                  if dblcFallecidos.Text<>'' then
                  begin
                      if dblcFallecidos.Text='SI' then
                             xSqlWhere:=xSqlWhere+' AND (NVL(ASO.FALLECIDO,''N'')=''S'' OR NVL(UPPER(RESTRICCIONES),'' '') LIKE ''FALLE%'')';
                      if dblcFallecidos.Text='NO' then
                             xSqlWhere:=xSqlWhere+' AND (NVL(ASO.FALLECIDO,''N'')=''N'' AND NVL(UPPER(RESTRICCIONES),'' '') NOT LIKE ''FALLE%'')';
                  end;
                  //Final HPC_201504_ASO

                if cbAfiliacion.Checked=true then
                        tipo1:=QuotedStr('1')
                else
                begin
                        tipo1:=QuotedStr('0');
                end;
                if cbNoveles.Checked=true then
                        tipo2:=QuotedStr('2')
                else
                begin
                        tipo2:=QuotedStr('0');
                end;
                if cbFamiliarizada.Checked=true then
                        tipo3:=QuotedStr('3')
                else
                begin
                        tipo3:=QuotedStr('0');
                end;
                if cbPrecese.Checked=true then
                        tipo4:=QuotedStr('4')
                else
                begin
                        tipo4:=QuotedStr('0');
                end;

                xSqlWhere:= xSqlWhere +' AND GAC.TIPCAR IN ('+tipo1+','+tipo2+','+tipo3+','+tipo4+')';

                if dblTipoGest.Text<>'' then
                         xSqlWhere:= xSqlWhere +' AND GAC.TIPGES='+QuotedStr(dblTipoGest.Text);
                if dblcdResponsable.Text<>'' then
                         xSqlWhere:= xSqlWhere +' AND GAC.CODUSUASI='+QuotedStr(dblcdResponsable.Text);

                if rbTodas.Checked=false then
                begin
                        if rbAsignadas.Checked=true then
                               xSqlWhere:= xSqlWhere +' AND H.ESTASIHOJ='+QuotedStr('1');
                        if rbNoAsignadas.Checked=true then
                               xSqlWhere:= xSqlWhere +' AND NVL(H.ESTASIHOJ,0)=0';
                end;

                //caja de texto buscar--//
                xColegio:='%'+txtColegioAso.Text+'%';
                if rbDomicilio.Checked=true then
                begin
                        if txtColegioAso.Text<>'' then
                                 xSqlWhere:= xSqlWhere +'AND GAC.NOMASO LIKE '+QuotedStr(xColegio);
                end;
                if rbColegio.Checked=true then
                begin
                        if txtColegioAso.Text<>'' then
                                 xSqlWhere:= xSqlWhere +'AND GAC.CENEDU LIKE '+QuotedStr(xColegio);
                end;
          end;
       //--llenar la Grilla--//
         xSqlsum:=xSql+xSqlWhere; //guarda query para contar las carteras
         xSql:=xSql+xSqlWhere;

         DM1.cdsConsultaCartera.Close;
         DM1.cdsConsultaCartera.DataRequest(xSql);
         DM1.cdsConsultaCartera.Open;
         DM1.cdsConsultaCartera.IndexFieldNames:='ROWNUM';
         dtgAsignacion.DataSource := DM1.dsConsultaCartera;

         dtgAsignacion.Selected.Clear;
         dtgAsignacion.Selected.Add('ROWNUM'#9'5'#9'Numero'#9#9);
         dtgAsignacion.Selected.Add('PERCAR_SUB'#9'10'#9'Per. Cartera'#9#9);
         dtgAsignacion.Selected.Add('PERASIHOJ'#9'10'#9'Hoja de Ruta'#9#9);
         dtgAsignacion.Selected.Add('DNIASO'#9'10'#9'D.N.I.'#9#9);
         dtgAsignacion.Selected.Add('ASOID'#9'10'#9'AsoId'#9#9);
         dtgAsignacion.Selected.Add('CODMOD'#9'12'#9'Cod.Mod'#9#9);
         dtgAsignacion.Selected.Add('NOMASO'#9'15'#9'Nombre Completo'#9#9);
         dtgAsignacion.Selected.Add('DIRASO'#9'15'#9'Dirección'#9#9);
         dtgAsignacion.Selected.Add('DEP_ASO'#9'15'#9'Departamento'#9#9);
         dtgAsignacion.Selected.Add('PROV_ASO'#9'15'#9'Provincia'#9#9);
         dtgAsignacion.Selected.Add('DIS_ASO'#9'15'#9'Distrito'#9#9);
         dtgAsignacion.Selected.Add('CENEDU'#9'18'#9'Centro Educativo'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('DIRCOL'#9'18'#9'Dirección'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('DEP_COL'#9'15'#9'Departamento'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('PROV_COL'#9'15'#9'Provincia'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('DIS_COL'#9'15'#9'Distrito'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('TIPO_CAR'#9'12'#9'Cartera'#9#9);
         dtgAsignacion.Selected.Add('TIPO_GEST'#9'12'#9'Gestion'#9#9);
         dtgAsignacion.Selected.Add('CODUSUASI'#9'12'#9'Responsable'#9#9);
         dtgAsignacion.Selected.Add('EST_ASIGHOJA'#9'12'#9'Esta.Hojaruta'#9#9);
         dtgAsignacion.Selected.Add('ESTRES'#9'12'#9'Esta.Resultado'#9#9);
         dtgAsignacion.ApplySelected;

         //--Contador de cartera//
         lblAfiliacion.Caption:=IntToStr(0);
         lblNoveles.Caption:='0';
         lblFamili.Caption:='0';
         lblPrecese.Caption:='0';


          xSqlsum:= 'SELECT DISTINCT T2.tipcar,COUNT(T2.TIPCAR) over (partition by T2.TIPCAR) CANT FROM (SELECT DISTINCT T.PERCAR,T.ASOID,T.TIPCAR FROM ('+xSqlsum+')T) T2 order by T2.tipcar asc';
          DM1.cdsTemp.Close;
          DM1.cdsTemp.DataRequest(xSqlsum);
          DM1.cdsTemp.Open;

          While Not DM1.cdsTemp.Eof Do
          Begin
            Refresh;
            xTipoCar := DM1.cdsTemp.FieldByName('tipcar').AsString;
            if xTipoCar='1' then
                  lblAfiliacion.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='2' then
                  lblNoveles.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='3' then
                  lblFamili.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='4' then
                  lblPrecese.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;

            DM1.cdsTemp.Next;
          End;
          lblContador.Caption:=IntToStr(StrToInt(lblAfiliacion.Caption)+StrToInt(lblNoveles.Caption)+StrToInt(lblFamili.Caption)+StrToInt(lblPrecese.Caption))+ ' Registros ';
end;
//Fin: SPP_201407_ASO

//Inicio: SPP_201407_ASO
procedure TfGestionCartera.BuscarHojaRutaDetalle(xPerAsiHoj : String);
Var xSql: String;
Var xSqlsum: String;
Var xSqlWhere : String;
Var tipo1 :String;
Var tipo2 :String;
Var tipo3 :String;
Var tipo4 :String;
Var tipo5 :String;
Var tipo6 :String;
Var xTipoCar :String;
Var xColegio :String;
Var xNumColegio :Integer;
Var xNomColegio :String;
//Inicio HPC_201503_ASO
Var xSQLOrden :String;
//Final  HPC_201503_ASO
begin
        //Consulta Principal
        //Inicio HPC_201503_ASO
        {
        xSql:=' SELECT ROWNUM,GAC.CODGEN,H.CODHOJ,GAC.PERCAR,SUBSTR(GAC.PERCAR,4,7) PERCAR_SUB,H.PERASIHOJ,GAC.ASOID,GAC.DNIASO,GAC.CODMOD,GAC.NOMASO,GAC.DIRASO,DEPA.DPTODES DEP_ASO,PROVA.CIUDDES PROV_ASO,'
        +' DISA.ZIPABR DIS_ASO,GAC.CENEDU,GAC.CENEDUID,0 NUMCOL,GAC.EMAIL,'
        +'GAC.DIRCOL,DEPC.DPTODES DEP_COL,PROVC.CIUDDES PROV_COL,DISC.ZIPABR DIS_COL,GAC.CENPOBCOL,GAC.TIPCAR,TCAR.NOMVAL TIPO_CAR,'
        +' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTHOJ, EH.NOMVAL EST_HOJA,H.FLGIMP,'
        +' GAC.AUTDES,GAC.TELASO1,GAC.TELASO2,GAC.SITASO,GAC.TIPASO,GAC.NIVCENEDU'
        }
         tsDetalle.Caption := 'Detalle Hoja de Ruta->'+DM1.cdsConsultaHoja.FieldByName('IDHOJARUTA').AsString;
         xSql:=' SELECT GAC.CODGEN,H.CODHOJ,GAC.PERCAR,SUBSTR(GAC.PERCAR,4,7) PERCAR_SUB,H.PERASIHOJ,GAC.ASOID,GAC.DNIASO,GAC.CODMOD,GAC.NOMASO,GAC.DIRASO,DEPA.DPTODES DEP_ASO,PROVA.CIUDDES PROV_ASO,'
        +' DISA.ZIPABR DIS_ASO,GAC.CENEDU,GAC.CENEDUID,0 NUMCOL,GAC.EMAIL,'
        +' GAC.DIRCOL,DEPC.DPTODES DEP_COL,PROVC.CIUDDES PROV_COL,DISC.ZIPABR DIS_COL,GAC.CENPOBCOL,GAC.TIPCAR,TCAR.NOMVAL TIPO_CAR,'
        +' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTHOJ, EH.NOMVAL EST_HOJA,H.FLGIMP,'
        +' GAC.AUTDES,GAC.TELASO1,GAC.TELASO2,GAC.SITASO,GAC.TIPASO,GAC.NIVCENEDU,ASO.ASOAPTSER '
        +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
//Inicio HPC_201504_ASO
//      +' INNER JOIN APO201  ASO ON GAC.ASOID=ASO.ASOID '
        +' INNER JOIN APO201  ASO ON GAC.ASOID=ASO.ASOID(+) '
//Final HPC_201504_ASO
        //Final  HPC_201503_ASO
        +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
        +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
        +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
        +'                                                                                                                               '
        +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
        +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)'
        +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL'
        +'                                                                                                                               '
        +' LEFT JOIN ASO_HOJARUTA_MOV H ON H.CODUSU=GAC.CODUSUASI AND H.ASOID=GAC.ASOID AND GAC.PERCAR=H.PERCAR AND H.ESTREG=''1'''
        +' LEFT JOIN ASO_GENERICA_DET TCAR ON TCAR.CODCAB=''TIPOCART'' AND TCAR.VALDES01=GAC.TIPCAR AND TCAR.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB ON TCAB.CODCAB=TCAR.CODCAB AND TCAB.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET TGES ON TGES.CODCAB=''TIPOGEST'' AND TGES.VALDES01=GAC.TIPGES AND TGES.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB2 ON TCAB2.CODCAB=TGES.CODCAB AND TCAB2.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET EASI ON EASI.CODCAB=''ESTASIGNACION'' AND EASI.VALDES01=GAC.ESTASIG AND EASI.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB3 ON TCAB3.CODCAB=EASI.CODCAB AND TCAB3.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET EH ON EH.CODCAB=''ESTHOJARUTA'' AND EH.VALDES01=H.ESTHOJ AND EH.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB4 ON TCAB4.CODCAB=EH.CODCAB AND TCAB4.ESTREG=1'
        //Inicio HPC_201504_ASO
        +'  LEFT JOIN (SELECT DNI,'
        +'             RESTRICCIONES,'
        +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK3'
        +'             FROM INF_RENIEC_CAP) R ON R.DRK3 = 1'
        +'                              AND R.DNI = GAC.DNIASO'
        //Final HPC_201504_ASO
                
        //Inicio HPC_201503_ASO
        {
        +' WHERE GAC.PERCAR='+QuotedStr(DM1.cdsConsultaHoja.FieldByName('PERCAR').AsString)+' AND GAC.ESTREG=1'
        +' AND H.PERASIHOJ='+QuotedStr(xPerAsiHoj) ;
        }
        +' WHERE GAC.PERCAR='+QuotedStr(DM1.cdsConsultaHoja.FieldByName('PERCAR').AsString)+' AND GAC.ESTREG=1'
        +' AND H.PERASIHOJ='+QuotedStr(xPerAsiHoj)
        +' AND H.IDHOJARUTA='+QuotedStr(DM1.cdsConsultaHoja.FieldByName('IDHOJARUTA').AsString)
        +' AND H.ASOID=GAC.ASOID ' ;
        //Final HPC_201503ASO
       //--Condicionales--//
       if  rbDomicilio.Checked= true then
       begin
        xSqlWhere :=' ';
        if dblcdcoddep.Text<>'' then
                xSqlWhere :=' AND DEPA.DPTOID='+QuotedStr(dblcdcoddep.Text);
        if dblcdcodpro.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND PROVA.CIUDID='+QuotedStr(dblcdcodpro.Text);
        if dblcdcoddis.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND DISA.ZIPID='+QuotedStr(dblcdcoddis.Text);

       end;

       if rbColegio.Checked=true then
       begin
        xSqlWhere :=' ';
        if dblcdcoddep.Text<>'' then
                xSqlWhere :=' AND DEPC.DPTOID='+dblcdcoddep.Text;
        if dblcdcodpro.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND PROVC.CIUDID='+QuotedStr(dblcdcodpro.Text);
        if dblcdcoddis.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND DISC.ZIPID='+QuotedStr(dblcdcoddis.Text);
        if dblcdColegio.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND GAC.CENEDUID='+QuotedStr(mdesColegio.Text);

         //Inicio HPC_201503_ASO
         //Solo aquellos COLEGIOS que tienen almenos UN ASOCIADO SIN CARTA DE AUTORIZACION DE DESCUENTO
         If chkCADAPS.Checked Then
         Begin
         xSqlWhere:='AND 0<(SELECT COUNT(1) ' // ASOID,AUTDES,DEPC.DPTOID,PROVC.DPTOID,DISC.DPTOID,GAC.CENEDU,GAC.CENEDUID
                    +'FROM ASO_GENERA_ASIGNA_CARTERA_MOV A '
                    +'LEFT JOIN APO158  DEPC ON DEPC.DPTOID=SUBSTR(A.UBICOL,1,2) '
                    +'LEFT JOIN APO123  PROVC ON PROVC.DPTOID=SUBSTR(A.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(A.UBICOL,1,4) '
                    +'LEFT JOIN APO122  DISC ON DISC.DPTOID=SUBSTR(A.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(A.UBICOL,1,4) AND DISC.ZIPID=A.UBICOL '
                    +'WHERE A.CENEDUID=GAC.CENEDUID  AND NVL(AUTDES,''N'')=''N'') ';
         End;
         //Final HPC_201503_ASO
        end;

        //Inicio HPC_201503_ASO
        Case rdgApoReg.ItemIndex Of
           0: xSqlWhere:= xSqlWhere +' ';
           1: xSqlWhere:= xSqlWhere+ ' AND NVL(ASO.ASOAPTSER,''N'')=''S''  ';
           2: xSqlWhere:= xSqlWhere+ ' AND NVL(ASO.ASOAPTSER,''N'')=''N''  ';
        End;
        //Final HPC_201503_ASO

        //Inicio HPC_201504_ASO
        if dblcFallecidos.Text<>'' then
        begin
            if dblcFallecidos.Text='SI' then
                   xSqlWhere:=xSqlWhere+' AND (NVL(ASO.FALLECIDO,''N'')=''S'' OR NVL(UPPER(RESTRICCIONES),'' '') LIKE ''FALLE%'')';
            if dblcFallecidos.Text='NO' then
                   xSqlWhere:=xSqlWhere+' AND (NVL(ASO.FALLECIDO,''N'')=''N'' AND NVL(UPPER(RESTRICCIONES),'' '') NOT LIKE ''FALLE%'')';
        end;
        //Final HPC_201504_ASO

        if cbAfiliacion.Checked=true then
                tipo1:=QuotedStr('1')
        else
        begin
                tipo1:=QuotedStr('0');
        end;
        if cbNoveles.Checked=true then
                tipo2:=QuotedStr('2')
        else
        begin
                tipo2:=QuotedStr('0');
        end;
        if cbFamiliarizada.Checked=true then
                tipo3:=QuotedStr('3')
        else
        begin
                tipo3:=QuotedStr('0');
        end;
        if cbPrecese.Checked=true then
                tipo4:=QuotedStr('4')
        else
        begin
                tipo4:=QuotedStr('0');
        end;

        xSqlWhere:= xSqlWhere +' AND GAC.TIPCAR IN ('+tipo1+','+tipo2+','+tipo3+','+tipo4+')';

        if dblTipoGest.Text<>'' then
                 xSqlWhere:= xSqlWhere +' AND GAC.TIPGES='+QuotedStr(dblTipoGest.Text);
        if dblcdResponsable.Text<>'' then
                 xSqlWhere:= xSqlWhere +' AND GAC.CODUSUASI='+QuotedStr(dblcdResponsable.Text);

        if rbTodas.Checked=false then
        begin
                if rbPendientes.Checked=true then
                       xSqlWhere:= xSqlWhere +' AND H.ESTHOJ='+QuotedStr('1');
                if rbCerradas.Checked=true then
                        xSqlWhere:= xSqlWhere +' AND H.ESTHOJ='+QuotedStr('2');
        end
        else
        begin
                xSqlWhere:= xSqlWhere +' AND H.ESTHOJ IN (1,2)';
        end;

        //caja de texto buscar--//
        xColegio:='%'+txtColegioAso.Text+'%';
        if rbDomicilio.Checked=true then
        begin
                if txtColegioAso.Text<>'' then
                         xSqlWhere:= xSqlWhere +'AND GAC.NOMASO LIKE '+QuotedStr(xColegio);
        end;
        if rbColegio.Checked=true then
        begin
                if txtColegioAso.Text<>'' then
                         xSqlWhere:= xSqlWhere +'AND GAC.CENEDU LIKE '+QuotedStr(xColegio);
        end;


        //--llenar la Grilla--//
         xSql:=xSql+xSqlWhere;
         //Asignacion para el contador
         xSqlsum:=xSql;

         //Inicio HPC_201503_ASO
          If  rbDomicilio.Checked Then
               xSQLOrden :='Select Rownum,Z.* From('+Xsql+' ORDER BY DEPA.DPTODES,PROVA.CIUDDES,DISA.ZIPABR,GAC.NOMASO) Z '
          Else xSQLOrden :='Select Rownum,Z.* From('+Xsql+' ORDER BY DEPC.DPTODES,PROVC.CIUDDES,DISC.ZIPABR,GAC.CENPOBCOL,GAC.CENEDU,GAC.NIVCENEDU,NOMASO) Z ';    //
          xsql:= xSQLOrden;
          //Final HPC_201503_ASO

         DM1.cdsConsultaHojaDet.Close;
         DM1.cdsConsultaHojaDet.DataRequest(xSql);
         DM1.cdsConsultaHojaDet.Open;

         dtgHojaRuta.DataSource := DM1.dsConsultaHojaDet;
         lblContador.Caption := IntToStr(DM1.cdsConsultaHojaDet.RecordCount) + ' Registros ';

         //--ASignar query para su posterior impresion--//
         xPrintWhere:=xSqlWhere;

         dtgHojaRuta.Selected.Clear;
         dtgHojaRuta.Selected.Add('ROWNUM'#9'5'#9'Numero'#9#9);
         dtgHojaRuta.Selected.Add('PERCAR_SUB'#9'5'#9'Per. Cartera'#9#9);
         dtgHojaRuta.Selected.Add('PERASIHOJ'#9'10'#9'Hoja de Ruta'#9#9);
         dtgHojaRuta.Selected.Add('NIVCENEDU'#9'10'#9'Nivel'#9#9);
         dtgHojaRuta.Selected.Add('DNIASO'#9'10'#9'D.N.I.'#9#9);
         dtgHojaRuta.Selected.Add('ASOID'#9'10'#9'AsoId'#9#9);
         dtgHojaRuta.Selected.Add('CODMOD'#9'12'#9'Cod.Mod'#9#9);
         dtgHojaRuta.Selected.Add('NOMASO'#9'15'#9'Nombre Completo'#9#9);
         dtgHojaRuta.Selected.Add('SITASO'#9'15'#9'Situación'#9#9);
         dtgHojaRuta.Selected.Add('AUTDES'#9'15'#9'Aut. Dscto'#9#9);
         dtgHojaRuta.Selected.Add('TIPASO'#9'15'#9'Tipo'#9#9);
         dtgHojaRuta.Selected.Add('DIRASO'#9'15'#9'Dirección'#9#9);
         dtgHojaRuta.Selected.Add('DEP_ASO'#9'15'#9'Departamento'#9#9);
         dtgHojaRuta.Selected.Add('PROV_ASO'#9'15'#9'Provincia'#9#9);
         dtgHojaRuta.Selected.Add('DIS_ASO'#9'15'#9'Distrito'#9#9);
         dtgHojaRuta.Selected.Add('TELASO1'#9'15'#9'Telefono1'#9#9);
         dtgHojaRuta.Selected.Add('TELASO2'#9'15'#9'Telefono2'#9#9);
         dtgHojaRuta.Selected.Add('CENEDU'#9'18'#9'Centro Educativo'#9'F'#9'COLEGIO');
         dtgHojaRuta.Selected.Add('DIRCOL'#9'18'#9'Dirección'#9'F'#9'COLEGIO');
         dtgHojaRuta.Selected.Add('DEP_COL'#9'15'#9'Departamento'#9'F'#9'COLEGIO');
         dtgHojaRuta.Selected.Add('PROV_COL'#9'15'#9'Provincia'#9'F'#9'COLEGIO');
         dtgHojaRuta.Selected.Add('DIS_COL'#9'15'#9'Distrito'#9'F'#9'COLEGIO');
         dtgHojaRuta.Selected.Add('TIPO_CAR'#9'12'#9'Cartera'#9#9);
         dtgHojaRuta.Selected.Add('TIPO_GEST'#9'12'#9'Gestion'#9#9);
         dtgHojaRuta.Selected.Add('CODUSUASI'#9'12'#9'Responsable'#9#9);
         dtgHojaRuta.Selected.Add('EST_ASIG'#9'12'#9'Est.Asig'#9#9);
         dtgHojaRuta.Selected.Add('EST_HOJA'#9'12'#9'Esta.Hojaruta'#9#9);
         dtgHojaRuta.ApplySelected;

         //--Contador de cartera//
         lblAfiliacion.Caption:=IntToStr(0);
         lblNoveles.Caption:='0';
         lblFamili.Caption:='0';
         lblPrecese.Caption:='0';

          xSqlsum:=' SELECT distinct T.tipcar,'
                +' COUNT(T.TIPCAR) over(partition by T.TIPCAR) CANT FROM ('+xSqlsum+' ) T  order by T.tipcar asc';
          DM1.cdsTemp.Close;
          DM1.cdsTemp.DataRequest(xSqlsum);
          DM1.cdsTemp.Open;

          While Not DM1.cdsTemp.Eof Do
          Begin
            Refresh;
            xTipoCar := DM1.cdsTemp.FieldByName('tipcar').AsString;
            if xTipoCar='1' then
                  lblAfiliacion.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='2' then
                  lblNoveles.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='3' then
                  lblFamili.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='4' then
                  lblPrecese.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;

            DM1.cdsTemp.Next;
          End;
end;
//Fin: SPP_201407_ASO

function TfGestionCartera.isFechasValidas():boolean;
    begin
      result:= not ((trim(datetostr(dtpInicio.Date))='') or (trim(datetostr(dtpFin.Date))=''));
    end;

//Inicio: SPP_201407_ASO
procedure TfGestionCartera.BuscarHojaRuta;
Var xSql: String;
Var xSqlWhere : String;
Var xSqlGroupBy : String;
begin
      //Inicio HPC_201503_ASO
      //  xSql:=' SELECT ROWNUM,T.* FROM ('
      //          +' SELECT H.PERCAR,SUBSTR(H.PERCAR,4,10) PERCAR_SUB,H.PERASIHOJ,COUNT(H.CODGEN) CANT FROM ASO_HOJARUTA_MOV H';
       xSql:=' SELECT ROWNUM,T.* FROM ('
            +' SELECT IDHOJARUTA, H.PERCAR,SUBSTR(H.PERCAR,4,10) PERCAR_SUB,H.PERASIHOJ,NUMASO CANT,PORCENTAJE,ESTADO,FLGIMPRESO '
            +' FROM ASO_HOJARUTA_MOV_CAB H ';
      //Final HPC_201503_ASO
       //--Condicionales--//
       xSqlWhere:=' where H.CODUSU='+QuotedStr(dblcdResponsable.Text);

       if  isFechasValidas then
       begin
        //Inicio HPC_201503_COB
       // xSqlWhere:=xSqlWhere+'and TO_DATE(H.PERASIHOJ,''DD/MM/YYYY'') BETWEEN TO_DATE('+ QuotedStr(DateToStr(dtpInicio.Date))  +',''DD/MM/YYYY'') AND TO_DATE('+ QuotedStr(DateToStr(dtpFin.Date))+',''DD/MM/YYYY'')';
          xSqlWhere:=xSqlWhere+'and TRUNC(H.PERASIHOJ) BETWEEN TO_DATE('+ QuotedStr(DateToStr(dtpInicio.Date))  +',''DD/MM/YYYY'') AND TO_DATE('+ QuotedStr(DateToStr(dtpFin.Date))+',''DD/MM/YYYY'')';
        //Final HPC_201503_COB          
       end
       else
       begin
              ShowMessage('Seleccione una Fecha Valida..!!!!');

       end;
       //Inicio HPC_201503_ASO
       //xSqlGroupBy:= ' GROUP BY H.PERASIHOJ,H.PERCAR,SUBSTR(H.PERCAR, 4, 10)  ORDER BY TO_DATE(H.PERASIHOJ,''DD/MM/YYYY'') DESC'
       //            +' )T ';
         xSqlGroupBy:= ' ORDER BY H.IDHOJARUTA,TO_DATE(H.PERASIHOJ,''DD/MM/YYYY'') DESC '
                      +' )T ';
       //Final HPC_201503_ASO
       //--llenar la Grilla--//
         xSql:=xSql+xSqlWhere+xSqlGroupBy;
         DM1.cdsConsultaHoja.Close;
         DM1.cdsConsultaHoja.DataRequest(xSql);
         //Inicio: SPP_201406_ASO
         DM1.cdsConsultaHoja.IndexFieldNames:=  'ROWNUM';
         //Fin: SPP_201406_ASO
         DM1.cdsConsultaHoja.Open;
         dtgCabHoja.DataSource := DM1.dsConsultaHoja;

         dtgCabHoja.Selected.Clear;
         //Inicio HPC_201503_COB
         {
         dtgCabHoja.Selected.Add('PERCAR_SUB'#9'5'#9'Periodo Cartera'#9#9);
         dtgCabHoja.Selected.Add('PERASIHOJ'#9'10'#9'Periodo Hoja Ruta'#9#9);
         dtgCabHoja.Selected.Add('CANT'#9'10'#9'Cantidad'#9#9);
         }
         dtgCabHoja.Selected.Add('IDHOJARUTA'#9'10'#9'Hoja Ruta'#9#9);
         dtgCabHoja.Selected.Add('PERCAR_SUB'#9'5'#9'Periodo Cartera'#9#9);
         dtgCabHoja.Selected.Add('PERASIHOJ'#9'10'#9'Periodo Hoja Ruta'#9#9);
         dtgCabHoja.Selected.Add('CANT'#9'06'#9'Cantidad'#9#9);
         dtgCabHoja.Selected.Add('PORCENTAJE'#9'3'#9'<%>'#9#9);
         dtgCabHoja.Selected.Add('ESTADO'#9'10'#9'Estado'#9#9);
         dtgCabHoja.Selected.Add('FLGIMPRESO'#9'1'#9'Imp'#9#9);
         //Final HPC_201503_COB
         dtgCabHoja.ApplySelected;
end;
//Fin: SPP_201407_ASO

procedure TfGestionCartera.bBuscaFechasClick(Sender: TObject);
begin
      Screen.Cursor := crHourGlass;
      BuscarHojaRuta;
      Screen.Cursor := crDefault;
end;

procedure TfGestionCartera.bFiltrarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  if pcGestion.ActivePage = tsPersonal then
  begin
          BuscarPersonal;
          pnlPersonal.Enabled:=true;
  end;
  if pcGestion.ActivePage = tsDetalle then
  begin
          pnlHojaruta.Enabled:=true;
          BuscarHojaRutaDetalle(xPerAsiHoj);
  end;
  Screen.Cursor := crDefault;
end;

procedure TfGestionCartera.bSalirClick(Sender: TObject);
begin
   Close;
end;


procedure TfGestionCartera.txtColegioAsoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if pcGestion.ActivePage = tsPersonal then
     begin
          BuscarPersonal;
          pnlPersonal.Enabled:=true;
     end;
     if pcGestion.ActivePage = tsDetalle then
     begin
          BuscarHojaRutaDetalle(xPerAsiHoj);
          pnlHojaruta.Enabled:=true;
     end;
end;

procedure TfGestionCartera.bABloqueClick(Sender: TObject);
Var xSQL : String;
Var xCodGen :String;
Var xCodUsu :String;
Var xPerCar :String;
Var xAsoId :String;
Var xCont : Integer;
Var xMaxPerASigHoj :String;
//Inicio HPC_201503_COB
Var xidCodigoruta : String;
Var xHojaRuta     : String;
//Final  HPC_201503_COB
begin
        //--Validaciones--//
        If dtgAsignacion.DataSource.DataSet.RecordCount = 0 Then
        Begin
            MessageDlg(' No Existe Datos Para Añadir a HOJA DE RUTA..!!!!', mtError, [mbOk], 0);
          Exit;
        End;


        //Inicio HPC_201503_ASO
        {
         //--Valida regla de añadir registros--//
        xPerCar := DM1.cdsConsultaCartera.FieldByName('PERCAR').AsString;

        xSql:=' SELECT TO_CHAR(MAX(TO_DATE(H.PERASIHOJ,''DD/MM/YYYY'')),''DD/MM/YYYY'') MAXPERASIHOJ FROM ASO_HOJARUTA_MOV H'
         +' WHERE H.CODUSU='+QuotedStr(DM1.wUsuario)+'AND H.PERCAR='+QuotedStr(xPerCar);
        //--llenar la Grilla--//
        DM1.cdsTemp.Close;
        DM1.cdsTemp.DataRequest(xSQL);
        DM1.cdsTemp.Open;
        xMaxPerASigHoj:=DM1.cdsTemp.fieldbyname('MAXPERASIHOJ').AsString;

        if xMaxPerASigHoj = FormatDateTime('dd/mm/yyyy',Date) then
        begin
                //--Valdia se ya se imprimio--//
               xSql:=' SELECT count(*) COUNT FROM ASO_HOJARUTA_MOV H'
                +' WHERE H.PERASIHOJ='+QuotedStr(xMaxPerASigHoj)+' AND H.PERCAR='+QuotedStr(xPerCar)+' AND H.CODUSU='+QuotedStr(DM1.wUsuario)
                +' AND H.FLGIMP=1';
                DM1.cdsTemp.Close;
                DM1.cdsTemp.DataRequest(xSql);
                DM1.cdsTemp.Open;
                xCont:=DM1.cdsTemp.fieldbyname('COUNT').AsInteger;
                if xCont>0 then
                begin
                        MessageDlg(' No se Puede Añadir Registros a la Hoja de Ruta. YA FUE IMPRESA...!!!!', mtError, [mbOk], 0);
                        exit;
                end;
        end
        else
        begin
                xSql:=' SELECT count(*) COUNT FROM ASO_HOJARUTA_MOV H'
                +' WHERE H.PERASIHOJ='+QuotedStr(xMaxPerASigHoj)+' AND H.PERCAR='+QuotedStr(xPerCar)+' AND H.CODUSU='+QuotedStr(DM1.wUsuario)
                +' AND H.ESTHOJ=1';
                DM1.cdsTemp.Close;
                DM1.cdsTemp.DataRequest(xSql);
                DM1.cdsTemp.Open;
                xCont:=DM1.cdsTemp.fieldbyname('COUNT').AsInteger;
                if xCont>0 then
                begin
                        MessageDlg(' No se Puede Crear Nueva Hoja de Ruta.DEBE CERRAR LOS REGISTROS PENDIENTES...!!!!', mtError, [mbOk], 0);
                        exit;
                end;
        end;
       }

       //Verifica si añade a una hoja de rura existente o genera una nueva hoja de ruta
       //Verifica si hay hoja de ruta no impresa
       xSql:='SELECT IDHOJARUTA FROM  ASO_HOJARUTA_MOV_CAB Where CODUSU='''+dblcdResponsable.Text+''' AND FLGIMPRESO IS NULL AND ESTADO<>''ANULADO'' ';
       DM1.cdsTemp.Close;
       DM1.cdsTemp.DataRequest(xSQL);
       DM1.cdsTemp.Open;
       If DM1.cdsTemp.RecordCount>1 Then
       Begin
         ShowMessage('Tiene mas de una Hoja de Ruta sin Imprimir verifique...');
         exit;
       End;

       If DM1.cdsTemp.RecordCount=1 Then
       Begin
         If MessageDlg('Se adicionará a la siguiente Hoja de Ruta '+DM1.cdsTemp.Fieldbyname('IDHOJARUTA').AsString+' Esta seguro(a)?',
            mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
         xHojaRuta:= Dm1.cdsTemp.FieldByname('IDHOJARUTA').AsString
         Else Exit;
       End
       Else  xHojaRuta:= '';


       xPerCar := DM1.cdsConsultaCartera.FieldByName('PERCAR').AsString;
       If  Length(trim(xHojaRuta))=0 Then
       Begin
       //Genera cabecera
       xSql:='INSERT INTO ASO_HOJARUTA_MOV_CAB(IDHOJARUTA,CODUSU,PERASIHOJ,PERCAR,NUMASO,ESTADO,PORCENTAJE,USUCREA,FECCREA) VALUES('
//           +'(SELECT MAX(IDHOJARUTA)+1 FROM ASO_HOJARUTA_MOV_CAB WHERE SUBSTR(IDHOJARUTA,1,4)=TO_CHAR(SYSDATE,''YYYY''))'
             +'(SELECT NVL(MAX(IDHOJARUTA),TO_CHAR(SYSDATE,''YYYY'')||''000000'')+1 FROM ASO_HOJARUTA_MOV_CAB WHERE SUBSTR(IDHOJARUTA,1,4)=TO_CHAR(SYSDATE,''YYYY''))'
             +','''+dblcdResponsable.Text+''' '
             +',TRUNC(SYSDATE)'
             +','+QuotedStr(xPerCar)
             +',0'
             +',''PENDIENTE'''
             +',0'
             +','''+DM1.wUsuario+''' '
             +',TRUNC(SYSDATE))';
        //Transaccion
        Try
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        Except
          ShowMessage('Error al ingresar nuevo HOJA DE RUTA en ASO_HOJARUTA_MOV_CAB');
          exit;
        End;
        End;

       //Se ubica en la hoja de ruta GENERADA
//     If copy(xHojaRuta,1,1)='(' Then
       If  Length(Trim(xHojaRuta))=0 Then
       Begin
        xsql:='SELECT MAX(IDHOJARUTA) IDHOJARUTA FROM ASO_HOJARUTA_MOV_CAB WHERE SUBSTR(IDHOJARUTA,1,4)=TO_CHAR(SYSDATE,''YYYY'') AND CODUSU='''+dblcdResponsable.Text+''' AND PERCAR='+QuotedStr(xPerCar);
        DM1.cdsTemp.Close;
        DM1.cdsTemp.DataRequest(xSQL);
        DM1.cdsTemp.Open;
        xidCodigoruta :=DM1.cdsTemp.FieldByName('IDHOJARUTA').AsString;
       End
       Else xidCodigoruta:= xHojaRuta;
       //Final HPC_201503_COB

        Screen.Cursor := crHourGlass;
        DM1.cdsConsultaCartera.First;
        //Inicio HPC_201503_COB
        xCont:=0;
        //Final HPC_201503_COB
        While Not DM1.cdsConsultaCartera.Eof Do
        Begin
            Refresh;
            xCodGen := DM1.cdsConsultaCartera.FieldByName('CODGEN').AsString;
            xCodUsu := dblcdResponsable.Text;
            xPerCar := DM1.cdsConsultaCartera.FieldByName('PERCAR').AsString;
            xAsoId := DM1.cdsConsultaCartera.FieldByName('ASOID').AsString;
            //Inicio HPC_201503_COB
            xCont   := xCont+1;
            //xidCodigoruta := DM1.cdsTemp.FieldByName('IDHOJARUTA').AsString;
            //Final HPC_201503_COB

            //Inserta hoja de Ruta
            //Inicio HPC_201503_COB
            {
            xSQL := ' INSERT INTO ASO_HOJARUTA_MOV(CODHOJ,CODUSU,ASOID,PERASIHOJ,ESTASIHOJ,PERCAR,ESTHOJ,ESTREG,USUREG,FECREG,USUMOD,FECMOD,CODGEN)'
                   +' VALUES ((SELECT NVL(MAX(CODHOJ)+1,0) FROM ASO_HOJARUTA_MOV),'+QuotedStr(xCodUsu)+','+QuotedStr(xAsoId)+',TO_CHAR(SYSDATE,''DD/MM/YYYY''),1,'+QuotedStr(xPerCar)+',1,1,'+QuotedStr(xCodUsu)+',SYSDATE,NULL,NULL,'+xCodGen+')';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);

            DM1.cdsConsultaCartera.Next;
            }
            xSQL := ' INSERT INTO ASO_HOJARUTA_MOV(IDHOJARUTA,CODHOJ,CODUSU,ASOID,PERASIHOJ,ESTASIHOJ,PERCAR,ESTHOJ,ESTREG,USUREG,FECREG,USUMOD,FECMOD,CODGEN)'
                   +' VALUES ('+QuotedStr(xidCodigoruta)+',(SELECT NVL(MAX(CODHOJ)+1,0) FROM ASO_HOJARUTA_MOV),'+QuotedStr(xCodUsu)+','+QuotedStr(xAsoId)+',TO_CHAR(SYSDATE,''DD/MM/YYYY''),1,'+QuotedStr(xPerCar)+',1,1,'+QuotedStr(xCodUsu)+',SYSDATE,NULL,NULL,'+xCodGen+')';
            Try
              DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            Except
              ShowMessage('Error al INSERTAR DETALLE en HOJA DE RUTA en ASO_HOJARUTA_MOV');
              exit;
            End;
           DM1.cdsConsultaCartera.Next;
           //Final HPC_201503_COB
         End;

        //Inicio HPC_201503_COB
        //Se actualiza la cabecera
        xSql :='BEGIN  SP_ASO_ACT_EST_HOJA_RUTA('''+xidCodigoruta+'''); END;';
        Try
         DM1.DCOM1.AppServer.EjecutaSql(xSql);
        Except
          ShowMessage('Error al Actualizar ESTADO de la tabla ASO_HOJARUTA_MOV_CAB ' );
          exit;
        End;
        //Final HPC_201503_COB

         Screen.Cursor := crDefault;
         BuscarPersonal;

end;

procedure TfGestionCartera.bAUnoClick(Sender: TObject);
Var  i: Integer;
Var xSql : String;
Var xCodGen :String;
Var xCodUsu :String;
Var xPerCar :String;
Var xAsoId :String;
Var xCont : Integer;
Var xMaxPerASigHoj :String;
//Inicio HPC_201503_COB
Var xidCodigoruta : String;
Var xHojaRuta : String;
//Final  HPC_201503_COB
begin
        //--Validaciones--//
        If dtgAsignacion.SelectedList.Count = 0 Then
        Begin
               MessageDlg(' No Existe Datos Seleccionados Para Añadir a Hoja de Ruta..!!!!', mtError, [mbOk], 0);
               Exit;
        End;

       //Inicio HPC_201503_ASO
        {
        //--Valida regla de añadir registros--//
        xPerCar := DM1.cdsConsultaCartera.FieldByName('PERCAR').AsString;

        xSql:=' SELECT TO_CHAR(MAX(TO_DATE(H.PERASIHOJ,''DD/MM/YYYY'')),''DD/MM/YYYY'') MAXPERASIHOJ FROM ASO_HOJARUTA_MOV H'
         +' WHERE H.CODUSU='+QuotedStr(DM1.wUsuario)+'AND H.PERCAR='+QuotedStr(xPerCar);
        //--llenar la Grilla--//
        DM1.cdsTemp.Close;
        DM1.cdsTemp.DataRequest(xSQL);
        DM1.cdsTemp.Open;
        xMaxPerASigHoj:=DM1.cdsTemp.fieldbyname('MAXPERASIHOJ').AsString;

        if xMaxPerASigHoj = FormatDateTime('dd/mm/yyyy',Date) then
        begin
                //--Valdia se ya se imprimio--//
               xSql:=' SELECT count(*) COUNT FROM ASO_HOJARUTA_MOV H'
                +' WHERE H.PERASIHOJ='+QuotedStr(xMaxPerASigHoj)+' AND H.PERCAR='+QuotedStr(xPerCar) +' AND H.CODUSU='+QuotedStr(DM1.wUsuario)
                +' AND H.FLGIMP=1';
                DM1.cdsTemp.Close;
                DM1.cdsTemp.DataRequest(xSql);
                DM1.cdsTemp.Open;
                xCont:=DM1.cdsTemp.fieldbyname('COUNT').AsInteger;
                if xCont>0 then
                begin
                        MessageDlg(' No se Puede Añadir Registros a la Hoja de Ruta. YA FUE IMPRESA...!!!!', mtError, [mbOk], 0);
                        exit;
                end;
        end
        else
        begin
                xSql:=' SELECT count(*) COUNT FROM ASO_HOJARUTA_MOV H'
                +' WHERE H.PERASIHOJ='+QuotedStr(xMaxPerASigHoj)+' AND H.PERCAR='+QuotedStr(xPerCar)+' AND H.CODUSU='+QuotedStr(DM1.wUsuario)
                +' AND H.ESTHOJ=1';
                DM1.cdsTemp.Close;
                DM1.cdsTemp.DataRequest(xSql);
                DM1.cdsTemp.Open;
                xCont:=DM1.cdsTemp.fieldbyname('COUNT').AsInteger;
                if xCont>0 then
                begin
                        MessageDlg(' No se Puede Crear Nueva Hoja de Ruta.DEBE CERRAR LOS REGISTROS PENDIENTES...!!!!', mtError, [mbOk], 0);
                        exit;
                end;
        end;
     }
     //Verifica si añade a una hoja de rura existente o genera una nueva hoja de ruta
     //Verifica si hay hoja de ruta no impresa
     xSql:='SELECT IDHOJARUTA FROM  ASO_HOJARUTA_MOV_CAB Where CODUSU='''+dblcdResponsable.Text+''' AND FLGIMPRESO IS NULL AND ESTADO<>''ANULADO'' ';
     DM1.cdsTemp.Close;
     DM1.cdsTemp.DataRequest(xSQL);
     DM1.cdsTemp.Open;
     If DM1.cdsTemp.RecordCount>1 Then
     Begin
       ShowMessage('Tiene mas de una Hoja de Ruta sin Imprimir verifique...');
       exit;
     End;

     If DM1.cdsTemp.RecordCount=1 Then
     Begin
       If MessageDlg('Se adicionará a la siguiente Hoja de Ruta '+DM1.cdsTemp.Fieldbyname('IDHOJARUTA').AsString+' Esta seguro(a)?',
         mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
          xHojaRuta:= Dm1.cdsTemp.FieldByname('IDHOJARUTA').AsString
       Else  Exit;
     End
     Else  xHojaRuta:= '';

     xPerCar := DM1.cdsConsultaCartera.FieldByName('PERCAR').AsString;

     If  Length(Trim(xHojaRuta))=0 Then
     Begin
     //Genera cabecera
     xSql:='INSERT INTO ASO_HOJARUTA_MOV_CAB(IDHOJARUTA,CODUSU,PERASIHOJ,PERCAR,NUMASO,ESTADO,PORCENTAJE,USUCREA,FECCREA) VALUES('
      //  +'(SELECT MAX(IDHOJARUTA)+1 FROM ASO_HOJARUTA_MOV_CAB WHERE SUBSTR(IDHOJARUTA,1,4)=TO_CHAR(SYSDATE,''YYYY''))'
          +'(SELECT  NVL(MAX(IDHOJARUTA),TO_CHAR(SYSDATE,''YYYY'')||''000000'')+1 FROM ASO_HOJARUTA_MOV_CAB WHERE SUBSTR(IDHOJARUTA,1,4)=TO_CHAR(SYSDATE,''YYYY''))'
          +','''+dblcdResponsable.Text+''' '
          +',TRUNC(SYSDATE)'
          +','+QuotedStr(xPerCar)
          +',0'
          +',''PENDIENTE'''
          +',0'
          +','''+DM1.wUsuario+''' '
          +',TRUNC(SYSDATE))';
     //Transaccion
     Try
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     Except
       ShowMessage('Error al ingresar nuevo HOJA DE RUTA en ASO_HOJARUTA_MOV_CAB');
       exit;
     End;
     End;

    //Se ubica en la hoja de ruta GENERADA
    If  Length(Trim(xHojaRuta))=0 Then
    Begin
     xsql:='SELECT MAX(IDHOJARUTA) IDHOJARUTA FROM ASO_HOJARUTA_MOV_CAB WHERE SUBSTR(IDHOJARUTA,1,4)=TO_CHAR(SYSDATE,''YYYY'') AND CODUSU='''+dblcdResponsable.Text+''' AND PERCAR='+QuotedStr(xPerCar);
     DM1.cdsTemp.Close;
     DM1.cdsTemp.DataRequest(xSQL);
     DM1.cdsTemp.Open;
     xidCodigoruta :=DM1.cdsTemp.FieldByName('IDHOJARUTA').AsString;
    End
    Else xidCodigoruta:= xHojaRuta;
   //Final HPC_201503_COB

    //--Transaccion--//
    Screen.Cursor := crHourGlass;
    if dtgAsignacion.SelectedList.Count <> 0 then
    begin
      //Inicio HPC_201503_COB
      xCont:=0;
       //Final HPC_201503_COB
      for i := 0 to dtgAsignacion.SelectedList.Count -1 do
      begin
        dtgAsignacion.datasource.dataset.GotoBookmark(dtgAsignacion.SelectedList.items[i]);
        xCodGen := DM1.cdsConsultaCartera.FieldByName('CODGEN').AsString;
        xCodUsu := dblcdResponsable.Text;
        xPerCar := DM1.cdsConsultaCartera.FieldByName('PERCAR').AsString;
        xAsoId := DM1.cdsConsultaCartera.FieldByName('ASOID').AsString;
      //Inicio HPC_201503_COB
        xCont   := xCont+1;
      //Final HPC_201503_COB

       //Inicio HPC_201503_COB
       //Añade hoja de Ruta uno
       // xSql := ' INSERT INTO ASO_HOJARUTA_MOV(CODHOJ,CODUSU,ASOID,PERASIHOJ,ESTASIHOJ,PERCAR,ESTHOJ,ESTREG,USUREG,FECREG,USUMOD,FECMOD,CODGEN)'
       //        +' VALUES ((SELECT NVL(MAX(CODHOJ)+1,0) FROM ASO_HOJARUTA_MOV),'+QuotedStr(xCodUsu)+','+QuotedStr(xAsoId)+',TO_CHAR(SYSDATE,''DD/MM/YYYY''),1,'+QuotedStr(xPerCar)+',1,1,'+QuotedStr(xCodUsu)+',SYSDATE,NULL,NULL,'+xCodGen+')';
       // DM1.DCOM1.AppServer.EjecutaSql(xSql);
          xSQL := ' INSERT INTO ASO_HOJARUTA_MOV(IDHOJARUTA,CODHOJ,CODUSU,ASOID,PERASIHOJ,ESTASIHOJ,PERCAR,ESTHOJ,ESTREG,USUREG,FECREG,USUMOD,FECMOD,CODGEN)'
                 +' VALUES ('+QuotedStr(xidCodigoruta)+',(SELECT NVL(MAX(CODHOJ)+1,0) FROM ASO_HOJARUTA_MOV),'+QuotedStr(xCodUsu)+','+QuotedStr(xAsoId)+',TO_CHAR(SYSDATE,''DD/MM/YYYY''),1,'+QuotedStr(xPerCar)+',1,1,'+QuotedStr(xCodUsu)+',SYSDATE,NULL,NULL,'+xCodGen+')';
          Try
             DM1.DCOM1.AppServer.EjecutaSql(xSQL);
          Except
            ShowMessage('Error al INSERTAR DETALLE en HOJA DE RUTA en ASO_HOJARUTA_MOV');
            exit;
          End;
         DM1.cdsConsultaCartera.Next;
      //Final HPC_201503_COB
      end;

      //Inicio HPC_201503_COB
      //Se actualiza la cabecera
      xSql :='BEGIN  SP_ASO_ACT_EST_HOJA_RUTA('''+xidCodigoruta+'''); END;';
      Try
       DM1.DCOM1.AppServer.EjecutaSql(xSql);
      Except
        ShowMessage('Error al Actualizar ESTADO de la tabla ASO_HOJARUTA_MOV_CAB ' );
        exit;
      End;
      //Final HPC_201503_COB
    end;
    Screen.Cursor := crDefault;
    BuscarPersonal;
end;

procedure TfGestionCartera.pcGestionChange(Sender: TObject);
begin

    if pcGestion.ActivePage= tsPersonal then
    begin
          gbContador.Visible:=true;
          gbFiltros.Enabled:=true;
          gbGestion.Caption:='Est. Asig. Hoja Ruta';
          rbNoAsignadas.Left:=11;
          rbAsignadas.Left:=105;
          rbTodas.Left:=184;
          rbPendientes.Visible:=false;
          rbCerradas.Visible:=false;
          rbNoAsignadas.Visible:=true;
          rbNoAsignadas.Checked:=true;
          rbAsignadas.Visible:=true;
          pnlPersonal.Enabled:=true;
          tsDetalle.TabVisible:=false;
          BuscarPersonal;
    end;
    if pcGestion.ActivePage= tsHojaruta then
    begin
          gbContador.Visible:=false;
          gbFiltros.Enabled:=false;
          tsDetalle.TabVisible:=false;
          gbGestion.Caption:='Est. Asig. Hoja Ruta';
          rbNoAsignadas.Left:=11;
          rbAsignadas.Left:=105;
          rbTodas.Left:=184;
          BuscarHojaRuta;
    end;
    if pcGestion.ActivePage= tsDetalle then
    begin

    end;
end;

procedure TfGestionCartera.bQBloqueClick(Sender: TObject);
var xCodHoj : String;
Var xSQL :String;
Var xFlg :Integer;
begin
        //--Validaciones--//
        If dtgHojaRuta.DataSource.DataSet.RecordCount = 0 Then
        Begin
               MessageDlg(' No Existe Datos Para QUITAR ASIGNACIÓN DE HOJA DE RUTA..!!!!', mtError, [mbOk], 0);
               Exit;
        End;

        //Inicio HPC_201503_ASO
        //Para N1 solo podra quitar registros siempre que no se ha impreso la Hoja de Ruta
        If Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N1' Then
        Begin
        //Final HPC_201503_ASO
        //--Valida quitar registros de hoja de ruta--//
        DM1.cdsConsultaHojaDet.First;
        While Not DM1.cdsConsultaHojaDet.EOF Do
        Begin
                xFlg := DM1.cdsConsultaHojaDet.FieldByName('FLGIMP').AsInteger;
                
                if xFlg=1 then
                begin
                    MessageDlg(' No se puede Quitar Registros. HOJA DE RUTA YA FUE IMPRESA..!!!!', mtError, [mbOk], 0);
                    Exit;
                end;
             DM1.cdsConsultaHojaDet.Next;
        End;

        //Inicio HPC_201503_ASO
        end;
        //Final HPC_201503_ASO

        //Inicio HPC_201503_ASO
        //Verifica si tiene algun Reusltado
        If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3') or (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N4') Then
        Begin
        DM1.cdsConsultaHojaDet.First;
        While Not DM1.cdsConsultaHojaDet.EOF Do
        Begin
               xFlg := DM1.cdsConsultaHojaDet.FieldByName('ESTHOJ').AsInteger;
               if xFlg=2 then
                Begin
                    MessageDlg(' No se puede Quitar Registros. HOJA DE RUTA YA TIENE RESULTADOS..!!!!', mtError, [mbOk], 0);
                    exit;
                End;
             DM1.CdsConsultaHojaDet.Next;
        end;
        end;
        //Final HPC_201503_ASO


        //--Transaccion--//
        Screen.Cursor := crHourGlass;
        DM1.cdsConsultaHojaDet.First;
        While Not DM1.cdsConsultaHojaDet.Eof Do
        Begin
            xCodHoj := DM1.cdsConsultaHojaDet.FieldByName('CODHOJ').AsString;

            //Elimina Asignaciones de Hoja de Ruta
            xSQL := 'DELETE FROM ASO_HOJARUTA_MOV '
                    +' WHERE CODHOJ='+xCodHoj;
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            DM1.cdsConsultaHojaDet.Next;
         End;

         //Inicio HPC_201503_ASO
         xSql:='Update  ASO_HOJARUTA_MOV_CAB SET NUMASO=0,PORCENTAJE=0,ESTADO=''ANULADO'' Where IDHOJARUTA='''+DM1.cdsConsultaHoja.FieldByName('IDHOJARUTA').AsString+''' ';
         Try
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         Except
           ShowMessage('Error al actualizar los estados de la cabecera de la HOJA DE RUTA (ASO_HOJARUTA_MOV)');
           Screen.Cursor := crDefault;
           exit;
         end;
         //Final HPC_201503_ASO

         Screen.Cursor := crDefault;
         BuscarHojaRutaDetalle(xPerAsiHoj);

end;

procedure TfGestionCartera.bQUnoClick(Sender: TObject);
Var  i: Integer;
var xCodHoj : String;
Var xSQL :String;
Var xFlg :Integer;
begin
        //--Validaciones--//
       If dtgHojaRuta.SelectedList.Count = 0 Then
        Begin
               MessageDlg(' No Existe Datos Seleccionados Para QUITAR DESASIGNACIÓN DE HOJA DE RUTA..!!!!', mtError, [mbOk], 0);
               Exit;
        End;

      //Inicio HPC_201503_ASO
      {
      //--Valida quitar registros de hoja de ruta--// 
      if dtgHojaRuta.SelectedList.Count <> 0 then
      begin
      for i := 0 to dtgHojaRuta.SelectedList.Count -1 do
       begin
        dtgHojaRuta.datasource.dataset.GotoBookmark(dtgHojaRuta.SelectedList.items[i]);
        xFlg := DM1.cdsConsultaHojaDet.FieldByName('FLGIMP').AsInteger;
        if xFlg=1 then
        begin
                MessageDlg(' No se puede Quitar Registros. HOJA DE RUTA YA FUE IMPRESA..!!!!', mtError, [mbOk], 0);
                Exit;
        end;
      end;
    end;
    }
 
       //Para N1 solo podra quitar registros siempre que no se ha impreso la Hoja de Ruta
       If Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N1' Then
       Begin
          //--Valida quitar registros de hoja de ruta--//
         if dtgHojaRuta.SelectedList.Count <> 0 then
         begin
         for i := 0 to dtgHojaRuta.SelectedList.Count -1 do
          begin
           dtgHojaRuta.datasource.dataset.GotoBookmark(dtgHojaRuta.SelectedList.items[i]);
           xFlg := DM1.cdsConsultaHojaDet.FieldByName('FLGIMP').AsInteger;
           if xFlg=1 then
           begin
                   MessageDlg(' No se puede Quitar Registros. HOJA DE RUTA YA FUE IMPRESA..!!!!', mtError, [mbOk], 0);
                   Exit;
           end;
          end;
         end;
        End;
  

        //Verifica si tiene algun Reusltado
        If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3') or (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N4') Then
        Begin
         if dtgHojaRuta.SelectedList.Count <> 0 then
         begin
         for i := 0 to dtgHojaRuta.SelectedList.Count -1 do
          begin
           dtgHojaRuta.datasource.dataset.GotoBookmark(dtgHojaRuta.SelectedList.items[i]);
           xFlg := DM1.cdsConsultaHojaDet.FieldByName('ESTHOJ').AsInteger;
           if xFlg=2 then
           begin
                   MessageDlg(' No se puede Quitar Registros. HOJA DE RUTA YA TIENE RESULTADO..!!!!', mtError, [mbOk], 0);
                   Exit;
           end;
          end;
         end;
        End;
        //Final HPC_201503_ASO


      //--Transaccion--//
      Screen.Cursor := crHourGlass;
      if dtgHojaRuta.SelectedList.Count <> 0 then
      begin
      for i := 0 to dtgHojaRuta.SelectedList.Count -1 do
       begin
        dtgHojaRuta.datasource.dataset.GotoBookmark(dtgHojaRuta.SelectedList.items[i]);
        xCodHoj := DM1.cdsConsultaHojaDet.FieldByName('CODHOJ').AsString;

         //Elimina Asignaciones de Hoja de Ruta
         xSQL := 'DELETE FROM ASO_HOJARUTA_MOV H'
                 +' WHERE H.CODHOJ='+xCodHoj;
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      end;

      //Inicio HPC_201503_ASO
      xSql:='SELECT NVL(COUNT(1),0) CANT FROM ASO_HOJARUTA_MOV WHERE IDHOJARUTA='''+DM1.cdsConsultaHoja.FieldByName('IDHOJARUTA').AsString+''' ';
      DM1.cdsTemp.Close;
      DM1.cdsTemp.DataRequest(xSQL);
      DM1.cdsTemp.Open;
      If DM1.cdsTemp.FieldByName('CANT').AsInteger=0 Then  //se anula todo el registro
      Begin
         xSql:='Update  ASO_HOJARUTA_MOV_CAB SET NUMASO=0,PORCENTAJE=0,ESTADO=''ANULADO'' Where IDHOJARUTA='''+DM1.cdsConsultaHoja.FieldByName('IDHOJARUTA').AsString+''' ';
         Try
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         Except
           ShowMessage('Error al actualizar los estados de la cabecera de la HOJA DE RUTA (ASO_HOJARUTA_MOV)');
           Screen.Cursor := crDefault;
           exit;
         End;
      End
      Else
      Begin
        xSql :='BEGIN  SP_ASO_ACT_EST_HOJA_RUTA('''+DM1.cdsConsultaHoja.fieldbyname('IDHOJARUTA').Asstring+'''); END;';
        Try
          DM1.DCOM1.AppServer.EjecutaSql(xSql);
        Except
          ShowMessage('Error al Actualizar ESTADO de la tabla ASO_HOJARUTA_MOV_CAB ' );
          exit;
        End;
      End;  
    //Final HPC_201503_ASO

    end;
    Screen.Cursor := crDefault;
    BuscarHojaRutaDetalle(xPerAsiHoj);
end;



procedure TfGestionCartera.dtgCabHojaDblClick(Sender: TObject);
begin
      If dtgCabHoja.DataSource.DataSet.RecordCount = 0 Then
      Begin
               MessageDlg(' No Seleccion Registro..!!!!', mtError, [mbOk], 0);
               Exit;
      End;

      xPerAsiHoj:=DM1.cdsConsultaHoja.fieldbyname('PERASIHOJ').AsString;

      pcGestion.ActivePage:= tsDetalle;
      gbContador.Visible:=true;
      gbFiltros.Enabled:=true;
      gbGestion.Caption:='Situación Hoja Ruta';
      rbPendientes.Left:=11;
      rbCerradas.Left:=105;
      rbTodas.Left:=184;
      rbNoAsignadas.Visible:=false;
      rbAsignadas.Visible:=false;
      rbPendientes.Visible:=true;
      rbCerradas.Visible:=true;
      rbTodas.Checked:=true;
      pnlHojaruta.Enabled:=true;
      tsDetalle.TabVisible:=true;
      
      Screen.Cursor := crHourGlass;
      BuscarHojaRutaDetalle(xPerAsiHoj);
      Screen.Cursor := crDefault;

end;

procedure TfGestionCartera.bExportarClick(Sender: TObject);
Var xSql: String;
Var xCont :Integer;
begin

      //--Ordenamiento--//
      xSql:=' SELECT DEP_COL DEPARTAMENTO,PROV_COL PROVINCIA,DIS_COL DISTRITO,CENPOBCOL CEN_POBLADO,TO_CHAR(CENEDU) CEN_EDUCATIVO,TO_CHAR(DNIASO) DNI, '
        +' SUBSTR(NOMASO,1,100) NOMBRES,TO_CHAR(NIVCENEDU) NIVEL_CE,SITASO SITUACION,TIPASO TIPO, SUBSTR(DIRASO,1,100) DIRASO,TO_CHAR(TELASO1||''-''||TELASO2) TELEFONO,TO_CHAR(EMAIL) EMAIL,'
        +' TRIM(TO_CHAR(M,''999999.99'')) MONTO_APORTE_VOLUNT,SUBSTR(TO_CHAR(U,''DD/MM/YYYY''),1,20) ULTIMA_ACTUALIZ, '
        +' SUBSTR(TIPCAR,1,25) CARTERA,SUBSTR(OBS_AUTDESAPO,1,20) FIRMO,SUBSTR(TO_CHAR(OBS_FECAUTDESAPO),1,20) FEC_FIRMO,SUBSTR(OBS_ASOTIPID,1,20) CESO'
        +' FROM(SELECT GAC.CODGEN,H.CODHOJ,GAC.PERCAR,GAC.ASOID,GAC.DNIASO,GAC.CODMOD,GAC.NOMASO,GAC.DIRASO,DEPA.DPTODES DEP_ASO,PROVA.CIUDDES PROV_ASO,'
        +' DISA.ZIPABR DIS_ASO,NVL(TRIM(SUBSTR(GAC.CENEDU,1,INSTR(GAC.CENEDU,''('')-1)),''Z99: NO IDENTIFICADO'') CENEDU,GAC.CENEDUID,0 NUMCOL,GAC.EMAIL,'
        +' GAC.DIRCOL, NVL(DEPC.DPTODES,''Z99: NO IDENTIFICADO'') DEP_COL,NVL(PROVC.CIUDDES,''Z99: NO IDENTIFICADO'') PROV_COL,NVL(DISC.ZIPABR,''Z99: NO IDENTIFICADO'') DIS_COL,'
        +' NVL(GAC.CENPOBCOL,''Z99: NO IDENTIFICADO'') CENPOBCOL,TCAR.NOMVAL TIPCAR,TCAR.NOMVAL TIPO_CAR,'
        +' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTHOJ, EH.NOMVAL EST_HOJA,H.FLGIMP,'
        //Inicio HPC_201503_ASO
        //' GAC.AUTDES,GAC.TELASO1,GAC.TELASO2,GAC.SITASO,GAC.TIPASO,NVL(GAC.NIVCENEDU,''Z99: NO IDENTIFICADO'') NIVCENEDU,'
        +' GAC.AUTDES,GAC.TELASO1,GAC.TELASO2,GAC.SITASO,GAC.TIPASO,NVL(GAC.NIVCENEDU,''Z99: NO IDENTIFICADO'') NIVCENEDU,ASO.ASOAPTSER,'
        //Final  HPC_201503_ASO
        +' CASE WHEN GAC.AUTDES=''S'' THEN 0 ELSE 1 END SINFIRMA, CASE WHEN GAC.AUTDES=''S'' THEN 1 ELSE 0 END CONFIRMA,'
        +' SF_ASO_MONTOAPORTEVOLU(GAC.ASOID) M,'
        +' (SELECT MAX(TO_DATE(V.FECVAL,''DD/MM/YY'')) FROM VAL_DAT_ASO V WHERE V.ASOID=GAC.ASOID) U, '
        +' SF_ASO_VALIDAAUTODESAPO(GAC.ASOID) OBS_AUTDESAPO, '
        +' SF_ASO_VALIDAFECAUTODESAPO(GAC.ASOID) OBS_FECAUTDESAPO,'
        +' SF_ASO_VALIDAASOTIPID(GAC.ASOID) OBS_ASOTIPID '
        +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
        //Inicio HPC_201504_ASO
        //Inicio HPC_201503_ASO
        //+' INNER JOIN APO201 ASO ON ASO.ASOID=GAC.ASOID '
        +' INNER JOIN APO201 ASO ON ASO.ASOID(+)=GAC.ASOID '
        //Final HPC_201503_ASO
        //Final HPC_201504_ASO
        +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
        +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
        +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
        +'                                                                                                                               '
        +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
        +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)'
        +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL'
        +'                                                                                                                               '
        +' LEFT JOIN ASO_HOJARUTA_MOV H ON H.CODUSU=GAC.CODUSUASI AND H.ASOID=GAC.ASOID AND GAC.PERCAR=H.PERCAR AND H.ESTREG=''1'''
        +' LEFT JOIN ASO_GENERICA_DET TCAR ON TCAR.CODCAB=''TIPOCART'' AND TCAR.VALDES01=GAC.TIPCAR AND TCAR.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB ON TCAB.CODCAB=TCAR.CODCAB AND TCAB.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET TGES ON TGES.CODCAB=''TIPOGEST'' AND TGES.VALDES01=GAC.TIPGES AND TGES.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB2 ON TCAB2.CODCAB=TGES.CODCAB AND TCAB2.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET EASI ON EASI.CODCAB=''ESTASIGNACION'' AND EASI.VALDES01=GAC.ESTASIG AND EASI.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB3 ON TCAB3.CODCAB=EASI.CODCAB AND TCAB3.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET EH ON EH.CODCAB=''ESTHOJARUTA'' AND EH.VALDES01=H.ESTHOJ AND EH.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB4 ON TCAB4.CODCAB=EH.CODCAB AND TCAB4.ESTREG=1'
       //Inicio HPC_201504_ASO
        +'  LEFT JOIN (SELECT DNI,'
        +'             RESTRICCIONES,'
        +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK3'
        +'             FROM INF_RENIEC_CAP) R ON R.DRK3 = 1'
        +'                              AND R.DNI = GAC.DNIASO'
        //Final HPC_201504_ASO
        +' WHERE GAC.ESTREG=1'
        //Inicio HPC_201503_ASO
        //+' AND H.PERASIHOJ='+QuotedStr(xPerAsiHoj) ;
        +' AND H.PERASIHOJ='+QuotedStr(xPerAsiHoj)
        +' AND H.IDHOJARUTA='+QuotedStr(DM1.cdsConsultaHoja.FieldByName('IDHOJARUTA').AsString)
        +' AND H.ASOID=GAC.ASOID ' ;
        //Final HPC_201503_ASO
       xSql:=xSql+xPrintWhere+'  ) GROUP BY DEP_COL,PROV_COL, DIS_COL,CENPOBCOL,CENEDU,DNIASO,NOMASO,NIVCENEDU,SITASO,TIPASO,DIRASO,TELASO1,TELASO2,EMAIL, '
                             +' M,  U, TIPCAR,OBS_AUTDESAPO,OBS_FECAUTDESAPO,OBS_ASOTIPID   '
                             +' ORDER BY DEP_COL, PROV_COL, DIS_COL, CENPOBCOL, CENEDU, NIVCENEDU, NOMASO';

       //Inicio HPC_201503_ASO
       If rbDomicilio.Checked Then
       Begin
          xSql:='SELECT * FROM (SELECT GAC.CODGEN,H.CODHOJ,GAC.PERCAR,GAC.ASOID,GAC.DNIASO,GAC.CODMOD,GAC.NOMASO,GAC.DIRASO,DEPA.DPTODES DEP_ASO,PROVA.CIUDDES PROV_ASO,'
           +' DISA.ZIPABR DIS_ASO,NVL(TRIM(SUBSTR(GAC.CENEDU,1,INSTR(GAC.CENEDU,''('')-1)),''Z99: NO IDENTIFICADO'') CENEDU,GAC.CENEDUID,0 NUMCOL,GAC.EMAIL,'
           +'GAC.DIRCOL, NVL(DEPC.DPTODES,''Z99: NO IDENTIFICADO'') DEP_COL,NVL(PROVC.CIUDDES,''Z99: NO IDENTIFICADO'') PROV_COL,NVL(DISC.ZIPABR,''Z99: NO IDENTIFICADO'') DIS_COL,NVL(GAC.CENPOBCOL,''Z99: NO IDENTIFICADO'') CENPOBCOL,GAC.TIPCAR,TCAR.NOMVAL TIPO_CAR,'
           +' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTHOJ, EH.NOMVAL EST_HOJA,H.FLGIMP,'
           +' GAC.AUTDES,GAC.TELASO1,GAC.TELASO2,GAC.SITASO,GAC.TIPASO,NVL(GAC.NIVCENEDU,''Z99: NO IDENTIFICADO'') NIVCENEDU,ASO.ASOAPTSER,'
           +' CASE WHEN GAC.AUTDES=''S'' THEN 0 ELSE 1 END SINFIRMA, CASE WHEN GAC.AUTDES=''S'' THEN 1 ELSE 0 END CONFIRMA,'
           +' SF_ASO_MONTOAPORTEVOLU(GAC.ASOID),'
           +' (SELECT MAX(TO_DATE(V.FECVAL,''DD/MM/YY'')) FROM VAL_DAT_ASO V WHERE V.ASOID=GAC.ASOID), '
           +' SF_ASO_VALIDAAUTODESAPO(GAC.ASOID) OBS_AUTDESAPO, '
           +' SF_ASO_VALIDAFECAUTODESAPO(GAC.ASOID) OBS_FECAUTDESAPO,'
           +' SF_ASO_VALIDAASOTIPID(GAC.ASOID) OBS_ASOTIPID '
           +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
           +' INNER JOIN APO201 ASO ON ASO.ASOID=GAC.ASOID '
           +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
           +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
           +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
           +'                                                                                                                               '
           +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
           +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)'
           +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL'
           +'                                                                                                                               '
           +' LEFT JOIN ASO_HOJARUTA_MOV H ON H.CODUSU=GAC.CODUSUASI AND H.ASOID=GAC.ASOID AND GAC.PERCAR=H.PERCAR AND H.ESTREG=''1'''
           +' LEFT JOIN ASO_GENERICA_DET TCAR ON TCAR.CODCAB=''TIPOCART'' AND TCAR.VALDES01=GAC.TIPCAR AND TCAR.ESTREG=1'
           +' LEFT JOIN ASO_GENERICA_CAB TCAB ON TCAB.CODCAB=TCAR.CODCAB AND TCAB.ESTREG=1'
           +' LEFT JOIN ASO_GENERICA_DET TGES ON TGES.CODCAB=''TIPOGEST'' AND TGES.VALDES01=GAC.TIPGES AND TGES.ESTREG=1'
           +' LEFT JOIN ASO_GENERICA_CAB TCAB2 ON TCAB2.CODCAB=TGES.CODCAB AND TCAB2.ESTREG=1'
           +' LEFT JOIN ASO_GENERICA_DET EASI ON EASI.CODCAB=''ESTASIGNACION'' AND EASI.VALDES01=GAC.ESTASIG AND EASI.ESTREG=1'
           +' LEFT JOIN ASO_GENERICA_CAB TCAB3 ON TCAB3.CODCAB=EASI.CODCAB AND TCAB3.ESTREG=1'
           +' LEFT JOIN ASO_GENERICA_DET EH ON EH.CODCAB=''ESTHOJARUTA'' AND EH.VALDES01=H.ESTHOJ AND EH.ESTREG=1'
           +' LEFT JOIN ASO_GENERICA_CAB TCAB4 ON TCAB4.CODCAB=EH.CODCAB AND TCAB4.ESTREG=1'
           +' WHERE GAC.PERCAR='+QuotedStr(DM1.cdsConsultaHoja.FieldByName('PERCAR').AsString)+' AND GAC.ESTREG=1'
           +' AND H.PERASIHOJ='+QuotedStr(xPerAsiHoj)
           +' AND H.IDHOJARUTA='+QuotedStr(DM1.cdsConsultaHoja.FieldByName('IDHOJARUTA').AsString)
           +' AND H.ASOID=GAC.ASOID ' ;
           xSql:=xSql+xPrintWhere+'  ) ORDER BY DEP_ASO,PROV_ASO,DIS_ASO,NOMASO ';
        End;
          //Final HPC_201503_ASO
       DM1.cdsTemp.Close;
       DM1.cdsTemp.DataRequest(xSql);
       DM1.cdsTemp.Open;

   dtgExcel.DataSource:=DM1.dsTemp;
   With dtgExcel, dtgExcel.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Hoja_de_Ruta.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dtgExcel.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;

end;

procedure TfGestionCartera.bImprimirClick(Sender: TObject);
Var xSql:String;
Var xCodGen :Integer;
Boton: Integer;
Var xNumColegio :Integer;
Var xNomColegio : String;    
//Inicio HPC_201503_ASO
Var xSQLOrden:String;
//Final HPC_201503_ASO
begin

     If dtgHojaRuta.DataSource.DataSet.RecordCount = 0 Then
      Begin
         Screen.Cursor := crDefault;
         ShowMessage('No Existen Registros a Imprimir..!!!!');
         Exit;
      End;
//Inicio HPC_201503_ASO
     If xSoloConsulta='N' Then
     Begin
//Final HPC_201503_ASO
     Boton := Application.MessageBox('1. Se Validará los datos con el Maestro de Asociados.'+#13#10+'2. Al imprimir HOJA DE RUTA ya no podra añadir ni quitar Asociados. Seguro de imprimir HOJA DE RUTA? ', 'Imprimir', MB_YESNO + MB_ICONQUESTION);
     If Boton = ID_YES Then
     Begin
        Screen.Cursor := crHourGlass;
        DM1.cdsConsultaHojaDet.First;
        While Not DM1.cdsConsultaHojaDet.Eof Do
        Begin
            Refresh;
            xCodGen := DM1.cdsConsultaHojaDet.FieldByName('CODGEN').AsInteger;

           //Actualiza flag de impresion de hoja de ruta
           //Inicio HPC_201503_ASO
           { 
            xSQL := 'UPDATE ASO_HOJARUTA_MOV '
                    +' SET FLGIMP=1'
                    +' WHERE CODGEN='+IntToStr(xCodGen);
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
           }
            xSQL := 'UPDATE ASO_HOJARUTA_MOV_CAB '
                   +'SET FLGIMPRESO=''S'',ESTADO=''PENDIENTE'' '
                   +'WHERE IDHOJARUTA='+QuotedStr(DM1.cdsConsultaHoja.FieldByName('IDHOJARUTA').AsString);
            Try
              DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            Except
              ShowMessage('No se pudo actualizar el flag de impresión en la tabla ASO_HOJARUTA_MOV_CAB, comuníquese con Sistemas');
              exit;
            End;

            xSQL := 'UPDATE ASO_HOJARUTA_MOV '
                   +'SET FLGIMP=1 '
                   +'WHERE IDHOJARUTA='+QuotedStr(DM1.cdsConsultaHoja.FieldByName('IDHOJARUTA').AsString);
            Try
              DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            Except
              ShowMessage('No se pudo actualizar el flag de impresión en la tabla ASO_HOJARUTA_MOV_CAB, comuníquese con Sistemas');
              exit;
            End;
           //Final HPC_201503_ASO
           
            DM1.cdsConsultaHojaDet.Next;
         End;
         Screen.Cursor := crDefault;
     //Inicio HPC_201503_ASO
     End Else exit ;
     End;
     //Final HPC_201503_ASO

       //--Ordenamiento--//
       xSql:='SELECT * FROM (SELECT GAC.CODGEN,H.CODHOJ,GAC.PERCAR,GAC.ASOID,GAC.DNIASO,GAC.CODMOD,GAC.NOMASO,GAC.DIRASO,DEPA.DPTODES DEP_ASO,PROVA.CIUDDES PROV_ASO,'
        +' DISA.ZIPABR DIS_ASO,NVL(TRIM(SUBSTR(GAC.CENEDU,1,INSTR(GAC.CENEDU,''('')-1)),''Z99: NO IDENTIFICADO'') CENEDU,GAC.CENEDUID,0 NUMCOL,GAC.EMAIL,'
        +'GAC.DIRCOL, NVL(DEPC.DPTODES,''Z99: NO IDENTIFICADO'') DEP_COL,NVL(PROVC.CIUDDES,''Z99: NO IDENTIFICADO'') PROV_COL,NVL(DISC.ZIPABR,''Z99: NO IDENTIFICADO'') DIS_COL,NVL(GAC.CENPOBCOL,''Z99: NO IDENTIFICADO'') CENPOBCOL,GAC.TIPCAR,TCAR.NOMVAL TIPO_CAR,'
        +' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,H.ESTHOJ, EH.NOMVAL EST_HOJA,H.FLGIMP,'
        //Inicio HPC_201503_ASO
        //+' GAC.AUTDES,GAC.TELASO1,GAC.TELASO2,GAC.SITASO,GAC.TIPASO,NVL(GAC.NIVCENEDU,''Z99: NO IDENTIFICADO'') NIVCENEDU,'
        +' GAC.AUTDES,GAC.TELASO1,GAC.TELASO2,GAC.SITASO,GAC.TIPASO,NVL(GAC.NIVCENEDU,''Z99: NO IDENTIFICADO'') NIVCENEDU,ASO.ASOAPTSER,'
        //Final HPC_201503_ASO
        +' CASE WHEN GAC.AUTDES=''S'' THEN 0 ELSE 1 END SINFIRMA, CASE WHEN GAC.AUTDES=''S'' THEN 1 ELSE 0 END CONFIRMA,'
        +' SF_ASO_MONTOAPORTEVOLU(GAC.ASOID),'
        +' (SELECT MAX(TO_DATE(V.FECVAL,''DD/MM/YY'')) FROM VAL_DAT_ASO V WHERE V.ASOID=GAC.ASOID), '
        +' SF_ASO_VALIDAAUTODESAPO(GAC.ASOID) OBS_AUTDESAPO, '
        +' SF_ASO_VALIDAFECAUTODESAPO(GAC.ASOID) OBS_FECAUTDESAPO,'
        +' SF_ASO_VALIDAASOTIPID(GAC.ASOID) OBS_ASOTIPID '
        +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
        //Inicio HPC_201504_ASO
        //Inicio HPC_201503_ASO
        //+' INNER JOIN APO201 ASO ON ASO.ASOID=GAC.ASOID '
        +' INNER JOIN APO201 ASO ON ASO.ASOID(+)=GAC.ASOID '
        //Final HPC_201503_ASO
        //Final HPC_201504_ASO
        +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
        +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
        +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
        +'                                                                                                                               '
        +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
        +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)'
        +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL'
        +'                                                                                                                               '
        +' LEFT JOIN ASO_HOJARUTA_MOV H ON H.CODUSU=GAC.CODUSUASI AND H.ASOID=GAC.ASOID AND GAC.PERCAR=H.PERCAR AND H.ESTREG=''1'''
        +' LEFT JOIN ASO_GENERICA_DET TCAR ON TCAR.CODCAB=''TIPOCART'' AND TCAR.VALDES01=GAC.TIPCAR AND TCAR.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB ON TCAB.CODCAB=TCAR.CODCAB AND TCAB.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET TGES ON TGES.CODCAB=''TIPOGEST'' AND TGES.VALDES01=GAC.TIPGES AND TGES.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB2 ON TCAB2.CODCAB=TGES.CODCAB AND TCAB2.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET EASI ON EASI.CODCAB=''ESTASIGNACION'' AND EASI.VALDES01=GAC.ESTASIG AND EASI.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB3 ON TCAB3.CODCAB=EASI.CODCAB AND TCAB3.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET EH ON EH.CODCAB=''ESTHOJARUTA'' AND EH.VALDES01=H.ESTHOJ AND EH.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB4 ON TCAB4.CODCAB=EH.CODCAB AND TCAB4.ESTREG=1'
       //Inicio HPC_201504_ASO
        +'  LEFT JOIN (SELECT DNI,'
        +'             RESTRICCIONES,'
        +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK3'
        +'             FROM INF_RENIEC_CAP) R ON R.DRK3 = 1'
        +'                              AND R.DNI = GAC.DNIASO'
        //Final HPC_201504_ASO
//Inicio: SPP_201407_ASO
        +' WHERE GAC.PERCAR='+QuotedStr(DM1.cdsConsultaHoja.FieldByName('PERCAR').AsString)+'AND GAC.ESTREG=1'
//Fin: SPP_201407_ASO
        //Inicio HPC_201503_ASO
        //+' AND H.PERASIHOJ='+QuotedStr(xPerAsiHoj) ;
        //xSql:=xSql+xPrintWhere+'  ) ORDER BY DEP_COL,PROV_COL,DIS_COL,CENPOBCOL,CENEDU,NIVCENEDU,NOMASO';
        +' AND H.PERASIHOJ='+QuotedStr(xPerAsiHoj)
        +' AND H.IDHOJARUTA='+QuotedStr(DM1.cdsConsultaHoja.FieldByName('IDHOJARUTA').AsString)
        +' AND H.ASOID=GAC.ASOID ' ;

       xSql:=xSql+xPrintWhere;
       If  rbDomicilio.Checked Then
            xSQLOrden :='Select Rownum,Z.* From('+Xsql+') ORDER BY DEP_ASO,PROV_ASO,DIS_ASO,NOMASO) Z '
       Else xSQLOrden :='Select Rownum,Z.* From('+Xsql+') ORDER BY DEP_COL,PROV_COL,DIS_COL,CENPOBCOL,CENEDU,NIVCENEDU,NOMASO) Z ';
       xsql:= xSQLOrden;
       //Final HPC_201503_ASO
       DM1.cdsConsultaHojaDet.Close;
       DM1.cdsConsultaHojaDet.DataRequest(xSql);
       DM1.cdsConsultaHojaDet.Open;

        // determina número de colegio según lista , docentes que no firmaron
        // se imprimirá debajo del número de página.
        xNumColegio := 0;
        DM1.cdsConsultaHojaDet.First;
        While Not DM1.cdsConsultaHojaDet.EOF Do
        Begin
                xNumColegio := xNumColegio + 1;
                xNomColegio := DM1.cdsConsultaHojaDet.FieldByName('CENEDUID').AsString;
                While (Not DM1.cdsConsultaHojaDet.EOF) And (DM1.cdsConsultaHojaDet.FieldByName('CENEDUID').AsString = xNomColegio) Do
                Begin
                        DM1.cdsConsultaHojaDet.Edit;
                        DM1.cdsConsultaHojaDet.FieldByName('NUMCOL').AsInteger := xNumColegio;
                        DM1.cdsConsultaHojaDet.Next;
                End;
        End;
       DM1.cdsConsultaHojaDet.First;

       Screen.Cursor := crHourGlass;
       ppbdReporteHojaRuta.DataSource:=DM1.dsConsultaHojaDet;
      //Inicio HPC_201503_ASO
       If  rbDomicilio.Checked Then
            pprReporteHojaRutaDomicilio.Print
       Else pprReporteHojaRuta.Print;
      //Final HPC_201503_ASO

       //ppDesigner1.Show;
       Screen.Cursor := crDefault;
//Inicio HPC_201503_ASO
//  end;
//Final HPC_201503_ASO
end;

procedure TfGestionCartera.dtgHojaRutaDblClick(Sender: TObject);
begin
     xIdAsociado:=DM1.cdsConsultaHojaDet.fieldbyname('ASOID').AsString;
     xDniAsociado:=DM1.cdsConsultaHojaDet.fieldbyname('DNIASO').AsString;
     xNomAsociado:=DM1.cdsConsultaHojaDet.fieldbyname('NOMASO').AsString;
     xPeriodoCartera:=DM1.cdsConsultaHojaDet.fieldbyname('PERCAR').AsString;

     Try
            fActualizarResultado := TfActualizarResultado.create(self);
            //Inicio HPC_201503_ASO
            fActualizarResultado.vUsuarioRes := dblcdResponsable.Text;
            If xSoloConsulta='S' Then
            Begin
              fActualizarResultado.btnMantAso.Enabled := False;
              fActualizarResultado.bGrabar.Enabled := False;
            End
            Else
            Begin
              fActualizarResultado.btnMantAso.Enabled := True;
              fActualizarResultado.bGrabar.Enabled := True;
            End;
            //Final HPC_201503_ASO            
            fActualizarResultado.Showmodal;
     Finally
            fActualizarResultado.free;
     End;
end;

procedure TfGestionCartera.bConsolidadoClick(Sender: TObject);
Var xSql :String;
begin
//Inicio: SPP_201407_ASO
       //Inicio HPC_201503_ASO
       //xSql:='SELECT MAX(TO_DATE(G.PERCAR,''DD/MM/YYYY'')) PERCAR FROM ASO_GENERA_ASIGNA_CARTERA_MOV G WHERE G.CODUSUASI='+QuotedStr(DM1.wUsuario) ;
       xSql:='SELECT MAX(TO_DATE(G.PERCAR,''DD/MM/YYYY'')) PERCAR FROM ASO_GENERA_ASIGNA_CARTERA_MOV G WHERE G.CODUSUASI='+QuotedStr(dblcdResponsable.Text) ;
       //Final HPC_201506_ASO
//Fin: SPP_201407_ASO
        //--llenar la Grilla--//
         DM1.cdsTemp.Close;
         DM1.cdsTemp.DataRequest(xSql);
         DM1.cdsTemp.Open;

       xSql:='SELECT DISTINCT DEPC.DPTODES,PROVC.CIUDDES,DISC.ZIPDES,GAC.CENPOBCOL,GAC.CENEDUID,GAC.CENEDU,GAC.DIRCOL, '
                +' SUM(CASE WHEN GAC.TIPCAR=1 THEN 1 ELSE 0 END) CART_1, '
                +' SUM(CASE WHEN GAC.TIPCAR=2 THEN 1 ELSE 0 END) CART_2, '
                +' SUM(CASE WHEN GAC.TIPCAR=3 THEN 1 ELSE 0 END) CART_3, '
                +' SUM(CASE WHEN GAC.TIPCAR=4 THEN 1 ELSE 0 END) CART_4, '
                +' SUM(1) TOTAL                                  '
                +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC       '
                +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
                +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4) '
                +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL  '
              //Inicio HPC_201503_ASO
              //+' WHERE GAC.CODUSUASI='+QuotedStr(DM1.wUsuario)+' AND GAC.PERCAR='+QuotedStr(DM1.cdsTemp.FieldByName('PERCAR').AsString)
                +' WHERE GAC.CODUSUASI='+QuotedStr(dblcdResponsable.Text)+' AND GAC.PERCAR='+QuotedStr(DM1.cdsTemp.FieldByName('PERCAR').AsString)
              //Final HPC_201503_ASO
                +' GROUP BY GAC.CENEDUID,GAC.CENEDU,GAC.DIRCOL, DEPC.DPTODES,PROVC.CIUDDES,DISC.ZIPDES,GAC.CENPOBCOL,GAC.CENEDU   '
                +' ORDER BY DEPC.DPTODES,PROVC.CIUDDES,DISC.ZIPDES,GAC.CENPOBCOL,GAC.CENEDU     '   ;

         //--llenar la Grilla--//
         Screen.Cursor := crHourGlass;
         DM1.cdsTemp.Close;
         DM1.cdsTemp.DataRequest(xSql);
         DM1.cdsTemp.Open;

         //--Reporte--//
         //Inicio HPC_201503_ASO
         //pplUsuario.Caption:=DM1.wUsuario;
         pplUsuario.Caption:=dblcdResponsable.Text;
         //Final HPC_201503_ASO
         ppbdReporteColegios.DataSource:=DM1.dsTemp;
         pprReporteColegios.Print;
         //ppDesigner2.Show;
         Screen.Cursor := crDefault;


end;


procedure TfGestionCartera.rbAsignadasClick(Sender: TObject);
begin
    gbEstResult.Visible:=true;
    rbExitoso.Checked:=false;
    rbNoExitoso.Checked:=false;
end;

procedure TfGestionCartera.rbNoAsignadasClick(Sender: TObject);
begin
    gbEstResult.Visible:=false;
    rbExitoso.Checked:=false;
    rbNoExitoso.Checked:=false;
end;

procedure TfGestionCartera.rbPendientesClick(Sender: TObject);
begin
    gbEstResult.Visible:=false;
end;

procedure TfGestionCartera.rbCerradasClick(Sender: TObject);
begin
   gbEstResult.Visible:=false;
end;

procedure TfGestionCartera.rbTodasClick(Sender: TObject);
begin
    gbEstResult.Visible:=false;
    rbExitoso.Checked:=false;
    rbNoExitoso.Checked:=false;
end;

procedure TfGestionCartera.rbAsignadasDblClick(Sender: TObject);
begin
     gbEstResult.Visible:=true;
    rbExitoso.Checked:=false;
    rbNoExitoso.Checked:=false;
end;

procedure TfGestionCartera.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
  IF  Text = 'Z99: NO IDENTIFICADO' THEN
  BEGIN
      Text := ''
  END;
end;

//Inicio HPC_201504_ASO
procedure TfGestionCartera.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 DM1.cdsConsultaCartera.Close;
 DM1.cdsConsulta.IndexFieldNames:='';
 DM1.cdsConsulta.Filter:='';
end;
//Final HPC_201504_ASO

//Inicio HPC_201504_ASO
procedure TfGestionCartera.btnCtaIndClick(Sender: TObject);
var xsql3: string;
i:Integer;
begin
    Dm1.cdsConsultaHojaDet.First;
    i:=0;
    limpiarLista();
    While Not DM1.cdsConsultaHojaDet.Eof DO
    Begin
      vleDNI.InsertRow(Dm1.cdsConsultaHojaDet.FieldByname('DNIASO').AsString, Dm1.cdsConsultaHojaDet.FieldByname('NOMASO').AsString, True);
      i := i + 1;
      Dm1.cdsConsultaHojaDet.Next;
    End;


   pnlCuentaInd.Top     := 72;
   pnlCuentaInd.Left    := 336;
   pnlCuentaInd.Visible := True;
   bImprimir.Enabled:=False;
   bExportar.Enabled:=False;
   vleDNI.Visible := True;
   btnBloque.Visible := True;
end;
//Final HPC_201504_ASO

//Inicio HPC_201504_ASO
procedure TfGestionCartera.btnPnlExitClick(Sender: TObject);
begin
pnlCuentaInd.Visible := False;
end;
//Final HPC_201504_ASO

//Inicio HPC_201504_ASO
procedure TfGestionCartera.limpiarLista;
begin
      While (isSeleccionado) Do
        vleDNI.DeleteRow(vleDNI.Row);
end;
//Final HPC_201504_ASO

//Inicio HPC_201504_ASO
function TfGestionCartera.isSeleccionado: boolean;
begin
  isSeleccionado := ((vleDNI.RowCount > 1) And (vleDNI.Keys[1] <> ''));
end;
//Final HPC_201504_ASO

//Inicio HPC_201504_ASO
procedure TfGestionCartera.btnBloqueClick(Sender: TObject);
Var
   xSql, cadena: String;
   row: integer;
   nDni:integer;
   vCadError: String;
Begin
   If (Not isSeleccionado) Then
   Begin
      showmessage('Seleccione un DNI');
      exit;
   End;

   Screen.Cursor := crHourGlass;
   vleDNI.Row := 1;
   While (isseleccionado) Do
   Begin
      xSql := 'SELECT A.ASOID, A.ASOTIPID, A.ASOFRESNOM, NVL(TRIM(A.AUTDESAPO),''N'') AUTDESAPO,'
         + ' A.ASOAPENOMDNI, A.ASODIR, A.ASODNI, A.ZIPID, A.ASOTELF1, A.ASOCODMOD, A.UPROID, A.UPAGOID, A.USEID,'
         + ' A.ASOTELF1, A.ASOCODMOD, A.CENEDUID, A.ASODESLAB, A.ASODIRLAB, A.ASODSTLABID, A.ASORESNOM,'
         + ' C.ASOTIPDES, C.ASOTIPABR, B.USENOM FROM APO201 A, APO101 B, APO107 C'
         + ' WHERE A.ASODNI = ''' + vleDNI.Keys[vleDNI.Row] + ''' AND A.USEID = B.USEID'
         + ' AND A.UPAGOID = B.UPAGOID AND A.UPROID = B.UPROID AND A.ASOTIPID = C.ASOTIPID';
      DM1.cdsAsociado.Close;
      DM1.cdsAsociado.DataRequest(xSql);
      DM1.cdsAsociado.Open;
      If DM1.cdsAsociado.RecordCount = 0 Then
         Log('No existe el asociado numero : ' + DM1.StrSpace(vleDNI.Values[vleDNI.Keys[vleDNI.Row]], 10) + '    con DNI: ' + vleDNI.Keys[vleDNI.Row], vArchivoXLS)
      Else
      Begin
         nDni:= strtoint( vleDNI.Keys[vleDNI.Row]);
         vCadError := crearReporte(nDni);
         If Not (trim(vCadError) = '') Then (* order *)
            Log('No se pudo crear el reporte para el asociado numero : ' + DM1.StrSpace(vleDNI.Values[vleDNI.Keys[vleDNI.Row]], 10) + '    con DNI: ' + vleDNI.Keys[vleDNI.Row] + ' ( ' + vCadError + ' )', vArchivoXLS);
      End;
      vleDNI.DeleteRow(vleDNI.Row)
   End;
   Screen.Cursor := crDefault;
   showmessage('Termino el Proceso');
   btnPnlExitClick(self);
End;
//Final HPC_201504_ASO

//Inicio HPC_201504_ASO
function TfGestionCartera.crearReporte(ICont: integer): String;
Var
   xSql: String;
   frm: TFrmGeneraCtaIndividualPDF;
   msg: String;
Begin
   crearReporte := '';
   Try
      If DM1.cdsAsociado.FieldByName('ASOTIPID').AsString <> 'DO' Then
      Begin
         crearReporte := 'Asociado cuenta con FLAG de : ' + DM1.cdsAsociado.FieldByName('ASOTIPID').AsString;
         Exit;
      End;
      If DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString = '' Then
      Begin
         crearReporte := 'Asociado no cuenta con resolución de nombramiento';
         Exit;
      End;
      Try
         frm := TFrmGeneraCtaIndividualPDF.create(Self);
         msg := frm.generarData();
         If msg = '' Then
            frm.generarReporte(ICont)
         else
             crearReporte := msg;
      Finally
         frm := Nil;

      End;
   Except
      If (msg = '') Then
         crearReporte := 'Error Desconocido'
      Else
         crearReporte := msg;
   End;
End;
//Final HPC_201504_ASO

//Inicio HPC_201504_ASO
procedure TfGestionCartera.log(Mensaje, IArchivoPadre: String);
Var
   F: TextFile;
   Filename: String;
   Mutex: THandle;
   SearchRec: TSearchRec;
   INombreArchivo: String;
Begin
   If IArchivoPadre = '' Then
      INombreArchivo := ParamStr(0)
   Else
      INombreArchivo := IArchivoPadre;
  // Insertamos la fecha y la hora
   Mensaje := FormatDateTime('[ddd dd mmm, hh:nn] ', Now) + Mensaje;
  // El nombre del archivo es igual al del ejecutable, pero con la extension .log
   Filename := ChangeFileExt(INombreArchivo, '.log');
  // Creamos un mutex, usando como identificador unico la ruta completa del ejecutable
   Mutex := CreateMutex(Nil, TRUE,
      PChar(StringReplace(INombreArchivo, '\', '/', [rfReplaceAll])));
   If Mutex <> 0 Then
   Begin
    // Esperamos nuestro turno para escribir
      WaitForSingleObject(Mutex, INFINITE);
      Try
      // Comprobamos el tamaño del archivo
         If FindFirst(Filename, faAnyFile, SearchRec) = 0 Then
         Begin
        // Si es mayor de un mega lo copiamos a (nombre).log.1
            If SearchRec.Size > (1024 * 1024) Then
               MoveFileEx(PChar(Filename), PChar(Filename + '.1'),
                  MOVEFILE_REPLACE_EXISTING);
            FindClose(SearchRec);
         End;
         Try
            AssignFile(F, Filename);
{$I-}
            Append(F);
            If IOResult <> 0 Then
               Rewrite(F);
{$I+}
            If IOResult = 0 Then
            Begin
          // Escribimos el mensaje
               Writeln(F, Mensaje);
               CloseFile(F);
            End;
         Except
        //
         End;
      Finally
         ReleaseMutex(Mutex);
         CloseHandle(Mutex);
      End;
   End;
  END;
//Final HPC_201504_ASO
end.
