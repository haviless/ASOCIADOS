// Inicio Uso Estándares : 01/08/2011
// Unidad                : Asociados
// Formulario            : FCambioTipoAsociado
// Fecha de Creación     : 28/01/2016
// Autor                 : Juver De la Cruz
// Objetivo              : Actualizacion de Reniec en lote
// Actualizaciones:
// HPC_201601_ASO : AMPLIAR ALCANCE DE LIQUIDACIONES ANTIGUAS

unit ASO182;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls,
  ComCtrls, ExtCtrls, StrUtils, wwdblook, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, DB, Wwdatsrc, DBClient, wwclient, ExcelXP, OleServer;

type
  TFImportarExcel = class(TForm)
    odlgArchivo: TOpenDialog;
    xlsArchivo: TExcelApplication;
    gbx01: TGroupBox;
    Panel3: TPanel;
    Label2: TLabel;
    edtArchivo: TEdit;
    btnArchivo: TButton;
    btnImportarDatos: TButton;
    dbgUniverso: TwwDBGrid;
    memLog: TMemo;
    btnGrabar: TBitBtn;
    btnAnular: TBitBtn;
    procedure btnArchivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImportarDatosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAnularClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
  private
      xxCdsQryUniverso : TwwClientDataSet;
       xxDsQryUniverso : TwwDataSource;
    xnCantidadTotalRegistros : integer;
    procedure FG_CARGA_XLS(psArchivo: string);
    procedure FG_PINTAR_GRID_UNIVERSO;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FImportarExcel: TFImportarExcel;

implementation

uses ASODM;

{$R *.dfm}

(******************************************************************************)
procedure TFImportarExcel.FormShow(Sender: TObject);
var xsSQL : string;
begin
   DM1.FG_CONECTA_CDS(xxCdsQryUniverso, xxDsQryUniverso);
   xsSQL := 'DELETE FROM ASO_IMP_EXCEL_GTT WHERE 1 = 1';
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
   FG_PINTAR_GRID_UNIVERSO();
   memLog.ReadOnly := True;
   memLog.Clear;
   btnGrabar.Enabled := false;
end;

(******************************************************************************)
procedure TFImportarExcel.FG_PINTAR_GRID_UNIVERSO();
var xsSQL : String;
begin
   xsSQL:='SELECT NUMREG, MODULAR, ASOID '
        + '  FROM ASO_IMP_EXCEL_GTT '
        + ' WHERE 1 = 1';
   xxCdsQryUniverso.Close;
   xxCdsQryUniverso.DataRequest(xsSQL);
   xxCdsQryUniverso.Open;
   xnCantidadTotalRegistros := xxCdsQryUniverso.RecordCount;
   memLog.Lines.Add(IntToStr(xnCantidadTotalRegistros) + ' Registros seran procesados');
   With dbgUniverso Do
    Begin
      DataSource := xxDsQryUniverso;
      Selected.Clear;
      Selected.Add('NUMREG'#9'5'#9'Nro'#9'F'#9'Universo');
      Selected.Add('MODULAR'#9'10'#9'Cód.Modular'#9'F'#9'Universo');
      ApplySelected;
    End;
end;

(******************************************************************************)
procedure TFImportarExcel.btnArchivoClick(Sender: TObject);
begin
  if odlgArchivo.Execute then
     edtArchivo.Text := odlgArchivo.FileName;
end;

(******************************************************************************)
procedure TFImportarExcel.btnImportarDatosClick(Sender: TObject);
begin
   xnCantidadTotalRegistros := 0;
   btnGrabar.Enabled := false;
   memLog.Clear;
   If (odlgArchivo.FileName = '') Then
   Begin
        MessageDlg(AnsiUpperCase('SELECCIONE EL ARCHIVO A IMPORTAR!!!'), mtInformation, [mbOk], 0);
        Exit;
   End;
   Screen.Cursor := crHourGlass;

   // cargar datos
   FG_CARGA_XLS(odlgArchivo.FileName);

   // muestra el universo
   FG_PINTAR_GRID_UNIVERSO();

   btnGrabar.Enabled := (xxCdsQryUniverso.RecordCount > 0);

   Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFImportarExcel.FG_CARGA_XLS(psArchivo : string);
var
  xnFila: Integer;
  xsFilaString: String;
  xxHoja: _WorkSheet;
  xsSQL : string;
  xsCampoModular : string;
begin
  // ABRE EL ARCHIVO
  xlsArchivo.Workbooks.Open(psArchivo,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, 0);
  // LIMPIA DATOS Y VARIABLES
  xsSQL := 'DELETE FROM ASO_IMP_EXCEL_GTT WHERE 1 = 1 ';
  DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  xxHoja := xlsArchivo.Worksheets.Item[1] as _WorkSheet;
  xnFila := 2;
  xsSQL  := '';
  xsFilaString := IntToStr(xnFila);
  while not (VarType( xlsArchivo.Range['A'+xsFilaString, 'A'+xsFilaString].Value2 ) = VarEmpty) do
  begin
      xsCampoModular := Trim(xxHoja.Range['A'+xsFilaString, 'A'+xsFilaString].Value2);
      xsSQL := xsSQL + ' SP_ASO_IMP_EXCEL_GTT_ADD_MOD(' + IntToStr(xnFila-1) + ', ' + QuotedStr(xsCampoModular) + ');';
      IF ((xnFila-1) MOD 50) = 0 THEN
      BEGIN
        xsSQL := 'BEGIN ' + xsSQL + ' COMMIT; END;';
        DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
        xsSQL := '';
      END;
      xnFila := xnFila + 1;
      xsFilaString := IntToStr(xnFila);
  end;
  IF (xsSQL<>'') THEN
  BEGIN
     xsSQL := 'BEGIN ' + xsSQL + ' COMMIT; END;';
     DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  END;
  memLog.Lines.Add(IntToStr(xnFila-2) + ' Registros Cargados');
  xnCantidadTotalRegistros := xnFila-2;
  xlsArchivo.Application.ActiveWorkbook.Save(0);
end;

(******************************************************************************)
procedure TFImportarExcel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

(******************************************************************************)
procedure TFImportarExcel.btnAnularClick(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

(******************************************************************************)
procedure TFImportarExcel.btnGrabarClick(Sender: TObject);
begin
  self.ModalResult := mrOk;
end;
(******************************************************************************)
end.
