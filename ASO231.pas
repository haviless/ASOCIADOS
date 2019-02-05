// Inicio Uso Estándares     : 01/08/2011
// Unidad		            : ASO231.pas
// Formulario		        : FPadronErrores
// Fecha de Creación	     : 28/02/2012
// Autor			         : Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Permite visualizar las inconsistencias de un registro descargado del padrón 

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO            : 28/02/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO

unit ASO231;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons;

type
  TFPadronErrores = class(TForm)
    dbgPadron: TwwDBGrid;
    btnSalir: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODPAD: string;
    CODITEM: integer;
  end;

var
  FPadronErrores: TFPadronErrores;

implementation

uses ASODM;

{$R *.dfm}

procedure TFPadronErrores.FormActivate(Sender: TObject);
var
  xSql: string;
begin
  xSql := 'SELECT L.CODSEC, L.FECREG, L.USUREG, L.DESLOG, T.DESTIPREG'
    + ' FROM ASO_PAD_LOG L '
    + '   INNER JOIN'
    + ' ASO_PAD_TIP_LOG T ON '
    + ' L.CODTIPREG = T.CODTIPREG'
    + ' WHERE L.CODPAD = ' + QuotedStr(CODPAD)
    + '   AND L.CODITEM = ' + IntToStr(CODITEM);
  DM1.cdsTransacciones.Close;
  DM1.cdsTransacciones.DataRequest(xSql);
  DM1.cdsTransacciones.Open;
  
  dbgPadron.Refresh;
  dbgPadron.Selected.Clear;
  dbgPadron.Selected.Add('CODSEC'#9'6'#9'Secuencia'#9#9);
  dbgPadron.Selected.Add('FECREG'#9'20'#9'Fec.Reg.'#9#9);
  dbgPadron.Selected.Add('USUREG'#9'10'#9'Usuario registro'#9#9);
  dbgPadron.Selected.Add('DESTIPREG'#9'60'#9'Tipo'#9#9);
  dbgPadron.Selected.Add('DESLOG'#9'40'#9'Observación'#9#9);
  dbgPadron.ApplySelected;
end;

procedure TFPadronErrores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsTransacciones.Close;
end;

procedure TFPadronErrores.btnSalirClick(Sender: TObject);
begin
  Close;
end;

end.
