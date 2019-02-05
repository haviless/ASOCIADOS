// Inicio Uso Estándares: 01/08/2011
// Unidad		       : ASO969.pas
// Formulario           : FConfirmaDesautDcto
// Fecha de Creación    : 2013	
// Autor	            : Daniel Fernández
// Objetivo             : Ingresar un motivo para la desautorización de CADAP

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201301_ASO       : 19/07/2012  DFERNANDEZ Creación.
// SPP_201303_ASO       : El pase a producción se solicita a partir del HPC_201301_ASO

unit ASO969;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Wwdbdlg, Buttons;

type
  TFConfirmaDesautDcto = class(TForm)
    Label4: TLabel;
    dblcdmotdesapo: TwwDBLookupComboDlg;
    edtdesaut: TEdit;
    btnSalir: TBitBtn;
    btnGrabar: TBitBtn;
    procedure dblcdmotdesapoChange(Sender: TObject);
    procedure dblcdmotdesapoExit(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODMOTDEST: string;
  end;

var
  FConfirmaDesautDcto: TFConfirmaDesautDcto;

implementation

uses ASODM;

{$R *.dfm}

procedure TFConfirmaDesautDcto.dblcdmotdesapoChange(Sender: TObject);
begin
  If DM1.cdsReclamoMotiv.Locate('CODMOTDEST',dblcdmotdesapo.Text,[]) then
    edtdesaut.Text := DM1.cdsReclamoMotiv.FieldByName('DESMOTDES').asstring
  Else
    edtdesaut.Text := '';
end;

procedure TFConfirmaDesautDcto.dblcdmotdesapoExit(Sender: TObject);
begin
   If Trim(dblcdmotdesapo.Text) = '' Then Exit;
end;

procedure TFConfirmaDesautDcto.btnGrabarClick(Sender: TObject);
begin
  If Trim(edtdesaut.Text) = '' Then
  begin
    MessageDlg('Seleccione un motivo', mtConfirmation, [mbOk], 0);
    dblcdmotdesapo.SetFocus;
    Exit;
  end;
  CODMOTDEST := dblcdmotdesapo.Text;
  Close;
end;

procedure TFConfirmaDesautDcto.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFConfirmaDesautDcto.FormCreate(Sender: TObject);
begin
  CODMOTDEST := '';
end;

procedure TFConfirmaDesautDcto.FormActivate(Sender: TObject);
begin
  dblcdmotdesapo.Selected.Clear;
  dblcdmotdesapo.Selected.Add('CODMOTDEST'#9'5'#9'Código'#9#9);
  dblcdmotdesapo.Selected.Add('DESMOTDES'#9'30'#9'Descripción'#9#9);
end;

end.

