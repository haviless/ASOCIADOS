// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO301.pas
// Formulario              :  fAsoEdadSexo
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Permitir la Autorización de descuento ONP

// HPC_201315_ASO          : Exportar a excel Número de asociados por eded y sexo.
// SPP_201401_ASO          : Se realiza el pase a producción a partir del HPC_201315_ASO.

unit ASO301;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DBGrids;

type
  TfAsoEdadSexo = class(TForm)
    BtnSalir: TBitBtn;
    BtnExporta: TBitBtn;
    dtgExpAsoEdadSexo: TwwDBGrid;
    lblTotAso: TLabel;
    dtgExpCenEdu: TDBGrid;
    procedure BtnSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnExportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAsoEdadSexo: TfAsoEdadSexo;

implementation

uses ASODM, DB;

{$R *.dfm}

procedure TfAsoEdadSexo.BtnSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfAsoEdadSexo.FormActivate(Sender: TObject);
var xMasculino,xFemenino,xTotal:Integer;
begin
   DM1.cdsExpCenEdu.First;  xMasculino:=0; xFemenino:=0; xTotal:=0;
   While Not DM1.cdsExpCenEdu.Eof Do
   Begin
      xMasculino := xMasculino + DM1.cdsExpCenEdu.FieldByName('MASCULINO').AsInteger;
      xFemenino := xFemenino + DM1.cdsExpCenEdu.FieldByName('FEMENINO').AsInteger;
      xTotal := xTotal + DM1.cdsExpCenEdu.FieldByName('TOTAL').AsInteger;
      DM1.cdsExpCenEdu.Next
   End;
   dtgExpAsoEdadSexo.ColumnByName('EDAD').FooterValue :='Total : ';
   dtgExpAsoEdadSexo.ColumnByName('MASCULINO').FooterValue :=FormatFloat('###,##0',xMasculino);
   dtgExpAsoEdadSexo.ColumnByName('FEMENINO').FooterValue :=FormatFloat('###,##0',xFemenino);
   dtgExpAsoEdadSexo.ColumnByName('TOTAL').FooterValue :=FormatFloat('###,##0',xTotal);
   lblTotAso.Caption:= 'Total Asociados Activos al '+DateToStr(DM1.FechaSys);



end;

procedure TfAsoEdadSexo.BtnExportaClick(Sender: TObject);
begin
   Screen.Cursor := crHourGlass;
   If DM1.cdsExpCenEdu.RecordCount > 0 Then
      DM1.HojaExcel('AsoEdadSexo', dtgExpCenEdu.DataSource, dtgExpCenEdu)
   Else
       MessageDlg('No existe información...', mtError, [mbOk], 0);
   Screen.Cursor := crDefault;

end;

end.
