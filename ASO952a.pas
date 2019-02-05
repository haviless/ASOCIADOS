//---------------------------------------------------------------------------------------------------------------------------
// Unidad                   : ASO952a
// Formulario               : fMensaje

// Fecha de Creación        : 15/02/2017
// Autor                    : Equipo de Desarrollo.
// Objetivo                 : Validacion de Actualizacion Registro.
//
// Fecha de Actualización   :
// HPC_201701_ASO           : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
//---------------------------------------------------------------------------------------------------------------------------

unit ASO952a;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, ExtCtrls ;

type
  TfMensaje = class(TForm)
    GroupBox1: TGroupBox;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    MessageConfirmation: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
   { Public declarations }
   bConfirmado: boolean;
  end;

var
  fMensaje: TfMensaje;


implementation

uses ASODM, ASO952;

{$R *.dfm}

procedure TfMensaje.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfMensaje.FormCreate(Sender: TObject);
begin
   bConfirmado := False;
end;

procedure TfMensaje.BitGrabarClick(Sender: TObject);
var xSQL,xMessage:String;
    xRegistro: TBookmark;
begin
    bConfirmado := true;
    Self.Close;
    
end;

end.
