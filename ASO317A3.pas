// Inicio: HPP_200914_ASO - SAR2009-0644-B - realizado por DFERNANDEZ
// Memorándum 275-2009-DM-EPS - SAR2009-0644-B - DAD-DF-2009-0048
// Reporte de Estadísticas de Tomas de Foto - A nivel ugel
unit ASO317A3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppEndUsr, ppParameter, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Db, Buttons;

type
  TFRptEstTomaFotosUgel = class(TForm)
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
    dbgDetxAsoc: TwwDBGrid;
    bbtnExpDet: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure CargarDatos;
    procedure btnExportarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbtnExpDetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xDptoID: String;
    xUPROID: String;
    xDepartamento: String;
    xUnidadProceso: String;
    xAsoTipID: String;
    xTipoAso: String;
  end;

var
  FRptEstTomaFotosUgel: TFRptEstTomaFotosUgel;
  xListaExcel : Array[1..100] of string;
  xNumLista : Integer;

implementation

uses ASODM;

{$R *.dfm}

procedure TFRptEstTomaFotosUgel.FormActivate(Sender: TObject);
begin
  Label1.Caption := 'Departamento: ' + xDepartamento + ', Unidad de Proceso: ' + xUnidadProceso;
  CargarDatos;
end;

procedure TFRptEstTomaFotosUgel.CargarDatos;
var
  xSql: String;
  Pob, CantDocentesConFoto, CantDocentesSinFoto: integer;
  PorcDocentesConFoto, PorcDocentesSinFoto: currency;
begin
  Screen.Cursor := crHourGlass;
  try
    xSql := 'select '
      + QuotedStr('ESTADISTICAS DE TOMA DE FOTOS POR UGEL') + ' Titulo,'
      + QuotedStr('Departamento: ' + xDepartamento + ', Unidad de Proceso: ' + xUnidadProceso) + ' Parametros,'
      + QuotedStr(DM1.wUsuario) + ' Usuario,'
      + QuotedStr(xTipoAso) + ' TIPOASOCIADO,'
      + '    max(ug.USEID) USEID,'
      + '    ug.USENOM Descripcion,'
      + '    count(1) Pob,'
      + '    sum(case when a.IDIMAGE is not null then 1 else 0 end) CantDocentesConFoto,'
      + '    (sum(case when a.IDIMAGE is not null then 1 else 0 end) / count(1))*100 PorcDocentesConFoto,'
      + '    sum(case when a.IDIMAGE is null then 1 else 0 end) CantDocentesSinFoto,'
      + '    (sum(case when a.IDIMAGE is null then 1 else 0 end) / count(1))*100 PorcDocentesSinFoto '
      + 'from '
      + '    apo101 ug,'
      + '    apo201 a '
      + 'where '
      + '    ug.UPROID = a.UPROID '
      + '    and ug.UPAGOID = a.UPAGOID '
      + '    and ug.USEID = a.USEID '
      + '    and ug.DPTOID = ' + QuotedStr(xDptoID)
      + '    and ug.UPROID = ' + QuotedStr(xUPROID);

    if (xAsoTipID <> '%') and ((xAsoTipID <> '')) then
      xSql := xSql + ' and a.ASOTIPID = ' + QuotedStr(xAsoTipID);

    xSql := xSql + ' group by ug.USENOM '
      + ' ORDER BY ug.USENOM';

    DM1.cdsQry3.Close;
    DM1.cdsQry3.DataRequest(xSql);
    DM1.cdsQry3.Open;

    TNumericField(DM1.cdsQry3.FieldByName('Pob')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry3.FieldByName('CantDocentesConFoto')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry3.FieldByName('PorcDocentesConFoto')).DisplayFormat:='##0.00';
    TNumericField(DM1.cdsQry3.FieldByName('CantDocentesSinFoto')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry3.FieldByName('PorcDocentesSinFoto')).DisplayFormat:='##0.00';

    dbgResultado.Selected.Clear;
    dbgResultado.Selected.Add('Descripcion'#9'40'#9'UGEL'#9);
    dbgResultado.Selected.Add('Pob'#9'10'#9'Población'#9);
    dbgResultado.Selected.Add('CantDocentesConFoto'#9'10'#9'Cantidad'#9'F'#9'Con Foto'#9);
    dbgResultado.Selected.Add('PorcDocentesConFoto'#9'7'#9'%'#9'F'#9'Con Foto'#9);
    dbgResultado.Selected.Add('CantDocentesSinFoto'#9'10'#9'Cantidad'#9'F'#9'Sin Foto'#9);
    dbgResultado.Selected.Add('PorcDocentesSinFoto'#9'7'#9'%'#9'F'#9'Sin Foto'#9);
    dbgResultado.ApplySelected;

    if DM1.cdsQry3.RecordCount = 0 then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('No existe información para el criterio seleccionado.');
      Exit;
    end;

    CantDocentesConFoto := 0;
    CantDocentesSinFoto := 0;
    DM1.cdsQry3.First;
    while not DM1.cdsQry3.Eof do
    begin
      CantDocentesConFoto := CantDocentesConFoto + DM1.cdsQry3.FieldByName('CantDocentesConFoto').AsInteger;
      CantDocentesSinFoto := CantDocentesSinFoto + DM1.cdsQry3.FieldByName('CantDocentesSinFoto').AsInteger;
      DM1.cdsQry3.Next;
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
    DM1.cdsQry22.Close;
    DM1.cdsQry22.DataRequest(xSql);
    DM1.cdsQry22.Open;


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

procedure TFRptEstTomaFotosUgel.btnExportarClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
   if DM1.cdsQry3.RecordCount <= 0 then
   begin
      ShowMessage('No hay información para Exportar.');
      Exit;
   end;

   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='EstxUGEL_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);

   DM1.ExportaGridExcel(dbgResultado, xArchivo);
   xNumLista := xNumlista+1;
   xListaExcel[xNumLista] := xArchivo+'.slk';
end;

procedure TFRptEstTomaFotosUgel.btnImprimirClick(Sender: TObject);
begin
  if DM1.cdsQry3.RecordCount <= 0 then
    Exit;
  ppReport1.Print;
  ppReport1.Stop;
end;

procedure TFRptEstTomaFotosUgel.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFRptEstTomaFotosUgel.FormClose(Sender: TObject;
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
   DM1.cdsQry3.Close;
   DM1.cdsQry4.IndexfieldNames:='';
   DM1.cdsQry4.Close;
   DM1.cdsQry22.Close;
end;

procedure TFRptEstTomaFotosUgel.bbtnExpDetClick(Sender: TObject);
var
   xSQL : String;
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
   xSQL := 'select ''DETALLE DE ESTADISTICAS DE TOMA DE FOTOS POR UGEL'' Titulo, '
                    + QuotedStr('Departamento: ' + xDepartamento + ', Unidad de Proceso: ' + xUnidadProceso) + ' Parametros, '
                    + QuotedStr(DM1.wUsuario) + ' Usuario, '
                    + QuotedStr(xTipoAso) + ' TIPOASOCIADO, '
                    +'A.UPROID, UPRO.UPRONOM, A.UPAGOID, UPAG.UPAGONOM, A.USEID, A.ASOID, A.ASOCODMOD, A.ASOAPENOMDNI, '
                    +'UG.USENOM, A.IDIMAGE, trim(UPRO.UPRONOM)||''-''||trim(UPAG.UPAGONOM)||''-''||trim(UG.USENOM) QUIEBRE, '
                    +'case when A.IDIMAGE is null then 1 else 0 end SIN_IMAGEN, '
                    +'case when A.IDIMAGE is not null then 1 else 0 end CON_IMAGEN, '
                    +'0 TOTALES '
          +'from APO101 UG, APO201 A, APO102 UPRO, APO103 UPAG '
          +'where UPRO.UPROID = A.UPROID '
          +'  and UPAG.UPROID = A.UPROID and UPAG.UPAGOID = A.UPAGOID '
          +'  and UG.UPROID = A.UPROID and UG.UPAGOID = A.UPAGOID and UG.USEID = A.USEID '
          +'  and ug.DPTOID = ' + QuotedStr(xDptoID)
          +'  and ug.UPROID = ' + QuotedStr(xUPROID);
   if (xAsoTipID <> '%') and ((xAsoTipID <> '')) then
      xSql := xSql + ' and a.ASOTIPID = ' + QuotedStr(xAsoTipID);
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSql);
   DM1.cdsQry4.Open;
   DM1.cdsQry4.IndexfieldNames := 'QUIEBRE;ASOAPENOMDNI';

   if DM1.cdsQry4.RecordCount = 0 then
   begin
      Screen.Cursor := crDefault;
      ShowMessage('No existe información para el criterio seleccionado.');
      Exit;
   end;

   TNumericField(DM1.cdsQry4.FieldByName('SIN_IMAGEN')).DisplayFormat:='###,###,##0';
   TNumericField(DM1.cdsQry4.FieldByName('CON_IMAGEN')).DisplayFormat:='###,###,##0';
   TNumericField(DM1.cdsQry4.FieldByName('TOTALES')).DisplayFormat:='###,###,##0';

   dbgDetxAsoc.Selected.Clear;
   dbgDetxAsoc.Selected.Add('QUIEBRE'#9'40'#9'Quiebre'#9);
   dbgDetxAsoc.Selected.Add('UPROID'#9'10'#9'U.Proceso'#9);
   dbgDetxAsoc.Selected.Add('UPRONOM'#9'10'#9'U.Proceso'#9);
   dbgDetxAsoc.Selected.Add('UPAGOID'#9'10'#9'U.Pago'#9);
   dbgDetxAsoc.Selected.Add('UPAGONOM'#9'10'#9'U.Pago'#9);
   dbgDetxAsoc.Selected.Add('USEID'#9'10'#9'U.Gestión'#9);
   dbgDetxAsoc.Selected.Add('USENOM'#9'10'#9'U.Gestión'#9);
   dbgDetxAsoc.Selected.Add('ASOID'#9'10'#9'Id.Asociado'#9);
   dbgDetxAsoc.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Modular'#9);
   dbgDetxAsoc.Selected.Add('ASOAPENOMDNI'#9'50'#9'Asociado'#9);
   dbgDetxAsoc.Selected.Add('CON_IMAGEN'#9'10'#9'Con Foto'#9);
   dbgDetxAsoc.Selected.Add('SIN_IMAGEN'#9'10'#9'Sin Foto'#9);
   dbgDetxAsoc.Selected.Add('TOTALES'#9'10'#9'Total'#9);
   dbgDetxAsoc.ApplySelected;

   DM1.cdsQry4.First;
   while not DM1.cdsQry4.Eof do
   begin
      DM1.cdsQry4.Edit;
      DM1.cdsQry4.FieldByName('TOTALES').AsInteger := DM1.cdsQry4.FieldByName('SIN_IMAGEN').AsInteger+DM1.cdsQry4.FieldByName('CON_IMAGEN').AsInteger;
      DM1.cdsQry4.Next;
   end;
   dbgDetxAsoc.DataSource := DM1.dsQry4;
   dbgDetxAsoc.RefreshDisplay;
   dbgDetxAsoc.Visible := True;
   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='DetxUGEL_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   DM1.ExportaGridExcel(dbgDetxAsoc, xArchivo);
   dbgDetxAsoc.Visible := False;
   xNumLista := xNumlista+1;
   xListaExcel[xNumLista] := xArchivo+'.slk';
end;
// Fin: HPP_200914_ASO

end.
