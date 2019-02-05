// Inicio Uso Estándares  : 01/08/2011
// Unidad		         : ASO232.pas
// Formulario		     : FPadronDescuentos
// Fecha de Creación	  : 02/01/2013
// Autor			      : Daniel Fernández
// Objetivo		       : Listar los descuentos de un asociado

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201211_ASO    : DFERNANDEZ Creación.
// SPP_201301_ASO    : El pase a producción se realiza sobre la base del HPC_201301_ASO

unit ASO232;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdbedit;

type
  TFPadronDescuentos = class(TForm)
    grpDatosOriginales: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    edtCODITEM1: TwwDBEdit;
    edtASOCODMOD1: TwwDBEdit;
    edtSECUENCIAL1: TwwDBEdit;
    edtASODNI1: TwwDBEdit;
    edtPATERNO1: TwwDBEdit;
    edtMATERNO1: TwwDBEdit;
    edtNOMBRES1: TwwDBEdit;
    edtPLANILLA1: TwwDBEdit;
    edtFISCAL1: TwwDBEdit;
    edtSITUACION1: TwwDBEdit;
    edtCOD_EMPRESA1: TwwDBEdit;
    edtCOD_OFICINA1: TwwDBEdit;
    edtOFICINA1: TwwDBEdit;
    edtCOD_SERVIDOR1: TwwDBEdit;
    edtDESC_SERVIDOR1: TwwDBEdit;
    edtCOD_IE1: TwwDBEdit;
    edtNOMBRE_IE1: TwwDBEdit;
    edtCOD_CARGO1: TwwDBEdit;
    edtDES_CARGO1: TwwDBEdit;
    edtCOD_REGLAB1: TwwDBEdit;
    edtREGLAB1: TwwDBEdit;
    edtCTA_AHORROS1: TwwDBEdit;
    edtHABER1: TwwDBEdit;
    edtDESCUENTO1: TwwDBEdit;
    edtLIQUIDO1: TwwDBEdit;
    edtEMPRESA1: TwwDBEdit;
    wwDBEdit1: TwwDBEdit;
    wwDBEdit2: TwwDBEdit;
    wwDBEdit3: TwwDBEdit;
    wwDBEdit4: TwwDBEdit;
    wwDBEdit5: TwwDBEdit;
    wwDBEdit6: TwwDBEdit;
    wwDBEdit7: TwwDBEdit;
    wwDBEdit8: TwwDBEdit;
    wwDBEdit9: TwwDBEdit;
    wwDBEdit10: TwwDBEdit;
    wwDBEdit11: TwwDBEdit;
    wwDBEdit12: TwwDBEdit;
    wwDBEdit13: TwwDBEdit;
    wwDBEdit14: TwwDBEdit;
    btnSalir: TBitBtn;
    wwDBEdit15: TwwDBEdit;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    wwDBEdit16: TwwDBEdit;
    wwDBEdit17: TwwDBEdit;
    wwDBEdit18: TwwDBEdit;
    wwDBEdit19: TwwDBEdit;
    wwDBEdit20: TwwDBEdit;
    wwDBEdit21: TwwDBEdit;
    wwDBEdit22: TwwDBEdit;
    wwDBEdit23: TwwDBEdit;
    wwDBEdit24: TwwDBEdit;
    wwDBEdit25: TwwDBEdit;
    wwDBEdit26: TwwDBEdit;
    wwDBEdit27: TwwDBEdit;
    wwDBEdit28: TwwDBEdit;
    wwDBEdit29: TwwDBEdit;
    wwDBEdit30: TwwDBEdit;
    wwDBEdit31: TwwDBEdit;
    wwDBEdit32: TwwDBEdit;
    wwDBEdit33: TwwDBEdit;
    wwDBEdit34: TwwDBEdit;
    wwDBEdit35: TwwDBEdit;
    wwDBEdit36: TwwDBEdit;
    wwDBEdit37: TwwDBEdit;
    wwDBEdit38: TwwDBEdit;
    wwDBEdit39: TwwDBEdit;
    wwDBEdit40: TwwDBEdit;
    wwDBEdit41: TwwDBEdit;
    wwDBEdit42: TwwDBEdit;
    wwDBEdit43: TwwDBEdit;
    wwDBEdit44: TwwDBEdit;
    wwDBEdit45: TwwDBEdit;
    wwDBEdit46: TwwDBEdit;
    wwDBEdit47: TwwDBEdit;
    wwDBEdit48: TwwDBEdit;
    wwDBEdit49: TwwDBEdit;
    wwDBEdit50: TwwDBEdit;
    wwDBEdit51: TwwDBEdit;
    wwDBEdit52: TwwDBEdit;
    wwDBEdit53: TwwDBEdit;
    wwDBEdit54: TwwDBEdit;
    wwDBEdit55: TwwDBEdit;
    wwDBEdit56: TwwDBEdit;
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPadronDescuentos: TFPadronDescuentos;

implementation

{$R *.dfm}

procedure TFPadronDescuentos.btnSalirClick(Sender: TObject);
begin
  Close;
end;

end.

