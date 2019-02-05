// Inicio: HPP_200914_ASO - SAR2009-0644-B - realizado por DFERNANDEZ
// Memorándum 275-2009-DM-EPS - SAR2009-0644-B - DAD-DF-2009-0048
// Reporte de Estadísticas de Tomas de Foto - A nivel mensual
unit ASO317B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppEndUsr, ppParameter, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, wwdblook, Wwdbdlg, DBCtrls,
  Db, Buttons;

type
  TFRptEstTomaFotosOfides = class(TForm)
    grpTipoAsociado: TGroupBox;
    rbTodos: TRadioButton;
    rbTipoAsociado: TRadioButton;
    dblcdTipoAsociado: TwwDBLookupComboDlg;
    edtTipoAsociado: TMaskEdit;
    dbgResultado: TwwDBGrid;
    ppDBPipeline1: TppDBPipeline;
    ppReport1: TppReport;
    ppParameterList1: TppParameterList;
    ppDesigner1: TppDesigner;
    dblcdAno: TwwDBLookupComboDlg;
    btnCerrar: TBitBtn;
    btnImprimir: TBitBtn;
    btnExportar: TBitBtn;
    btnBuscar: TBitBtn;
    ppDBPipeline2: TppDBPipeline;
    Label2: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape14: TppShape;
    ppShape13: TppShape;
    ppShape12: TppShape;
    ppShape11: TppShape;
    ppShape10: TppShape;
    ppShape9: TppShape;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppShape3: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppShape4: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText14: TppDBText;
    ppLine2: TppLine;
    ppLabel21: TppLabel;
    ppDBText17: TppDBText;
    ppLabel22: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine3: TppLine;
    ppDBText16: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppLabel20: TppLabel;
    ppDBText15: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel7: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine1: TppLine;
    ppDBCalc13: TppDBCalc;
    procedure FormCreate(Sender: TObject);
    procedure AlternarTipoAsociado;
    procedure rbTodosClick(Sender: TObject);
    procedure rbTipoAsociadoClick(Sender: TObject);
    procedure dblcdTipoAsociadoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure LimpiarGrid;
    procedure dblcdAnoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRptEstTomaFotosOfides: TFRptEstTomaFotosOfides;
  xListaExcel : Array[1..100] of string;
  xNumLista : Integer;

implementation

uses ASODM;

{$R *.dfm}

procedure TFRptEstTomaFotosOfides.FormCreate(Sender: TObject);
var
  xSql: String;
begin
  xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'', ''CE'', ''CO'')ORDER BY ASOTIPID';
  DM1.cdsTAso.Close;
  DM1.cdsTAso.DataRequest(xSql);
  DM1.cdsTAso.Open;

  dblcdTipoAsociado.LookupField:='';
  dblcdTipoAsociado.LookupTable:=DM1.cdsTAso;
  dblcdTipoAsociado.LookupField:='ASOTIPID';
  dblcdTipoAsociado.Selected.Clear;
  dblcdTipoAsociado.Selected.Add('ASOTIPID'#9'2'#9'Código'#9#9);
  dblcdTipoAsociado.Selected.Add('ASOTIPDES'#9'15'#9'Tipo de Asociado'#9#9);

  xSql := 'select distinct substr(fec_foto,1,4) ANO from password where fec_foto is not null order by Ano desc';
  DM1.cdsQry2.Close;
  DM1.cdsQry2.DataRequest(xSql);
  DM1.cdsQry2.Open;

  dblcdAno.LookupField:='';
  dblcdAno.LookupTable:=DM1.cdsQry2;
  dblcdAno.LookupField:='ANO';
  dblcdAno.Selected.Clear;
  dblcdAno.Selected.Add('ANO'#9'6'#9'Año'#9#9);

  AlternarTipoAsociado;

  dblcdAno.Text := copy(DateToStr(DM1.FechaSys()), 7, 4);
end;

procedure TFRptEstTomaFotosOfides.AlternarTipoAsociado;
begin
  if rbTodos.Checked then
  begin
    dblcdTipoAsociado.Enabled := false;
    edtTipoAsociado.Enabled := false;
    dblcdTipoAsociado.Text := '';
    dblcdTipoAsociado.Color := clMenuBar;
    edtTipoAsociado.Color := clMenuBar;
  end
  else
  begin
    dblcdTipoAsociado.Enabled := true;
    edtTipoAsociado.Enabled := true;
    dblcdTipoAsociado.Color := clWindow;
    edtTipoAsociado.Color := clWindow;
  end;
  LimpiarGrid;
end;

procedure TFRptEstTomaFotosOfides.rbTodosClick(Sender: TObject);
begin
  AlternarTipoAsociado;
end;

procedure TFRptEstTomaFotosOfides.rbTipoAsociadoClick(Sender: TObject);
begin
  AlternarTipoAsociado;
end;

procedure TFRptEstTomaFotosOfides.dblcdTipoAsociadoChange(Sender: TObject);
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

procedure TFRptEstTomaFotosOfides.FormClose(Sender: TObject;
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
end;

procedure TFRptEstTomaFotosOfides.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFRptEstTomaFotosOfides.btnBuscarClick(Sender: TObject);
var
  xSql, xTipoAsociado: String;
  ene,feb,mar,abr,may,jun,jul,ago,seti,oct,nov,dic,xTotal: integer;
begin
  if (rbTipoAsociado.Checked) and ((trim(dblcdTipoAsociado.Text) = '') or (trim(edtTipoAsociado.Text) = '')) then
  begin
    ShowMessage('Seleccione el Tipo de asociado.');
    exit;
  end;

  if rbTodos.Checked then
     xTipoAsociado := 'TODOS'
  else
     xTipoAsociado := uppercase(edtTipoAsociado.Text);

  if trim(dblcdAno.Text) = '' then
  begin
    ShowMessage('Seleccione el Año.');
    exit;
  end;

  Screen.Cursor := crHourGlass;
  try
    xSql := 'select '
      + quotedstr(xTipoAsociado)+ 'TIPOASOCIADO, '
      + QuotedStr(DM1.wUsuario) + ' USUARIO,'
      + QuotedStr(dblcdAno.Text) + ' ANO,'
      + '    ofi.OFDESNOM OFIDES,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''01'' THEN 1 ELSE 0 END) ENE,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''02'' THEN 1 ELSE 0 END) FEB,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''03'' THEN 1 ELSE 0 END) MAR,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''04'' THEN 1 ELSE 0 END) ABR,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''05'' THEN 1 ELSE 0 END) MAY,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''06'' THEN 1 ELSE 0 END) JUN,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''07'' THEN 1 ELSE 0 END) JUL,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''08'' THEN 1 ELSE 0 END) AGO,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''09'' THEN 1 ELSE 0 END) SETI,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''10'' THEN 1 ELSE 0 END) OCT,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''11'' THEN 1 ELSE 0 END) NOV,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''12'' THEN 1 ELSE 0 END) DIC,'
      + '    sum(1) TOTAL '
      + 'from'
      + '    apo110 ofi,'
      + '    password p,'
      + '    apo201 a '
      + 'where'
      + '    ofi.OFDESID = p.OFDESID_FOTO'
      + '    and p.ASOID = a.ASOID'
      + '    and substr(p.FEC_FOTO, 1, 4) = ' + QuotedStr(dblcdAno.Text);

    if rbTipoAsociado.Checked then
      xSql := xSql + '    and a.ASOTIPID = ' + QuotedStr(dblcdTipoAsociado.Text);

    xSql := xSql + ' group by ofi.OFDESNOM '
      + ' ORDER BY ofi.OFDESNOM';

    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;

    TNumericField(DM1.cdsQry1.FieldByName('ENE')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('FEB')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('MAR')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('ABR')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('MAY')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('JUN')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('JUL')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('AGO')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('SETI')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('OCT')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('NOV')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('DIC')).DisplayFormat:='###,###,##0';
    TNumericField(DM1.cdsQry1.FieldByName('TOTAL')).DisplayFormat:='###,###,##0';

    dbgResultado.Selected.Clear;
    dbgResultado.Selected.Add('OFIDES'#9'32'#9'OFIDES/AGENCIA'#9);
    dbgResultado.Selected.Add('ENE'#9'7'#9'ENE'#9);
    dbgResultado.Selected.Add('FEB'#9'7'#9'FEB'#9);
    dbgResultado.Selected.Add('MAR'#9'7'#9'MAR'#9);
    dbgResultado.Selected.Add('ABR'#9'7'#9'ABR'#9);
    dbgResultado.Selected.Add('MAY'#9'7'#9'MAY'#9);
    dbgResultado.Selected.Add('JUN'#9'7'#9'JUN'#9);
    dbgResultado.Selected.Add('JUL'#9'7'#9'JUL'#9);
    dbgResultado.Selected.Add('AGO'#9'7'#9'AGO'#9);
    dbgResultado.Selected.Add('SETI'#9'7'#9'SET'#9);
    dbgResultado.Selected.Add('OCT'#9'7'#9'OCT'#9);
    dbgResultado.Selected.Add('NOV'#9'7'#9'NOV'#9);
    dbgResultado.Selected.Add('DIC'#9'7'#9'DIC'#9);
    dbgResultado.Selected.Add('TOTAL'#9'7'#9'TOTAL'#9);
    dbgResultado.ApplySelected;

    if DM1.cdsQry1.RecordCount = 0 then
    begin
      Screen.Cursor := crDefault;
      ShowMessage('No existe información para el criterio seleccionado.');
      Exit;
    end;

    ene := 0;
    feb := 0;
    mar := 0;
    abr := 0;
    may := 0;
    jun := 0;
    jul := 0;
    ago := 0;
    seti := 0;
    oct := 0;
    nov := 0;
    dic := 0;
    xTotal := 0;
    DM1.cdsQry1.First;
    while not DM1.cdsQry1.Eof do
    begin
      ene := ene + DM1.cdsQry1.FieldByName('ENE').AsInteger;
      feb := feb + DM1.cdsQry1.FieldByName('FEB').AsInteger;
      mar := mar + DM1.cdsQry1.FieldByName('MAR').AsInteger;
      abr := abr + DM1.cdsQry1.FieldByName('ABR').AsInteger;
      may := may + DM1.cdsQry1.FieldByName('MAY').AsInteger;
      jun := jun + DM1.cdsQry1.FieldByName('JUN').AsInteger;
      jul := jul + DM1.cdsQry1.FieldByName('JUL').AsInteger;
      ago := ago + DM1.cdsQry1.FieldByName('AGO').AsInteger;
      seti := seti + DM1.cdsQry1.FieldByName('SETI').AsInteger;
      oct := oct + DM1.cdsQry1.FieldByName('OCT').AsInteger;
      nov := nov + DM1.cdsQry1.FieldByName('NOV').AsInteger;
      dic := dic + DM1.cdsQry1.FieldByName('DIC').AsInteger;
      xTotal := xTotal + DM1.cdsQry1.FieldByName('TOTAL').AsInteger;
      DM1.cdsQry1.Next;
    end;

    dbgResultado.ColumnByName('OFIDES').FooterValue := 'TOTAL';
    dbgResultado.ColumnByName('ENE').FooterValue := FloatTostrf(ene, ffnumber, 15, 0);
    dbgResultado.ColumnByName('FEB').FooterValue := FloatTostrf(feb, ffnumber, 15, 0);
    dbgResultado.ColumnByName('MAR').FooterValue := FloatTostrf(mar, ffnumber, 15, 0);
    dbgResultado.ColumnByName('ABR').FooterValue := FloatTostrf(abr, ffnumber, 15, 0);
    dbgResultado.ColumnByName('MAY').FooterValue := FloatTostrf(may, ffnumber, 15, 0);
    dbgResultado.ColumnByName('JUN').FooterValue := FloatTostrf(jun, ffnumber, 15, 0);
    dbgResultado.ColumnByName('JUL').FooterValue := FloatTostrf(jul, ffnumber, 15, 0);
    dbgResultado.ColumnByName('AGO').FooterValue := FloatTostrf(ago, ffnumber, 15, 0);
    dbgResultado.ColumnByName('SETI').FooterValue := FloatTostrf(seti, ffnumber, 15, 0);
    dbgResultado.ColumnByName('OCT').FooterValue := FloatTostrf(oct, ffnumber, 15, 0);
    dbgResultado.ColumnByName('NOV').FooterValue := FloatTostrf(nov, ffnumber, 15, 0);
    dbgResultado.ColumnByName('DIC').FooterValue := FloatTostrf(dic, ffnumber, 15, 0);
    dbgResultado.ColumnByName('TOTAL').FooterValue := FloatTostrf(xTotal, ffnumber, 15, 0);
    dbgResultado.RefreshDisplay;
  finally
      Screen.Cursor := crDefault;
  end;
end;

procedure TFRptEstTomaFotosOfides.btnImprimirClick(Sender: TObject);
begin
   if DM1.cdsQry1.RecordCount <= 0 then
      Exit;
   ppReport1.Print;
   ppReport1.Stop;
end;

procedure TFRptEstTomaFotosOfides.btnExportarClick(Sender: TObject);
var
   xArchivo : String;
   xAno, xMes, xDia : word;
begin
   if DM1.cdsQry1.RecordCount <= 0 then
   begin
      ShowMessage('No hay registros para Exportar ');
      Exit;
   end;

   decodedate(DM1.FechaSys,xAno,xMes,xDia);
   xArchivo:='EstPorOfides_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
   xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);
   DM1.ExportaGridExcel(dbgResultado, xArchivo);
   xNumLista := xNumlista+1;
   xListaExcel[xNumLista] := xArchivo+'.slk';
end;

procedure TFRptEstTomaFotosOfides.LimpiarGrid;
var
  xSql: String;
begin
  Screen.Cursor := crHourGlass;
  try
    xSql := 'select '
      + QuotedStr(DM1.wUsuario) + ' USUARIO,'
      + QuotedStr(dblcdAno.Text) + ' ANO,'
      + '    ofi.OFDESNOM OFIDES,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''01'' THEN 1 ELSE 0 END) ENE,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''02'' THEN 1 ELSE 0 END) FEB,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''03'' THEN 1 ELSE 0 END) MAR,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''04'' THEN 1 ELSE 0 END) ABR,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''05'' THEN 1 ELSE 0 END) MAY,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''06'' THEN 1 ELSE 0 END) JUN,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''07'' THEN 1 ELSE 0 END) JUL,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''08'' THEN 1 ELSE 0 END) AGO,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''09'' THEN 1 ELSE 0 END) SETI,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''10'' THEN 1 ELSE 0 END) OCT,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''11'' THEN 1 ELSE 0 END) NOV,'
      + '    sum(case substr(p.FEC_FOTO, 6, 2) WHEN ''12'' THEN 1 ELSE 0 END) DIC,'
      + '    sum(1) TOTAL '
      + 'from'
      + '    apo110 ofi,'
      + '    password p,'
      + '    apo201 a '
      + 'where'
      + '    1 = 2 and ofi.OFDESID = p.OFDESID_FOTO'
      + '    and p.ASOID = a.ASOID'
      + ' group by ofi.OFDESNOM';

    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;

    dbgResultado.Selected.Clear;
    dbgResultado.Selected.Add('OFIDES'#9'32'#9'OFIDES/AGENCIA'#9);
    dbgResultado.Selected.Add('ENE'#9'7'#9'ENE'#9);
    dbgResultado.Selected.Add('FEB'#9'7'#9'FEB'#9);
    dbgResultado.Selected.Add('MAR'#9'7'#9'MAR'#9);
    dbgResultado.Selected.Add('ABR'#9'7'#9'ABR'#9);
    dbgResultado.Selected.Add('MAY'#9'7'#9'MAY'#9);
    dbgResultado.Selected.Add('JUN'#9'7'#9'JUN'#9);
    dbgResultado.Selected.Add('JUL'#9'7'#9'JUL'#9);
    dbgResultado.Selected.Add('AGO'#9'7'#9'AGO'#9);
    dbgResultado.Selected.Add('SETI'#9'7'#9'SET'#9);
    dbgResultado.Selected.Add('OCT'#9'7'#9'OCT'#9);
    dbgResultado.Selected.Add('NOV'#9'7'#9'NOV'#9);
    dbgResultado.Selected.Add('DIC'#9'7'#9'DIC'#9);
    dbgResultado.Selected.Add('TOTAL'#9'7'#9'TOTAL'#9);
    dbgResultado.ApplySelected;

    dbgResultado.ColumnByName('OFIDES').FooterValue := '';
    dbgResultado.ColumnByName('ENE').FooterValue := '';
    dbgResultado.ColumnByName('FEB').FooterValue := '';
    dbgResultado.ColumnByName('MAR').FooterValue := '';
    dbgResultado.ColumnByName('ABR').FooterValue := '';
    dbgResultado.ColumnByName('MAY').FooterValue := '';
    dbgResultado.ColumnByName('JUN').FooterValue := '';
    dbgResultado.ColumnByName('JUL').FooterValue := '';
    dbgResultado.ColumnByName('AGO').FooterValue := '';
    dbgResultado.ColumnByName('SETI').FooterValue := '';
    dbgResultado.ColumnByName('OCT').FooterValue := '';
    dbgResultado.ColumnByName('NOV').FooterValue := '';
    dbgResultado.ColumnByName('DIC').FooterValue := '';
    dbgResultado.ColumnByName('TOTAL').FooterValue := '';
    dbgResultado.RefreshDisplay;
  finally
      Screen.Cursor := crDefault;
  end;
end;

procedure TFRptEstTomaFotosOfides.dblcdAnoChange(Sender: TObject);
begin
  LimpiarGrid;
end;
// Fin: HPP_200914_ASO

end.

