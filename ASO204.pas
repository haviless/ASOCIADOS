unit ASO204;
// Inicio Uso Estándares: 01/08/2011
// Unidad               : ASO204
// Formulario           : fGeneraLote
// Fecha de Creación    : 20/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Genera Lote para actualziacion masiva de datos a Reniec.
// Actualizaciones      :
// SPP_201405_ASO       : Se realiza el pase a producción a partir del HPC_201404_ASO
// HPC_201406_ASO       : Se cambia la obtencion de la ubicacion de colegio para los asociados.
// SPP_201406_ASO       : Se realiza el pase a producción a partir del HPC_201406_ASO.
// HPC_201411_ASO       : Se cierra los estados de los registros que terminen en error en la captura de Reniec.
// SPP_201408_ASO       : Se realiza el pase a producción a partir del HPC_201411_ASO.
// HPC_201601_ASO : AMPLIAR ALCANCE DE LIQUIDACIONES ANTIGUAS
// HPC_201607_ASO: Se añaden los filtros ¿Existe ubigeo de domicilio?, ¿Existe en RENIEC?, ¿Es aportante regular?
//                 Actualiza dirección de tablas RENIEC en la maestra de asociados
// HPC_201705_ASO       : Se realiza correcciones de inconsistencias al momento de migrar información de RENIEC.
interface

uses
Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdblook, Wwdbdlg, Wwdbigrd, Grids,
  Wwdbgrid, ComCtrls, ExtCtrls, ppParameter, ppBands, ppCtrls, jpeg,
  Windows,  ppVar, ppPrnabl, ppClass,   ppCache, ppProd, ppReport, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppComm,
  ppEndUsr, CheckLst,  wwExport,shellapi,
  SOAPHTTPClient, xmldom, types, rxgif, ValEdit, DB, DBClient,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, IniFiles, ppStrtch, ppSubRpt,
  Wwdatsrc, wwclient, DBGrids, XSBuiltIns, ImageDLLLoader, LinarBitmap, ExtDlgs, FileUtils, SIPSvc,
  SIPSvcUTIL, ICOLoader, JPEGLoader, PNGLoader, HIPSLoader, BMPLoader, PCXLoader, WMFLoader,WSUbicabilidad;

  
type
  TfGeneraLote = class(TForm)
    Label7: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox3: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    rbDomicilio: TRadioButton;
    rbColegio: TRadioButton;
    dblcdcoddep: TwwDBLookupComboDlg;
    medesdep: TMaskEdit;
    dblcdcodpro: TwwDBLookupComboDlg;
    medespro: TMaskEdit;
    dblcdcoddis: TwwDBLookupComboDlg;
    medesdis: TMaskEdit;
    dblcdColegio: TwwDBLookupComboDlg;
    mdesColegio: TMaskEdit;
    Panel1: TPanel;
    bSalir: TBitBtn;
    bReporte: TBitBtn;
    Panel3: TPanel;
    dtgConsultaDatos: TwwDBGrid;
    dtgAsociadoIButton: TwwIButton;
    ppDesigner: TppDesigner;
    ppbdReporte: TppBDEPipeline;
    pprReporte: TppReport;
    ppParameterList2: TppParameterList;
    bBuscar: TBitBtn;
    Label4: TLabel;
    Label9: TLabel;
    Label16: TLabel;
    dblcRegPension: TwwDBLookupCombo;
    rbTodos: TRadioButton;
    rbMenor50: TRadioButton;
    rbMayor50: TRadioButton;
    Label10: TLabel;
    lblContador: TLabel;
    bLote: TBitBtn;
    bProcesar: TBitBtn;
    dblcTipoAso: TwwDBLookupCombo;
    mdesCreVigente: TMaskEdit;
    mdesFirmo: TMaskEdit;
    mdesRegPension: TMaskEdit;
    GroupBox4: TGroupBox;
    dtpInicio: TDateTimePicker;
    Label18: TLabel;
    Label19: TLabel;
    dtpFin: TDateTimePicker;
    chkFechas: TCheckBox;
    Label11: TLabel;
    Label14: TLabel;
    GroupBox5: TGroupBox;
    Label15: TLabel;
    lblCuota: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    lblRealizado: TLabel;
    lblResta: TLabel;
    grbProceso: TGroupBox;
    lblPor: TLabel;
    prbAvance: TProgressBar;
    bExportar: TBitBtn;
    dtgExcel: TwwDBGrid;
    wwIButton1: TwwIButton;
    imgFirma: TImage;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel41: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppImage2: TppImage;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine40: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine42: TppLine;
    ppLabel58: TppLabel;
    ppLine56: TppLine;
    pplTitulo: TppLabel;
    ppLine41: TppLine;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine44: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine3: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine4: TppLine;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine2: TppLine;
    ppPageStyle1: TppPageStyle;
    ppLabel3: TppLabel;
    // INICIO HPC_201601_ASO
	// DECLARA OBJETO
    btnImportaExcel: TBitBtn;
    dblcFirmo: TwwDBLookupCombo;
    dblcCreVigente: TwwDBLookupCombo;
    // Inicio: HPC_201607_ASO
    // Componentes que controlan los nuevos filtros añadidos
    Label17: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cbUbigeo: TComboBox;
    cbReniec: TComboBox;
    cbAportante: TComboBox;
    // Fin: HPC_201607_ASO
    // FIN HPC_201601_ASO
    procedure dblcdcoddepChange(Sender: TObject);
    procedure dblcdcoddepExit(Sender: TObject);
    procedure dblcdcodproChange(Sender: TObject);
    procedure dblcdcodproExit(Sender: TObject);
    procedure dblcdcoddisChange(Sender: TObject);
    procedure dblcdColegioExit(Sender: TObject);
    procedure dblcdColegioChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rbDomicilioClick(Sender: TObject);
    procedure rbColegioClick(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure dblcCreVigenteChange(Sender: TObject);
    procedure dblcRegPensionChange(Sender: TObject);
    procedure dblcTipoAsoChange(Sender: TObject);
    procedure dblcFirmoChange(Sender: TObject);
    procedure chkFechasClick(Sender: TObject);
    function  isFechasValidas():boolean;
    procedure bProcesarClick(Sender: TObject);
    // INICIO HPC_201601_ASO
	// DECLARA PROCEDURE
    procedure Buscar(xbImportado : Boolean);
    // FIN HPC_201601_ASO
    procedure bLoteClick(Sender: TObject);
    function ActDatReniec(xCodDet: Integer;xAsoDni,xAsoApePat,xAsoApeMat,xAsoNombres: STRING): Boolean;
    function ActualizaDatosASociados(xCodDet:Integer; xAsoDni:String): Boolean;
    Procedure CargaMemStreamImg(xAsoDni:String);
    PROCEDURE GrabafotoAtabla(xDni: STRING);
    procedure bReporteClick(Sender: TObject);
    procedure InicializaGrilla;
    procedure bExportarClick(Sender: TObject);
    // INICIO HPC_201601_ASO
	// DECLARA PROCEDURE
    procedure btnImportaExcelClick(Sender: TObject);
    // Inicio: HPC_201607_ASO
    // Se crea procedimiento actualiza direcciones del reniec en la maestra de asociados
    procedure actualizadireccionRENIEC(xAsoDni:String);
    // Fin: HPC_201607_ASO

    // FIN HPC_201601_ASO
  private
    { Private declarations }
  public
    { Public declarations }
  SearchResult: CPersonData2;
  Photo, Signature: TByteDynArray;
  FindByDocumentResult: Int64;
  Reg : CPersonData2;
  end;

var
  fGeneraLote: TfGeneraLote;
  SearchResult: CPersonData2;
  ISipObj : ISIPService;
  xCuota :Integer;
  xCont :Integer;
  xSexo :String;
  xfotoJpg,xFirmaJpg,xFirmaTif :String;

implementation

// INICIO HPC_201601_ASO
// DECLARA DEPENDENCIA DE FORMULARIO
uses ASODM,DateUtils, ASO204A, ASO182;
// FIN HPC_201601_ASO

{$R *.dfm}

procedure TfGeneraLote.FormActivate(Sender: TObject);
Var xSql:String;
begin
   //--Llena Combo Departamento--//
   xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSql);
   DM1.cdsDpto.Open;
   dblcdcoddep.Selected.Clear;
   dblcdcoddep.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
   dblcdcoddep.Selected.Add('DPTODES'#9'15'#9'Descripción'#9#9);

    //--Llena Combo Credito Vigente--//
   xSql := ' SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''CREDITOVIGENTE'' ORDER BY 1 DESC '  ;
   DM1.cdsFiltro1.Close;
   DM1.cdsFiltro1.DataRequest(xSql);
   DM1.cdsFiltro1.Open;
   dblcCreVigente.LookupTable := DM1.cdsFiltro1;
   dblcCreVigente.LookupField := 'VALDES01';
   dblcCreVigente.Selected.Clear;
   dblcCreVigente.Selected.Add('VALDES01'#9'3'#9'Código'#9#9);
   dblcCreVigente.Selected.Add('NOMVAL'#9'10'#9'Descripción'#9#9);
   mdesCreVigente.Text:='-TODOS-';

    //--Llena Combo Firmo CADAPAS--//
   xSql := ' SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''FIRMO'' ORDER BY 1 DESC '  ;
   DM1.cdsFiltro2.Close;
   DM1.cdsFiltro2.DataRequest(xSql);
   DM1.cdsFiltro2.Open;
   dblcFirmo.LookupTable := DM1.cdsFiltro2;
   dblcFirmo.LookupField := 'VALDES01';
   dblcFirmo.Selected.Clear;
   dblcFirmo.Selected.Add('VALDES01'#9'3'#9'Código'#9#9);
   dblcFirmo.Selected.Add('NOMVAL'#9'8'#9'Descripción'#9#9);
   mdesFirmo.Text:='-TODOS-';


   //--Llena Combo Tipo Asociado--//
   // Inicio: HPC_201607_ASO
   // Se modifica el Qry que captura los tipos de asociados
   // xSql := '  SELECT ''-SELECCIONE-'' ASOTIPID FROM DUAL'
   //      +' UNION ALL                                '
   //      +' SELECT DISTINCT A.ASOTIPID FROM APO201 A WHERE A.ASOTIPID IS NOT NULL'
   //      +' UNION ALL                                                             '
   //      +' SELECT DISTINCT N.ASOTIPID FROM ASO_NUE_CLI N WHERE N.ASOTIPID IS NOT NULL AND NOT EXISTS (SELECT ASOTIPID FROM APO201)';
   xSql := 'SELECT ASOTIPID FROM (SELECT ''-SELECCIONE-'' ASOTIPID FROM DUAL'
   +' UNION ALL SELECT ASOTIPID FROM APO201'
   +' UNION ALL SELECT ASOTIPID FROM ASO_NUE_CLI)'
   +' WHERE ASOTIPID IS NOT NULL GROUP BY ASOTIPID ORDER BY ASOTIPID';
   // Fin: HPC_201607_ASO
   DM1.cdsFiltro3.Close;
   DM1.cdsFiltro3.DataRequest(xSql);
   DM1.cdsFiltro3.Open;
   dblcTipoAso.LookupTable := DM1.cdsFiltro3;
   dblcTipoAso.LookupField := 'ASOTIPID';
   dblcTipoAso.Selected.Clear;
   dblcTipoAso.Selected.Add('ASOTIPID'#9'9'#9'Tipo'#9#9);
   dblcTipoAso.Text:='-SELECCIONE-';

   //--Llena Combo Regimen de Pension--//
   xSql := 'SELECT '''' REGPENID,''-TODOS-'' REGPENABR from dual UNION ALL SELECT A.REGPENID,A.REGPENABR FROM APO105 A';
   DM1.cdsFiltro4.Close;
   DM1.cdsFiltro4.DataRequest(xSql);
   DM1.cdsFiltro4.Open;
   dblcRegPension.LookupTable := DM1.cdsFiltro4;
   dblcRegPension.LookupField := 'REGPENID';
   dblcRegPension.Selected.Clear;
   dblcRegPension.Selected.Add('REGPENID'#9'5'#9'Codigo'#9#9);
   dblcRegPension.Selected.Add('REGPENABR'#9'9'#9'Descripcion'#9#9);
   dblcRegPension.Text:=DM1.cdsFiltro4.fieldbyname('REGPENID').AsString;
   mdesRegPension.Text:='-TODOS-';

   //Validacion de cuota por mes de la captura de datos.

   //Obtiene valor cuota de tabla
   xSql := 'SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''VALORCUOTA'' ORDER BY 1 DESC '  ;
   DM1.cdsFiltro5.Close;
   DM1.cdsFiltro5.DataRequest(xSql);
   DM1.cdsFiltro5.Open;
   xCuota:= DM1.cdsFiltro5.fieldbyname('VALDES01').AsInteger;

   //Calcula la cantidad de capturas guardadas en la tabla de reniec del mes actual
    xSql := ' SELECT SUM(1) CONT FROM INF_RENIEC_CAP R'
                        +' WHERE TO_CHAR(R.FECACT,''MM/YYYY'')= TO_CHAR(SYSDATE,''MM/YYYY'')';
    DM1.cdsConsulta3.Close;
    DM1.cdsConsulta3.DataRequest(xSql);
    DM1.cdsConsulta3.Open;
    xCont:=DM1.cdsConsulta3.FieldByName('CONT').AsInteger;
    lblRealizado.Caption:=IntToStr(xCont);
    lblResta.Caption:=IntToStr(xCuota-xCont);
    if xCont >= xCuota then
    begin
        ShowMessage('Se ha terminado la cuota mensual de Captura de datos a Reniec ..!!!!');
        lblRealizado.Caption:=IntToStr(xCont);
        lblResta.Caption:=IntToStr(xCuota-xCont);
        exit;
    end;

   //--Valores iniciales--//
   rbDomicilio.Checked:=true;
   dblcdColegio.Enabled:=false;
   rbTodos.Checked:=true;
   //dtpInicio.Date:=StrToDate('01/'+copy(DateToStr(EndOfTheMonth(Date)),4,7));
   dtpFin.Date:=EndOfTheMonth(Date);
   dtpInicio.Enabled:=false;
   dtpFin.Enabled:=false;
   bProcesar.Enabled:=false;
   lblCuota.Caption:= IntToStr(xCuota);
   lblContador.Caption:=IntToStr(0)+' Registros' ;
   InicializaGrilla;
   dtgExcel.Visible:=false;  

end;

procedure TfGeneraLote.dblcdcoddepChange(Sender: TObject);
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

procedure TfGeneraLote.dblcdcoddepExit(Sender: TObject);
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

procedure TfGeneraLote.dblcdcodproChange(Sender: TObject);
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

procedure TfGeneraLote.dblcdcodproExit(Sender: TObject);
begin
  If Trim(dblcdcodpro.Text) = '' Then
  Begin
     medespro.Text    := '';
     dblcdcoddis.Enabled:=false;
     dblcdcoddis.Text := '';
     medesdis.Text    := '';
  End;
end;

procedure TfGeneraLote.dblcdcoddisChange(Sender: TObject);
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

procedure TfGeneraLote.dblcdColegioChange(Sender: TObject);
begin
         mdesColegio.Text := DM1.cdsColegio.fieldbyname('CENEDUID').AsString;
end;

procedure TfGeneraLote.dblcdColegioExit(Sender: TObject);
begin
    If Trim(dblcdColegio.Text) = '' Then
     mdesColegio.Text    := '';
end;


procedure TfGeneraLote.rbDomicilioClick(Sender: TObject);
begin
        dblcdcoddep.Text:='';
        dblcdcodpro.Text:='';
        dblcdcoddis.Text:='';
        dblcdColegio.Text:='';
        dblcdcodpro.Enabled:=false;
        dblcdcoddis.Enabled:=false;
end;

procedure TfGeneraLote.rbColegioClick(Sender: TObject);
begin
        dblcdcoddep.Text:='';
        dblcdcodpro.Text:='';
        dblcdcoddis.Text:='';
        dblcdColegio.Text:='';
        dblcdcodpro.Enabled:=false;
        dblcdcoddis.Enabled:=false;
end;


procedure TfGeneraLote.bSalirClick(Sender: TObject);
begin
        Close;
end;


procedure TfGeneraLote.dblcCreVigenteChange(Sender: TObject);
begin
      if dblcCreVigente.Text='' then
      begin
         mdesCreVigente.Text:='-TODOS-';
      end
      else
      begin
         dblcCreVigente.Text:=DM1.cdsFiltro1.fieldbyname('VALDES01').AsString;
         mdesCreVigente.Text:=DM1.cdsFiltro1.fieldbyname('NOMVAL').AsString;
      end;

end;

procedure TfGeneraLote.dblcFirmoChange(Sender: TObject);
begin
     if dblcFirmo.Text='' then
      begin
         mdesFirmo.Text:='-TODOS-';
      end
      else
      begin
         dblcFirmo.Text:=DM1.cdsFiltro2.fieldbyname('VALDES01').AsString;
         mdesFirmo.Text:=DM1.cdsFiltro2.fieldbyname('NOMVAL').AsString;
      end;
end;

procedure TfGeneraLote.dblcRegPensionChange(Sender: TObject);
begin
     if dblcRegPension.Text ='' then
     begin
       mdesRegPension.Text:='-TODOS-';
     end
     else
     begin
         dblcRegPension.Text:=DM1.cdsFiltro4.fieldbyname('REGPENID').AsString;
         mdesRegPension.Text:=DM1.cdsFiltro4.fieldbyname('REGPENABR').AsString;
     end;
end;

function TfGeneraLote.isFechasValidas():boolean;
    begin
      result:= not ((trim(datetostr(dtpInicio.Date))='') or (trim(datetostr(dtpFin.Date))=''));
    end;

procedure TfGeneraLote.dblcTipoAsoChange(Sender: TObject);
begin
     if dblcTipoAso.Text ='' then
     dblcTipoAso.Text:='-SELECCIONE-'
end;
procedure TfGeneraLote.bBuscarClick(Sender: TObject);
begin
     // INICIO HPC_201601_ASO
	 // INVOCA PROCEDURE
     Buscar(FALSE);
     // FIN HPC_201601_ASO
     bProcesar.Enabled:=true;
end;
// Inicio: SPP_201408_ASO
// INICIO HPC_201601_ASO
// DECLARA PROCEDURE
procedure TfGeneraLote.Buscar(xbImportado : Boolean);
// FIN HPC_201601_ASO
Var xSql : String;
Var xSql2 : String;
Var xSqlWhere :String;
begin
   // INICIO HPC_201601_ASO
   // DIFERENCIA ENTRE LA BUSQUEDA POR FILTRO Y LOS DATOS INGRESADOS POR EXCEL
   IF xbImportado THEN BEGIN
// Inicio: HPC_201607_ASO
// Se modifica el Qry de busqueda de asociados segun los nuevos filtros
// añadidos      
      xSql := ' WITH UNIVERSO AS '
            + ' (SELECT A.ASOID '
            + '        ,A.ASODNI '
            + '        ,A.ASOCODMOD '
            + '        ,A.ZIPID '
            + '        ,A.ASODSTLABID '
            + '        ,A.ASOAPEPATDNI '
            + '        ,A.ASOAPEMATDNI '
            + '        ,A.ASONOMDNI '
            + '        ,A.AUTDESAPO '
            + '        ,A.ASOTIPID '
            + '        ,A.REGPENID '
            + '        ,A.CENEDUID '
            + '    FROM (SELECT DISTINCT ASOID FROM ASO_IMP_EXCEL_GTT WHERE 1 = 1) AA, APO201 A '
            + '   WHERE AA.ASOID = A.ASOID '
            + '   UNION ALL '
            + '  SELECT N.ASOID '
            + '        ,N.ASODNI '
            + '        ,N.ASOCODMOD '
            + '        ,N.ZIPID '
            + '        ,N.ASODSTLABID '
            + '        ,N.ASOAPEPATDNI '
            + '        ,N.ASOAPEMATDNI '
            + '        ,N.ASONOMDNI '
            + '        ,N.AUTDESAPO '
            + '        ,N.ASOTIPID '
            + '        ,N.REGPENID '
            + '        ,N.CENEDUID '
            + '   FROM (SELECT DISTINCT ASOID FROM ASO_IMP_EXCEL_GTT WHERE 1 = 1) AA, ASO_NUE_CLI N '
            + '  WHERE AA.ASOID = N.ASOID '
            + '    AND NOT EXISTS (SELECT ASOID FROM APO201 WHERE ASOID = N.ASOID)) '
            + ' SELECT MAESTRO.ASOID '
			      + '       ,MAESTRO.ASODNI '
			      + ' 			,MAESTRO.ASOCODMOD '
			      + '	  		,MAESTRO.ZIPID '
			      + '				,DEPA.DPTODES DEPA '
			      + '				,PROVA.CIUDDES PROVA '
			      + '				,DISA.ZIPABR DISA '
			      + '				,CEN.UBIGEO_DIR '
			      + '				,DEPC.DPTODES DEPC '
			      + '				,PROVC.CIUDDES PROVC '
			      + '				,DISC.ZIPABR DISC '
			      + '				,MAESTRO.CENEDUID '
			      + '				,CEN.NOMCENEDU || '' ('' || NIVEL.NIVEDU_DES || '')'' NIVEL_CE '
			      + '				,MAESTRO.ASOAPEPATDNI '
			      + '				,MAESTRO.ASOAPEMATDNI '
			      + '				,MAESTRO.ASONOMDNI '
			      + '				,CASE WHEN NVL(MAESTRO.AUTDESAPO ,''N'') = ''N'' THEN ''N'' ELSE ''S'' END AUTDESAPO '
			      + '				,MAESTRO.ASOTIPID '
			      + '				,I.DNI '
			      + '				,I.FECEXP '
			      + '				,I.FECEMIDOC '
			      + '				,REGPEN.REGPENABR '
			      + '				,PADRON.LIQUIDO '
			      + '				,PADRON.HABER '
			      + '				,CASE WHEN NVL(PADRON.LIQUIDO, 0) <> 0 THEN ROUND((PADRON.LIQUIDO * 100) / PADRON.HABER ,2) || ''%'' END PORLIQUI '
			      + '				,VAL.FECVAL '
			      + '				,(CASE WHEN TRUNC(I.FECEXP, ''YYYY'') < TRUNC(SYSDATE ,''YYYY'') THEN ''CADUCO'' '
			      + '					     WHEN TRUNC(I.FECEMIDOC, ''YYYY'') < TO_DATE(''01/01/2008'' ,''DD/MM/YYYY'') THEN '
			      + '						        CASE WHEN EXTRACT(YEAR FROM NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE) ,I.FECEMIDOC), ''month'')) >= 6 THEN ''CADUCO'' END '
			      + '					     WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'', ''DD/MM/YYYY'') THEN '
			      + '	         					CASE WHEN EXTRACT(YEAR FROM NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month'')) >= 8 THEN ''CADUCO'' END '
			      + '	  			 END) ESTDNI '
			      + '		FROM UNIVERSO MAESTRO '
			      + '	  LEFT JOIN (SELECT R.DNI '
			      + '										 ,R.FECACT '
			      + '										 ,R.FECEMIDOC '
			      + '										 ,R.FECEXP '
			      + '										 ,ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK '
			      + '								 FROM UNIVERSO UU, INF_RENIEC_CAP R '
            + '               WHERE UU.ASODNI = R.DNI ) I ON MAESTRO.ASODNI = I.DNI AND I.DRK = 1 '
			      + '		LEFT JOIN (SELECT P.HABER '
			      + '										 ,P.LIQUIDO '
			      + '										 ,P.ASODNI '
			      + '										 ,P.FECREG '
			      + '										 ,ROW_NUMBER() OVER(PARTITION BY P.ASODNI ORDER BY P.ASODNI, FECREG DESC) DRK3 '
			      + '								 FROM UNIVERSO UU, ASO_PAD_HIS P '
            + '               WHERE UU.ASODNI = P.ASODNI ) PADRON ON PADRON.ASODNI = MAESTRO.ASODNI AND PADRON.DRK3 = 1 '
			      + '		LEFT JOIN APO105 REGPEN ON REGPEN.REGPENID = MAESTRO.REGPENID '
			      + '		LEFT JOIN (SELECT V.ASOID '
			      + '										 ,V.FECVAL '
			      + '										 ,ROW_NUMBER() OVER(PARTITION BY ASOID ORDER BY ASOID, FECVAL DESC) DRK2 '
			      + '								 FROM VAL_DAT_ASO V) VAL ON VAL.ASOID = MAESTRO.ASOID AND VAL.DRK2 = 1 '
			      + '		LEFT JOIN APO158 DEPA ON DEPA.DPTOID = SUBSTR(MAESTRO.ZIPID,1,2) '
			      + '		LEFT JOIN APO123 PROVA ON PROVA.DPTOID = SUBSTR(MAESTRO.ZIPID,1,2) AND PROVA.CIUDID = SUBSTR(MAESTRO.ZIPID,1,4) '
			      + '		LEFT JOIN APO122 DISA ON DISA.DPTOID = SUBSTR(MAESTRO.ZIPID,1,2) AND DISA.CIUDID = SUBSTR(MAESTRO.ZIPID,1,4) AND DISA.ZIPID = MAESTRO.ZIPID '
			      + '		LEFT JOIN ASO_CEN_EDU CEN ON CEN.CENEDUID = MAESTRO.CENEDUID '
			      + '		LEFT JOIN APO158 DEPC ON DEPC.DPTOID = SUBSTR(CEN.UBIGEO_DIR,1,2) '
			      + '		LEFT JOIN APO123 PROVC ON PROVC.DPTOID = SUBSTR(CEN.UBIGEO_DIR,1,2) AND PROVC.CIUDID = SUBSTR(CEN.UBIGEO_DIR,1,4) '
			      + '		LEFT JOIN APO122 DISC ON DISC.DPTOID = SUBSTR(CEN.UBIGEO_DIR,1 ,2) AND DISC.CIUDID = SUBSTR(CEN.UBIGEO_DIR,1,4) AND DISC.ZIPID = CEN.UBIGEO_DIR '
			      + '		LEFT JOIN NIV_CEN_EDU NIVEL ON CEN.NIVEDU_ID = NIVEL.NIVEDU_ID ';
   END
   ELSE
   BEGIN
      // FIN HPC_201601_ASO
      if dblcTipoAso.Text='-SELECCIONE-' then
      begin
         MessageDlg(' Debe seleccionar el Tipo de Asociado..!!!!', mtError, [mbOk], 0);
         exit;
      end;
      // Inicio: HPC_201606_ASO
      // //--Inicio: SPP_201406_ASO
      // xSql:=' SELECT MAESTRO.ASOID,'
      // +'        MAESTRO.ASODNI,'
      // +'        MAESTRO.ASOCODMOD,'
      // +'        MAESTRO.ZIPID,'
      // +'        DEPA.DPTODES DEPA,'
      // +'        PROVA.CIUDDES PROVA,'
      // +'        DISA.ZIPABR DISA,'
      // +'        CEN.UBIGEO_DIR,'
      // +'        DEPC.DPTODES DEPC,'
      // +'        PROVC.CIUDDES PROVC,'
      // +'        DISC.ZIPABR DISC,'
      // +'        MAESTRO.CENEDUID,'
      // +'        CEN.NOMCENEDU || '' ('' || NIVEL.NIVEDU_DES || '')'' NIVEL_CE,'
      // +'        MAESTRO.ASOAPEPATDNI,'
      // +'        MAESTRO.ASOAPEMATDNI,'
      // +'        MAESTRO.ASONOMDNI,'
      // +'        CASE WHEN NVL(MAESTRO.AUTDESAPO,''N'')=''N'' THEN ''N'' ELSE ''S'' END AUTDESAPO,'
      // +'        MAESTRO.ASOTIPID,'
      // +'        I.DNI,'
      // +'        I.FECEXP,'
      // +'        I.FECEMIDOC,'
      // +'        REGPEN.REGPENABR,'
      // +'        PADRON.LIQUIDO,'
      // +'        PADRON.HABER,'
      // +'        CASE WHEN NVL(PADRON.LIQUIDO,0)<>0 THEN ROUND((PADRON.LIQUIDO*100)/PADRON.HABER,2)||''%'' END PORLIQUI,'
      // +'        VAL.FECVAL,'
      // +'        (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
      // +'             WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN '
      // +'                  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
      // +'             WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
      // +'                  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
      // +'             END ) ESTDNI            '
      // +'   FROM (SELECT A.ASOID,'
      // +'                A.ASODNI,'
      // +'                A.ASOCODMOD,               '
      // +'                A.ZIPID,'
      // +'                A.ASODSTLABID,'
      // +'                A.ASOAPEPATDNI,'
      // +'                A.ASOAPEMATDNI,'
      // +'                A.ASONOMDNI,'
      // +'                A.AUTDESAPO,'
      // +'                A.ASOTIPID,'
      // +'                A.REGPENID,'
      // +'                A.CENEDUID'
      // +'           FROM APO201 A'
      // +'          WHERE A.FALLECIDO = ''N'''
      // +'         UNION ALL'
      // +'         SELECT N.ASOID,'
      // +'                N.ASODNI,'
      // +'                N.ASOCODMOD,'
      // +'                N.ZIPID,'
      // +'                N.ASODSTLABID,'
      // +'                N.ASOAPEPATDNI,'
      // +'                N.ASOAPEMATDNI,'
      // +'                N.ASONOMDNI,'
      // +'                N.AUTDESAPO,'
      // +'                N.ASOTIPID,'
      // +'                N.REGPENID,'
      // +'                N.CENEDUID'
      // +'           FROM ASO_NUE_CLI N'
      // +'          WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO'  ;
      // xSql2:='  INNER JOIN (SELECT R.DNI,'
      // +'                     R.FECACT,'
      // +'                     R.FECEMIDOC,'
      // +'                     R.FECEXP,'
      // +'                     ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK'
      // +'                FROM INF_RENIEC_CAP R ) I'
      // +'     ON MAESTRO.ASODNI = I.DNI  AND I.DRK = 1   '
      // +'  LEFT JOIN (SELECT  P.HABER,'
      // +'                      P.LIQUIDO,'
      // +'                      P.ASODNI,'
      // +'                      P.FECREG,'
      // +'                      ROW_NUMBER() OVER (PARTITION BY ASODNI ORDER BY ASODNI,FECREG DESC ) DRK3                     '
      // +'                FROM ASO_PAD_HIS P ) PADRON   '
      // +'     ON PADRON.ASODNI=MAESTRO.ASODNI  AND PADRON.DRK3=1    '
      // +'  LEFT JOIN apo105 REGPEN ON REGPEN.REGPENID=MAESTRO.REGPENID '
      // +'  LEFT JOIN (SELECT V.ASOID,'
      // +'                     V.FECVAL,'
      // +'                     ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY ASOID,FECVAL DESC) DRK2      '
      // +'                FROM VAL_DAT_ASO V ) VAL ON VAL.ASOID=MAESTRO.ASOID AND  VAL.DRK2=1'
      // +'  LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2)'
      // +'  LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND PROVA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4)'
      // +'  LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND DISA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4) AND DISA.ZIPID=MAESTRO.ZIPID'
      // +'  LEFT JOIN ASO_CEN_EDU CEN  ON CEN.CENEDUID = MAESTRO.CENEDUID '
      // +'  LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) '
      // +'  LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND PROVC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4)'
      // +'  LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND DISC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4) AND DISC.ZIPID=CEN.UBIGEO_DIR'
      // +'  LEFT JOIN NIV_CEN_EDU NIVEL ON CEN.NIVEDU_ID=NIVEL.NIVEDU_ID '
      // +'  WHERE  (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
      // +'             WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN '
      // +'                  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
      // +'             WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
      // +'                  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
      // +'             END)=''CADUCO''' ;
      xSql:= 'SELECT ASOAPTSER, ASOID, ASODNI, ASOCODMOD, ZIPID, DEPA, PROVA, DISA, UBIGEO_DIR, DEPC, PROVC, DISC, CENEDUID, NIVEL_CE, ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI,'
      +' AUTDESAPO, ASOTIPID, DNI_RENIEC, DNI_FECEXP, DNI_FECEMIDOC, REGPENABR, LIQUIDO, HABER, PORLIQUI, FECVAL, ESTDNI FROM ('
      +'(SELECT MAESTRO.ASOAPTSER, MAESTRO.ASOID, MAESTRO.ASODNI, MAESTRO.ASOCODMOD, MAESTRO.ZIPID, DEPA.DPTODES DEPA, PROVA.CIUDDES PROVA, DISA.ZIPABR DISA, CEN.UBIGEO_DIR,'
      +' DEPC.DPTODES DEPC, PROVC.CIUDDES PROVC, DISC.ZIPABR DISC, MAESTRO.CENEDUID, CEN.NOMCENEDU || '' ('' || NIVEL.NIVEDU_DES || '')'' NIVEL_CE, MAESTRO.ASOAPEPATDNI,'
      +' MAESTRO.ASOAPEMATDNI, MAESTRO.ASONOMDNI, CASE WHEN NVL(MAESTRO.AUTDESAPO,''N'')=''N'' THEN ''N'' ELSE ''S'' END AUTDESAPO, MAESTRO.ASOTIPID, I.DNI DNI_RENIEC,'
      +' I.FECEXP DNI_FECEXP, I.FECEMIDOC DNI_FECEMIDOC, REGPEN.REGPENABR, PADRON.LIQUIDO, PADRON.HABER,'
      +' CASE WHEN NVL(PADRON.LIQUIDO,0) <> 0 THEN ROUND((PADRON.LIQUIDO*100)/PADRON.HABER,2)||''%'' END PORLIQUI, VAL.FECVAL,'
      +' (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'' WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
      +' CASE WHEN EXTRACT(YEAR FROM NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
      +' CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END END) ESTDNI'
      +' FROM (SELECT A.ASOAPTSER, A.ASOID, A.ASODNI, A.ASOCODMOD, A.ZIPID, A.ASODSTLABID, A.ASOAPEPATDNI, A.ASOAPEMATDNI, A.ASONOMDNI, A.AUTDESAPO, A.ASOTIPID, A.REGPENID, A.CENEDUID FROM APO201 A WHERE A.FALLECIDO = ''N'' UNION ALL'
      +' SELECT N.ASOAPTSER, N.ASOID, N.ASODNI, N.ASOCODMOD, N.ZIPID, N.ASODSTLABID, N.ASOAPEPATDNI, N.ASOAPEMATDNI, N.ASONOMDNI, N.AUTDESAPO, N.ASOTIPID, N.REGPENID, N.CENEDUID FROM ASO_NUE_CLI N'
      +' WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO'
      +' LEFT JOIN (SELECT DNI, FECACT, FECEMIDOC, FECEXP FROM (SELECT DNI, FECACT, FECEMIDOC, FECEXP, ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK FROM INF_RENIEC_CAP) WHERE DRK = 1) I ON MAESTRO.ASODNI = I.DNI'
      +' LEFT JOIN (SELECT P.HABER, P.LIQUIDO, P.ASODNI, P.FECREG, ROW_NUMBER() OVER (PARTITION BY ASODNI ORDER BY ASODNI,FECREG DESC ) DRK3 FROM ASO_PAD_HIS P) PADRON ON PADRON.ASODNI=MAESTRO.ASODNI  AND PADRON.DRK3=1'
      +' LEFT JOIN APO105 REGPEN ON REGPEN.REGPENID=MAESTRO.REGPENID'
      +' LEFT JOIN (SELECT V.ASOID, V.FECVAL, ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY ASOID,FECVAL DESC) DRK2 FROM VAL_DAT_ASO V) VAL ON VAL.ASOID=MAESTRO.ASOID AND  VAL.DRK2=1'
      +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2)'
      +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND PROVA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4)'
      +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND DISA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4) AND DISA.ZIPID=MAESTRO.ZIPID'
      +' LEFT JOIN ASO_CEN_EDU CEN ON CEN.CENEDUID = MAESTRO.CENEDUID'
      +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2)'
      +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND PROVC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4)'
      +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND DISC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4) AND DISC.ZIPID=CEN.UBIGEO_DIR'
      +' LEFT JOIN NIV_CEN_EDU NIVEL ON CEN.NIVEDU_ID=NIVEL.NIVEDU_ID))';
      If Trim(dblcTipoAso.Text) <> '' then
         xSqlWhere := ' WHERE ASOTIPID='+QuotedStr(dblcTipoAso.Text);
      // Fin: HPC_201606_ASO

      //--Condicionales--//
      if  rbDomicilio.Checked= true then
      begin
         if dblcdcoddep.Text<>'' then
            xSqlWhere := xSqlWhere + ' AND SUBSTR(ZIPID, 1,2) = '+QuotedStr(dblcdcoddep.Text);
         if dblcdcodpro.Text<>'' then
            xSqlWhere:= xSqlWhere +' AND SUBSTR(ZIPID, 1,4) = '+QuotedStr(dblcdcodpro.Text);
         if dblcdcoddis.Text<>'' then
            xSqlWhere:= xSqlWhere +' AND ZIPID = '+QuotedStr(dblcdcoddis.Text);
      end;

      if rbColegio.Checked=true then
      begin
         if dblcdcoddep.Text<>'' then
            xSqlWhere:= xSqlWhere + ' AND SUBSTR(UBIGEO_DIR,1,2) = '+QuotedStr(dblcdcoddep.Text);
         if dblcdcodpro.Text<>'' then
            xSqlWhere:= xSqlWhere +' AND SUBSTR(UBIGEO_DIR,1,4) = '+QuotedStr(dblcdcodpro.Text);
         if dblcdcoddis.Text<>'' then
            xSqlWhere:= xSqlWhere +' AND UBIGEO_DIR = '+QuotedStr(dblcdcoddis.Text);
         if dblcdColegio.Text<>'' then
            xSqlWhere:= xSqlWhere +' AND MAESTRO.CENEDUID='+QuotedStr(mdesColegio.Text);
      end;

      // Inicio: HPC_201606_ASO
      // if dblcTipoAso.Text<>'' then
      // begin
      //   xSqlWhere:= xSqlWhere+' AND MAESTRO.ASOTIPID='+QuotedStr(dblcTipoAso.Text);
      //end;
      // Fin: HPC_201606_ASO

      if dblcCreVigente.Text<>'' then
      begin
         if dblcCreVigente.Text='1' then
            xSqlWhere:=xSqlWhere+' AND EXISTS (SELECT 1 FROM CRE301 C WHERE C.CREESTID IN (''01'',''02'') AND C.ASOID=MAESTRO.ASOID)';
         if dblcCreVigente.Text='2'  then
            xSqlWhere:=xSqlWhere+' AND NOT EXISTS (SELECT 1 FROM CRE301 C WHERE C.CREESTID IN (''01'',''02'') AND C.ASOID=MAESTRO.ASOID)';
      end;

      if dblcFirmo.text<>'' then
      begin
         if dblcFirmo.Text='1' then
            xSqlWhere:=xSqlWhere+' AND NVL(AUTDESAPO,''N'')=''S''';
         if dblcFirmo.Text='2' then
            xSqlWhere:=xSqlWhere+' AND NVL(AUTDESAPO,''N'')=''N''';
      end;

      if dblcRegPension.Text<>'' then
      begin
         if dblcRegPension.Text<>'-TODOS-' then
         begin
            xSqlWhere:=xSqlWhere+' AND REGPENID='+QuotedStr(dblcRegPension.Text);
         end;
      end;

      if rbMenor50.Checked=true then
      begin
         xSqlWhere:=xSqlWhere+' AND (CASE WHEN NVL(LIQUIDO,0)<>0 THEN ROUND((LIQUIDO*100)/HABER,2) END)<50';
      end;

      if rbMayor50.Checked=true then
      begin
         xSqlWhere:=xSqlWhere+' AND (CASE WHEN NVL(LIQUIDO,0)<>0 THEN ROUND((LIQUIDO*100)/HABER,2) END)>=50';
      end;

      if chkFechas.Checked=true then
      begin
         if  isFechasValidas then
         begin
            xSqlWhere:=xSqlWhere+' AND FECVAL BETWEEN TO_DATE('+ QuotedStr(DateToStr(dtpInicio.Date))  +',''DD/MM/YYYY'') AND TO_DATE('+ QuotedStr(DateToStr(dtpFin.Date))+',''DD/MM/YYYY'')';
         end
      else
      begin
         ShowMessage('Seleccione una Fecha Valida..!!!!');
         exit;
      end;
   end;

   // Inicio : HPC_201602_ASO
   // ¿Existe ubigeo de domicilio?
   // 0 - Si
   // 1 - No
   // 2 - Todos
   If cbUbigeo.ItemIndex = 0 Then
   Begin
      xSqlWhere := xSqlWhere+' AND NVL(LENGTH(TRIM(ZIPID)),0) = 6 ';
   End;
   If cbUbigeo.ItemIndex = 1 Then
   Begin
      xSqlWhere := xSqlWhere+' AND NVL(LENGTH(TRIM(ZIPID)),0) <> 6 ';
   End;

   // ¿Existe en RENIEC?
   // 0 - SI-CADUCO
   // 1 - SI-NO CADUCO
   // 2 - NO RECNIEC
   // 3 - TODOS
   If cbReniec.ItemIndex = 0 Then
      xSqlWhere := xSqlWhere +  ' AND ESTDNI = '+QuotedStr('CADUCO')+' ';
   If cbReniec.ItemIndex = 1 Then
      xSqlWhere := xSqlWhere +  ' AND DNI_FECEMIDOC IS NOT NULL AND ESTDNI IS NULL ';
   If cbReniec.ItemIndex = 2 Then
      xSqlWhere := xSqlWhere +  ' AND DNI_FECEMIDOC IS NULL ';
   // ¿Es aportante regular?
   // 0 - SI
   // 1 - NO
   // 2 - TODOS
   If cbAportante.ItemIndex = 0 Then
      xSqlWhere := xSqlWhere +  ' AND ASOAPTSER = ''S'' ';
   If cbAportante.ItemIndex = 1 Then
      xSqlWhere := xSqlWhere +  ' AND ASOAPTSER = ''N'' ';
   // Inicio : HPC_201602_ASO
// Fin: HPC_201607_ASO
         //--llenar la Grilla--//
         xSql:=xSql+xSql2+xSqlWhere;
   // INICIO HPC_201601_ASO
   // FIN DE CONDICIONAL
   END;
   // FIN HPC_201601_ASO
         Screen.Cursor := crHourGlass;
         DM1.cdsConsulta1.Close;
         DM1.cdsConsulta1.DataRequest(xSql);
         DM1.cdsConsulta1.Open;
         dtgConsultaDatos.DataSource := DM1.dsConsulta1;
         lblContador.Caption := IntToStr(DM1.cdsConsulta1.RecordCount) + ' Registros ';

         dtgConsultaDatos.Selected.Clear;
         //dtgConsultaDatos.Selected.Add('ROWNUM'#9'5'#9'Numero'#9#9);
         dtgConsultaDatos.Selected.Add('ASODNI'#9'10'#9'DNI'#9#9);
         dtgConsultaDatos.Selected.Add('ASOCODMOD'#9'10'#9'Cod. Modular'#9#9);
         dtgConsultaDatos.Selected.Add('ASOAPEPATDNI'#9'10'#9'Ape. Pat'#9#9);
         dtgConsultaDatos.Selected.Add('ASOAPEMATDNI'#9'10'#9'Ape. Mat'#9#9);
         dtgConsultaDatos.Selected.Add('ASONOMDNI'#9'10'#9'Nombres'#9#9);
         dtgConsultaDatos.Selected.Add('DEPA'#9'15'#9'Departamento'#9#9);
         dtgConsultaDatos.Selected.Add('PROVA'#9'15'#9'Provincia'#9#9);
         dtgConsultaDatos.Selected.Add('DISA'#9'15'#9'Distrito'#9#9);
         dtgConsultaDatos.Selected.Add('DEPC'#9'15'#9'Departamento'#9'F'#9'COLEGIO');
         dtgConsultaDatos.Selected.Add('PROVC'#9'15'#9'Provincia'#9'F'#9'COLEGIO');
         dtgConsultaDatos.Selected.Add('DISC'#9'15'#9'Distrito'#9'F'#9'COLEGIO');
         dtgConsultaDatos.Selected.Add('NIVEL_CE'#9'18'#9'Centro Educativo'#9'F'#9'COLEGIO');
         dtgConsultaDatos.Selected.Add('AUTDESAPO'#9'12'#9'CADAPS'#9#9);
         dtgConsultaDatos.Selected.Add('ASOTIPID'#9'12'#9'Tipo'#9#9);
         dtgConsultaDatos.Selected.Add('FECEMIDOC'#9'12'#9'Fec. EmiDoc'#9#9);
         dtgConsultaDatos.Selected.Add('REGPENABR'#9'12'#9'Reg. Pensión'#9#9);
         dtgConsultaDatos.Selected.Add('PORLIQUI'#9'12'#9'Liquidez(%)'#9#9);
         dtgConsultaDatos.Selected.Add('FECVAL'#9'16'#9'Fec. Ult. Actualiz.'#9#9);
         dtgConsultaDatos.Selected.Add('ESTDNI'#9'12'#9'Estado DNI'#9#9);
         dtgConsultaDatos.ApplySelected;
         Screen.Cursor := crDefault;
end;

procedure TfGeneraLote.InicializaGrilla;
Var xSql :String;
Var xSql2 :String;
begin
   xSql:=' SELECT MAESTRO.ASOID,'
+'        MAESTRO.ASODNI,'
+'        MAESTRO.ASOCODMOD,'
+'        MAESTRO.ZIPID,'
+'        DEPA.DPTODES DEPA,'
+'        PROVA.CIUDDES PROVA,'
+'        DISA.ZIPABR DISA,'
+'        MAESTRO.ASODSTLABID,'
+'        DEPC.DPTODES DEPC,'
+'        PROVC.CIUDDES PROVC,'
+'        DISC.ZIPABR DISC,'
+'        MAESTRO.CENEDUID,'
+'        CEN.NOMCENEDU || '' ('' || NIVEL.NIVEDU_DES || '')'' NIVEL_CE,'
+'        MAESTRO.ASOAPEPATDNI,'
+'        MAESTRO.ASOAPEMATDNI,'
+'        MAESTRO.ASONOMDNI,'
+'        CASE WHEN NVL(MAESTRO.AUTDESAPO,''N'')=''N'' THEN ''N'' ELSE ''S'' END AUTDESAPO,'
+'        MAESTRO.ASOTIPID,'
+'        I.DNI,'
+'        I.FECEXP,'
+'        I.FECEMIDOC,'
+'        REGPEN.REGPENABR,'
+'        PADRON.LIQUIDO,'
+'        PADRON.HABER,'
+'        CASE WHEN NVL(PADRON.LIQUIDO,0)<>0 THEN ROUND((PADRON.LIQUIDO*100)/PADRON.HABER,2)||''%'' END PORLIQUI,'
+'        VAL.FECVAL,'
+'        (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
+'             WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN '
+'                  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
+'             WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
+'                  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
+'             END ) ESTDNI            '
+'   FROM (SELECT A.ASOID,'
+'                A.ASODNI,'
+'                A.ASOCODMOD,               '
+'                A.ZIPID,'
+'                A.ASODSTLABID,'
+'                A.ASOAPEPATDNI,'
+'                A.ASOAPEMATDNI,'
+'                A.ASONOMDNI,'
+'                A.AUTDESAPO,'
+'                A.ASOTIPID,'
+'                A.REGPENID,'
+'                A.CENEDUID'
+'           FROM APO201 A'
+'          WHERE A.FALLECIDO = ''N'''
+'         UNION ALL'
+'         SELECT N.ASOID,'
+'                N.ASODNI,'
+'                N.ASOCODMOD,'
+'                N.ZIPID,'
+'                N.ASODSTLABID,'
+'                N.ASOAPEPATDNI,'
+'                N.ASOAPEMATDNI,'
+'                N.ASONOMDNI,'
+'                N.AUTDESAPO,'
+'                N.ASOTIPID,'
+'                N.REGPENID,'
+'                N.CENEDUID'
+'           FROM ASO_NUE_CLI N'
+'          WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO'  ;

xSql2:='  INNER JOIN (SELECT R.DNI,'
+'                     R.FECACT,'
+'                     R.FECEMIDOC,'
+'                     R.FECEXP,'
+'                     ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK'
+'                FROM INF_RENIEC_CAP R ) I'
+'     ON MAESTRO.ASODNI = I.DNI  AND I.DRK = 1   '
+'  LEFT JOIN (SELECT  P.HABER,'
+'                      P.LIQUIDO,'
+'                      P.ASODNI,'
+'                      P.FECREG,'
+'                      ROW_NUMBER() OVER (PARTITION BY ASODNI ORDER BY ASODNI,FECREG DESC ) DRK3                     '
+'                FROM ASO_PAD_HIS P ) PADRON   '
+'     ON PADRON.ASODNI=MAESTRO.ASODNI  AND PADRON.DRK3=1    '
+'  LEFT JOIN apo105 REGPEN ON REGPEN.REGPENID=MAESTRO.REGPENID '
+'  LEFT JOIN (SELECT V.ASOID,'
+'                     V.FECVAL,'
+'                     ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY ASOID,FECVAL DESC) DRK2      '
+'                FROM VAL_DAT_ASO V ) VAL ON VAL.ASOID=MAESTRO.ASOID AND  VAL.DRK2=1'
+'  LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2)'
+'  LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND PROVA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4)'
+'  LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND DISA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4) AND DISA.ZIPID=MAESTRO.ZIPID'
+'                                                                                                                                '
+'  LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(MAESTRO.ASODSTLABID,1,2) '
+'  LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(MAESTRO.ASODSTLABID,1,2) AND PROVC.CIUDID=SUBSTR(MAESTRO.ASODSTLABID,1,4)'
+'  LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(MAESTRO.ASODSTLABID,1,2) AND DISC.CIUDID=SUBSTR(MAESTRO.ASODSTLABID,1,4) AND DISC.ZIPID=MAESTRO.ASODSTLABID'
+'  LEFT JOIN ASO_CEN_EDU CEN ON CEN.CENEDUID=MAESTRO.CENEDUID'
+'  LEFT JOIN NIV_CEN_EDU NIVEL ON CEN.NIVEDU_ID=NIVEL.NIVEDU_ID '
+'  WHERE  (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
+'             WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN '
+'                  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
+'             WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
+'                  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
+'             END)=''CADUCO'''  ;

         //--llenar la Grilla--//
         xSql:=xSql+xSql2+' and maestro.asoid=''vacio''';

         Screen.Cursor := crHourGlass;
         DM1.cdsConsulta1.Close;
         DM1.cdsConsulta1.DataRequest(xSql);
         DM1.cdsConsulta1.Open;
         dtgConsultaDatos.DataSource := DM1.dsConsulta1;
         lblContador.Caption := IntToStr(DM1.cdsConsulta1.RecordCount) + ' Registros ';

         dtgConsultaDatos.Selected.Clear;
         //dtgConsultaDatos.Selected.Add('ROWNUM'#9'5'#9'Numero'#9#9);
         dtgConsultaDatos.Selected.Add('ASODNI'#9'10'#9'DNI'#9#9);
         dtgConsultaDatos.Selected.Add('ASOCODMOD'#9'10'#9'Cod. Modular'#9#9);
         dtgConsultaDatos.Selected.Add('ASOAPEPATDNI'#9'10'#9'Ape. Pat'#9#9);
         dtgConsultaDatos.Selected.Add('ASOAPEMATDNI'#9'10'#9'Ape. Mat'#9#9);
         dtgConsultaDatos.Selected.Add('ASONOMDNI'#9'10'#9'Nombres'#9#9);
         dtgConsultaDatos.Selected.Add('DEPA'#9'15'#9'Departamento'#9#9);
         dtgConsultaDatos.Selected.Add('PROVA'#9'15'#9'Provincia'#9#9);
         dtgConsultaDatos.Selected.Add('DISA'#9'15'#9'Distrito'#9#9);
         dtgConsultaDatos.Selected.Add('DEPC'#9'15'#9'Departamento'#9'F'#9'COLEGIO');
         dtgConsultaDatos.Selected.Add('PROVC'#9'15'#9'Provincia'#9'F'#9'COLEGIO');
         dtgConsultaDatos.Selected.Add('DISC'#9'15'#9'Distrito'#9'F'#9'COLEGIO');
         dtgConsultaDatos.Selected.Add('NIVEL_CE'#9'18'#9'Centro Educativo'#9'F'#9'COLEGIO');
         dtgConsultaDatos.Selected.Add('AUTDESAPO'#9'12'#9'CADAPS'#9#9);
         dtgConsultaDatos.Selected.Add('ASOTIPID'#9'12'#9'Tipo'#9#9);
         dtgConsultaDatos.Selected.Add('FECEMIDOC'#9'12'#9'Fec. EmiDoc'#9#9);
         dtgConsultaDatos.Selected.Add('REGPENABR'#9'12'#9'Reg. Pensión'#9#9);
         dtgConsultaDatos.Selected.Add('PORLIQUI'#9'12'#9'Liquidez(%)'#9#9);
         dtgConsultaDatos.Selected.Add('FECVAL'#9'16'#9'Fec. Ult. Actualiz.'#9#9);
         dtgConsultaDatos.Selected.Add('ESTDNI'#9'12'#9'Estado DNI'#9#9);
         dtgConsultaDatos.ApplySelected;
         Screen.Cursor := crDefault;
end;
// Fin: SPP_201408_ASO
procedure TfGeneraLote.chkFechasClick(Sender: TObject);
begin
     if chkFechas.Checked =true then
     begin
        dtpInicio.Enabled:=true;
        dtpFin.Enabled:=true;
     end
     else
     begin
        dtpInicio.Enabled:=false;
        dtpFin.Enabled:=false;
     end;
end;

procedure TfGeneraLote.bProcesarClick(Sender: TObject);
Var xSql :String;
Var xliqui :  String; 
Var xFecIni : String;
Var xFecFin : String;
Var xTipoUbi :String;
Var xAsoId :String;
Var xAsoDni :String;
Var xCodCab : Integer;
Var xCodDet : Integer;
Var xDni : String;
Var xAsoApePat :String;
Var xAsoApeMat :String;
Var xAsoNombres :String;
Var xPorLiqui :String;
Var xAsoCodMod :String;
// Inicio: HPC_201607_ASO
// Variable para contabilizar la cantidad de registros
Var nReg:Integer;
// Fin: HPC_201607_ASO
begin
     //Validacion de fecha de ejecucion
     If dm1.verificahorario = False Then
     Begin
        MessageDlg('Horario no permitido para la ejecución de este proceso', mtError, [mbOk], 0);
        Exit;
     End; 

     //Validacion
       If dtgConsultaDatos.DataSource.DataSet.RecordCount = 0 Then
        Begin
            MessageDlg(' No Existen Datos Para Procesar..!!!!', mtError, [mbOk], 0);
            Exit;
        End;

        //Se valida que la oficina sea la sede central
        If Copy(DM1.CrgArea(DM1.wUsuario), 4, 2) <> '01' Then
        Begin
                ShowMessage('Actualización de Reniec solo se realiza en la Sede Central....');
                Exit;
        End;

        //Valida que no haya un lote pendiente
        xSql := ' SELECT COUNT (C.ESTLOT) CONT,C.CODCAB FROM ASO_CAPT_RENIEC_CAB C WHERE C.ESTLOT=1 GROUP BY C.CODCAB';
        DM1.cdsTemp.Close;
        DM1.cdsTemp.DataRequest(xSql);
        DM1.cdsTemp.Open;

        if DM1.cdsTemp.FieldByName('CONT').AsInteger >0 then
        begin
               ShowMessage('Existe un Lote procesando o hay Asociados pendientes de procesar. Lote ['+IntToStr(DM1.cdsTemp.FieldByName('CODCAB').AsInteger)+']');
               Exit;
        end;

      //Transaccion Cabecera
      DM1.DCOM1.AppServer.SOLStartTransaction;
   Try
        if rbDomicilio.Checked=true then
            xTipoUbi:='DOM';
        if rbColegio.Checked=true then
            xTipoUbi:='COL';

        if rbMenor50.Checked=true then
        begin
           xliqui:='<50';
        end;

        if rbMayor50.Checked=true then
        begin
           xliqui:='>=50';
        end;

       if chkFechas.Checked=true then
       begin
            if  isFechasValidas then
            begin
                xFecIni:=QuotedStr(DateToStr(dtpInicio.Date));
                xFecFin:=QuotedStr(DateToStr(dtpFin.Date));
            end;
       end
       else
       begin
           xFecIni:='null';
           xFecFin:='null';
       end;

       //Traer el codigo de tabla correlativo
        xSql := 'SELECT SF_ASO_OBTIENE_CORRELATIVO() CODCAB FROM DUAL';
        DM1.cdsTemp.Close;
        DM1.cdsTemp.DataRequest(xSQL);
        DM1.cdsTemp.Open;
        xCodCab:=DM1.cdsTemp.FieldByName('CODCAB').AsInteger;
        DM1.cdsTemp.Close;

       Screen.Cursor := crHourGlass;
       // Inicio: HPC_201607_ASO 
       // Contando registros a procesar
       nReg := 0;
       DM1.cdsConsulta1.First;
        While Not DM1.cdsConsulta1.Eof Do
        Begin
           If Trim(DM1.cdsConsulta1.FieldByName('ASODNI').AsString) <> '' Then nReg := nReg + 1;
           DM1.cdsConsulta1.Next;
        End;
        DM1.cdsConsulta1.First;
        // Fin: HPC_201607_ASO 

       xSql:='INSERT INTO ASO_CAPT_RENIEC_CAB(CODCAB,TIPUBI,CODDEP,CODPRO,CODDIS,CENEDUID,CREVIG,LIQUID,AUTDESAPO,ASOTIPID,REGPENID,FECINIULTACT,FECFINULTACT,CANREG,ESTREG,'
              +'                   ESTLOT,USUREG,FECREG,USUMOD,FECMOD)'
              +' VALUES('+IntToStr(xCodCab)+','+QuotedStr(xTipoUbi)+','+QuotedStr(dblcdcoddep.Text)+','+QuotedStr(dblcdcodpro.Text)+','+QuotedStr(dblcdcoddis.Text)+','+QuotedStr(mdesColegio.Text)+','+QuotedStr(dblcCreVigente.Text)
              // Inicio: HPC_201607_ASO
              // Se modifica la actualización de la cantidad de registros a procesar
              // +','+QuotedStr(xliqui)+','+QuotedStr(dblcFirmo.Text)+','+QuotedStr(dblcTipoAso.Text)+','+QuotedStr(dblcRegPension.Text)+','+xFecIni+','+xFecFin+','+IntToStr(DM1.cdsConsulta1.RecordCount)+',1,'
              +','+QuotedStr(xliqui)+','+QuotedStr(dblcFirmo.Text)+','+QuotedStr(dblcTipoAso.Text)+','+QuotedStr(dblcRegPension.Text)+','+xFecIni+','+xFecFin+','+IntToStr(nReg)+',1,'
              // Fin: HPC_201607_ASO
              +'                  1,'+QuotedStr(DM1.wUsuario)+',SYSDATE,NULL,NULL)' ;
       DM1.DCOM1.AppServer.EjecutaSql(xSql);
       Screen.Cursor := crDefault;

      //Transaccion Detalle
        Screen.Cursor := crHourGlass;
        DM1.cdsConsulta1.First;

        grbProceso.Visible := True; 
        prbAvance.Position := 0;
        prbAvance.Max := DM1.cdsConsulta1.RecordCount;
        prbAvance.Position := 1;

        While Not DM1.cdsConsulta1.Eof Do
        Begin
            // Inicio: HPC_201607_ASO
            // Se controla la inserción de registros siempre y cuando el registro cuente con DNI
            If Trim(DM1.cdsConsulta1.FieldByName('ASODNI').AsString) <> '' Then
            Begin
               prbAvance.Position := prbAvance.Position + 1;
               xAsoId := DM1.cdsConsulta1.FieldByName('ASOID').AsString;
               xAsoDni:= DM1.cdsConsulta1.FieldByName('ASODNI').AsString;
               xAsoCodMod:= DM1.cdsConsulta1.FieldByName('ASOCODMOD').AsString;
               xPorLiqui:= DM1.cdsConsulta1.FieldByName('PORLIQUI').AsString;
               xSql := 'INSERT INTO ASO_CAPT_RENIEC_DET(CODDET,ASOID,ASODNI,ASOCODMOD,ESTREG,LIQUID,ESTCAPREN,ESTACT,ESTLOTREG,USUREG,FECREG,CODCAB,TIPPRO)'
                    +' VALUES ((SELECT NVL(MAX(CODDET),0)+1 FROM ASO_CAPT_RENIEC_DET),'+QuotedStr(xAsoId)+','+QuotedStr(xAsoDni)+','+QuotedStr(xAsoCodMod)+',1,'+QuotedStr(xPorLiqui)+',1,1,1,'+QuotedStr(DM1.wUsuario)+',SYSDATE,'+IntToStr(xCodCab)+',''L'')';
               DM1.DCOM1.AppServer.EjecutaSql(xSql);
            End;
            // Fin: HPC_201607_ASO
            DM1.cdsConsulta1.Next;
         End;
         prbAvance.Position := 0;
         grbProceso.Visible := False;
         Screen.Cursor := crDefault;
         DM1.DCOM1.AppServer.SOLCommit;
   Except
       DM1.DCOM1.AppServer.SOLRollBack;
       exit;
   End;
     Screen.Cursor := crHourGlass;
    //Captura de Datos de Reniec y Actualizacion de Datos al Maestro
       xSql := ' SELECT D.CODDET,D.ASODNI,MAESTRO.ASOAPEPATDNI, MAESTRO.ASOAPEMATDNI, MAESTRO.ASONOMDNI'
                +'   FROM ASO_CAPT_RENIEC_DET D'
                +'   INNER JOIN (SELECT A.ASOID, A.ASOAPEPATDNI, A.ASOAPEMATDNI, A.ASONOMDNI'
                +'              FROM APO201 A'
                +'              WHERE A.FALLECIDO = ''N'''
                +'              UNION ALL'
                +'              SELECT N.ASOID, N.ASOAPEPATDNI, N.ASOAPEMATDNI, N.ASONOMDNI'
                +'              FROM ASO_NUE_CLI N'
                +'              WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO'
                +' ON MAESTRO.ASOID = D.ASOID'
                +' WHERE D.CODCAB='+IntToStr(xCodCab)+' AND D.ESTCAPREN=1';
       DM1.cdsConsulta2.Close;
       DM1.cdsConsulta2.DataRequest(xSql);
       DM1.cdsConsulta2.Open;

       grbProceso.Visible := True;
       lblPor.Visible := True;
       prbAvance.Position := 0;
       prbAvance.Max := DM1.cdsConsulta2.RecordCount;
       prbAvance.Position := 1;
       // Inicio: HPC_201607_ASO
       // Se valida que solo procese información que cuenta con DNI
       While Not DM1.cdsConsulta2.Eof Do
       Begin
          If Trim(DM1.cdsConsulta2.FieldByName('ASODNI').AsString) <> '' Then
          Begin
             Refresh;
             prbAvance.Position := prbAvance.Position + 1;
             xCodDet:=DM1.cdsConsulta2.FieldByName('CODDET').AsInteger;
             xDni:=trim(DM1.cdsConsulta2.FieldByName('ASODNI').AsString);
             xAsoApePat:=DM1.cdsConsulta2.FieldByName('ASOAPEPATDNI').AsString;
             xAsoApeMat:=DM1.cdsConsulta2.FieldByName('ASOAPEMATDNI').AsString;
             xAsoNombres:=DM1.cdsConsulta2.FieldByName('ASONOMDNI').AsString;
             //Captura de Datos de Reniec
             ActDatReniec(xCodDet, xDni, xAsoApePat, xAsoApeMat, xAsoNombres);
             //borrar foto
             DeleteFile(PChar(xfotoJpg));
             DeleteFile(Pchar(xFirmaTif));
             DeleteFile(Pchar(xFirmaJpg));
             lblPor.Caption := FormatFloat('#,###,###', prbAvance.Position) + '  De  ' + FormatFloat('#,###,###', prbAvance.Max) + '  Registros';
          End;
          DM1.cdsConsulta2.Next;
       End;
       // Fin: HPC_201607_ASO

       prbAvance.Position := 0;
       grbProceso.Visible := False;

       //Actualiza estado de Cabecera
       xSQL := 'SELECT COUNT(*) CONT FROM ASO_CAPT_RENIEC_DET D WHERE D.CODCAB='+IntToStr(xCodCab)+' AND  D.ESTLOTREG=1';
       DM1.cdstemp.Close;
       DM1.cdstemp.DataRequest(xSQL);
       DM1.cdstemp.Open;
       if DM1.cdstemp.FieldByName('CONT').AsInteger = 0 then
       begin
            xSql:='UPDATE ASO_CAPT_RENIEC_CAB C SET C.ESTLOT=2 WHERE C.CODCAB='+IntToStr(xCodCab);
            DM1.DCOM1.AppServer.EjecutaSql(xSql);
       end;
      Screen.Cursor := crDefault;
      //--Inicio: SPP_201406_ASO
      // Inicio: HPC_201607_ASO 
      // Se cambia un mensaje de error, debe ser de información   
      // MessageDlg('Se proceso satisfactoriamente los datos.', mtError, [mbOk], 0);
      // Inicio: HPC_201705_ASO
      // Se añade tilde 
      // MessageDlg('Se proceso satisfactoriamente los datos.', mtInformation, [mbOk], 0);
      MessageDlg('Se procesó satisfactoriamente los datos.', mtInformation, [mbOk], 0);
      // Fin: HPC_201705_ASO

      // Fin: HPC_201607_ASO 
      //--Fin: SPP_201406_ASO
end;

function TfGeneraLote.ActDatReniec(xCodDet: Integer;xAsoDni,xAsoApePat,xAsoApeMat,xAsoNombres: STRING): Boolean;
Var xAsoid, xSolicitud: String;
Var xEstCiv, xrestriccion, xgrains:String;
VAR
dwToken, FindByNameResult: Int64;
lin: integer;
arr: CPersonDataMember2;
Var xSql :String;
// Inicio: HPC_201705_ASO
// Se añaden variables para controlar las fechas que se migran de RENIEC
Var xfecnacimiento, xfecexpiracion, xfecemisiondoc, xfecinscripcion:String;
// Fin: HPC_201705_ASO
Var  xFirma, xFoto :String;
// Inicio: HPC_201607_ASO
// Se añade variable para controlar el usuario RENIEC
var xusuRENIEC  :String;
// Fin: HPC_201607_ASO
BEGIN
   //Validacion de cuota por mes de la captura de datos de Reniec.
    xSql := ' SELECT COUNT(*) CONT FROM INF_RENIEC_CAP R'
                        +' WHERE TO_CHAR(R.FECACT,''MM/YYYY'')= TO_CHAR(SYSDATE,''MM/YYYY'')';
    DM1.cdsConsulta3.Close;
    DM1.cdsConsulta3.DataRequest(xSql);
    DM1.cdsConsulta3.Open;
    xCont:=DM1.cdsConsulta3.FieldByName('CONT').AsInteger;
    if xCont >= xCuota then
    begin
        ShowMessage('Se ha terminado la cuota mensual de Captura de datos a Reniec ..!!!!');
        lblRealizado.Caption:=IntToStr(xCont);
        lblResta.Caption:=IntToStr(xCuota-xCont);
        exit;
    end;

   Try
       ISipObj := GetISIPService(false,K_URL_WEB_SERVICE);
       // Inicio: HPC_201607_ASO 
       // Se adiciona al usuario JRODRIGUEZ como usuario RENIEC
       xusuRENIEC:='JRODRIGUEZ';
       // Reg:=ISipObj.FindByDocument(5,0,DM1.wUsuario,xAsoDni);
       Reg:=ISipObj.FindByDocument(5,0,xusuRENIEC,xAsoDni);
       // Fin: HPC_201607_ASO 


      If Reg.dcResultCode <> '0000' Then
      Begin
         If Trim(Reg.dcResultCode) = '' Then
         begin
              xSql:='UPDATE ASO_CAPT_RENIEC_DET D'
                +' SET D.OBSREG=''Código de error no especificado'' WHERE D.CODDET='+IntToStr(xCodDet) +' AND D.ASODNI='+QuotedStr(xAsoDni);
              DM1.DCOM1.AppServer.EjecutaSql(xSql);
         end
         Else
         begin
// Inicio: SPP_201408_ASO
             xSql:='UPDATE ASO_CAPT_RENIEC_DET D'
                +' SET D.OBSREG='+QuotedStr(Reg.dcResultCode)+','
                +' D.ESTCAPREN=1,'
                +' D.ESTACT=1,'
                +' D.ESTLOTREG=2,'
                +' D.FLGNOM=''E'''
                +' WHERE D.CODDET='+IntToStr(xCodDet) +' AND D.ASODNI='+QuotedStr(xAsoDni);
              DM1.DCOM1.AppServer.EjecutaSql(xSql);
// Fin: SPP_201408_ASO
         end;
         Exit;
      End;
   Except
      Null;
   End;
   
   If Length(Trim(reg.dcLastName1))+Length(Trim(reg.dcLastName2)) = 0 Then
   Begin
      xSql:='UPDATE ASO_CAPT_RENIEC_DET D'
         +' SET D.OBSREG=''DNI no encontrado'' WHERE D.CODDET='+IntToStr(xCodDet) +' AND D.ASODNI='+QuotedStr(xAsoDni);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      result := false;
      exit;
   End;
   // Inicio: HPC_201705_ASO
   // Se actualizan las variables de fechas con información
   // migra de RENIEC
   xfecnacimiento  := Trim(Copy(reg.dcBornDate,7,2)+'/'+Copy(reg.dcBornDate,5,2)+'/'+Copy(reg.dcBornDate,1,4));
   xfecexpiracion  := Trim(Copy(reg.dcExpirationDate,7,2)+'/'+Copy(reg.dcExpirationDate,5,2)+'/'+Copy(reg.dcExpirationDate,1,4));
   xfecemisiondoc  := Trim(Copy(reg.dcExpeditionDate,7,2)+'/'+Copy(reg.dcExpeditionDate,5,2)+'/'+Copy(reg.dcExpeditionDate,1,4));
   xfecinscripcion := Trim(Copy(reg.dcRegisterDate,7,2)+'/'+Copy(reg.dcRegisterDate,5,2)+'/'+Copy(reg.dcRegisterDate,1,4));
   // Fin: HPC_201705_ASO

   //Guarda Captura de Reniec
   If REG.dcGender = '1' Then
   Begin
      xEstCiv := DM1.CrgDescrip('ESTCIVID='+QuotedStr(DM1.StrZero(reg.dcCivilState,2)),'TGE125','ESTCIVDES');
      xSexo := 'M';
   End
   Else
   Begin
      xEstCiv := DM1.CrgDescrip('ESTCIVID='+QuotedStr(DM1.StrZero(reg.dcCivilState,2)),'TGE125','ESTCIVDESFEM');
      xSexo := 'F';
   End;
   xgrains := DM1.CrgDescrip('CODGRAINS='+QuotedStr(reg.dcInstGrade),'ASO_GRA_INS','DESGRAINS');
   If Trim(reg.dcRestrictionCode) = '' Then xrestriccion := 'NINGUNO';
   If reg.dcRestrictionCode = 'A' Then xrestriccion := 'FALLECIMIENTO';
   // Inicio: HPC_201705_ASO
   // Se cambian los campos que provienen de RENIEC por variables creadas con la información de RENIEC.
   // La idea es que no salga error al momento de grabar la información, cuando uno de estos
   // campos lleguen vacios de RENIEC
   xsql := 'INSERT INTO INF_RENIEC_CAP (DNI, APEPAT, APEMAT, NOMBRE, NOMPAD, NOMMAD, FECNAC, ESTATURA,SEXO, ESTCIV,  FECINS,'
   + 'FECEMIDOC, FECACT,OFIACT,EQUUSU, USUACT, LUGNAC, LUGDOM, FECEXP,'
   + 'CODUBIDEPDOM, CODUBIPRODOM, CODUBIDISDOM, DESDEPDOM, DESPRODOM, DESDISDOM,'
   + 'CODUBIDEPNAC, CODUBIPRONAC, CODUBIDISNAC, DESDEPNAC, DESPRONAC, DESDISNAC, APECAS,'
   + 'PRECODDIRECC, PREDESDIRECC, DESDIRECC, NUMDIRECC, DESMANZA, DESLOTE, DESETAPA,'
   + 'PRECODBLOCK, PREDESBLOCK, DESBLOCK, PRECODINTER, PREDESINTER, DESINTER,'
   + 'PRECODURBAN, PREDESURBAN, DESURBAN, CODGRAINS, CODDOCSUS, NUMDOCSUS, FLACONVOT, CODRES, CODESTCIV, OTRDOC, GRAINS, RESTRICCIONES)'
   + ' VALUES ('
   + QuotedStr(Trim(reg.dcDocument))+ ','+ QuotedStr(Trim(reg.dcLastName1))+ ',' + QuotedStr(Trim(reg.dcLastName2))+ ','+ QuotedStr(Trim(reg.dcFirstName))+ ','
   // + QuotedStr(Trim(reg.dcFatherName))+','+QuotedStr(Trim(reg.dcMotherName))+','
   // + QuotedStr(Copy(reg.dcBornDate,7,2)+'/'+Copy(reg.dcBornDate,5,2)+'/'+Copy(reg.dcBornDate,1,4))+ ','
   // + FloatToStrF(reg.dnHeight/100,ffNumber,5,2)+','+QuotedStr(xSexo)+','+ QuotedStr(xEstCiv)+ ','
   // + QuotedStr(Copy(reg.dcRegisterDate,7,2)+'/'+Copy(reg.dcRegisterDate,5,2)+'/'+Copy(reg.dcRegisterDate,1,4))+ ','
   // + QuotedStr(Copy(reg.dcExpeditionDate,7,2)+'/'+Copy(reg.dcExpeditionDate,5,2)+'/'+Copy(reg.dcExpeditionDate,1,4))+','
   // + 'SYSDATE,'
   + QuotedStr(Trim(reg.dcFatherName))+','+QuotedStr(Trim(reg.dcMotherName))+',';
   If Length(xfecnacimiento) <> 10  Then
      xSql :=  xSql + ' null,'
   Else
      xSql :=  xSql + QuotedStr(xfecnacimiento) + ',';
   // + QuotedStr(Copy(reg.dcBornDate,7,2)+'/'+Copy(reg.dcBornDate,5,2)+'/'+Copy(reg.dcBornDate,1,4))+ ','
   xSql := xSql + FloatToStrF(reg.dnHeight/100,ffNumber,5,2)+','+QuotedStr(xSexo)+','+ QuotedStr(xEstCiv)+',';
   If Length(xfecinscripcion) <> 10  Then
      xSql :=  xSql + ' null,'
   Else
      xSql :=  xSql + QuotedStr(xfecinscripcion) + ',';
   // + QuotedStr(Copy(reg.dcRegisterDate,7,2)+'/'+Copy(reg.dcRegisterDate,5,2)+'/'+Copy(reg.dcRegisterDate,1,4))+ ','
   If Length(xfecemisiondoc) <> 10  Then
      xSql :=  xSql + ' null,'
   Else
      xSql :=  xSql + QuotedStr(xfecemisiondoc) + ',';
   // + QuotedStr(Copy(reg.dcExpeditionDate,7,2)+'/'+Copy(reg.dcExpeditionDate,5,2)+'/'+Copy(reg.dcExpeditionDate,1,4))+','
   xSql := xSql + 'SYSDATE,'
   + QuotedStr(Trim(DM1.wofides))+ ','
   + QuotedStr(Trim(DM1.wcomputadora)) + ','
   + QuotedStr(Trim(DM1.wUsuario))+','
   + QuotedStr(Trim(reg.dcBornDepartment)+', '+Trim(reg.dcBornProvince)+', '+Trim(reg.dcBornDistrit))+','
   // + QuotedStr(Trim(reg.dcDepartmentAddress)+', '+Trim(reg.dcProvinceAddress)+', '+Trim(reg.dcDistritAddress))+','
   // + QuotedStr(Copy(reg.dcExpirationDate,7,2)+'/'+Copy(reg.dcExpirationDate,5,2)+'/'+Copy(reg.dcExpirationDate,1,4))+','
   // + QuotedStr(Trim(reg.dcAddDepUbigCode))+', '+QuotedStr(Trim(reg.dcAddProvUbigCode))+', '+QuotedStr(Trim(reg.dcAddDistUbigCode))+','
   + QuotedStr(Trim(reg.dcDepartmentAddress)+', '+Trim(reg.dcProvinceAddress)+', '+Trim(reg.dcDistritAddress))+',';
   // + QuotedStr(Copy(reg.dcExpirationDate,7,2)+'/'+Copy(reg.dcExpirationDate,5,2)+'/'+Copy(reg.dcExpirationDate,1,4))+','
   If Length(xfecexpiracion) <> 10  Then
      xSql :=  xSql + ' null,'
   Else
      xSql :=  xSql + QuotedStr(xfecexpiracion) + ',';
   xSql := xSql + QuotedStr(Trim(reg.dcAddDepUbigCode))+', '+QuotedStr(Trim(reg.dcAddProvUbigCode))+', '+QuotedStr(Trim(reg.dcAddDistUbigCode))+','
   + QuotedStr(Trim(reg.dcDepartmentAddress))+','+QuotedStr(Trim(reg.dcProvinceAddress))+','+QuotedStr(Trim(reg.dcDistritAddress))+','
   + QuotedStr(Trim(reg.dcBornDepartmentUbigCode))+','+QuotedStr(Trim(reg.dcBonrProvinceUbigCode))+','+QuotedStr(Trim(reg.dcBonrDistritUbigCode))+','
   + QuotedStr(Trim(reg.dcBornDepartment))+','+QuotedStr(Trim(reg.dcBornProvince))+','+QuotedStr(Trim(reg.dcBornDistrit))+','+QuotedStr(Trim(reg.dcMerriedName))+','
   + QuotedStr(Trim(reg.dcAddPrefix))+','+QuotedStr(Trim(reg.dcAddPrefixDes))+','+QuotedStr(Trim(reg.dcAddress))+','+QuotedStr(Trim(reg.dcAddressNumber))+','
   + QuotedStr(Trim(reg.dcAddressMz))+','+QuotedStr(Trim(reg.dcAddressLt))+','+QuotedStr(Trim(reg.dcAddressEt))+','
   + QuotedStr(Trim(reg.dcAddressBlockPrefix))+','+QuotedStr(Trim(reg.dcAddressBlockPrefixDes))+','+QuotedStr(Trim(reg.dcAddressBlockPrefixDes))+','
   + QuotedStr(Trim(reg.dcAddressIntPrefix))+','+QuotedStr(Trim(reg.dcAddressIntPrefixDes))+','+QuotedStr(Trim(reg.dcAddressInterior))+','
   + QuotedStr(Trim(reg.dcAddressUrbPrefix))+','+QuotedStr(Trim(reg.dcAddressUrbPrefixDes))+','+QuotedStr(Trim(reg.dcAddressUrb))+','
   + QuotedStr(Trim(reg.dcInstGrade))+','+QuotedStr(Trim(reg.dcAltDocumentType))+','+QuotedStr(Trim(reg.dcAltDocument))+', '
   + QuotedStr(Trim(reg.dcVoteStatus))+','+QuotedStr(Trim(reg.dcRestrictionCode))+', '
   + QuotedStr(reg.dcCivilState)+', '
   + QuotedStr(Trim(reg.dcAltDocument))+', '
   + QuotedStr(xgrains)+', '
   + QuotedStr(reg.dcRestrictionDes)
   + ')';
   // Fin: HPC_201705_ASO
   DM1.DCOM1.AppServer.EjecutaSql(xsql);

   //Guarda foto y firma
   xFirma := '_Fir'+Trim(xAsoDni);
   xFoto  := '_Fot'+Trim(xAsoDni);
   Grabar_Imagen(xFoto, 'JPG', reg.photo);
   Grabar_Imagen(xFirma, 'TIF', reg.Signature);
   With TLinearBitmap.Create do
   Try
      imgFirma.Picture := nil;
      // Inicio: HPC_201705_ASO
      // Se modifican las rutas donde se encuentran los archivos jpg y tif
      // LoadFromFile(xFirma+'.TIF');


      // Se controla error al momento de levantar la imagen
      try
         LoadFromFile('C:\SOLEXES\'+xFirma+'.TIF');
      except
        null;
      end;
      // Fin: HPC_201705_ASO
      AssignTo(imgFirma.Picture.Bitmap);
   Finally
       Free;
   End;
   // -- Graba de TIF a JPG
   With TLinearBitmap.Create do
   Try
      Assign(imgFirma.Picture.Bitmap);
      // Inicio: HPC_201705_ASO
      // Se modifican las rutas donde se encuentran los archivos jpg y tif
      // SaveToFile(xFirma+'.JPG');
      SaveToFile('C:\Solexes\'+xFirma+'.JPG');
      // Fin: HPC_201705_ASO
   Finally
        Free;
   End;
   //guardar ruta
   // Inicio: HPC_201705_ASO
   // Se modifican las rutas donde se encuentran los archivos jpg y tif
   // xfotoJpg:=GetCurrentDir +'\'+ xFoto + '.JPG';
   // xFirmaTif:=GetCurrentDir +'\'+ xFirma+'.TIF';
   // xFirmaJpg:=GetCurrentDir +'\'+ xFirma+'.JPG';
   xfotoJpg  := 'C:\Solexes\'+xFoto+'.JPG';
   xFirmaTif := 'C:\Solexes\'+xFirma+'.TIF';
   xFirmaJpg := 'C:\Solexes\'+xFirma+'.JPG';
   // Fin: HPC_201705_ASO
   CargaMemStreamImg(xAsoDni);
   GrabafotoAtabla(xAsoDni);
   // Inicio: HPC_201607_ASO
   // Actualiza campos zipid y asodir en la maestra de asociados
   actualizadireccionRENIEC(xAsoDni);
   // Fin: HPC_201607_ASO

   //Aqui cambiar el estado del flag de captura de dato a Reniec
    xSql:='UPDATE ASO_CAPT_RENIEC_DET D'
         +' SET D.ESTCAPREN=2 WHERE D.CODDET='+IntToStr(xCodDet) +' AND D.ASODNI='+QuotedStr(xAsoDni);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);

   //Los Apellidos y Nombres deben ser iguales
   If (Trim(xAsoApePat) = TRIM(reg.dcLastName1)) And (Trim(xASoApeMat) = TRIM(reg.dcLastName2)) And (Trim(xAsoNombres) = TRIM(reg.dcFirstName)) Then
   Begin
      ActualizaDatosASociados(xCodDet,xAsoDni);
      result := true;
   end
   else
   begin
      //aqui Cambiar flags de no actualizado,NOMBRE DIFERENTE y  cerrado del registro.
       xSql:='UPDATE ASO_CAPT_RENIEC_DET D'
         +' SET D.ESTACT=1,'
         +' D.FLGNOM=''D'','
         +' D.ESTLOTREG=2 WHERE D.CODDET='+IntToStr(xCodDet) +' AND D.ASODNI='+QuotedStr(xAsoDni);
       DM1.DCOM1.AppServer.EjecutaSql(xSql);
   End
End;

function TfGeneraLote.ActualizaDatosASociados(xCodDet:Integer; xAsoDni:String): Boolean;
Var
xsql, xAsoid, xSolicitud: String;
xEstCiv, xrestriccion, xgrains:String;
xItem : String;
xAsoApeNomDni: String;
wsUbica: WSUbicabilidadSoap;
dir: ASO_UBICA_DIR_HIS;
fecAct: TXSDateTime;
hayRegReniec: boolean;
hayRegPrevioReniec: boolean;
Var xTABLA  :String;
Begin

   DM1.DCOM1.AppServer.SOLStartTransaction;
Try
   //Se actualiza el campo ESTCIVID desde RENIEC solo si el campo esta vacio.
      XSQL := ' SELECT TABLA,ASOID,ASOCODMOD,ESTCIVID FROM ( '
             +' SELECT ''APO201'' TABLA,A.ASOID,A.ASODNI,A.ASOCODMOD,A.ESTCIVID FROM APO201 A  WHERE A.FALLECIDO = ''N'''
             +' UNION ALL'
             +' SELECT ''ASO_NUE_CLI'' TABLA,N.ASOID,N.ASODNI,N.ASOCODMOD,N.ESTCIVID FROM ASO_NUE_CLI N'
             +' WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)'
             +' )T WHERE T.ASODNI='+QuotedStr(xAsoDni);
      DM1.cdstemp.Close;
      DM1.cdstemp.DataRequest(XSQL);
      DM1.cdstemp.Open;
      xTABLA:=DM1.cdstemp.FieldByName('TABLA').AsString;
      xAsoid:=DM1.cdstemp.FieldByName('ASOID').AsString;

   If Length(Trim(DM1.cdstemp.FieldByName('ESTCIVID').AsString)) = 0 Then
   Begin
      // Actualizando en el APO201 o ASO_NUE_CLI
      XSQL := 'UPDATE ' + xTABLA+ ' SET ESTCIVID = ' + QuotedStr(DM1.StrZero(reg.dcCivilState,2))+' WHERE ASOID = '+QuotedStr(xAsoid);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      // Tomando valor para el campo Item
      XSQL := 'SELECT LPAD(MAX(ITEM+1),2,''0'') ITEM FROM APO206 WHERE ASOID = '+QuotedStr(xAsoid);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(XSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('ITEM').AsString = '' Then xItem := '01' Else xItem := DM1.cdsQry.FieldByName('ITEM').AsString;

      // Insertando registro en el APO206
      XSQL := 'INSERT INTO APO206 (ASOID, ASOCODMOD, FREG, HREG, PERIODO, ESTCIVID, USUARIO, ITEM) VALUES ('
      +QuotedStr(DM1.cdsTemp.FieldByName('ASOID').AsString)+','
      +QuotedStr(DM1.cdsTemp.FieldByName('ASOCODMOD').AsString)+', TO_DATE(SYSDATE), SYSDATE, TO_CHAR(SYSDATE,''YYYYMM''),'
      +QuotedStr(DM1.cdsTemp.FieldByName('ESTCIVID').AsString)+','
      +QuotedStr(DM1.wUsuario)+','
      +QuotedStr(xItem)+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   xAsoApeNomDni := '';
   If Trim(reg.dcLastName1) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(reg.dcLastName1)+ ' ';
   If Trim(reg.dcLastName2) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(reg.dcLastName2)+ ' ';
   If Trim(reg.dcMerriedName) <> '' Then xAsoApeNomDni := xAsoApeNomDni + Trim(reg.dcMerriedName) + ' ';
   xAsoApeNomDni := xAsoApeNomDni + Trim(reg.dcFirstName);

   xSQL := 'UPDATE ' + xTABLA
   + ' SET ASOAPEPATDNI = ' + QuotedStr(Trim(reg.dcLastName1))+ ','
   + ' ASOAPEMATDNI = ' + QuotedStr(Trim(reg.dcLastName2))+','
   + ' ASONOMDNI = ' + QuotedStr(Trim(reg.dcFirstName)) + ','
   + ' ASOAPECASDNI = ' + QuotedStr(Trim(reg.dcMerriedName)) + ','
   + ' ASOAPENOMDNI = ' + QuotedStr(xAsoApeNomDni) + ','
   + ' ASOSEXO = ' + QuotedStr(xSexo)+','
   + ' ASODNI = ' + QuotedStr(xAsoDni)+','
   + ' ACTARCREN = ' + QuotedStr('S')+', '
   + ' ASOFECNAC = ' + QuotedStr(Copy(reg.dcBornDate,7,2)+'/'+Copy(reg.dcBornDate,5,2)+'/'+Copy(reg.dcBornDate,1,4))
   + ' WHERE  ASOID = ' + QuotedStr(xasoid);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   //aqui Cambiar flags de actualizado , NOMBRE IGUAL y  cerrado del registro.
    xSql:='UPDATE ASO_CAPT_RENIEC_DET D'
         +' SET D.ESTACT=2,'
         +' D.FLGNOM=''I'','
         +' D.ESTLOTREG=2 WHERE D.CODDET='+IntToStr(xCodDet) +' AND D.ASODNI='+QuotedStr(xAsoDni);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
   
   DM1.DCOM1.AppServer.SOLCommit;
Except
   DM1.DCOM1.AppServer.SOLRollBack;
   exit;
End;

END;

Procedure TfGeneraLote.CargaMemStreamImg(xAsoDni:String);
Begin  
   DM1.Jpg    := Nil;
   DM1.Stream := Nil;
   DM1.jpg    := TJPEGImage.Create;
   DM1.Stream := TMemoryStream.Create;
   DM1.Stream.Position := 0;
   DM1.Jpg.LoadFromStream(DM1.Stream);

   // Inicio: HPC_201705_ASO
   // Se controla error al momento de levantar la imagen
   try
      DM1.jpg.LoadFromFile('C:\Solexes\_Fot'+Trim(xAsoDni)+'.JPG');
   except
      null;
   end;
   // Fin: HPC_201705_ASO

   //crea una corriente en memoria
   DM1.Stream := TMemoryStream.Create;
   //Graba en la corriente el archivo Jpg
   DM1.Jpg.SaveToStream(DM1.Stream);
   DM1.Stream.Position := 0;
   // Firma
   DM1.JpgFirma    := Nil;
   DM1.StreamFirma := Nil;
   DM1.jpgFirma    := TJPEGImage.Create;
   DM1.StreamFirma := TMemoryStream.Create;
   DM1.StreamFirma.Position := 0;
   DM1.jpgFirma.LoadFromStream(DM1.StreamFirma);

   DM1.jpgFirma.LoadFromFile('C:\Solexes\_Fir'+Trim(xAsoDni)+'.JPG');

   //crea una corriente en memoria
   DM1.StreamFirma := TMemoryStream.Create;
   //Graba en la corriente el archivo Jpg
   DM1.jpgFirma.SaveToStream(DM1.StreamFirma);
   DM1.StreamFirma.Position := 0;
End;

PROCEDURE TfGeneraLote.GrabafotoAtabla(xDni: STRING);
VAR
   xSql: STRING;
BEGIN
   xSql:='SELECT DNI,NUMLIB,APEPAT,APEMAT,NOMBRE,OTRDOC,LUGNAC,NOMPAD,NOMMAD, '+
   	    'FECNAC,ESTATURA,SEXO,ESTCIV,GRAINS,LUGDOM,RESTRICCIONES,FECINS, '+
		'STAVOT,FECEMIDOC,DIRECCION,FOTO,FIRMA,USUACT,FECACT,OFIACT,EQUUSU, '+
		'FLAG_EXPIRA,UNICO,APECAS,CODUBIDEPNAC,DESDEPNAC,CODUBIPRONAC,DESPRONAC, '+
		'CODUBIDISNAC,DESDISNAC,CODGRAINS,CODESTCIV,CODDOCSUS,NUMDOCSUS,FLACONVOT, '+
		'CODRES,FECEXP,CODUBIDEPDOM,DESDEPDOM,CODUBIPRODOM,DESPRODOM,CODUBIDISDOM, '+
		'DESDISDOM,PRECODDIRECC,PREDESDIRECC,DESDIRECC,NUMDIRECC,DESETAPA,DESMANZA, '+
		'DESLOTE,PRECODBLOCK,PREDESBLOCK,DESBLOCK,PRECODINTER,PREDESINTER,DESINTER, '+
		'PRECODURBAN,PREDESURBAN,DESURBAN '+
		'FROM INF_RENIEC_CAP WHERE DNI = ''' + TRIM(xDni) + ''' ORDER BY FECACT DESC';
   DM1.cdsParam.Close;
   DM1.cdsParam.DataRequest(xSql);
   DM1.cdsParam.Open;
   IF DM1.cdsParam.RecordCount > 0 THEN
   BEGIN
      DM1.cdsParam.Edit;
      TBlobField(DM1.cdsParam.FieldByName('Foto')).LoadFromStream(DM1.Stream);
      TBlobField(DM1.cdsParam.FieldByName('Firma')).LoadFromStream(DM1.StreamFirma);
      DM1.cdsParam.ApplyUpdates(-1);
   END;
END;

procedure TfGeneraLote.bLoteClick(Sender: TObject);
begin
       Try
                fConsultaLotes:= TfConsultaLotes.Create(Self);
                fConsultaLotes.Position:= poScreenCenter;
                fConsultaLotes.ShowModal;

        Finally
                fConsultaLotes.Free;
        end;
end;

procedure TfGeneraLote.bReporteClick(Sender: TObject);
Var xSql :String;
Var xSqlwhere :String;
Var xSqlGroupBy :String;
begin
        Screen.Cursor := crHourGlass;
        //--Inicio: SPP_201406_ASO
        if rbDomicilio.Checked =true then
        begin
               xSql:='SELECT ZIPID,'
               +' DEPA DEP,'
               +' PROVA PROV,'
               +' DISA DIST,'
               +' AUTDESAPO,'
               +' ASOTIPID,'
               +' CREVIG,'
               +' ESTDNI,'
               +' COUNT(*)'
               +' FROM ('
        +' SELECT'
                +' MAESTRO.ZIPID,'
                +' DEPA.DPTODES DEPA,'
                +' PROVA.CIUDDES PROVA,'
                +' DISA.ZIPABR DISA,'
                +' CEN.UBIGEO_DIR,'
                +' DEPC.DPTODES DEPC,'
                +' PROVC.CIUDDES PROC,'
                +' DISC.ZIPABR DISC,'
                +' CASE WHEN NVL(MAESTRO.AUTDESAPO,''N'')=''N'' THEN ''N'' ELSE ''S'' END AUTDESAPO,'
                +' MAESTRO.ASOTIPID,'
                +' (SELECT CASE WHEN COUNT(C.TIPCREID)>0 THEN ''CON CREDITO'' ELSE ''SIN CREDITO'' END FROM CRE301 C WHERE C.CREESTID IN (''01'',''02'') AND C.ASOID=MAESTRO.ASOID) CREVIG,'
                +' /* CASE WHEN NVL(PADRON.LIQUIDO,0)<>0 THEN ROUND((PADRON.LIQUIDO*100)/PADRON.HABER,2) END PORLIQUI,    */'
                +' (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
                +'         WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
                +'  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
                +'         WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
                +'  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
                +' END ) ESTDNI'
                +' FROM (SELECT A.ASOID,'
                +'         A.ASODNI,'
                +'         A.ZIPID,'
                +'         A.ASODSTLABID,'
                +'         A.AUTDESAPO,'
                +'         A.ASOTIPID,'
                +'         A.CENEDUID'
                +'         FROM APO201 A'
                +'         WHERE A.FALLECIDO = ''N'''
                +'         UNION ALL'
                +'         SELECT N.ASOID,'
                +'         N.ASODNI,'
                +'         N.ZIPID,'
                +'         N.ASODSTLABID,'
                +'         N.AUTDESAPO,'
                +'         N.ASOTIPID,'
                +'         N.CENEDUID'
                +'         FROM ASO_NUE_CLI N'
                +'         WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO'
        +' INNER JOIN (SELECT R.DNI,'
        +'             R.FECACT,'
        +'             R.FECEMIDOC,'
        +'             R.FECEXP ,'
        +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK'
        +'        FROM INF_RENIEC_CAP R ) I'
        +' ON MAESTRO.ASODNI = I.DNI  AND I.DRK = 1'
        +' LEFT JOIN (SELECT V.ASOID,'
        +'             V.FECVAL,'
        +'             ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY ASOID,FECVAL DESC) DRK2'
        +'        FROM VAL_DAT_ASO V ) VAL ON VAL.ASOID=MAESTRO.ASOID AND  VAL.DRK2=1'
        +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2)'
        +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND PROVA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4)'
        +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND DISA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4) AND DISA.ZIPID=MAESTRO.ZIPID'
        +' LEFT JOIN ASO_CEN_EDU CEN  ON CEN.CENEDUID = MAESTRO.CENEDUID'
        +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2)'
        +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND PROVC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4)'
        +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND DISC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4) AND DISC.ZIPID=CEN.UBIGEO_DIR'
        +''
        +' WHERE  (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
        +'     WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
        +'          CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
        +'     WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
        +'          CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
        +'     END)=''CADUCO'''
        +'  )';

                       xSqlWhere :=' ';
                if dblcdcoddep.Text<>'' then
                        xSqlWhere :=' WHERE SUBSTR(ZIPID,1,2)='+QuotedStr(dblcdcoddep.Text);
                if dblcdcodpro.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND SUBSTR(ZIPID,1,4)='+QuotedStr(dblcdcodpro.Text);
                if dblcdcoddis.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND ZIPID='+QuotedStr(dblcdcoddis.Text);

                xSqlGroupBy:=' GROUP BY ZIPID,DEPA,'
                                +' PROVA,'
                                +' DISA,'
                                +' AUTDESAPO,'
                                +' ASOTIPID,'
                                +' CREVIG,'
                                +' ESTDNI order by 2,3,4';
        
       //--llenar la Grilla--//
       xSql:=xSql+xSqlwhere+xSqlGroupBy;
         DM1.cdsTemp.Close;
         DM1.cdsTemp.DataRequest(xSql);
         DM1.cdsTemp.Open;

         pplTitulo.Caption:='REPORTE DE DNI CADUCOS AGRUPADOS POR UBICACIÓN DEL DOMICILIO';
        end;
        
        if rbColegio.Checked=true then
        begin
               xSql:='SELECT UBIGEO_DIR,'
               +' DEPC DEP ,'
               +' PROVC PROV ,'
               +' DISC DIST,'
               +' AUTDESAPO,'
               +' ASOTIPID,'
               +' CREVIG,'
               +' ESTDNI,'
               +' COUNT(*)'
               +' FROM ('
        +' SELECT'
                +' MAESTRO.ZIPID,'
                +' DEPA.DPTODES DEPA,'
                +' PROVA.CIUDDES PROVA,'
                +' DISA.ZIPABR DISA,'
                +' CEN.UBIGEO_DIR,'
                +' DEPC.DPTODES DEPC,'
                +' PROVC.CIUDDES PROVC,'
                +' DISC.ZIPABR DISC,'
                +' CASE WHEN NVL(MAESTRO.AUTDESAPO,''N'')=''N'' THEN ''N'' ELSE ''S'' END AUTDESAPO,'
                +' MAESTRO.ASOTIPID,'
                +' (SELECT CASE WHEN COUNT(C.TIPCREID)>0 THEN ''CON CREDITO'' ELSE ''SIN CREDITO'' END FROM CRE301 C WHERE C.CREESTID IN (''01'',''02'') AND C.ASOID=MAESTRO.ASOID) CREVIG,'
                +' /* CASE WHEN NVL(PADRON.LIQUIDO,0)<>0 THEN ROUND((PADRON.LIQUIDO*100)/PADRON.HABER,2) END PORLIQUI,    */'
                +' (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
                +'         WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
                +'  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
                +'         WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
                +'  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
                +' END ) ESTDNI'
                +' FROM (SELECT A.ASOID,'
                +'         A.ASODNI,'
                +'         A.ZIPID,'
                +'         A.ASODSTLABID,'
                +'         A.AUTDESAPO,'
                +'         A.ASOTIPID,'
                +'         A.CENEDUID'
                +'         FROM APO201 A'
                +'         WHERE A.FALLECIDO = ''N'''
                +'         UNION ALL'
                +'         SELECT N.ASOID,'
                +'         N.ASODNI,'
                +'         N.ZIPID,'
                +'         N.ASODSTLABID,'
                +'         N.AUTDESAPO,'
                +'         N.ASOTIPID,'
                +'         N.CENEDUID' 
                +'         FROM ASO_NUE_CLI N'
                +'         WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO'
        +' INNER JOIN (SELECT R.DNI,'
        +'             R.FECACT,'
        +'             R.FECEMIDOC,'
        +'             R.FECEXP ,'
        +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK'
        +'        FROM INF_RENIEC_CAP R ) I'
        +' ON MAESTRO.ASODNI = I.DNI  AND I.DRK = 1'
        +' LEFT JOIN (SELECT V.ASOID,'
        +'             V.FECVAL,'
        +'             ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY ASOID,FECVAL DESC) DRK2'
        +'        FROM VAL_DAT_ASO V ) VAL ON VAL.ASOID=MAESTRO.ASOID AND  VAL.DRK2=1'
        +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2)'
        +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND PROVA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4)'
        +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND DISA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4) AND DISA.ZIPID=MAESTRO.ZIPID'
        +' LEFT JOIN ASO_CEN_EDU CEN  ON CEN.CENEDUID = MAESTRO.CENEDUID'
        +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2)'
        +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND PROVC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4)'
        +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND DISC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4) AND DISC.ZIPID=CEN.UBIGEO_DIR'
        +''
        +' WHERE  (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
        +'     WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
        +'          CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
        +'     WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
        +'          CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
        +'     END)=''CADUCO'''
        +'  )';

                       xSqlWhere :=' ';
                if dblcdcoddep.Text<>'' then
                        xSqlWhere :=' WHERE SUBSTR(UBIGEO_DIR,1,2)='+QuotedStr(dblcdcoddep.Text);
                if dblcdcodpro.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND SUBSTR(UBIGEO_DIR,1,4)='+QuotedStr(dblcdcodpro.Text);
                if dblcdcoddis.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND UBIGEO_DIR='+QuotedStr(dblcdcoddis.Text);

                xSqlGroupBy:=' GROUP BY UBIGEO_DIR,DEPC,  '
                                +' PROVC,'
                                +' DISC,'
                                +' AUTDESAPO,'
                                +' ASOTIPID,'
                                +' CREVIG,'
                                +' ESTDNI order by 2,3,4';
        
       //--llenar la Grilla--//
       xSql:=xSql+xSqlwhere+xSqlGroupBy;
         DM1.cdsTemp.Close;
         DM1.cdsTemp.DataRequest(xSql);
         DM1.cdsTemp.Open;

         pplTitulo.Caption:='REPORTE DE DNI CADUCOS AGRUPADOS POR UBICACIÓN DE COLEGIOS';
        end;

         //--Fin: SPP_201406_ASO
         //--Reporte--//
         ppbdReporte.DataSource:=DM1.dsTemp;
         pprReporte.Print;
         //ppDesigner.Show;
         Screen.Cursor := crDefault;
end;

procedure TfGeneraLote.bExportarClick(Sender: TObject);
Var xSql :String;
Var xSqlWhere :String;
Var xSqlGroupBy :String;
begin

     Screen.Cursor := crHourGlass;
        //--Inicio: SPP_201406_ASO
        if rbDomicilio.Checked =true then
        begin
               xSql:='SELECT ZIPID,'
               +' DEPA DEP,'
               +' PROVA PROV,'
               +' DISA DIST,'
               +' AUTDESAPO,'
               +' ASOTIPID,'
               +' CREVIG,'
               +' ESTDNI,'
               +' COUNT(*)'
               +' FROM ('
        +' SELECT'
                +' MAESTRO.ZIPID,'
                +' DEPA.DPTODES DEPA,'
                +' PROVA.CIUDDES PROVA,'
                +' DISA.ZIPABR DISA,'
                +' CEN.UBIGEO_DIR,'
                +' DEPC.DPTODES DEPC,'
                +' PROVC.CIUDDES PROC,'
                +' DISC.ZIPABR DISC,'
                +' CASE WHEN NVL(MAESTRO.AUTDESAPO,''N'')=''N'' THEN ''N'' ELSE ''S'' END AUTDESAPO,'
                +' MAESTRO.ASOTIPID,'
                +' (SELECT CASE WHEN COUNT(C.TIPCREID)>0 THEN ''CON CREDITO'' ELSE ''SIN CREDITO'' END FROM CRE301 C WHERE C.CREESTID IN (''01'',''02'') AND C.ASOID=MAESTRO.ASOID) CREVIG,'
                +' /* CASE WHEN NVL(PADRON.LIQUIDO,0)<>0 THEN ROUND((PADRON.LIQUIDO*100)/PADRON.HABER,2) END PORLIQUI,    */'
                +' (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
                +'         WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
                +'  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
                +'         WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
                +'  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
                +' END ) ESTDNI'
                +' FROM (SELECT A.ASOID,'
                +'         A.ASODNI,'
                +'         A.ZIPID,'
                +'         A.ASODSTLABID,'
                +'         A.AUTDESAPO,'
                +'         A.ASOTIPID,'
                +'         A.CENEDUID'
                +'         FROM APO201 A'
                +'         WHERE A.FALLECIDO = ''N'''
                +'         UNION ALL'
                +'         SELECT N.ASOID,'
                +'         N.ASODNI,'
                +'         N.ZIPID,'
                +'         N.ASODSTLABID,'
                +'         N.AUTDESAPO,'
                +'         N.ASOTIPID,'
                +'         N.CENEDUID'
                +'         FROM ASO_NUE_CLI N'
                +'         WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO'
        +' INNER JOIN (SELECT R.DNI,'
        +'             R.FECACT,'
        +'             R.FECEMIDOC,'
        +'             R.FECEXP ,'
        +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK'
        +'        FROM INF_RENIEC_CAP R ) I'
        +' ON MAESTRO.ASODNI = I.DNI  AND I.DRK = 1'
        +' LEFT JOIN (SELECT V.ASOID,'
        +'             V.FECVAL,'
        +'             ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY ASOID,FECVAL DESC) DRK2'
        +'        FROM VAL_DAT_ASO V ) VAL ON VAL.ASOID=MAESTRO.ASOID AND  VAL.DRK2=1'
        +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2)'
        +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND PROVA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4)'
        +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND DISA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4) AND DISA.ZIPID=MAESTRO.ZIPID'
        +' LEFT JOIN ASO_CEN_EDU CEN  ON CEN.CENEDUID = MAESTRO.CENEDUID'
        +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2)'
        +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND PROVC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4)'
        +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND DISC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4) AND DISC.ZIPID=CEN.UBIGEO_DIR'
        +''
        +' WHERE  (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
        +'     WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
        +'          CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
        +'     WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
        +'          CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
        +'     END)=''CADUCO'''
        +'  )';

                       xSqlWhere :=' ';
                if dblcdcoddep.Text<>'' then
                        xSqlWhere :=' WHERE SUBSTR(ZIPID,1,2)='+QuotedStr(dblcdcoddep.Text);
                if dblcdcodpro.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND SUBSTR(ZIPID,1,4)='+QuotedStr(dblcdcodpro.Text);
                if dblcdcoddis.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND ZIPID='+QuotedStr(dblcdcoddis.Text);

                xSqlGroupBy:=' GROUP BY ZIPID,DEPA,'
                                +' PROVA,'
                                +' DISA,'
                                +' AUTDESAPO,'
                                +' ASOTIPID,'
                                +' CREVIG,'
                                +' ESTDNI order by 2,3,4';
        
       //--llenar la Grilla--//
       xSql:=xSql+xSqlwhere+xSqlGroupBy;
         DM1.cdsTemp.Close;
         DM1.cdsTemp.DataRequest(xSql);
         DM1.cdsTemp.Open;

         pplTitulo.Caption:='REPORTE DE DNI CADUCOS AGRUPADOS POR UBICACIÓN DEL DOMICILIO';
        end;
        
        if rbColegio.Checked=true then
        begin
               xSql:='SELECT UBIGEO_DIR,'
               +' DEPC DEP ,'
               +' PROVC PROV ,'
               +' DISC DIST,'
               +' AUTDESAPO,'
               +' ASOTIPID,'
               +' CREVIG,'
               +' ESTDNI,'
               +' COUNT(*)'
               +' FROM ('
        +' SELECT'
                +' MAESTRO.ZIPID,'
                +' DEPA.DPTODES DEPA,'
                +' PROVA.CIUDDES PROVA,'
                +' DISA.ZIPABR DISA,'
                +' CEN.UBIGEO_DIR,'
                +' DEPC.DPTODES DEPC,'
                +' PROVC.CIUDDES PROVC,'
                +' DISC.ZIPABR DISC,'
                +' CASE WHEN NVL(MAESTRO.AUTDESAPO,''N'')=''N'' THEN ''N'' ELSE ''S'' END AUTDESAPO,'
                +' MAESTRO.ASOTIPID,'
                +' (SELECT CASE WHEN COUNT(C.TIPCREID)>0 THEN ''CON CREDITO'' ELSE ''SIN CREDITO'' END FROM CRE301 C WHERE C.CREESTID IN (''01'',''02'') AND C.ASOID=MAESTRO.ASOID) CREVIG,'
                +' /* CASE WHEN NVL(PADRON.LIQUIDO,0)<>0 THEN ROUND((PADRON.LIQUIDO*100)/PADRON.HABER,2) END PORLIQUI,    */'
                +' (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
                +'         WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
                +'  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
                +'         WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
                +'  CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
                +' END ) ESTDNI'
                +' FROM (SELECT A.ASOID,'
                +'         A.ASODNI,'
                +'         A.ZIPID,'
                +'         A.ASODSTLABID,'
                +'         A.AUTDESAPO,'
                +'         A.ASOTIPID,'
                +'         A.CENEDUID'
                +'         FROM APO201 A'
                +'         WHERE A.FALLECIDO = ''N'''
                +'         UNION ALL'
                +'         SELECT N.ASOID,'
                +'         N.ASODNI,'
                +'         N.ZIPID,'
                +'         N.ASODSTLABID,'
                +'         N.AUTDESAPO,'
                +'         N.ASOTIPID,'
                +'         N.CENEDUID'
                +'         FROM ASO_NUE_CLI N'
                +'         WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO'
        +' INNER JOIN (SELECT R.DNI,'
        +'             R.FECACT,'
        +'             R.FECEMIDOC,'
        +'             R.FECEXP ,'
        +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK'
        +'        FROM INF_RENIEC_CAP R ) I'
        +' ON MAESTRO.ASODNI = I.DNI  AND I.DRK = 1'
        +' LEFT JOIN (SELECT V.ASOID,'
        +'             V.FECVAL,'
        +'             ROW_NUMBER() OVER (PARTITION BY ASOID ORDER BY ASOID,FECVAL DESC) DRK2'
        +'        FROM VAL_DAT_ASO V ) VAL ON VAL.ASOID=MAESTRO.ASOID AND  VAL.DRK2=1'
        +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2)'
        +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND PROVA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4)'
        +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(MAESTRO.ZIPID,1,2) AND DISA.CIUDID=SUBSTR(MAESTRO.ZIPID,1,4) AND DISA.ZIPID=MAESTRO.ZIPID'
        +' LEFT JOIN ASO_CEN_EDU CEN  ON CEN.CENEDUID = MAESTRO.CENEDUID'
        +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2)'
        +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND PROVC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4)'
        +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(CEN.UBIGEO_DIR,1,2) AND DISC.CIUDID=SUBSTR(CEN.UBIGEO_DIR,1,4) AND DISC.ZIPID=CEN.UBIGEO_DIR'
        +''
        +' WHERE  (CASE WHEN TRUNC(I.FECEXP,''YYYY'') < TRUNC(SYSDATE,''YYYY'') THEN ''CADUCO'''
        +'     WHEN TRUNC(I.FECEMIDOC,''YYYY'') < TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
        +'          CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=6 THEN ''CADUCO'' END'
        +'     WHEN TRUNC(I.FECEMIDOC,''YYYY'') >= TO_DATE(''01/01/2008'',''DD/MM/YYYY'') THEN'
        +'          CASE WHEN EXTRACT(YEAR FROM   NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE), I.FECEMIDOC), ''month''))>=8 THEN ''CADUCO'' END'
        +'     END)=''CADUCO'''
        +'  )';

                       xSqlWhere :=' ';
                if dblcdcoddep.Text<>'' then
                        xSqlWhere :=' WHERE SUBSTR(UBIGEO_DIR,1,2)='+QuotedStr(dblcdcoddep.Text);
                if dblcdcodpro.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND SUBSTR(UBIGEO_DIR,1,4)='+QuotedStr(dblcdcodpro.Text);
                if dblcdcoddis.Text<>'' then
                        xSqlWhere:= xSqlWhere +' AND UBIGEO_DIR='+QuotedStr(dblcdcoddis.Text);

                xSqlGroupBy:=' GROUP BY UBIGEO_DIR,DEPC,  '
                                +' PROVC,'
                                +' DISC,'
                                +' AUTDESAPO,'
                                +' ASOTIPID,'
                                +' CREVIG,'
                                +' ESTDNI order by 2,3,4';
        
       //--Fin: SPP_201406_ASO
       //--llenar la Grilla--//
       xSql:=xSql+xSqlwhere+xSqlGroupBy;
         DM1.cdsTemp.Close;
         DM1.cdsTemp.DataRequest(xSql);
         DM1.cdsTemp.Open;

         pplTitulo.Caption:='REPORTE DE DNI CADUCOS AGRUPADOS POR UBICACIÓN DE COLEGIOS';
        end;

        Screen.Cursor := crDefault;

         dtgExcel.DataSource:=DM1.dsTemp;
         dtgExcel.Selected.Add('DEP'#9'15'#9'Departamento'#9#9);
         dtgExcel.Selected.Add('PROV'#9'15'#9'Provincia'#9#9);
         dtgExcel.Selected.Add('DIST'#9'15'#9'Distrito'#9#9);
         dtgExcel.Selected.Add('AUTDESAPO'#9'12'#9'CADAPS'#9#9);
         dtgExcel.Selected.Add('ASOTIPID'#9'12'#9'Tipo'#9#9);
         dtgExcel.Selected.Add('CREVIG'#9'12'#9'Credito Vige.'#9#9);
         dtgExcel.Selected.Add('ESTDNI'#9'12'#9'Estado D.N.I'#9#9);
         dtgExcel.Selected.Add('COUNT(*)'#9'12'#9'Cant.'#9#9);
         dtgExcel.ApplySelected;

   if rbColegio.Checked = true then
   begin
        With dtgExcel, dtgExcel.ExportOptions Do
        Begin
                ExportType := wwgetSYLK;
                FileName := 'ReportePorColegios.slk';
                Save;
                If Not (esoClipboard In Options) Then
                ShellExecute(Handle, 'Open', PChar(dtgExcel.exportoptions.Filename), Nil, Nil, sw_shownormal);
        End;
   end;

   if rbDomicilio.Checked=true then
   begin
        With dtgExcel, dtgExcel.ExportOptions Do
        Begin
                ExportType := wwgetSYLK;
                FileName := 'ReportePorDomicilio.slk';
                Save;
                If Not (esoClipboard In Options) Then
                ShellExecute(Handle, 'Open', PChar(dtgExcel.exportoptions.Filename), Nil, Nil, sw_shownormal);
        End;
   end;

   Screen.Cursor := crDefault;
   
end;

// INICIO HPC_201601_ASO
// IMPORTA ARCHIVO DE EXCEL
(******************************************************************************)
procedure TfGeneraLote.btnImportaExcelClick(Sender: TObject);
begin
   if dblcTipoAso.Text = '-SELECCIONE-' then begin
       MessageDlg(' Debe seleccionar el Tipo de Asociado..!!!!', mtError, [mbOk], 0);
       exit;
   end;
  try
    FImportarExcel := TFImportarExcel.Create(Self);
    if FImportarExcel.ShowModal = mrOk then begin
       Buscar(TRUE);
       bProcesar.Enabled:=true;
    end;
  except
    FImportarExcel.Free;
  end;
end;

(******************************************************************************)
// FIN HPC_201601_ASO

// Inicio: HPC_201607_ASO
// Se actualiza codigo de ubigeo domicilio y dirección.
procedure TfGeneraLote.actualizadireccionRENIEC(xAsoDni: String);
Var xpos1, xpos2: Integer;
    xlugdom, xasoid, xdireccion, xSql, xubigeo, xdesdep, xdespro, xdesdis, xcoddep, xcodpro, xcoddis :String;
begin
   xSql := 'SELECT ASOID FROM APO201 WHERE ASODNI = '+QuotedStr(xAsoDni);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xasoid := DM1.cdsQry.FieldByName('ASOID').AsString;
   xSql := 'SELECT DNI, LUGDOM, DIRECCION, DESDEPDOM, DESPRODOM, DESDISDOM, PREDESDIRECC, DESDIRECC, DESETAPA, NUMDIRECC, PRECODINTER, PREDESINTER, DESINTER, DESMANZA, DESLOTE, PREDESURBAN, DESURBAN, PRECODBLOCK, PREDESBLOCK'
   +' FROM INF_RENIEC_CAP WHERE DNI = '+QuotedStr(xAsoDni)+' AND FECACT IN (SELECT MAX(FECACT) FROM INF_RENIEC_CAP WHERE DNI = '+QuotedStr(xAsoDni)+')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 1 Then
   Begin
      If DM1.cdsQry.FieldByName('DESDEPDOM').AsString <> '' Then
      Begin
         xdesdep := DM1.cdsQry.FieldByName('DESDEPDOM').AsString;
         xdespro :=  DM1.cdsQry.FieldByName('DESPRODOM').AsString;
         xdesdis :=  DM1.cdsQry.FieldByName('DESDISDOM').AsString;
      End
      Else
      Begin
         If DM1.cdsQry.FieldByName('LUGDOM').AsString <> '' Then
         Begin
            xlugdom := DM1.cdsQry.FieldByName('LUGDOM').AsString;
            // PARA CALLAO
            If Copy(xlugdom,1,1) = ',' Then xlugdom := 'CALLAO'+xlugdom;
            xSql := 'SELECT INSTR('+QuotedStr(xlugdom)+','','',1,1) POS1, INSTR('+QuotedStr(xlugdom)+','','',1,2) POS2 FROM DUAL';
            DM1.cdsQry1.Close;
            DM1.cdsQry1.DataRequest(xSql);
            DM1.cdsQry1.Open;
            xpos1 := DM1.cdsQry1.FieldByName('POS1').AsInteger;
            xpos2 := DM1.cdsQry1.FieldByName('POS2').AsInteger;
            xSql := 'SELECT SUBSTR('+QuotedStr(xlugdom)+',1,'+IntToStr(xpos1)+'-1) DEPARTAMENTO FROM DUAL';
            DM1.cdsQry1.Close;
            DM1.cdsQry1.DataRequest(xSql);
            DM1.cdsQry1.Open;
            xdesdep := DM1.cdsQry1.FieldByName('DEPARTAMENTO').AsString;
            xSql := 'SELECT SUBSTR('+QuotedStr(xlugdom)+','+IntToStr(xpos1)+'+2,'+IntToStr(xpos2)+'-'+IntToStr(xpos1)+'-2) PROVINCIA FROM DUAL';
            DM1.cdsQry1.Close;
            DM1.cdsQry1.DataRequest(xSql);
            DM1.cdsQry1.Open;
            xdespro := DM1.cdsQry1.FieldByName('PROVINCIA').AsString;
            xSql := 'SELECT SUBSTR('+QuotedStr(xlugdom)+','+IntToStr(xpos2)+'+2, LENGTH(TRIM('+QuotedStr(xlugdom)+'))-'+IntToStr(xpos2)+'+1) DISTRITO FROM DUAL';
            DM1.cdsQry1.Close;
            DM1.cdsQry1.DataRequest(xSql);
            DM1.cdsQry1.Open;
            xdesdis := DM1.cdsQry1.FieldByName('DISTRITO').AsString;
         End;
      End;
      xdireccion := '';
      If DM1.cdsQry.FieldByName('DIRECCION').AsString <> '' Then
         xdireccion := DM1.cdsQry.FieldByName('DIRECCION').AsString
      Else
      Begin
         // Urbanización
         If (DM1.cdsQry.FieldByName('PREDESURBAN').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('PREDESURBAN').AsString) <> '') Then
            xdireccion := Trim(DM1.cdsQry.FieldByName('PREDESURBAN').AsString);
         If (DM1.cdsQry.FieldByName('DESURBAN').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('DESURBAN').AsString) <> '') Then
         Begin
            If Trim(xdireccion) <> '' Then xdireccion := xdireccion + ' ';
            xdireccion := xdireccion + Trim(DM1.cdsQry.FieldByName('DESURBAN').AsString);
         End;
         // Dirección
         If (DM1.cdsQry.FieldByName('PREDESDIRECC').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('PREDESDIRECC').AsString) <> '') Then
         Begin
            If Trim(xdireccion) <> '' Then xdireccion := xdireccion + ' / ';
            xdireccion := xdireccion + Trim(DM1.cdsQry.FieldByName('PREDESDIRECC').AsString);
         End;
         If (DM1.cdsQry.FieldByName('DESDIRECC').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('DESDIRECC').AsString) <> '') Then
         Begin
            If Trim(xdireccion) <> '' Then xdireccion := xdireccion + ' ';
            xdireccion := xdireccion + DM1.cdsQry.FieldByName('DESDIRECC').AsString;
         End;
         If (DM1.cdsQry.FieldByName('NUMDIRECC').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('NUMDIRECC').AsString) <> '') Then
         Begin
            If Trim(xdireccion) <> '' Then xdireccion := xdireccion + ' # ';
            xdireccion := xdireccion + DM1.cdsQry.FieldByName('NUMDIRECC').AsString;
         End;
         // Etapa
         If (DM1.cdsQry.FieldByName('DESETAPA').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('DESETAPA').AsString) <> '') Then
         Begin
            If Trim(xdireccion) <> '' Then xdireccion := xdireccion + ' / Etapa:';
            xdireccion := xdireccion + DM1.cdsQry.FieldByName('DESETAPA').AsString;
         End;
         If (DM1.cdsQry.FieldByName('PRECODBLOCK').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('PRECODBLOCK').AsString) <> '') Then
         Begin
            If Trim(xdireccion) <> '' Then xdireccion := xdireccion + ' / ';
            xdireccion := xdireccion + DM1.cdsQry.FieldByName('PRECODBLOCK').AsString;
         End;
         If (DM1.cdsQry.FieldByName('PREDESBLOCK').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('PREDESBLOCK').AsString) <> '') Then
         Begin
            If Trim(xdireccion) <> '' Then xdireccion := xdireccion + ' ';
            xdireccion := xdireccion + ' ' + DM1.cdsQry.FieldByName('PREDESBLOCK').AsString;
         End;
         // Interior
         If (DM1.cdsQry.FieldByName('PREDESINTER').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('PREDESINTER').AsString) <> '') Then
         Begin
            If Trim(xdireccion) <> '' Then xdireccion := xdireccion + ' / ';
            xdireccion := xdireccion + DM1.cdsQry.FieldByName('PREDESINTER').AsString;
         End;
         If (DM1.cdsQry.FieldByName('DESINTER').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('DESINTER').AsString) <> '') Then
         Begin
            If Trim(xdireccion) <> '' Then xdireccion := xdireccion + ' ';
            xdireccion := xdireccion + DM1.cdsQry.FieldByName('DESINTER').AsString;
         End;
         // Manzana - Lote
         If (DM1.cdsQry.FieldByName('DESMANZA').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('DESMANZA').AsString) <> '') Then
         Begin
            If Trim(xdireccion) <> '' Then xdireccion := xdireccion + ' / ';
            xdireccion := xdireccion + ' Mz. '+DM1.cdsQry.FieldByName('DESMANZA').AsString;
         End;
         If (DM1.cdsQry.FieldByName('DESLOTE').AsString <> '--') And (Trim(DM1.cdsQry.FieldByName('DESLOTE').AsString) <> '') Then
            xdireccion := xdireccion + ' Lt. '+DM1.cdsQry.FieldByName('DESLOTE').AsString;
      End;
      xcoddep := '99';
      xcodpro := '99';
      xcoddis := '99';
      xSql := 'SELECT DPTOID FROM APO158 WHERE DPTODES = '+QuotedStr(xdesdep);
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSql);
      DM1.cdsQry2.Open;
      xcoddep := DM1.cdsQry2.FieldByName('DPTOID').AsString;
      xSql := 'SELECT CIUDID FROM APO123 WHERE DPTOID = '+QuotedStr(xcoddep)+' AND  CIUDDES = '+QuotedStr(xdespro);
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSql);
      DM1.cdsQry2.Open;
      xcodpro := DM1.cdsQry2.FieldByName('CIUDID').AsString;
      xSql := 'SELECT ZIPID FROM APO122 WHERE CIUDID = '+QuotedStr(xcodpro)+' AND  ZIPDES = '+QuotedStr(xdesdis);
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSql);
      DM1.cdsQry2.Open;
      xcoddis := DM1.cdsQry2.FieldByName('ZIPID').AsString;
      If (Trim(xcoddis) <> '') And (Trim(xdireccion) <> '') Then
      Begin
         xSql := 'SELECT ASODIR, ZIPID FROM APO201 WHERE ASOID = '+QuotedStr(xasoid);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         If (DM1.cdsQry.FieldByName('ASODIR').AsString = '') Or (DM1.cdsQry.FieldByName('ZIPID').AsString = '') Then
         Begin
            xSql := 'UPDATE APO201 SET ASODIR = '+QuotedStr(xdireccion)+', ZIPID = '+QuotedStr(xcoddis)+' WHERE ASOID = '+QuotedStr(xasoid);
            DM1.DCOM1.AppServer.EjecutaSql(xSql);
         End;
      End;
   End;
end;
// Fin: HPC_201607_ASO

end.
