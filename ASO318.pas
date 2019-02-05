// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Reporte de fallecidos por fecha de fallecimiento
unit ASO318;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Buttons, Grids, Wwdbigrd, Wwdbgrid,
  DBGrids;

type
  TFRepFallecidos = class(TForm)
    grpPeriodo: TGroupBox;
    lblDesde: TLabel;
    dtFechaDesde: TwwDBDateTimePicker;
    lblHasta: TLabel;
    dtFechaHasta: TwwDBDateTimePicker;
    btnBuscar: TBitBtn;
    dbgFallecidos: TwwDBGrid;
    btnCerrar: TBitBtn;
    btnExcel: TBitBtn;
    dtgData: TDBGrid;
    chkSinFecha: TCheckBox;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure dtFechaDesdeChange(Sender: TObject);
    procedure dtFechaHastaChange(Sender: TObject);
    procedure chkSinFechaClick(Sender: TObject);
  // inicio: HPP_201003_ASO
  // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
    procedure dbgFallecidosTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  // Fin: HPP_201003_ASO
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Limpiar;
  end;

var
  FRepFallecidos: TFRepFallecidos;

implementation

uses ASODM;

{$R *.dfm}

procedure TFRepFallecidos.FormCreate(Sender: TObject);
begin
  dtFechaDesde.Date := DM1.FechaSys - 30;
  dtFechaHasta.Date := DM1.FechaSys;

  Limpiar;
end;

procedure TFRepFallecidos.btnBuscarClick(Sender: TObject);
var
  xSql : String;
  xFila : Integer;
begin
  try
    Screen.Cursor := crHourGlass;

    xSQL := 'SELECT 0 FILA, A.ASOID, B.ASODNI, B.ASOAPENOM, B.TIPO_FALL_ID TIPO, '
           +'       MAX(A.PVSLFECBE) FECFALLECIDO, MAX(A.PVSLBENNR) PVSLBENNR, '
           +'       MAX(A.PVSLFECBE) PVSLFECBE '
           +'FROM PVS306 A, APO201 B '
           +'WHERE A.PVSLTIPBE = ''02'' '
           +'  and A.PVSESTLIQ NOT IN (''04'', ''13'') '
           +'  and trunc(A.PVSLFECBE)>='+ QuotedStr(dtFechaDesde.Text)
           +'  and trunc(A.PVSLFECBE)<='+ QuotedStr(dtFechaHasta.Text)
           +'  and B.ASOID=A.ASOID '
           +'  and B.TIPO_FALL_ID=''X LIQ.FALL'' '
           +'GROUP BY A.ASOID, B.ASODNI, B.ASOAPENOM, B.TIPO_FALL_ID '
           +'union all '
           +'select 0 FILA, A.ASOID, A.ASODNI, A.ASOAPENOM, TIPO_FALL_ID TIPO, '
           +'       B.FECFALGES FECFALLECIDO, '''' PVSLBENNR, TO_DATE('''') PVSLFECBE '
           +'from APO201 A, ASO_FAC_GES_DET B '
           +'where B.ASOID(+)=A.ASOID '
           +'  and A.FALLECIDO=''S'' '
           +'  and A.TIPO_FALL_ID=''X GESTION'' '
           +'  and B.FECFALGES>='+ QuotedStr(dtFechaDesde.Text)
           +'  and B.FECFALGES<='+ QuotedStr(dtFechaHasta.Text);
{    if chkSinFecha.Checked then
    begin
      xSql := xSql + '     OR FECFALLECIDO IS NULL';
    end;
}
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;

    xFila := 0;
    DM1.cdsQry1.First;
    while not DM1.cdsQry1.EOF do
    begin
       xFila := xFila+1;
       DM1.cdsQry1.Edit;
       DM1.cdsQry1.FieldByName('FILA').AsInteger:=xFila;
       DM1.cdsQry1.Post;
       DM1.cdsQry1.Next;
    end;

    dbgFallecidos.DataSource := DM1.dsQry1;
    dbgFallecidos.Selected.Clear;
    dbgFallecidos.Selected.Add('FILA'#9'8'#9'Fila'#9#9);
    dbgFallecidos.Selected.Add('ASOID'#9'10'#9'Id.Asoc'#9#9);
    dbgFallecidos.Selected.Add('ASODNI'#9'8'#9'DNI'#9#9);
    dbgFallecidos.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y Nombres'#9#9);
    dbgFallecidos.Selected.Add('TIPO'#9'18'#9'Tipo Fallecimiento'#9#9);
    dbgFallecidos.Selected.Add('FECFALLECIDO'#9'10'#9'Fecha Fallecim'#9#9);
    dbgFallecidos.Selected.Add('PVSLBENNR'#9'12'#9'Exp.Liquid'#9#9);
    dbgFallecidos.Selected.Add('PVSLFECBE'#9'10'#9'Fecha Exped'#9#9);
    dbgFallecidos.ApplySelected;

    if DM1.cdsQry1.RecordCount = 0 then
      MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFRepFallecidos.btnExcelClick(Sender: TObject);
begin
  if DM1.cdsQry1.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    exit;
  end;
  DM1.HojaExcel('Resumen', DM1.dsQry1, dtgData);
end;

procedure TFRepFallecidos.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFRepFallecidos.Limpiar;
var
  xSql, xFecha : String;
begin

  try
    Screen.Cursor := crHourGlass;
    xFecha := datetoStr(DM1.FechaSys);
    xSQL := 'select 0 FILA, A.ASOID, A.ASODNI, A.ASOAPENOM, TIPO_FALL_ID TIPO, '
           +'       B.FECFALGES FECFALLECIDO, TO_DATE('') PVSLBENNR, TO_DATE('') PVSLFECBE '
           +'from APO201 A, ASO_FAC_GES_DET B '
           +'where B.ASOID(+)=A.ASOID '
           +'  and A.FALLECIDO=''S'' '
           +'  and B.FECFALGES>='+ quotedstr(xFecha)
           +'  and B.FECFALGES<='+ quotedstr(xFecha);
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;

    dbgFallecidos.DataSource := DM1.dsQry1;
    dbgFallecidos.Selected.Clear;
    dbgFallecidos.Selected.Add('FILA'#9'8'#9'FILA'#9#9);
    dbgFallecidos.Selected.Add('ASOID'#9'10'#9'ASOID'#9#9);
    dbgFallecidos.Selected.Add('ASODNI'#9'8'#9'DNI'#9#9);
    dbgFallecidos.Selected.Add('ASOAPENOM'#9'42'#9'APELLIDOS Y NOMBRES'#9#9);
    dbgFallecidos.Selected.Add('TIPO'#9'11'#9'TIPO'#9#9);
    dbgFallecidos.Selected.Add('FECFALLECIDO'#9'10'#9'FECHA FALLECIM'#9#9);
    dbgFallecidos.Selected.Add('PVSLBENNR'#9'12'#9'EXPEDIENTE'#9#9);
    dbgFallecidos.Selected.Add('PVSLFECBE'#9'10'#9'FECHA EXPED'#9#9);
    dbgFallecidos.ApplySelected;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFRepFallecidos.dtFechaDesdeChange(Sender: TObject);
begin
  Limpiar;
end;

procedure TFRepFallecidos.dtFechaHastaChange(Sender: TObject);
begin
  Limpiar;
end;

procedure TFRepFallecidos.chkSinFechaClick(Sender: TObject);
begin
  Limpiar;
end;

procedure TFRepFallecidos.dbgFallecidosTitleButtonClick(Sender: TObject;
  AFieldName: String);
var
   xFila : integer;
begin
   DM1.cdsQry1.IndexFieldNames := AFieldName;
   xFila := 0;
   DM1.cdsQry1.First;
   while not DM1.cdsQry1.EOF do
   begin
      xFila := xFila+1;
      DM1.cdsQry1.Edit;
      DM1.cdsQry1.FieldByName('FILA').AsInteger:=xFila;
      DM1.cdsQry1.Post;
      DM1.cdsQry1.Next;
   end;
   DM1.cdsQry1.First;
end;

procedure TFRepFallecidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsQry1.Close;
   DM1.cdsQry1.IndexFieldNames := '';
end;

procedure TFRepFallecidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

end.
