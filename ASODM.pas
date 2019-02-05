// Inicio Uso Estándares     :   01/08/2011
// Unidad                    :   ASODM.pas
// Formulario                :   ASODM
// Fecha de Creación         :   2003
// Autor                     :   Equipo de Sistemas
// Objetivo                  :   Funciones globales

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPP_00024_ASO - 23/09/2008
// HPP_200907_ASO SAR2009-0199
// HPP_200914_ASO Memorandum 275-2009-DM-EPS - SAR-2009-0644B - DAD-DF-2009-0048
// HPP_201009_ASO , HPC_201009_ASO
// HPP_201010_ASO
// HPP_201110_ASO
// DPP_201202_ASO  Foto DNI
// DPP_201208_ASO
// HPC_201202_ASO            : 13/04/2012  DFERNANDEZ
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201211_ASO  28/12/2012  DFERNANDEZ Se deshabilitan explicitamente los controles a los que no se les dio acceso
//                                        Se registra el log de las columnas adicionales de ubicabilidad telefonica
// HPC_201301_ASO  23/01/2013  DFERNANDEZ Se agrega columna de regimen de pensionista al log
// SPP_201301_ASO  : El pase a producción se realiza sobre la base del HPC_201301_ASO
// SPP_201302_ASO  : El pase a producción se realiza sobre la base del HPC_201302_ASO
// SPP_201303_ASO  : El pase a producción se solicita a partir del HPC_201301_ASO
// HPC_201304_ASO
// SPP_201305_ASO  : Se realiza el pase a producción a partir del HPC_201304_ASO
// HPC_201306_ASO  : Se agrega un método para verificar si un usuario tiene una autorización específica
// SPP_201307_ASO  : Se realiza el pase a producción a partir del HPC_201306_ASO
// HPC_201309_ASO  : La tabla ASO_PAD_DET_HIS se usa para un padrón cerrado, sino ASO_PAD_DET
// SPP_201310_ASO  : Se realiza el pase a producción a partir del HPC_201309_ASO
// HPC_201312_ASO  : 12/11/2013 Se agrega dos variables para controlar las cargas masivas (PADRON/ONP)
// SPP_201313_ASO  : Se realiza el pase a producción a partir del HPC_201312_ASO
// HPC_201315_ASO  : Exportar a excel listado general de centros educativos
// SPP_201401_ASO  : Se realiza el pase a producción a partir del HPC_201315_ASO
// SPP_201402_ASO  : 03/02/2014 - Cambio a DBExpress y Socket
//                 : Cambio de Versión RENIEC DE 1.0 A 2.0
//                 : Se crean los client cdsTipTel01, cdsTipTel02
//SPP_201402_ASO   : Se realiza el pase a producción a partir del HPC_201401_ASO
//SPP_201403_ASO   : Nuevos set de datos para consultas
//SPP_201403_ASO   : Se realiza el pase a producción sobre el HPC_201402_ASO.
//HPC_201403_ASO   : Nuevo set de datos y se modifico funcion  CrgArea(xUsuario: String) para traer el nivel de usuario.
//SPP_201404_ASO   : Se realiza el pase a producción a partir del HPC_201403_ASO.
//HPC_201404_ASO   : Nuevo set de datos y se modifico funcion  verificahorario .
//SPP_201405_ASO   : Se realiza el pase a producción a partir del HPC_201404_ASO.
//HPC_201413_ASO   : Se modifica función que calcula la Edad del Asociado en años, meses y dias
//SPP_201410_ASO   : Se realiza el pase a producción a partir del HPC_201413_ASO.
//HPC_201501_ASO   : Nueva Opción de Contactabilidad
//HPC_201502_ASO   : Se adiciona función para que valide si el asociado tiene aportes o historial de RENIEC
//HPC_201508_ASO   : Se modifica Procedimiento para verificar si asociado tiene captura de RENIEC
//HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
//HPC_201512_ASO   : Registrar a usuario Liquidador de Beneficios
// HPC_201513_ASO     : MEJORAS PARA OPTIMIZAR OPCIONES
// HPC_201602_ASO  : Se crea funcion para validar si se ingreso un digito numerico.
// HPC_201607_ASO  : Se controla la función que muestra foto y firma en los formularios. 
// HPC_201609_ASO : Se crea clientdataset para la tabla código de prestación y código de ley de pensión.
// HPC_201610_ASO  : Tomar como un descuento  al total de la Cuenta Individual del asociado, la suma de las aplicaciones  por CCI que no estén marcadas como liquidadas.
// HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
// HPC_201702_ASO  : Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
// HPC_201710_ASO  : Implementación de la opción de generación de clave Web
// HPC_201714_ASO  : Creación de clientDataSet para Regalos
unit ASODM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient, IniFiles, MConnect, Wwdatsrc, wwclient,RecError, variants,
  DBTables, Wwquery, FileCtrl, ObjBrkr, StrContainer, Math, wwdbedit, DBGrids,
  Excel2000, OleServer,DateUtils, jpeg,rxgif,  ExcelXP,
// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
  Wwdbgrid, wwexport, shellapi, SConnect, winsock, ImageDLLLoader;
// Fin SPP_201402_ASO - Cambio a DBExpress y Socket


{ ExcelXP, Excel2000, Wwdbgrid, wwdblook, wwexport, shellapi;}

type
  structSaldosAux = Record
    CIAID,CLAUXID,AUXID,MONTOMN,MONTOME,MTOSLOC,MTOSEXT : String;
    FECHA   : TDateTime ;
  end;


  TDM1 = class(TDataModule)
    cdsCuotas: TwwClientDataSet;
    dsCuotas: TwwDataSource;
    cdsSolicitud: TwwClientDataSet;
    dsSolicitud: TwwDataSource;
    cdsAso: TwwClientDataSet;
    dsAso: TwwDataSource;
    cdsUsuarios: TwwClientDataSet;
    dsUsuarios: TwwDataSource;
    cdsGrupos: TwwClientDataSet;
    dsGrupos: TwwDataSource;
    cdsMGrupo: TwwClientDataSet;
    dsMGrupo: TwwDataSource;
    cdsAcceso: TwwClientDataSet;
    dsAcceso: TwwDataSource;
    cdsQry: TwwClientDataSet;
    dsQry: TwwDataSource;
    cdsUSES: TwwClientDataSet;
    dsUSES: TwwDataSource;
    cdsUPro: TwwClientDataSet;
    dsUPro: TwwDataSource;
    cdsUPago: TwwClientDataSet;
    dsUPago: TwwDataSource;
    cdsTResol: TwwClientDataSet;
    dsTResol: TwwDataSource;
    cdsTPension: TwwClientDataSet;
    dsTPension: TwwDataSource;
    cdsTAso: TwwClientDataSet;
    dsTAso: TwwDataSource;
    cdsSAso: TwwClientDataSet;
    dsSAso: TwwDataSource;
    cdsCEdu: TwwClientDataSet;
    dsCEdu: TwwDataSource;
    cdsCAso: TwwClientDataSet;
    dsCAso: TwwDataSource;
    cdsTUSE: TwwClientDataSet;
    dsTUSE: TwwDataSource;
    cdsCViv: TwwClientDataSet;
    dsCViv: TwwDataSource;
    cdsDpto: TwwClientDataSet;
    dsDpto: TwwDataSource;
    dsTVia: TwwDataSource;
    cdsTVia: TwwClientDataSet;
    cdsDist: TwwClientDataSet;
    dsDist: TwwDataSource;
    dsTZona: TwwDataSource;
    cdsTZona: TwwClientDataSet;
    cdsBcos: TwwClientDataSet;
    dsBcos: TwwDataSource;
    dsTDoc: TwwDataSource;
    cdsTDoc: TwwClientDataSet;
    dsUbigeo: TwwDataSource;
    cdsUbigeo: TwwClientDataSet;
    dsProvin: TwwDataSource;
    cdsProvin: TwwClientDataSet;
    dsEstCiv: TwwDataSource;
    cdsEstCiv: TwwClientDataSet;
    cdsPais: TwwClientDataSet;
    dsPais: TwwDataSource;
    dsGradoI: TwwDataSource;
    cdsGradoI: TwwClientDataSet;
    dsGradoA: TwwDataSource;
    cdsGradoA: TwwClientDataSet;
    dsProf: TwwDataSource;
    cdsProf: TwwClientDataSet;
    dsTRela: TwwDataSource;
    cdsTRela: TwwClientDataSet;
    dsSitCta: TwwDataSource;
    cdsSitCta: TwwClientDataSet;
    dsInt: TwwDataSource;
    cdsInt: TwwClientDataSet;
    dsTipAmort: TwwDataSource;
    cdsTipAmort: TwwClientDataSet;
    dsTipCuota: TwwDataSource;
    cdsTipCuota: TwwClientDataSet;
    dsTipCre: TwwDataSource;
    cdsTipCre: TwwClientDataSet;
    dsTipDesem: TwwDataSource;
    cdsTipDesem: TwwClientDataSet;
    dsSitCre: TwwDataSource;
    cdsSitCre: TwwClientDataSet;
    dsSexo: TwwDataSource;
    cdsSexo: TwwClientDataSet;
    dsAgencias: TwwDataSource;
    cdsAgencias: TwwClientDataSet;
    dsTMoneda: TwwDataSource;
    cdsTMoneda: TwwClientDataSet;
    dsFPago: TwwDataSource;
    cdsFPago: TwwClientDataSet;
    dsConsulta: TwwDataSource;
    cdsConsulta: TwwClientDataSet;
    cdsAsociados: TwwClientDataSet;
    dsAsociados: TwwDataSource;
    cdsTGarantia: TwwClientDataSet;
    dsTGarantia: TwwDataSource;
    cdsGarantia: TwwClientDataSet;
    dsGarantia: TwwDataSource;
    cdsRecursos: TwwClientDataSet;
    dsRecursos: TwwDataSource;
    cdsListaCred: TwwClientDataSet;
    dsListaCred: TwwDataSource;
    cdsRefTipoCre: TwwClientDataSet;
    dsRefTipoCre: TwwDataSource;
    cdsAsoX: TwwClientDataSet;
    dsAsoX: TwwDataSource;
    cdsUSESx: TwwClientDataSet;
    dsUSESx: TwwDataSource;
    cdsUSESy: TwwClientDataSet;
    dsUSESy: TwwDataSource;
    cdsAbonoCuotas: TwwClientDataSet;
    dsAbonoCuotas: TwwDataSource;
    cdsAbonoCreditos: TwwClientDataSet;
    dsAbonoCreditos: TwwDataSource;
    cdsFormaPago: TwwClientDataSet;
    dsFormaPago: TwwDataSource;
    cdsExtornoPCab: TwwClientDataSet;
    dsExtornoPCab: TwwDataSource;
    cdsAsociados1: TwwClientDataSet;
    dsAsociados1: TwwDataSource;
    cdsTMone: TwwClientDataSet;
    dsTmone: TwwDataSource;
    cdsReclamo: TwwClientDataSet;
    dsreclamo: TwwDataSource;
    cdsUSE: TwwClientDataSet;
    dsUSE: TwwDataSource;
    cdsTransCre: TwwClientDataSet;
    dstransCre: TwwDataSource;
    cdsReporteExtorno: TwwClientDataSet;
    dsReporteExtorno: TwwDataSource;
    cdsExtornoPDet: TwwClientDataSet;
    dsExtornoPDet: TwwDataSource;
    cdsTCredito: TwwClientDataSet;
    dsTCredito: TwwDataSource;
    cdsReclamoDCre: TwwClientDataSet;
    dsReclamoDCre: TwwDataSource;
    cdsReclamo1: TwwClientDataSet;
    dsReclamo1: TwwDataSource;
    cdscarta: TwwClientDataSet;
    dscarta: TwwDataSource;
    cdsCbcos: TwwClientDataSet;
    dsCbcos: TwwDataSource;
    cdsReclamoMotiv: TwwClientDataSet;
    dsReclamoMotiv: TwwDataSource;
    cdsDevolucionCre: TwwClientDataSet;
    dsDevolucionCre: TwwDataSource;
    cdsTransDevol: TwwClientDataSet;
    dsTransDevol: TwwDataSource;
    cdsTransacciones: TwwClientDataSet;
    dsTransacciones: TwwDataSource;
    cdsAgenciaBco: TwwClientDataSet;
    dsAgenciaBco: TwwDataSource;
    cdsParam: TwwClientDataSet;
    dsParam: TwwDataSource;
    cdsDeltaSet: TwwClientDataSet;
    dsDeltaSet: TwwDataSource;
    cdsResultSet: TwwClientDataSet;
    cdsNotaAbono: TwwClientDataSet;
    dsNotaAbono: TwwDataSource;
    cdsOficio: TwwClientDataSet;
    dsOficio: TwwDataSource;
    cdsReporte1: TwwClientDataSet;
    dsReporte1: TwwDataSource;
    cdsCreditoCab: TwwClientDataSet;
    dscreditocab: TwwDataSource;
    cdsCia: TwwClientDataSet;
    dsCia: TwwDataSource;
    cdsTRFCreditos: TwwClientDataSet;
    cdsTRFAso: TwwClientDataSet;
    cdsTRFCronog: TwwClientDataSet;
    cdsTRFPagos: TwwClientDataSet;
    dsTRFAso: TwwDataSource;
    dsTRFCronog: TwwDataSource;
    dsTRFPagos: TwwDataSource;
    dsTRFCreditos: TwwDataSource;
    cdsClientes: TwwClientDataSet;
    dsClientes: TwwDataSource;
    cdsPagos: TwwClientDataSet;
    dsPagos: TwwDataSource;
    cdsPrestamos: TwwClientDataSet;
    dsPrestamos: TwwDataSource;
    cdsDetPagos: TwwClientDataSet;
    dsDetPagos: TwwDataSource;
    cdsDLabo: TwwClientDataSet;
    dsDLabo: TwwDataSource;
    cdsDFam: TwwClientDataSet;
    dsDFam: TwwDataSource;
    cdsResol: TwwClientDataSet;
    dsResol: TwwDataSource;
    cdsCtasBco: TwwClientDataSet;
    dsCtasBco: TwwDataSource;
    dsCuentaEst: TwwDataSource;
    cdsCuentaEst: TwwClientDataSet;
    cdsDSocioE: TwwClientDataSet;
    dsDSocioE: TwwDataSource;
    cdsReporte: TwwClientDataSet;
    dsReporte: TwwDataSource;
    cdsQry1: TwwClientDataSet;
    dsQry1: TwwDataSource;
    cdsQry2: TwwClientDataSet;
    dsQry2: TwwDataSource;
    cdsBcoAgencia: TwwClientDataSet;
    dsBcoAgencia: TwwDataSource;
    cdsRelCapCuo: TwwClientDataSet;
    dsRelCapCuo: TwwDataSource;
    cdsTipCreA: TwwClientDataSet;
    dsTipCreA: TwwDataSource;
    cdsListaCreA: TwwClientDataSet;
    dsListaCreA: TwwDataSource;
    cdsQry4: TwwClientDataSet;
    dsQry4: TwwDataSource;
    dsOfDes: TwwDataSource;
    cdsSaldoTlfnGrab: TwwClientDataSet;
    dsSaldoTlfnGrab: TwwDataSource;
    cdsRegCxP: TwwClientDataSet;
    dsRegCxP: TwwDataSource;
    cdsOfdes: TwwClientDataSet;
    cdsQry3: TwwClientDataSet;
    dsQry3: TwwDataSource;
    dsInconsis: TwwDataSource;
    qryDBF: TwwQuery;
    cdsUser: TwwClientDataSet;
    dsUser: TwwDataSource;
    cdsQry5: TwwClientDataSet;
    dsQry5: TwwDataSource;
    cdsQry6: TwwClientDataSet;
    cdsQry7: TwwClientDataSet;
    dsQry6: TwwDataSource;
    dsQry7: TwwDataSource;
    cdsCNTCaja: TwwClientDataSet;
    dsCNTCaja: TwwDataSource;
    cdsEgrCaja: TwwClientDataSet;
    dsEgrCaja: TwwDataSource;
    cdsRec: TwwClientDataSet;
    dsRec: TwwDataSource;
    cdsUsuarioAct: TwwClientDataSet;
    cdsEstado: TwwClientDataSet;
    cdsClientes2: TwwClientDataSet;
    dsClientes2: TwwDataSource;
    cdsMovCnt1: TwwClientDataSet;
    cdsPadre: TwwClientDataSet;
    dsPadre: TwwDataSource;
    cdsHijo: TwwClientDataSet;
    dsHijo: TwwDataSource;
    cdsNieto: TwwClientDataSet;
    dsNieto: TwwDataSource;
    cdsCuentas: TwwClientDataSet;
    dsCuentas: TwwDataSource;
    cdsClaCre: TwwClientDataSet;
    dsMovCnt1: TwwDataSource;
    WS: TExcelWorksheet;
    ExcelBook: TExcelWorkbook;
    ExcelApp: TExcelApplication;
    cdsQry20: TwwClientDataSet;
    dsQry20: TwwDataSource;
    cdsQry22: TwwClientDataSet;
    dsQry22: TwwDataSource;
    cdsQry21: TwwClientDataSet;
    dsQry21: TwwDataSource;
    cdsDetalle: TwwClientDataSet;
    dsDetalle: TwwDataSource;
    cdsSobrino: TwwClientDataSet;
    dsSobrino: TwwDataSource;
    dsCtaIndResAnoAnt: TwwDataSource;
    cdsCtaIndResAnoAnt: TwwClientDataSet;
    cdsQry8: TwwClientDataSet;
    dsQry8: TwwDataSource;
    cdsQry24: TwwClientDataSet;
    dsQry24: TwwDataSource;
    cdsQry19: TwwClientDataSet;
    dsQry19: TwwDataSource;
    cdsQry25: TwwClientDataSet;
    dsQry25: TwwDataSource;
    cdsAsociado: TwwClientDataSet;
    dsAsociado: TwwDataSource;
    cdsCueInd: TClientDataSet;
    dsCueInd: TDataSource;
    cdsestapo: TClientDataSet;
    dsestapo: TDataSource;
    cdsExpLiq: TwwClientDataSet;
    dsExpLiq: TwwDataSource;
    cdsOficina: TwwClientDataSet;
    dsOficina: TwwDataSource;
    cdsDbgCPass: TwwClientDataSet;
    dsDbgCPass: TwwDataSource;
    cdsCPass3: TwwClientDataSet;
    dsCPass3: TwwDataSource;
    cdsPass3: TwwClientDataSet;
    dsPass3: TwwDataSource;
    cdscliente3: TwwClientDataSet;
    dscliente3: TwwDataSource;
    cdsCreditos: TwwClientDataSet;
    dsCreditos: TwwDataSource;
    cdsPadron1: TwwClientDataSet;
    dsPadron1: TwwDataSource;
    cdsPadron2: TwwClientDataSet;
    dsPadron2: TwwDataSource;
    cdsInconsistencia: TwwClientDataSet;
    dsInconsistencia: TwwDataSource;
    cdsPadrones: TwwClientDataSet;
    dsPadrones: TwwDataSource;
    cdsEstPadron: TwwClientDataSet;
    dsEstPadron: TwwDataSource;
    cdsCarLab: TwwClientDataSet;
    dsCarLab: TwwDataSource;
    cdsRegPen: TwwClientDataSet;
    dsRegPen: TwwDataSource;
    cdsPlanilla: TwwClientDataSet;
    dsPlanilla: TwwDataSource;
    cdsSitLab: TwwClientDataSet;
    dsSitLab: TwwDataSource;
    cdsUgelPadron: TwwClientDataSet;
    dsUgelPadron: TwwDataSource;
    cdsTipSer: TwwClientDataSet;
    dsTipSer: TwwDataSource;
    cdsCtaIndEstad: TwwClientDataSet;
    dsCtaIndEstad: TwwDataSource;
    cdsCtaIndCab: TwwClientDataSet;
    dsCtaIndCab: TwwDataSource;
    cdsCtaIndAnoAct: TwwClientDataSet;
    dsCtaIndAnoAct: TwwDataSource;
    cdsCtaIndApoCes: TwwClientDataSet;
    dsCtaIndApoCes: TwwDataSource;
    //Inicio SPP_201302_ASO
    cdsPropTel1: TwwClientDataSet;
    dsPropTel1: TwwDataSource;
    cdsPropTel2: TwwClientDataSet;
    dsPropTel2: TwwDataSource;
    //Fin SPP_201302_ASO
    // Inicio: SPP_201303_ASO
    cdsLeyPen: TwwClientDataSet;
    dsLeyPen: TwwDataSource;
    // Inicio: SPP_201305_ASO
    cdsUnidadPago: TwwClientDataSet;
    dsUnidadPago: TwwDataSource;
    cdsUnidadProceso: TwwClientDataSet;
    dsUnidadProceso: TwwDataSource;
    cdsUgel: TwwClientDataSet;
    dsUgel: TwwDataSource;
    cdsDepartamento: TwwClientDataSet;
    dsDepartamento: TwwDataSource;
    dsFsc01: TwwDataSource;
    cdsFsc01: TwwClientDataSet;
    cdsFsc02: TwwClientDataSet;
    dsFsc02: TwwDataSource;
    cdsFsc03: TwwClientDataSet;
    dsFsc03: TwwDataSource;
    cdsAutDesONP: TwwClientDataSet;
    dsAutDesONP: TwwDataSource;
    cdsCorrONP: TwwClientDataSet;
    dsCorrONP: TwwDataSource;
    cdsAutDesReg: TwwClientDataSet;
    dsAutDesReg: TwwDataSource;
    cdsExpCenEdu: TwwClientDataSet;
    dsExpCenEdu: TwwDataSource;
// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
    DCOM1: TSocketConnection;
    cdsTipTel02: TwwClientDataSet;
    dsTipTel02: TwwDataSource;
    cdsTipTel01: TwwClientDataSet;
    dsTipTel01: TwwDataSource;
    cdsUsuarioBloq: TwwClientDataSet;
    dsUsuarioBloq: TwwDataSource;
    cdsCamposValida: TwwClientDataSet;
    dsCamposValida: TwwDataSource;
    cdsOfidesAso: TwwClientDataSet;
    dsOfidesAso: TwwDataSource;
    cdsVAL_DAT_ASO: TwwClientDataSet;
    dsVAL_DAT_ASO: TwwDataSource;
    // Inicio: SPP_201403_ASO
    cdsValRegAso: TwwClientDataSet;
    dsValRegAso: TwwDataSource;
    cdsCodLeyPen: TwwClientDataSet;
    dsCodLeyPen: TwwDataSource;
    // Fin: SPP_201403_ASO
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket
    //--Inicio: SPP_201404_ASO--//
    dsTipoGes: TwwDataSource;
    cdsTipoGes: TwwClientDataSet;
    dsEstadoAsig: TwwDataSource;
    cdsEstadoAsig: TwwClientDataSet;
    dsResponsable: TwwDataSource;
    cdsResponsable: TwwClientDataSet;
    dsConsultaCartera: TwwDataSource;
    cdsConsultaCartera: TwwClientDataSet;
    dsColegio: TwwDataSource;
    cdsColegio: TwwClientDataSet;
    dsTemp: TwwDataSource;
    cdsTemp: TwwClientDataSet;
    dsConsultaHoja: TwwDataSource;
    cdsConsultaHoja: TwwClientDataSet;
    cdsConsultaHojaDet: TwwClientDataSet;
    dsConsultaHojaDet: TwwDataSource;
    cdsResultado: TwwClientDataSet;
    dsResultado: TwwDataSource;
    cdsConsultaResult: TwwClientDataSet;
    dsConsultaResult: TwwDataSource;
    dsNivelCono: TwwDataSource;
    cdsNivelCono: TwwClientDataSet;
    dsNivelSat: TwwDataSource;
    cdsNivelSat: TwwClientDataSet;
    //--Fin: SPP_201404_ASO--//
    //--Inicio:SPP_201405_ASO--//
    cdsFiltro1: TwwClientDataSet;
    dsFiltro1: TwwDataSource;
    cdsFiltro2: TwwClientDataSet;
    dsFiltro2: TwwDataSource;
    cdsFiltro3: TwwClientDataSet;
    dsFiltro3: TwwDataSource;
    cdsFiltro4: TwwClientDataSet;
    dsFiltro4: TwwDataSource;
    cdsFiltro5: TwwClientDataSet;
    dsFiltro5: TwwDataSource;
    cdsConsulta1: TwwClientDataSet;
    dsConsulta1: TwwDataSource;
    cdsConsulta2: TwwClientDataSet;
    dsConsulta2: TwwDataSource;
    cdsConsulta3: TwwClientDataSet;
    dsConsulta3: TwwDataSource;
    cdsConsulta4: TwwClientDataSet;
    dsConsulta4: TwwDataSource;
    cdsConsulta5: TwwClientDataSet;
    dsConsulta5: TwwDataSource;
    cdsTemp2: TwwClientDataSet;
    dsTemp2: TwwDataSource;
    cdsTemp3: TwwClientDataSet;
    dsTemp3: TwwDataSource;
    //--Fin:SPP_201405_ASO--//
// Inicio  HPC_201501_ASO   : Nueva Opción de Contactabilidad
    cdsDocPago: TwwClientDataSet;
    dsDocPago: TwwDataSource;
// Fin     HPC_201501_ASO   : Nueva Opción de Contactabilidad
//Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
    cdsRepCCIDet: TwwClientDataSet;
    dsRepCCIDet: TwwDataSource;
    cdsRepCCI: TwwClientDataSet;
    dsRepCCI: TwwDataSource;
    // Inicio: HPC_201609_ASO
    // Se crea client para el codigo de prestación
    cdsCodPrestacion: TwwClientDataSet;
    dsCodPrestacion: TwwDataSource;
    cdsAutCADAPS: TwwClientDataSet;
    dsAutCADAPS: TwwDataSource;
    // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
	cdsResolucionHist: TwwClientDataSet;
    dsResolucionHist: TwwDataSource;
    //Inicio HPC_201702_ASO
    //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
    dsCabLiq: TwwDataSource;
    cdsCabLiq: TwwClientDataSet;
    cdsQry26: TwwClientDataSet;
    dsQry26: TwwDataSource;
    cdsQry23: TwwClientDataSet;
    dsQry23: TwwDataSource;
    cdsBanco: TwwClientDataSet;
    dsBanco: TwwDataSource;
    cdsTipoMoneda: TwwClientDataSet;
    dsTipoMoneda: TwwDataSource;
    dsFonSol: TDataSource;
    cdsFonSol: TClientDataSet;
    cdsFonSolDet: TwwClientDataSet;
    dsFonSolDet: TwwDataSource;
    cdsTipBenef: TwwClientDataSet;
    dsTipBenef: TwwDataSource;
    cdsAgBco: TwwClientDataSet;
    dsAgBco: TwwDataSource;
    cdsQry15: TwwClientDataSet;
    dsQry15: TwwDataSource;
    dsQry10: TwwDataSource;
    cdsQry10: TwwClientDataSet;
    cdsMaestCartas: TwwClientDataSet;
    dsMaestCartas: TwwDataSource;
    cdsDetCartas: TwwClientDataSet;
    dsDetCartas: TwwDataSource;
    dsDetCalLiq: TDataSource;
    cdsDetCalLiq: TClientDataSet;
    dsDetDev: TDataSource;
    cdsDetDev: TClientDataSet;
    dsDetDes: TDataSource;
    cdsDetDes: TClientDataSet;
    dsForPag: TDataSource;
    cdsForPag: TClientDataSet;
    dsRetJud: TDataSource;
    cdsRetJud: TClientDataSet;
    dsObs: TDataSource;
    cdsObs: TClientDataSet;
// Inicio HPC_201714_ASO
// Creación de clientDataSet para Regalos
    cdsQryRegalo: TwwClientDataSet;
    dsQryRegalo: TwwDataSource;
// Fin HPC_201714_ASO
    //Final HPC_201702_ASO
    // Fin: HPC_201609_ASO
	// Fin HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

//Fin HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI

    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure AplicaDatos(wCDS: TClientDataSet; wNomArch : String);
    procedure ControlTran;
    procedure Filtracds(xxCds: TwwClientDataSet; xxSQL: String);
    procedure cdsTipCreReconcileError(DataSet: TClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
    Procedure Accesos;
    procedure cdsClientes2ReconcileError(DataSet: TClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsCuotasReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    //Inicio HPC_201702_ASO
    //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
    procedure cdsMaestCartasReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    //Final HPC_201702_ASO
  private
    { Private declarations }
    FormatCel: array of OleVariant;
  public
    { Public declarations }

  //Inicio HPC_201702_ASO
  //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
  montoDevolucion,montoDescuento,totalMontoFormadePago,totalMontoDescuento,montoRetencion,montoTransferencia : Double;
  cntanomm,numeroLiquidacion,numeroVoucherLib,numeroVoucher,cobraconcarta : String;
  bmk: TBookmark;
  anoinicial, mesinicial, diainicial: Word;
  //Final HPC_201702_ASO  
// Inicio HPC_201501_ASO   : Nueva Opción de Contactabilidad
    xNuevo : String;
// Fin    HPC_201501_ASO   : Nueva Opción de Contactabilidad

// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
    cIP, wOfiId, widepc, ideconex, fechorcon :String;
// Fin SPP_201402_ASO - Cambio a DBExpress y Socket

    wObjetoDescr: String;
    wObjetoForma: String;
    wObjetoNombr: String;
    wObjetoDesPr: String;
    wcomputadora:String;
    wofides:string;
    sGrid:string;
    wGrupoTmp, wRepFecServ,xentra,xasoapenom : String;
    wSRV,wNomUsu,wModulo,wAdmin, wUsuario,wGrupo,xSQL2 :string;
    sClose,wMonedaNac,wMonedaExt, wModo :string;
    wTMonExt   : string; // Tipo de Moneda extranjera oficial (normalmente dólares)
    wTMonLoc,wtipocambio   : string;
 		wComponente  : TControl;
    wTipoCambioUsar,wTMonLo,wTMonEx,wTCCompra,wTCVenta : String;
    Jpg,jpgFirma: TJpegImage;
    gif,gifFirma: TGIFImage;
    Stream,StreamFirma: TMemoryStream;
    xNumero, xArea,xCnd,xSal,xGrabaExc,xSgr,xOfiDes,xInsert,xFto,xFma,xDNI,xautdes:String;
    xsindata:integer;
    vanos,vmeses,vdias:currency;

    sAPO201, sAso_where : String;
    sResolucion, sReso_where : String;
// Inicio: SPP_201310_ASO
    sTablaPadron: string;
    sTablaLogPadron: string;
// Fin: SPP_201310_ASO

//Inicio: SPP_201313_ASO
    sTipoCarga: string;  // Variable para controlar si los forms "fimptexto, Fproinfmig" se usan para carga de PADRON o para carga de ONP
    sFormaPara: string;  // Variable para controlar la forma Fgenenvioonp, si es nuevo o consulta.
//Fin: SPP_201313_ASO

// variables para llamar a Cuenta Individual
    asoresnom, asorescese, asofresnom, asofrescese, tipben, anoultapo, mesultapo : String;
    xAnoMesAct, xanomesultapo, xanomestop, xpvslbennr, tTiempoTranscurrido : String;
    liquidacionbeneficio, aportesCtaInd, interesesCtaInd, bonusCtaInd, calculoA1996CtaInd : double;
    anoServicio, anosTranscurridos, mesesTranscurridos, diasTranscurridos, edadInvalidez : double;
    montoTabRet, montoTabCap, montoTabSep, montoTabInv, montoUIT, montoDiferencial, cantidadUIT: Double;
    anoFinal, mesFinal, diaFinal: Word;

    jpgFoto: TJpegImage;
    // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    dFundacionDerrama : TDate ;
    // Fin HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    function UltProceso:String;
    function PorGen:Currency;
    function CalculaEdad(FechaNacimiento:string):integer;
    function AsoClfCan(xAsoid:String):Char;
    function AsoClfPen(xAsoid,xPeriodo:String):Char;
    function DisplayDescrip(wPrv,wTabla,wCampos,wWhere,wResult:string):string;
  	 Function NumtoStr(wNumero:double):string;							// funcion convierte numero a caracteres
    function MaxSQL(const sTabla, sMxCampo,sWhere : String): String;
    function StrZero(wNumero:String;wLargo:Integer):string;
    function OperClientDataSet( cdsOrigen : TwwClientDataSet; wExpresion, wCondicion : String  ) : Double;
    procedure FiltraTabla( xxCds:TwwClientDataSet; xxArchivo,xxCampo:String  );
    procedure FiltraTablaRemoto( xxCds:TwwClientDataSet; xxArchivo, xxCampo, xxFilter : String  );
    function MaxValue(const sDetail : String; CD : TDataSet ): String;
    function BuscaCodMod(const sTabla, sMxCampo: String): String;
    function BuscaObjeto( Const xNombre:String; xForm:TForm):TControl;
    procedure AccesosUsuariosR(xxModulo,xxUsuario,xxTipo:String; xxForma:TForm);
    procedure AccesosUsuarios(xxModulo,xxUsuario,xxTipo,xxForma:String);
    procedure RecUltTipoCambio(var xFecha: string);
    procedure ActualizaTablasRemoto( wTabla : String );
    function VerificaAcceso(Pass, EncDes : string): string;
    function  RecuperarTipoCambio(xFecha : TDateTime ): String ;
    procedure LimpiaDatos();
    procedure CrgDatos();
    procedure BlqComponentes(xForm:tForm);
    function CrgDescrip(xCondicion, xTabla, xCampo :String):String;
    function FechaSys(): tDateTime;
    function FechasOutPut(xFInput : tDateTime): tDateTime;
    procedure CrgLisFrmPag();
    function DesMes(xMes:Integer; xAbr:Char):String;
    Function StrSpace(wNumero:String;wLargo:Integer):string;
    Function StrSpaceD(wNumero:String;wLargo:Integer):string;
    function xIntToLletras(Numero:LongInt;Dec:Real):String;
    function Valores(Texto:String):Currency;
    function CalSalPag(xAsoid, xCreDid, xFecCalCulo, xCreCuota, xCnd, xFrmPag :String ):Currency;
    procedure CargaCronograma(xAsoId, xCreDid : String );
    procedure AplicaSaldoPre(xAsoId, xCreDid : String );
    function SaldoActual(xAsoId, xCreDid, xTip  : String ): Currency ;
    function SaldoTotal(xAsoId, xCreDid : String ): Currency ;
    procedure ActSaldoPrest(xAsoId: String );
    function CrgArea(xUsuario:String ):String;
    function CalSaldo(xAsoid:String ;xFecCalCulo:String):Currency;
    function TipDes(xTipPre:String):String;
    function CalculaCuota(xTas_Int , xTas_Flt ,xMonOto: Real ; xNumCuo : Integer):Currency;
    function RecuperaDatos(xTabla, xCampo, xVariable , xRecupera : String): String;
    function UltimoDia(xMes:Integer; xAno:Integer):String;
    procedure GnrCronograma(xAsoid, xCredId: String ; xTas_Int , xTas_Flt ,xMonOto: Real ; xFec_Pre : tDateTime ; xNumCuo : Integer);
    function IniFinCrono(xFec_Pre:tDateTime ; xNum_Cuo: Integer; xPrdGra,xTipPre:String):String;
    function NroSrb(xTabla:String):String;
    function FechaHora():String;
    procedure HojaExcel(Tit: string; TDs: TDataSource; TDb: TDBGrid);
    procedure FormatosCeldas(N: Integer ; TDs: TDataSource);
    function AsignaAsoId(xTabla:String):String;
    function AsignaNroAux(xTabla,xAsoCodMod:String):String;
// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
    //function ComputerName: string;
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket
    function tiempoTranscurrido(fechaFinal, fechaInicial: TDate): String;
    //Inicio HPC_201702_ASO
    //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
    Function tiempoTranscurridoPRE(fechaFinal, fechaInicial: TDate; xflg: String): String;
    //Final HPC_201702_ASO
    function UsrConsulta(xUsuario:String):Boolean;
    procedure Registro_Aud(xAsoId,xSecuencia,xCodReg:String);
    Function CodReg():String;
    function  verificahorario: Boolean;
    function CountReg(xSQL:String):Integer;
    procedure ExportaGridExcel(xDataGrid: TwwDBGrid; xFileName: String);
    Function NombreMes(wwMes: String): String;
    Function calculamontodecese(xasofresnom, xasofresces, xtipben: String): double;
    Function DevuelveValor(xTabla, xValor, xLlave, xId: String): String;

    // Inicio: HPC_201602_ASO
    // Se crea funcion para validar si un texto es numero
    Function ValidaSiNumero(xnumero:String):Boolean;
    // Fin: HPC_201602_ASO



    Function IndicaAsociadoEnAct(wwAsoid:String):Boolean;
    function ObtenerCODSEC(xCODPAD: String; xCODITEM: integer): integer;
    procedure CargaImagenesDNI(wsDNI, wsOrigen: String);
    // Inicio: SPP_201307_ASO
    function TieneAutorizacion(xGrupo, xTabla, xUsuario: string): boolean;
    // Fin: SPP_201307_ASO

// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
    function ObtenerIpdeNetbios(Host: string): string;
    function ComputerName: string;
    procedure Abrir_Tablas;
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket

//--Inicio: SPP_201404_ASO--//
    Procedure LimpiaClientDataset(cds : TwwClientDataSet);
//--Fin: SPP_201404_ASO--//

    // Inicio HPC_201501_ASO   : Nueva Opción de Contactabilidad
    Function NivelUsuario(xUser : String) : String;
    function fn_valida_email(p_cadena: string): boolean;
    // Fin    HPC_201501_ASO   : Nueva Opción de Contactabilidad

   //Inicio HPC_201502_ASO
   Function validaAso_Old(xASOID,xAsoDNI:String):boolean;
   Function VerDNICaduco(vDNI: String): String;
   Function ValidaAutoCtas(xAsoid: String): Boolean;
    //Final HPC_201502_ASO
// Inicio HPC_201510_ASO : Agregar en Consultas aplicaciones de CCI
    procedure ResumenCCI(xAsoid: String);
    procedure DetalleCCI(xAsoid: String);
// fin  HPC_201510_ASO : Agregar en Consultas aplicaciones de CCI
// Inicio HPC_201512_ASO   : Registrar a usuario Liquidador de Beneficios
    Function UsuarioLiquidador( vUsuario : String ) : Boolean;
// Fin  HPC_201512_ASO   : Registrar a usuario Liquidador de Beneficios
    // INICIO HPC_201513_ASO
    function FG_VALIDA_CODIGO_MODULAR(psCodigoModular: String): boolean;
    procedure FG_CONECTA_CDS(var pxCdsQry: TwwClientDataSet;
      var pxDsQry: TwwDataSource);
    // FIN HPC_201513_ASO
    //Inicio HPC_201702_ASO
    //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
    Function Desubigeo(vUbigeo: String): String;
    Function Desuse(vuse, vupagoid, vuproid: String): String;
    Procedure CargaImagenes(xAsodni:String);
    Procedure formadepago(xAsoid: String);
    Function Gennumliq(): String;
    Procedure Grabafamiliares(xAsoid: String);
    Function Gennumvou(): String;
    Function verificaexiste(xSql: String): Boolean;
    Procedure actualizapvs301(xasoid, xnumexp: String);
    //Final HPC_201702_ASO
  end;
var
  DM1: TDM1;
  sSQL, xBorrar : String;
  xLogAsoid, xLogCodMo : Integer;
  SRV_E, SRV_D, SRV_V, wRptCia, wRutaRpt :string;
  wRepHorServi,wRepFuncDate,wFormatFecha,wReplacCeros,wRepFecServi:string;
  ErrorCount : Integer;
  wRutaFTP : String;

  procedure cdsPost(xxCds: TwwClientDataSet);
  function FRound(xReal:currency;xEnteros,xDecimal:Integer):double;
  function GetSystemTimeUTC : String;
  function DisplayDescripCds( wwCds: TwwClientDataSet; wWhere, wResult : string; wLiberar : Boolean ) : string;

implementation

{$R *.DFM}

// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
// Inicio: HPC_201607_ASO
// Se añade unidad Recepción de CADAPS
// uses MsgDlgs, ASO001, ASO900  , COB903, ASO260, ASO020;
uses MsgDlgs, ASO001, ASO900  , COB903, ASO260, ASO020, ASO262;
// Fin: HPC_201607_ASO

// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket

// Inicio HPC_201501_ASO   : Nueva Opción de Contactabilidad
Function TDM1.NivelUsuario(xUser : String) : String;
Var
   xSQL : String;
Begin
   xSQL := 'SELECT USERNIV FROM GES_NIV_USU_OTO WHERE USERID=' + QuotedStr(xUser);
   DM1.cdsNieto.Close;
   DM1.cdsNieto.DataRequest(xSQL);
   DM1.cdsNieto.Open;
   Result := '';
   If DM1.cdsNieto.RecordCount > 0 Then
   Begin
      Result := DM1.cdsNieto.FieldByName('USERNIV').AsString;
   End;
   DM1.cdsNieto.Close;
End;
// Fin    HPC_201501_ASO   : Nueva Opción de Contactabilidad

// Inicio HPC_201501_ASO   : Nueva Opción de Contactabilidad
function TDM1.fn_valida_email(p_cadena : string): boolean;
  // Valida la dirección de email
  FUNCTION CheckAllowed(CONST s: String): boolean;
  VAR i: Integer;
  BEGIN
    Result:= False;
    FOR i:= 1 TO Length(s) DO // illegal char in s -> no valid address
    IF NOT (s[i] IN ['a'..'z','A'..'Z','0'..'9','_','-','.']) THEN Exit;
    Result:= true;
  END;
VAR
  i,len: Integer;
  namePart, serverPart: String;
BEGIN // of IsValidEmail
  Result:= False;
  i:= Pos('@', p_cadena);
  IF (i=0) OR (Pos('..',p_cadena) > 0) THEN Exit;
  namePart:= Copy(p_cadena, 1, i - 1);
  serverPart:= Copy(p_cadena,i+1,Length(p_cadena));
  len:=Length(serverPart);
  // must have dot and at least 3 places from end, 2 places from begin
  IF (len<4) OR
     (Pos('.',serverPart)=0) OR
     (serverPart[1]='.') OR
     (serverPart[len]='.') OR
     (serverPart[len-1]='.') THEN Exit;
  Result:= CheckAllowed(namePart) AND CheckAllowed(serverPart);
end;
// Fin   HPC_201501_ASO   : Nueva Opción de Contactabilidad


// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
procedure TDM1.Abrir_Tablas;
var
  xSQL : String;
begin
// 1

            xSQL:='SELECT * FROM TGE158';
            DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
            DM1.cdsRec.Close;  DM1.cdsRec.DataRequest(xSQL);   DM1.cdsRec.Open;
            xSQL:='SELECT ID,DESCRIP FROM TGE817 ';
            DM1.cdsSexo.Close;
            DM1.cdsSexo.DataRequest(xSQL);
            DM1.cdsSexo.Open;

// 2
            xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
            DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;
            // Inicio: SPP_201303_ASO
            xSQL:='SELECT CODLEYPEN, DESLEYPEN FROM ASO_LEY_PEN_MAE ORDER BY CODLEYPEN';
            DM1.cdsLeyPen.Close; DM1.cdsLeyPen.DataRequest(xSQL);  DM1.cdsLeyPen.Open;
            // Fin: SPP_201303_ASO
            xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE CLAUXID=''A'' ';
            DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;
            xSQL:='SELECT UPROID,UPRONOM FROM APO102';
            DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL);  DM1.cdsUPro.Open;
            xSQL:='SELECT UPROID,UPAGOID,UPAGONOM FROM APO103';
            DM1.cdsUPago.Close; DM1.cdsUPago.DataRequest(xSQL); DM1.cdsUPago.Open;
            //Cambio pase HPP_00024_ASO - 23/09/2008
            xSQL:='SELECT UPROID,UPAGOID,USEID,USENOM FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N''';
            DM1.cdsUSE.Close; DM1.cdsUSE.DataRequest(xSQL); DM1.cdsUSE.Open;

// 3
     DM1.cdsOfidesAso.Close;
     DM1.cdsOfidesAso.DataRequest('SELECT VALDATASO,ACTDATREN FROM APO110 WHERE OFDESID=''' + DM1.xOfiDes + ''' ');
     DM1.cdsOfidesAso.Open;

end;
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket


// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
function TDM1.ObtenerIpdeNetbios(Host: string): string;
var
  WSAData: TWSADATA;
  HostEnt: phostent;
begin
  Result:= '';
  if WSAStartup(MAKEWORD(1, 1), WSADATA) = 0 then
  begin
    HostEnt:= gethostbyname(PChar(Host));
    if HostEnt <> nil then
      Result:= String(inet_ntoa(PInAddr(HostEnt.h_addr_list^)^));
    WSACleanup;
  end;
end;
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket


// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
function TDM1.ComputerName: string;
var
  Buffer: array[ 0..100 ] of Char;
  MaxSize: Cardinal ;
begin
  MaxSize := SizeOf( Buffer );
  if not GetComputerName( @Buffer, MaxSize ) then
    raise Exception.Create( 'No puedo determinar el nombre de la máquina' );
  Result := StrPas( @Buffer );
end;
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket



function DisplayDescripCds( wwCds: TwwClientDataSet; wWhere, wResult : string; wLiberar : Boolean ) : string;
var
  xxCdsTmp : TwwClientDataSet;
begin
  xxCdsTmp := TwwClientDataSet.Create( nil );
  xxCdsTmp.Data := wwCds.Data;
  xxCdsTmp.Filtered:=False;
  xxCdsTmp.Filter:='';
  xxCdsTmp.Filter:=wWhere;
  xxCdsTmp.Filtered:=True;
  result:=xxCdsTmp.FieldByName(wResult).Asstring;
  xxCdsTmp.Free
end;

function FRound(xReal:currency;xEnteros,xDecimal:Integer):double;
Var
   xNum,xParteEnt,xParteDec,xflgneg   : String;
   xDec,Code: Integer;
   xMultiplo10, xUltdec, xNReal : Double;
begin
   Result:=0; //ypb 16/7/2001
   xflgneg:='0';
   if xReal<0 then
   begin
   xflgneg:='1';
   xReal:=xReal*-1;
   end;
   if xReal=0 then exit;
   // primer redondeo a un decimal + de lo indicado en los parámetros
   xDec := xDecimal+1;
   if xDec=0 then xMultiplo10:=1;
   if xDec=1 then xMultiplo10:=10;
   if xDec=2 then xMultiplo10:=100;
   if xDec=3 then xMultiplo10:=1000;
   if xDec=4 then xMultiplo10:=10000;
   if xDec=5 then xMultiplo10:=100000;
   if xDec=6 then xMultiplo10:=1000000;
   if xDec=7 then xMultiplo10:=10000000;
   xParteDec := floattostr(int(xReal*xMultiplo10 - (int(xReal)*xMultiplo10)));
   if length(xParteDec)<xDec then xParteDec:=DM1.strZero(xParteDec,xDec); // ypb : lo máximo ... y no va a ser
   if length(xParteDec)>=xDec then
      xultdec:=  strtofloat(copy(xParteDec,xDec,1))
   else begin
      xUltDec := 0;
   end;
   xNReal := int(xReal*xMultiplo10/10);
   if xultdec>=5 then xNReal := xNReal+1;
   if xflgneg='1' then
   begin
   Result := (xNReal/(xMultiplo10/10))*-1;
   end
   else
   begin
   Result := xNReal/(xMultiplo10/10);
   end;
end;


function TDM1.DisplayDescrip(wPrv,wTabla,wCampos,wWhere,wResult:string):string;
var
  xSQL : string;
begin
  xSQL := '';
  xSQL := 'SELECT '+wCampos+' FROM '+wTabla;
  if length(wWhere)>0 then xSQL:=xSQL+' WHERE '+wWhere;
  cdsQry.Close;
  cdsQry.Filtered:=False;
  cdsQry.Filter:='';
  cdsQry.DataRequest(xSQL);
  cdsQry.Open;
  result:=cdsQry.FieldByName(wResult).Asstring;
end;

  // Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
procedure TDM1.DataModuleCreate(Sender: TObject);
var
 xWhere, wSQL :string;
 inifile : TIniFile;
begin
  // <>'' Cuando el servidor se ejecuta Localmente
  //  =''  Ejecucion Servidor Remoto
  DCOM1.Connected:=False;

  // LEE LOS DATOS DE CONEXION
  if ParamStr(1)='' then
  begin
     inifile:=TIniFile.Create('C:\SOLExes\DM_Conf_CLI.ini');
     DCOM1.Address:=IniFile.ReadString('TCPIP','ADDRESS','');
     DCOM1.Port   :=STRTOINT( IniFile.ReadString('TCPIP','PORT','') );
     //DCOM1.ComputerName:=IniFile.ReadString('TCPIP','ADDRESS','');
     wSRV:=IniFile.ReadString('MOTOR','NAME','');
  end;

  // OBTIENE EL IP DE LA PC
  try
      cIP:= ObtenerIpdeNetbios( computerName);
  except
      ShowMessage( 'ERROR de Conexión.');
      DCOM1.Connected:=False;
      Exit;
  end;

  // Conexion con la Aplicación Servidor
  try
     DCOM1.Connected:=true;
  except
     ShowMessage( 'ERROR de Conexión.');
     Exit;
  end;

  // Accesos al Sistemas
  wModulo := 'ASO';
  sClose  := '0';
  FCtrlAcceso := TFCtrlAcceso.Create(Application);
  FCtrlAcceso.ShowModal;

  if FCtrlAcceso.cAccesoSistema='S' then
  begin
     // Si Ingreso al Sistema
     wUsuario := FCtrlAcceso.dbeUsuario.Text;
     FCtrlAcceso.free;
  end
  else
  begin
     // NO Ingreso al Sistema
     sClose:='1';
     DCOM1.Connected:=False;
     FCtrlAcceso.free;
     Exit;
  end;

  if sClose<>'1' then
  begin
     DM1.wcomputadora := ComputerName;
     DM1.wofides  :=Copy(CrgArea(DM1.wUsuario),4,2);

     wModulo := 'ASO' ;
     xBorrar:='0';
     cdsUsuarios.Open;
     cdsGrupos.Open;
     cdsMGrupo.Open;
     cdsAcceso.Open;
     xLogAsoid   :=  10;
     xLogCodMo   :=  10;
     //DM1.DCOM1.AppServer.RutaViaFTP(wRutaFTP);
     //wRutaFTP := wRutaFTP;
     wRutaRpt     := '';
     wTCCompra := 'TCAMVBC' ;
     wTCVenta  := 'TCAMVBV' ;
     xWhere:='TMon_Loc='+''''+'L'+'''';
     wTMonLoc:=DisplayDescrip('prvTGE','TGE103','TMONID',xWhere,'TMonID');
     xWhere:='TMon_Loc='+''''+'E'+'''';
     wTMonExt:=DisplayDescrip('prvTGE','TGE103','TMONID',xWhere,'TMonID');
     DM1.DisplayDescrip('prvSQL','SOLCONFIG','*','','SRV_DB');
     SRV_E     :=dm1.cdsqry.fieldbyname('SRV_EQUIP').AsString;
     SRV_D     :=dm1.cdsqry.fieldbyname('SRV_DB').AsString;
     SRV_V     :=dm1.cdsqry.fieldbyname('SRV_VERS').AsString;
     wRptCia   :=dm1.cdsqry.fieldbyname('RPTCIA').AsString;
     wRutaRpt := ExtractFilePath(Application.ExeName)+'SOLFORMATOS\'+DM1.wModulo+'\'+wRptCia;
     If SRV_D = 'ORACLE' then
     begin
        wFormatFecha:='DD-MM-YYYY';
        wReplacCeros:='NVL';
        wRepFecServi:='SYSDATE'; wRepFecServ:='SYSDATE';
        wRepHorServi:='SYSDATE';
        wRepFuncDate:= 'TO_DATE(';
     end;

     ImageDLLLoader.Default.FindDLLs('C:\Solexes');


     xsql := 'SELECT * FROM CAMPOS_VALIDA';
     cdsCamposValida.Close;
     cdsCamposValida.DataRequest(xSQL);
     cdsCamposValida.Open;
     cdsCamposValida.IndexFieldNames:='CAMPO';

     xSql:='SELECT A.TABLA, A.GRUPO, A.CAMPO, A.COMPONENTE, A.CAMPODES'
       + ' FROM SIS001 A'
       + ' WHERE A.COMPONENTE IS NOT NULL AND UPPER(A.GRUPO)=''K018'' AND UPPER(A.TABLA)=''MENU'' '
       + '   AND EXISTS ( SELECT S.USERID FROM SIS000 S'
       + '                 WHERE S.USERID = ' + QuotedStr(DM1.wUsuario)
       + '                   AND A.TABLA = S.TABLA'
       + '                   AND A.COMPONENTE = S.COMPONENTE)';
     DM1.cdsUsuarioBloq.Close;
     DM1.cdsUsuarioBloq.DataRequest(xSql);
     DM1.cdsUsuarioBloq.Open;
	// Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
     dFundacionDerrama:=StrToDate('01/03/1966');
	// Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

     FPrincipal:=TFPrincipal.Create(self);
     try
        FPrincipal.ShowModal;
     finally
        FPrincipal.free;
     end;
  end
  else
  begin
     if DM1<>nil then
        dm1.DCOM1.Connected:=False;
        Application.Terminate;
  end;



end;
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket

procedure TDM1.DataModuleDestroy(Sender: TObject);
begin
  cdsUsuarios.close;
  cdsGrupos.Close;
  cdsMGrupo.Close;
  cdsAcceso.Close;
  DCOM1.Connected := False;
end;

Procedure TDM1.AccesosUsuarios(xxModulo,xxUsuario,xxTipo,xxForma:String);
begin
  if Trim(cdsUsuarios.FieldByName('GrupoId').AsString)='' then
  begin
    cdsUsuarios.SetKey;
    cdsUsuarios.FieldByName('UserId').Value := xxUsuario;
    If not cdsUsuarios.GotoKey then
      Exit;
  end;

  DM1.cdsGrupos.Filter := '';
  If xxTipo='1' then
  begin
    cdsGrupos.Filter:='GRUPOID='+''''+cdsUsuarios.FieldByName('GRUPOID').AsString+''''+' AND '
                     +'MODULOID='+''''+xxModulo+''''+' AND '
                     +'TIPO='+''''+xxTipo+'''';
    cdsGrupos.Filtered := True;
    cdsGrupos.First;
    While not cdsGrupos.Eof do
    begin
      wComponente := BuscaObjeto( cdsGrupos.FieldByName('Objeto').Value, Screen.ActiveForm);
      wComponente.Enabled := False;
      cdsGrupos.Next;
    end;
  end;

  If xxTipo='2' then
  begin
    cdsGrupos.Filter:='GRUPOID=' +''''+cdsUsuarios.FieldByName('GRUPOID').Value+''''+' AND '
                     +'MODULOID='+''''+xxModulo+''''+' AND '
                     +'FORMA='   +''''+xxForma +''''+' AND '
                     +'TIPO='    +''''+xxTipo  +'''';
    cdsGrupos.Filtered := True;
    cdsGrupos.First;
    While not cdsGrupos.Eof do
    begin
      wComponente := BuscaObjeto(cdsGrupos.FieldByName('Objeto').Value, Screen.ActiveForm );
      If (wComponente.Name='Z2bbtnModifica') or
         (wComponente.Name='Z2bbtnConsulta') then
        wComponente.Enabled := False
      else
      begin
        wComponente.Visible := False;
      end;
      cdsGrupos.Next;
    end;
  end;
end;

function TDM1.BuscaObjeto( Const xNombre:String; xForm:TForm):TControl;
var
  ic : Integer;
begin
  ic := xForm.ComponentCount-1;
  while (xForm.Components[ic].Name<>xNombre) and (ic>-1) do
  begin
    Dec(ic);
  end;
  If xForm.Components[ic].Name=xNombre then
    Result := TControl( xForm.Components[ic])
  else
  Result:=Nil;
end;

procedure TDM1.AplicaDatos(wCDS: TClientDataSet; wNomArch : String);
var
  Results, OwnerData : OleVariant;
begin
  if (wCDS.Modified) or (wCDS.changeCount>0) then
  begin
   if VarIsEmpty( wCDS.Delta ) then Exit;
   ErrorCount := 0;
   wCDS.CheckBrowseMode;
   Results:=DCOM1.AppServer.AS_ApplyUpdates(wCDS.ProviderName,wCDS.Delta,-1,ErrorCount,OwnerData);
   cdsResultSet.Data := Results;
   wCDS.Reconcile(Results);
   if ErrorCount=0 then
    begin
     wCDS.Reconcile(Results);
     Beep;
    end
  end;
end;

procedure TDM1.ControlTran;
begin
  ErrorCount:=0;
  if (ErrorCount=0) and ((cdsAso.ChangeCount > 0) or (cdsAso.Modified)) then
		AplicaDatos(cdsAso,'ASOCIADOS');
	if (ErrorCount=0) and ((cdsSolicitud.ChangeCount > 0) or (cdsSolicitud.Modified)) then
		AplicaDatos(cdsSolicitud,'SOLICITUD');
	if (ErrorCount=0) and ((cdsSitCre.ChangeCount > 0) or (cdsSitCre.Modified)) then
		AplicaDatos(cdsSitCre,'SITCRE');
	if (ErrorCount=0) and ((cdsGarantia.ChangeCount > 0) or (cdsGarantia.Modified)) then
		AplicaDatos(cdsGarantia,'GARANTIA');
	if (ErrorCount=0) and ((cdsConsulta.ChangeCount > 0) or (cdsConsulta.Modified)) then
		AplicaDatos(cdsConsulta,'CONSULTA');
	if (ErrorCount=0) and ((cdsTipCre.ChangeCount > 0) or (cdsTipCre.Modified)) then
		AplicaDatos(cdsTipCre,'TIPOCREDITO');
	if (ErrorCount=0) and ((cdsListaCred.ChangeCount > 0) or (cdsListaCred.Modified)) then
		AplicaDatos(cdsListaCred,'LISTACREDITO');
	if (ErrorCount=0) and ((cdsExtornoPCab.ChangeCount > 0) or (cdsExtornoPCab.Modified)) then
		AplicaDatos(cdsExtornoPCab,'EXTORNOC');
	if (ErrorCount=0) and ((cdsExtornoPDet.ChangeCount > 0) or (cdsExtornoPDet.Modified)) then
		AplicaDatos(cdsExtornoPDet,'EXTORNOD');
  if (ErrorCount=0) and ((cdsReclamo.ChangeCount > 0)   or (cdsReclamo.Modified  )) then
    AplicaDatos( cdsReclamo, 'RECLAMOCRE'   );
  if (ErrorCount=0) and ((cdsReclamoDCre.ChangeCount > 0)   or (cdsReclamoDCre.Modified)) then
    AplicaDatos( cdsReclamoDCre, 'DETRECLAMOCRE'   );
  if (ErrorCount=0) and ((cdsTransacciones.ChangeCount > 0)   or (cdsTransacciones.Modified)) then
    AplicaDatos( cdsTransacciones, 'TRANSACCIONES'   );
  if (ErrorCount=0) and ((DM1.cdsTransDevol.ChangeCount > 0)   or (DM1.cdsTransDevol.Modified)) then
    AplicaDatos( DM1.cdsTransDevol, 'TRANSACCIONCRE'   );
  if (ErrorCount=0) and ((cdsDevolucionCre.ChangeCount > 0)   or (cdsDevolucionCre.Modified)) then
    AplicaDatos( cdsDevolucionCre, 'DEVOLUCIONCRE'   );
  if (ErrorCount=0) and ((cdsParam.ChangeCount > 0)   or (cdsParam.Modified)) then
    AplicaDatos( cdsParam, 'PARAMETROS'   );
	if (ErrorCount=0) and ((cdsOficio.ChangeCount > 0) or (cdsOficio.Modified)) then
    AplicaDatos(cdsOficio,'OFICIO');
end;

Procedure TDM1.Filtracds(xxCds: TwwClientDataSet; xxSQL: String);
begin
  if Length( xxSQL )>0 then
  begin
    xxCds.Close;
    xxCds.DataRequest( xxSQL );
  end;
  xxCds.Open;
end;

Function TDM1.MaxSQL(const sTabla, sMxCampo,sWhere : String): String;
var
 xnum : integer;
 sSQL : String;
begin
  sSQL:='SELECT MAX('+SMXCAMPO+') AS X FROM '+sTabla;
  If Length(sWhere) > 0 then
    sSql := sSql + ' WHERE '+sWhere;
  cdsQry.Close;
  Application.ProcessMessages;
  cdsQry.DataRequest(sSQL);
  cdsQry.Open;
  Application.ProcessMessages;
  if cdsQry.FieldByName('X').IsNull then
    result := '1'
  else
   begin
    xnum := StrToInt(Trim(cdsQry.FieldByName('X').AsString));
    Application.ProcessMessages;
    result := IntToStr(xnum+1);
   end;
end;

function TDM1.NumtoStr(wNumero:double):string;
var
	xNumStr,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12 : string;
  xGrupo, xTotal, xDecimal : string;
  xLargo, xVeces : integer;
begin
  xNumStr := floattostr(int(wNumero));
  xDecimal:= floattostr(wNumero-int(wNumero));

  if wNumero-int(wNumero)>0 then
  begin
       If length(xDecimal) > 5 then
        begin
         if strtoint(copy(xDecimal,5,1))>=5 then
    	  xDecimal := inttostr(strtoint(copy(xDecimal,3,2))+1)
         ELSE
    	  xDecimal := inttostr(strtoint(copy(xDecimal,3,2)))
        end
       else
         if strtoint(copy(xDecimal,3,1))>=5 then
    	  xDecimal := inttostr(strtoint(copy(xDecimal,3,2)))
    else
    begin
    	xDecimal := copy(xDecimal,3,2);
    end;
  end
  else
  begin
  	xDecimal:='00';
  end;
  xDecimal:= ' y '+xDecimal+'/100';
  xLargo := length(xNumStr);
  x1:='';x2:='';x3:='';x4:='';x5:='';x6:='';x7:='';x8:='';x9:='';x10:='';
  if xLargo>=1  then x1:=copy(xNumStr,xLargo,1);
  if xLargo>=2  then x2:=copy(xNumStr,xLargo-1,1);
  if xLargo>=3  then x3:=copy(xNumStr,xLargo-2,1);
  if xLargo>=4  then x4:=copy(xNumStr,xLargo-3,1);
  if xLargo>=5  then x5:=copy(xNumStr,xLargo-4,1);
  if xLargo>=6  then x6:=copy(xNumStr,xLargo-5,1);
  if xLargo>=7  then x7:=copy(xNumStr,xLargo-6,1);
  if xLargo>=8  then x8:=copy(xNumStr,xLargo-7,1);
  if xLargo>=9  then x9:=copy(xNumStr,xLargo-8,1);
  if xLargo>=10 then x10:=copy(xNumStr,xLargo-9,1);
  if xLargo>=11 then x11:=copy(xNumStr,xLargo-10,1);
  if xLargo>=12 then x12:=copy(xNumStr,xLargo-11,1);
  xVeces:=1; xTotal:='';
  while xVeces<=4 do // hasta 999,999'999,999
  begin
    if xVeces=2 then
    begin
       x1:=x4;
       x2:=x5;
       x3:=x6;
    end;
    if xVeces=3 then
    begin
       x1:=x7;
       x2:=x8;
       x3:=x9;
    end;
    if xVeces=4 then
    begin
       x1:=x10;
       x2:=x11;
       x3:=x12;
    end;
    if x2='1' then // del 11 a 19
    begin
       if x1='0' then x2:='DIEZ';
       if x1='1' then x2:='ONCE';
       if x1='2' then x2:='DOCE';
       if x1='3' then x2:='TRECE';
       if x1='4' then x2:='CATORCE';
       if x1='5' then x2:='QUINCE';
       if x1='6' then x2:='DIECISEIS';
       if x1='7' then x2:='DIECISIETE';
       if x1='8' then x2:='DIECIOCHO';
       if x1='9' then x2:='DIECINUEVE';
       x1:='0';
    end
    else
    begin // del 0 al 9
    	if x1='1' then x1:='UNO';
      if (xVeces>1) and (x1='UNO') then x1:='UN';
      if x1='2' then x1:='DOS';
      if x1='3' then x1:='TRES';
      if x1='4' then x1:='CUATRO';
      if x1='5' then x1:='CINCO';
      if x1='6' then x1:='SEIS';
      if x1='7' then x1:='SIETE';
      if x1='8' then x1:='OCHO';
      if x1='9' then x1:='NUEVE';
      if x2='2' then
      begin // veinte
      	x2:='VEINTI';
      	if x1='0' then x2:='VEINTE';
      end;
      if x2='3' then begin
      	x2:='TREINTI';
        if x1='0' then x2:='TREINTA';
      end;
      if x2='4' then begin
        x2:='CUARENTI';
        if x1='0' then x2:='CUARENTA';
      end;
      if x2='5' then begin
        x2:='CINCUENTI';
        if x1='0' then x2:='CINCUENTA';
      end;
      if x2='6' then begin
        x2:='SESENTI';
        if x1='0' then x2:='SESENTA';
      end;
      if x2='7' then begin
        x2:='SETENTI';
        if x1='0' then x2:='SETENTA';
      end;
      if x2='8' then begin
        x2:='OCHENTI';
        if x1='0' then x2:='OCHENTA';
      end;
      if x2='9' then begin
      	x2:='NOVENTI';
        if x1='0' then x2:='NOVENTA';
      end;
      end;
      if x3='1' then x3:='CIENTO';
      if (x2='0') and (x1='0') and (x3='CIENTO') then
      	x3:='CIEN';
      if x3='2' then x3:='DOSCIENTOS';
      if x3='3' then x3:='TRESCIENTOS';
      if x3='4' then x3:='CUATROCIENTOS';
      if x3='5' then x3:='QUINIENTOS';
      if x3='6' then x3:='SEISCIENTOS';
      if x3='7' then x3:='SETECIENTOS';
      if x3='8' then x3:='OCHOCIENTOS';
      if x3='9' then x3:='NOVECIENTOS';
      xGrupo := '';
			//xGrupo := x3;
      if x3<>'0' then xGrupo:=x3;
      if x2<>'0' then xGrupo:=xGrupo+' '+x2;
      if x1<>'0' then xGrupo:=xGrupo+x1;
      if ((xVeces=2)or(xVeces=4)) and (length(xGrupo)>1) then
      begin
      	xGrupo:=xGrupo+' MIL';
      end;
      if (xVeces=3) and (length(xGrupo)>1) then
      begin
      	if x1<>'UN' then
        	xGrupo:=xGrupo+' MILLONES'
        else
        begin
        	xGrupo:=xGrupo+' MILLÓN';
        end;
    end;
    if length(xTotal)>0 then xGrupo:=xGrupo+' ';
    xTotal := xGrupo+xTotal;
    xVeces := xVeces+1;
  end;
  result := xTotal+xDecimal;
end;

Function TDM1.StrZero(wNumero:String;wLargo:Integer):string;
var
  i : integer;
  s, xTemp : string;
begin
  s := '';
  for i:=1 to wLargo do
  	s := s+'0';

  s := s+trim(wNumero);
  xTemp := copy(s,length(s)-(wLargo-1),wLargo);
	result := xTemp;
end;

procedure cdsPost(xxCds:TwwClientDataSet);
var
  i : integer;
  xField : String;
begin
  for i:=0 To xxCds.Fields.Count-1 Do
  begin
    xField:=xxCds.Fields[i].FieldName;
    if xxCds.Fields[i].ClassType=TStringField Then
    begin
      If xxCds.Fields[i].AsString='' Then
        xxCds.Fields[i].Clear;
    End
    Else
    If xxCds.Fields[i].ClassType=TFloatField Then
    Begin
      If xxCds.Fields[i].IsNull Then
        xxCds.Fields[i].AsFloat:=0;
    End
    Else
    If xxCds.Fields[i].ClassType=TIntegerField Then
    Begin
      If xxCds.Fields[i].IsNull Then
        xxCds.Fields[i].AsInteger:=0;
    End
    Else
    If xxCds.Fields[i].ClassType=TMemoField Then
    Begin
      If xxCds.Fields[i].AsString='' Then
        xxCds.Fields[i].AsString:='.';
    End
    Else
    If xxCds.Fields[i].ClassType=TDateTimeField Then
    Begin
      If xField='FREG' Then
      Begin
        If xxCds.Fields[i].AsString='' Then
          xxCds.Fields[i].AsDateTime:=Date;
      End
      Else
      If xField='HREG' Then
      Begin
        If xxCds.Fields[i].AsString='' Then
          xxCds.Fields[i].AsDateTime:=Date+SysUtils.Time;
      End;
    End;
  End;
End;

function TDM1.OperClientDataSet( cdsOrigen : TwwClientDataSet; wExpresion, wCondicion : String  ) : Double;
var
  cdsClone    : TwwClientDataSet;
  bmk         : TBookmark;
  Agg         : TAggregate;
begin
  result := 0;
  if trim(wExpresion)= '' then Exit;
  bmk:=cdsOrigen.GetBookmark;
  cdsClone    := TwwClientDataSet.Create(nil);
  try
    with cdsClone do
    begin
      CloneCursor(cdsOrigen,True);

      Agg := Aggregates.Add;
      Agg.AggregateName := 'OPER';
      Agg.Expression := wExpresion;
      Agg.Active := True;

      if Trim(wCondicion)<>'' then
      begin
        Filtered     := False;
        Filter       := wCondicion;
        Filtered     := True;
      end;

      if Aggregates.Items[Aggregates.IndexOf('OPER')].Value<>NULL then
         result := Aggregates.Items[Aggregates.IndexOf('OPER')].Value;

      Aggregates.Clear;
    end;
    cdsOrigen.GotoBookmark(bmk);
    cdsOrigen.FreeBookmark(bmk);
  finally
    cdsClone.Free;
  end;
end;

procedure TDM1.FiltraTablaRemoto( xxCds:TwwClientDataSet; xxArchivo, xxCampo, xxFilter : String  );
var
   xFiltro, xSQL2, xDirectorio : String;
begin
   xDirectorio:='';
   if DirectoryExists( 'C:\WINNT\SYSTEM32' ) then
      xDirectorio:='C:\WINNT\SYSTEM32\'
   else
      xDirectorio:='C:\WINDOWS\SYSTEM\';

   DM1.cdsAcceso.Filtered:=False;
   DM1.cdsAcceso.Filter  :='';
   DM1.cdsAcceso.Filter  :='NTABLA='''+xxArchivo+''' AND USERID='''+DM1.wUsuario+'''';
   DM1.cdsAcceso.Filtered:=True;

   DM1.cdsUsuarioAct.Filtered:=False;
   DM1.cdsUsuarioAct.Filter  :='';
   DM1.cdsUsuarioAct.Filter  :='USERID='''+DM1.wUsuario+''' AND TABLANOMBRE='''+xxArchivo+'''';
   DM1.cdsUsuarioAct.Filtered:=True;

   xFiltro := '';
   DM1.cdsAcceso.First;
   while not DM1.cdsAcceso.Eof do begin
      If Length(xFiltro)=0 then
         xFiltro:=xxCampo+'='+''''+DM1.cdsAcceso.FieldByName('CODIGO').AsString+''''
      else
         xFiltro:=xFiltro+' OR '+xxCampo+'='+''''+DM1.cdsAcceso.FieldByName('CODIGO').AsString+'''';
      DM1.cdsAcceso.Next;
   end;

   xxCds.Close;
   xxCds.Filtered:=False;
   xxCds.Filter  :='';
   xxCds.IndexFieldNames:='';

   if ( DM1.cdsUsuarioAct.RecordCount>0 ) or
      ( not FileExists( xDirectorio+xxArchivo ) ) then
   begin
      xSQL2 := 'SELECT * FROM '+ xxArchivo;

      xxCds.DataRequest( xSQL2 );
      xxCds.Open;
      xxCds.SaveToFile( xDirectorio+xxArchivo );
      xxCds.Close;

      xSQL2:='Delete from TGE009 Where USERID='''+DM1.wUsuario+''' and TABLANOMBRE='''+xxArchivo+'''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest( xSQL2 );
      DM1.cdsQry.Execute;
      DM1.cdsQry.Close;
   end;

   xxCds.LoadFromFile( xDirectorio+xxArchivo );

   if xFiltro='' then
      xFiltro:=xxFilter
   else begin
      if xxFilter<>'' then
         xFiltro:='( '+xFiltro+' ) and '+xxFilter;
   end;

   if Length(xFiltro)>0 then
   begin
      xxCds.Filter  :=xFiltro;
      xxCds.Filtered:=True;
   end;

end;


procedure TDM1.FiltraTabla( xxCds:TwwClientDataSet; xxArchivo,xxCampo:String  );
var
  xFiltro,xSQL2 : String;
begin
  DM1.cdsAcceso.Open;
  DM1.cdsAcceso.Filtered := False;
  DM1.cdsAcceso.Filter   := '';
  DM1.cdsAcceso.Filter   := 'NTABLA='+''''+xxArchivo+'''';
  DM1.cdsAcceso.Filtered := True;

  xFiltro := '';
  DM1.cdsAcceso.First;
  while not DM1.cdsAcceso.Eof do
  begin
    If Length(xFiltro)=0 then
      xFiltro:=xxCampo+'='+''''+DM1.cdsAcceso.FieldByName('Codigo').AsString+''''
    else
      xFiltro:=xFiltro+' or '+xxCampo+'='+''''+DM1.cdsAcceso.FieldByName('Codigo').AsString+'''';
    DM1.cdsAcceso.Next;
  end;

  if Length(xFiltro)>0 then
  begin
    xSQL2 := 'Select * from '+ xxArchivo+' Where '+xFiltro;
    xxCds.Close;
    xxCds.DataRequest(xSQL2);
  end;
  xxCds.Open;

end;

procedure TDM1.cdsTipCreReconcileError(DataSet: TClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  Action := HandleReconcileError(Dataset,UpdateKind,E);
end;

function TDM1.MaxValue(const sDetail: String; CD: TDataSet): String;
var
	iMx : LongInt;
 	bmk : TBookMark;
 	dsI, dsE : Boolean;
begin
  // --------------------------- ADVERTENCIA !!!!!!!! --------------------------
  //  ESTO NO FUNCIONA EN EL CACHÉ
  // ---------------------------------------------------------------------------
  //  result := MaxSQL('LOG309','DRQSID',
  //                   'where CIAID='''+sCIA+''' and '+'RQSID = '''+sRqs+'''' );
  // ---------------------------------------------------------------------------
  bmk := Nil;
	iMx := 0;
  CD.DisableControls;
  dsI := (CD.State = dsInsert);
  dsE := (CD.State = dsEdit);
  if CD.RecordCount > 0 then
  begin
  	if dsE then bmk:=CD.GetBookmark;
  	if dsI or dsE then CD.Cancel;

  	CD.First;
  	while not CD.Eof do
  	begin
    	if CD.FieldByName(sDetail).isNull then
      	iMx := 0
    	else
      if (CD.FieldByName(sDetail).AsInteger > iMx) and (CD.FieldByName(sDetail).AsInteger <> 999) then
      	iMx := CD.FieldByName(sDetail).AsInteger;
    	CD.Next;
  	end;
  	if dsI then
    	CD.Insert
  	else
  	if dsE then
    	CD.Edit;
  	if dsE then
  	begin
    	CD.GotoBookmark(bmk);
    	CD.FreeBookmark(bmk);
  	end;
  end;
  CD.EnableControls;
  Result := IntToStr(iMx+1);
end;

function TDM1.BuscaCodMod(const sTabla, sMxCampo: String): String;
var
	xnum : integer;
  sSQL : String;
begin
  sSQL:='SELECT COUNT(ASOCODMOD) AS X FROM '+sTabla+' WHERE ASOCODMOD='+''''+SMXCAMPO+'''';
  cdsQry.Close;
  cdsQry.DataRequest(sSQL);
  cdsQry.Open;
  xnum:=StrToInt(cdsQry.FieldByName('X').AsString);
  result := DM1.StrZero(IntToStr(xnum+1),2);
end;

procedure TDM1.AccesosUsuariosR(xxModulo,xxUsuario,xxTipo:String; xxForma:TForm);
begin
  if Trim(cdsUsuarios.FieldByname('GRUPOID').AsString)='' then
  begin
    cdsUsuarios.SetKey;
    cdsUsuarios.FieldByname('USERID').AsString := xxUsuario;
    If not cdsUsuarios.GotoKey then
      Exit;
  end;

  cdsGrupos.Filter := '';
  If xxTipo='1' then
  begin
    cdsGrupos.Filter:='GRUPOID='+''''+cdsUsuarios.FieldByname('GRUPOID').AsString+''''+' AND '
                     +'MODULOID='+''''+xxModulo+''''+' AND '
                     +'TIPO='+''''+xxTipo+'''';
    cdsGrupos.Filtered := True;

    if (DM1.wAdmin='S') or (DM1.wAdmin='P') then
      Exit;

    cdsGrupos.First;
    While not cdsGrupos.Eof do
    begin
      wComponente := BuscaObjeto( cdsGrupos.FieldByName('OBJETO').AsString, xxForma );
      wComponente.Enabled := False;
      cdsGrupos.Next;
    end;
  end;

  If xxTipo='2' then
  begin
    cdsGrupos.Filter:='GRUPOID=' +''''+cdsUsuarios.FieldByname('GRUPOID').AsString+''''+' AND '
                     +'MODULOID='+''''+xxModulo    +''''+' AND '
                     +'FORMA='   +''''+xxForma.Name+''''+' AND '
                     +'TIPO='    +''''+xxTipo      +'''';
    cdsGrupos.Filtered := True;

    if (DM1.wAdmin='S') or (DM1.wAdmin='P') then Exit;

    cdsGrupos.First;
    While not cdsGrupos.Eof do
    begin
      wComponente := BuscaObjeto(cdsGrupos.FieldByName('OBJETO').AsString, xxForma );
      If (wComponente.Name='Z2bbtnModifica') or
         (wComponente.Name='Z2bbtnConsulta') then
          wComponente.Enabled := False
      else
      begin
        wComponente.Visible := False;
      end;
      cdsGrupos.Next;
    end;
  end;
end;


procedure TDM1.Accesos;
begin
  xSQL2 := 'SELECT CODIGO,MODULOID,NTABLA,USERID,CHK FROM TGE004 '
         + ' WHERE MODULOID='+''''+DM1.wModulo +''''
         + '   AND USERID='  +''''+dm1.wUsuario+'''';
  DM1.cdsAcceso.Close;
  DM1.cdsAcceso.DataRequest( xSQL2 );
  DM1.cdsAcceso.Open;
   sSQL := ' SELECT ZIPID,ZIPDES,CIUDID,DPTOID '+
           ' FROM APO122 ORDER BY DPTOID,CIUDID,ZIPID';
   DM1.FiltraCDS(DM1.cdsDist,sSQL);

  sSQL := 'SELECT DPTOID, DPTODES, DPTOABR FROM APO158';
  DM1.FiltraCDS(DM1.cdsDpto,sSQL);
  sSQL := 'SELECT UBIGEOID, UBIGEODES, UBIGEODPTO, UBIGEOPROV, UBIGEODIST FROM TGE147 '+
          'ORDER BY UBIGEOID';
  DM1.FiltraCDS(DM1.cdsUbigeo,sSQL);
  sSQL := 'SELECT CIUDID, CIUDDES, DPTOID FROM APO123 ORDER BY CIUDID';
  DM1.FiltraCDS(DM1.cdsProvin,sSQL);
  //pbTablas.Position:=pbTablas.Position+1;

  sSQL := 'SELECT UPAGOID,UPROID,UPAGONOM,UPAGOTELF,UPAGODIR,DIRDPTOID,DIRPROVID,DIRZIPID,DPTOID,'
        + '       CIUDID,ZONAID,REPID,REPDIR,REPTELF,UPAGOFDES,BANCOID,PROVBCOID,OFDESID,USUARIO,'
        + '       FREG,HREG,USE,UPAGOABR,CODANT,FLGFUSION,FLGACT,FDESHABILITADO,FLGESCFIS,CCOSID '
        + '  FROM APO103 ORDER BY UPAGOID';
  DM1.FiltraCDS(DM1.cdsUPago,sSQL);
  //pbTablas.Position:=pbTablas.Position+1;

  sSQL := 'SELECT UPROID,UPRONOM,UPROABR,UPROTELF,UPRODIR,DIRDPTOID,DIRPROVID,DIRZIPID,DPTOID,'
        + '       CIUDID,ZONAID,REPRID,UPROFDES,BANCOID,PROVBCOID,OFDESID,USUARIO,FREG,HREG,'
        + '       FLGFUSION,FLGACT,FLGESCFIS,CODDEP '
        + '  FROM APO102 ORDER BY UPROID';
  DM1.FiltraCDS(DM1.cdsUPro,sSQL);
  //pbTablas.Position:=pbTablas.Position+1;

  sSQL := 'SELECT USEID,USENOM,USEABRE,USETELF,USEDIR,DIRDPTOID,DIRPROVID,DIRZIPID,DPTOID,CIUDID,'
        + '       ZONAID,UPROID,UPAGOID,TIPUSEID,CCOSID,USUARIO,FREG,HREG,CODANT,FLGFUSION,CUENTAID,'
        + '       FLGACT,FDESHABILITADO,OFDESID,DIGABC,ABCID,ZONORIOPE,AMBITO,CODCARGO,DIGMASREP,'
        + '       AUTDESCUO,CODCARGODO,DIGMASREPDO,CODCARGOCE,DIGMASREPCE,FLACAR,CAPEND '
        + '  FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N'' ORDER BY USEID';
  DM1.FiltraCDS(DM1.cdsUSES,sSQL);
  //pbTablas.Position:=pbTablas.Position+1;

  sSQL := 'SELECT BANCOID, BANCOABR, BANCONOM FROM TGE105 ORDER BY BANCOID';
  DM1.FiltraCDS(DM1.cdsBcos,sSQL);
  //pbTablas.Position:=pbTablas.Position+1;

  sSQL := 'SELECT USEID, USENOM, USEABRE FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N'' ORDER BY USEID';
  DM1.FiltraCDS(DM1.cdsUSESx,sSQL);
  //pbTablas.Position:=pbTablas.Position+1;

  sSQL := 'SELECT USEID, USENOM, USEABRE FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N'' ORDER BY USEID';
  DM1.FiltraCDS(DM1.cdsUSESy,sSQL);
  //pbTablas.Position:=pbTablas.Position+1;

  sSQL := 'SELECT * FROM TGE101 ORDER BY CIAID';
  DM1.FiltraCDS(DM1.cdsCia, sSQL);
  //pbTablas.Position:=pbTablas.Position+1;
end;

procedure TDM1.RecUltTipoCambio(var xFecha: string);
var xSQL : String ;
begin
   xSQL :='SELECT * FROM TGE107 '+
          'WHERE FECHA=(SELECT MAX(FECHA)'+
                       'FROM TGE107 '+
                       'WHERE FECHA<='+wRepFuncDate+quotedstr(copy(xFecha,1,10))+')) '+
           ' and TMONID='''+ wTmonExt + ''''             ;
   DM1.cdsQry.close;
   DM1.cdsQry.Filter:='';
   DM1.cdsQry.Filtered:=False;
   DM1.cdsQry.dataRequest(xSQL);
   DM1.cdsQry.Open;
end;

function GetSystemTimeUTC : String;
var
   stSystemTime : TSystemTime;
begin
   Windows.GetSystemTime(stSystemTime);
   Result := DateTimeToStr( SystemTimeToDateTime( stSystemTime ) );
end;


procedure TDM1.ActualizaTablasRemoto( wTabla : String );
var
   i    : Integer;
   tSQL, tSQL2 : String;
   xDirectorio : String;
begin
   xDirectorio:='';
   if DirectoryExists( 'C:\WINNT\SYSTEM32' ) then
      xDirectorio:='C:\WINNT\SYSTEM32\'
   else
      xDirectorio:='C:\WINDOWS\SYSTEM\';
         cdsQry2.Close;
         cdsQry2.DataRequest( 'SELECT * FROM '+wTabla );
         cdsQry2.Open;
         cdsQry2.SaveToFile( xDirectorio+wTabla );
       // ARREGLAR EN SOLLIB
      tSQL2:='Insert Into TGE009( USERID, TABLANOMBRE ) '
            +'SELECT USERID, '''+wTabla+''' FROM ( select USERID FROM TGE006 GROUP BY USERID ) A '
            +'where not exists ( select USERID from TGE009 B '
            +                  ' WHERE A.USERID=B.USERID AND B.TABLANOMBRE='''+wTabla+''')';
      cdsQry2.Close;
      cdsQry2.DataRequest( tSQL2 );
      cdsQry2.Execute;
   cdsQry2.Close;
end;


procedure TDM1.cdsClientes2ReconcileError(DataSet: TClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(Dataset,UpdateKind,E);
end;

procedure TDM1.cdsCuotasReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  Action := HandleReconcileError(DataSet, UpdateKind, E);
end;

function TDM1.VerificaAcceso(Pass, EncDes: string): string;
begin
//Inicio: SPP_201405_ASO
     if EncDes='0' then
        result:=FCtrlAcceso.DesEncripta(Pass)
     else
        result:=FCtrlAcceso.Encripta(Pass);
//Fin: SPP_201405_ASO
end;

procedure TDM1.LimpiaDatos;
begin

    FOtorPre:= TfOtorPre.create(self);

    If DM1.xSgr<>'0' Then  FOtorPre.EdtCodMod.Text := '';
    try
       FOtorPre.dbeApeNom.Text:=''; FOtorPre.EdtLugPro.Text:=''; FOtorPre.edtUProceso.Text:=''; FOtorPre.EdtUPago.Text:='';
       FOtorPre.edtDesPago.Text:=''; FOtorPre.EdtCodUse.Text:=''; FOtorPre.edtDesUse.Text:=''; FOtorPre.EdtTipAso.Text:='';
       FOtorPre.edtSituacion.Text:=''; FOtorPre.dbeDNI.Text:=''; FOtorPre.dbeCtaAhorro.Text:=''; FOtorPre.dbeSitCta.Text:='';
       FOtorPre.dblTipCre.Text:=''; FOtorPre.EdtTipDes.Text:=''; FOtorPre.edtLiquidado.Text :='';
    except
    end;

end;

procedure TDM1.CrgDatos;
var xCondicion:String;
begin
FOtorPre.EdtCodMod.Text:=DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
FOtorPre.dbeApeNom.Text:=DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
FOtorPre.EdtLugPro.Text:=DM1.cdsAso.FieldByName('UPROID').AsString;;
FOtorPre.edtUProceso.Text:=DM1.CrgDescrip('UPROID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('UPROID').AsString)),'APO102','UPRONOM');
FOtorPre.EdtUPago.Text:=DM1.cdsAso.FieldByName('UPAGOID').AsString;
xCondicion:='UPROID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString))+' AND UPAGOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
FOtorPre.edtDesPago.Text:=DM1.CrgDescrip(xCondicion,'APO103','UPAGONOM');;
FOtorPre.EdtCodUse.Text:=DM1.cdsAso.FieldByName('USEID').AsString;
xCondicion:='UPROID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString))+' AND USEID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString))+' AND UPAGOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
FOtorPre.edtDesUse.Text:=DM1.CrgDescrip(xCondicion,'APO101','USENOM');
FOtorPre.EdtTipAso.Text:=DM1.cdsAso.FieldByName('ASOTIPID').AsString;
FOtorPre.edtSituacion.Text:=DM1.CrgDescrip('ASOTIPID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOTIPID').AsString)),'APO107','ASOTIPDES');
FOtorPre.dbeDNI.Text:=DM1.cdsAso.FieldByName('ASODNI').AsString;
FOtorPre.dbeCtaAhorro.Text:=DM1.cdsAso.FieldByName('ASONCTA').AsString;;
FOtorPre.dbeSitCta.Text:=DM1.CrgDescrip('SITCTAID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('SITCTA').AsString)),'COB103','SITCTADES'); FOtorPre.dblTipCre.Text:=''; FOtorPre.EdtTipDes.Text:='';
FOtorPre.CrgPrestamos;
If Length(Trim(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))+' AND FECOBSR IS NOT NULL AND FECAPRO IS NULL' ,'OBS000','MTOOBSR'))) > 0 Then
   Begin
      MessageDlg('Observado : '#13+#13+DM1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString))+' AND FECOBSR IS NOT NULL AND FECAPRO IS NULL' ,'OBS000','MTOOBSR'), mtError, [mbOk], 0);
      Exit;
   End;
If DM1.cdsAso.FieldByName('ASOTIPID').AsString='CE' Then
   Begin
     FOtorPre.edtLiquidado.Text:=DM1.CrgDescrip('TIPBENEF='+QuotedStr(Trim(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)),'PVS301','PVSTIPBEN'))),'TGE186','BENEFABR') ;     FOtorPre.edtLiquidado.Font.Color:=clRed;
   End
Else
   Begin
     FOtorPre.edtLiquidado.Text:='ACTIVO';  FOtorPre.edtLiquidado.Font.Color:=clNavy;
   End;
end;

function TDM1.CrgDescrip(xCondicion, xTabla, xCampo: String): String;
var xSQL:String;
begin
xSQL:='SELECT '+xCampo+' FROM '+xTabla+' WHERE '+xCondicion;
cdsQry.Close;
cdsQry.DataRequest(xSQL);
cdsQry.Open;
If cdsQry.RecordCount=1 Then
   Result:=cdsQry.fieldbyname(xCampo).AsString
Else
   Result:='';
cdsQry.Close;
end;

function TDM1.FechaSys: tDateTime;
var
   FormatoFecha: PChar;
begin
FormatoFecha:='dd/MM/yyyy';
SetLocaleInfo(LOCALE_SYSTEM_DEFAULT, LOCALE_SSHORTDATE,FormatoFecha);
cdsMovCnt1.Close;
cdsMovCnt1.DataRequest('SELECT TO_CHAR(SYSDATE,''dd/mm/yyyy'') AS FECHA FROM DUAL');
cdsMovCnt1.Open;
If cdsMovCnt1.RecordCount > 0 Then
    Result:=FechasOutPut(cdsMovCnt1.fieldbyname('FECHA').AsDateTime)
Else
    Result:=FechasOutPut(Date);
cdsMovCnt1.Close;

end;

function TDM1.FechasOutPut(xFInput: tDateTime): tDateTime;
begin
   Result:=StrToDate(Copy(DateToStr(xFInput),1,10));
end;

procedure TDM1.CrgLisFrmPag;
var xSql,xOfiDes:String;
begin
    xArea:=Copy(CrgArea(DM1.wUsuario),1,3); xOfiDes:=Copy(CrgArea(DM1.wUsuario),4,2);
    If (xArea='CRE') And (xOfiDes>'01')  Then
        xSql:='SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV,FORPAGODES,'
            + '       FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON,FLGPAGAUTDISK,FPLANILLA,'
            + '       ACTIVO,FORPAGACT,PERANUCUO '
            + '  FROM COB101 WHERE FORPAGOID IN (''03'') Order By FORPAGOID'
     Else If xArea='COB' Then
        xSql:='SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV,FORPAGODES,'
            + '       FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON,FLGPAGAUTDISK,FPLANILLA,'
            + '       ACTIVO,FORPAGACT,PERANUCUO '
            + '  FROM COB101 WHERE FORPAGOID IN (''03'',''15'',''23'',''07'',''18'',''01'') Order By FORPAGOID'
     Else If xArea='CAJ' Then
          xSql:='SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV,FORPAGODES,'
              + '       FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON,FLGPAGAUTDISK,FPLANILLA,'
              + '       ACTIVO,FORPAGACT,PERANUCUO '
              + '  FROM COB101 WHERE FORPAGOID IN (''02'') Order By FORPAGOID'
     Else If xArea='PRE' Then
        xSql:='SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV,FORPAGODES,'
            + '       FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON,FLGPAGAUTDISK,FPLANILLA,'
            + '       ACTIVO,FORPAGACT,PERANUCUO '
            + '  FROM COB101 WHERE FORPAGOID IN (''05'') Order By FORPAGOID'
     Else If xArea='SIS' Then
        xSql:='SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV,FORPAGODES,'
            + '       FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON,FLGPAGAUTDISK,FPLANILLA,'
            + '       ACTIVO,FORPAGACT,PERANUCUO '
            + '  FROM COB101 Order By FORPAGOID'
     Else
        xSql:='SELECT FORPAGOID,FORPAGOABR,USUARIO,DREG,HREG,FORPAGFAPO,FPAGFDEV,FORPAGODES,'
            + '       FLGDCT,FLGTEL,FLGDEV,TIPO,FLGCANC,FOROPEBCON,FLGPAGAUTDISK,FPLANILLA,'
            + '       ACTIVO,FORPAGACT,PERANUCUO '
            + '  FROM COB101 Where FORPAGOID IN (''XX'') Order By FORPAGOID' ;

     DM1.cdsFormaPago.Close;
     DM1.cdsFormaPago.DataRequest(xSql);
     DM1.cdsFormaPago.Open;


end;

function TDM1.DesMes(xMes: Integer; xAbr: Char): String;
Const
    NomMes: Array [1..12] of String = ('ENERO','FEBRERO','MARZO','ABRIL','MAYO','JUNIO','JULIO','AGOSTO','SETIEMBRE','OCTUBRE','NOVIEMBRE','DICIEMBRE');
begin
  If xAbr='S' Then
     Result:=Copy(NomMes[xMes],1,3)
  Else Result:=NomMes[xMes];

end;

function TDM1.StrSpace(wNumero: String; wLargo: Integer): string;
var
  i : integer;
  s, xTemp : string;
begin
  s := '';
  for i:=1 to wLargo do
  	s := s+' ';
  s := s+trim(wNumero);
  xTemp := copy(s,length(s)-(wLargo-1),wLargo);
	result := xTemp;
end;

function TDM1.xIntToLletras(Numero: Integer; Dec: Real): String;
  function xxIntToLletras(Valor:LongInt):String;
  const
   aUnidad : array[1..15] of string =
     ('UN','DOS','TRES','CUATRO','CINCO','SEIS',
      'SIETE','OCHO','NUEVE','DIEZ','ONCE','DOCE',
      'TRECE','CATORCE','QUINCE');
   aCentena: array[1..9]  of string =
     ('CIENTO','DOSCIENTOS','TRESCIENTOS',
      'CUATROCIENTOS','QUINIENTOS','SEISCIENTOS',
      'SETECIENTOS','OCHOCIENTOS','NOVECIENTOS');
   aDecena : array[1..9]  of string =
    ('DIECI','VEINTI','TREINTA','CUARENTA','CINCUENTA',
     'SESENTA','SETENTA','OCHENTA','NOVENTA');
  var
   Centena, Decena, Unidad, Doble: LongInt;
   Linea: String;
  begin
   if valor=100 then Linea:=' CIEN '
   else begin
     Linea:='';
     Centena := Valor div 100;
     Doble   := Valor - (Centena*100);
     Decena  := (Valor div 10) - (Centena*10);
     Unidad  := Valor - (Decena*10) - (Centena*100);

     if Centena>0 then Linea := Linea + Acentena[centena]+' ';

     if Doble>0 then begin
       if Doble=20 then Linea := Linea +' VEINTE '
         else begin
          if doble<16 then Linea := Linea + aUnidad[Doble]
            else begin
                 Linea := Linea +' '+ Adecena[Decena];
                 if (Decena>2) and (Unidad<>0) then Linea := Linea+' Y ';
                 if Unidad>0 then Linea := Linea + aUnidad[Unidad];
            end;
         end;
     end;
   end;
   Result := Linea;
  end;

var
   Millones,Miles,Unidades: LongInt;
   Linea : String;
   xnum,xdec:Real;


begin
  xnum:=Int(Numero);
  xdec:= (dec-xnum)*100;
  if numero=0 then Linea := 'CERO'
  else if numero<0 then Linea := 'MENOS '
       else if numero=1 then
            begin
              Linea := 'UN';
              xIntToLletras := Linea;
              exit
            end
            else if numero>1 then Linea := '';

  Numero   := Abs(Numero);
  Millones := numero div 1000000;
  Miles     := (numero - (Millones*1000000)) div 1000;
  Unidades  := numero - ((Millones*1000000)+(Miles*1000));

  if Millones=1 then Linea:= Linea + ' UN MILLON '
  else if Millones>1 then Linea := Linea + xxIntToLletras(Millones)
                                   + ' MILLONES ';

  if Miles =1 then Linea:= Linea + ' MIL '
  else if Miles>1 then Linea := Linea + xxIntToLletras(Miles)+
                                ' MIL ';

  if Unidades >0 then Linea := Linea + xxIntToLletras(Unidades);
   xIntToLletras := Linea+' y '+ Format( '%.2d',[round(xdec)])+ '/100 Nuevos Soles';

end;

function TDM1.Valores(Texto: String): Currency;
var xMont,xValor:String;
    I:Integer;
begin
   If Texto = '' Then Texto := '0.00';
   For I := 1 To Length(Trim(Texto)) Do
   Begin
       xMont:=Copy(Texto,I,1);
       If xMont <> ',' Then
          xValor := Trim(xValor)+Trim(xMont);
   End;
   Result:=StrToFloat(xValor);

end;

function TDM1.CalSalPag(xAsoid, xCreDid, xFecCalCulo, xCreCuota, xCnd, xFrmPag: String): Currency;
Var xfVenc,xSql,xOfiDes,xEstado:String;
    xSaldo:Currency ;
begin
     cdsRecursos.Close;
     If xCnd='0' Then
        cdsRecursos.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREAMORT,CREFLAT,CREESTID,CREFVEN,CREFVENINI FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' AND CRECUOTA='+xCreCuota+' AND CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA')
     Else If xCnd='1' Then
        cdsRecursos.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREAMORT,CREFLAT,CREESTID,CREFVEN,CREFVENINI FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' AND CRECUOTA>='+xCreCuota+' AND CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA')
     Else
        cdsRecursos.DataRequest('SELECT TIPCREID,CREANO,CREMES,CREMTOCOB,CREMTO,CREAMORT,CREFLAT,FLAGVAR,CREESTID,CREFVEN,CREFVENINI FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' AND FLAGVAR=''S'' AND CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA');

     cdsRecursos.Open;
     cdsRecursos.First;
     xSaldo:=0;
     While Not cdsRecursos.Eof do
     Begin
        xfVenc:= Trim(cdsRecursos.fieldbyname('CREANO').AsString + cdsRecursos.fieldbyname('CREMES').AsString); xEstado:=cdsRecursos.fieldbyname('CREESTID').AsString;
        If (xfVenc > xFecCalCulo) And (cdsRecursos.fieldbyname('CREFVEN').AsString=cdsRecursos.fieldbyname('CREFVENINI').AsString) Then
           Begin
             If  xCnd='0' Then
                 xSaldo := xSaldo + (cdsRecursos.fieldbyname('CREMTO').AsCurrency - cdsRecursos.fieldbyname('CREMTOCOB').AsCurrency)

             Else
                If cdsRecursos.fieldbyname('CREMTOCOB').AsCurrency > 0 Then
                   xSaldo := xSaldo + (cdsRecursos.fieldbyname('CREAMORT').AsCurrency + cdsRecursos.fieldbyname('CREFLAT').AsCurrency)-cdsRecursos.fieldbyname('CREMTOCOB').AsCurrency
                Else
                   xSaldo := xSaldo + (cdsRecursos.fieldbyname('CREAMORT').AsCurrency + cdsRecursos.fieldbyname('CREFLAT').AsCurrency);


           End
        Else
            Begin
                xSaldo := xSaldo + (cdsRecursos.fieldbyname('CREMTO').AsCurrency - cdsRecursos.fieldbyname('CREMTOCOB').AsCurrency);
            End;
     cdsRecursos.Next;
     End;
     cdsRecursos.Close;
     Result:=xSaldo;

end;

procedure TDM1.CargaCronograma(xAsoId, xCreDid: String);
var xCondicion:String;
begin
     xSQL:=' SELECT ASOID,CREDID,CREANO,CREMES,CREFVEN,CREFVENINI,CRECAPITAL,CREMTOINT,CREMTOFLAT,'
          +'        MONCOBDESGRAV, '
          +'        NVL(CREMTOCOB,0) AS CREMTOCOB, NVL(CREMTO,0) AS CREMTO, CRECUOTA, CREESTADO, '
          +'        CREESTID,CREAMORT, CREFLAT, MONPACDESGRAV, FLAGVAR, '
          +'        CASE WHEN CREFVEN<>CREFVENINI THEN ''(*)'' ELSE NULL END AS REPRO '
          +'   FROM CRE302 '
          +'  WHERE ASOID ='+QuotedStr(Trim(xAsoId))
          +'    And CREDID='+QuotedStr(Trim(xCreDid))+' ORDER BY CREDID,CRECUOTA ';
     cdsCuotas.Close;
     cdsCuotas.DataRequest(xSQL);
     cdsCuotas.Open;
     TNumericField(cdsCuotas.fieldbyname('CRECAPITAL')).DisplayFormat:='###,###.#0';
     TNumericField(cdsCuotas.fieldbyname('CREMTOINT')).DisplayFormat:='###,###.#0';
     TNumericField(cdsCuotas.fieldbyname('CREMTOFLAT')).DisplayFormat:='###,###.#0';
     TNumericField(cdsCuotas.fieldbyname('MONCOBDESGRAV')).DisplayFormat:='###,###.#0';
     TNumericField(cdsCuotas.fieldbyname('CREMTOCOB')).DisplayFormat:='###,###.#0';
     TNumericField(cdsCuotas.fieldbyname('CREMTO')).DisplayFormat:='###,###.#0';
     fCronoPag.EdtCodMod.Text:= DM1.cdsSolicitud.FieldByName('ASOCODMOD').AsString;
     fCronoPag.EdtFecPre.Text := DM1.cdsSolicitud.FieldByName('CREFOTORG').asString;
     fCronoPag.EdtFecDes.Text := DM1.cdsSolicitud.FieldByName('CREFDES').asString;
     fCronoPag.EdtMonto.Text  := FormatFloat('###,###.#0',DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
     xCondicion:='UPROID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString))+' AND USEID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString))+' AND UPAGOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
     fCronoPag.EdtDesUse.Text := DM1.cdsAso.fieldbyname('USEID').AsString+' - '+DM1.CrgDescrip(xCondicion,'APO101','USENOM');
     fCronoPag.EdtCreDid.Text := DM1.cdsSolicitud.FieldByName('CREDID').AsString;
     If DM1.cdsSolicitud.FieldByName('TMONID').AsString='N' Then fCronoPag.EdtMoneda.Text := 'S/.' Else fCronoPag.EdtMoneda.Text := 'US$';
     fCronoPag.EdtNumCuo.Text := DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsString;
     fCronoPag.EdtNomGen.Text := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
     xCondicion:='TIPCREID='+QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString));
     fCronoPag .EdtDesTip.Text :=DM1.cdsSolicitud.FieldByName('TIPCREID').AsString+' - '+DM1.CrgDescrip(xCondicion,'CRE110','TIPCREDES');
     fCronoPag.lblEstado.Caption := DM1.cdsSolicitud.fieldbyname('CREESTADO').AsString;

end;

procedure TDM1.AplicaSaldoPre(xAsoId, xCreDid: String);
var xSaldoAct:Currency;
begin
xSaldoAct:= DM1.SaldoActual(xAsoId,xCreDid,'0');
DM1.cdsQry3.Close;
DM1.cdsQry3.DataRequest('SELECT ASOID,CREDID,CREESTID,CREESTADO,CRESDOACT FROM CRE301 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And CREESTID IN (''02'',''21'') ');
DM1.cdsQry3.Open;
If  xSaldoAct > 0 Then
   Begin
     cdsQry3.Edit;
     cdsQry3.fieldbyname('CRESDOACT').AsFloat := xSaldoAct ;
     cdsQry3.fieldbyname('CREESTID').AsString :='02';
     cdsQry3.fieldbyname('CREESTADO').AsString:='POR COBRAR';
     cdsQry3.ApplyUpdates(0);
   End
Else
   Begin
     cdsQry3.Edit;
     cdsQry3.fieldbyname('CREESTID').AsString :='21';
     cdsQry3.fieldbyname('CREESTADO').AsString:='CANCELADO';
     cdsQry3.fieldbyname('CRESDOACT').AsFloat := xSaldoAct ;
     cdsQry3.ApplyUpdates(0);
    End;
DM1.cdsQry3.Close;
DM1.CrgDatos;
end;

function TDM1.SaldoActual(xAsoId, xCreDid, xTip: String): Currency;
var xSaldo:Currency;
    xSQL:string;
begin
     xSaldo:=0;
     cdsCuentas.Close;
     If xTip='X' Then
        Begin
           xSQL:= 'SELECT ASOID,CREDID,CREMTOCOB,CREMTO FROM CRE302 WHERE ASOID ='+QuotedStr(Trim(xAsoId))+' AND CREESTID IN (''02'',''11'',''27'',''14'',''19'')';
        End
     Else
        Begin
           If xTip='0' Then
              xSQL:= 'SELECT ASOID,CREDID,CREMTOCOB,CREMTO FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And CREESTID IN (''02'',''11'',''27'',''14'')'
           Else
              xSQL:= 'SELECT ASOID,CREDID,CREMTOCOB,CREMTO FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And CREESTID IN (''02'',''11'',''27'') ';
        End;
     cdsCuentas.DataRequest(xSql);
     cdsCuentas.Open;
     If cdsCuentas.RecordCount > 0 Then
        Begin
          cdsCuentas.First;
          While Not cdsCuentas.Eof do
          Begin
            xSaldo := xSaldo + (cdsCuentas.fieldbyname('CREMTO').AsFloat - cdsCuentas.fieldbyname('CREMTOCOB').AsFloat);
            cdsCuentas.Next;
          End;
        End;
     Result:=xSaldo;
     cdsCuentas.Close;
end;

procedure TDM1.ActSaldoPrest(xAsoId: String);
var xCreDid:String;
    xSaldoActual:Currency;
begin
     cdsQry5.Close;
     cdsQry5.DataRequest('SELECT ASOID,CREDID,CRESDOACT,CREESTID,CREESTADO FROM CRE301 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREESTID IN (''02'',''21'')');
     cdsQry5.Open;
     cdsQry5.First;
     xSaldoActual:=0;
     While Not cdsQry5.Eof do
     Begin
        xCreDid:=cdsQry5.fieldbyname('CREDID').AsString;
        xSaldoActual:=SaldoActual(xAsoId, xCreDid,'0');
        If  xSaldoActual > 0 Then
           Begin
             cdsQry5.Edit;
             cdsQry5.fieldbyname('CRESDOACT').AsFloat := xSaldoActual ;
             cdsQry5.fieldbyname('CREESTID').AsString :='02';
             cdsQry5.fieldbyname('CREESTADO').AsString:='POR COBRAR';
           End
        Else
           Begin
              cdsQry5.Edit;
              cdsQry5.fieldbyname('CREESTID').AsString :='21';
              cdsQry5.fieldbyname('CREESTADO').AsString:='CANCELADO';
              cdsQry5.fieldbyname('CRESDOACT').AsFloat := xSaldoActual ;
           End;
        xSaldoActual:=0;
        cdsQry5.Next;
     End;
     cdsQry5.ApplyUpdates(0);
     cdsQry5.Close;
end;
//--Inicio: SPP_201404_ASO--//
function TDM1.CrgArea(xUsuario: String): String;
begin
   cdsUser.Close;
   {cdsUser.DataRequest('SELECT USERID,USERNOM,AREA,ORIGEN,NIVEL '
                      +'FROM USERTABLE '
                      +'WHERE USERID='+QuotedStr(Trim(xUsuario)));
   }

   cdsUser.DataRequest('SELECT U.USERID,U.USERNOM,U.AREA,U.ORIGEN,U.NIVEL,NIV.USERNIV'
                      +' FROM USERTABLE U,ASO_NIV_USU_OTO NIV'
                      +' WHERE U.USERID=NIV.USERID(+)'
                      +' AND U.USERID='+QuotedStr(Trim(xUsuario)));
   cdsUser.Open;
   If cdsUser.RecordCount=1 Then
      Result:=cdsUser.fieldByname('AREA').AsString // 1,3
             +cdsUser.fieldByname('ORIGEN').AsString // 4,2
             +cdsUser.fieldByname('NIVEL').AsString // 6,2
             +cdsUser.fieldByname('USERNIV').AsString // 8,2
   Else
      Result:='';
   cdsUser.Close
end;
//--Fin: SPP_201404_ASO--//

function TDM1.RecuperarTipoCambio(xFecha: TDateTime): String;
var
  xFechaFormato : string ;
begin
  xFechaFormato := Formatdatetime(wFormatFecha,xFecha) ;
  wTipoCambioUsar := 'TCAMVOV';
  RecUltTipoCambio(xFechaFormato);
  if cdsQry.RecordCount <> 0 then
  begin
    if not cdsQry.FieldByName(wTipoCambioUsar).isnull then
      Result := cdsQry.FieldByName(wTipoCambioUsar).AsString
    else
      Result := '0.00' ;
  end
  else
  begin
    Result := '0.00' ;
  end ;

end;

function TDM1.CalSaldo(xAsoid, xFecCalCulo: String): Currency;
var xfVenc,xTipPre,xC_Abn:String; xNtAbono:Currency ;
begin
     cdsInt.Close;
     cdsInt.DataRequest('SELECT TIPCREID,CREDID,CREANO,CREMES,CREMTOCOB,CREMTO,CREAMORT,CREFLAT FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And  CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA');
     cdsInt.Open;
     cdsInt.First;
     xNtAbono:=0;
     While Not cdsInt.Eof do
     Begin
      xTipPre:=TipDes(Trim(cdsInt.fieldbyname('TIPCREID').AsString));
      If xTipPre='S' Then
         xC_Abn:=DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoid))+' AND CREDID='+QuotedStr(Trim(cdsInt.fieldbyname('CREDID').AsString)),'CRE301','C_ABN');

      If Length(Trim(xC_Abn))>0 Then xTipPre:='P';
    If xTipPre<>'P' Then
      Else
        Begin
        xfVenc:= Trim(cdsInt.fieldbyname('CREANO').AsString + cdsInt.fieldbyname('CREMES').AsString);
        If xfVenc > xFecCalCulo Then
                xNtAbono := xNtAbono + ((cdsInt.fieldbyname('CREAMORT').AsCurrency + cdsInt.fieldbyname('CREFLAT').AsCurrency)-cdsInt.fieldbyname('CREMTOCOB').AsCurrency)
        Else
            Begin
                xNtAbono := xNtAbono + (cdsInt.fieldbyname('CREMTO').AsCurrency - cdsInt.fieldbyname('CREMTOCOB').AsCurrency);
            End;
        End;
        cdsInt.Next;
     End;
     cdsInt.Close;
     Result:=xNtAbono;

end;

function TDM1.TipDes(xTipPre: String): String;
begin
cdsTCredito.Close;
cdsTCredito.DataRequest('SELECT TIP_DES FROM CRE110 Where TIPCREID= '+QuotedStr(Trim(xTipPre)));
cdsTCredito.Open;
If cdsTCredito.RecordCount=1 Then
   Result:=cdsTCredito.fieldbyname('TIP_DES').AsString
Else
   Result:='';

cdsTCredito.Close;

end;

function TDM1.CalculaCuota(xTas_Int, xTas_Flt, xMonOto: Real;  xNumCuo: Integer): Currency;
var xMon_Cuo,sFlt_Pag,cNumer,cDenom:Real;
begin
If xTas_Int <> 0 Then
   Begin
     xTas_Int:= StrToFloat(FloatToStrF(xTas_Int/100,ffFixed,15,4));
     xTas_Flt:= StrToFloat(FloatToStrF(xTas_Flt/100,ffFixed,15,4));
     cNumer  := xTas_Int * Power((1+xTas_Int),xNumCuo);
     cDenom  := Power((1+xTas_Int),xNumCuo)-1 ;
     xMon_Cuo:= StrToFloat(FloatToStrF(xMonOto * (cNumer/cDenom),ffFixed,15,2));
     sFlt_Pag:= StrToFloat(FloatToStrF(xMonOto * xTas_Flt / xNumCuo,ffFixed,15,2)) ;
   End
Else
   Begin
     xMon_Cuo:=xMonOto / xNumCuo;
     xMon_Cuo:= StrToFloat(FloatToStrF(xMon_Cuo,ffFixed,15,2));
   End;
   Result:= xMon_Cuo+sFlt_Pag;
end;

function TDM1.RecuperaDatos(xTabla, xCampo, xVariable,  xRecupera: String): String;
var xSQL:String;
begin
  xSQL:='SELECT * FROM '+xTabla+' WHERE '+xCampo+'='+ QuotedStr(Trim(xVariable));
  cdsInt.Close;
  cdsInt.DataRequest(xSQL);
  cdsInt.Open;
  If cdsInt.RecordCount = 1 Then
     Result:=cdsInt.fieldbyname(xRecupera).AsString
  Else
     Result:='';
     cdsInt.Close;
end;

function TDM1.UltimoDia(xMes, xAno: Integer): String;
var xDia:String;
Const
   FinDia: Array [1..13] of String = ('31','28','31','30','31','30','31','31','30','31','30','31','29');
Begin
   If xAno Mod 4 = 0 Then
      Begin
         If xMes=2 Then
            xMes:=13;
      End ; Result:=FinDia[xMes];

end;


procedure TDM1.GnrCronograma(xAsoid, xCredId: String; xTas_Int, xTas_Flt, xMonOto: Real; xFec_Pre: tDateTime; xNumCuo: Integer);
var i,j:Integer;
    xMon_Cuo,cNumer,cDenom,sFlt_Pag,xSal_Pag:Real;
    xMon_Aux,xAmo_Pag,xInt_Pag,xGas_Pag,s,r:Real;
    sMon_Cuo,sAmo_Pag,sInt_Pag,sGas_Pag:Real;
    xFec_Ven:tDateTime;
    tMes,tAno,xMes,xAno:Integer;
    tDia,xDia,xPrdGra:String;
begin
xPrdGra:=Trim(DM1.RecuperaDatos('CRE110','TIPCREID',Copy(Trim(xCreDid),7,2),'PER_GRA'));
If xPrdGra>'0' Then
   Begin
      For j:= 1 to StrToInt(xPrdGra) Do
       Begin
         tDia:=Copy(DateToStr(xFec_Pre),1,2);
         tMes:=StrToInt(Copy(DateToStr(xFec_Pre),4,2)) + 1;
         tAno:=StrToInt(Copy(DateToStr(xFec_Pre),7,4));
         If tMes > 12 Then
            Begin
              tMes := 1;
              tAno := tAno + 1 ;
            End;
            xFec_Pre:=StrToDate(tDia+'/'+Format('%.2d',[tMes])+'/'+ Trim(IntToStr(tAno)));
       End;

   End;
cdsGarantia.Close;
cdsGarantia.DataRequest('SELECT ASOID,ASOCODMOD,ASOCODPAGO,TIPCREID,TMONID,CREANO,'           +
                               'CREMES,CRESALDO,CRECUOTA,CREMTO,CREAMORT,CREINTERES,CREFLAT,'        +
                               'CREFVEN,USEID,UPROID,UPAGOID,BANCOID,CCBCOID,USUARIO,FREG,'          +
                               'FORPAGOID,ASOAPENOM,CREDID,CRETCALID,TIPDESEID,TMONABR,CRETCALABR,'  +
                               'TIPDESABR,LISTAABR,CIAID,CREESTID,CREESTADO,LISTAID,ASOCODAUX,'      +
                               'CIUDID,AREAID,CRECAPCRON,CRECAPITAL,CREMTOINT,CREMTOFLAT,CREMTOCOB ' +
                               'FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoId)));

cdsGarantia.Open;
cdsGarantia.Edit;

cdsCreditoCab.Close;
cdsCreditoCab.DataRequest('SELECT ASOCODMOD,ASOCODAUX,ASOCODPAGO,TIPCREID,USEID,UPROID,  '  +
                               'UPAGOID,BANCOID,USUARIO,FREG,FORPAGOID,ASOAPENOM,             '  +
                               'CREDID,CRETCALID,TMONABR,CRETCALABR,                '  +
                               'LISTAABR,CIAID,LISTAID,CIUDID FROM CRE301                     '  +
                               'WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+ QuotedStr(Trim(xCredId))) ;
cdsCreditoCab.Open;
If xTas_Int <> 0 Then
   Begin
     xTas_Int:= StrToFloat(FloatToStrF(xTas_Int/100,ffFixed,15,4));
     xTas_Flt:= StrToFloat(FloatToStrF(xTas_Flt/100,ffFixed,15,4));
     cNumer  := xTas_Int * Power((1+xTas_Int),xNumCuo);
     cDenom  := Power((1+xTas_Int),xNumCuo)-1 ;
     xMon_Cuo:= StrToFloat(FloatToStrF(xMonOto * (cNumer/cDenom),ffFixed,15,2));
     sFlt_Pag:= StrToFloat(FloatToStrF(xMonOto * xTas_Flt / xNumCuo,ffFixed,15,2)) ;
   End
Else
   Begin
     xMon_Cuo:=xMonOto / xNumCuo;
     xMon_Cuo:= StrToFloat(FloatToStrF(xMon_Cuo,ffFixed,15,2));
   End;
xMon_Aux:=xMonOto ; xSal_Pag:= xMonOto;
sMon_Cuo:=0 ; sAmo_Pag:=0 ; sInt_Pag:=0 ; sGas_Pag:=0; s:=0 ;r :=0;
For i:= 1 to xNumCuo  Do
   Begin
      xInt_Pag:=StrToFloat(FloatToStrF(xMonOto * xTas_Int,ffFixed,15,2));
      xAmo_Pag:=xMon_Cuo-xInt_Pag;
      xMes:=StrToInt(Copy(DateToStr(xFec_Pre),4,2)) + 1;
      xAno:=StrToInt(Copy(DateToStr(xFec_Pre),7,4));
      If xMes > 12 Then
         Begin
           xMes := 1;
           xAno := xAno + 1 ;
         End;
      xDia:=UltimoDia(xMes,xAno);
      xFec_Ven := StrToDate(xDia+'/'+Format('%.2d',[xMes])+'/'+ Trim(IntToStr(xAno)));
      sAmo_Pag := sAmo_Pag + xAmo_Pag ;
      sInt_Pag := sInt_Pag + xInt_Pag ;
      sMon_Cuo := sMon_Cuo + xMon_Cuo ;
      If i = xNumCuo Then
         Begin
            If sAmo_Pag > xMon_Aux Then
               s := sAmo_Pag - xMon_Aux ;
            If sInt_Pag > ( sMon_Cuo - xMon_Aux ) Then
               r := sInt_Pag - ( sMon_Cuo - xMon_Aux ) ;
         End;
      cdsGarantia.Insert;
      cdsGarantia.FieldByName('ASOID').AsString   := xAsoid;
      cdsGarantia.FieldByName('ASOCODMOD').AsString := cdsCreditoCab.FieldByName('ASOCODMOD').AsString;
      cdsGarantia.FieldByName('ASOCODAUX').AsString := cdsCreditoCab.FieldByName('ASOCODAUX').AsString;
      cdsGarantia.FieldByName('TIPCREID').AsString := cdsCreditoCab.FieldByName('TIPCREID').AsString;
      cdsGarantia.FieldByName('TMONID').AsString := 'N';
      cdsGarantia.FieldByName('TMONABR').AsString := 'S/.';
      cdsGarantia.FieldByName('CRECUOTA').AsInteger   := i;
      cdsGarantia.FieldByName('CREFVEN').AsDateTime := xFec_Ven;
      cdsGarantia.FieldByName('CREAMORT').AsFloat     := xAmo_Pag-s+r;
      cdsGarantia.FieldByName('CREINTERES').AsFloat   := xInt_Pag+s-r;
      cdsGarantia.FieldByName('CREFLAT').AsFloat    := sFlt_Pag;
      cdsGarantia.FieldByName('CREMTO').AsFloat     := xMon_Cuo + sFlt_Pag;
      cdsGarantia.FieldByName('CRECAPCRON').AsFloat     := xSal_Pag;
      cdsGarantia.FieldByName('AREAID').AsString    := DM1.xArea;
      cdsGarantia.FieldByName('CRESALDO').AsFloat     := xMon_Cuo + sFlt_Pag;
      cdsGarantia.FieldByName('CREMES').AsString  := Copy(DateToStr(xFec_Ven),4,2);
      cdsGarantia.FieldByName('CREANO').AsString  := Copy(DateToStr(xFec_Ven),7,4);
      cdsGarantia.FieldByName('USEID').AsString := cdsCreditoCab.FieldByName('USEID').AsString;
      cdsGarantia.FieldByName('UPROID').AsString := cdsCreditoCab.FieldByName('UPROID').AsString;
      cdsGarantia.FieldByName('UPAGOID').AsString := cdsCreditoCab.FieldByName('UPAGOID').AsString;
      cdsGarantia.FieldByName('ASOAPENOM').AsString := cdsCreditoCab.FieldByName('ASOAPENOM').AsString;
      cdsGarantia.FieldByName('CREDID').AsString := cdsCreditoCab.FieldByName('CREDID').AsString;
      cdsGarantia.FieldByName('FORPAGOID').AsString := cdsCreditoCab.FieldByName('FORPAGOID').AsString;
      If cdsCreditoCab.FieldByName('FORPAGOID').AsString='18' Then
          cdsGarantia.FieldByName('BANCOID').AsString :='04';
      cdsGarantia.FieldByName('CREESTID').AsString :='02';
      cdsGarantia.FieldByName('CREESTADO').AsString :='POR COBRAR';
      cdsGarantia.FieldByName('CRECAPITAL').AsFloat := 0.00;
      cdsGarantia.FieldByName('CREMTOINT').AsFloat := 0.00;
      cdsGarantia.FieldByName('CREMTOFLAT').AsFloat := 0.00;
      cdsGarantia.FieldByName('CREMTOCOB').AsFloat := 0.00;
      xSal_Pag:= xMonOto - xAmo_Pag;
      xMonOto  := xSal_Pag; xFec_Pre:= xFec_ven;
   end;
   cdsGarantia.ApplyUpdates(0);
   cdsGarantia.Close;
   cdsCreditoCab.Close;

end;

function TDM1.StrSpaceD(wNumero: String; wLargo: Integer): string;
var
  i : integer;
  s, xTemp : string;
begin
  s := '';
  for i:=1 to wLargo do
  	s := s+' ';
  s := trim(wNumero)+s;
  xTemp := copy(s,length(s)-(wLargo-1),wLargo);
	result := xTemp;

end;

function TDM1.IniFinCrono(xFec_Pre: tDateTime; xNum_Cuo: Integer; xPrdGra,xTipPre: String): String;
var
    i,j:Integer;
    xPeriodo,xDia,tDia:String;
    xFecIni,xFecFin,xFec_Ven:tDateTime;
    tMes,tAno,xMes,xAno:Integer;

begin
    If xPrdGra='S' Then
       Begin
         xPeriodo:=Trim(DM1.RecuperaDatos('CRE110','TIPCREID',Trim(xTipPre),'PER_GRA'));
         If xPeriodo>'0' Then
         Begin
           For j:= 1 to StrToInt(xPeriodo) Do
           Begin
              tDia:=Copy(DateToStr(xFec_Pre),1,2);
              tMes:=StrToInt(Copy(DateToStr(xFec_Pre),4,2)) + 1;
              tAno:=StrToInt(Copy(DateToStr(xFec_Pre),7,4));
              If tMes > 12 Then
                 Begin
                  tMes := 1;
                  tAno := tAno + 1 ;
                 End;
             xFec_Pre:=StrToDate(tDia+'/'+Format('%.2d',[tMes])+'/'+ Trim(IntToStr(tAno)));
           End;
         End;
       End;

    For i:= 1 to xNum_Cuo Do
    Begin
      xMes:=StrToInt(Copy(DateToStr(xFec_Pre),4,2)) + 1;
      xAno:=StrToInt(Copy(DateToStr(xFec_Pre),7,4));
      If xMes > 12 Then
         Begin
           xMes := 1;
           xAno := xAno + 1 ;
         End;
      xDia:=DM1.UltimoDia(xMes,xAno);
      xFec_Ven := StrToDate(xDia+'/'+Format('%.2d',[xMes])+'/'+ Trim(IntToStr(xAno)));
      If i=1 Then  xFecIni:=xFec_Ven;
      If i=xNum_Cuo Then xFecFin:=xFec_Ven;

       xFec_Pre:=xFec_Ven;
    End;
    Result:= Copy(DateToStr(xFecIni),7,4)+Copy(DateToStr(xFecIni),4,2)+Copy(DateToStr(xFecIni),1,2)+Copy(DateToStr(xFecFin),7,4)+Copy(DateToStr(xFecFin),4,2)+Copy(DateToStr(xFecFin),1,2) ;
end;

function TDM1.SaldoTotal(xAsoId, xCreDid: String): Currency;
var xSaldo:Currency;
begin
     xSaldo:=0;
     cdsCuentas.Close;
     cdsCuentas.DataRequest('SELECT ASOID,CREDID,CREMTOCOB,CREMTO FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid))+' And CREESTID=''02'' ');
     cdsCuentas.Open;
     If cdsCuentas.RecordCount > 0 Then
        Begin
          cdsCuentas.First;
          While Not cdsCuentas.Eof do
          Begin
            xSaldo := xSaldo + (cdsCuentas.fieldbyname('CREMTO').AsFloat - cdsCuentas.fieldbyname('CREMTOCOB').AsFloat);
            cdsCuentas.Next;
          End;
        End;
     Result:=xSaldo;
     cdsCuentas.Close;

end;

procedure TDM1.BlqComponentes(xForm: tForm);
var xSQL,xComponente,x,y:String;
    i:Integer;

begin
   if not DCOM1.Connected then Exit;

   xSQL:='SELECT USERID,TABLA,CAMPO,COMPONENTE FROM SIS000 WHERE USERID='+QuotedStr(DM1.wUsuario)+' AND COMPONENTE IS NOT NULL '
        +' and MODULOID=''ASO'' ' ;

   cdsClaCre.Close;  cdsClaCre.DataRequest(xSQL); cdsClaCre.Open;
   If DM1.cdsClaCre.RecordCount >0 Then
   Begin
// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
      DM1.cdsClaCre.First;
      While Not DM1.cdsClaCre.Eof Do
      Begin
         xComponente:=Trim(DM1.cdsClaCre.FieldByName('COMPONENTE').AsString);
         for i := 0 To xForm.ComponentCount-1 do begin
             If UpperCase(xComponente)=UpperCase(xForm.Components[i].Name) Then
                Begin
                   TwwDBEdit(xForm.Components[i]).Enabled  := True;
                   Break;
                End;
         End;
         DM1.cdsClaCre.Next;
      End;
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket
   End;
   cdsClaCre.Close;

   {xSQL:='SELECT A.TABLA,A.CAMPO,A.COMPONENTE,A.CAMPODES,A.GRUPO FROM SIS001 A WHERE A.COMPONENTE IS NOT NULL AND TABLA=''Boton''  AND MODULOID=''ASO'' AND '+
      'NOT EXISTS (SELECT USERID,COMPONENTE FROM SIS000 WHERE USERID='+QuotedStr(DM1.wUsuario)+' AND A.COMPONENTE=COMPONENTE  AND MODULOID=''ASO'') ORDER BY A.GRUPO';
   cdsClaCre.Close;  cdsClaCre.DataRequest(xSQL); cdsClaCre.Open;
   If DM1.cdsClaCre.RecordCount >0 Then
   Begin
      DM1.cdsClaCre.First;
      While Not DM1.cdsClaCre.Eof Do
      Begin
       xComponente:=Trim(DM1.cdsClaCre.FieldByName('COMPONENTE').AsString);
       for i := 0 To xForm.ComponentCount-1 do begin
          If UpperCase(xComponente)=UpperCase(xForm.Components[i].Name) Then
          Begin
              TwwDBEdit(xForm.Components[i]).Enabled  := False;
          End;
       End;
       DM1.cdsClaCre.Next;
      End;
   End;
   cdsClaCre.Close;}
end;


function TDM1.NroSrb(xTabla: String): String;
var xSQL:String;
begin
  xSQL:='SELECT MAX(NROTRAN) NROTRAN FROM SRB000';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount=0 Then
      Result:='00001'
  Else
      Result:=Format('%.5d',[DM1.cdsQry.FieldByName('NROTRAN').AsInteger+1]);
end;


function TDM1.FechaHora: String;
var xFechaHora:String;
begin
DM1.cdsTVia.Close;
DM1.cdsTVia.DataRequest('SELECT SYSDATE FROM DUAL');
DM1.cdsTVia.Open;
xFechaHora:=DM1.cdsTVia.FieldByName('SYSDATE').AsString;
DM1.cdsTVia.Close;
Result:=xFechaHora;


end;

// Inicio: SPP_201401_ASO
procedure TDM1.HojaExcel(Tit: string; TDs: TDataSource; TDb: TDBGrid);
var Lcid, C, CH, CH1, I, W, X, Y, TotHoja: Integer; Bk: TBookmarkStr;
    Tabla: Variant; L, A: OleVariant; HH: Extended;
    // INICIO HPC_201513_ASO
    F: TFieldDef;
    // FIN HPC_201513_ASO
begin
	if not TDs.DataSet.Active then Exit;
	if TDs.DataSet.RecordCount = 0 then Exit;

	Lcid:= GetUserDefaultLCID;
	C:= TDb.Columns.Count;
	CH:= 1;

	if TDs.DataSet.RecordCount > 65000 then
		begin
			HH:= TDs.DataSet.RecordCount / 65000;
			CH:= Trunc(HH);
			if Frac(HH) > 0 then CH:= CH + 1;
		end;


	ExcelApp.Visible[Lcid]:= True;
	ExcelApp.Caption:= 'Consultas en EXCEL';
	ExcelBook.ConnectTo(ExcelApp.Workbooks.Add(1, Lcid));
	if CH > 1 then
		begin
			ExcelBook.Worksheets.Add(NULL, NULL, (CH - 1), NULL, Lcid);
			for I:= 1 to CH do
				begin
					WS.ConnectTo(ExcelBook.Worksheets[I] as _Worksheet);
					WS.Name:= Tit + '_' + IntToStr(I);
				end;
		end;

	WS.ConnectTo(ExcelBook.Worksheets[1] as _Worksheet);
	WS.Activate(Lcid);
	if CH = 1 then WS.Name:= Tit;
	ExcelApp.ScreenUpdating[Lcid]:= False;
	for X:= 1 to CH do
		begin
			WS.ConnectTo(ExcelBook.Worksheets[X] as _Worksheet);
			WS.Activate(Lcid);
			for I:= 0 to (C - 1) do
				begin
					L:= WS.Cells.Item[1, I + 1];
					WS.Range[L, L].Value2:= TDb.Columns[I].Title.Caption;
				end;
		end;

	WS.ConnectTo(ExcelBook.Worksheets[1] as _Worksheet);
	WS.Activate(Lcid);

	CH1:= 1;
	W:= 2;
	I:= 1;
	Y:= 1;
	TotHoja:= 0;
	TDs.DataSet.DisableControls;
	Bk:= TDs.DataSet.Bookmark;

	Tabla:= VarArrayCreate([1, 5000, 0, C], varVariant);
	TDs.DataSet.First;
	while not TDs.DataSet.Eof do
		begin
      // INICIO HPC_201513_ASO
			for X:= 0 to (C - 1) do //Tabla[Y, X]:= TDs.DataSet.Fields[X].AsString;
      Begin
         F:= TDs.DataSet.FieldDefs.Items[X];
         // Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
         If ((F.DataType =  ftDate) or
            (F.DataType =  ftDateTime) or
            (F.DataType =  ftTimeStamp)) AND
            (Length(TRIM(TDs.DataSet.Fields[X].AsString))<>0) Then
            Tabla[Y, X] := ''''+TDs.DataSet.Fields[X].AsString
         Else
            Tabla[Y, X] := ''''+TDs.DataSet.Fields[X].AsString;
         // Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
      end;
      // FIN HPC_201513_ASO
			if Y = 5000 then
				begin
					L:= 'A' + IntToStr(W);
					WS.Range[L, WS.Cells.Item[I + 1, C]].Value2:= Tabla;
					try
						Tabla:= Unassigned;
					finally
						Tabla:= VarArrayCreate([1, 5000, 0, C], varVariant);
					end;

					Y:= 0;
					W:= I + 2;
				end;
			Inc(Y, 1);
			Inc(I, 1);
			Inc(TotHoja, 1);
			if TotHoja = 65000 then
				begin
					L:= 'A' + IntToStr(W);
					WS.Range[L, WS.Cells.Item[I, C]].Value2:= Tabla;

					try
						Tabla:= Unassigned;
					finally
						Tabla:= VarArrayCreate([1, 5000, 0, C], varVariant);
					end;

					CH1:= CH1 + 1;
					WS.ConnectTo(ExcelBook.Worksheets[CH1] as _Worksheet);
					WS.Activate(Lcid);

					Y:= 1;
					W:= 2;
					I:= 1;
					TotHoja:= 0;
				end;
			Application.ProcessMessages;
			TDs.DataSet.Next;
		end;
	CH1:= I;
	try
	   WS.Range['A' + IntToStr(W), WS.Cells.Item[CH1, C]].Value2:= Tabla;
	finally
		Tabla:= Unassigned;
	end;

	for X:= 1 to CH do
		begin
			WS.ConnectTo(ExcelBook.Worksheets[X] as _Worksheet);
			WS.Activate(Lcid);

			SetLength(FormatCel, C + 1);
			FormatosCeldas(C,TDs);
			for I:= 1 to C do
				begin
					L:= WS.Cells.Item[1, I];
					WS.Range[L, L].EntireColumn.NumberFormat:= FormatCel[I];
				end;

			for I:= 0 to (C - 1) do
				begin
					L:= WS.Cells.Item[1, I + 1];
					Y:= TDs.DataSet.Fields[I].DisplayWidth;
					if Length(TDb.Columns[I].Title.Caption) > Y then
						Y:= Length(TDb.Columns[I].Title.Caption);
					  WS.Range[L, L].EntireColumn.ColumnWidth:= Y + 2;
					if TDb.Columns[I].Alignment = taLeftJustify then A:= 2;
					if TDb.Columns[I].Alignment = taCenter then A:= 3;
					if TDb.Columns[I].Alignment = taRightJustify then A:= 4;
					WS.Range[L, L].EntireColumn.HorizontalAlignment:= A;
				end;

			L:= WS.Cells.Item[1, C];
			WS.Range['A1', L].HorizontalAlignment:= 3;
			WS.Range['A1', L].Interior.Color:= clMaroon;
			WS.Range['A1', L].Font.Color:= clWhite;
			WS.Range['A1', L].Font.Bold:= True;

			if CH = 1 then W:= TDs.DataSet.RecordCount + 1
			else if (CH > 1) and (X < CH) then W:= 15101
			else if (CH > 1) and (X = CH) then W:= CH1;

			WS.PageSetup.PrintGridlines:= True;
			WS.PageSetup.PrintTitleRows:= '1:1';

			WS.DefaultInterface.Set_DisplayAutomaticPageBreaks(Lcid, True);
		end;

	WS.ConnectTo(ExcelBook.Worksheets[1] as _Worksheet);
	WS.Activate(Lcid);

	ExcelApp.ScreenUpdating[Lcid]:= True;

	TDs.DataSet.EnableControls;
	TDs.DataSet.Bookmark:= Bk;


end;
// Fin: SPP_201401_ASO

procedure TDM1.FormatosCeldas(N: Integer; TDs: TDataSource);
var I: Integer; F: TFieldDef;
begin
    for I:= 1 to N do
    Begin
          F := TDs.DataSet.FieldDefs.Items[I-1];
          Case F.DataType of
               ftString: FormatCel[I]:= DM1.StrZero('0',Length(TDs.DataSet.Fields[I-1].AsString));
               ftDate: FormatCel[I]:= 'dd/mm/yyyy';
               ftDateTime: FormatCel[I]:= 'dd/mm/yyyy';
               ftTimeStamp: FormatCel[I]:= 'dd/mm/yyyy';
               ftUnknown: FormatCel[I]:= DM1.StrZero('0',Length(TDs.DataSet.Fields[I-1].AsString));
          Else
               FormatCel[I]:= Null;
          End;
     End;


end;

function TDM1.AsignaAsoId(xTabla: String): String;
var xSQL:String;
begin
xSQL:='SELECT MAX(ASOID) ASOID FROM '+xTabla;
DM1.cdsAsoX.Close;
DM1.cdsAsoX.DataRequest(xSQL);
DM1.cdsAsoX.Open;
If Length(Trim(DM1.cdsAsoX.FieldByName('ASOID').AsString))=0 Then
   Begin
      Result:='0000000001';
   End
Else
   Begin
      Result:=Format('%.10d',[DM1.cdsAsoX.FieldByName('ASOID').AsInteger+1]);
   End;
DM1.cdsAsoX.Close;
end;

function TDM1.AsignaNroAux(xTabla, xAsoCodMod: String): String;
var xSQL:String;
    xNumero:Integer;
begin
   xSQL:='SELECT ASOCODMOD,ASOCODAUX FROM '+xTabla+' WHERE ASOCODMOD='+QuotedStr(xAsoCodMod)+' AND ASOCODAUX IS NOT NULL ORDER BY ASOCODAUX';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
      Begin
         DM1.cdsQry.First; xNumero := 0;
         While Not DM1.cdsQry.Eof Do
         Begin
            xNumero := xNumero + 1;
            If xNumero<>DM1.cdsQry.FieldByName('ASOCODAUX').AsInteger Then
               Begin
                  Result:=Format('%.2d',[xNumero]);
                  Exit;
               End;
            DM1.cdsQry.Next;
         End;
         If DM1.cdsQry.Eof Then
            Begin
               Result:=Format('%.2d',[xNumero+1]);
               Exit;
            End;
      End
   Else
      Result := '01';

   DM1.cdsQry.Close;

end;


function TDM1.AsoClfPen(xAsoid, xPeriodo: String): Char;
var xSQL:String;
    xCuotas:Integer;
begin
DM1.cdsAsoX.Close;
xSQL:='SELECT A.ASOID,A.CREDID,A.CRECUOTA,A.CREFPAG CREFPAG,CREFVEN,B.CREESTID,A.CREMTO,A.CREMTOCOB '+
      'FROM CRE302 A,CRE301 B '+
      'WHERE A.ASOID='+QuotedStr(xAsoId)+' AND A.ASOID=B.ASOID AND B.CREDID=A.CREDID AND B.CREESTID=''02'' AND TO_CHAR(CREFVEN,''YYYYMM'')<'+QuotedStr(xPeriodo)+' AND A.CREESTID IN (''02'',''27'',''11'') AND CREFOTORG>''31/12/1999'' '+
      'ORDER BY ASOID,CREDID,CRECUOTA';
DM1.cdsAsoX.DataRequest(xSQL);
DM1.cdsAsoX.Open;
If DM1.cdsAsoX.RecordCount > 0 Then
   Begin
       xCuotas:=0;
       DM1.cdsAsoX.First;
       While Not DM1.cdsAsoX.Eof Do
       Begin
          xCuotas:=xCuotas + 1 ;
          DM1.cdsAsoX.Next;
       End;
       If xCuotas=0 Then Result:='A'
       Else If (xCuotas>0) AND (xCuotas<3) Then Result:='B'
       Else If (xCuotas>2) AND (xCuotas<5) Then  Result:='C'
       Else If (xCuotas>4) AND (xCuotas<7) Then  Result:='D'
       Else If xCuotas>6 Then Result:='E';
   End
Else
   Begin
       Result:='A';
   End;
DM1.cdsAsoX.Close;
end;

function TDM1.AsoClfCan(xAsoid: String): Char;
var xSQL:String;
    xDias:Integer;
begin
DM1.cdsAsoX.Close;
xSQL:='SELECT A.ASOID,A.CREDID,A.CRECUOTA,A.CREFPAG CREFPAG,CREFVEN,B.CREESTID,A.CREMTO,A.CREMTOCOB '+
      'FROM CRE302 A,CRE301 B '+
      'WHERE A.ASOID='+QuotedStr(xAsoId)+' AND A.ASOID=B.ASOID AND B.CREDID=A.CREDID AND CREFOTORG>''31/12/1999'' AND B.CREESTID NOT IN (''13'',''02'',''04'') '+
      'ORDER BY ASOID,CREDID,CRECUOTA';
DM1.cdsAsoX.DataRequest(xSQL);
DM1.cdsAsoX.Open;
If DM1.cdsAsoX.RecordCount > 0 Then
   Begin
       xDias:=0;
       DM1.cdsAsoX.First;
       While Not DM1.cdsAsoX.Eof Do
       Begin
          If DM1.cdsAsoX.FieldByName('CREFPAG').AsDateTime > DM1.cdsAsoX.FieldByName('CREFVEN').AsDateTime  Then
              xDias:=xDias + DaysBetween(DM1.cdsAsoX.FieldByName('CREFPAG').AsDateTime,DM1.cdsAsoX.FieldByName('CREFVEN').AsDateTime);
          DM1.cdsAsoX.Next;
       End;
       If xDias<31 Then Result:='1'
       Else If (xDias>30) AND (xDias<181) Then Result:='2'
       Else If (xDias >180) AND (xDias<361) Then  Result:='3'
       Else If xDias >360 Then  Result:='4';
   End
Else
   Begin
       Result:='1';
   End;
DM1.cdsAsoX.Close;
end;

function TDM1.CalculaEdad(FechaNacimiento: string): integer;
var
    iTemp,iTemp2,Nada:word;
    xFecha,yFecha:TDate;
begin
    yFecha:=DM1.FechaSys;
    xFecha:=StrToDate(FechaNacimiento);
    DecodeDate(yFecha,itemp,Nada,Nada);
    DecodeDate(xFecha,itemp2,Nada,Nada);
     if FormatDateTime('mmdd',yFecha) <
        FormatDateTime('mmdd',xFecha) then Result:=iTemp-iTemp2-1
                                     else Result:=iTemp-iTemp2;
end;

// Inicio SPP_201402_ASO - Cambio a DBExpress y Socket
{
function TDM1.ComputerName: string;
var
 buffer: array [0..MAX_COMPUTERNAME_LENGTH] OF CHAR;
 MAXSIZE:DWORD;
begin
 MAXSIZE := SIZEOF(BUFFER);
 IF NOT GetComputerName(@BUFFER,MAXSIZE) THEN
    RAISE Exception.Create('NO PUEDO DETERMINAR EL NOMBRE DEL EQUIPO');
 RESULT := STRPAS(@BUFFER);
end;
}
// Fin  SPP_201402_ASO - Cambio a DBExpress y Socket

//SACA EL TIEMPO TRANCURRIDO EN AÑOS MESES DIAS
function TDM1.tiempoTranscurrido(fechaFinal, fechaInicial: TDate): String;
 var  anoInicial, mesInicial, diaInicial, anoFinal, mesFinal, diaFinal:word;
      anosTranscurridos,mesesTranscurridos,diasTranscurridos:currency;
begin
  DecodeDate(fechaInicial, anoInicial, mesInicial, diaInicial);
  DecodeDate(fechaFinal, anoFinal, mesFinal, diaFinal);
  anosTranscurridos := Int(anoFinal - anoInicial);

  if( mesInicial <= mesFinal ) then
     mesesTranscurridos := mesFinal - mesInicial
  else
  begin
    mesesTranscurridos := mesFinal + 12 - mesInicial;
    anosTranscurridos := anosTranscurridos - 1;
  end;

  if( diaInicial <= diaFinal ) then
    diasTranscurridos := diaFinal - diaInicial
  else
  begin
    diasTranscurridos := diaFinal + MonthDays[IsLeapYear(anoFinal),mesFinal] - diaInicial;
    mesesTranscurridos := mesesTranscurridos - 1;
  end;
  //Caso especial donde no ha cumplido años, pero los cumplirá el mismo mes
  if mesesTranscurridos < 0 then
  begin
    anosTranscurridos := anosTranscurridos - 1;
    mesesTranscurridos := 12 + mesesTranscurridos;
  end;
  vanos:=anosTranscurridos;vmeses:=mesesTranscurridos;vdias:=diasTranscurridos;
//Inicio SPP_201410_ASO   : Se modifica función que calcula la Edad del Asociado en años, meses y dias
  if fechaInicial=0 then
     Result :=''
  else
  Result := Format('A:%.0f, M:%.0f, D:%.0f', [anosTranscurridos, mesesTranscurridos, diasTranscurridos]);
//Fin SPP_201410_ASO   : Se modifica función que calcula la Edad del Asociado en años, meses y dias
end;

function TDM1.UsrConsulta(xUsuario: String): Boolean;

var xSQL:String;
begin
xSQL:='SELECT USERID,NIVEL FROM USERTABLE WHERE USERID='+QuotedStr(xUsuario)+' AND NIVEL=''00'' ' ;
DM1.cdsRefTipoCre.Close; DM1.cdsRefTipoCre.DataRequest(xSQL); DM1.cdsRefTipoCre.Open;
If DM1.cdsRefTipoCre.RecordCount>0 Then  Begin Result:=True; End Else  Begin  Result:=False;  End; DM1.cdsRefTipoCre.Close
end;

//Registra Log de Asociados
procedure TDM1.Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
var xSQL:String;
begin
  If Length(Trim(xCodReg))=0 Then
  Begin
    MessageDlg(' No Se Grabo Log De USUARIO Informe al Equipo De Sistemas ', mtError, [mbOk], 0);
    Exit;
  End;
  Screen.Cursor:=crHourGlass;
  // Inicio: SPP_201303_ASO
  xSql := 'INSERT INTO APO201_LOG(ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID,  ASOFACT,  ASOTIPID,'
         +'       VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL,'
         +'       BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID,'
         +'       CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL,'
         +'       ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID,'
         +'       PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO,'
         +'       GENCODBAR, ENVAUTDES, CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, ANOENV, ENVIO, USUARIO_AUD, REGISTRO_AUD,'
         +'       SECUENCIA, CODREG, MODULOID, CODOTRDOCIDE, NUMOTRDOCIDE,AUTDESCUO,CODMODAUTDESCUO,FECAUTDESCUO,MDFASODIR,MDFCNTREG,MDFFECMOD,MDFUSRMOD,MDFZIPID,OFIREGAUTDESCUO,USUREGAUTDESCUO, CENEDUID, FECREGAUTDESAPO,'
         +'       CODTIPTEL1, CODREFTEL1, CODTIPTEL2, CODREFTEL2, CODPENSION)'
         +' SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID,  ASOFACT,  ASOTIPID,'
         +'       VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL,'
         +'       BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID,'
         +'       CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL,'
         +'       ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID,'
         +'       PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO,'
         +'       GENCODBAR, ENVAUTDES, CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, ANOENV, ENVIO,'
         +        QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(xSecuencia)+','+QuotedStr(xCodReg)+',''ASO'', CODOTRDOCIDE, NUMOTRDOCIDE,AUTDESCUO,CODMODAUTDESCUO,FECAUTDESCUO,MDFASODIR,MDFCNTREG,MDFFECMOD,MDFUSRMOD,MDFZIPID,OFIREGAUTDESCUO,USUREGAUTDESCUO,CENEDUID,FECREGAUTDESAPO,'
         +'       CODTIPTEL1, CODREFTEL1, CODTIPTEL2, CODREFTEL2, CODPENSION'
         +' FROM APO201 '
         +' WHERE ASOID='+QuotedStr(xAsoId);
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  // Fin: SPP_201303_ASO
  Screen.Cursor:=crDefault;
End;


//Codigo de Registro del Log
function TDM1.CodReg: String;
var xSQL,xResAbn:String;
    xCorAbn:Integer;
begin
  DM1.cdsListaCred.Close;
  xSQL:='SELECT CREAREA,CORREANO,TIPO,ASOID FROM CRE206 WHERE CORREANO='+QuotedStr(Copy(DateToStr(DM1.FechaSys),7,4))+' AND CREAREA=''ASO'' AND TIPO=''1''';
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

Function TDM1.verificahorario: Boolean;
Var xSql, xhora, xhorini, xhorfin, xdia:String;
Begin
  Result := True;
  //--Inicio:SPP_201405_ASO--//
  DM1.DCOM1.AppServer.EjecutaSql('ALTER SESSION SET NLS_DATE_LANGUAGE=''SPANISH''');
  ///--Fin:SPP_201405_ASO--//
  xSql := 'SELECT TO_CHAR(SYSDATE, ''HH24MI'') HORA, TO_CHAR(SYSDATE, ''DAY'') DIA  FROM DUAL';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  xhora := DM1.cdsQry.FieldByName('HORA').AsString;
  xdia  := Trim(DM1.cdsQry.FieldByName('DIA').AsString);
  xSql := 'SELECT DIA, HORINIRES, HORFINRES FROM CAS_HOR_RES WHERE DIA = '+QuotedStr(xdia);
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSql);
  DM1.cdsQry2.Open;
  xhorini := DM1.cdsQry2.FieldByName('HORINIRES').AsString;
  xhorfin := DM1.cdsQry2.FieldByName('HORFINRES').AsString;
  If (xhorini = '') And (xhorfin = '') Then
  Begin
    Result := True;
    Exit;
  End;
  If (xhora >= xhorini) And (xhora <= xhorfin) Then
  Begin
    Result := False;
    Exit;
  End;
End;

function TDM1.CountReg(xSQL: String): Integer;
var xCount:Integer;
begin
  Screen.Cursor:=crHourGlass;
  cdsQry.Close; cdsQry.DataRequest(xSQL);  cdsQry.Open;
  xCount:=cdsQry.RecordCount;
  cdsQry.Close; Screen.Cursor:=crDefault;
  Result:=xCount;
end;

function TDM1.UltProceso: String;
var xSQL:String;
begin
    Result:='';
    xSQL:='SELECT MAX(HREG) HREG FROM ASO_RES_AUT_DES';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    If DM1.cdsQry.RecordCount=1 Then
       Result:=DM1.cdsQry.FieldByName('HREG').AsString
    Else
       Result:='NO PROCESO';


    DM1.cdsQry.Close;
end;

function TDM1.PorGen: Currency;
var xSQL:String;
begin
    Result:=0.00;
    xSQL:='SELECT ROUND((SUM(AUTORIZARON)/SUM(POBLACION) * 100 ),2) AVANCE FROM ASO_RES_AUT_DES ';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    If DM1.cdsQry.RecordCount=1 Then
       Result:=DM1.cdsQry.FieldByName('AVANCE').AsCurrency
    Else
       Result:=0.00 ;

    DM1.cdsQry.Close;
end;

// se agrega procedimiento para exportar grid en excel
procedure TDM1.ExportaGridExcel(xDataGrid: TwwDBGrid; xFileName: String);
begin
   Screen.Cursor := crHourGlass;
   With xDataGrid, xDataGrid.ExportOptions Do
   Begin
      ExportType:= wwgetSYLK;
      FileName := xFileName+'.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(xDataGrid.exportoptions.Filename),
         Nil, Nil, sw_shownormal);
   End;
   Screen.Cursor := crDefault;
end;

function TDM1.NombreMes(wwMes: String): String;
begin
   If StrToInt(wwMes) = 1 Then Result := 'ENERO';
   If StrToInt(wwMes) = 2 Then Result := 'FEBRERO';
   If StrToInt(wwMes) = 3 Then Result := 'MARZO';
   If StrToInt(wwMes) = 4 Then Result := 'ABRIL';
   If StrToInt(wwMes) = 5 Then Result := 'MAYO';
   If StrToInt(wwMes) = 6 Then Result := 'JUNIO';
   If StrToInt(wwMes) = 7 Then Result := 'JULIO';
   If StrToInt(wwMes) = 8 Then Result := 'AGOSTO';
   If StrToInt(wwMes) = 9 Then Result := 'SETIEMBRE';
   If StrToInt(wwMes) = 10 Then Result := 'OCTUBRE';
   If StrToInt(wwMes) = 11 Then Result := 'NOVIEMBRE';
   If StrToInt(wwMes) = 12 Then Result := 'DICIEMBRE';
end;

function TDM1.calculamontodecese(xasofresnom, xasofresces,
  xtipben: String): double;
Var
   tmes, xSql: String;
Begin
   DM1.liquidacionbeneficio := 0;
   DM1.aportesCtaInd := 0;
   DM1.interesesCtaInd := 0;
   DM1.bonusCtaInd := 0;
   DM1.calculoA1996CtaInd := 0;
   DM1.montoTabRet := 0;
   DM1.montoTabCap := 0;
   DM1.montoTabSep := 0;
   DM1.montoUIT := 0;
   DM1.montoTabInv := 0;
   DM1.montoDiferencial := 0;
   DM1.cantidadUIT := 0;
   DM1.tTiempoTranscurrido := DM1.tiempoTranscurrido(StrToDate(xasofresces), StrToDate(xasofresnom));
   If (DM1.mesesTranscurridos > 6) Or ((DM1.mesesTranscurridos = 6) And (DM1.diasTranscurridos > 15)) Then
      DM1.anoServicio := DM1.anosTranscurridos + 1
   Else
      DM1.anoServicio := DM1.anosTranscurridos;

   If DM1.anoServicio > 30 Then DM1.anoServicio := 30;
  // Hallando la edad en caso que sea por invalidez
   DM1.edadInvalidez := Int(YearSpan(StrToDate(xasofresces), DM1.cdsAso.FieldByName('ASOFECNAC').AsDateTime));
   If DM1.edadInvalidez < 31 Then DM1.edadInvalidez := 31;
   If DM1.edadInvalidez > 65 Then DM1.edadInvalidez := 65;
  // liquidacion por retiro
   If xtipben = '01' Then
   Begin
    // tabla de retiro
      tmes := 'PVSRMM' + DM1.StrZero(CurrToStr(DM1.mesFinal), 2);
      xSql := 'SELECT ' + tmes + ' VALOR FROM PVS104 WHERE PVSRANO = ' + QuotedStr(CurrToStr(DM1.anoFinal)) + ' AND PVSRSERV = ' + QuotedStr(DM1.StrZero(CurrToStr(DM1.anoServicio), 2));
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      DM1.MontoTabRet := DM1.cdsQry.FieldByName('VALOR').AsCurrency;
   End;
  // Liquidacion por fallecimiento
   If xtipben = '02' Then
   Begin
      If DM1.anoFinal < 1997 Then
    // tabla de sepelio + capital de deudos
      Begin
      // tabla de sepelio
         tmes := 'PVSSMM' + DM1.StrZero(CurrToStr(DM1.mesFinal), 2);
         xSql := 'SELECT ' + tmes + ' VALOR FROM PVS106 WHERE PVSSANO = ' + QuotedStr(CurrToStr(DM1.anoFinal)) + ' AND PVSSSERV = ' + QuotedStr(DM1.StrZero(CurrToStr(DM1.anoServicio), 2));
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.MontoTabSep := DM1.cdsQry.FieldByName('VALOR').AsCurrency;
      // tabla de capital de deudos
         tmes := 'PVSCMM' + DM1.StrZero(CurrToStr(DM1.mesFinal), 2);
         xSql := 'SELECT ' + tmes + ' VALOR FROM PVS107 WHERE PVSCANO = ' + QuotedStr(CurrToStr(DM1.anoFinal)) + ' AND PVSCSERV = ' + QuotedStr(DM1.StrZero(CurrToStr(DM1.anoServicio), 2));
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.MontoTabCap := DM1.cdsQry.FieldByName('VALOR').AsCurrency;
      End;
      If DM1.anoFinal = 1997 Then
    // tabla de retiro + 2 UIT
      Begin
      // tabla de retiro
         tmes := 'PVSRMM' + DM1.StrZero(CurrToStr(DM1.mesFinal), 2);
         xSql := 'SELECT ' + tmes + ' VALOR FROM PVS104 WHERE PVSRANO = ' + QuotedStr(CurrToStr(DM1.anoFinal)) + ' AND PVSRSERV = ' + QuotedStr(DM1.StrZero(CurrToStr(DM1.anoServicio), 2));
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.MontoTabRet := DM1.cdsQry.FieldByName('VALOR').AsCurrency;
      // 2 UIT
         xSql := ' SELECT UITNUMER, UITNUMER * UITMONTO UIT FROM TGE188 WHERE ' + QuotedStr(xasofresces) + ' >= UITFCINI AND '
            + QuotedStr(xasofresces) + ' <=  UITFCFIN AND UITTIPBE = ''F'' ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.cantidadUIT := DM1.cdsQry.FieldByName('UITNUMER').AsCurrency;
         DM1.MontoUIT := DM1.cdsQry.FieldByName('UIT').AsCurrency;
      End;
      If DM1.anoFinal > 1997 Then
      Begin
         xSql := ' SELECT UITNUMER, UITNUMER * UITMONTO UIT FROM TGE188 WHERE ' + QuotedStr(xasofresces) + ' >= UITFCINI AND '
            + QuotedStr(xasofresces) + ' <=  UITFCFIN AND UITTIPBE = ''F'' ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.cantidadUIT := DM1.cdsQry.FieldByName('UITNUMER').AsCurrency;
         DM1.montoUIT := DM1.cdsQry.FieldByName('UIT').AsCurrency;
         DM1.montoDiferencial := DM1.MontoUIT - (DM1.aportesCtaInd + DM1.interesesCtaInd + DM1.bonusCtaInd + DM1.calculoA1996CtaInd);
         DM1.montoUIT := 0;
      End;
   End;
  // Liquidacion por invalidez
   If xtipben = '03' Then
   Begin
      If DM1.anoFinal < 1997 Then
    // tabla de retiro + tabla de invalidez
      Begin
      // tabla de retiro
         tmes := 'PVSRMM' + DM1.StrZero(CurrToStr(DM1.mesFinal), 2);
         xSql := 'SELECT ' + tmes + ' VALOR FROM PVS104 WHERE PVSRANO = ' + QuotedStr(CurrToStr(DM1.anoFinal)) + ' AND PVSRSERV = ' + QuotedStr(DM1.StrZero(CurrToStr(DM1.anoServicio), 2));
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.montoTabRet := DM1.cdsQry.FieldByName('VALOR').AsCurrency;
      // Tabla de Invalidez
         tmes := 'PVSIMM' + DM1.StrZero(CurrToStr(DM1.mesFinal), 2);
         xSql := 'SELECT ' + tmes + ' VALOR FROM PVS105 WHERE PVSIANO = ' + QuotedStr(CurrToStr(DM1.anoFinal)) + ' AND PVSISERV = ' + QuotedStr(CurrToStr(DM1.edadInvalidez));
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.montoTabInv := DM1.cdsQry.FieldByName('VALOR').AsCurrency;
      End;
      If DM1.anoFinal = 1997 Then
    // tabla de retiro + 4 UIT
      Begin
      // tabla de retiro
         tmes := 'PVSRMM' + DM1.StrZero(CurrToStr(DM1.mesFinal), 2);
         xSql := 'SELECT ' + tmes + ' VALOR FROM PVS104 WHERE PVSRANO = ' + QuotedStr(CurrToStr(DM1.anoFinal)) + ' AND PVSRSERV = ' + QuotedStr(DM1.StrZero(CurrToStr(DM1.anoServicio), 2));
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.montoTabRet := DM1.cdsQry.FieldByName('VALOR').AsCurrency;
      // 4 UIT
         xSql := ' SELECT UITNUMER, UITNUMER * UITMONTO UIT FROM TGE188 WHERE ' + QuotedStr(xasofresces) + ' >= UITFCINI AND '
            + QuotedStr(xasofresces) + ' <=  UITFCFIN'
            + ' AND UITTIPBE = ''I'' ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.cantidadUIT := DM1.cdsQry.FieldByName('UITNUMER').AsCurrency;
         DM1.MontoUIT := DM1.cdsQry.FieldByName('UIT').AsCurrency;
      End;
      If DM1.anoFinal > 1997 Then
      Begin
         xSql := ' SELECT UITNUMER, UITNUMER * UITMONTO UIT FROM TGE188 WHERE ' + QuotedStr(xasofresces) + ' >= UITFCINI AND '
            + QuotedStr(xasofresces) + ' <=  UITFCFIN'
            + ' AND UITTIPBE = ''I'' ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.MontoUIT := DM1.cdsQry.FieldByName('UIT').AsCurrency;
         DM1.cantidadUIT := DM1.cdsQry.FieldByName('UITNUMER').AsCurrency;
         DM1.montoDiferencial := DM1.montoUIT - (DM1.aportesCtaInd + DM1.interesesCtaInd + DM1.bonusCtaInd + DM1.calculoA1996CtaInd);
         DM1.montoUIT := 0;
      End;
   End;
   DM1.liquidacionbeneficio := DM1.calculoA1996CtaInd + DM1.aportesCtaInd + DM1.InteresesCtaInd + DM1.BonusCtaInd +
      DM1.MontoTabRet + DM1.MontoTabCap + DM1.MontoTabSep + DM1.MontoTabInv + DM1.montoUIT + DM1.montoDiferencial;
   Result := DM1.liquidacionbeneficio;
end;

function TDM1.DevuelveValor(xTabla, xValor, xLlave, xId: String): String;
Var
   xSql: String;
Begin
   xSql := 'SELECT ' + xValor + ' FROM ' + xTabla + ' WHERE ' + xLlave + ' = ' + QuotedStr(xId);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   Result := DM1.cdsQry.FieldByName(xValor).AsString;
   Exit;
end;

// se busca flga en Maestro de Asociados (APO201) para saber si Asociado
// está siendo actualizado por otro módulo
function TDM1.IndicaAsociadoEnAct(wwAsoid: String): Boolean;
var
   xSQL : String;
begin
   xSQL := 'select nvl(EN_ACTUALIZ,''XXX'') EN_ACTUALIZ '
          +'from APO201 '
          +'where ASOID='+quotedstr(wwAsoid);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   result := false;
   if DM1.cdsQry.RecordCount>0 then
   begin
      if DM1.cdsQry.FieldByName('EN_ACTUALIZ').AsString<>'XXX' then
         result := True;
   end;
   DM1.cdsQry.Close;
end;

function TDM1.ObtenerCODSEC(xCODPAD: String; xCODITEM: integer): integer;
Var
   xSql: String;
Begin
   xSql := 'SELECT NVL(MAX(CODSEC),0) + 1 CODSEC FROM ASO_PAD_LOG WHERE CODPAD = ' + QuotedStr(xCODPAD) + ' AND CODITEM = ' + IntToStr(xCODITEM);
   DM1.cdsAsoX.Close;
   DM1.cdsAsoX.DataRequest(xSql);
   DM1.cdsAsoX.Open;
   Result := DM1.cdsAsoX.FieldByName('CODSEC').AsInteger;
   Exit;
end;

   // Inicio: SPP_201402_ASO
procedure TDM1.CargaImagenesDNI(wsDNI, wsOrigen: String);
var
   xSQL : String;
   streamFoto,streamFirma: TMemoryStream;
begin

   // xSQL := 'SELECT DNI, NUMLIB, APEPAT, APEMAT, NOMBRE, OTRDOC, LUGNAC, NOMPAD, NOMMAD, FECNAC, ESTATURA, '
   //    + '       SEXO, ESTCIV, GRAINS, LUGDOM, RESTRICCIONES, FECINS, STAVOT, FECEMIDOC, DIRECCION, '
   //    + '       FOTO, FIRMA, USUACT, FECACT, OFIACT, EQUUSU, UNICO, '
   //    + '       case when FLAG_EXPIRA IS NULL THEN '''' '
   //    + '            when FLAG_EXPIRA=''V'' THEN ''VIGENTE'' '
   //    + '            when FLAG_EXPIRA=''C'' THEN ''CADUCADO'' '
   //    + '       else ''INDEFINIDO'' end FLAG_EXPIRA '
   //    + '  FROM INF_RENIEC_CAP '
   //    + ' WHERE DNI='+quotedstr(trim(wsDNI))
   //    + '   AND ROWNUM < 2 '
   //   + ' ORDER BY FECACT DESC ';
   XSQL := 'SELECT DNI, NUMLIB, APEPAT, APEMAT, NOMBRE, OTRDOC, LUGNAC, NOMPAD, NOMMAD, FECNAC, ESTATURA, CODUBIDEPDOM, CODUBIPRODOM,'
   +' CODUBIDISDOM, DESDEPDOM, DESPRODOM, DESDISDOM, CODUBIDEPNAC, CODUBIPRONAC, CODUBIDISNAC, DESDEPNAC, DESPRONAC, DESDISNAC,'
   +' APECAS, PRECODDIRECC, PREDESDIRECC, DESDIRECC, NUMDIRECC, DESETAPA, DESMANZA, DESLOTE, PRECODBLOCK, PREDESBLOCK, DESBLOCK,'
   +' PRECODINTER, PREDESINTER, DESINTER, PRECODURBAN, PREDESURBAN, DESURBAN, CODDOCSUS, FLACONVOT, CODRES, CODGRAINS, NUMDOCSUS,'
   +' CODESTCIV, SEXO, ESTCIV, GRAINS, LUGDOM, RESTRICCIONES, FECINS, STAVOT, FECEMIDOC, DIRECCION, FOTO, FIRMA, USUACT, FECACT,'
   +' OFIACT, EQUUSU, UNICO, CASE WHEN FECEXP >= SYSDATE THEN ''VIGENTE'' ELSE ''CADUCADO'' END FLAG_EXPIRA'
   +' FROM INF_RENIEC_CAP WHERE DNI = '+QuotedStr(Trim(wsDNI))
   +' AND FECEMIDOC IN (SELECT MAX(FECEMIDOC) FROM INF_RENIEC_CAP WHERE DNI = '+QuotedStr(Trim(wsDNI))+')'
   //+' FROM INF_RENIEC_CAP WHERE DNI = '+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString))
   //+' AND FECEMIDOC IN (SELECT MAX(FECEMIDOC) FROM INF_RENIEC_CAP WHERE DNI = '+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString))+')'
   +' AND ROWNUM < 2';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(XSQL);
   DM1.cdsQry.Open;

   DM1.jpgFoto    := NIL;
   streamFoto := NIL;
   DM1.jpgFirma   := NIL;
   streamFirma:= NIL;
   Try
    //Crear una corriente y cargarle el contenido de un campo Blob
      streamFoto := TMemoryStream.Create;
      TBlobField(DM1.cdsQry.FieldByName('FOTO')).SaveToStream(streamFoto);

      streamFirma := TMemoryStream.Create;
      TBlobField(DM1.cdsQry.FieldByName('FIRMA')).SaveToStream(streamFirma);

      If streamFoto.Size > 0 Then
      Begin
      //Crear una imagen JPEG y cargarla desde la corriente
         DM1.jpgFoto := TJpegImage.Create;
         streamFoto.Position := 0;
         DM1.jpgFoto.LoadFromStream(streamFoto);
      // la foto se asigna en la forma q invocó a esta rutina
      end;

      DM1.jpgFirma := TJpegImage.Create;
      If streamFirma.Size > 0 Then
      Begin
      //Crear una imagen JPEG y cargarla desde la corriente
         DM1.jpgFirma := TJpegImage.Create;
         streamFirma.Position := 0;
         DM1.jpgFirma.LoadFromStream(streamFirma);
      // la firma se asigna en la forma q invocó a esta rutina
      end;

   // Registro Individual de cuotas
      If wsOrigen='ASOCIADO' Then
      Begin
         FMantAsociado.ImagAso.Visible := False;
         If streamFoto.Size > 0 Then
         Begin
            FMantAsociado.ImagAso.Picture.Assign(DM1.jpgFoto);
            FMantAsociado.ImagAso.Visible := true;
         End;

         FMantAsociado.ImaFirma.Visible := False;
         If streamFirma.Size > 0 Then
         Begin
            FMantAsociado.ImaFirma.Picture.Assign(DM1.jpgFirma);
            FMantAsociado.ImaFirma.Visible := true;
         End;
      End;
      // Inicio: HPC_201607_ASO
      // Control para mostrar foto y firma en las formas de recepción CADAPS
      // Forma autorización de descuento de aportes
      If wsOrigen='AUTDESAPO' Then
      Begin
         FbusasorecCADAPS.ImagAso.Visible := False;
         If streamFoto.Size > 0 Then
         Begin
            FbusasorecCADAPS.ImagAso.Picture.Assign(DM1.jpgFoto);
            FbusasorecCADAPS.ImagAso.Visible := true;
         End;
         FbusasorecCADAPS.ImaFirma.Visible := False;
         If streamFirma.Size > 0 Then
         Begin
            FbusasorecCADAPS.ImaFirma.Picture.Assign(DM1.jpgFirma);
            FbusasorecCADAPS.ImaFirma.Visible := true;
         End;
      End;
      // Fin: HPC_201607_ASO




   // Cronograma
      If wsOrigen='FotoCronog' Then
      Begin
         fCronoPag.ppImage1.Visible := False;
         If streamFoto.Size > 0 Then
         Begin
            fCronoPag.ppImage1.Picture.Assign(DM1.jpgFoto);
            fCronoPag.ppImage1.Visible := true;
         End;
      End;

   Except
   end;
end;
   // Fin: SPP_201402_ASO



// Inicio: SPP_201307_ASO
function TDM1.TieneAutorizacion(xGrupo, xTabla, xUsuario: string): boolean;
var
  xSql: string;
begin
  xSql := 'SELECT A.TABLA, A.GRUPO, A.CAMPO, A.COMPONENTE, A.CAMPODES'
    + ' FROM SIS001 A'
    + ' WHERE A.MODULOID = ''ASO'' AND A.COMPONENTE IS NOT NULL'
    + '     AND A.GRUPO = ' + QuotedStr(xGrupo)
    + '     AND A.TABLA = ' + QuotedStr(xTabla)
    + '     AND EXISTS (SELECT S.USERID'
    + '         FROM SIS000 S'
    + '         WHERE S.USERID = ' + QuotedStr(xUsuario)
    + '         AND A.TABLA = S.TABLA'
    + '         AND A.COMPONENTE = S.COMPONENTE)';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount > 0 Then
    Result := true
  else
    Result := false;
end;

//--Inicio: SPP_201404_ASO--//
Procedure TDM1.LimpiaClientDataset(cds : TwwClientDataSet);
   Begin
      cds.IndexFieldNames := '';         
      cds.Filter := '';
      cds.Filtered := False;
      If cds.active Then
         cds.Close;
End;
//--Fin: SPP_201404_ASO--//

// Fin: SPP_201307_ASO

//Inicio HPC_201502_ASO
function TDM1.validaAso_Old(xASOID, xAsoDNI: String): boolean;
var xsql:String;
    xmovimiento : Integer;
begin

xmovimiento:=0;
//Inicio HPC_201508_ASO
//xsql:='Select ''APORTES'' DATOS,B.ASODNI,COUNT(1) MOVIMIETOS from APO301 A,APO201 B '
//     +'where A.ASOID='''+xAsoid+'''  AND A.ASOID=B.ASOID GROUP BY B.ASODNI '
//     +' UNION ALL '
//     +' Select ''RENIEC'' DATOS,DNI ASODNI,COUNT(1) MOVIMIETOS from inf_reniec_cap WHERE DNI='''+xAsoDNI+''' GROUP BY DNI ';
xsql:=' Select ''RENIEC'' DATOS,DNI ASODNI,COUNT(1) MOVIMIETOS from inf_reniec_cap WHERE DNI='''+xAsoDNI+''' GROUP BY DNI ';
//Fin HPC_201508_ASO
Dm1.cdsQry25.Close;
Dm1.cdsQry25.DataRequest(xsql);
Dm1.cdsQry25.Open;
While not DM1.cdsQry25.Eof Do
Begin
  xmovimiento:=xmovimiento+Dm1.cdsQry25.FieldByname('MOVIMIETOS').AsInteger;
  Dm1.cdsQry25.Next;
End;
  If xmovimiento>0 Then
       Result := true
  Else Result := false;
end;
//Final HPC_201502_ASO


//Inicio HPC_201502_ASO
Function TDM1.ValidaAutoCtas(xAsoid: String): Boolean;
var xsql,xUltApo,xPerAct,xUltActPad:String;
begin
  If DM1.sAPO201 = 'APO201' THEN
   BEGIN
      // Periodo actual
      xSQL := 'SELECT MAX(TO_CHAR(ADD_MONTHS(SYSDATE,- 2),''YYYYMM'')) PERACT FROM DUAL';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xPerAct := DM1.cdsQry.FieldByName('PERACT').AsString;
      // ultimo aporte
      xSQL := 'SELECT MAX(TRANSANO||TRANSMES) ULTAPO FROM APO301 WHERE ASOID = '+QuotedStr(xAsoId)+' AND NVL(TRANSMTO,0)-NVL(TRANSMTODEV,0) > 0';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xUltApo := DM1.cdsQry.FieldByName('ULTAPO').AsString;
      // Ultimo padron
      xSQL := 'SELECT MAX(PERIODO) ULTACTPAD FROM APO206 WHERE ASOID = '+QuotedStr(xAsoId) +' AND NVL(AINGFAM,0) > 0';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      xUltActPad := DM1.cdsQry.FieldByName('ULTACTPAD').AsString;
      If ((DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO') Or (  (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') And (DM1.cdsAso.FieldByName('REGPENID').AsString = '01')) )
          And (((DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO') And ( (xPerAct <= xUltApo) Or (xPerAct <= xUltActPad))) Or ((DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') And (xPerAct <= xUltActPad))) Then
      Begin
        Result := True;
      End
      Else
      Begin
        Result := False;
      End;
   END;
end;
//Final HPC_201502_ASO



//Inicio HPC_201502_ASO
function TDM1.VerDNICaduco(vDNI: String): String;
var Xsql:String;
begin
Xsql:= 'SELECT NVL(ESTDNI,''NO CADUCO'') ESTDNI '
      +' FROM '
      +' ('
      +'  Select FECEXP,FECEMIDOC,trunc(sysdate) hoy, '
      +'        (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'' '
      +'              WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN '
      +'              CASE WHEN EXTRACT(YEAR FROM  NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC),''month''))>=6 THEN ''CADUCO'' END '
      +'              WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN '
      +'              CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC),''month''))>=8 THEN ''CADUCO'' END '
      +'         END ) ESTDNI '
      +'  From  inf_reniec_cap I WHERE dni='''+vDNI+''' AND FECEMIDOC IN (SELECT MAX(FECEMIDOC) '
      +'FROM INF_RENIEC_CAP '
      +'WHERE DNI = '''+vDNI+''') order by FECACT DESC '
      +') WHERE ROWNUM<2 ';

 DM1.cdsQry25.Close;
 DM1.cdsQry25.DataRequest(Xsql);
 DM1.cdsQry25.Open;
 Result :=DM1.cdsQry25.FieldByname('ESTDNI').AsString ;
end;
//Final HPC_201502_ASO

// Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
procedure TDM1.ResumenCCI(xAsoid: String);
var
  xSQL : String;
begin
  xSql:='Select ''Resumen Aplicado por CCI'' Titulo,  nvl(sum(nvl(monapl,0)),0) TOTCCI, 0.00 SALDO  '
       +  'from COB_APLI_CCI_DET '
//Inicio HPC_201610_ASO
//Tomar como un descuento  al total de la Cuenta Individual del asociado, la suma de las aplicaciones  por CCI que no estén marcadas como liquidadas.
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
         + 'where ASOID='+QuotedStr(xAsoid);
//       + 'where ASOID='+QuotedStr(xAsoid)+' AND NUMLIQBEN IS NULL ';
//Final HPC_201702_ASO
//Final HPC_201610_ASO
  DM1.cdsRepCCI.Close;
  DM1.cdsRepCCI.DataRequest(xSQL);
  DM1.cdsRepCCI.Open;
end;
// fin  HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI


// Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
procedure TDM1.DetalleCCI(xAsoid: String);
var
  xSQL : String;
begin
  xSql:='select codaplica, asoid, asotipid, perapl, credid, monapl, percont, flgcont, fecreg, usucrea, numliqben '
       +  'from COB_APLI_CCI_DET '
//Inicio HPC_201610_ASO
//Tomar como un descuento  al total de la Cuenta Individual del asociado, la suma de las aplicaciones  por CCI que no estén marcadas como liquidadas.
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
         + 'where ASOID='+QuotedStr(xAsoid);
//       + 'where ASOID='+QuotedStr(xAsoid)+' AND NUMLIQBEN IS NULL ';
//Final HPC_201702_ASO
//Final HPC_201610_ASO       
  DM1.cdsRepCCIDet.Close;
  DM1.cdsRepCCIDet.DataRequest(xSQL);
  DM1.cdsRepCCIDet.Open;
end;
// Fin HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI

// Inicio HPC_201512_ASO   : Registrar a usuario Liquidador de Beneficios
Function TDM1.UsuarioLiquidador( vUsuario : String ) : Boolean;
var
   xSQL : String;
begin
   xSQL:='SELECT CTLFAC FROM TGE006 C '
        + 'WHERE USERID='''+vUsuario+'''';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;

   if DM1.cdsQry.fieldByName('CTLFAC').AsString='P' then
      Result:=True
   else
      Result:=False;
end;
// Fin  HPC_201512_ASO   : Registrar a usuario Liquidador de Beneficios

// INICIO HPC_201513_ASO
(******************************************************************************)

// Inicio: HPC_201602_ASO
// Modifica validación de codigo modular
Function TDM1.FG_VALIDA_CODIGO_MODULAR(psCodigoModular : String) : boolean;
begin
   // Verifica que sea de 10 digitos (restrictivo)
   If (Length(Trim(psCodigoModular)) <> 10) Then
   Begin
      MessageDlg('CÓDIGO MODULAR ERRADO. DEBE TENER LONGITUD DE 10 DÍGITOS', mtInformation, [mbOk], 0);
      result := false;
   End
   Else
      result := true;
   // Verifica que codigo modular debe iniciar con 1, 5 U 8 (solo informativo)
   If (Copy(Trim(psCodigoModular),1,1) <> '1') And (Copy(Trim(psCodigoModular),1,1) <> '5') And (Copy(Trim(psCodigoModular),1,1) <> '8') Then
   Begin
      MessageDlg('EL CÓDIGO MODULAR ESTÁ INCOMPLETO!' + #13#10
      +'DEBE EMPEZAR CON 1, 5 U 8', mtInformation, [mbOk], 0);
      result := true;
   End;

   // if (Length(psCodigoModular) <> 10)     OR
   //    ((strtoint(copy(psCodigoModular,1,1)) <> 1) AND
   //     (strtoint(copy(psCodigoModular,1,1)) <> 5) AND
   //     (strtoint(copy(psCodigoModular,1,1)) <> 8)) then begin
   //     MessageDlg('EL CÓDIGO MODULAR ESTÁ INCOMPLETO!' + #13#10
   //               +'ESTE DEBE TENER UNA LONGITUD MÁXIMA DE 10 DÍGITOS Y EMPEZAR CON 1, 5 U 8', mtInformation, [mbOk], 0);
   //     result := false;
   // end else begin
   //     result := true;
   // end;
end;
// Fin: HPC_201602_ASO

(******************************************************************************)
procedure TDM1.FG_CONECTA_CDS(var pxCdsQry : TwwClientDataSet; var pxDsQry : TwwDataSource);
begin
  pxCdsQry := TwwClientDataSet.Create(self);
  pxCdsQry.ProviderName := 'prvQry';
  pxCdsQry.RemoteServer := DCOM1;
  pxDsQry := TwwDataSource.Create(self);
  pxDsQry.DataSet := pxCdsQry;
end;

// Inicio: HPC_201602_ASO
// Validación si es numero o no.
(******************************************************************************)
// FIN HPC_201513_ASO
Function TDM1.ValidaSiNumero(xnumero: String): Boolean;
Var I:integer;
Begin
   Result := True;
   For I := 1 to Length(Trim(xnumero)) Do
   Begin
      If (Copy(xnumero,I,1) <> '0') And (Copy(xnumero,I,1) <> '1') And (Copy(xnumero,I,1) <> '2') And (Copy(xnumero,I,1) <> '3') And (Copy(xnumero,I,1) <> '4') And
         (Copy(xnumero,I,1) <> '5') And (Copy(xnumero,I,1) <> '6') And (Copy(xnumero,I,1) <> '7') And (Copy(xnumero,I,1) <> '8') And (Copy(xnumero,I,1) <> '9') Then
      Begin
         Result := False;
      End;
   End;
end;
// Fin: HPC_201602_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
Function TDM1.desubigeo(vUbigeo: String): String;
Var
   xSql, retorna: String;
Begin
   xSql := 'SELECT UBIGEOID, UBIGEODES, CODDPTO, UBIGEODPTO, CODPROV, UBIGEOPROV,'
      + '       CODDIST, UBIGEODIST '
      + '  FROM TGE147 '
      + ' WHERE UBIGEOID = ' + QuotedStr(Copy(vUbigeo, 1, 2) + '0000');
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   retorna := DM1.cdsQry.FieldByName('UBIGEODES').AsString + '/';
   xSql := 'SELECT UBIGEOID, UBIGEODES, CODDPTO, UBIGEODPTO, CODPROV, UBIGEOPROV,'
      + '       CODDIST, UBIGEODIST '
      + '  FROM TGE147 WHERE UBIGEOID = ' + QuotedStr(Copy(vUbigeo, 1, 4) + '00');
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   retorna := retorna + DM1.cdsQry.FieldByName('UBIGEODES').AsString + '/';
   xSql := 'SELECT UBIGEOID, UBIGEODES, CODDPTO, UBIGEODPTO, CODPROV, UBIGEOPROV,'
      + '       CODDIST, UBIGEODIST '
      + '  FROM TGE147 WHERE UBIGEOID = ' + QuotedStr(vUbigeo);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   retorna := retorna + DM1.cdsQry.FieldByName('UBIGEODES').AsString;
   Result := retorna;
   Exit;
End;
//Fin HPC_201702_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
Function TDM1.desuse(vuse, vupagoid, vuproid: String): String;
Var
   xSql, resulta: String;
Begin
   xSql := 'SELECT USEID,USENOM,USEABRE,USETELF,USEDIR,DIRDPTOID,DIRPROVID,DIRZIPID,'
      + '       DPTOID,CIUDID,ZONAID,UPROID,UPAGOID,TIPUSEID,CCOSID,USUARIO,FREG,'
      + '       HREG,CODANT,FLGFUSION,CUENTAID,FLGACT,FDESHABILITADO,OFDESID,DIGABC,'
      + '       ABCID,ZONORIOPE,AMBITO,CODCARGO,DIGMASREP,AUTDESCUO,CODCARGODO,'
      + '       DIGMASREPDO,CODCARGOCE,DIGMASREPCE,FLACAR,CAPEND '
      + '  FROM APO101 '
      + ' WHERE USEID = ' + QuotedStr(vuse) + ' AND UPAGOID = ' + QuotedStr(vupagoid) + ' AND UPROID = ' + QuotedStr(vuproid);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   result := vuse + ' - ' + DM1.cdsQry.FieldByName('USENOM').AsString;
   exit;
End;
//Fin HPC_201702_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
procedure TDM1.CargaImagenes(xAsodni: String);
begin

   DM1.Jpg := Nil;
   DM1.Stream := Nil;
   DM1.JpgFirma := Nil;
   DM1.StreamFirma := Nil;

   DM1.cdsTipoMoneda.Close;
   DM1.cdsTipoMoneda.DataRequest('SELECT '
   +' dni, numlib, apepat, apemat, nombre, otrdoc, lugnac, nompad, nommad, fecnac, estatura, sexo, estciv, grains, lugdom,'
   +' restricciones, fecins, stavot, fecemidoc, direccion, foto, firma, usuact, fecact, ofiact, equusu, flag_expira, unico,'
   +' apecas, codubidepnac, desdepnac, codubipronac, despronac, codubidisnac, desdisnac, codgrains, codestciv, coddocsus,'
   +' numdocsus, flaconvot, codres, fecexp, codubidepdom, desdepdom, codubiprodom, desprodom, codubidisdom, desdisdom,'
   +' precoddirecc, predesdirecc, desdirecc, numdirecc, desetapa, desmanza, deslote, precodblock, predesblock, desblock,'
   +' precodinter, predesinter, desinter, precodurban, predesurban, desurban, usureniec'
   +' FROM INF_RENIEC_CAP WHERE DNI = '+QuotedStr(xAsodni)+' ORDER BY FECACT DESC ');
   DM1.cdsTipoMoneda.Open;
   Try
    // Crear una corriente y cargarle el contenido de un campo Blob
      DM1.Stream := TMemoryStream.Create;
      TBlobField(DM1.cdsTipoMoneda.FieldByName('FOTO')).SaveToStream(DM1.Stream);
      DM1.StreamFirma := TMemoryStream.Create;
      TBlobField(DM1.cdsTipoMoneda.FieldByName('FIRMA')).SaveToStream(DM1.StreamFirma);
      If DM1.Stream.Size > 0 Then
      Begin
    // Crear una imagen JPEG y cargarla desde la corriente
         DM1.Jpg := TJpegImage.Create;
         DM1.Stream.Position := 0;
         DM1.Jpg.LoadFromStream(DM1.Stream);
      End
      Else
         DM1.Jpg := Nil;
      If DM1.StreamFirma.Size > 0 Then
      Begin
    // Crear una imagen JPEG y cargarla desde la corriente
         DM1.jpgFirma := TJpegImage.Create;
         DM1.StreamFirma.Position := 0;
         DM1.jpgFirma.LoadFromStream(DM1.StreamFirma);
      End
      Else
         DM1.jpgFirma := Nil;
   Except
      DM1.Jpg := Nil;
      DM1.jpgFirma := Nil;
   End;
End;
//Fin HPC_201702_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
Procedure TDM1.formadepago(xAsoid: String);
Var
   xSql, texto, valor: String;
   xApeNom:String;
   totPorCar, totPorFam, montoCob, canTra: Currency;
   xdsgfrec: TDate;
Begin
   DM1.cobraconcarta := 'N';
   DM1.cdsForPag.EmptyDataSet;
   xSql := 'SELECT MAX(DSGFREC) DSGFREC FROM PVS302 WHERE ASOID = '+QuotedStr(xAsoid)+' AND DSGESTAD NOT IN ''13''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xdsgfrec := DM1.cdsQry.FieldByName('DSGFREC').AsDateTime;
   xSql := 'SELECT DSGNRO, DSGFREC, DSGESTAD, DSGFAPER, DSGVIG, ASOID, DSGOBS, DSGNOMBR, DSGAPEPAT, DSGAPEMAT, DSGNOMBRT, USUARIO, FREG, HREG, FECAPER, PVSEXPNRO, PVSNROLIQ, PVSFANUL, ANULADO, USUANU, FECANU,'
   +' PVSLBENNR, ASODNI, ASOAPENOMDNI, ASOCODMOD, USUAPE, CODOTRDOCIDE, NUMOTRDOCIDE, MOTANUCAR FROM PVS302 WHERE ASOID = '+QuotedStr(xAsoid)+' AND DSGFREC = '+QuotedStr(DateToStr(xdsgfrec))+' AND DSGESTAD NOT IN ''13''';
   DM1.cdsMaestCartas.Close;
   DM1.cdsMaestCartas.DataRequest(xSql);
   DM1.cdsMaestCartas.Open;
   If DM1.cdsMaestCartas.RecordCount > 0 Then
   Begin
      xSql := 'SELECT '
      +' ciaid, dsgnro, dsgtrel, dsgapepat, dsgapemat, dsgnombr, dsgfnac, dsgsex, dsgporc, asoid, dsgtapep, dsgtapem,'
      +' dsgtnomb, dsgtdni, usuario, freg, hreg, dsgdni, forpagoid, bancoid, agenbcoid, bcodptoid, pvslbennr, usuanu,'
      +' fecanu, anulado, codotrdocide, numotrdocide, dsgdirdes, dsgzipiddes, dsgtelfijdes, dsgtelmovdes, dsgotrtiprel,'
      +' dsgapecas, emaildes'
      +' FROM PVS303 WHERE ASOID = ' + QuotedStr(xAsoid);
      DM1.cdsDetCartas.Close;
      DM1.cdsDetCartas.DataRequest(xSql);
      DM1.cdsDetCartas.Open;
   End;
   xSql := 'SELECT '
   +' asoid, famapepat, famapemat, famnombre, famapenom, famrelid, famdirecc, distid, famtelf, famsexo, tipdoccod,'
   +' famnumdoc, estcivid, famfecnac, freg, hreg, dptoid, ciudid, zipid, famporc, famfllq, bancoid, tmonid, ccbcoid,'
   +' fecapert, usuario, forpagoid, tutapenom, tuttipdoc, tutnumdoc, famid, bcodptoid, famporc1, pvslbennr, agenbcoid,'
   +' nomtut, apepattut, apemattut, codotrdocide, numotrdocide, famtelmov, famotrtiprel, famapecas, emailfam'
   +' FROM APO203 WHERE ASOID = ' + QuotedStr(xAsoid);
   DM1.cdsDFam.Close;
   DM1.cdsDFam.DataRequest(xSql);
   DM1.cdsDFam.Open;
  // Chequeando los porcentajes de los beneficiarios
   If DM1.cdsExpLiq.FieldByName('PVSCOBASO').AsString = 'N' Then
   Begin
      If DM1.cdsMaestCartas.RecordCount > 0 Then
      Begin
         If DM1.cdsDetCartas.RecordCount > 0 Then
         Begin
            totPorCar := 0;
            While Not DM1.cdsDetCartas.Eof Do
            Begin
               totPorCar := totPorCar + DM1.cdsDetCartas.FieldByName('DSGPORC').AsFloat;
               DM1.cdsDetCartas.Next;
            End;
            If totPorCar <> 100 Then
               MessageDlg('El total porcentaje de la carta no es 100%', mtCustom, [mbOk], 0);
         End;
      End
      Else
      Begin
         If DM1.cdsDFam.RecordCount > 0 Then
         Begin
            totPorFam := 0;
            While Not DM1.cdsDFam.Eof Do
            Begin
               totPorFam := totPorFam + DM1.cdsDFam.FieldByName('FAMPORC').AsFloat;
               DM1.cdsDFam.Next;
            End;
            If DM1.Valores(FloatToStrF(totPorFam, ffNumber, 15, 2)) <> 100 Then
               MessageDlg('El total porcentaje de los familiares no es 100%', mtCustom, [mbOk], 0);
         End;
      End;
   End;
   //Forma de Pago si es el asociado el que cobra
   If DM1.cdsExpLiq.FieldByName('PVSCOBASO').AsString = 'S' Then
   Begin
      If DM1.cdsExpLiq.FieldByName('FORPAGOID').AsString = '05' Then
      Begin
         If DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.montoDescuento - DM1.montoRetencion - 11.50 > 0 Then
          montoCob := DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento - 11.50 // HTC_SAR-984_EPS II
         Else
             montoCob := DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento; // HTC_SAR-984_EPS II
      End
      Else
          montoCob := DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento ;  // HTC_SAR-984_EPS II
      If DM1.cdsExpLiq.FieldByName('FORPAGOID').AsString = '01' Then
      Begin
         texto := '* CHEQUE DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsExpLiq.FieldByName('BANCOID').AsString);
      End;
      If DM1.cdsExpLiq.FieldByName('FORPAGOID').AsString = '05' Then
      Begin
         texto := '* GIRO DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsExpLiq.FieldByName('BANCOID').AsString)
            + ' A LA CIUDAD DE ' + DM1.DevuelveValor('COB102', 'AGENBCODES', 'AGENBCOID', DM1.cdsExpLiq.FieldByName('AGENBCOID').AsString) + '-'
            + DM1.DevuelveValor('TGE158', 'DPTODES', 'DPTOID', DM1.DevuelveValor('COB102', 'DPTOID', 'AGENBCOID', DM1.cdsExpLiq.FieldByName('AGENBCOID').AsString));
      End;
      If DM1.cdsExpLiq.FieldByName('FORPAGOID').AsString = '06' Then
      Begin
         texto := '* ABONO EN CUENTA Nº ' + DM1.cdsExpLiq.FieldByName('ASONCTA').AsString + ' DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsExpLiq.FieldByName('BANCOID').AsString);
      End;
      If DM1.cdsExpLiq.FieldByName('FORPAGOID').AsString = '16' Then
      Begin
         texto := '* CHEQUE DE GERENCIA ' + DM1.cdsExpLiq.FieldByName('ASONCTA').AsString + ' DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsExpLiq.FieldByName('BANCOID').AsString);
      End;
      If DM1.cdsExpLiq.FieldByName('FORPAGOID').AsString = '19' Then
      Begin
         texto := '* DEPOSITO EN CUENTA DEL BANCO DE LA NACION  - ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsExpLiq.FieldByName('BANCOID').AsString);
      End;
      // Insertando forma de Pago
      DM1.cdsForPag.Append;
      DM1.cdsForPag.FieldByName('DESC').AsString := texto;
      DM1.cdsForPag.FieldByName('FORPAGID').AsString := DM1.cdsExpLiq.FieldByName('FORPAGOID').AsString;
      DM1.cdsForPag.FieldByName('BANCOID').AsString := DM1.cdsExpLiq.FieldByName('BANCOID').AsString;
      DM1.cdsForPag.FieldByName('PVSLNCTA').AsString := DM1.cdsExpLiq.FieldByName('ASONCTA').AsString;
      DM1.cdsForPag.FieldByName('AGENBCOID').AsString := DM1.cdsExpLiq.FieldByName('AGENBCOID').AsString;
      DM1.cdsForPag.FieldByName('PVSLDNIBEN').AsString := DM1.cdsAsociado.FieldByName('ASODNI').AsString;
      DM1.cdsForPag.FieldByName('PVSNOMBRE').AsString := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
      DM1.cdsForPag.FieldByName('APEPATCOB').AsString := DM1.cdsAsociado.FieldByName('ASOAPEPATDNI').AsString;
      DM1.cdsForPag.FieldByName('APEMATCOB').AsString := DM1.cdsAsociado.FieldByName('ASOAPEMATDNI').AsString;
      DM1.cdsForPag.FieldByName('APECASCOB').AsString := DM1.cdsAsociado.FieldByName('ASOAPECASDNI').AsString; // SPP_201403_PRE
      DM1.cdsForPag.FieldByName('NOMCOB').AsString := DM1.cdsAsociado.FieldByName('ASONOMDNI').AsString;
      DM1.cdsForPag.Post;
      // Quien cobra
      DM1.cdsForPag.Append;
      DM1.cdsForPag.FieldByName('DESC').AsString := '  A : ' + DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
      If DM1.cdsExpLiq.FieldByName('ASONCTA').AsString <> '' Then
         DM1.cdsForPag.FieldByName('DESC').AsString := DM1.cdsForPag.FieldByName('DESC').AsString + ' [CUENTA Nº ' + DM1.cdsExpLiq.FieldByName('ASONCTA').AsString+']';
      DM1.cdsForPag.FieldByName('DESC').AsString := DM1.cdsForPag.FieldByName('DESC').AsString + ' [D.N.I. : ' + DM1.cdsExpLiq.FieldByName('ASODNI').AsString + ']';
      If montoCob < 0 Then montoCob := 0;
      DM1.cdsForPag.FieldByName('MONTO').AsCurrency := montoCob;
      DM1.cdsForPag.FieldByName('FORPAGID').AsString := DM1.cdsExpLiq.FieldByName('FORPAGOID').AsString;
      DM1.cdsForPag.FieldByName('BANCOID').AsString := DM1.cdsExpLiq.FieldByName('BANCOID').AsString;
      DM1.cdsForPag.FieldByName('AGENBCOID').AsString := DM1.cdsExpLiq.FieldByName('AGENBCOID').AsString;
      DM1.cdsForPag.FieldByName('PVSLNCTA').AsString := DM1.cdsExpLiq.FieldByName('ASONCTA').AsString;
      DM1.cdsForPag.FieldByName('PVSLDNIBEN').AsString := DM1.cdsAsociado.FieldByName('ASODNI').AsString;
      DM1.cdsForPag.FieldByName('PVSNOMBRE').AsString := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
      DM1.cdsForPag.FieldByName('APEPATCOB').AsString := DM1.cdsAsociado.FieldByName('ASOAPEPATDNI').AsString;
      DM1.cdsForPag.FieldByName('APEMATCOB').AsString := DM1.cdsAsociado.FieldByName('ASOAPEMATDNI').AsString;
      DM1.cdsForPag.FieldByName('APECASCOB').AsString := DM1.cdsAsociado.FieldByName('ASOAPECASDNI').AsString; // SPP_201403_PRE
      DM1.cdsForPag.FieldByName('NOMCOB').AsString := DM1.cdsAsociado.FieldByName('ASONOMDNI').AsString;
      DM1.cdsForPag.FieldByName('PORCENTAJE').AsFloat := 100;
      DM1.cdsForPag.FieldByName('MOVCOB').AsString := DM1.cdsAsociado.FieldByName('ASOTELF1').AsString;
      DM1.cdsForPag.Post;
   End
   Else
   Begin
      If DM1.cdsMaestCartas.RecordCount > 0 Then
      Begin
         If DM1.cdsDetCartas.RecordCount > 0 Then
         Begin
            DM1.cdsDetCartas.First;
            While Not DM1.cdsDetCartas.Eof Do
            Begin
               DM1.cobraconcarta := 'S';
               If DM1.cdsDetCartas.FieldByName('FORPAGOID').AsString = '01' Then
               Begin
                  texto := '* CHEQUE DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDetCartas.FieldByName('BANCOID').AsString);
                  montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento  + DM1.montoTransferencia) * (DM1.cdsDetCartas.FieldByName('DSGPORC').AsCurrency / 100), ffNumber, 15, 2)); // HTC_SAR-984_EPS II
               End;
               If DM1.cdsDetCartas.FieldByName('FORPAGOID').AsString = '05' Then
               Begin
                  texto := '* GIRO DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDetCartas.FieldByName('BANCOID').AsString)
                     + ' A LA CIUDAD DE ' + DM1.DevuelveValor('COB102', 'AGENBCODES', 'AGENBCOID', DM1.cdsDetCartas.FieldByName('AGENBCOID').AsString) + '-'
                     + DM1.DevuelveValor('TGE158', 'DPTODES', 'DPTOID', DM1.DevuelveValor('COB102', 'DPTOID', 'AGENBCOID', DM1.cdsDetCartas.FieldByName('AGENBCOID').AsString));
                   montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento) * (DM1.cdsDetCartas.FieldByName('DSGPORC').AsCurrency / 100) - 11.50, ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               If DM1.cdsDetCartas.FieldByName('FORPAGOID').AsString = '11' Then
               Begin
                  texto := '* LIBRETA DE AHORRO DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDetCartas.FieldByName('BANCOID').AsString);
                   montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento ) * (DM1.cdsDetCartas.FieldByName('DSGPORC').AsCurrency / 100), ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               If DM1.cdsDetCartas.FieldByName('FORPAGOID').AsString = '06' Then
               Begin
                  texto := '* ABONO EN CUENTA DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDetCartas.FieldByName('BANCOID').AsString);
                   montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento ) * (DM1.cdsDetCartas.FieldByName('DSGPORC').AsCurrency / 100), ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               If DM1.cdsDetCartas.FieldByName('FORPAGOID').AsString = '16' Then
               Begin
                  texto := '* CHEQUE DE GERENCIA DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDetCartas.FieldByName('BANCOID').AsString);
                  montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento) * (DM1.cdsDetCartas.FieldByName('DSGPORC').AsCurrency / 100), ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               If DM1.cdsDetCartas.FieldByName('FORPAGOID').AsString = '19' Then
               Begin
                  texto := '* DEPOSITO EN CUENTA - ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDetCartas.FieldByName('BANCOID').AsString);
                   montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento) * (DM1.cdsDetCartas.FieldByName('DSGPORC').AsCurrency / 100), ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               xApeNom := '';
               If Trim(DM1.cdsDetCartas.FieldByName('DSGAPEPAT').AsString) <> '' Then xApeNom := xApeNom + Trim(DM1.cdsDetCartas.FieldByName('DSGAPEPAT').AsString)+' ';
               If Trim(DM1.cdsDetCartas.FieldByName('DSGAPEMAT').AsString) <> '' Then xApeNom := xApeNom + Trim(DM1.cdsDetCartas.FieldByName('DSGAPEMAT').AsString)+' ';
               If Trim(DM1.cdsDetCartas.FieldByName('DSGAPECAS').AsString) <> '' Then xApeNom := xApeNom + Trim(DM1.cdsDetCartas.FieldByName('DSGAPECAS').AsString)+' ';
               xApeNom := xApeNom + Trim(DM1.cdsDetCartas.FieldByName('DSGNOMBR').AsString);
               DM1.cdsForPag.Append;
               DM1.cdsForPag.FieldByName('DESC').AsString := texto;
               DM1.cdsForPag.FieldByName('FORPAGID').AsString := DM1.cdsDetCartas.FieldByName('FORPAGOID').AsString;
               DM1.cdsForPag.FieldByName('BANCOID').AsString := DM1.cdsDetCartas.FieldByName('BANCOID').AsString;
               DM1.cdsForPag.FieldByName('AGENBCOID').AsString := DM1.cdsDetCartas.FieldByName('AGENBCOID').AsString;
               DM1.cdsForPag.FieldByName('PVSNOMBRE').AsString := xApeNom;
               DM1.cdsForPag.FieldByName('PVSLDNIBEN').AsString := DM1.cdsDetCartas.FieldByName('DSGDNI').AsString;
               DM1.cdsForPag.FieldByName('APEPATCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGAPEPAT').AsString;
               DM1.cdsForPag.FieldByName('APEMATCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGAPEMAT').AsString;
               DM1.cdsForPag.FieldByName('APECASCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGAPECAS').AsString; // SPP_201403_PRE
               DM1.cdsForPag.FieldByName('NOMCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGNOMBR').AsString;
               DM1.cdsForPag.FieldByName('CODRELCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGTREL').AsString;
               DM1.cdsForPag.FieldByName('APENOMTUT').AsString := Trim(DM1.cdsDetCartas.FieldByName('DSGTAPEP').AsString) + ' ' + Trim(DM1.cdsDetCartas.FieldByName('DSGTAPEM').AsString) + ' ' + Trim(DM1.cdsDetCartas.FieldByName('DSGTNOMB').AsString);
               DM1.cdsForPag.FieldByName('APEPATTUT').AsString := DM1.cdsDetCartas.FieldByName('DSGTAPEP').AsString;
               DM1.cdsForPag.FieldByName('APEMATTUT').AsString := DM1.cdsDetCartas.FieldByName('DSGTAPEM').AsString;
               DM1.cdsForPag.FieldByName('NOMTUT').AsString := DM1.cdsDetCartas.FieldByName('DSGTNOMB').AsString;
               DM1.cdsForPag.FieldByName('PORCENTAJE').AsString := DM1.cdsDetCartas.FieldByName('DSGPORC').AsString;
               DM1.cdsForPag.FieldByName('DIRDOMCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGDIRDES').AsString;
               DM1.cdsForPag.FieldByName('CODZIPCOB').AsString :=  DM1.cdsDetCartas.FieldByName('DSGZIPIDDES').AsString;
               DM1.cdsForPag.FieldByName('TELFIJCOB').AsString :=  DM1.cdsDetCartas.FieldByName('DSGTELFIJDES').AsString;
               DM1.cdsForPag.FieldByName('TELMOVCOB').AsString :=  DM1.cdsDetCartas.FieldByName('DSGTELMOVDES').AsString;
               DM1.cdsForPag.FieldByName('EMAILCOB').AsString := DM1.cdsDetCartas.FieldByName('EMAILDES').AsString;
               DM1.cdsForPag.Post;
               texto := '  A : ' + xApeNom;
               If DM1.cdsDetCartas.FieldByName('DSGDNI').AsString <> '' Then
                  texto := texto + '  [DNI.: ' + DM1.cdsDetCartas.FieldByName('DSGDNI').AsString + ']';
               texto := texto + '  [' + DM1.DevuelveValor('TGE149', 'PARENABR', 'PARENID', DM1.cdsDetCartas.FieldByName('DSGTREL').AsString) + ']  [' + FloatToStrF(DM1.cdsDetCartas.FieldByName('DSGPORC').AsFloat, ffNumber, 5, 2) + '%]';
               DM1.cdsForPag.Append;
               DM1.cdsForPag.FieldByName('DESC').AsString := texto;
               If montoCob < 0 Then montoCob := 0;
               DM1.cdsForPag.FieldByName('MONTO').AsFloat := montoCob;
               DM1.cdsForPag.FieldByName('PORCENTAJE').AsString := DM1.cdsDetCartas.FieldByName('DSGPORC').AsString;
               DM1.cdsForPag.FieldByName('FORPAGID').AsString := DM1.cdsDetCartas.FieldByName('FORPAGOID').AsString;
               DM1.cdsForPag.FieldByName('BANCOID').AsString := DM1.cdsDetCartas.FieldByName('BANCOID').AsString;
               DM1.cdsForPag.FieldByName('AGENBCOID').AsString := DM1.cdsDetCartas.FieldByName('AGENBCOID').AsString;
               DM1.cdsForPag.FieldByName('PVSNOMBRE').AsString := xApeNom;
               DM1.cdsForPag.FieldByName('PVSLDNIBEN').AsString := DM1.cdsDetCartas.FieldByName('DSGDNI').AsString;
               DM1.cdsForPag.FieldByName('APEPATCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGAPEPAT').AsString;
               DM1.cdsForPag.FieldByName('APEMATCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGAPEMAT').AsString;
               DM1.cdsForPag.FieldByName('APECASCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGAPECAS').AsString; // SPP_201403_PRE
               DM1.cdsForPag.FieldByName('NOMCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGNOMBR').AsString;
               DM1.cdsForPag.FieldByName('CODRELCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGTREL').AsString;
               DM1.cdsForPag.FieldByName('APENOMTUT').AsString := Trim(DM1.cdsDetCartas.FieldByName('DSGTAPEP').AsString) + ' ' + Trim(DM1.cdsDetCartas.FieldByName('DSGTAPEM').AsString) + ' ' + Trim(DM1.cdsDetCartas.FieldByName('DSGTNOMB').AsString);
               DM1.cdsForPag.FieldByName('APEPATTUT').AsString := DM1.cdsDetCartas.FieldByName('DSGTAPEP').AsString;
               DM1.cdsForPag.FieldByName('APEMATTUT').AsString := DM1.cdsDetCartas.FieldByName('DSGTAPEM').AsString;
               DM1.cdsForPag.FieldByName('NOMTUT').AsString := DM1.cdsDetCartas.FieldByName('DSGTNOMB').AsString;
               If DM1.cdsDetCartas.FieldByName('FORPAGOID').AsString = '11' Then
               Begin
                  DM1.cdsForPag.FieldByName('APENOMTUT').AsString := DM1.cdsDetCartas.FieldByName('DSGTAPEP').AsString + ' ' + DM1.cdsDetCartas.FieldByName('DSGTAPEM').AsString + ' ' + DM1.cdsDetCartas.FieldByName('DSGTNOMB').AsString;
                  DM1.cdsForPag.FieldByName('DOCIDETUT').AsString := DM1.cdsDetCartas.FieldByName('DSGTDNI').AsString;
                  DM1.cdsForPag.FieldByName('FECNACMEN').AsString := DM1.cdsDetCartas.FieldByName('DSGFNAC').AsString;
               End;
               DM1.cdsForPag.FieldByName('DIRDOMCOB').AsString := DM1.cdsDetCartas.FieldByName('DSGDIRDES').AsString;
               DM1.cdsForPag.FieldByName('CODZIPCOB').AsString :=  DM1.cdsDetCartas.FieldByName('DSGZIPIDDES').AsString;
               DM1.cdsForPag.FieldByName('TELFIJCOB').AsString :=  DM1.cdsDetCartas.FieldByName('DSGTELFIJDES').AsString;
               DM1.cdsForPag.FieldByName('TELMOVCOB').AsString :=  DM1.cdsDetCartas.FieldByName('DSGTELMOVDES').AsString;
               DM1.cdsForPag.FieldByName('EMAILCOB').AsString := DM1.cdsDetCartas.FieldByName('EMAILDES').AsString;
               DM1.cdsForPag.Post;
               DM1.cdsDetCartas.Next;
            End;
         End;
      End
      Else
      Begin
         If DM1.cdsDFam.RecordCount > 0 Then
         Begin
            DM1.cdsDFam.First;
            While Not DM1.cdsDFam.Eof Do
            Begin
               If DM1.cdsDFam.FieldByName('FORPAGOID').AsString = '01' Then
               Begin
                  texto := '* CHEQUE DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDFam.FieldByName('BANCOID').AsString);
                   montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento) * (DM1.cdsDFam.FieldByName('FAMPORC').AsFloat / 100), ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               If DM1.cdsDFam.FieldByName('FORPAGOID').AsString = '05' Then
               Begin
                  texto := '* GIRO DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDFam.FieldByName('BANCOID').AsString)
                     + ' A LA CIUDAD DE ' + DM1.DevuelveValor('COB102', 'AGENBCODES', 'AGENBCOID', DM1.cdsDFam.FieldByName('AGENBCOID').AsString) + '-'
                     + DM1.DevuelveValor('TGE158', 'DPTODES', 'DPTOID', DM1.DevuelveValor('COB102', 'DPTOID', 'AGENBCOID', DM1.cdsDFam.FieldByName('AGENBCOID').AsString));
                  montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento) * (DM1.cdsDFam.FieldByName('FAMPORC').AsFloat / 100) - 11.50, ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               If DM1.cdsDFam.FieldByName('FORPAGOID').AsString = '11' Then
               Begin
                  texto := '* LIBRETA DE AHORRO DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDFam.FieldByName('BANCOID').AsString);
                   montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento) * (DM1.cdsDFam.FieldByName('FAMPORC').AsCurrency / 100), ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               If DM1.cdsDFam.FieldByName('FORPAGOID').AsString = '06' Then
               Begin
                  texto := '* ABONO EN CUENTA DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDFam.FieldByName('BANCOID').AsString);
                  montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento ) * (DM1.cdsDFam.FieldByName('FAMPORC').AsCurrency / 100), ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               If DM1.cdsDFam.FieldByName('FORPAGOID').AsString = '16' Then
               Begin
                  texto := '* CHEQUE DE GERENCIA DEL ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDFam.FieldByName('BANCOID').AsString);
                  montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento) * (DM1.cdsDFam.FieldByName('FAMPORC').AsCurrency / 100), ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               If DM1.cdsDFam.FieldByName('FORPAGOID').AsString = '19' Then
               Begin
                  texto := '* DEPOSITO EN CUENTA - ' + DM1.DevuelveValor('TGE105', 'BANCONOM', 'BANCOID', DM1.cdsDFam.FieldByName('BANCOID').AsString);
                   montoCob := DM1.Valores(FloatToStrF((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento) * (DM1.cdsDFam.FieldByName('FAMPORC').AsCurrency / 100), ffNumber, 15, 2));  // HTC_SAR-984_EPS II
               End;
               DM1.cdsForPag.Append;
               DM1.cdsForPag.FieldByName('DESC').AsString := texto;
               DM1.cdsForPag.FieldByName('FORPAGID').AsString := DM1.cdsDFam.FieldByName('FORPAGOID').AsString;
               DM1.cdsForPag.FieldByName('BANCOID').AsString := DM1.cdsDFam.FieldByName('BANCOID').AsString;
               DM1.cdsForPag.FieldByName('AGENBCOID').AsString := DM1.cdsDFam.FieldByName('AGENBCOID').AsString;
               DM1.cdsForPag.FieldByName('PVSLDNIBEN').AsString := DM1.cdsDFam.FieldByName('FAMNUMDOC').AsString;
               DM1.cdsForPag.FieldByName('PVSNOMBRE').AsString := DM1.cdsDFam.FieldByName('FAMAPENOM').AsString;
               DM1.cdsForPag.FieldByName('APEPATCOB').AsString := DM1.cdsDFam.FieldByName('FAMAPEPAT').AsString;
               DM1.cdsForPag.FieldByName('APEMATCOB').AsString := DM1.cdsDFam.FieldByName('FAMAPEMAT').AsString;
               DM1.cdsForPag.FieldByName('APECASCOB').AsString := DM1.cdsDFam.FieldByName('FAMAPECAS').AsString; // SPP_201403_PRE
               DM1.cdsForPag.FieldByName('NOMCOB').AsString := DM1.cdsDFam.FieldByName('FAMNOMBRE').AsString;
               DM1.cdsForPag.FieldByName('CODRELCOB').AsString := DM1.cdsDFam.FieldByName('FAMRELID').AsString;
               DM1.cdsForPag.FieldByName('APENOMTUT').AsString := Trim(DM1.cdsDFam.FieldByName('APEPATTUT').AsString) + ' ' + Trim(DM1.cdsDFam.FieldByName('APEMATTUT').AsString) + ' ' + Trim(DM1.cdsDFam.FieldByName('NOMTUT').AsString);
               DM1.cdsForPag.FieldByName('APEPATTUT').AsString := DM1.cdsDFam.FieldByName('APEPATTUT').AsString;
               DM1.cdsForPag.FieldByName('APEMATTUT').AsString := DM1.cdsDFam.FieldByName('APEMATTUT').AsString;
               DM1.cdsForPag.FieldByName('NOMTUT').AsString := DM1.cdsDFam.FieldByName('NOMTUT').AsString;
               DM1.cdsForPag.FieldByName('DIRDOMCOB').AsString := DM1.cdsDFam.FieldByName('FAMDIRECC').AsString;
               DM1.cdsForPag.FieldByName('CODZIPCOB').AsString :=  DM1.cdsDFam.FieldByName('DISTID').AsString;
               DM1.cdsForPag.FieldByName('TELFIJCOB').AsString :=  DM1.cdsDFam.FieldByName('FAMTELF').AsString;
               DM1.cdsForPag.FieldByName('TELMOVCOB').AsString :=  DM1.cdsDFam.FieldByName('FAMTELMOV').AsString;
               DM1.cdsForPag.FieldByName('EMAILCOB').AsString := DM1.cdsDFam.FieldByName('EMAILFAM').AsString;
               DM1.cdsForPag.Post;
               texto := '  A : ' + Trim(DM1.cdsDFam.FieldByName('FAMAPENOM').AsString);
               If DM1.cdsDFam.FieldByName('FAMNUMDOC').AsString <> '' Then
                  texto := texto + '  [DNI.: ' + DM1.cdsDFam.FieldByName('FAMNUMDOC').AsString + ']';
               texto := texto + '  [' + DM1.DevuelveValor('TGE149', 'PARENABR', 'PARENID', DM1.cdsDFam.FieldByName('FAMRELID').AsString) + ']  [' + FloatToStrF(DM1.cdsDFam.FieldByName('FAMPORC').AsFloat, ffNumber, 5, 2) + '%]';
               DM1.cdsForPag.Append;
               DM1.cdsForPag.FieldByName('DESC').AsString := texto;
               If montoCob < 0 Then montoCob := 0;
               DM1.cdsForPag.FieldByName('MONTO').AsCurrency := montoCob;
               DM1.cdsForPag.FieldByName('PORCENTAJE').AsFloat := DM1.cdsDFam.FieldByName('FAMPORC').AsFloat;
               DM1.cdsForPag.FieldByName('FORPAGID').AsString := DM1.cdsDFam.FieldByName('FORPAGOID').AsString;
               DM1.cdsForPag.FieldByName('BANCOID').AsString := DM1.cdsDFam.FieldByName('BANCOID').AsString;
               DM1.cdsForPag.FieldByName('AGENBCOID').AsString := DM1.cdsDFam.FieldByName('AGENBCOID').AsString;
               DM1.cdsForPag.FieldByName('PVSLDNIBEN').AsString := DM1.cdsDFam.FieldByName('FAMNUMDOC').AsString;
               DM1.cdsForPag.FieldByName('PVSNOMBRE').AsString := DM1.cdsDFam.FieldByName('FAMAPENOM').AsString;
               DM1.cdsForPag.FieldByName('APEPATCOB').AsString := DM1.cdsDFam.FieldByName('FAMAPEPAT').AsString;
               DM1.cdsForPag.FieldByName('APEMATCOB').AsString := DM1.cdsDFam.FieldByName('FAMAPEMAT').AsString;
               DM1.cdsForPag.FieldByName('APECASCOB').AsString := DM1.cdsDFam.FieldByName('FAMAPECAS').AsString; // SPP_201403_PRE
               DM1.cdsForPag.FieldByName('NOMCOB').AsString := DM1.cdsDFam.FieldByName('FAMNOMBRE').AsString;
               DM1.cdsForPag.FieldByName('CODRELCOB').AsString := DM1.cdsDFam.FieldByName('FAMRELID').AsString;
               DM1.cdsForPag.FieldByName('APENOMTUT').AsString := Trim(DM1.cdsDFam.FieldByName('APEPATTUT').AsString) + ' ' + Trim(DM1.cdsDFam.FieldByName('APEMATTUT').AsString) + ' ' + Trim(DM1.cdsDFam.FieldByName('NOMTUT').AsString);
               DM1.cdsForPag.FieldByName('APEPATTUT').AsString := DM1.cdsDFam.FieldByName('APEPATTUT').AsString;
               DM1.cdsForPag.FieldByName('APEMATTUT').AsString := DM1.cdsDFam.FieldByName('APEMATTUT').AsString;
               DM1.cdsForPag.FieldByName('NOMTUT').AsString := DM1.cdsDFam.FieldByName('NOMTUT').AsString;
               If DM1.cdsDFam.FieldByName('FORPAGOID').AsString = '11' Then
               Begin
                  DM1.cdsForPag.FieldByName('APENOMTUT').AsString := DM1.cdsDFam.FieldByName('TUTAPENOM').AsString;
                  DM1.cdsForPag.FieldByName('DOCIDETUT').AsString := DM1.cdsDFam.FieldByName('TUTNUMDOC').AsString;
                  DM1.cdsForPag.FieldByName('FECNACMEN').AsString := DM1.cdsDFam.FieldByName('FAMFECNAC').AsString;
               End;
               DM1.cdsForPag.FieldByName('DIRDOMCOB').AsString := DM1.cdsDFam.FieldByName('FAMDIRECC').AsString;
               DM1.cdsForPag.FieldByName('CODZIPCOB').AsString :=  DM1.cdsDFam.FieldByName('DISTID').AsString;
               DM1.cdsForPag.FieldByName('TELFIJCOB').AsString :=  DM1.cdsDFam.FieldByName('FAMTELF').AsString;
               DM1.cdsForPag.FieldByName('TELMOVCOB').AsString :=  DM1.cdsDFam.FieldByName('FAMTELMOV').AsString;
               DM1.cdsForPag.FieldByName('EMAILCOB').AsString := DM1.cdsDFam.FieldByName('EMAILFAM').AsString;
               DM1.cdsForPag.Post;
               DM1.cdsDFam.Next;
            End;
         End
         Else
            MessageDlg('La liquidación no cuenta con designatarios', mtCustom, [mbOk], 0);
      End;

    // Añadiendo o quintando centimo para el cuadre
      DM1.cdsForPag.First;
      montoCob := 0;
      While Not DM1.cdsForPag.Eof Do
      Begin
         montoCob := montoCob + DM1.cdsForPag.FieldByName('MONTO').AsFloat;
         DM1.cdsForPag.Next;
      End;

      If (DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento) <> montoCob Then  // HTC_SAR-984_EPS II
      Begin
         DM1.cdsForPag.First;
         While Not DM1.cdsForPag.Eof Do
         Begin
            If DM1.cdsForPag.FieldByName('MONTO').AsFloat <> 0 Then
            Begin
               DM1.cdsForPag.Edit;
               DM1.cdsForPag.FieldByName('MONTO').AsFloat := DM1.cdsForPag.FieldByName('MONTO').AsFloat +
                  ((DM1.liquidacionbeneficio + DM1.montoDevolucion - DM1.totalMontoDescuento - DM1.montoTransferencia) - montoCob);  // HTC_SAR-984_EPS II
               DM1.cdsForPag.Post;
               Exit;
            End;
            DM1.cdsForPag.Next;
         End;
      End;

   End;

   If DM1.cdsForPag.RecordCount = 0 Then
   Begin
      DM1.cdsForPag.Append;
      DM1.cdsForPag.FieldByName('DESC').AsString := 'Error no existen designatarios';
      DM1.cdsForPag.FieldByName('MONTO').AsFloat := 0;
      DM1.cdsForPag.FieldByName('GRABAR').AsString := 'N';
      DM1.cdsForPag.Post;
   End;
End;
//Fin HPC_201702_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
Function TDM1.GenNumLiq: String;
Var
   xSql, xAno, xNumLiq: String;
Begin
   xAno := Copy(DateToStr(date), 7, 4);
   xSql := 'SELECT CORREANO||LPAD(VARIOS+1, 7, ''0'') PVSLBENNR FROM CRE206 WHERE CREAREA = ''PRE'' AND TIPO = ''L'' AND CORREANO  = ' + QuotedStr(xAno);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xNumLiq := DM1.cdsQry.FieldByname('PVSLBENNR').AsString;
   xSql := 'UPDATE CRE206 SET VARIOS=LPAD(VARIOS+1, 7, ''0'') WHERE CREAREA = ''PRE'''
      + ' AND TIPO = ''L'' AND CORREANO = ' + QuotedStr(xAno);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   Result := xNumLiq;
End;
//Fin HPC_201702_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
Procedure TDM1.Grabafamiliares(xAsoid: String);
Var
   xSql: String;
Begin
  // Graba datos de los familiares (Tabla APO203)
   xSql := 'UPDATE APO203 SET PVSLBENNR = ' + QuotedStr(DM1.numeroLiquidacion) + ' WHERE ASOID = ' + QuotedStr(xAsoid)
      + ' AND NVL(FAMFLLQ, ''X'') <> ''X'' ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
End;
//Fin HPC_201702_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
Function TDM1.Gennumvou: String;
Var
   xSql, xAno, xNumVou: String;
Begin
   xAno := Copy(DateToStr(date), 7, 4);
   xSql := 'SELECT LPAD(VARIOS+1, 7, ''0'') VOUCHER FROM CRE206 WHERE CREAREA = ''PRE'' AND TIPO = ''V'' AND CORREANO  = ' + QuotedStr(xAno);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xNumVou := DM1.cdsQry.FieldByname('VOUCHER').AsString;
   xSql := 'UPDATE CRE206 SET VARIOS=LPAD(VARIOS+1, 7, ''0'') WHERE CREAREA = ''PRE'''
      + ' AND TIPO = ''V'' AND CORREANO = ' + QuotedStr(xAno);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   Result := xNumVou;
End;
//Fin HPC_201702_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
Function TDM1.verificaexiste(xSql: String): Boolean;
Begin
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 1 Then
      Result := True
   Else
      Result := False;
   Exit;
End;
//Fin HPC_201702_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
Procedure TDM1.actualizapvs301(xasoid, xnumexp: String);
Var
   xSql, asoncta: String;
Begin
  // Para actualizar el pvs301 desde el apo201
   xSql := 'SELECT ASORESNOM, ASOFRESNOM, ASOAPENOMDNI, ASOFECNAC, TIPDOCCOD, ASODOCNUM, ASODNI, ASONCTA '
      + 'FROM APO201 WHERE ASOID = ' + QuotedStr(xasoid);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

   xSql := 'SELECT '
   +' ciaid, pvsexpnro, pvstipben, asoid, asocodmod, asocodaux, dptoid_xx, ciuid_xx, pvsestado, pvsfecini_xx, pvsresnom_xx,'
   +' pvsfresnm_xx, pvsresces_xx, pvsfrescs_xx, pvsfinval_xx, pvsfnaci_xx, pvsedad_xx, pvsffalle_xx, pvscausa, forpagoid,'
   +' bancoid, pvsnrocta_xx, pvsimpben_xx, pvsapoaa_xx, pvsapomm_xx, pvsapodd_xx, pvssexo_xx, regpenid_xx, pvsultapo,'
   +' pvsliqnro_xx, pvsvou_xx, pvsfconc_xx, pvsconcl_xx, usuario, freg, hreg, agenbcoid, pvsnom_xx, pvsnrochq_xx,'
   +' pvsfliq_xx, pvsdnideudo_xx, reprid, bcodptoid_xx, pvsncargo_xx, pvsnabono_xx, asocobben_xx, useid_xx, upagoid_xx,'
   +' uproid_xx, pvscobaso, asoapenomdni, asoncta, pvslbennr, pvslfecbe, asoresnom, asofresnom, asorescese, asofrescese,'
   +' asofecnac, tipdoccod, asodocnum, asodni, asofecinv, asofecfal, ofdesidori, disoriexp, pvssegui_xx, usu_anu,'
   +' fec_anu, com_anu, codotrdocide, numotrdocide, pvsfecexp, usucreexp, apenomsol, dnisol, vinparsol, forsolben, pvstipret,'
   +' genporweb, versede, conofide, cod_err_dni, obs_memo_actual, tipbenef, codcauces, deporiexp, ofioriexp, fecrecexp, codcarexp'
   +' FROM PVS301 WHERE ASOID = ' + QuotedStr(xasoid) + ' AND PVSEXPNRO = ' + QuotedStr(xnumexp);
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSql);
   DM1.cdsQry2.Open;

   If DM1.cdsQry2.FieldByName('FORPAGOID').AsString = '06' Then
      asoncta := DM1.cdsQry.FieldByName('ASONCTA').AsString
   Else
      asoncta := '';
   If DM1.cdsQry2.FieldByName('FORPAGOID').AsString = '19' Then asoncta := DM1.cdsQry.FieldByName('ASONCTA').AsString;
   xSql := 'UPDATE PVS301 SET '
      + '  ASORESNOM    = ' + QuotedStr(DM1.cdsQry.FieldByName('ASORESNOM').AsString)
      + ', ASOFRESNOM   = ' + QuotedStr(DM1.cdsQry.FieldByName('ASOFRESNOM').AsString)
      + ', ASOAPENOMDNI = ' + QuotedStr(DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString)
      + ', ASOFECNAC    = ' + QuotedStr(DM1.cdsQry.FieldByName('ASOFECNAC').AsString)
      + ', TIPDOCCOD    = ' + QuotedStr(DM1.cdsQry.FieldByName('TIPDOCCOD').AsString)
      + ', ASODOCNUM    = ' + QuotedStr(DM1.cdsQry.FieldByName('ASODOCNUM').AsString)
      + ', ASODNI       = ' + QuotedStr(DM1.cdsQry.FieldByName('ASODNI').AsString)
      + ', ASONCTA      = ' + QuotedStr(asoncta)
      + ' WHERE ASOID = ' + QuotedStr(xasoid) + ' AND PVSEXPNRO = ' + QuotedStr(xnumexp);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

End;
//Fin HPC_201702_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
procedure TDM1.cdsMaestCartasReconcileError(DataSet: TCustomClientDataSet;
  E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
    Action := HandleReconcileError(DataSet, UpdateKind, E);
end;
//Fin HPC_201702_ASO
//Inicio HPC_201702_ASO
//Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
Function TDM1.tiempoTranscurridoPRE(fechaFinal, fechaInicial: TDate; xflg: String): String;
Begin
   DecodeDate(fechaInicial, anoInicial, mesInicial, diaInicial);
   DecodeDate(fechaFinal, anoFinal, mesFinal, diaFinal);
   anosTranscurridos := Int(anoFinal - anoInicial);
   If (mesInicial <= mesFinal) Then
      mesesTranscurridos := mesFinal - mesInicial
   Else
   Begin
      mesesTranscurridos := mesFinal + 12 - mesInicial;
      anosTranscurridos := anosTranscurridos - 1;
   End;
   If (diaInicial <= diaFinal) Then
      diasTranscurridos := diaFinal - diaInicial
   Else
   Begin
      diasTranscurridos := diaFinal + MonthDays[IsLeapYear(anoFinal), mesFinal] - diaInicial;
      mesesTranscurridos := mesesTranscurridos - 1;
   End;
  //Caso especial donde no ha cumplido años, pero los cumplirá el mismo mes
   If mesesTranscurridos < 0 Then
   Begin
      anosTranscurridos := anosTranscurridos - 1;
      mesesTranscurridos := 12 + mesesTranscurridos;
   End;
   If xflg = '0' Then
      Result := Format('AÑOS : %.0f, MESES : %.0f, DIAS : %.0f', [anosTranscurridos, mesesTranscurridos, diasTranscurridos])
   Else
      Result := Format('%.0f AÑOS, %.0f MESES', [anosTranscurridos, mesesTranscurridos]);
End;
//Final HPC_201702_ASO
end.

