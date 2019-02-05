// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO001.pas
// Formulario              :  FPrincipal
// Fecha de Creación       :  15/12/1993
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Menú Principal del Módulo de Asociados

// Actualizaciones:
// HPP_201003_ASO     ASO318,     Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// HPP_201006_ASO     ASO968,     Memorándum 024-2010-DM-EPS - SAR2010-0053 - DAD-IR-2010-0005
// HPP_201007_ASO     se copia de Previsión a Asociados - Cheques de gerencia de beneficios
// HPP_201008_ASO     spdBenCheGer se modifica la verificacion del grupo de Previsión al grupo de Asociados.
// HPP_201009_ASO     PRE272,
// HPP_201010_ASO     - retiro de controles en Menu Principal, se pasan los controles a la misma forma
// HPP_201105_ASO
// HPC_201107_ASO     ASO510      17/06/2011 Reporte de Control de Cartas con autorización de Descuento ASO510.pas
// HPC_201108_ASO     ASO515      16/06/2011 Reporte de Autorizaciones por Segunda Vez
// Pasa de HPC_201108_ASO a HPP_201106_ASO: Por Supervisor de Calidad, dentro del ciclo del pase
// HPC_201109_ASO     ASO520      16/06/2011 Reporte de Docentes con Créditos Vigentes
// Pasa de HPC_201109_ASO a HPP_201107_ASO: Por Supervisor de Calidad, dentro del ciclo del pase
// HPC_201119_ASO     Reporte de Benef x Dpto UGEL, Res.Nomb por Reingreso
// Pasa de HPC_201119_ASO a HPP_201109_ASO: Por Supervisor de Calidad, dentro del ciclo del pase
// HPC_201110_ASO     ASO200,ASO211   22/06/2011 Reingreso de Cesantes
// HPC_201120_ASO     15/12/2011 Se agrega la ventana que permite generar e imprimir los números de serie de los sobres con clave
// HPP_201110_ASO     : Se realiza el pase a partir del doc. HPC_201120_ASO
// HPC_201121_ASO     Se cambia captión del Menu Principal
// DPP_201201_ASO     : Se realiza el pase a partir del doc. HPC_201121_ASO
// DPP_201202_ASO     : Se realiza el pase de acuerdo al HPC_201203_ASO
// DPP_201208_ASO     : 20/06/2012 JDCRUZ Creación del formulario FAprobarEstadoFallecido.
// HPC_201202_ASO     : Se crea el formulario de mantenimiento de Ugel/Región por Planilla
// DPP_201209_ASO     : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201304_ASO     : Se agrega llamada a Cambiar Datos Nomb. Aso. con Exped.
// SPP_201305_ASO     : Se realiza el pase a producción a partir del HPC_201304_ASO
// HPC_201306_ASO     : Se agrega control de autorizacion a desvalidacion de datos DNI/Reniec
// SPP_201307_ASO     : Se realiza el pase a producción a partir del HPC_201306_ASO
// HPC_201307_ASO     : Se agrega la opción de desautorizar nuevos asociados recien autorizados
// SPP_201308_ASO     : Se realiza el pase a plataforma a partir del HPC_201307_ASO
// HPC_201310_ASO     : 05/07/2013 Se cambio la imagen en la propiedad "Glyph" del botón "sbAsoDesautoriza"
// SPP_201311_ASO     : Se realiza el pase a producción a partir del HPC_201310_ASO
// HPC_201312_ASO     : 12/11/2013 Se agregó dos nuevas opciones: "Actualización masiva ONP" y "Reporte de Nuevos Asociados"
// SPP_201313_ASO     : Se realiza el pase a producción a partir del HPC_201312_ASO
// HPC_201315_ASO     : Autorización de descuentos ONP / Exportar Docentes por Edad y Sexo.
// SPP_201401_ASO     : Se realiza el pase a producción a partir del HPC_201315_ASO
// SPP_201402_ASO     : 03/02/2014 - Cambio a DBExpress y Socket
// SPP_201402_ASO     : Se realiza el pase a producción a partir del HPC_201401_ASO
// HPC_201403_ASO     : Se agrego nuevos botones de acceso para el menu principal.
// HPC_201404_ASO     : Se agrego nuevo boton para le menu princial.
// SPP_201405_ASO     : Se realiza el pase a producción a partir del HPC_201404_ASO
// HPC_201407_ASO     : Se Centra formularios de Gestion de Cartera.
// SPP_201406_ASO     : Se realiza el pase a producción a partir del HPC_201407_ASO.
// HPC_201414_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote".
// SPP_201412_ASO     : Se realiza el pase a producción a partir del HPC_201414_ASO.
// HPC_201501_ASO     : Se agrego nuevo boton para opcion "Mantenimiento de Contactabilidad".
// HPC_201503_ASO     : Se le da acceso a N4 a las opciones de Hoja de Ruta
// HPC_201504_ASO     : Adiciona opcion de Reporte de Avance
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES
// HPC_201601_ASO : AMPLIAR ALCANCE DE LIQUIDACIONES ANTIGUAS
// HPC_201607_ASO : Se añade sub menu de mantenimiento de fecha de recepción CADAPS
// HPC_201702_ASO : Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
// HPC_201705_ASO : Se añaden reportes "autorización de descuento" y "declaración de asociados".
// HPC_201707_ASO : Se añaden unidades al sistema
// HPC_201710_ASO  : Implementación de la opción de generación de clave Web
// HPC_201713_ASO : Nuevo reporte de obsequios para el asociado
// HPC_201801_ASO : Jerarquía del módulo del Control de Ticket
// HPC_201806_ASO : Se controla que solo acceda al sistema los usuarios del grupo de ASOCIADOS.
// ASO_201808_HPC : Cambio de Versión
unit ASO001;

interface

uses
// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
  Windows, Messages, SysUtils, Classes, fcLabel, StdCtrls, ControlGridDisp,
  Controls, ExtCtrls, Buttons, FileCtrl, ComCtrls, ToolWin, Forms, DB, Mant,
  dialogs, ppCtrls, Wwdbigrd, Msgdlgs,  {ACC005, ACC002, ACC003,} Wwintl, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,wwDBGrid,
  Graphics, AppEvnts, Grids, DBGrids, wwdbdatetimepicker, wwdblook, fcButton,
  fcImgBtn, fcShapeBtn, ppDB, ppDBPipe, ppDBBDE, Spin, StrContainer,
  // Inicio: HPC_201705_ASO
  // Se añaden unidades de los reportes creados
  // variants, ppEndUsr, jpeg, IniFiles, Registry;
  variants, ppEndUsr, jpeg, IniFiles, Registry, ppParameter, ppModule,
  daDataModule, ppStrtch, ppMemo, ppSubRpt, ppRichTx;
  // Fin: HPC_201705_ASO
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket

type
  TFPrincipal = class(TForm)
    clbPrincipal: TCoolBar;
    tlbPrincipal: TToolBar;
    Z1sbReportes: TSpeedButton;
    Z1sbSalida: TSpeedButton;
    Z1sbMaestros: TSpeedButton;
    cgdPrincipal: TControlGridDisp;
    pnlReferencias: TPanel;
    Z1sbReferencias: TSpeedButton;
    pnlMaestros: TPanel;
    pnlReportes: TPanel;
    fclCxP: TfcLabel;
    Z1sbListaCred: TSpeedButton;
    Z1sbParametros: TSpeedButton;
    Z1sbCamPassw: TSpeedButton;
// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
    //fcLabel1: TfcLabel;
    SpdAuditoria: TSpeedButton;
    SpdBActMas: TSpeedButton;
    //fcLabel3: TfcLabel;
// Fin SPP_201402_ASO - Cambio a DBExpress y Socket
    Image1: TImage;
    StatusBar1: TStatusBar;
    Timer2: TTimer;
    spdControl: TSpeedButton;
    Z1sbReglas: TSpeedButton;
    SpdLogUsuario: TSpeedButton;
    SpdCtasPers: TSpeedButton;
    SpdAsoBen: TSpeedButton;
    spdUnifica: TSpeedButton;
    spbRepDet: TSpeedButton;
    spbRepRes: TSpeedButton;
    spdActualPro: TSpeedButton;
    spdNoIdet: TSpeedButton;
    spdCtrReg: TSpeedButton;
    spdManOfDes: TSpeedButton;
    spdDesactValida: TSpeedButton;
    spdpriautdes: TSpeedButton;
    spdPenAut: TSpeedButton;
    spdactaso: TSpeedButton;
    pnlrepautdes: TPanel;
    spdautdesapo: TSpeedButton;
    sbAutxModOrig: TSpeedButton;
    sbAsoAutoriza: TSpeedButton;
    lblVersion: TLabel;
    Label1: TLabel;
    spdNueAso: TSpeedButton;
    spbMaeSinCartaApo: TSpeedButton;
    spdpriautsdes: TSpeedButton;
    sbSolicitudCli: TSpeedButton;
    sbManCenEdu: TSpeedButton;
    sbCamTipAso: TBitBtn;
    spdDocCon: TSpeedButton;
    btnEstTomaFotos: TSpeedButton;
    pnlTomaFotos: TPanel;
    btnRepFotosMensual: TSpeedButton;
    btnRepFotosDpto: TSpeedButton;
    spdasicueint: TSpeedButton;

    spReporteFallecidos: TSpeedButton;
    spdBenCheGer: TSpeedButton;
    spdCueInd: TSpeedButton;

    spbRepCtrlCadap: TSpeedButton;

    spdAutDctoSegunda: TSpeedButton;



    spdDocenConCredVig: TSpeedButton;


    sbBenefxDptoUgelTipo: TSpeedButton;
    spdCambiarResNomParaReliq: TBitBtn;

    spdReingresoCesantes: TBitBtn;
    spdGeneracionSobres: TBitBtn;
    spdAsignacionClaveWeb: TBitBtn;
    btnConfirmarEstadoFallecido: TBitBtn;

 // Inicio: DPP_201209_ASO
    spdPadronGeneral: TSpeedButton;
    spdUgelRegionPlanilla: TSpeedButton;
// Inicio: SPP_201305_ASO
    spdCambiarDatosNomExpediente: TBitBtn;
// Inicio: SPP_201308_ASO
    sbAsoDesautoriza: TSpeedButton;
//Inicio: SPP_201313_ASO
    sbONP: TSpeedButton;
    spRptNuevosAsociados: TSpeedButton;
// Inicio: SPP_201401_ASO
    spdAutDesONP: TSpeedButton;
    spdAsoEdadSexo: TSpeedButton;
//Inicio: SPP_201402_ASO
    Label2: TLabel;
    Label3: TLabel;
    //--Inicio:HPC_201403_ASO--//
    spdAsignaCartera: TSpeedButton;
    spdGestionCartera: TSpeedButton;
    spdReporteCartera: TSpeedButton;
    spdReferencias: TSpeedButton;
    //--Fin:HPC_201403_ASO--//
//Fin: SPP_201402_ASO
// Fin: SPP_201401_ASO
//Fin: SPP_201313_ASO
// Fin: SPP_201308_ASO
// Fin: SPP_201305_ASO
 // Fin: DPP_201209_ASO
    //--Inicio:SPP_201405_ASO--//
    spdActualizacionMasiva: TSpeedButton;
    //--fin:SPP_201405_ASO--//
    // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
    sbCtaIndLote: TSpeedButton;
    pnlReportes2: TPanel;
    Z1sbReportes2: TSpeedButton;
//Inicio HPC_201504_ASO
    spdAvanceHojaRuta: TSpeedButton;
    // Inicio: HPC_201607_ASO
    // Se añade sub menu de mantenimiento de fecha de recepción CADAPS
    SpdCarAutDes: TSpeedButton;
    // Inicio: HPC_201705_ASO
    // Se inicializa variables de los reportes
    pprPlaAutDesUni: TppReport;
    ppHeaderBand12: TppHeaderBand;
    ppShape289: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape263: TppShape;
    ppMemo26: TppMemo;
    ppLabel316: TppLabel;
    pplApeNomDNI: TppLabel;
    ppLabel310: TppLabel;
    ppLabel312: TppLabel;
    ppLabel311: TppLabel;
    pplconlabnom1: TppLabel;
    pplconlabcon1: TppLabel;
    pplconlabpen1: TppLabel;
    ppLabel317: TppLabel;
    ppLabel313: TppLabel;
    ppLabel314: TppLabel;
    ppLabel315: TppLabel;
    pplUGEL: TppLabel;
    ppLabel318: TppLabel;
    ppLabel319: TppLabel;
    ppLabel320: TppLabel;
    ppLabel321: TppLabel;
    ppShape264: TppShape;
    ppLabel322: TppLabel;
    ppShape265: TppShape;
    ppLabel323: TppLabel;
    ppShape266: TppShape;
    ppShape267: TppShape;
    ppLabel324: TppLabel;
    ppLabel325: TppLabel;
    ppLabel326: TppLabel;
    ppShape268: TppShape;
    ppShape269: TppShape;
    ppLabel328: TppLabel;
    ppLabel329: TppLabel;
    ppShape270: TppShape;
    ppLabel327: TppLabel;
    ppShape271: TppShape;
    ppLabel331: TppLabel;
    ppLabel330: TppLabel;
    ppShape272: TppShape;
    ppLabel332: TppLabel;
    ppShape273: TppShape;
    ppShape274: TppShape;
    ppShape275: TppShape;
    ppShape276: TppShape;
    ppShape277: TppShape;
    ppShape278: TppShape;
    ppShape262: TppShape;
    ppShape279: TppShape;
    ppShape280: TppShape;
    ppShape281: TppShape;
    ppLabel333: TppLabel;
    ppLabel334: TppLabel;
    ppLabel335: TppLabel;
    ppLabel336: TppLabel;
    ppLabel337: TppLabel;
    ppShape282: TppShape;
    ppLabel338: TppLabel;
    ppLabel339: TppLabel;
    ppLabel340: TppLabel;
    ppLabel341: TppLabel;
    ppLabel342: TppLabel;
    ppLabel343: TppLabel;
    ppLabel344: TppLabel;
    ppLabel346: TppLabel;
    ppLabel347: TppLabel;
    ppLabel348: TppLabel;
    ppShape283: TppShape;
    ppLabel349: TppLabel;
    ppShape284: TppShape;
    pplApomen: TppLabel;
    ppLabel351: TppLabel;
    ppLabel352: TppLabel;
    ppLabel355: TppLabel;
    ppShape285: TppShape;
    ppLabel358: TppLabel;
    ppShape286: TppShape;
    ppLabel359: TppLabel;
    ppShape287: TppShape;
    ppLabel360: TppLabel;
    ppShape288: TppShape;
    ppMemo21: TppMemo;
    ppShape290: TppShape;
    ppLabel361: TppLabel;
    pplLugyFec: TppLabel;
    ppLine11: TppLine;
    ppLabel363: TppLabel;
    ppLine12: TppLine;
    ppLabel366: TppLabel;
    ppLine13: TppLine;
    ppLabel367: TppLabel;
    ppMemo22: TppMemo;
    pplasoapenomdni: TppLabel;
    pplasodni: TppLabel;
    pplMesCAPADS: TppLabel;
    pplAnoCADAPS: TppLabel;
    pplconlabnom: TppLabel;
    pplconlabcon: TppLabel;
    pplconlabpen: TppLabel;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel356: TppLabel;
    ppLabel357: TppLabel;
    pplMesIniCrono: TppLabel;
    pplAnoIniCrono: TppLabel;
    pplMesFinCrono: TppLabel;
    pplAnoFinCrono: TppLabel;
    pplDesMen: TppLabel;
    pplTotDes: TppLabel;
    pplNumcuo: TppLabel;
    pplApoObli: TppLabel;
    ppLabel350: TppLabel;
    ppllugarfecha: TppLabel;
    ppLabel11: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppFooterBand12: TppFooterBand;
    daDataModule1: TdaDataModule;
    ppParameterList7: TppParameterList;
    pprDecAso: TppReport;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppRichText2: TppRichText;
    ppLabel1: TppLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppRichText1: TppRichText;
    ppShape2: TppShape;
    ppLabel9: TppLabel;
    ppLine1: TppLine;
    ppLabel10: TppLabel;
    ppLine2: TppLine;
    ppldia_dec: TppLabel;
    pplmes_dec: TppLabel;
    pplano_dec: TppLabel;
    pplasoapenom_dec: TppLabel;
    pplasodni_dec: TppLabel;
    pplanonom_dec: TppLabel;
    pplupronom_dec: TppLabel;
    pplusenom_dec: TppLabel;
    pplnumdec: TppLabel;
    ppldirdom_dec: TppLabel;
    pplubigeodom_dec: TppLabel;
    ppldesrefdom_dec: TppLabel;
    pplasotelf1_dec: TppLabel;
    pplasotelf2_dec: TppLabel;
    pplasoemail_dec: TppLabel;
    pplasocenedu_dec: TppLabel;
    pplasofresnom_dec: TppLabel;
    pplasoresnum_dec: TppLabel;
    ppLine3: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppRichText3: TppRichText;
    // Fin: HPC_201705_ASO
    spdConsultaExpedienteBen: TSpeedButton;
    spdContactabilidad: TSpeedButton;
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
    spdResumenGeneracionWeb: TSpeedButton;
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
    //Final HPC_201702_ASO
    // Fin: HPC_201607_ASO
    //Final HPC_201504_ASO
// Fin    HPC_201501_ASO     : Se agrego nuevo boton para opcion "Mantenimiento de Contactabilidad".
    //Inicio HPC_201713_ASO : Nuevo reporte de obsequios para el asociado
    spdListadoEntregaPanetones: TSpeedButton;
//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
    pnlVentanilla: TPanel;
    lblNumVentanilla: TLabel;
    btnIniAtencion: TButton;
    btnFinAtencion: TButton;
    btnAsigna: TButton;
    pnlAsignacion: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    estNumVen: TEdit;
    dblPantalla: TwwDBLookupCombo;
    btnOK: TButton;
    btnCancel: TButton;
    SEMAFORO: TShape;
    btnLimpiar: TButton;
    pnlDesasignar: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    edtUsuario: TEdit;
    btnDesasignarOK: TButton;
    btnDesasignarCancel: TButton;
    edtPassword: TEdit;
//Fin HPC_201801_ASO
    //Fin HPC_201713_ASO
    procedure bbtnTachoDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure lbOrdenDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure wwDBGrid2DragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure wwDBGrid3DragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure Z1sbRegistroGarantesClick(Sender: TObject);
    procedure Z1sbReglasMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure Z1sbMovimientosMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure Z1sbReportesMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure dbgMovCxPMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure SacaMenu(Sender: TObject);
    procedure dbgOPagoMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure lbFiltroOPDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure lbOrdenOPDragOver(Sender, Source: TObject; X, Y: Integer;State: TDragState; var Accept: Boolean);
    procedure Z1sbMenuRegistro5Click(Sender: TObject);
    procedure Z1sbMaestrosMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure Z1sbSalidaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Z1sbMenuRegistro5MouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
    procedure Z1sbActualizCtaIndClick(Sender: TObject);
    procedure Z1sbSalidaMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure Z1sbIngresoLoteClick(Sender: TObject);
    procedure Z1sbProcesosMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure FormActivate(Sender: TObject);
    Procedure MueveMouse(xObjeto: TObject; Shift: TShiftState; X,Y: Integer);
    procedure Z1sbCamPasswClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Z1sbCajaClick(Sender: TObject);
    procedure dblcUProcesoNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure Z1sbReglasClick(Sender: TObject);
    procedure Z1sbMaestrosClick(Sender: TObject);
    procedure Z1sbMovimientosClick(Sender: TObject);
    procedure Z1sbProcesosClick(Sender: TObject);
    procedure Z1sbReportesClick(Sender: TObject);
    procedure dbdtpFecActCalcBoldDay(Sender: TObject; ADate: TDate; Month,
      Day, Year: Integer; var Accept: Boolean);
    procedure dbdtpFecActChange(Sender: TObject);
    procedure dblcOfcDesNotInList(Sender: TObject; LookupTable: TDataSet;
      NewValue: String; var Accept: Boolean);
    procedure SpdBActMasClick(Sender: TObject);
    procedure SpdBActMas2Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure spdControlClick(Sender: TObject);
    procedure SpdAuditoriaClick(Sender: TObject);
    procedure SpdLogUsuarioClick(Sender: TObject);
    procedure SpdCtasPersClick(Sender: TObject);
    procedure SpdAsoBenClick(Sender: TObject);
    procedure spdUnificaClick(Sender: TObject);
    procedure spbRepDetClick(Sender: TObject);
    procedure spbRepResClick(Sender: TObject);
    procedure spdActualProClick(Sender: TObject);
    procedure spdNoIdetClick(Sender: TObject);
    procedure spdCtrRegClick(Sender: TObject);
    procedure spdManOfDesClick(Sender: TObject);
    procedure spdDesactValidaClick(Sender: TObject);
    procedure spdPenAutClick(Sender: TObject);
    procedure spdactasoClick(Sender: TObject);
    procedure spdautdesapoClick(Sender: TObject);

    procedure spdpriautdesMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure spdDesactValidaMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure spdPenAutMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbAutxModOrigClick(Sender: TObject);
    procedure sbAsoAutorizaClick(Sender: TObject);
    procedure spdNueAsoClick(Sender: TObject);
    procedure pnlReportesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure spbMaeSinCartaApoClick(Sender: TObject);
    procedure spdpriautsdesClick(Sender: TObject);
    procedure sbNuevoAsociadoClick(Sender: TObject);

    Procedure sbManCenEduClick(Sender: TObject);
    Procedure sbCamTipAsoClick(Sender: TObject);
    procedure spdDocConClick(Sender: TObject);

    procedure btnRepFotosDptoClick(Sender: TObject);
    procedure btnRepFotosMensualClick(Sender: TObject);
    procedure btnEstTomaFotosMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure spReporteFallecidosClick(Sender: TObject);

    procedure spdasicueintClick(Sender: TObject);
    procedure spdBenCheGerClick(Sender: TObject);
    procedure spdCueIndClick(Sender: TObject);


    procedure spbRepCtrlCadapClick(Sender: TObject);

    procedure spdAutDctoSegundaClick(Sender: TObject);

    procedure spdDocenConCredVigClick(Sender: TObject);

    procedure sbBenefxDptoUgelTipoClick(Sender: TObject);
    procedure spdCambiarResNomParaReliqClick(Sender: TObject);

    procedure spdReingresoCesantesClick(Sender: TObject);
    procedure spdGeneracionSobresClick(Sender: TObject);
    procedure spdAsignacionClaveWebClick(Sender: TObject);
    procedure btnConfirmarEstadoFallecidoClick(Sender: TObject);

 // Inicio: DPP_201209_ASO
    procedure spdPadronGeneralClick(Sender: TObject);
    procedure spdUgelRegionPlanillaClick(Sender: TObject);
// Inicio: SPP_201305_ASO
    procedure spdCambiarDatosNomExpedienteClick(Sender: TObject);
// Inicio: SPP_201308_ASO
    procedure sbAsoDesautorizaClick(Sender: TObject);
//Inicio: SPP_201313_ASO
    procedure sbONPClick(Sender: TObject);
    procedure spRptNuevosAsociadosClick(Sender: TObject);
// Inicio: SPP_201401_ASO
    procedure spdAutDesONPClick(Sender: TObject);
    procedure spdAsoEdadSexoClick(Sender: TObject);
//--Inicio:HPC_201403_ASO--//
    procedure spdAsignaCarteraClick(Sender: TObject);
    procedure spdGestionCarteraClick(Sender: TObject);
    procedure spdReporteCarteraClick(Sender: TObject);
    procedure spdReferenciasClick(Sender: TObject);
//--Fin:HPC_201403_ASO--//
// Fin: SPP_201401_ASO
//Fin: SPP_201313_ASO
// Fin: SPP_201308_ASO
// Fin: SPP_201305_ASO
 // Fin: DPP_201209_ASO
   //--Inicio:SPP_201405_ASO--//
    procedure spdActualizacionMasivaClick(Sender: TObject);
    //--Fin:SPP_201405_ASO--//
    // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
    procedure sbCtaIndLoteClick(Sender: TObject);
    procedure Z1sbReportes2Click(Sender: TObject);
    procedure Z1sbReportes2MouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    // Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
    // Inicio HPC_201501_ASO     : Se agrego nuevo boton para opcion "Mantenimiento de Contactabilidad".
    procedure spdContactabilidadClick(Sender: TObject);
//Inicio HPC_201504_ASO
    procedure spdAvanceHojaRutaClick(Sender: TObject);
    // Inicio: HPC_201607_ASO
    // Se añade sub menu de mantenimiento de fecha de recepción CADAPS
    procedure SpdCarAutDesClick(Sender: TObject);
    //Inicio HPC_201702_ASO
    //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
    procedure spdConsultaExpedienteBenClick(Sender: TObject);
    //Final HPC_201702_ASO
    // Fin: HPC_201607_ASO
//Final HPC_201504_ASO
    // Fin    HPC_201501_ASO     : Se agrego nuevo boton para opcion "Mantenimiento de Contactabilidad".

    // Inicio: HPC_201705_ASO
    // Se declaran procedimientos para llenar información en los reportes creados
    Procedure LlenaDatosPlaUniPag(xasoid:String);
    Procedure LlenaDatosPlaDecAso(xasoid:String);
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
    procedure spdResumenGeneracionWebClick(Sender: TObject);
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
    // Fin: HPC_201705_ASO    
// Inicio HPC_201713_ASO : Nuevo reporte de obsequio para el asociado
    procedure spdListadoEntregaPanetonesClick(Sender: TObject);
//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
    procedure btnIniAtencionClick(Sender: TObject);
    procedure btnFinAtencionClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure estNumVenExit(Sender: TObject);
    procedure btnAsignaClick(Sender: TObject);
    procedure btnLimpiarClick(Sender: TObject);
    procedure btnDesasignarCancelClick(Sender: TObject);
    procedure btnDesasignarOKClick(Sender: TObject);
    procedure estNumVenKeyPress(Sender: TObject; var Key: Char);
//Fin HPC_201801_ASO
// Fin HPC_201713_ASO

  private
    { Private declarations }
    xHallo : String;
//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
    sNumVenta,sPantalla : String;
//Fin HPC_201801_ASO
    wRutaFTPPri : WideString;
    xFecSis:String;
    function  VerificaVersion: Boolean;
    procedure Verpercadpas;
    procedure BloquearMenuPrincipal;

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
    procedure bloqueamenu;
    procedure Desbloqueamenu;
//Fin HPC_201801_ASO
  public
     wApruebaid : String; //** Para Cargar el nombre quien aprueba el credito en caso de
                          //** tener algun requisito que no cumpla
     MtxRepExt,Mtx,MtxTCredito,MtxDev,MtxOficioP,Mtx1,mtxSolicitud,mtxContab : TMant;
     MtxParam: TMant;
     pnltool2,pnltool3 : TPanel;
     procedure ListaComponentes( xForm : TForm);
     procedure CreaOpciones;
     procedure CreaAccesos;
     procedure AppMessage (var Msg: TMsg; var Handled : Boolean );

  end;

var
  wParamid : String;
  xFechasys : TDate;
  xDiaSys,xAnoSys,xMesSys : Word;
  FPrincipal: TFPrincipal;
  xSQL,sSQL:string;
  plPer,pgPer : TPanel;
  MtxAsocia,MtxCierre    : TMant;

implementation

uses ASODM,   ASO901, ASO939,  ASO942, ASO945, ASO946, ASO902, APOD09, ASO949,
     ASO950,  ASO951, ASO953,  ASO954, ASO955, ASO960, ASO961, ASO962, ASO963,
     ASO160,  ASO904, ASO901B, ASO166, ASO167, ASO168, ASO260L,
     ASO260M, ASO905, ASO180,
     ASO966, ASO967, ASO317A1, ASO317B,
     ASO318,       // HPP_201003_ASO
     ASO968,       // HPP_201006_ASO
     PRE272,       // HPP_201009_ASO
     ASO510,       // HPC_201107_ASO
     ASO515,       // HPP_201106_ASO
     ASO520,       // HPP_201107_ASO
     PRE290,       // HPP_201109_ASO
     ASO212,       // HPP_201109_ASO
     ASO211,       // HPP_201110_ASO (Ex-HPC201110_ASO)
     ASO213,       // HPP_201110_ASO
     ASO214,       // HPP_201110_ASO
     ASO270,
     ASO216, ASO227,
     ASO150, ASO980,
// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
// Inicio SPP_201405_ASO
     ASO215, ASO901C, ASO237, ASO301, ASO022, ASO201, ASO202, ASO302,
    // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
  ASO101, ASO204,
//Inicio HPC_201504_ASO
//ASO303;
  // INICIO HPC_201601_ASO
  // DECLARA DEPENDENCIA DE FORMULARIOS
  // Inicio: HPC_201607_ASO
  // Se registra fuente de recepción de mantenimiento CADAPS
  // ASO303, ASO202B, ASO181;
  //Inicio HPC_201702_ASO
  //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
  // Inicio: HPC_201707_ASO
  // Se añaden nuevas unidades al sistema 
  // ASO303, ASO202B, ASO181, ASO262, PRE232C;
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
  //Inicio HPC_201713_ASO: Nuevo reporte de obsequio para el asociado
  //Inicio HPC_201801_ASO
  //Jerarquía del módulo del Control de Ticket
  ASO202B, ASO181, ASO262, PRE232C, PRE295, PRE934, ASO981, ASO260O,WSAutenticacion;
  //Fin HPC_201801_ASO
  //Fin HPC_201713_ASO
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
  // Fin: HPC_201707_ASO
  //Final HPC_201702_ASO
  // Fin: HPC_201607_ASO
  // FIN HPC_201601_ASO  
//Final HPC_201504_ASO
    // Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
// Fin SPP_201405_ASO
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket

  {$R *.DFM}
                
procedure TFPrincipal.bbtnTachoDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=True;
end;

procedure TFPrincipal.lbOrdenDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=True;
end;

procedure TFPrincipal.wwDBGrid2DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=True;
end;

procedure TFPrincipal.wwDBGrid3DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=True;
end;

procedure TFPrincipal.Z1sbRegistroGarantesClick(Sender: TObject);
begin
  SacaMenu(sender);
end;

procedure TFPrincipal.Z1sbReglasMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlReferencias.Left      := TSpeedButton(Sender).Left+10;
  pnlReferencias.Top       := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
  pnlReferencias.Visible   := True;
  pnlMaestros.Visible      := False;
  pnlReportes.Visible      := False;
// Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion de Menu
  pnlReportes2.Visible     := False;
// Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion de Menu
end;

procedure TFPrincipal.Z1sbMaestrosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlMaestros.Left         := TSpeedButton(Sender).Left+10;
  pnlMaestros.Top          := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
  pnlReferencias.Visible   := False;
  pnlMaestros.Visible      := True;
  pnlReportes.Visible      := False;
  // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
  pnlReportes2.Visible     := False;
  // Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
End;

procedure TFPrincipal.Z1sbMovimientosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin


  pnlReferencias.Visible   := False;
  pnlMaestros.Visible      := False;
  pnlReportes.Visible      := False;
end;

procedure TFPrincipal.Z1sbReportesMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlReportes.Left         := TSpeedButton(Sender).Left+10;
  pnlReportes.Top          := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
  pnlReferencias.Visible   :=False;
  pnlMaestros.Visible      :=False;
  pnlReportes.Visible      :=True;
  // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
  pnlReportes2.Visible     :=False;
  // Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
end;

procedure TFPrincipal.dbgMovCxPMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SacaMenu(Sender);
end;

procedure TFPrincipal.SacaMenu(Sender: TObject);
begin
  clbPrincipal.Enabled   := True;
  pnlReferencias.Visible := False;
  pnlMaestros.Visible	 := False;
  pnlrepautdes.Visible   := False;
  pnlReportes.Visible	 := False;
  // Reporte toma de Fotos - realizado por DFERNANDEZ
  pnlTomaFotos.Visible   := False;
// Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
  pnlReportes2.Visible	 := False;
// Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
end;

procedure TFPrincipal.dbgOPagoMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  SacaMenu(Sender);
end;

procedure TFPrincipal.lbFiltroOPDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=True;
end;

procedure TFPrincipal.lbOrdenOPDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept:=True;
end;

procedure TFPrincipal.Z1sbMenuRegistro5Click(Sender: TObject);
begin
  SacaMenu(sender);
end;

procedure TFPrincipal.FormCreate(Sender: TObject);
//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
var
wSQL:String;
inifile : TIniFile;
//Fin HPC_201801_ASO
begin
  BloquearMenuPrincipal;
  DM1.BlqComponentes(Self);
  If (DM1.wAdmin = 'G') OR
     (DM1.wAdmin = 'M') Then
  begin
    DM1.wGrupoTmp := '';
    Application.OnMessage:=AppMessage;
    ListaComponentes(Self);
  end;

  wSQL:='SELECT USERID,TABLANOMBRE FROM TGE009 WHERE USERID='''+DM1.wUsuario+'''';
  DM1.cdsUsuarioAct.Close;
  DM1.cdsUsuarioAct.DataRequest( wSQL );
  DM1.cdsUsuarioAct.Open;
  DM1.FiltraTablaRemoto( DM1.cdsEstado, 'CRE113', 'ESTID', '' );
  DM1.cdsEstado.IndexFieldNames:='FLGTIPO';

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
  DM1.xOfiDes := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'OFDESID');
  xSQL:='SELECT OFDESID,USERID,PANTALLA,VENTANILLA,OPERACION,FECREG FROM TICKET_ASG_VEN_MOD_USU '
       +' WHERE OFDESID='+QuotedStr(DM1.xOfiDes)+ ' AND USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND OPERACION='+QuotedStr(DM1.wModulo);
  DM1.cdsQry26.Close;
  DM1.cdsQry26.DataRequest(xSQL);
  DM1.cdsQry26.Open;
  If  DM1.cdsQry26.RecordCount>0 Then
  Begin
     sNumVenta := Trim(DM1.cdsQry26.FieldByname('VENTANILLA').AsString);
     sPantalla := Trim(DM1.cdsQry26.FieldByname('PANTALLA').AsString);
     btnFinAtencion.Enabled:=False;
     pnlVentanilla.Visible := true;
     pnlVentanilla.Width:=204;
     pnlVentanilla.Height:=135;
     lblNumVentanilla.Caption := 'De la Ventanilla '+sNumVenta+' -> '+sPantalla;
     bloqueamenu;
  End
  Else
  Begin
     pnlVentanilla.Visible := true;
     lblNumVentanilla.Caption := 'Sin Asignación de Ventanilla';
     pnlVentanilla.Width:=179;
     pnlVentanilla.Height:=62;
  End;
 //Fin HPC_201801_ASO
end;

procedure TFPrincipal.Z1sbSalidaClick(Sender: TObject);
begin
  Close;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.DCOM1.Connected:=False;
  Application.Terminate;
end;

procedure TFPrincipal.Z1sbMenuRegistro5MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlReportes.Visible := False;
end;


procedure TFPrincipal.Z1sbActualizCtaIndClick(Sender: TObject);
begin
  SacaMenu(sender);
end;

procedure TFPrincipal.Z1sbSalidaMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlReportes.Visible  := False;
end;

procedure TFPrincipal.FormMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  Sacamenu(self)
end;

procedure TFPrincipal.Z1sbIngresoLoteClick(Sender: TObject);
begin
  SacaMenu(sender);
end;

procedure TFPrincipal.Z1sbProcesosMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  pnlReferencias.Visible   :=False;
  pnlMaestros.Visible      :=False;
  pnlReportes.Visible      :=false;
end;

procedure TFPrincipal.AppMessage(var Msg: TMsg; var Handled: Boolean);
begin
   if Msg.message = WM_KEYDOWN then begin

      if ( Msg.wParam=VK_F5 ) then begin

         If (Copy(DM1.wObjetoNombr,1,2)='Z1') or
            (Copy(DM1.wObjetoNombr,1,2)='Z2') then begin
            CreaOpciones;
         end;
      end;

      if ( Msg.wParam=VK_F12 ) then begin
         CreaAccesos;
      end;
   end;
end;

procedure TFPrincipal.ListaComponentes( xForm : TForm);
var
  i : integer;
begin
   for i:=0 to xForm.ComponentCount-1 do begin

      if xForm.Components[i].ClassName = 'TPanel' then
         TPanel(xForm.components[i]).OnMouseMove := MueveMouse;
      // para botones
      if xForm.Components[i].ClassName = 'TButton' then
         TButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // para bitbuttons
      if xForm.Components[i].ClassName = 'TBitBtn' then
         TBitBtn(xForm.components[i]).OnMouseMove := MueveMouse;
      // para speedbuttons
      if xForm.Components[i].ClassName = 'TSpeedButton' then
         TSpeedButton(xForm.components[i]).OnMouseMove := MueveMouse;
      // Boton de Grid
      if xForm.Components[i].ClassName = 'TwwIButton' then
         TwwIButton(xForm.components[i]).OnMouseMove := MueveMouse;

      // para la forma
      xForm.onMouseMove := MueveMouse;
   end;
end;

procedure TFPrincipal.CreaOpciones;
begin
// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
{   IF FMantOpcion <> nil then Exit;

   FMantOpcion               :=TFMantOpcion.Create(Self);
   FMantOpcion.wcdsAcceso    :=DM1.cdsAcceso;
   FMantOpcion.wcdsGrupos    :=DM1.cdsGrupos;
   FMantOpcion.wcdsMGrupo    :=DM1.cdsMGrupo;
   FMantOpcion.wcdsUsuarios  :=DM1.cdsUsuarios;
   FMantOpcion.wcdsResultSet :=DM1.cdsResultSet;
//   FMantOpcion.wDCOM1        :=DM1.DCOM1;
   FMantOpcion.sGrupoTmp     :=DM1.wGrupoTmp;
   FMantOpcion.sObjetoDescr  :=DM1.wObjetoDescr;
   FMantOpcion.sObjetoForma  :=DM1.wObjetoForma;
   FMantOpcion.sObjetoNombr  :=DM1.wObjetoNombr;
   FMantOpcion.sModulo       :=DM1.wModulo;
   FMantOpcion.wFPrincipal   :=FPrincipal;

   With FMantOpcion Do
   Try
      If Length(DM1.wGrupoTmp)>0 then begin
         ShowModal;
      end;
   Finally
      Free;
   End;

   FMantOpcion:=nil;}
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket
end;

procedure TFPrincipal.CreaAccesos;
begin
// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
{   IF FMantAcceso<>nil then Exit;

   FMantAcceso:=TFMantAcceso.Create(Self);

   FMantAcceso.sSRV_D:=SRV_D;
//   FMantAcceso.wDCOM1       :=DM1.DCOM1;
   FMantAcceso.wcdsAcceso   :=DM1.cdsAcceso;
   FMantAcceso.wcdsGrupos   :=DM1.cdsGrupos;
   FMantAcceso.wcdsMGrupo   :=DM1.cdsMGrupo;
   FMantAcceso.wcdsUsuarios :=DM1.cdsUsuarios;
   FMantAcceso.wcdsResultSet:=DM1.cdsResultSet;
   FMantAcceso.wcdsUser     :=DM1.cdsUser;
   FMantAcceso.wFPrincipal  :=FPrincipal;
   FMantAcceso.sModulo      :=DM1.wModulo;

   With FMantAcceso Do
    Try
     ShowModal;
    Finally
     DM1.wGrupoTmp:=FMantAcceso.sGrupoTmp;
     Free;
    End;
   FMantAcceso:=nil;}
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket
end;

procedure TFPrincipal.FormActivate(Sender: TObject);
var
  // Inicio: HPC_201806_ASO
  // Se añade variable xSQL2
  // xFecha,xSql,xFtpx : String;
  xFecha,xSql,xFtpx, xSQL2 : String;
  // Fin: HPC_201806_ASO
  xRuta : String;
  IniFile : TIniFile;
begin

   // Inicio: HPC_201806_ASO
   // Se contola que la aplicación se ejecute solo de la carpeta C:\SOLExes\
   xRuta:=UpperCase(ExtractFilePath(Application.ExeName));
   If Trim(xRuta)<>'C:\SOLEXES\' Then
   Begin
      MessageDlg(' EL SISTEMA Debe Ejecutase Desde :  >>> C:\SOLExes\ <<<  VERIFIQUE LA RUTA !!!! ', mtError, [mbOk], 0);
      Application.Terminate;
      Exit;
   End;
   xSQL2:='Select SF_CONTROL_ACCESO('+QuotedStr(dm1.wUsuario)+','+QuotedStr(DM1.wModulo)+') Mensaje From dual ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL2);
   DM1.cdsQry1.Open;
   If copy(DM1.cdsQry1.FieldByName('Mensaje').AsString,1,3)='Err' Then
   Begin
      ShowMessage(DM1.cdsQry1.FieldByName('Mensaje').AsString);
      Application.Terminate;
      Exit;
   End;
   // Fin: HPC_201806_ASO

  xSql := 'SELECT SYSDATE FECHA FROM TGE901';
  dm1.cdsqry.close;
  dm1.cdsqry.DataRequest(xSql);
  dm1.cdsqry.open;
  xFecha    :=Copy(dm1.cdsQry.FieldByname('FECHA').AsString,1,10);
  xFechasys := StrToDate(xFecha);
  DecodeDate(xFechaSys,xAnoSys,xMesSys,xDiaSys);
//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
  If Not(VerificaVersion) Then Exit;
//Fin HPC_201801_ASO
  Verpercadpas;

  // Inicio: HPC_201806_ASO
  // Se retira linea de codigo que ya fue añadido en la función "SF_CONTROL_ACCESO"
  // xRuta:=UpperCase(ExtractFilePath(Application.ExeName));
  // If Trim(xRuta)<>'C:\SOLEXES\' Then
  // Begin
  //    MessageDlg(' EL SISTEMA Debe Ejecutase Desde :  >>> C:\SOLExes\ <<<  VERFIQUE LA RUTA !!!! ', mtError, [mbOk], 0);
  //    DM1.DCOM1.Connected:=False;
  //    Application.Terminate;
  // End;
  // If Length(Trim(DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','FECEXP')))>0 Then
  //    Begin
  //       If DM1.FechaSys>StrToDate(DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','FECEXP')) Then
  //          Begin
  //             MessageDlg('Sr(a) :   '+pChar(DM1.wUsuario)+' SU ACCESO AL SISTEMA A CADUCADO EL :     '+pChar(DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','FECEXP')), mtError, [mbOk], 0);
  //             Application.Terminate;
  //          End;
  //    End;
  // Fin: HPC_201806_ASO
  IniFile:=TIniFile.Create('C:\SOLExes\SOLConf.ini');

  Try
  DM1.AccesosUsuarios( DM1.wModulo, DM1.wUsuario, '1','' );
  Except
  End;
   lblVersion.Height         :=20;   lblVersion.Left:=16;  lblVersion.Top:=504;
   DM1.xOfiDes               :=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','OFDESID');
   Statusbar1.Panels[1].Text :='Usuario : '+ DM1.wUsuario+' -   '+Trim(DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM'));
   Statusbar1.Panels[2].Text :='Origen de Operaciones    :   '+ DM1.xOfiDes+' -  '+DM1.CrgDescrip('OFDESID='+QuotedStr(Trim(DM1.xOfiDes)),'APO110','OFDESNOM');
   xFecSis:=DateToStr(DM1.FechaSys);

end;

Procedure TFPrincipal.MueveMouse(xObjeto: TObject; Shift: TShiftState; X, Y: Integer);
var
  xComponente : String;
  xForma : TForm;
begin
   xForma      := Screen.ActiveForm;
   xComponente := xForma.Name;

   if xObjeto is TForm then
   else begin

      xComponente := xComponente+'.'+TControl(xObjeto).Name;

      DM1.wObjetoForma := xForma.Name;
      DM1.wObjetoNombr := TControl(xObjeto).Name;
      If Copy(DM1.wObjetoNombr,2,1)='2' then
         DM1.wObjetoDescr := DM1.wObjetoDesPr+' - '+TControl(xObjeto).Hint
      else begin
         DM1.wObjetoDescr := TControl(xObjeto).Hint;
      end;
   end;
end;


procedure TFPrincipal.Z1sbCamPasswClick(Sender: TObject);
var
   xSQL : String;
   xpassact, xpassnue:String;
   xdiasduracpass:Integer;
begin
   DM1.cdsUser.Close;
   DM1.cdsUser.DataRequest('SELECT USERID,USERNOM,PASSWORD,FECEXP,OFDESID,CTLFAC,FLGAUT,FECINI_PWD,FECFIN_PWD,DIASEXP_PWD,DIASDURAC_PWD,CTRL_IP FROM TGE006 WHERE USERID='''+DM1.wUsuario+'''');
   DM1.cdsUser.Open;

   xpassact       := DM1.cdsUser.FieldByName('PASSWORD').AsString;
   xdiasduracpass := DM1.cdsUser.FieldByName('DIASDURAC_PWD').AsInteger;

// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
   FCPassw := TFCPassw.Create(Self);
   FCPassw.dbeUsuario.Text := DM1.wUsuario;
   FCPassw.dbeNombre.Text  := DM1.cdsUser.FieldByname('USERNOM').AsString;
   FCPassw.dbeUsuario.Text    := DM1.wUsuario;
   FCPassw.sPassword       := DM1.cdsUser.FieldByname('PASSWORD').AsString;
   FCPassw.sModulo         := DM1.wModulo;
   FCPassw.wcdsUsuarios    := DM1.cdsUser;
   Try
      FCPassw.ShowModal;
   Finally
      FCPassw.Free;
   End;
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket

   xSQL := 'SELECT PASSWORD FROM TGE006 WHERE USERID = '+QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   xpassnue := DM1.cdsQry.FieldByName('PASSWORD').AsString;
   If xpassact <> xpassnue Then
   Begin
      xSql := 'UPDATE TGE006 '
             +'   SET FECINI_PWD = TO_DATE(SYSDATE), '
             +'       FECFIN_PWD = TO_DATE(SYSDATE)+'+IntToStr(xdiasduracpass)
             +' WHERE USERID     = '+QuotedStr(DM1.wUsuario);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      Application.Terminate;
   End;
end;

procedure TFPrincipal.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;


procedure TFPrincipal.Z1sbCajaClick(Sender: TObject);
begin
   If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='SIS') Then
   Else
      Begin
         If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)<>'CAJ')  Then
             Begin
               Exit;
             End;
      End;

end;

function TFPrincipal.VerificaVersion: Boolean;
var
   xSQL : String;
begin
   Result:=False;
   xSQL:='SELECT CODIGO,DESCRIP,VERSION,USUARIO,FLAGSTD,PREFIJO,MODDIFC,VERSIG '
       + '  FROM TGE600 WHERE CODIGO='''+dm1.wModulo+'''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest( xSQL );
   DM1.cdsQry.Open;
   if lblVersion.caption=DM1.cdsQry.FieldByName('VERSION').AsString then
      Result:=True
   else
    begin
//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
      Result:=False;
//Fin HPC_201801_ASO
      ShowMessage( 'Para poder continuar, es necesario que actualice la Versión');
      DM1.DCOM1.Connected:=False;
      Application.Terminate;
    end
end;

procedure TFPrincipal.dblcUProcesoNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;


procedure TFPrincipal.Z1sbReglasClick(Sender: TObject);
begin
  pnlReferencias.Left      := TSpeedButton(Sender).Left+10;
  pnlReferencias.Top       := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
  pnlReferencias.Visible   := True;
  pnlMaestros.Visible      := False;
  pnlReportes.Visible      := False;
  // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
  pnlReportes2.Visible     := False;
  // Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
end;

procedure TFPrincipal.Z1sbMaestrosClick(Sender: TObject);
begin
  pnlMaestros.Left         := TSpeedButton(Sender).Left+10;
  pnlMaestros.Top          := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
  pnlReferencias.Visible   := False;
  pnlMaestros.Visible      := True;
  pnlReportes.Visible      := False;
  // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
  pnlReportes2.Visible     :=False;
  // Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
end;

procedure TFPrincipal.Z1sbMovimientosClick(Sender: TObject);
begin
  pnlReferencias.Visible   := False;
  pnlMaestros.Visible      := False;
  pnlReportes.Visible      := False;
end;

procedure TFPrincipal.Z1sbProcesosClick(Sender: TObject);
begin
  pnlReferencias.Visible   :=False;
  pnlMaestros.Visible      :=False;
  pnlReportes.Visible      :=false;

end;

procedure TFPrincipal.Z1sbReportesClick(Sender: TObject);
begin
  pnlReportes.Left        := TSpeedButton(Sender).Left+10;
  pnlReportes.Top         := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
  pnlReferencias.Visible  :=False;
  pnlMaestros.Visible     :=False;
  // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
  pnlReportes.Visible     :=True;
  pnlReportes2.Visible    :=False;
  // Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
end;

procedure TFPrincipal.dbdtpFecActCalcBoldDay(Sender: TObject; ADate: TDate;
  Month, Day, Year: Integer; var Accept: Boolean);
begin
   xHallo := '';
end;

procedure TFPrincipal.dbdtpFecActChange(Sender: TObject);
begin
    wRutaFTPPri := 'C:\CENTRAL\';

end;

procedure TFPrincipal.dblcOfcDesNotInList(Sender: TObject;
  LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
begin
  if TwwDBCustomLookupCombo(Sender).Text = '' then
   Accept := True;
  Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).DataField,NewValue,[]);
  if not Accept then
    TwwDBCustomLookupCombo(Sender).DropDown;
end;


procedure TFPrincipal.SpdBActMasClick(Sender: TObject);
begin
  DM1.xOfiDes:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','OFDESID');
  If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='ASO') AND (DM1.xOfiDes<>'01') Then Exit;
  SacaMenu(sender);
  Try
     DM1.xCnd:='M';
     FMantAsociadoBuscar:= TFMantAsociadoBuscar.create(self);
     FMantAsociadoBuscar.gbbuscar.Width:=430; FMantAsociadoBuscar.gbbuscar.Height :=40;
     FMantAsociadoBuscar.edtBuscar.Width:=407; FMantAsociadoBuscar.edtBuscar.Height := 28;
     FMantAsociadoBuscar.GbAsociados.Caption:='Buscar Por '+FMantAsociadoBuscar.rbtApeNom.Caption;
     DM1.cdsAso.Close;
     DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOCODMOD='+QuotedStr('@#$!*@/#&^'));
     DM1.cdsAso.Open;
     FMantAsociadoBuscar.Showmodal;
  Finally
     FMantAsociadoBuscar.free;
  End;
End;

procedure TFPrincipal.SpdBActMas2Click(Sender: TObject);
begin
   DM1.xOfiDes:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','OFDESID');
   SacaMenu(sender);
   Try
      DM1.xInsert:='0';
      DM1.xCnd:='M';

// Inicio  SPP_201402_ASO - Cambio a DBExpress y Socket
      DM1.Abrir_Tablas;
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket

      FMantAsociadoBuscar:= TFMantAsociadoBuscar.create(self);
      FMantAsociadoBuscar.Showmodal;
   Finally
      FMantAsociadoBuscar.free;
   End;
End;

procedure TFPrincipal.Timer2Timer(Sender: TObject);
begin
   Statusbar1.Panels[3].Text :=xFecSis+'   '+TimeToStr(Time);
end;

procedure TFPrincipal.spdControlClick(Sender: TObject);
var
   xSQL:String;
begin
   If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
   Begin
      Exit;
   End;

   If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<'03' Then Exit;
   SacaMenu(sender);

   Try
      fCtrAcceso := TfCtrAcceso.create(self);
      xSQL:='SELECT MODULOID,AREADES '
           +'  FROM CRE117 '
           +' WHERE MODULOID IN (''ASO'') ORDER BY MODULOID';
      DM1.cdsConsulta.Close;
      DM1.cdsConsulta.DataRequest(xSQL);
      DM1.cdsConsulta.Open;

      xSQL:='SELECT TABLA,GRUPO,CAMPODES '
           +'  FROM SIS001 '
           +' WHERE COMPONENTE IS NULL '
           +'   AND SUBSTR(GRUPO,4,1)=''0'' AND MODULOID IN (''ASO'') '
           +' GROUP BY TABLA,GRUPO,CAMPODES '
           +' ORDER BY TABLA,GRUPO,CAMPODES ';
      DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL); DM1.cdsPadre.Open;

      xSQL:='SELECT PERFIL,USUARIO,HREG FROM SIS002 ORDER BY PERFIL';
      DM1.cdsProf.Close;
      DM1.cdsProf.DataRequest(xSQL);
      DM1.cdsProf.Open;

      fCtrAcceso.dblEqUsr.Text:= DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID');
      fCtrAcceso.dblEqUsr.Text:='ASO';
      fCtrAcceso.Showmodal;
   Finally
      fCtrAcceso.free;
   End;
end;

procedure TFPrincipal.SpdAuditoriaClick(Sender: TObject);
begin
   DM1.xOfiDes := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)),
      'TGE006', 'OFDESID');
   If (Copy(DM1.CrgArea(DM1.wUsuario), 1, 3) = 'ASO') And (DM1.xOfiDes <> '01')
      Then Exit;
   SacaMenu(sender);
   Try
      DM1.xSgr := 'S';
      DM1.xCnd := 'X';
      fSeleccion := TfSeleccion.create(self);
      fSeleccion.gbbuscar.Width := 430;
      fSeleccion.gbbuscar.Height := 40;
      fSeleccion.edtBuscar.Width := 407;
      fSeleccion.edtBuscar.Height := 28;
      fSeleccion.GbAsociados.Caption := 'Buscar Por ' +
      fSeleccion.rbtApeNom.Caption;
      fSeleccion.dtgAsociadoIButton.Enabled := False;
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOCODMOD=' +
         QuotedStr('@#$!*@/#&^'));
      DM1.cdsAso.Open;
      fSeleccion.Showmodal;
   Finally
      fSeleccion.free;
   End;
end;

procedure TFPrincipal.SpdLogUsuarioClick(Sender: TObject);
var xSQL:String;
begin
  DM1.xOfiDes:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','OFDESID');
  If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='ASO') AND (DM1.xOfiDes<>'01') Then Exit;
  SacaMenu(sender);
  Try
     fContRegistro:= TfContRegistro.create(self);
     xSQL:='SELECT USERID,USERNOM,AREA,ORIGEN,OFDESNOM,NIVEL '
          +'  FROM USERTABLE A ,APO110 B '
          +' WHERE AREA     = ''ASO'' '+
           '   AND A.ORIGEN = B.OFDESID '
          +'   AND A.NIVEL IS NOT NULL ORDER BY USERID ';
     DM1.cdsUsesX.Close;
     DM1.cdsUsesX.DataRequest(xSQL);
     DM1.cdsUsesX.Open;

     fContRegistro.Showmodal;
  Finally
     fContRegistro.free;
  End;

end;

procedure TFPrincipal.SpdCtasPersClick(Sender: TObject);
begin
  SacaMenu(sender);
  If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
     Begin
        Exit;
     End;

  If (Copy(DM1.CrgArea(DM1.wUsuario),6,2)>='03') or
     ((Copy(DM1.CrgArea(DM1.wUsuario),6,2)='02')and (DM1.xOfiDes='01') ) Then
      Begin
        Try
          fCtasPers:= TfCtasPers.create(self);
          fCtasPers.Showmodal;
        Finally
          fCtasPers.free;
        End;
      End;

end;

procedure TFPrincipal.SpdAsoBenClick(Sender: TObject);
begin
  SacaMenu(sender);
  If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
     Begin
        Exit;
     End;
  Try
     FSeleccionBen:= TFSeleccionBen.create(self);
     FSeleccionBen.Showmodal;
  Finally
     FSeleccionBen.free;
  End;

end;

procedure TFPrincipal.spdUnificaClick(Sender: TObject);
begin
  SacaMenu(sender);
  If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
     Begin
        Exit;
     End;
  Try
     FUnificacion:= TFUnificacion.create(self);
     FUnificacion.Showmodal;
  Finally
     FUnificacion.free;
  End;

end;

procedure TFPrincipal.spbRepDetClick(Sender: TObject);
begin

  SacaMenu(sender);
  If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
     Begin
        Exit;
     End;
  Try
     fRepDet:= TfRepDet.create(self);
     If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<'03' Then
        Begin
           fRepDet.DBLUsuarios.Text:=DM1.wUsuario;
           fRepDet.DBLUsuarios.Enabled:=False;
        End
     Else
        Begin
           xSQL:='SELECT DISTINCT USUARIO_AUD '
                +'  FROM APO201_LOG '
                +' WHERE MODULOID = ''ASO'' ';
           DM1.cdsCtasBco.Close;
           DM1.cdsCtasBco.DataRequest(xSQL);
           DM1.cdsCtasBco.Open;
        End;

     fRepDet.Showmodal;
  Finally
     DM1.cdsCtasBco.Close;
     fRepDet.free;
  End;

end;

procedure TFPrincipal.spbRepResClick(Sender: TObject);
begin

  SacaMenu(sender);
  If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
     Begin
        Exit;
     End;
  Try
     If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<'03' Then Exit;
     fRepRes:= TfRepRes.create(self);
     fRepRes.Showmodal;
  Finally
     fRepRes.free;
  End;

end;

procedure TFPrincipal.spdActualProClick(Sender: TObject);
begin
  SacaMenu(sender);
// avisa con mensaje para no acceso
   If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
   Begin
      ShowMessage('No se permite el acceso a un usuario no autorizado para Asociados');
      Exit;
   End;
   If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<'02' Then
   Begin
      ShowMessage('No se permite el acceso para Nivel 01');
      Exit;
   End;
  Try
     fValRegNue:= TfValRegNue.create(self);
     DM1.cdsOfdes.Close;
     DM1.cdsOfdes.DataRequest('SELECT OFDESID,OFDESNOM FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID');
     DM1.cdsOfdes.Open;
     fValRegNue.DBLkOfiDes.Text:=DM1.xOfiDes;
     fValRegNue.Showmodal;
  Finally
     DM1.cdsOfdes.Close;
     fValRegNue.free;
  End;

end;

procedure TFPrincipal.spdNoIdetClick(Sender: TObject);
begin

  SacaMenu(sender);
  If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
     Begin
       Exit;
     End;
  Try
     fTipAso:= TfTipAso.create(self);
     DM1.cdsOfdes.Close;
     DM1.cdsOfdes.DataRequest('SELECT OFDESID,OFDESNOM FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID');
     DM1.cdsOfdes.Open;
     fTipAso.Showmodal;
  Finally
     fTipAso.free;
  End;


end;

procedure TFPrincipal.spdCtrRegClick(Sender: TObject);
begin
  SacaMenu(sender);
  If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
     Begin
        Exit;
     End;
  If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<'03' Then Exit;
  Try
     fCtrlReg:= TfCtrlReg.create(self);
     fCtrlReg.Showmodal;
  Finally
     fCtrlReg.free;
  End;

end;

procedure TFPrincipal.spdManOfDesClick(Sender: TObject);
var xSQL:String;
begin
  SacaMenu(sender);
  If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
     Begin
        Exit;
     End;
If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<'03' Then Exit;
  Try
     fCtrOfdes:= TfCtrOfdes.create(self);
     xSQL:='SELECT OFDESID,OFDESNOM,IDASO,IDFIRMA,VALDATASO,ACTDATREN '
          +'  FROM APO110 '
          +' WHERE SUBSTR(OFDESID,1,1) <> ''M'' ';
     DM1.cdsOfdes.Close;
     DM1.cdsOfdes.DataRequest(xSQL);
     DM1.cdsOfdes.Open;

     fCtrOfdes.Showmodal;
  Finally
     fCtrOfdes.free;
  End;
end;

procedure TFPrincipal.spdDesactValidaClick(Sender: TObject);
Begin
  SacaMenu(sender);
  // Inicio: SPP_201307_ASO
  {If (DM1.RecuperaDatos('TGE001', 'GRUPOID', DM1.CrgDescrip('USERID=' +
    QuotedStr(Trim(DM1.wUsuario)) + ' AND GRUPOID=''GRPMANASO''', 'TGE007',
    'GRUPOID'), 'MODULOID') <> 'ASO') Then
  Begin
    Exit;
  End;}
  
  if not DM1.TieneAutorizacion('H010', 'Menu', DM1.wUsuario) then
  begin
    ShowMessage('Usted no tiene autorización para acceder a esta opción');
    Exit;
  end;
{// Inicio: DPP_201209_ASO
If DM1.wUsuario<>'JGRADOS' then
// Fin: DPP_201209_ASO
  If ((Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '02') Or (DM1.wofides <> '01'))
    Then Exit;}
  // Fin: SPP_201307_ASO
  Try
    fDesacValid := TfDesacValid.create(self);
    fDesacValid.Showmodal;
  Finally
    fDesacValid.free;
  End;
end;

procedure TFPrincipal.spdPenAutClick(Sender: TObject);
begin
 SacaMenu(sender);
 If (DM1.RecuperaDatos('TGE001','GRUPOID',DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND GRUPOID=''GRPMANASO''','TGE007','GRUPOID'),'MODULOID')<>'ASO') Then
     Begin
       Exit;
     End;

  SacaMenu(sender);
  Try
    Fpenaut:= TFpenaut.create(self);
    Fpenaut.Showmodal;
  Finally
    Fpenaut.free;
  End;
end;

procedure TFPrincipal.spdactasoClick(Sender: TObject);
begin
  // Actualización de asociados
  SacaMenu(sender);

//Inicio: SPP_201313_ASO - Variable para controlar si los forms "fimptexto, Fproinfmig" se usan para carga de PADRON o para carga de ONP
  DM1.sTipoCarga:='PADRON';
//Fin: SPP_201313_ASO
  Try
    Factbloaso:= TFactbloaso.create(self);
    Factbloaso.Showmodal;
  Finally
    Factbloaso.free;
  End;
end;

//Inicio: SPP_201313_ASO - Nueva opción en el menú
procedure TFPrincipal.sbONPClick(Sender: TObject);
begin
  SacaMenu(sender);

  DM1.sTipoCarga:='ONP';  // Variable para controlar si los forms "fimptexto, Fproinfmig" se usan para carga de PADRON o para carga de ONP
  Try
    Factblqonp:= TFactblqonp.create(self);
    Factblqonp.Showmodal;
  Finally
    Factblqonp.free;
  End;
end;
//Fin: SPP_201313_ASO


procedure TFPrincipal.spdautdesapoClick(Sender: TObject);
begin
  SacaMenu(sender);
  Try
    Frepautdesuniges:= TFrepautdesuniges.create(self);
    Frepautdesuniges.Showmodal;
  Finally
    Frepautdesuniges.free;
  End;
end;

procedure TFPrincipal.spdpriautdesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
  pnlrepautdes.Visible := True;
  pnlrepautdes.Left    := pnlReportes2.Left+pnlReportes2.Width-15;
  pnlrepautdes.Top     := spdpriautdes.Top;
  // Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
end;

procedure TFPrincipal.spdDesactValidaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlrepautdes.Visible := False;
end;

procedure TFPrincipal.spdPenAutMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlrepautdes.Visible := False;
end;

procedure TFPrincipal.sbAutxModOrigClick(Sender: TObject);
var
   xSQL : String;
begin
  SacaMenu(sender);
  Try

// para nivel 01, se dispara el evento onchange que hace referencia hacia este clientdataset y muestra mensaje de error
// se abre temporalmente este cds para saltar este error, luego dentro de la forma se abre correctamente

     fRepAutDescuento := TfRepAutDescuento.create(self);
     fRepAutDescuento.Showmodal;
  Finally
     fRepAutDescuento.free;
  End;
end;

procedure TFPrincipal.sbAsoAutorizaClick(Sender: TObject);
begin
  If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<'03' Then Exit;
  
  DM1.xOfiDes:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','OFDESID');
  If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='ASO') AND (DM1.xOfiDes<>'01') Then Exit;
  SacaMenu(sender);
  Try
     DM1.xCnd     :='AUT';
     fSeleccionAut:= TfSeleccionAut.create(self);
     fSeleccionAut.Showmodal;
  Finally
     fSeleccionAut.free;
  End;
end;

(******************************************************************************)
procedure TFPrincipal.Verpercadpas;
Var
   xSql:String;
   xfecfin :TDate;
   xdiasexppass, xdiasduracpass:Integer;
   xdiasfaltantes:Integer;
   xpassact, xpassnue:String;
begin
   xSql := 'SELECT TO_DATE(nvl(FECINI_PWD,sysdate)) FECINI_PWD, '
          +'       TO_DATE(nvl(FECFIN_PWD,sysdate+30)) FECFIN_PWD, '
          +'       nvl(DIASEXP_PWD,7) DIASEXP_PWD, '
          +'       nvl(DIASDURAC_PWD,30) DIASDURAC_PWD, PASSWORD '
          +'  FROM TGE006 WHERE USERID = '+QuotedStr(DM1.wUsuario);

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xfecfin        := DM1.cdsQry.FieldByName('FECFIN_PWD').AsDateTime;
   xdiasexppass   := DM1.cdsQry.FieldByName('DIASEXP_PWD').AsInteger;
   xdiasduracpass := DM1.cdsQry.FieldByName('DIASDURAC_PWD').AsInteger;
   xpassact       := DM1.cdsQry.FieldByName('PASSWORD').AsString;
   xSql := 'SELECT TO_DATE('+QuotedStr(DateToStr(xfecfin))+') - TO_DATE(SYSDATE) DIASFALTANTE FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xdiasfaltantes := DM1.cdsQry.FieldByName('DIASFALTANTE').AsInteger; // dias que faltan
   if xdiasfaltantes <= xdiasexppass Then
   Begin
      if xdiasfaltantes<=0 then
         MessageDlg('SU PASSWORD HA CADUCADO, DEBE CAMBIARLA AHORA', mtCustom, [mbOk], 0)
      else
         if xdiasfaltantes=1 then
            MessageDlg('*** FALTA 1 DíA PARA EL VENCIMIENTO DE SU PASSWORD. ***'#13'                            SE SUGIERE CAMBIARLA AHORA', mtCustom, [mbOk], 0)
         else
            MessageDlg('*** FALTAN '+IntToStr(xdiasfaltantes)+' DÍAS PARA EL VENCIMIENTO DE SU PASSWORD. ***'#13'                            SE SUGIERE CAMBIARLA AHORA', mtCustom, [mbOk], 0);
      DM1.cdsUser.Close;
      DM1.cdsUser.DataRequest('SELECT USERID,USERNOM,PASSWORD,FECEXP,OFDESID,CTLFAC,FLGAUT,FECINI_PWD,FECFIN_PWD,DIASEXP_PWD,DIASDURAC_PWD,CTRL_IP FROM TGE006 WHERE USERID='''+DM1.wUsuario+'''');
      DM1.cdsUser.Open;

// Inicio SPP_201402_ASO Cambio a DBExpress y Socket
      FCPassw                 := TFCPassw.Create(Self);
      FCPassw.dbeUsuario.Text := DM1.wUsuario;
      FCPassw.dbeNombre.Text  := DM1.cdsUser.FieldByname('USERNOM').AsString;
      FCPassw.dbeUsuario.Text    := DM1.wUsuario;
      FCPassw.sPassword       := DM1.cdsUser.FieldByname('PASSWORD').AsString;
      FCPassw.sModulo         := DM1.wModulo;
      FCPassw.wcdsUsuarios    := DM1.cdsUser;
      Try
         FCPassw.ShowModal;
      Finally
         FCPassw.Free;
      End;
// Fin  SPP_201402_ASO Cambio a DBExpress y Socket

      xSql := 'SELECT PASSWORD FROM TGE006 WHERE USERID = '+QuotedStr(DM1.wUsuario);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xpassnue := DM1.cdsQry.FieldByName('PASSWORD').AsString;
      If xpassact <> xpassnue Then
      Begin
         xSql := 'UPDATE TGE006 '
                +'   SET FECINI_PWD = TO_DATE(SYSDATE), '
                +'       FECFIN_PWD = TO_DATE(SYSDATE)+'+IntToStr(xdiasduracpass)
                +' WHERE USERID     = '+QuotedStr(DM1.wUsuario);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         Application.Terminate;
      End;
      If xdiasfaltantes <= 0 Then Application.Terminate;
   End
   Else
      If xdiasfaltantes <= 0 Then Application.Terminate;
end;
(******************************************************************************)
procedure TFPrincipal.BloquearMenuPrincipal();
var
    i:Integer;
begin
   for i := 0 To self.ComponentCount-1 do begin
       if (self.Components[i].ClassName = 'TSpeedButton') Then
          Begin
            TEdit(self.Components[i]).Enabled  := false;
          End;
   End;
   Z1sbCamPassw.Enabled     :=true;
   spdpriautdes.Enabled     :=true;
   sbAutxModOrig.Enabled    :=true;
   spdautdesapo.Enabled     :=true;
   Z1sbReglas.Enabled       :=true;
   Z1sbMaestros.Enabled     :=true;
   Z1sbReportes.Enabled     :=true;
   // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
   Z1sbReportes2.Enabled    :=true;
   // Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
   Z1sbSalida.Enabled       :=true;
   spdNueAso.Enabled        :=true;
   //--Inicio:HPC_201403_ASO--//
   spbMaeSinCartaApo.Enabled:=true;
   spdAsignaCartera.Enabled:=true;
   spdGestionCartera.Enabled:=true;
   spdReporteCartera.Enabled:=true;
   spdReferencias.Enabled:=true;
//Inicio HPC_201504_ASO
   spdAvanceHojaRuta.Enabled:=true;
//Final HPC_201504_ASO
   //spdControl.Enabled:=true;
   //--Fin:HPC_201403_ASO--//
   //--Inicio:SPP_201405_ASO--//
   spdActualizacionMasiva.Enabled:=true;
   //--fin:SPP_201405_ASO--//
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
   spdResumenGeneracionWeb.Enabled:=true;
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web

end;
(******************************************************************************)

procedure TFPrincipal.spdNueAsoClick(Sender: TObject);
begin
  SacaMenu(sender);
  Try
    FRepNueAso:= TFRepNueAso.create(self);
    FRepNueAso.Showmodal;
  Finally
    FRepNueAso.free;
  End;
end;

procedure TFPrincipal.pnlReportesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlrepautdes.Visible := False;
  pnlTomaFotos.Visible := False;
end;

procedure TFPrincipal.spbMaeSinCartaApoClick(Sender: TObject);
begin
   SacaMenu(sender);
   Try
      FRptCartaDesignatario:= TFRptCartaDesignatario.create(self);
      FRptCartaDesignatario.Showmodal;
   Finally
      FRptCartaDesignatario.free;
   End;
end;

procedure TFPrincipal.spdpriautsdesClick(Sender: TObject);
begin
   SacaMenu(sender);
   Try
      fAutDesApo:= TfAutDesApo.create(self);
      fAutDesApo.Showmodal;
   Finally
      fAutDesApo.free;
   End;
end;

procedure TFPrincipal.sbNuevoAsociadoClick(Sender: TObject);
begin
// envia mensaje si no tiene el nivel de acceso adecuado
  If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<> '01' Then
  begin
     ShowMessage('Sólo el Nivel 01 puede acceder a esta Opción');
     Exit;
  end;
  SacaMenu(sender);
  Try
     FNuevoAsociadoBuscar := TFNuevoAsociadoBuscar.create(self);
     FNuevoAsociadoBuscar.Showmodal;
  Finally
     FNuevoAsociadoBuscar.free;
  End;
end;


Procedure TFPrincipal.sbManCenEduClick(Sender: TObject);
Begin
   SacaMenu(sender);
   Try
      FManCol := TFManCol.create(self);
      FManCol.Showmodal;
   Finally
      FManCol.free;
   End;
End;

Procedure TFPrincipal.sbCamTipAsoClick(Sender: TObject);
Begin
   DM1.xSgr := 'X';
   If Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '03' Then
   Begin
      ShowMessage('Esta opción es para usuarios de Nivel 3');
      Exit;
   End;

   DM1.xOfiDes := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)),
      'TGE006', 'OFDESID');
   If (Copy(DM1.CrgArea(DM1.wUsuario), 1, 3) = 'ASO') And (DM1.xOfiDes <> '01')
      Then Exit;
   SacaMenu(sender);
   // INICIO HPC_201601_ASO
   // INVOCA A NUEVO FORMULARIO
   // Try
   //    fSeleccion                     := TfSeleccion.create(self);
   //    fSeleccion.gbbuscar.Width      := 430;
   //    fSeleccion.gbbuscar.Height     := 40;
   //    fSeleccion.edtBuscar.Width     := 407;
   //    fSeleccion.edtBuscar.Height    := 28;
   //    fSeleccion.GbAsociados.Caption := 'Buscar Por ' +
   //       fSeleccion.rbtApeNom.Caption;
   //    DM1.cdsAso.Close;
   //    DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOCODMOD=' +
   //       QuotedStr('@#$!*@/#&^'));
   //    DM1.cdsAso.Open;
   //    fSeleccion.Showmodal;
   // Finally
   //    fSeleccion.free;
   // End;
   //
   // If DM1.xSgr = 'S' Then
   // Begin
   //    Try
   //       Fcamtipaso := TFcamtipaso.create(self);
   //       Fcamtipaso.Showmodal;
   //    Finally
   //       Fcamtipaso.free;
   //    End;
   // End;
   Try
      FCambioTipoAsociado := TFCambioTipoAsociado.create(self);
      FCambioTipoAsociado.Showmodal;
   Finally
      FCambioTipoAsociado.free;
   End;
   // FIN HPC_201601_ASO
End;

procedure TFPrincipal.spdDocConClick(Sender: TObject);
begin
  SacaMenu(sender);
  Try
    FDocCon:= TFDocCon.create(self);
    FDocCon.Showmodal;
  Finally
    FDocCon.free;
  End;
end;

procedure TFPrincipal.btnRepFotosDptoClick(Sender: TObject);
begin
// Reporte de Toma de Fotos por Departamento
   SacaMenu(sender);
   try
      FRptEstTomaFotosDpto := TFRptEstTomaFotosDpto.Create(self);
      FRptEstTomaFotosDpto.ShowModal;
   finally
      FRptEstTomaFotosDpto.Free;
   end;

end;

procedure TFPrincipal.btnRepFotosMensualClick(Sender: TObject);
begin
// Reporte de Toma de Fotos Estadistica Mensuales
   SacaMenu(sender);
   try
      FRptEstTomaFotosOfides := TFRptEstTomaFotosOfides.Create(self);
      FRptEstTomaFotosOfides.ShowModal;
   finally
      FRptEstTomaFotosOfides.Free;
   end;

end;

procedure TFPrincipal.btnEstTomaFotosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
// activa submenú de Reporte Toma de Fotos
  pnlTomaFotos.Visible := True;
  // Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
  pnlTomaFotos.Left := pnlReportes2.Left+pnlReportes2.Width-15;
  // Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
  pnlTomaFotos.Top := btnEstTomaFotos.Top+38;

end;

procedure TFPrincipal.spReporteFallecidosClick(Sender: TObject);
begin


  SacaMenu(sender);
  try
    FRepFallecidos := TFRepFallecidos.Create(self);
    FRepFallecidos.ShowModal;
  finally
    FRepFallecidos.Free;
  end;

end;

procedure TFPrincipal.spdasicueintClick(Sender: TObject);
begin
// Se añade nuevo boton se hace llamado a la opción que asigna nueva cuenta interna.
   DM1.xSgr := 'X';
   If Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '03' Then
   Begin
      ShowMessage('Esta opción es para usuarios de Nivel 3');
      Exit;
   End;
   DM1.xOfiDes := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'OFDESID');
   If (Copy(DM1.CrgArea(DM1.wUsuario), 1, 3) = 'ASO') And (DM1.xOfiDes <> '01') Then Exit;
   SacaMenu(sender);
   Try
     FAsiCueAhoInt := TFAsiCueAhoInt.create(self);
     FAsiCueAhoInt.Showmodal;
   Finally
     FAsiCueAhoInt.free;
   End;

end;

procedure TFPrincipal.spdBenCheGerClick(Sender: TObject);
begin
  SacaMenu(sender);
  If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario))+ ' AND GRUPOID=''GRPMANASO''', 'TGE007', 'GRUPOID') <> 'GRPMANASO' Then
  Begin
    ShowMessage('No tiene acceso a esta opción');
    Exit;
  End;
  Try
    FGenCheGerBen:= TFGenCheGerBen.create(self);
    FGenCheGerBen.Showmodal;
  Finally
    FGenCheGerBen.free;
  End;
end;

procedure TFPrincipal.spdCueIndClick(Sender: TObject);
begin
   SacaMenu(sender);
   DM1.xSgr := 'R';
   DM1.cdsQry2.Close;
   Try
      Fprocueind:= TFprocueind.create(self);
      Fprocueind.Showmodal;
   Finally
      Fprocueind.free;
   End;
end;

procedure TFPrincipal.spbRepCtrlCadapClick(Sender: TObject);
begin
   SacaMenu(sender);
   Try
      FRepControlCadap:= TFRepControlCadap.create(self);
      FRepControlCadap.Showmodal;
   Finally
      FRepControlCadap.free;
   End;
end;

procedure TFPrincipal.spdAutDctoSegundaClick(Sender: TObject);
begin
  SacaMenu(sender);
  Try
    FRepSegundaVez := TFRepSegundaVez.Create(self);
    FRepSegundaVez.ShowModal;
  Finally
    FRepSegundaVez.Free;
  End;
end;

procedure TFPrincipal.spdDocenConCredVigClick(Sender: TObject);
begin
  SacaMenu(sender);
  Try
    FRepAsoConCredVig:= TFRepAsoConCredVig.Create(self);
    FRepAsoConCredVig.ShowModal;
  Finally
    FRepAsoConCredVig.Free;
  End;
end;

procedure TFPrincipal.sbBenefxDptoUgelTipoClick(Sender: TObject);
begin
   SacaMenu(Sender);
   Try
      FRptPagBenXTipo := TFRptPagBenXTipo.Create(Self);
      FRptPagBenXTipo.ShowModal;
   Finally
      FRptPagBenXTipo.Free;
   End;
end;

procedure TFPrincipal.spdCambiarResNomParaReliqClick(Sender: TObject);
begin
   If Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '03' Then
   Begin
      ShowMessage('Esta opción es para usuarios de Nivel 3 ó 4');
      Exit;
   End;
  SacaMenu(sender);
  Try
    FResNomParaReliq:= TFResNomParaReliq.Create(self);
    FResNomParaReliq.ShowModal;
  Finally
    FResNomParaReliq.Free;
  End;
end;

procedure TFPrincipal.spdReingresoCesantesClick(Sender: TObject);
begin
  SacaMenu(sender);
  Try
    FReingresoCesantes:= TFReingresoCesantes.Create(self);
    FReingresoCesantes.ShowModal;
  Finally
    FReingresoCesantes.Free;
  End;
end;

procedure TFPrincipal.spdGeneracionSobresClick(Sender: TObject);
begin
  SacaMenu(Sender);
  Try
    FGenSobres := TFGenSobres.Create(Self);
    FGenSobres.ShowModal;
  Finally
    FGenSobres.Free;
  End;
end;

procedure TFPrincipal.spdAsignacionClaveWebClick(Sender: TObject);
begin
  SacaMenu(sender);
  Try
    FDatDoc := TFDatDoc.Create(Self);
    FDatDoc.ShowModal;
  Finally
    FDatDoc.Free;
  End;
end;

// inicio DPP_201208_ASO
procedure TFPrincipal.btnConfirmarEstadoFallecidoClick(Sender: TObject);
var frm: TFConfirmarEstadoFallecido;
begin
  SacaMenu(sender);
  Try
    frm := TFConfirmarEstadoFallecido.Create(Self);
    frm.ShowModal;
  Finally
    frm.Free;
  End;
end;
// FIN DPP_201208_ASO

// Inicio: DPP_201209_ASO
procedure TFPrincipal.spdPadronGeneralClick(Sender: TObject);
begin
  // Actualización de asociados
  SacaMenu(Sender);
  Try
    FPadrones := TFPadrones.Create(Self);
    FPadrones.ShowModal;
  Finally
    FPadrones.Free;
  End;
end;
// Fin: DPP_201209_ASO

// Inicio: DPP_201209_ASO
procedure TFPrincipal.spdUgelRegionPlanillaClick(Sender: TObject);
begin
  SacaMenu(Sender);
  Try
    FUgelesRegionesPlanillas := TFUgelesRegionesPlanillas.Create(Self);
    FUgelesRegionesPlanillas.ShowModal;
  Finally
    FUgelesRegionesPlanillas.Free;
  End;
end;
// Fin: DPP_201209_ASO

procedure TFPrincipal.spdCambiarDatosNomExpedienteClick(Sender: TObject);
begin
  // Inicio: SPP_201305_ASO
  SacaMenu(sender);
  If Copy(DM1.CrgArea(DM1.wUsuario), 6, 2) < '03' Then
  Begin
    ShowMessage('Esta opción es para usuarios de Nivel 3 ó 4');
    Exit;
  End;
  Try
    FCambDatosNombExped := TFCambDatosNombExped.Create(Self);
    FCambDatosNombExped.ShowModal;
  Finally
    FCambDatosNombExped.Free;
  End;
  // Fin: SPP_201305_ASO
end;

procedure TFPrincipal.sbAsoDesautorizaClick(Sender: TObject);
begin
  // Inicio: SPP_201308_ASO
  If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<'03' Then Exit;

  DM1.xOfiDes:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','OFDESID');
  If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='ASO') AND (DM1.xOfiDes<>'01') Then Exit;
  SacaMenu(sender);
  Try
     DM1.xCnd     :='AUT';
     FSeleccionDesaut:= TFSeleccionDesaut.create(self);
     FSeleccionDesaut.Showmodal;
  Finally
     FSeleccionDesaut.free;
  End;
  // Fin: SPP_201308_ASO
end;


//Inicio: SPP_201313_ASO - Nueva opción en el menú
procedure TFPrincipal.spRptNuevosAsociadosClick(Sender: TObject);
begin
  SacaMenu(sender);

  Try
    FrptNueAso:= TFrptNueAso.create(self);
    FrptNueAso.Showmodal;
  Finally
    FrptNueAso.free;
  End;
end;
//Fin: SPP_201313_ASO

// Inicio: SPP_201401_ASO
procedure TFPrincipal.spdAutDesONPClick(Sender: TObject);
var xSQL:String;
begin
  SacaMenu(sender);
  Try
    fAutDesONP:= TfAutDesONP.create(self);
    // INICIO HPC_201513_ASO    
    (*
    xSQL:='SELECT ASOID,ASOAPENOMDNI,ASODNI,ASOTIPID,CODPENSION, '+
          'NUMAUTONP,TO_DATE(FECAUTONP) FECAUTONP,A.UPROID,A.UPAGOID,A.USEID,USENOM,DPTODES '+
          'FROM APO201 A,APO101 B,APO158 C WHERE  ASOTIPID=''CE'' AND REGPENID=''02'' '+
          'AND NUMAUTONP IS NOT NULL AND A.UPROID=B.UPROID(+) '+
          'AND A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+) '+
          'AND B.DPTOID=C.DPTOID(+) ORDER BY NUMAUTONP ';
    *)
    xSQL:= 'SELECT ASOID, '
         + '       ASOAPENOMDNI, '
         + '       ASODNI, '
         + '       ASOTIPID, '
         + '       CODPENSION, '
         + '       NUMAUTONP, '
         + '       TO_DATE(FECAUTONP) FECAUTONP, '
         + '       A.UPROID, '
         + '       A.UPAGOID, '
         + '       A.USEID, '
         + '       USENOM, '
         + '       DPTODES, '
         + '       A.USUAUTONP, '
         + '       D.OFDESNOM '
         + '  FROM APO201 A, '
         + '       APO101 B, '
         + '       APO158 C, '
         + '       APO110 D  '
         + ' WHERE ASOTIPID = ''CE'' '
         + '   AND REGPENID = ''02'' '
         + '   AND NUMAUTONP IS NOT NULL '
         + '   AND A.UPROID = B.UPROID(+) '
         + '   AND A.UPAGOID = B.UPAGOID(+) '
         + '   AND A.USEID = B.USEID(+) '
         + '   AND B.DPTOID = C.DPTOID(+) '
         + '   AND A.ORIOPEONP = D.OFDESID(+) '         
         + ' ORDER BY NUMAUTONP ';
    // FIN HPC_201513_ASO
    DM1.cdsAutDesONP.Close;
    DM1.cdsAutDesONP.DataRequest(xSQL);
    DM1.cdsAutDesONP.Open;
    fAutDesONP.Showmodal;
  Finally
    fAutDesONP.free;
  End;
end;
// Fin: SPP_201401_ASO


// Inicio: SPP_201401_ASO
procedure TFPrincipal.spdAsoEdadSexoClick(Sender: TObject);
var xSQL:String;
begin
   xSQL:='SELECT EDAD, SUM(MASCULINO) MASCULINO, '+
         'SUM(FEMENINO) FEMENINO, '+
         'SUM(MASCULINO)+SUM(FEMENINO) TOTAL FROM '+
         '(SELECT EXTRACT(YEAR FROM NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE),ASOFECNAC),''month'')) EDAD,ASOSEXO SEXO, '+
         'CASE WHEN ASOSEXO=''M'' THEN 1 ELSE 0 END MASCULINO, '+
         'CASE WHEN ASOSEXO=''F'' THEN 1 ELSE 0 END FEMENINO, '+
         'CASE WHEN ASOSEXO IS NULL THEN 1 ELSE 0 END SIN_INFORMACION '+
         'FROM APO201 '+
         'WHERE ASOTIPID=''DO'' AND ASOFECNAC IS NOT NULL '+
         'AND ASOSEXO IS NOT NULL AND NVL(FALLECIDO,''N'')=''N'' )'+
         'GROUP BY EDAD '+
         'ORDER BY EDAD ';
         DM1.cdsExpCenEdu.Close;
         DM1.cdsExpCenEdu.DataRequest(xSQL);
         DM1.cdsExpCenEdu.Open;
         TNumericField(DM1.cdsExpCenEdu.fieldbyname('MASCULINO')).DisplayFormat:='###,##0';
         TNumericField(DM1.cdsExpCenEdu.fieldbyname('FEMENINO')).DisplayFormat:='###,##0';
         TNumericField(DM1.cdsExpCenEdu.fieldbyname('TOTAL')).DisplayFormat:='###,##0';


         If DM1.cdsExpCenEdu.RecordCount > 0 Then
            Begin
                SacaMenu(sender);
                Try
                  fAsoEdadSexo:= TfAsoEdadSexo.create(self);
                  fAsoEdadSexo.Showmodal;
                Finally
                  fAsoEdadSexo.free;
                End;
            End;

end;
// Fin: SPP_201401_ASO


//--Inicio:HPC_201403_ASO--//
procedure TFPrincipal.spdAsignaCarteraClick(Sender: TObject);
begin
    SacaMenu(sender);
 //Inicio HPC_201503_ASO
 // If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3')  Then
  If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3')  or  (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N4') Then
 //Final HPC_201503_ASO
  Begin
       Try                                                 
                fAsignaCartera := TfAsignaCartera.Create(Self);
                //Inicio: SPP_201406_ASO 
                fAsignaCartera.Position:= poScreenCenter;
                //Fin: SPP_201406_ASO
                fAsignaCartera.ShowModal;
        Finally
                fAsignaCartera.Free;
        End
  End
  else
  begin
      //Inicio HPC_201503_ASO
      //ShowMessage('Esta opción es para usuarios de Nivel 3');
        ShowMessage('Esta opción es para usuarios de Nivel 3 y Nivel 4');
      //Final HPC_201503_ASO
    Exit;
  End;


end;

procedure TFPrincipal.spdGestionCarteraClick(Sender: TObject);
begin
    SacaMenu(sender);
 // Inicio HPC_201503_ASO
 //  If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N1') Then
  If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N1') or  (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3') or (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N4') Then
 //Final HPC_201503_ASO
   Begin
        Try
                fGestionCartera:= TfGestionCartera.Create(Self);
                //Inicio: SPP_201406_ASO
                fGestionCartera.Position:= poScreenCenter;
                //Fin: SPP_201406_ASO
                fGestionCartera.ShowModal;
        Finally
                fGestionCartera.Free;
        End
   end
   else
   begin
      //Final HPC_201503_ASO
      //ShowMessage('Esta opción es para usuarios de Nivel 1');
       ShowMessage('Esta opción es para usuarios de Nivel 1, Nivel 3, Nivel 4');
      //Inicio HPC_201503_ASO
        Exit;
   End;


end;

procedure TFPrincipal.spdReporteCarteraClick(Sender: TObject);
begin
    SacaMenu(sender);
  If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3') or (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N4') Then
   Begin
        Try
                fReporteCartera:= TfReporteCartera.Create(Self);
                //Inicio: SPP_201406_ASO
                fReporteCartera.Position:= poScreenCenter;
                //Fin: SPP_201406_ASO
                fReporteCartera.ShowModal;
        Finally
                fReporteCartera.Free;
  End;
  End
  else
  begin
        ShowMessage('Esta opción es para usuarios de Nivel 3 o 4');
        Exit;
  end;

end;


procedure TFPrincipal.spdReferenciasClick(Sender: TObject);
begin
      SacaMenu(sender);
  If Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3' Then
   Begin
        Try
                fReferencias:= TfReferencias.Create(Self);
                //Inicio: SPP_201406_ASO
                fReferencias.Position:= poScreenCenter;
                //Fin: SPP_201406_ASO 
                fReferencias.ShowModal;
        Finally
                fReferencias.Free;
        End;
   end
   else
        ShowMessage('Esta opción es para usuarios de Nivel 3');
        Exit;
   begin
   end;

end;
//--fin:HPC_201403_ASO--//

//--Inicio:SPP_201405_ASO--//
procedure TFPrincipal.spdActualizacionMasivaClick(Sender: TObject);
begin
      SacaMenu(sender);
  If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3') OR ((Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N4')) Then
   Begin
        Try
                fGeneraLote:= TfGeneraLote.Create(Self);
                fGeneraLote.Position:= poScreenCenter;
                fGeneraLote.ShowModal;

        Finally
                fGeneraLote.Free;
  End;
  End
  else
  begin
        ShowMessage('Esta opción es para usuarios del Nivel 3 y 4');
        Exit;
  end;
end;
//--Fin:SPP_201405_ASO--//


// Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"
procedure TFPrincipal.sbCtaIndLoteClick(Sender: TObject);
begin
  SacaMenu(Sender);
  DM1.xSgr := 'R';
  Try
     FrmListaCtaIndBloque := TFrmListaCtaIndBloque.create(Self);
     FrmListaCtaIndBloque.ShowModal;
  Finally
     FrmListaCtaIndBloque.Free;
  End;
end;
// Fin   SPP_201412_ASO     : Se agrego nuevo boton para opcion "Cuenta Individual en Lote"


// Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion de Menu
procedure TFPrincipal.Z1sbReportes2Click(Sender: TObject);
begin
  pnlReportes.Left        := TSpeedButton(Sender).Left+10;
  pnlReportes.Top         := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
  pnlReferencias.Visible  := False;
  pnlMaestros.Visible     := False;
  pnlReportes.Visible     := False;
  pnlReportes2.Visible    := True;
end;
// Fin  SPP_201412_ASO     : Se agrego nuevo boton para opcion de Menu


// Inicio SPP_201412_ASO     : Se agrego nuevo boton para opcion de Menu
procedure TFPrincipal.Z1sbReportes2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  pnlReportes2.Left         := TSpeedButton(Sender).Left+10;
  pnlReportes2.Top          := TSpeedButton(Sender).Top+TSpeedButton(Sender).Height;
  pnlReferencias.Visible   :=False;
  pnlMaestros.Visible      :=False;
  pnlReportes.Visible      :=False;
  pnlReportes2.Visible     :=True;
end;
// Fin    SPP_201412_ASO     : Se agrego nuevo boton para opcion de Menu


// Inicio HPC_201501_ASO     : Se agrego nuevo boton para opcion "Mantenimiento de Contactabilidad".
procedure TFPrincipal.spdContactabilidadClick(Sender: TObject);
begin
   DM1.xOfiDes:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','OFDESID');

   SacaMenu(sender);
   Try
      DM1.xCnd:='C';
      FMantAsociadoBuscar:= TFMantAsociadoBuscar.create(self);
      FMantAsociadoBuscar.Showmodal;
   Finally
      FMantAsociadoBuscar.free;
   End;
end;
// fin HPC_201501_ASO     : Se agrego nuevo boton para opcion "Mantenimiento de Contactabilidad".

//Inicio HPC_201504_ASO
procedure TFPrincipal.spdAvanceHojaRutaClick(Sender: TObject);
begin

   SacaMenu(sender);
   If (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N3') or (Copy(DM1.CrgArea(DM1.wUsuario), 8, 2) = 'N4') Then
   Begin
      Try
       fRepAvances:= TfRepAvances.create(self);
       fRepAvances.Showmodal;
      Finally
       fRepAvances.free;
      End;
   End
   else
   begin
      ShowMessage('Esta opción es para usuarios de Nivel 3 o 4');
      Exit;
   end;

end;
//Final HPC_201504_ASO

// Inicio: HPC_201607_ASO
// Se Llama a fuente del mantenimiento de RECEPCION CADAPS
procedure TFPrincipal.SpdCarAutDesClick(Sender: TObject);
begin
  SacaMenu(sender);
  Try
     FbusasorecCADAPS:= TFbusasorecCADAPS.create(self);
     FbusasorecCADAPS.Showmodal;
  Finally
     FbusasorecCADAPS.free;
  End;
end;
// Fin: HPC_201607_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
procedure TFPrincipal.spdConsultaExpedienteBenClick(Sender: TObject);
begin
   //DM1.xOfiDes:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','OFDESID');
   SacaMenu(sender);
   Try
      FExpedientebeneficio:= TFExpedientebeneficio.create(self);
      FExpedientebeneficio.Showmodal;
   Finally
      FExpedientebeneficio.free;
   End;
End;

// Inicio: HPC_201705_ASO
// Procedimiento que llena información en las variables de los reportes creados
procedure TFPrincipal.LlenaDatosPlaUniPag(xasoid: String);
Var xSql :String;
begin
   xSQL := 'SELECT A.USUREGAUTDESAPO, A.ASOAPENOM, A.ASOAPENOMDNI, A.ASODNI, B.USENOM FROM '+DM1.sAPO201+' A, APO101 B WHERE A.ASOID = '+QuotedStr(xAsoId)+' AND A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   FPrincipal.pplasoapenomdni.Caption := DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString;
   FPrincipal.pplasodni.Caption := DM1.cdsQry.FieldByName('ASODNI').AsString;
   FPrincipal.pplUGEL.Caption := DM1.cdsQry.FieldByName('USENOM').AsString;
   pplAnoCADAPS.Caption := Copy(DM1.FechaHora,7,4);
   pplMesCAPADS.Caption := DM1.NombreMes(Copy(DM1.FechaHora,4,2));
   xSql := 'SELECT INITCAP(B.DESIMPOFI) DESIMPOFI FROM TGE006 A, APO110 B WHERE A.USERID = '+QuotedStr(dm1.wUsuario)+' AND A.OFDESID = B.OFDESID';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   ppllugarfecha.Caption := DM1.cdsQry.FieldByName('DESIMPOFI').AsString+', '+Copy(DM1.FechaHora,1,2)+' de '+LowerCase(DM1.NombreMes(Copy(DM1.FechaHora,4,2)))+' de '+Copy(DM1.FechaHora,7,4);
end;

procedure TFPrincipal.LlenaDatosPlaDecAso(xasoid: String);
Var xsql, xfijo, xcelular:String;
begin
   xsql := 'SELECT A.ASOFRESNOM, A.ASOAPENOMDNI, A.ASODNI, B.UPRONOM, C.USENOM, REPLACE(A.ASODIR, ''(Ref.''||Trim(A.DESREFVIV)||'')'',NULL) ASODIR,'
   +' TRIM(D.DPTODES)||''/''||TRIM(E.CIUDDES)||''/''||F.ZIPDES DEPPRODIS,'
   +' A.DESREFVIV REFDOM, A.ASOEMAIL, A.ASOFRESNOM, A.ASORESNOM, G.NOMCENEDU'
   +' FROM '+DM1.sAPO201+' A, APO102 B, APO101 C, APO158 D, APO123 E, APO122 F, ASO_CEN_EDU G'
   +' WHERE A.ASOID = '+QuotedStr(xasoid)
   +' AND A.UPROID = B.UPROID AND A.UPROID = C.UPROID AND A.UPAGOID = C.UPAGOID AND A.USEID = C.USEID'
   +' AND SUBSTR(A.ZIPID,1,2) = D.DPTOID(+) AND SUBSTR(A.ZIPID,1,4) = E.CIUDID(+)'
   +' AND A.ZIPID = F.ZIPID(+) AND A.CENEDUID = G.CENEDUID(+)';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   pplanonom_dec.Caption := Copy(DM1.cdsQry.FieldByName('ASOFRESNOM').Asstring,7,4);
   ppldia_dec.Caption := Copy(DM1.FechaHora,1,2);
   pplmes_dec.Caption := LowerCase(DM1.NombreMes(Copy(DM1.FechaHora,4,2)));
   pplano_dec.Caption := Copy(DM1.FechaHora,7,4);
   pplasoapenom_dec.Caption := DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString;
   pplasodni_dec.Caption := DM1.cdsQry.FieldByName('ASODNI').AsString;
   pplupronom_dec.Caption := DM1.cdsQry.FieldByName('UPRONOM').AsString;
   pplusenom_dec.Caption := DM1.cdsQry.FieldByName('USENOM').AsString;
   ppldirdom_dec.Caption := DM1.cdsQry.FieldByName('ASODIR').AsString;
   pplubigeodom_dec.Caption := DM1.cdsQry.FieldByName('DEPPRODIS').AsString;
   ppldesrefdom_dec.Caption := DM1.cdsQry.FieldByName('REFDOM').AsString;
   pplasoemail_dec.Caption := DM1.cdsQry.FieldByName('ASOEMAIL').AsString;
   pplasocenedu_dec.Caption := DM1.cdsQry.FieldByName('NOMCENEDU').AsString;
   pplasofresnom_dec.Caption := DM1.cdsQry.FieldByName('ASOFRESNOM').AsString;
   pplasoresnum_dec.Caption := DM1.cdsQry.FieldByName('ASORESNOM').AsString;
   xsql := 'SELECT CODTIPTEL1, CODCIUTELFIJ1, ASOTELF1, CODREFTEL1, CODTIPTEL2, CODCIUTELFIJ2, ASOTELF2, CODREFTEL2 FROM '+DM1.sAPO201+' WHERE ASOID = '+QuotedStr(xasoid);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xfijo := '';
   If DM1.cdsQry.FieldByName('CODTIPTEL1').AsString = 'F' Then
      xfijo := DM1.cdsQry.FieldByName('CODCIUTELFIJ1').AsString+DM1.cdsQry.FieldByName('ASOTELF1').AsString;
   If (xfijo = '') And (DM1.cdsQry.FieldByName('CODTIPTEL2').AsString = 'F') Then
      xfijo := DM1.cdsQry.FieldByName('CODCIUTELFIJ2').AsString+DM1.cdsQry.FieldByName('ASOTELF2').AsString;
   If (xfijo = '') And (DM1.cdsQry.FieldByName('ASOTELF1').AsString <> '') And (trim(DM1.cdsQry.FieldByName('CODTIPTEL1').AsString) = '')  Then
      xfijo := DM1.cdsQry.FieldByName('ASOTELF1').AsString;
   If (xfijo = '') And (DM1.cdsQry.FieldByName('ASOTELF2').AsString <> '') And (trim(DM1.cdsQry.FieldByName('CODTIPTEL2').AsString) = '') Then
      xfijo := DM1.cdsQry.FieldByName('ASOTELF2').AsString;
   pplasotelf1_dec.Caption := xfijo;
   xcelular := '';
   If (Trim(DM1.cdsQry.FieldByName('CODTIPTEL1').AsString) <> '') And (DM1.cdsQry.FieldByName('CODTIPTEL1').AsString <> 'F') Then
      xcelular := DM1.cdsQry.FieldByName('CODCIUTELFIJ1').AsString+DM1.cdsQry.FieldByName('ASOTELF1').AsString;
   If (xcelular = '') And (Trim(DM1.cdsQry.FieldByName('CODTIPTEL2').AsString) <> '') And (DM1.cdsQry.FieldByName('CODTIPTEL2').AsString <> 'F') Then
      xcelular := DM1.cdsQry.FieldByName('CODCIUTELFIJ2').AsString+DM1.cdsQry.FieldByName('ASOTELF2').AsString;
   If (xcelular = '') And (DM1.cdsQry.FieldByName('ASOTELF1').AsString <> '') And (xfijo <> DM1.cdsQry.FieldByName('ASOTELF1').AsString) Then
      xcelular := DM1.cdsQry.FieldByName('ASOTELF1').AsString;
   If (xcelular = '') And (DM1.cdsQry.FieldByName('ASOTELF2').AsString <> '') And (xfijo <> DM1.cdsQry.FieldByName('ASOTELF2').AsString) Then
      xcelular := DM1.cdsQry.FieldByName('ASOTELF2').AsString;
   pplasotelf2_dec.Caption := xcelular;
end;
// Fin: HPC_201705_ASO

// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
procedure TFPrincipal.spdResumenGeneracionWebClick(Sender: TObject);
begin
   SacaMenu(sender);
   Try
      FResumenWeb:= TFResumenWeb.create(self);
      FResumenWeb.Showmodal;
   Finally
      FResumenWeb.free;
   End;
end;
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
//Inicio HPC_201713_ASO: nuevo reporte de obsequio para el asociado
procedure TFPrincipal.spdListadoEntregaPanetonesClick(Sender: TObject);
begin
   SacaMenu(sender);
   Try
      FReporteEntregaPan:= TFReporteEntregaPan.create(self);
      FReporteEntregaPan.sOficinaId :=  DM1.xOfiDes;
      FReporteEntregaPan.Showmodal;
   Finally
      FReporteEntregaPan.free;
   End;
end;
// Fin HPC_201713_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.btnIniAtencionClick(Sender: TObject);
var
  xSQL: String;
begin
    xSQL:='SELECT FLGATE FROM TICKET_MOD_CTRL_VEN_MOV '+
          ' WHERE OFIDES='+QuotedStr(DM1.xOfiDes)+
          ' AND PANTALLA='+QuotedStr(sPantalla)+
          ' AND NUMVEN='+QuotedStr(sNumVenta)+
          ' AND TIPOPE='+QuotedStr(DM1.wModulo)+
          ' AND USUVEN='+QuotedStr(dm1.wUsuario)+
          ' AND TRUNC(FECATE) = TRUNC(SYSDATE)';
    DM1.cdsqry.close;
    DM1.cdsqry.DataRequest(xSQL);
    DM1.cdsqry.open;
    If (DM1.cdsQry.FieldByname('FLGATE').AsString)='V' Then
    Begin
       xsql:='UPDATE TICKET_MOD_CTRL_VEN_MOV SET FLGATE=''M'' '+
             ' WHERE OFIDES='+QuotedStr(DM1.xOfiDes)+
             ' AND PANTALLA='+QuotedStr(sPantalla)+
             ' AND NUMVEN='+QuotedStr(sNumVenta)+
             ' AND TIPOPE='+QuotedStr(DM1.wModulo)+
             ' AND USUVEN='+QuotedStr(dm1.wUsuario)+
             ' AND TRUNC(FECATE) = TRUNC(SYSDATE)';
       DM1.DCOM1.AppServer.EjecutaSQL(xSql);
       SEMAFORO.Brush.Color := clRed;
       btnIniAtencion.Enabled:=False;
       btnFinAtencion.Enabled:=True;
       Desbloqueamenu;
    End;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.btnFinAtencionClick(Sender: TObject);
var
  xSQL: String;
begin
   Try
      xSQL:='UPDATE TICKET_MOD_CTRL_VEN_MOV SET FLGATE=''V'''+
          ' WHERE OFIDES='+QuotedStr(DM1.xOfiDes)+
          ' AND PANTALLA='+QuotedStr(sPantalla)+
          ' AND NUMVEN='+QuotedStr(sNumVenta)+
          ' AND TIPOPE='+QuotedStr(DM1.wModulo)+
          ' AND USUVEN='+QuotedStr(dm1.wUsuario)+
          ' AND TRUNC(FECATE) = TRUNC(SYSDATE)';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      SEMAFORO.Brush.Color := clLime;
      bloqueamenu;
      btnIniAtencion.Enabled:=True;
      btnFinAtencion.Enabled:=False;
   Except
      Desbloqueamenu;
      ShowMessage( 'Error al Terminar la atención');
   End;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.btnOKClick(Sender: TObject);
var
  xSQL: String;
begin
  If Length(trim(estNumVen.Text))=0 Then
  begin
    ShowMessage('El módulo no tiene ventanilla asignada');
    exit;
  end;

  If Length(trim(dblPantalla.Text))=0 Then
  begin
    ShowMessage('Debe ingresar la Pantalla de Visualización');
    exit;
  end;

 xSQL:='SELECT OFDESID,USERID,PANTALLA,VENTANILLA,OPERACION,FECREG FROM TICKET_ASG_VEN_MOD_USU '
       +' WHERE OFDESID='+QuotedStr(DM1.xOfiDes)+ ' AND USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND OPERACION='+QuotedStr(DM1.wModulo)+' '
       +' AND PANTALLA='+QuotedStr(dblPantalla.Text)+'  AND VENTANILLA='+QuotedStr(Trim(estNumVen.Text)) ;
  DM1.cdsQry26.Close;
  DM1.cdsQry26.DataRequest(xSQL);
  DM1.cdsQry26.Open;
  If  DM1.cdsQry26.RecordCount>0 Then
  Begin
     ShowMessage('Modulo ya esta asignado a la ventanilla');
     exit;
  End;

  xSQL:='Select COUNT(1) ASIGNADOS FROM TICKET_MOD_CTRL_VEN_MOV '+
        ' WHERE OFIDES='+QuotedStr(DM1.xOfiDes)+
        ' AND PANTALLA='+QuotedStr(dblPantalla.Text)+
        ' AND   NUMVEN='+QuotedStr(estNumVen.Text)+
        ' AND   USUVEN='+QuotedStr(dm1.wUsuario)+
        ' AND TRUNC(FECATE) = TRUNC(SYSDATE)' +
        ' AND FLGATE IS NOT NULL ';
  DM1.cdsQry26.Close;
  DM1.cdsQry26.DataRequest(xSQL);
  DM1.cdsQry26.Open;

  If  DM1.cdsQry26.Fieldbyname('ASIGNADOS').AsInteger>0 Then
  BEGIN
      XSQL:= 'INSERT INTO TICKET_MOD_CTRL_VEN_MOV (OFIDES,PANTALLA, NUMVEN, TIPOPE, USUVEN, FECATE, FLGATE) VALUES ('+
             QuotedStr(DM1.xOfiDes)+','+QuotedStr(dblPantalla.Text)+','+QuotedStr(estNumVen.Text)+','+
             QuotedStr(DM1.wModulo)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr('V')+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);             
  END;
  DM1.cdsQry26.Close;

  xSQL:='Insert Into TICKET_ASG_VEN_MOD_USU(OFDESID,USERID,PANTALLA,VENTANILLA,OPERACION,FECREG) '
       +' Values('+QuotedStr(DM1.xOfiDes)+','+QuotedStr(Trim(DM1.wUsuario))+','+QuotedStr(dblPantalla.Text)+','
       + QuotedStr(Trim(estNumVen.Text))+','+QuotedStr(DM1.wModulo)+',sysdate)';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   sNumVenta := Trim(estNumVen.Text);
   sPantalla := Trim(dblPantalla.Text);

  If (length(sNumVenta)>0) And (length(sPantalla)>0) Then
  Begin
      lblNumVentanilla.Caption := 'De la Ventanilla '+sNumVenta+' -> '+sPantalla;
      pnlVentanilla.Width:=204;
      pnlVentanilla.Height:=135;
      pnlVentanilla.Enabled:=true;
      pnlAsignacion.Visible:=false;
      dblPantalla.LookupTable := nil;
      btnFinAtencion.Enabled:=False;
      bloqueamenu;
  End;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.btnCancelClick(Sender: TObject);
begin
  pnlVentanilla.Enabled:=true;
  pnlAsignacion.Visible:=false;
  dblPantalla.LookupTable := nil;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.estNumVenExit(Sender: TObject);
var
  cadena:String;
begin
  If Length(trim(estNumVen.Text))>0 Then
  begin
  cadena:=estNumVen.Text;
  estNumVen.Text:= Format('%.*d',[2,StrtoInt(cadena)]);
  end;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.btnAsignaClick(Sender: TObject);
var
  xSQL:String;
begin
  xSQL:='SELECT OPERACION FROM ASO_TICKETS_PANTALLA WHERE OFICINA='+QuotedStr(DM1.xOfiDes);
  DM1.cdsQryRegalo.close;
  DM1.cdsQryRegalo.DataRequest(xSQL);
  DM1.cdsQryRegalo.open;


  dblPantalla.LookupTable := DM1.cdsQryRegalo;
  pnlAsignacion.Visible:=true;
  pnlVentanilla.Enabled:=false;

  If Length(trim(sNumVenta))>0 Then
  begin
    btnOK.Enabled       := False;
    estNumVen.Enabled   := False;
    dblPantalla.Enabled := False;
    btnLimpiar.Enabled  := True;
  end
  else
  begin
    btnOK.Enabled       := True;
    estNumVen.Enabled   := True;
    dblPantalla.Enabled := True;
    btnLimpiar.Enabled  := False;
  end;

  estNumVen.Text:= sNumVenta;
  dblPantalla.Text:= sPantalla;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.btnLimpiarClick(Sender: TObject);
begin
  If Length(trim(estNumVen.Text))=0 Then
  begin
    ShowMessage('El módulo no tiene ventanilla asignada');
    exit;
  end;
  pnlDesasignar.Top:=532;
  pnlDesasignar.Left:=205;
  pnlDesasignar.Visible:=true;
  pnlAsignacion.Visible:=false;
  edtUsuario.Text:='';
  edtPassword.Text:='';
  dblPantalla.LookupTable := nil;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.btnDesasignarCancelClick(Sender: TObject);
begin
  pnlAsignacion.Visible:=true;
  pnlDesasignar.Visible:=false;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.btnDesasignarOKClick(Sender: TObject);
var
  xSQL:String;
  v_SOAP_CLIENT : WSAutenticacionSoap;
  AutenticarIntranetResult:Boolean;
  param1,param2,param3,param4,param5,param6 :WideString;
begin

      param1:= WideString(edtUsuario.Text);
      param2:= WideString(UpperCase(edtPassword.text));
      param3:= WideString('');
      param6:= WideString('');

      v_SOAP_CLIENT:=GetWSAutenticacionSoap(true,DM1.CrgDescrip('CODURL=' + QuotedStr('AUTORIZACION'), 'URL_WS_MAE', 'URL'),nil);
      v_SOAP_CLIENT.AutenticarIntranet(param1,param2,param3,param6,AutenticarIntranetResult,param4,param5);

      If (AutenticarIntranetResult) Then
      begin

      DM1.xOfiDes := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'OFDESID');

       xSQL:='DELETE TICKET_MOD_CTRL_VEN_MOV '+
             ' WHERE OFIDES='+QuotedStr(DM1.xOfiDes)+
             ' AND PANTALLA='+QuotedStr(sPantalla)+
             ' AND NUMVEN='+QuotedStr(sNumVenta)+
             ' AND TIPOPE='+QuotedStr(DM1.wModulo)+
             ' AND USUVEN='+QuotedStr(dm1.wUsuario);
             DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        xSQL:='DELETE TICKET_ASG_VEN_MOD_USU  '
             +' WHERE OFDESID='+QuotedStr(DM1.xOfiDes)+ ' AND USERID='+QuotedStr(Trim(DM1.wUsuario))+' AND OPERACION='+QuotedStr(DM1.wModulo)+' '
             +' AND PANTALLA='+QuotedStr(dblPantalla.Text)+'  AND VENTANILLA='+QuotedStr(Trim(estNumVen.Text)) ;
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        sNumVenta:='';
        sPantalla:='';
        Desbloqueamenu;
        lblNumVentanilla.Caption := 'Sin Asignación de Ventanilla';
        pnlVentanilla.Width:=179;
        pnlVentanilla.Height:=62;
        pnlVentanilla.Enabled:=true;
        pnlAsignacion.Visible:=false;
        pnlDesasignar.Visible:=false;
        dblPantalla.LookupTable := nil;
      End
      Else
      Begin
        MessageDlg('USUARIO Y/O CONTRASEÑA INCORRECTA', mtError, [mbYes], 0);
        Exit;
      End;

  dblPantalla.LookupTable:=nil;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.bloqueamenu;
begin
  Z1sbMaestros.Enabled    := False;
  Z1sbReportes.Enabled    := False;
  Z1sbReportes2.Enabled   := False;
  Z1sbReglas.Enabled      := False;
  Z1sbSalida.Enabled      := True;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.Desbloqueamenu;
begin
  Z1sbMaestros.Enabled    := True;
  Z1sbReportes.Enabled    := True;
  Z1sbReportes2.Enabled   := True;
  Z1sbReglas.Enabled      := True;
  If SEMAFORO.Brush.Color = clRed Then  Z1sbSalida.Enabled := False;
end;
//Fin HPC_201801_ASO

//Inicio HPC_201801_ASO
//Jerarquía del módulo del Control de Ticket
procedure TFPrincipal.estNumVenKeyPress(Sender: TObject; var Key: Char);
begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
end;
//Fin HPC_201801_ASO
Initialization
  registerclasses([TLabel, TBevel, TppLabel]);
end.


