// Inicio Uso Estándares     : 01/08/2011
// Unidad		            : ASO229.pas
// Formulario		        : FPadronReempTexto
// Fecha de Creación	     : 28/02/2012
// Autor			         : Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Permite buscar un texto ingresado y reemplazarlo por otro texto en los campos de nombres y apellidos

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO            : 28/02/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO

unit ASO229;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFPadronReempTexto = class(TForm)
    grpBuscarAsociado: TGroupBox;
    rbtApePat: TRadioButton;
    rbtApeMat: TRadioButton;
    edtBuscar: TEdit;
    rbtNombres: TRadioButton;
    btnSalir: TBitBtn;
    edtReemplazar: TEdit;
    Label1: TLabel;
    lblBuscar: TLabel;
    btnGrabar: TBitBtn;
    procedure rbtApePatClick(Sender: TObject);
    procedure rbtApeMatClick(Sender: TObject);
    procedure rbtNombresClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    GRABAR: boolean;
    CAMPO: string;
    BUSCAR: string;
    REEMPLAZAR: string;
  end;

var
  FPadronReempTexto: TFPadronReempTexto;

implementation

{$R *.dfm}

procedure TFPadronReempTexto.FormActivate(Sender: TObject);
begin
  edtBuscar.MaxLength := 35;
  edtReemplazar.MaxLength := 35;
  GRABAR:= false;
  
  edtBuscar.SetFocus;
end;

procedure TFPadronReempTexto.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadronReempTexto.rbtApePatClick(Sender: TObject);
begin
  edtBuscar.MaxLength := 35;
  edtReemplazar.MaxLength := 35;
end;

procedure TFPadronReempTexto.rbtApeMatClick(Sender: TObject);
begin
  edtBuscar.MaxLength := 35;
  edtReemplazar.MaxLength := 35;
end;

procedure TFPadronReempTexto.rbtNombresClick(Sender: TObject);
begin
  edtBuscar.MaxLength := 30;
  edtReemplazar.MaxLength := 30;
end;

procedure TFPadronReempTexto.btnGrabarClick(Sender: TObject);
begin
  GRABAR := true;
  BUSCAR := edtBuscar.Text;
  REEMPLAZAR := edtReemplazar.Text;
  if rbtApePat.Checked then
    CAMPO := 'ASOAPEPAT'
  else if rbtApeMat.Checked then
    CAMPO := 'ASOAPEMAT'
  else
    CAMPO := 'ASONOMBRES';
  Close;
end;

end.
