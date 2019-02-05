unit ASO902;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid;

type
  TFSeleccionBen = class(TForm)
    GbAsociados: TGroupBox;
    BitMostrar: TBitBtn;
    gbBuscar: TGroupBox;
    edtBuscar: TEdit;
    dtgAsociado: TwwDBGrid;
    BitSalir: TBitBtn;
    rbtCodMod: TRadioButton;
    rbtApeNom: TRadioButton;
    rbtDNI: TRadioButton;
    procedure BitMostrarClick(Sender: TObject);
    procedure rbtApeNomClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
    procedure dtgAsociadoDblClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rbtDNIClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
    procedure Limpiagrid;

  public
    { Public declarations }
  end;

var
  FSeleccionBen: TFSeleccionBen;

implementation

uses ASODM,ASO801;

{$R *.dfm}

procedure TFSeleccionBen.BitMostrarClick(Sender: TObject);
Var xSql, xAsoCodmod, xLibEle :String;
begin
  xAsoCodmod := DM1.StrZero(edtBuscar.Text, 10);
  xLibEle    := DM1.StrZero(edtBuscar.Text, 8);
  If rbtApeNom.Checked Then xSQL := 'SELECT * FROM PVS315 WHERE NOM_GEN LIKE '+QuotedStr(edtBuscar.Text+'%');
  If rbtCodMod.Checked Then xSQL := 'SELECT * FROM PVS315 WHERE COD_MOD = '+QuotedStr(xAsoCodmod);
  If rbtDNI.Checked    Then xSQL := 'SELECT * FROM PVS315 WHERE LIB_ELE = '+QuotedStr(xLibEle);

  DM1.cdsAso.Close;
  DM1.cdsAso.DataRequest(xSQL);
  DM1.cdsAso.Open;
end;



procedure TFSeleccionBen.Limpiagrid;
begin
    FSeleccionBen.edtBuscar.Text:='';
    DM1.cdsAso.Close;
    DM1.cdsAso.DataRequest('SELECT * FROM PVS315 WHERE COD_MOD='+QuotedStr('@#$!*@/#&^'));
    DM1.cdsAso.Open;
end;

procedure TFSeleccionBen.rbtApeNomClick(Sender: TObject);
begin
Limpiagrid;
edtBuscar.Left  := 10;
edtBuscar.Width := 415;
gbBuscar.Width:= 439;
edtBuscar.Text:='';
edtBuscar.SetFocus;
end;

procedure TFSeleccionBen.rbtCodModClick(Sender: TObject);
begin
Limpiagrid;
edtBuscar.Width := 100;
gbBuscar.Width:= 124;
edtBuscar.Text:='';
edtBuscar.SetFocus;
end;

procedure TFSeleccionBen.dtgAsociadoDblClick(Sender: TObject);
begin
  Try
     fMigraAso:= TfMigraAso.create(self);
     fMigraAso.ShowModal;
  Finally
     fMigraAso.Free;
  End;
end;

procedure TFSeleccionBen.BitSalirClick(Sender: TObject);
begin
FSeleccionBen.Close;
end;

procedure TFSeleccionBen.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;

end;

procedure TFSeleccionBen.rbtDNIClick(Sender: TObject);
begin
  Limpiagrid;
  edtBuscar.Width := 100;
  gbBuscar.Width:= 124;
  edtBuscar.Text:='';
  edtBuscar.SetFocus;
end;

procedure TFSeleccionBen.FormActivate(Sender: TObject);
begin
Limpiagrid;
end;

end.
