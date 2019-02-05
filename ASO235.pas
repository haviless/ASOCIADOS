unit ASO235;
// SPP_201306_ASO   : Se realiza el pase a producción a partir del HPC_201305_ASO

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls;

type
  TFPadronReempNombres = class(TForm)
    dbgReemplazos: TwwDBGrid;
    dbgDctosIButton: TwwIButton;
    btnSalir: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgDctosIButtonClick(Sender: TObject);
    procedure dbgReemplazosDblClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
    procedure CargarDatos;
  public
    { Public declarations }
  end;

var
  FPadronReempNombres: TFPadronReempNombres;

implementation

uses ASODM, ASO236;

{$R *.dfm}

procedure TFPadronReempNombres.FormCreate(Sender: TObject);
begin
  CargarDatos;
end;

procedure TFPadronReempNombres.CargarDatos;
var
  xSql: string;
begin
  xSql := 'SELECT CODREP, DESORI, DESDEST FROM ASO_PAD_REP_MAE ORDER BY DESORI';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  
  dbgReemplazos.Refresh;
  dbgReemplazos.Selected.Clear;
  dbgReemplazos.Selected.Add('DESORI'#9'30'#9'Buscar'#9#9);
  dbgReemplazos.Selected.Add('DESDEST'#9'30'#9'Reemplazar por'#9#9);
  dbgReemplazos.ApplySelected;
end;

procedure TFPadronReempNombres.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry5.Close;
end;

procedure TFPadronReempNombres.dbgDctosIButtonClick(Sender: TObject);
begin
  Try
    FPadronReempNombre := TFPadronReempNombre.Create(Self);
    FPadronReempNombre.ShowModal;
    if FPadronReempNombre.MODIFICADO then
      CargarDatos;      
  Finally
    FPadronReempNombre.Free;
  End;
end;

procedure TFPadronReempNombres.dbgReemplazosDblClick(Sender: TObject);
begin
  if DM1.cdsQry5.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FPadronReempNombre := TFPadronReempNombre.Create(Self);
    FPadronReempNombre.CODREP := DM1.cdsQry5.FieldByName('CODREP').AsInteger;
    FPadronReempNombre.ShowModal;
    if FPadronReempNombre.MODIFICADO then
      CargarDatos;      
  Finally
    FPadronReempNombre.Free;
  End;
end;

procedure TFPadronReempNombres.btnSalirClick(Sender: TObject);
begin
  Close;
end;

end.
