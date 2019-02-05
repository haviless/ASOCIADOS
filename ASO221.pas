// Inicio Uso Estándares     : 01/08/2011
// Unidad		            : ASO221.pas
// Formulario		        : FPadronRequisitos
// Fecha de Creación	     : 28/02/2012
// Autor			         : Daniel Fernández
// Objetivo		          : Consultar los requisitos de datos de un padrón y clasificar los registros de acuerdo al DNI

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO            : 28/02/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201211_ASO            : DFERNANDEZ Se modifica la tabla de codigos de pago por aumentar la multiplicidad
// SPP_201301_ASO            : El pase a producción se realiza sobre la base del HPC_201301_ASO
// HPC_201304_ASO            : Se corrige la exportacion a excel
// HPC_201305_ASO            : Se agrega un botón que llama al maestro de reemplazo de nombres 
// SPP_201306_ASO            : Se realiza el pase a producción a partir del HPC_201305_ASO
// HPC_201309_ASO            : La tabla ASO_PAD_DET_HIS se usa para un padrón cerrado, sino ASO_PAD_DET
// SPP_201310_ASO            : Se realiza el pase a producción a partir del HPC_201309_ASO

unit ASO221;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DBGrids;

type
  TFPadronRequisitos = class(TForm)
    pcRequisitos: TPageControl;
    TabSheet1: TTabSheet;
    dbgColegios: TwwDBGrid;
    btnValidarRequisitos: TBitBtn;
    btnSalir: TBitBtn;
    btnMaestroCenEdu: TBitBtn;
    TabSheet2: TTabSheet;
    dbgUgelesRegiones: TwwDBGrid;
    btnAExcel: TBitBtn;
    dtgData: TDBGrid;
    dtgData2: TDBGrid;
    btnUgelRegionPlanilla: TBitBtn;
    // Inicio: SPP_201301_ASO
    TabSheet3: TTabSheet;
    dbgCodigosDcto: TwwDBGrid;
    dtgData3: TDBGrid;
    btnTiposDcto: TBitBtn;
    btnReemplazoNombres: TBitBtn; //SPP_201306_ASO
    // Fin: SPP_201301_ASO
    procedure btnValidarRequisitosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnMaestroCenEduClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure btnUgelRegionPlanillaClick(Sender: TObject);
    procedure pcRequisitosChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnTiposDctoClick(Sender: TObject);
    procedure btnReemplazoNombresClick(Sender: TObject); //SPP_201306_ASO
  private
    { Private declarations }
  public
    { Public declarations }
    CODPAD: string;
    MODIFICADO: boolean;
    procedure CargarDatos;
  end;

var
  FPadronRequisitos: TFPadronRequisitos;

implementation

// Inicio: SPP_201306_ASO
uses ASODM, ASO905, ASO227, ASO226, ASO235;
// Fin: SPP_201306_ASO

{$R *.dfm}

procedure TFPadronRequisitos.FormActivate(Sender: TObject);
begin
  if DM1.cdsPadrones.FieldByName('CODEST').AsString = 'D' then
    btnValidarRequisitos.Enabled := true
  else
    btnValidarRequisitos.Enabled := false;
  pcRequisitos.ActivePageIndex := 0;    
  CargarDatos;
end;

procedure TFPadronRequisitos.CargarDatos;
var
  xSql: string;
begin
  Screen.Cursor := crHourGlass;

  // Inicio: SPP_201310_ASO
  // Inicio: SPP_201301_ASO
  //CENTRO EDUCATIVO
  xSql := 'SELECT DISTINCT P.EMPRESA, P.USEID, P.USENOM, P.ASOCODPAGO, P.NOMBRE_IE'
    + ' FROM'
    + '     ' + DM1.sTablaPadron + ' P'
    + '         LEFT JOIN'
    + '     ASO_CEN_EDU_VS_PAGO_MAE C ON'
    + '     P.ASOCODPAGO = C.ASOCODPAGO'
    + ' WHERE'
    + '     P.CODPAD = ' + QuotedStr(CODPAD)
    + '     AND P.ASOTIPID = ''DO'''
    + '     AND C.ASOCODPAGO IS NULL'
    + ' ORDER BY P.NOMBRE_IE';
  // Fin: SPP_201301_ASO
  // Fin: SPP_201310_ASO
  DM1.cdsCEdu.Close;
  DM1.cdsCEdu.DataRequest(xSql);
  DM1.cdsCEdu.Open;
  
  dbgColegios.Refresh;
  dbgColegios.Selected.Clear;
  dbgColegios.Selected.Add('EMPRESA'#9'25'#9'Región'#9#9);
  dbgColegios.Selected.Add('USENOM'#9'25'#9'Ugel'#9#9);
  dbgColegios.Selected.Add('ASOCODPAGO'#9'10'#9'Código'#9#9);
  dbgColegios.Selected.Add('NOMBRE_IE'#9'60'#9'Centro Educativo'#9#9);
  dbgColegios.ApplySelected;
  
  dbgColegios.ColumnByName('EMPRESA').FooterValue := IntToStr(DM1.cdsCEdu.RecordCount);
  dbgColegios.ColumnByName('USENOM').FooterValue := 'Registros';
  dbgColegios.RefreshDisplay;
  
  //UGELES / REGION VS PLANILLAS
  // Inicio: SPP_201310_ASO
  xSql := 'SELECT DISTINCT P.USEID, P.USENOM, P.COD_EMPRESA, P.EMPRESA, ''ACTIVOS'' TIPPLA'
    + ' FROM'
    + '     ' + DM1.sTablaPadron + ' P'
    + '         LEFT JOIN'
    + '     ASO_UGEL_PLA_MAE U ON'
    + '     P.USEID = U.USEID'
    + '     AND P.COD_EMPRESA = U.CODREGION'
    + '     AND U.AC = ''S'''
    + ' WHERE'
    + '     P.CODPAD = ' + QuotedStr(CODPAD)
    + '     AND P.PLANILLA = 1'
    + '     AND U.CODREGION IS NULL'
    + '     UNION ALL'
    + ' SELECT DISTINCT P.USEID, P.USENOM, P.COD_EMPRESA, P.EMPRESA, ''CESANTES'' TIPPLA'
    + ' FROM'
    + '     ' + DM1.sTablaPadron + ' P'
    + '         LEFT JOIN'
    + '     ASO_UGEL_PLA_MAE U ON'
    + '     P.USEID = U.USEID'
    + '     AND P.COD_EMPRESA = U.CODREGION'
    + '     AND U.CE = ''S'''
    + ' WHERE'
    + '     P.CODPAD = ' + QuotedStr(CODPAD)
    + '     AND P.PLANILLA = 2'
    + '     AND U.CODREGION IS NULL';
  // Fin: SPP_201310_ASO
  DM1.cdsConsulta.Close;
  DM1.cdsConsulta.DataRequest(xSql);
  DM1.cdsConsulta.Open;
  
  dbgUgelesRegiones.Refresh;
  dbgUgelesRegiones.Selected.Clear;
  dbgUgelesRegiones.Selected.Add('USEID'#9'6'#9'USEID'#9#9);
  dbgUgelesRegiones.Selected.Add('USENOM'#9'25'#9'Ugel'#9#9);
  dbgUgelesRegiones.Selected.Add('COD_EMPRESA'#9'6'#9'CODREG'#9#9);
  dbgUgelesRegiones.Selected.Add('EMPRESA'#9'25'#9'Región'#9#9);
  dbgUgelesRegiones.Selected.Add('TIPPLA'#9'10'#9'Planilla'#9#9);
  dbgUgelesRegiones.ApplySelected;
  
  dbgUgelesRegiones.ColumnByName('USEID').FooterValue := IntToStr(DM1.cdsConsulta.RecordCount);
  dbgUgelesRegiones.ColumnByName('USENOM').FooterValue := 'Registros';
  dbgUgelesRegiones.RefreshDisplay;

  // Inicio: SPP_201310_ASO
  // Inicio: SPP_201301_ASO
  //TIPOS DE DESCUENTO
  xSql := 'SELECT X.DSCTO'
    + ' FROM'
    + '     (SELECT DISTINCT D.DSCTO01 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO01 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO01 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO02 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO02 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO02 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO03 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO03 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO03 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO04 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO04 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO04 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO05 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO05 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO05 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO06 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO06 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO06 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO07 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO07 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO07 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO08 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO08 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO08 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO09 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO09 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO09 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO10 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO10 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO10 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO11 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO11 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO11 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO12 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO12 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO12 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO13 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO13 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO13 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO14 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO14 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO14 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO15 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO15 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO15 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO16 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO16 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO16 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO17 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO17 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO17 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO18 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO18 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO18 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO19 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO19 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO19 IS NOT NULL AND T.CODIGO IS NULL'
    + '         UNION'
    + '     SELECT DISTINCT D.DSCTO20 DSCTO FROM ' + DM1.sTablaPadron + ' D LEFT JOIN ASO_TIP_DCTO_MAE T ON D.DSCTO20 = T.CODIGO WHERE D.CODPAD = ' + QuotedStr(CODPAD) + ' AND D.DSCTO20 IS NOT NULL AND T.CODIGO IS NULL) X'
    + ' ORDER BY X.DSCTO';
  // Fin: SPP_201310_ASO
  DM1.cdsCPass3.Close;
  DM1.cdsCPass3.DataRequest(xSql);
  DM1.cdsCPass3.Open;
  
  dbgCodigosDcto.Refresh;
  dbgCodigosDcto.Selected.Clear;
  dbgCodigosDcto.Selected.Add('DSCTO'#9'20'#9'Descuento'#9#9);
  dbgCodigosDcto.ApplySelected;
  
  dbgCodigosDcto.ColumnByName('DSCTO').FooterValue := IntToStr(DM1.cdsCPass3.RecordCount) + ' Registros';
  dbgCodigosDcto.RefreshDisplay;
  // Fin: SPP_201301_ASO
  
  Screen.Cursor := crDefault;
end;

procedure TFPadronRequisitos.btnValidarRequisitosClick(Sender: TObject);
var
  xSql: string;
begin
  If MessageDlg('¿Está seguro de validar los requisitos y pasar al estado EN PROCESO?', mtConfirmation,[mbYes,mbNo],0) <> mrYes then Exit;
  
  Screen.Cursor := crHourGlass;
  try
    // Inicio: SPP_201301_ASO
    //Se actualiza el estado del padrón a "En proceso"
    xSql := 'UPDATE ASO_PAD_CAB'
      + ' SET CODEST = ''P'','
      + ' FECINI = SYSDATE,'
      + ' USUINI = ' + QuotedStr(DM1.wUsuario)
      + ' WHERE CODPAD = ' + QuotedStr(CODPAD)
      + '   AND CODEST = ''D''';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    btnValidarRequisitos.Enabled := false;
    // Fin: SPP_201301_ASO
    Screen.Cursor := crDefault;
    
    MODIFICADO := true;    
    ShowMessage('Operación concluida exitosamente');
  Except
    Screen.Cursor := crDefault;
    ShowMessage('No se pudo actualizar el estado del padrón, por favor intente nuevamente');
    Exit;
  End;
end;

procedure TFPadronRequisitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsCEdu.Close;
  DM1.cdsConsulta.Close;
  // Inicio: SPP_201301_ASO
  DM1.cdsCPass3.Close;
// Fin: SPP_201301_ASO
end;

procedure TFPadronRequisitos.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadronRequisitos.btnMaestroCenEduClick(Sender: TObject);
begin
  Try
    FManCol := TFManCol.Create(Self);
    FManCol.ShowModal;
  Finally
    FManCol.Free;
  End;
end;

procedure TFPadronRequisitos.btnAExcelClick(Sender: TObject);
begin
  // Inicio: SPP_201305_ASO
  // Inicio: SPP_201301_ASO
  if pcRequisitos.TabIndex = 0 then
    DM1.HojaExcel('ColegiosPorRegistrar.xls',dtgData.DataSource, dtgData)
  else if pcRequisitos.TabIndex = 1 then
    DM1.HojaExcel('UgelesPorRegistrar.xls',dtgData2.DataSource, dtgData2)
  else if pcRequisitos.TabIndex = 2 then
    DM1.HojaExcel('DctosPorRegistrar.xls',dtgData3.DataSource, dtgData3);
  // Fin: SPP_201301_ASO
  // Fin: SPP_201305_ASO
end;

procedure TFPadronRequisitos.btnUgelRegionPlanillaClick(Sender: TObject);
begin
  Try
    FUgelesRegionesPlanillas := TFUgelesRegionesPlanillas.Create(Self);
    FUgelesRegionesPlanillas.ShowModal;
  Finally
    FUgelesRegionesPlanillas.Free;
  End;
end;

procedure TFPadronRequisitos.pcRequisitosChange(Sender: TObject);
begin
  // Inicio: SPP_201301_ASO
  if pcRequisitos.ActivePageIndex = 0 then
  begin
    dbgColegios.ColumnByName('EMPRESA').FooterValue := IntToStr(DM1.cdsCEdu.RecordCount);
    dbgColegios.ColumnByName('USENOM').FooterValue := 'Registros';
    dbgColegios.RefreshDisplay;
  end
  else if pcRequisitos.ActivePageIndex = 1 then
  begin
    dbgUgelesRegiones.ColumnByName('USEID').FooterValue := IntToStr(DM1.cdsConsulta.RecordCount);
    dbgUgelesRegiones.ColumnByName('USENOM').FooterValue := 'Registros';
    dbgUgelesRegiones.RefreshDisplay;
  end
  else if pcRequisitos.ActivePageIndex = 2 then
  begin
    dbgCodigosDcto.ColumnByName('USEID').FooterValue := IntToStr(DM1.cdsCPass3.RecordCount);
    dbgCodigosDcto.ColumnByName('USENOM').FooterValue := 'Registros';
    dbgCodigosDcto.RefreshDisplay;
  end;
  // Fin: SPP_201301_ASO
end;

procedure TFPadronRequisitos.FormCreate(Sender: TObject);
begin
  MODIFICADO := false;
end;

procedure TFPadronRequisitos.btnTiposDctoClick(Sender: TObject);
begin
  // Inicio: SPP_201301_ASO
  Try
    FTiposDescuento := TFTiposDescuento.Create(Self);
    FTiposDescuento.ShowModal;
  Finally
    FTiposDescuento.Free;
  End;
  // Fin: SPP_201301_ASO
end;

procedure TFPadronRequisitos.btnReemplazoNombresClick(Sender: TObject);
begin
  // Inicio: SPP_201306_ASO
  Try
    FPadronReempNombres := TFPadronReempNombres.Create(Self);
    FPadronReempNombres.ShowModal;
  Finally
    FPadronReempNombres.Free;
  End;
  // Fin: SPP_201306_ASO
end;

end.

