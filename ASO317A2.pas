// Inicio: HPP_200914_ASO - SAR2009-0644-B - realizado por DFERNANDEZ
// Memorándum 275-2009-DM-EPS - SAR2009-0644-B - DAD-DF-2009-0048
// Reporte de Estadísticas de Tomas de Foto - A nivel unidad de proceso
unit ASO317A2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ppEndUsr, ppParameter,
  ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, Db, Buttons;

type
  TFRptEstTomaFotosUPro = class(TForm)
    dbgResultado: TwwDBGrid;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDesigner1: TppDesigner;
    Label1: TLabel;
    btnCerrar: TBitBtn;
    btnImprimir: TBitBtn;
    btnExportar: TBitBtn;
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
    procedure FormActivate(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure CargarDatos;
    procedure btnCerrarClick(Sender: TObject);
    procedure dbgResultadoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    xDptoID: String;
    xDepartamento: String;
    xAsoTipID: String;
    xTipoAso: String;
  end;

var
  FRptEstTomaFotosUPro: TFRptEstTomaFotosUPro;
  xListaExcel : Array[1..100] of string;
  xNumLista : Integer;

implementation

uses ASODM, ASO317A3;

{$R *.dfm}

procedure TFRptEstTomaFotosUPro.FormActivate(Sender: TObject);
begin
  Label1.Caption := 'Departamento: ' + xDepartamento;
  CargarDatos;
end;

procedure TFRptEstTomaFotosUPro.CargarDatos;
var
  xSql: String;
  Pob, CantDocentesConFoto, CantDocentesSinFoto: integer;
  PorcDocentesConFoto, PorcDocentesSinFoto: currency;
begin
  Screen.Cursor := crHourGlass;
  try
    xSql := 'select '
      + QuotedStr('ESTADISTICAS DE TOMA DE FOTOS POR U.PROCESO') + ' Titulo,'
      + QuotedStr('Departamento: ' + xDepartamento) + ' Parametros,'
      + QuotedStr(DM1.wUsuario) + ' Usuario,'
      + QuotedStr(xTipoAso) + ' TIPOASOCIADO,'
      + '    max(upro.UPROID) UPROID,'
      + '    upro.UPRONOM Descripcion,'
      + '    count(1) Pob,'
      + '    sum(case when a.IDIMAGE is not null then 1 else 0 end) CantDocentesConFoto,'
      + '    (sum(case when a.IDIMAGE is not null then 1 else 0 end) / count(1))*100 PorcDocentesConFoto,'
      + '    sum(case when a.IDIMAGE is null then 1 else 0 end) CantDocentesSinFoto,'
      + '    (sum(case when a.IDIMAGE is null then 1 else 0 end) / count(1))*100 PorcDocentesSinFoto '
      + 'from '
      + '    apo102 upro,'
      + '    apo101 ug,'
      + '    apo201 a '
      + 'where '
      + '    upro.UPROID = ug.UPROID'
      + '    and ug.UPROID = a.UPROID'
      + '    and ug.UPAGOID = a.UPAGOID'
      + '    and ug.USEID = a.USEID'
      + '    and ug.DPTOID = ' + QuotedStr(xDptoID);

    if (xAsoTipID <> '%') and ((xAsoTipID <> '')) then
      xSql := xSql + '    and a.ASOTIPID = ' + QuotedStr(xAsoTipID);

    xSql := xSql + ' group by upro.UPRONOM '
      + ' ORDER BY upro.UPRONOM';

    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;

    TNumericField(DM1.cdsQry2.FieldByName('Pob')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry2.FieldByName('CantDocentesConFoto')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry2.FieldByName('PorcDocentesConFoto')).DisplayFormat:='##0.00';
    TNumericField(DM1.cdsQry2.FieldByName('CantDocentesSinFoto')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry2.FieldByName('PorcDocentesSinFoto')).DisplayFormat:='##0.00';

    dbgResultado.Selected.Clear;
    dbgResultado.Selected.Add('Descripcion'#9'40'#9'Unidad de Proceso'#9);
    dbgResultado.Selected.Add('Pob'#9'10'#9'Población'#9);
    dbgResultado.Selected.Add('CantDocentesConFoto'#9'10'#9'Cantidad'#9'F'#9'Con Foto'#9);
    dbgResultado.Selected.Add('PorcDocentesConFoto'#9'7'#9'%'#9'F'#9'Con Foto'#9);
    dbgResultado.Selected.Add('CantDocentesSinFoto'#9'10'#9'Cantidad'#9'F'#9'Sin Foto'#9);
    dbgResultado.Selected.Add('PorcDocentesSinFoto'#9'7'#9'%'#9'F'#9'Sin Foto'#9);
    dbgResultado.ApplySelected;

    if DM1.cdsQry2.RecordCount = 0 then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('No existe información para el criterio seleccionado.');
      Exit;
    end;

    CantDocentesConFoto := 0;
    CantDocentesSinFoto := 0;
    DM1.cdsQry2.First;
    while not DM1.cdsQry2.Eof do
    begin
      CantDocentesConFoto := CantDocentesConFoto + DM1.cdsQry2.FieldByName('CantDocentesConFoto').AsInteger;
      CantDocentesSinFoto := CantDocentesSinFoto + DM1.cdsQry2.FieldByName('CantDocentesSinFoto').AsInteger;
      DM1.cdsQry2.Next;
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
    DM1.cdsQry21.Close;
    DM1.cdsQry21.DataRequest(xSql);
    DM1.cdsQry21.Open;


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

procedure TFRptEstTomaFotosUPro.btnExportarClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
   if DM1.cdsQry2.RecordCount <= 0 then
   begin
      ShowMessage('No hay información para Exportar.');
      Exit;
   end;

   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='EstPorUProceso_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   DM1.ExportaGridExcel(dbgResultado, xArchivo);
   xNumLista := xNumlista+1;
   xListaExcel[xNumLista] := xArchivo+'.slk';
end;

procedure TFRptEstTomaFotosUPro.btnImprimirClick(Sender: TObject);
begin
  if DM1.cdsQry2.RecordCount <= 0 then
    Exit;
  ppReport1.Print;
  ppReport1.Stop;
end;

procedure TFRptEstTomaFotosUPro.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFRptEstTomaFotosUPro.dbgResultadoDblClick(Sender: TObject);
begin
  if DM1.cdsQry2.RecordCount <= 0 then
    Exit;

  try
    FRptEstTomaFotosUgel := TFRptEstTomaFotosUgel.Create(self);
    FRptEstTomaFotosUgel.xDptoID := xDptoID;
    FRptEstTomaFotosUgel.xUPROID := DM1.cdsQry2.FieldByName('UPROID').AsString;
    FRptEstTomaFotosUgel.xDepartamento := xDepartamento;
    FRptEstTomaFotosUgel.xUnidadProceso := DM1.cdsQry2.FieldByName('DESCRIPCION').AsString;
    FRptEstTomaFotosUgel.xAsoTipID := xAsoTipID;
    FRptEstTomaFotosUgel.xTipoAso := DM1.cdsQry2.FieldByName('TIPOASOCIADO').AsString;
    FRptEstTomaFotosUgel.ShowModal;
  finally
    FRptEstTomaFotosUgel.Free;
  end;
end;

procedure TFRptEstTomaFotosUPro.FormClose(Sender: TObject;
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
   DM1.cdsQry2.Close;
   DM1.cdsQry21.Close;
end;
// Fin: HPP_200914_ASO

end.

