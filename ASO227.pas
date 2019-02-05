// Inicio Uso Estándares     : 01/08/2011
// Unidad		            : ASO227.pas
// Formulario		        : FUgelesRegionesPlanillas
// Fecha de Creación	     : 06/03/2012
// Autor			         : Daniel Fernández
// Objetivo		          : Listado de las Ugeles/Regiones vs Planillas

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO            : 05/03/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201304_ASO            : Se cambian los nombres de dataset para evitar errores en tiempo de ejecución
// SPP_201305_ASO            : Se realiza el pase a producción a partir del HPC_201304_ASO
// SPP_201309_ASO            : Se realiza el pase a plataforma a partir de lo indicado en el HPC_201308_ASO
// HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez

unit ASO227;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, wwdblook, Wwdbdlg, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, DBGrids;

type
  TFUgelesRegionesPlanillas = class(TForm)
    grpUgel: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dblcdUniPro: TwwDBLookupComboDlg;
    EdtUniProNom: TEdit;
    dblcdUniPag: TwwDBLookupComboDlg;
    EdtUniPagNom: TEdit;
    dblcdUniGes: TwwDBLookupComboDlg;
    EdtUniGesNom: TEdit;
    grpUbigeo: TGroupBox;
    Label12: TLabel;
    dblcdcoddep: TwwDBLookupComboDlg;
    EdtDpto: TMaskEdit;
    Label20: TLabel;
    btnMostrar: TBitBtn;
    dbgRegistros: TwwDBGrid;
    btnSalir: TBitBtn;
    btnAExcel: TBitBtn;
    dbgRegistrosIButton: TwwIButton;
    dtgData: TDBGrid;
    btnEliminar: TBitBtn;
    procedure dbgRegistrosIButtonClick(Sender: TObject);
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure dblcdUniProChange(Sender: TObject);
    procedure dblcdUniPagChange(Sender: TObject);
    procedure dblcdUniGesChange(Sender: TObject);
    procedure dblcdUniProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcdUniPagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcdUniGesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcdcoddepChange(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FUgelesRegionesPlanillas: TFUgelesRegionesPlanillas;

implementation

uses ASO225, ASODM, DB;

{$R *.dfm}

procedure TFUgelesRegionesPlanillas.FormActivate(Sender: TObject);
var
  xSql: string;
begin
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
  DM1.cdsUSES.Close;
// Fin  HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
  
  // Inicio: SPP_201305_ASO
  xSql := 'SELECT UPROID, UPRONOM FROM APO102';
  DM1.cdsUnidadProceso.Close;
  DM1.cdsUnidadProceso.DataRequest(xSql);
  DM1.cdsUnidadProceso.Open;
  dblcdUniPro.Selected.Clear;
  dblcdUniPro.Selected.Add('UPROID'#9'3'#9'Código');
  dblcdUniPro.Selected.Add('UPRONOM'#9'23'#9'Unidad de~Proceso');
  
  xSql := 'SELECT UPROID, UPAGOID, UPAGONOM FROM APO103';
  DM1.cdsUnidadPago.Close;
  DM1.cdsUnidadPago.DataRequest(xSql);
  DM1.cdsUnidadPago.Open;
  dblcdUniPag.Selected.Clear;
  dblcdUniPag.Selected.Add('UPAGOID'#9'3'#9'Código'#9#9);
  dblcdUniPag.Selected.Add('UPAGONOM'#9'25'#9'Unidad~de Pago'#9#9);
  
  xSql := 'SELECT UPROID, UPAGOID, USEID, USENOM FROM APO101';
  DM1.cdsUgel.Close;
  DM1.cdsUgel.DataRequest(xSql);
  DM1.cdsUgel.Open;
  dblcdUniGes.Selected.Clear;
  dblcdUniGes.Selected.Add('USEID'#9'3'#9'Código'#9#9);
  dblcdUniGes.Selected.Add('USENOM'#9'25'#9'Unidad~de Gestión'#9#9);
  
  xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
  DM1.cdsDepartamento.Close;
  DM1.cdsDepartamento.DataRequest(xSql);
  DM1.cdsDepartamento.Open;
  dblcdcoddep.Selected.Clear;
  dblcdcoddep.Selected.Add('DPTOID'#9'2'#9'Código');
  dblcdcoddep.Selected.Add('DPTODES'#9'23'#9'Departamento');
  // Fin: SPP_201305_ASO
  
  btnMostrarClick(Self);
end;

procedure TFUgelesRegionesPlanillas.dbgRegistrosIButtonClick(
  Sender: TObject);
begin
  Try
    FUgelRegionPlanilla := TFUgelRegionPlanilla.Create(Self);
    FUgelRegionPlanilla.MODO := 'N';
    FUgelRegionPlanilla.ShowModal;
    if FUgelRegionPlanilla.MODIFICADO then
      btnMostrarClick(Self);
  Finally
    FUgelRegionPlanilla.Free;
  End;
end;

procedure TFUgelesRegionesPlanillas.dbgRegistrosDblClick(Sender: TObject);
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
var
  bmk         : TBookmark;
// Fin   HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
begin
  Try
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
    bmk:=DM1.cdsSitCre.GetBookmark;

    FUgelRegionPlanilla := TFUgelRegionPlanilla.Create(Self);
    FUgelRegionPlanilla.MODO := 'E';
    FUgelRegionPlanilla.CODSEC := DM1.cdsSitCre.FieldByName('CODSEC').AsInteger;
    FUgelRegionPlanilla.ShowModal;
    if FUgelRegionPlanilla.MODIFICADO then
       btnMostrarClick(Self);
    DM1.cdsSitCre.GotoBookmark(bmk);
    DM1.cdsSitCre.FreeBookmark(bmk);

// Fin   HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
  Finally
    FUgelRegionPlanilla.Free;
  End;
end;

procedure TFUgelesRegionesPlanillas.btnMostrarClick(Sender: TObject);
var
  xSql, xWhere: string;
begin
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
  xWhere := '';
  xSql := 'SELECT U.CODSEC, U.UPROID, U.UPAGOID, U.USEID, U.DPTOID, U.CODREGION, U.AC, U.CE,'
    + '    UPRO.UPRONOM, UPAG.UPAGONOM, UG.USENOM, DPT.DPTODES, CENTRO_PROCESO '
    + 'FROM'
    + '    ASO_UGEL_PLA_MAE U'
    + '        LEFT JOIN'
    + '    APO102 UPRO ON'
    + '    U.UPROID = UPRO.UPROID'
    + '        LEFT JOIN'
    + '    APO103 UPAG ON'
    + '    U.UPROID = UPAG.UPROID'
    + '    AND U.UPAGOID = UPAG.UPAGOID'
    + '        LEFT JOIN'
    + '    APO101 UG ON'
    + '    U.UPROID = UG.UPROID'
    + '    AND U.UPAGOID = UG.UPAGOID'
    + '    AND U.USEID = UG.USEID'
    + '        LEFT JOIN'
    + '    TGE158 DPT ON'
    + '    U.DPTOID = DPT.DPTOID ';
  if EdtUniProNom.Text <> '' then
  begin
    if xWhere = '' then
      xWhere := xWhere + ' U.UPROID = ' + QuotedStr(dblcdUniPro.Text)
    else
      xWhere := xWhere + ' AND U.UPROID = ' + QuotedStr(dblcdUniPro.Text);
  end;
  if EdtUniPagNom.Text <> '' then
  begin
    if xWhere = '' then
      xWhere := xWhere + ' U.UPAGOID = ' + QuotedStr(dblcdUniPag.Text)
    else
      xWhere := xWhere + ' AND U.UPAGOID = ' + QuotedStr(dblcdUniPag.Text);
  end;
  if EdtUniGesNom.Text <> '' then
  begin
    if xWhere = '' then
      xWhere := xWhere + ' U.USEID = ' + QuotedStr(dblcdUniGes.Text)
    else
      xWhere := xWhere + ' AND U.USEID = ' + QuotedStr(dblcdUniGes.Text);
  end;
  if EdtDpto.Text <> '' then
  begin
    if xWhere = '' then
      xWhere := xWhere + ' U.DPTOID = ' + QuotedStr(dblcdcoddep.Text)
    else
      xWhere := xWhere + ' AND U.DPTOID = ' + QuotedStr(dblcdcoddep.Text);
  end;
  if xWhere <> '' then
  begin
    xSql := xSql + ' WHERE ' + xWhere;
  end;
  xSql := xSql  + ' ORDER BY DPT.DPTODES, U.UPROID, U.UPAGOID, U.USEID';
  DM1.cdsSitCre.Close;
  DM1.cdsSitCre.DataRequest(xSql);
  DM1.cdsSitCre.Open;
  
  dbgRegistros.Refresh;
  dbgRegistros.Selected.Clear;
  dbgRegistros.Selected.Add('DPTODES'#9'17'#9'Departamento'#9#9);
  dbgRegistros.Selected.Add('UPROID'#9'5'#9'U.Pro~Id.'#9#9);
  dbgRegistros.Selected.Add('UPRONOM'#9'25'#9'U.Proceso'#9#9);
  dbgRegistros.Selected.Add('UPAGOID'#9'5'#9'U.Pago~Id.'#9#9);
  dbgRegistros.Selected.Add('UPAGONOM'#9'25'#9'U.Pago'#9#9);
  dbgRegistros.Selected.Add('USEID'#9'5'#9'USE~Id.'#9#9);
  dbgRegistros.Selected.Add('USENOM'#9'25'#9'Ugel'#9#9);
  dbgRegistros.Selected.Add('CODREGION'#9'6'#9'Región'#9#9);
  dbgRegistros.Selected.Add('AC'#9'6'#9'Activos'#9#9);
  dbgRegistros.Selected.Add('CE'#9'6'#9'Cesantes'#9#9);
  dbgRegistros.Selected.Add('CENTRO_PROCESO'#9'14'#9'Centro Proceso'#9#9);
  dbgRegistros.ApplySelected;

  dbgRegistros.ColumnByName('UPROID').FooterValue := IntToStr(DM1.cdsSitCre.RecordCount);
  dbgRegistros.ColumnByName('UPRONOM').FooterValue := 'Registros';
  dbgRegistros.RefreshDisplay;
// Fin   HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
end;

procedure TFUgelesRegionesPlanillas.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFUgelesRegionesPlanillas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // Inicio: SPP_201305_ASO
  DM1.cdsUnidadProceso.Close;
  DM1.cdsUnidadPago.Close;
  DM1.cdsUgel.Close;
  DM1.cdsDepartamento.Close;
  DM1.cdsSitCre.Close;
  // Fin: SPP_201305_ASO
end;

procedure TFUgelesRegionesPlanillas.dblcdUniProChange(Sender: TObject);
begin
  // Inicio: SPP_201305_ASO
  DM1.cdsUnidadPago.Filter := '';
  DM1.cdsUnidadPago.Filtered := False;
  DM1.cdsUnidadPago.Filter := 'UPROID='+QuotedStr(dblcdUniPro.Text);
  DM1.cdsUnidadPago.Filtered := True;
  If DM1.cdsUnidadProceso.Locate('UPROID', dblcdUniPro.Text, []) Then
  Begin
    EdtUniProNom.Text := DM1.cdsUnidadProceso.FieldByName('UPRONOM').AsString;
    dblcdUniPag.Clear;
    EdtUniPagNom.Clear;
    dblcdUniGes.Clear;
    EdtUniGesNom.Clear;
  End
  Else
  Begin
    EdtUniProNom.Text := '';
    EdtUniPagNom.Text := '';
    EdtUniGesNom.Text := '';
    dblcdUniPag.Text := '';
    dblcdUniGes.Text := '';
  End;
  // Fin: SPP_201305_ASO
end;

procedure TFUgelesRegionesPlanillas.dblcdUniPagChange(Sender: TObject);
begin
  // Inicio: SPP_201305_ASO
  DM1.cdsUgel.Filter := '';
  DM1.cdsUgel.Filtered := False;
  DM1.cdsUgel.Filter := 'UPROID='+quotedstr(dblcdUniPro.Text)+' AND UPAGOID='+quotedstr(dblcdUniPag.Text);
  DM1.cdsUgel.Filtered := True;
  If DM1.cdsUnidadPago.Locate('UPROID;UPAGOID',VarArrayof([dblcdUniPro.Text,dblcdUniPag.Text]),[]) Then
  Begin
    EdtUniPagNom.Text := DM1.cdsUnidadPago.FieldByName('UPAGONOM').AsString;
    dblcdUniGes.Clear;
    EdtUniGesNom.Clear;
  End
  Else
  Begin
    EdtUniPagNom.Text := '';
    EdtUniGesNom.Text := '';
    dblcdUniGes.Text := '';
  End;
  // Fin: SPP_201305_ASO
end;

procedure TFUgelesRegionesPlanillas.dblcdUniGesChange(Sender: TObject);
begin
  // Inicio: SPP_201305_ASO
  if DM1.cdsUgel.Locate('UPROID;UPAGOID;USEID',VarArrayof([dblcdUniPro.Text,dblcdUniPag.Text, dblcdUniGes.Text]),[]) Then
  Begin
    EdtUniGesNom.Text := DM1.cdsUgel.FieldByName('USENOM').AsString;
  End
  Else
  Begin
    EdtUniGesNom.Text := '';
  End;
  // Fin: SPP_201305_ASO
end;

procedure TFUgelesRegionesPlanillas.dblcdUniProKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = word(13)) Then
    dblcdUniPag.SetFocus;
end;

procedure TFUgelesRegionesPlanillas.dblcdUniPagKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = word(13)) Then
    dblcdUniGes.SetFocus;
end;

procedure TFUgelesRegionesPlanillas.dblcdUniGesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = word(13)) Then
    dblcdcoddep.SetFocus;
end;

procedure TFUgelesRegionesPlanillas.dblcdcoddepChange(Sender: TObject);
begin
  // Inicio: SPP_201305_ASO
  If Length(trim(dblcdcoddep.Text)) = 2 Then
  Begin
    If DM1.cdsDepartamento.Locate('DPTOID', VarArrayof([dblcdcoddep.text]), []) Then
    Begin                                         
      EdtDpto.Text := DM1.cdsDepartamento.FieldByName('DPTODES').AsString;
      Exit;
    End
    Else
    Begin
      EdtDpto.Text := '';
      dblcdcoddep.Text := '';
    End;
  End
  Else
  Begin
    EdtDpto.Text := '';
    dblcdcoddep.Text := '';
  End;
  // Fin: SPP_201305_ASO
end;

procedure TFUgelesRegionesPlanillas.btnAExcelClick(Sender: TObject);
begin
  DM1.HojaExcel('ugel_vs_planilla', dtgData.DataSource, dtgData);
end;

procedure TFUgelesRegionesPlanillas.btnEliminarClick(Sender: TObject);
var
  xSql: string;
begin
  If MessageDlg('¿Está seguro de eliminar este registro?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then
  begin
    Exit;
  end;
  
  Screen.Cursor := crHourGlass;
  try
    xSql := 'DELETE FROM ASO_UGEL_PLA_MAE'
      + ' WHERE CODSEC = ' + DM1.cdsSitCre.FieldByName('CODSEC').AsString;
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  Except
    ShowMessage('No se pudo eliminar el registro, por favor intente nuevamente');
    Screen.Cursor := crDefault;
    Exit;
  End;
  Screen.Cursor := crDefault;
  
  btnMostrarClick(Self);
  ShowMessage('Operación concluida exitosamente');
end;

end.

