// Inicio Uso Estándares  : 01/08/2011
// Unidad		         : ASO943c.pas
// Formulario		     : FDatosSocEcoDctos
// Autor			      : Daniel Fernández
// Objetivo		       : Permite visualizar el detalle de los descuentos de planilla

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201211_ASO    : 03/01/2013  DFERNANDEZ Creación.
// SPP_201301_ASO    : El pase a producción se realiza sobre la base del HPC_201301_ASO

unit ASO943c;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls;

type
  TFDatosSocEcoDctos = class(TForm)
    dtgDetalles: TwwDBGrid;
    btnSalir: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDatosSocEcoDctos: TFDatosSocEcoDctos;

implementation

uses ASODM, DB;

{$R *.dfm}

procedure TFDatosSocEcoDctos.FormActivate(Sender: TObject);
var
  xSql: string;
  xTotal: currency;
begin
  xSql := 'SELECT D.CODSEC, T.CODIGO, T.DESDCTO, D.MONDCTO'
    + ' FROM'
    + '     ASO_DCTO_PLA_HIS D'
    + '         INNER JOIN'
    + '     ASO_TIP_DCTO_MAE T ON'
    + '     D.CODDCTO = T.CODDCTO'
    + ' WHERE'
    + '     D.ASOID = ' + QuotedStr(DM1.cdsDSocioE.fieldbyname('ASOID').AsString)
    + '     AND D.ITEM = ' + QuotedStr(DM1.cdsDSocioE.fieldbyname('ITEM').AsString)
    + ' ORDER BY D.CODSEC';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  dtgDetalles.Selected.Clear;
  dtgDetalles.Selected.Add('CODIGO'#9'15'#9'Código'#9#9);
  dtgDetalles.Selected.Add('DESDCTO'#9'40'#9'Descuento'#9#9);
  dtgDetalles.Selected.Add('MONDCTO'#9'12'#9'Monto'#9#9);
  dtgDetalles.ApplySelected;

  xTotal := 0;
  DM1.cdsQry5.First;
  WHILE NOT DM1.cdsQry5.Eof DO
  BEGIN
    xTotal := xTotal + DM1.cdsQry5.FieldByName('MONDCTO').AsCurrency;
    DM1.cdsQry5.Next;
  END;
  
  TNumericField(DM1.cdsQry5.FieldByName('MONDCTO')).DisplayFormat:='###,##0.00';
  
  dtgDetalles.ColumnByName('CODIGO').FooterValue := 'Total';
  dtgDetalles.ColumnByName('MONDCTO').FooterValue := CurrToStr(xTotal);
  dtgDetalles.RefreshDisplay;
end;

procedure TFDatosSocEcoDctos.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFDatosSocEcoDctos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry5.Close;
end;

end.
