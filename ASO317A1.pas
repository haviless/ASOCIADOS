// Inicio: HPP_200914_ASO - SAR2009-0644-B - realizado por DFERNANDEZ
// Memorándum 275-2009-DM-EPS - SAR2009-0644-B - DAD-DF-2009-0048
// Reporte de Estadísticas de Tomas de Foto - A nivel departamento
unit ASO317A1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdblook, Wwdbdlg, Grids, Wwdbigrd, Wwdbgrid, Db,
  ppEndUsr, ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppPrnabl, ppCache, ppParameter, ppVar, Buttons, math;

type
  TFRptEstTomaFotosDpto = class(TForm)
    grpTipoAsociado: TGroupBox;
    rbTodos: TRadioButton;
    rbTipoAsociado: TRadioButton;
    dblcdTipoAsociado: TwwDBLookupComboDlg;
    edtTipoAsociado: TMaskEdit;
    dbgResultado: TwwDBGrid;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppDesigner1: TppDesigner;
    ppParameterList1: TppParameterList;
    btnCerrar: TBitBtn;
    btnImprimir: TBitBtn;
    btnExportar: TBitBtn;
    btnBuscar: TBitBtn;
    ppDBPipeline2: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppDBText9: TppDBText;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppFooterBand1: TppFooterBand;
    ppLabel20: TppLabel;
    ppDBText15: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    procedure rbTodosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure rbTipoAsociadoClick(Sender: TObject);
    procedure dblcdTipoAsociadoChange(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure dbgResultadoDblClick(Sender: TObject);
    procedure LimpiarGrid;
  private
    { Private declarations }
    procedure AlternarTipoAsociado;
  public
    { Public declarations }
  end;

var
  FRptEstTomaFotosDpto: TFRptEstTomaFotosDpto;
  xListaExcel : Array[1..100] of string;
  xNumLista : Integer;

implementation

uses ASODM, ASO317A2;

{$R *.dfm}

procedure TFRptEstTomaFotosDpto.rbTodosClick(Sender: TObject);
begin
  AlternarTipoAsociado;
end;

procedure TFRptEstTomaFotosDpto.AlternarTipoAsociado;
begin
  if rbTodos.Checked then
  begin
    dblcdTipoAsociado.Enabled := false;
    edtTipoAsociado.Enabled   := false;
    dblcdTipoAsociado.Text    := '';
    dblcdTipoAsociado.Color   := clMenuBar;
    edtTipoAsociado.Color     := clMenuBar;
  end
  else
  begin
    dblcdTipoAsociado.Enabled := true;
    edtTipoAsociado.Enabled   := true;
    dblcdTipoAsociado.Color   := clWindow;
    edtTipoAsociado.Color     := clWindow;
  end;
  LimpiarGrid;
end;

procedure TFRptEstTomaFotosDpto.FormCreate(Sender: TObject);
var
  xSql: String;
begin
  xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'', ''CE'', ''CO'') ORDER BY ASOTIPID';
  DM1.cdsTAso.Close;
  DM1.cdsTAso.DataRequest(xSql);
  DM1.cdsTAso.Open;

  dblcdTipoAsociado.LookupField:='';
  dblcdTipoAsociado.LookupTable:=DM1.cdsTAso;
  dblcdTipoAsociado.LookupField:='ASOTIPID';
  dblcdTipoAsociado.Selected.Clear;
  dblcdTipoAsociado.Selected.Add('ASOTIPID'#9'2'#9'Código'#9#9);
  dblcdTipoAsociado.Selected.Add('ASOTIPDES'#9'15'#9'Tipo de Asociado'#9#9);

  AlternarTipoAsociado;
end;

procedure TFRptEstTomaFotosDpto.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
   xLista : integer;
begin
   for xLista:=1 to xNumLista do
   begin
      if FileExists(xListaExcel[xLista]) then
      try
         deletefile(xListaExcel[xLista]);
      except
      end;
   end;
   DM1.cdsTAso.Close;
   DM1.cdsQry1.Close;
   DM1.cdsQry20.Close;
end;

procedure TFRptEstTomaFotosDpto.btnBuscarClick(Sender: TObject);
var
  xSql: String;
  Pob, CantDocentesConFoto, CantDocentesSinFoto: integer;
  PorcDocentesConFoto, PorcDocentesSinFoto: currency;
  TipoAso: String;
begin
  if (rbTipoAsociado.Checked) and ((trim(dblcdTipoAsociado.Text) = '') or (trim(edtTipoAsociado.Text) = '')) then
  begin
    ShowMessage('Seleccione el Tipo de asociado.');
    exit;
  end;

  Screen.Cursor := crHourGlass;
  try
    if rbTodos.Checked then
      TipoAso := 'Todos'
    else
      TipoAso := edtTipoAsociado.Text;

    xSql := 'select '
      + QuotedStr('ESTADISTICAS DE TOMA DE FOTOS POR DEPARTAMENTO') + ' Titulo,'
      + QuotedStr(' ') + ' Parametros,'
      + QuotedStr(TipoAso) + ' TIPOASOCIADO,'
      + QuotedStr(DM1.wUsuario) + ' Usuario,'
      + '    dpt.DPTODES Descripcion,'
      + '    max(dpt.DPTOID) DPTOID,'
      + '    count(1) Pob,'
      + '    sum(case when a.IDIMAGE is not null then 1 else 0 end) CantDocentesConFoto,'
      + '    (sum(case when a.IDIMAGE is not null then 1 else 0 end) / count(1))*100 PorcDocentesConFoto,'
      + '    sum(case when a.IDIMAGE is null then 1 else 0 end) CantDocentesSinFoto,'
      + '    (sum(case when a.IDIMAGE is null then 1 else 0 end) / count(1))*100 PorcDocentesSinFoto '
      + 'from '
      + '    tge158 dpt,'
      + '    apo101 ug,'
      + '    apo201 a '
      + 'where'
      + '    dpt.DPTOID = ug.DPTOID'
      + '    and ug.UPROID = a.UPROID'
      + '    and ug.UPAGOID = a.UPAGOID'
      + '    and ug.USEID = a.USEID';

    if rbTipoAsociado.Checked then
      xSql := xSql + '    and a.ASOTIPID = ' + QuotedStr(dblcdTipoAsociado.Text);

    xSql := xSql + ' group by dpt.DPTODES '
      + ' ORDER BY dpt.DPTODES';

    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;

    TNumericField(DM1.cdsQry1.FieldByName('Pob')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('CantDocentesConFoto')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('PorcDocentesConFoto')).DisplayFormat:='##0.00';
    TNumericField(DM1.cdsQry1.FieldByName('CantDocentesSinFoto')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('PorcDocentesSinFoto')).DisplayFormat:='##0.00';

    dbgResultado.Selected.Clear;
    dbgResultado.Selected.Add('Descripcion'#9'40'#9'Departamento'#9);
    dbgResultado.Selected.Add('Pob'#9'10'#9'Población'#9);
    dbgResultado.Selected.Add('CantDocentesConFoto'#9'10'#9'Cantidad'#9'F'#9'Con Foto'#9);
    dbgResultado.Selected.Add('PorcDocentesConFoto'#9'7'#9'%'#9'F'#9'Con Foto'#9);
    dbgResultado.Selected.Add('CantDocentesSinFoto'#9'10'#9'Cantidad'#9'F'#9'Sin Foto'#9);
    dbgResultado.Selected.Add('PorcDocentesSinFoto'#9'7'#9'%'#9'F'#9'Sin Foto'#9);
    dbgResultado.ApplySelected;

    if DM1.cdsQry1.RecordCount = 0 then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('No existe información para el criterio seleccionado.');
      Exit;
    end;

    CantDocentesConFoto := 0;
    CantDocentesSinFoto := 0;
    DM1.cdsQry1.First;
    while not DM1.cdsQry1.Eof do
    begin
      CantDocentesConFoto := CantDocentesConFoto + DM1.cdsQry1.FieldByName('CantDocentesConFoto').AsInteger;
      CantDocentesSinFoto := CantDocentesSinFoto + DM1.cdsQry1.FieldByName('CantDocentesSinFoto').AsInteger;
      DM1.cdsQry1.Next;
    end;
    Pob := CantDocentesConFoto + CantDocentesSinFoto;

    if Pob > 0 then
    begin
      PorcDocentesConFoto := (CantDocentesConFoto / Pob) * 100;
      PorcDocentesSinFoto := (CantDocentesSinFoto / Pob) * 100;
    end
    else
    begin
      PorcDocentesConFoto := 0;
      PorcDocentesSinFoto := 0;
    end;


    xSql := 'SELECT ' + FloatToStr(PorcDocentesConFoto) + ' PorcDocentesConFoto,'
      + ' ' + FloatToStr(PorcDocentesSinFoto) + ' PorcDocentesSinFoto'
      + ' FROM DUAL';
    DM1.cdsQry20.Close;
    DM1.cdsQry20.DataRequest(xSql);
    DM1.cdsQry20.Open;


    dbgResultado.ColumnByName('Descripcion').FooterValue := 'TOTAL';
    dbgResultado.ColumnByName('Pob').FooterValue := FloatTostrf(Pob, ffnumber, 15, 0);
    dbgResultado.ColumnByName('CantDocentesConFoto').FooterValue := FloatTostrf(CantDocentesConFoto, ffnumber, 15, 0);
    if Pob > 0 then
      dbgResultado.ColumnByName('PorcDocentesConFoto').FooterValue := FloatTostrf(PorcDocentesConFoto, ffnumber, 9, 2)
    else
      dbgResultado.ColumnByName('PorcDocentesConFoto').FooterValue := '0';
    dbgResultado.ColumnByName('CantDocentesSinFoto').FooterValue := FloatTostrf(CantDocentesSinFoto, ffnumber, 15, 0);
    if Pob > 0 then
      dbgResultado.ColumnByName('PorcDocentesSinFoto').FooterValue := FloatTostrf(PorcDocentesSinFoto, ffnumber, 9, 2)
    else
      dbgResultado.ColumnByName('PorcDocentesSinFoto').FooterValue := '0';
    dbgResultado.RefreshDisplay;
  finally
      Screen.Cursor := crDefault;
  end;
end;

procedure TFRptEstTomaFotosDpto.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFRptEstTomaFotosDpto.rbTipoAsociadoClick(Sender: TObject);
begin
  AlternarTipoAsociado;
end;

procedure TFRptEstTomaFotosDpto.dblcdTipoAsociadoChange(Sender: TObject);
begin
  If DM1.cdsTAso.Locate('ASOTIPID',VarArrayof([dblcdTipoAsociado.text]),[]) Then
  begin
    edtTipoAsociado.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').AsString;
  end
  else
  begin
    edtTipoAsociado.Text := '';
  end;
  LimpiarGrid;
end;

procedure TFRptEstTomaFotosDpto.btnExportarClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
   if DM1.cdsQry1.RecordCount <= 0 then
   begin
      ShowMessage('No hay información para Exportar.');
      Exit;
   end;

   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='EstxDpto_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   DM1.ExportaGridExcel(dbgResultado, xArchivo);
   xNumLista := xNumlista+1;
   xListaExcel[xNumLista] := xArchivo+'.slk';
end;

procedure TFRptEstTomaFotosDpto.btnImprimirClick(Sender: TObject);
begin
  if DM1.cdsQry1.RecordCount <= 0 then
    Exit;
  ppReport1.Print;
  ppReport1.Stop;
end;

procedure TFRptEstTomaFotosDpto.dbgResultadoDblClick(Sender: TObject);
begin
  if DM1.cdsQry1.RecordCount <= 0 then
    Exit;
    
  try
    FRptEstTomaFotosUPro := TFRptEstTomaFotosUPro.Create(self);
    FRptEstTomaFotosUPro.xDptoID := DM1.cdsQry1.FieldByName('DPTOID').AsString;
    FRptEstTomaFotosUPro.xDepartamento := DM1.cdsQry1.FieldByName('DESCRIPCION').AsString;
    if rbTodos.Checked then
      FRptEstTomaFotosUPro.xAsoTipID := '%'
    else
      FRptEstTomaFotosUPro.xAsoTipID := dblcdTipoAsociado.Text;
    FRptEstTomaFotosUPro.xTipoAso := DM1.cdsQry1.FieldByName('TIPOASOCIADO').AsString;
    FRptEstTomaFotosUPro.ShowModal;
  finally
    FRptEstTomaFotosUPro.Free;
  end;
end;

procedure TFRptEstTomaFotosDpto.LimpiarGrid;
var
  xSql: String;
begin
  Screen.Cursor := crHourGlass;
  try
    xSql := 'select '
      + QuotedStr('ESTADISTICAS DE TOMA DE FOTOS') + ' Titulo,'
      + QuotedStr(' ') + ' Parametros,'
      + QuotedStr(' ') + ' TIPOASOCIADO,'
      + QuotedStr(DM1.wUsuario) + ' Usuario,'
      + '    dpt.DPTODES Descripcion,'
      + '    max(dpt.DPTOID) DPTOID,'
      + '    count(1) Pob,'
      + '    sum(case when a.IDIMAGE is not null then 1 else 0 end) CantDocentesConFoto,'
      + '    (sum(case when a.IDIMAGE is not null then 1 else 0 end) / count(1))*100 PorcDocentesConFoto,'
      + '    sum(case when a.IDIMAGE is null then 1 else 0 end) CantDocentesSinFoto,'
      + '    (sum(case when a.IDIMAGE is null then 1 else 0 end) / count(1))*100 PorcDocentesSinFoto '
      + 'from '
      + '    tge158 dpt,'
      + '    apo101 ug,'
      + '    apo201 a '
      + 'where'
      + '    1 = 2 and dpt.DPTOID = ug.DPTOID'
      + '    and ug.UPROID = a.UPROID'
      + '    and ug.UPAGOID = a.UPAGOID'
      + '    and ug.USEID = a.USEID'
      + ' group by dpt.DPTODES';

    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;

    dbgResultado.Selected.Clear;
    dbgResultado.Selected.Add('Descripcion'#9'40'#9'Departamento'#9);
    dbgResultado.Selected.Add('Pob'#9'10'#9'Población'#9);
    dbgResultado.Selected.Add('CantDocentesConFoto'#9'10'#9'Cantidad'#9'F'#9'Con Foto'#9);
    dbgResultado.Selected.Add('PorcDocentesConFoto'#9'7'#9'%'#9'F'#9'Con Foto'#9);
    dbgResultado.Selected.Add('CantDocentesSinFoto'#9'10'#9'Cantidad'#9'F'#9'Sin Foto'#9);
    dbgResultado.Selected.Add('PorcDocentesSinFoto'#9'7'#9'%'#9'F'#9'Sin Foto'#9);
    dbgResultado.ApplySelected;

    dbgResultado.ColumnByName('Descripcion').FooterValue := '';
    dbgResultado.ColumnByName('Pob').FooterValue := '';
    dbgResultado.ColumnByName('CantDocentesConFoto').FooterValue := '';
    dbgResultado.ColumnByName('PorcDocentesConFoto').FooterValue := '';
    dbgResultado.ColumnByName('CantDocentesSinFoto').FooterValue := '';
    dbgResultado.ColumnByName('PorcDocentesSinFoto').FooterValue := '';
    dbgResultado.RefreshDisplay;
  finally
      Screen.Cursor := crDefault;
  end;
end;
// Fin: HPP_200914_ASO

end.

