// Unidad		            :	ASO200.pas
// Formulario		         :	FSeleccionaAso
// Fecha de Creación	      :	21/06/2011
// Autor			            :	Equipo de Desarrollo de Sistemas DM
// Objetivo		            :  Búsqueda de Asociado

// Actualizaciones:
// HPC_201119_ASO     Inicio de Formulario, Búsqueda por Asociado
// HPP_201109_ASO          :  Se realiza el pase a producción a partir del pase HPC_201119_ASO

unit ASO200;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, DB;

type
  TFSeleccionaAso = class(TForm)
    GbAsociados: TGroupBox;
    BitMostrar: TBitBtn;
    gbBuscar: TGroupBox;
    edtBuscar: TEdit;
    dtgAsociado: TwwDBGrid;
    BitSalir: TBitBtn;
    rbtDni: TRadioButton;
    rbtCuenta: TRadioButton;
    rbtCodMod: TRadioButton;
    rbtApeNom: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure rbtApeNomClick(Sender: TObject);
    procedure rbtDniClick(Sender: TObject);
    procedure rbtCuentaClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure dtgAsociadoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgAsociadoDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Seleccionado: boolean;
    ASOID: String;
    procedure LimpiaGrid;
  end;

var
  FSeleccionaAso: TFSeleccionaAso;

implementation

uses ASODM, ASO901;

{$R *.dfm}

procedure TFSeleccionaAso.FormCreate(Sender: TObject);
begin
  DM1.BlqComponentes(Self);
  
  gbbuscar.Width := 430;
  gbbuscar.Height := 40;
  edtBuscar.Width := 407;
  edtBuscar.Height := 28;

  Seleccionado := false;
end;

procedure TFSeleccionaAso.LimpiaGrid;
begin
  edtBuscar.Text := '';
  DM1.cdsAso.Close;
  DM1.cdsAso.DataRequest('SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOMDNI, ASOTIPID, USEID, UPROID, ASODNI, ASONCTA FROM APO201 WHERE 1 = 2');
  DM1.cdsAso.Open;
end;

procedure TFSeleccionaAso.rbtApeNomClick(Sender: TObject);
begin
  LimpiaGrid;
  gbbuscar.Width := 430;
  gbbuscar.Height := 40;
  edtBuscar.Width := 407;
  edtBuscar.Height := 28;
  GbAsociados.Caption := 'Buscar por ' + rbtApeNom.Caption;
  edtBuscar.SetFocus;
end;

procedure TFSeleccionaAso.rbtDniClick(Sender: TObject);
begin
  LimpiaGrid;
  gbbuscar.Width := 137;
  gbbuscar.Height := 40;
  edtBuscar.Width := 114;
  edtBuscar.Height := 24;
  GbAsociados.Caption := 'Buscar por ' + rbtDni.Caption;
  edtBuscar.SetFocus;
end;

procedure TFSeleccionaAso.rbtCuentaClick(Sender: TObject);
begin
  LimpiaGrid;
  gbbuscar.Width := 137;
  gbbuscar.Height := 40;
  edtBuscar.Width := 114;
  edtBuscar.Height := 24;
  GbAsociados.Caption := 'Buscar por ' + rbtCuenta.Caption;
  edtBuscar.SetFocus;
end;

procedure TFSeleccionaAso.rbtCodModClick(Sender: TObject);
begin
  LimpiaGrid;
  gbbuscar.Width := 137;
  gbbuscar.Height := 40;
  edtBuscar.Width := 114;
  edtBuscar.Height := 24;
  GbAsociados.Caption := 'Buscar por ' + rbtCodMod.Caption;
  edtBuscar.SetFocus;
end;

procedure TFSeleccionaAso.BitMostrarClick(Sender: TObject);
var
  xSQL: String;
begin
  If Length(Trim(edtBuscar.Text)) > 0 Then
  Begin
    If rbtApeNom.Checked Then
      xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOMDNI, ASOTIPID, USEID, UPROID, ASODNI, ASONCTA FROM APO201 WHERE ASOAPENOMDNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');

    If rbtDni.Checked Then
      xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOMDNI, ASOTIPID, USEID, UPROID, ASODNI, ASONCTA FROM APO201 WHERE ASODNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');

    If rbtCuenta.Checked Then
      xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOMDNI, ASOTIPID, USEID, UPROID, ASODNI, ASONCTA FROM APO201 WHERE ASONCTA LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');

    If rbtCodMod.Checked Then
      xSQL := 'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOMDNI, ASOTIPID, USEID, UPROID, ASODNI, ASONCTA FROM APO201 WHERE ASOCODMOD LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');

    DM1.cdsAso.Close;
    DM1.cdsAso.DataRequest(xSQL);
    DM1.cdsAso.Open;

    dtgAsociado.Selected.Clear;
    dtgAsociado.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Modular'#9'F'#9);
    dtgAsociado.Selected.Add('ASOCODAUX'#9'6'#9'Orden'#9'F'#9);
    dtgAsociado.Selected.Add('ASOAPENOMDNI'#9'45'#9'Apellidos y Nombres D.N.I.'#9'F'#9);
    dtgAsociado.Selected.Add('ASOTIPID'#9'3'#9'Tipo'#9'F'#9);
    dtgAsociado.Selected.Add('USEID'#9'3'#9'Use'#9'F'#9);
    dtgAsociado.Selected.Add('UPROID'#9'3'#9'Lug.Proceso'#9'F'#9);
    dtgAsociado.Selected.Add('ASODNI'#9'10'#9'D.N.I.'#9'F'#9);
    dtgAsociado.Selected.Add('ASONCTA'#9'10'#9'Cta.Ahorros'#9'F'#9);
    dtgAsociado.ApplySelected;
  End
  Else
  Begin
    MessageDlg('Debe Ingresar Un Criterio Para La Busqueda', mtError, [mbOk], 0);
    edtBuscar.SetFocus;
  End;
end;

procedure TFSeleccionaAso.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFSeleccionaAso.dtgAsociadoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE' then
  begin
    If Field.DisplayName = 'Tipo' Then
    Begin
      dtgAsociado.Canvas.Font.Color := clRed;
      dtgAsociado.DefaultDrawDataCell(Rect, Field, State);
    End;
  end;
end;

procedure TFSeleccionaAso.dtgAsociadoDblClick(Sender: TObject);
begin
  If dtgAsociado.DataSource.DataSet.RecordCount = 0 Then
    Exit;

  Seleccionado := true;
  ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
  Close;
end;

procedure TFSeleccionaAso.FormActivate(Sender: TObject);
begin
  LimpiaGrid;
  edtBuscar.SetFocus;
end;

procedure TFSeleccionaAso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsAso.Close;
end;

procedure TFSeleccionaAso.edtBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = word(13)) and (Length(Trim(edtBuscar.Text))<> 0) Then
    BitMostrarClick(self);
end;

end.

