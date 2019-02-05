// Inicio Uso Estándares : 01/08/2011
// Unidad                : ASO260C.pas
// Formulario            : FMantAsociadoObsSinRes
// Fecha de Creación     : 01/08/2011
// Autor                 : Equipo de Desarrollo de Sistemas DM
// Objetivo              : Mostrar al ingreso del mantenimiento de asociados
//                         observaciones que se registraron a ese asociado.
// HPC_201602_ASO : Se muestra el grid de mostrar observaciones del asociado.
//                  El usuario solicita que se puedan mostrar mas datos de la tabla de observaciones.

unit ASO260C;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, db;

type
  TFMantAsociadoObsSinRes = class(TForm)
    pnlObsSinResolver: TPanel;
    wwDBGrid1: TwwDBGrid;
    pnlObsConsulta2: TPanel;
    memObsConsulta2: TMemo;
    Button12: TButton;
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    // Inicio: HPC_201602_ASO
    // Se añade procedimiento al activar el formulario
    procedure FormActivate(Sender: TObject);
    // Fin: HPC_201602_ASO
  private
    { Private declarations }
  public
    { Public declarations }
    procedure EnlazarDatos(pDSOBSSINRESOLVER: TDataSource);
  end;

var
  FMantAsociadoObsSinRes: TFMantAsociadoObsSinRes;

implementation

uses ASODM;

{$R *.dfm}

procedure TFMantAsociadoObsSinRes.EnlazarDatos(pDSOBSSINRESOLVER: TDataSource);
begin
  wwDBGrid1.DataSource := pDSOBSSINRESOLVER;
  wwDBGrid1.Selected.clear;
  // Inicio: HPC_201602_ASO
  // Se modifica las columnas del grid de mostrar observaciones
  // wwDBGrid1.Selected.Add('Procedencia'#9'10'#9'Módulo');
  // wwDBGrid1.Selected.Add('Observacion'#9'46'#9'Observación'#9'F');
  // wwDBGrid1.Selected.Add('Fecha'#9'20'#9'Fecha');
  wwDBGrid1.Selected.Add('PROCEDENCIA'#9'15'#9'Procedencia');
  wwDBGrid1.Selected.Add('OFICINA'#9'15'#9'Oficina');
  wwDBGrid1.Selected.Add('OBSERVACION'#9'30'#9'Observación'#9'F');
  wwDBGrid1.Selected.Add('CARACTER'#9'17'#9'Carácter'#9'F');
  wwDBGrid1.Selected.Add('COMENTARIO'#9'46'#9'Comentario'#9'F');
  wwDBGrid1.Selected.Add('USUARIO'#9'15'#9'Usuario'#9'F');
  wwDBGrid1.Selected.Add('FECHA'#9'22'#9'Fecha');
  // Fin: HPC_201602_ASO
  wwDBGrid1.ApplySelected;
end;




procedure TFMantAsociadoObsSinRes.wwDBGrid1DblClick(Sender: TObject);
begin
  pnlObsConsulta2.Left := 48;
  pnlObsConsulta2.Top := 60;
  // Inicio: HPC_201602_ASO
  // Se modifica la descripción de la columna "OBSERVACION" por "COMENTARIO"
  memObsConsulta2.Text := wwDBGrid1.DataSource.DataSet.FieldByName('COMENTARIO').AsString;
  // Fin: HPC_201602_ASO
  pnlObsConsulta2.Visible := True;
end;

procedure TFMantAsociadoObsSinRes.Button12Click(Sender: TObject);
begin
  pnlObsConsulta2.Visible := False;
end;

// Inicio: HPC_201602_ASO
// Se centra en la pantalla en panel de observación que sera mostrado. 
procedure TFMantAsociadoObsSinRes.FormActivate(Sender: TObject);
begin
  pnlObsConsulta2.Left := 48;
  pnlObsConsulta2.Top := 60;
  memObsConsulta2.Text := wwDBGrid1.DataSource.DataSet.FieldByName('COMENTARIO').AsString;
  pnlObsConsulta2.Visible := True;
end;
// Fin: HPC_201602_ASO

end.

