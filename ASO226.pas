// Inicio Uso Estándares  : 01/08/2011
// Unidad		         : ASO226.pas
// Formulario		     : FTiposDescuento
// Fecha de Creación	  : 02/01/2013
// Autor			      : Daniel Fernández
// Objetivo		       : Listar los tipos de descuento

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201211_ASO    : DFERNANDEZ Creación.
// SPP_201301_ASO    : El pase a producción se realiza sobre la base del HPC_201301_ASO

unit ASO226;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdblook, Wwdbdlg, Wwdbigrd, Grids,
  Wwdbgrid, DB, Spin, ExtCtrls, wwdbedit;

type
  TFTiposDescuento = class(TForm)
    btnSalir: TBitBtn;
    dbgDctos: TwwDBGrid;
    dbgDctosIButton: TwwIButton;
    gbConversion: TGroupBox;
    gbConversiones: TGroupBox;
    dbgConversiones: TwwDBGrid;
    dbgConversionIButton: TwwIButton;
    edtCodigo: TwwDBEdit;
    btneditar: TBitBtn;
    edtDescripcion: TwwDBEdit;
    procedure btnSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgDctosDblClick(Sender: TObject);
    procedure dbgDctosIButtonClick(Sender: TObject);
    procedure dbgDctosCellChanged(Sender: TObject);
    procedure dbgConversionIButtonClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure dbgConversionesDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure CargarDatos;
    procedure CargarConversiones;
    procedure CargarConversion;
  public
    { Public declarations }
    CODPAD: string;
  end;

var
  FTiposDescuento: TFTiposDescuento;

implementation

uses ASODM, ASO219, ASO233, ASO234;

{$R *.dfm}

procedure TFTiposDescuento.FormCreate(Sender: TObject);
begin
  CargarDatos;
end;

procedure TFTiposDescuento.CargarDatos;
var
  xSql: string;
begin
  xSql := 'SELECT CODDCTO, CODIGO, DESDCTO FROM ASO_TIP_DCTO_MAE ORDER BY CODIGO';
  DM1.cdsQry5.Close;
  DM1.cdsQry5.DataRequest(xSql);
  DM1.cdsQry5.Open;
  
  dbgDctos.Refresh;
  dbgDctos.Selected.Clear;
  dbgDctos.Selected.Add('CODIGO'#9'20'#9'Código'#9#9);
  dbgDctos.Selected.Add('DESDCTO'#9'50'#9'Descuento'#9#9);
  dbgDctos.ApplySelected;
  
  CargarConversiones;
  CargarConversion;
end;

procedure TFTiposDescuento.CargarConversiones;
var
  xSql: string;
begin
  if DM1.cdsQry5.FieldByName('CODDCTO').AsString = '' then Exit;
  
  //Conversiones al tipo seleccionado
  xSql := 'SELECT C.CODCONV, C.CODDCTOORI, T1.CODIGO CODORI, T1.DESDCTO DESORI FROM ASO_CONV_DCTO_MAE C INNER JOIN ASO_TIP_DCTO_MAE T1 ON C.CODDCTOORI = T1.CODDCTO WHERE C.CODDCTODEST = ' + DM1.cdsQry5.FieldByName('CODDCTO').AsString;
  DM1.cdsCia.Close;
  DM1.cdsCia.DataRequest(xSql);
  DM1.cdsCia.Open;
  
  dbgConversiones.Refresh;
  dbgConversiones.Selected.Clear;
  dbgConversiones.Selected.Add('CODORI'#9'20'#9'Código'#9#9);
  dbgConversiones.Selected.Add('DESORI'#9'50'#9'Descripción'#9#9);
  dbgConversiones.ApplySelected;
end;

procedure TFTiposDescuento.CargarConversion;
var
  xSql: string;
begin
  if DM1.cdsQry5.FieldByName('CODDCTO').AsString = '' then Exit;
  
  xSql := 'SELECT C.CODCONV, C.CODDCTODEST, T1.CODIGO CODDEST, T1.DESDCTO DESDEST FROM ASO_CONV_DCTO_MAE C INNER JOIN ASO_TIP_DCTO_MAE T1 ON C.CODDCTODEST = T1.CODDCTO WHERE C.CODDCTOORI = ' + DM1.cdsQry5.FieldByName('CODDCTO').AsString;
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest(xSql);
  DM1.cdsQry3.Open;
end;

procedure TFTiposDescuento.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFTiposDescuento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry5.Close;
  DM1.cdsCia.Close;
  DM1.cdsQry3.Close;
end;

procedure TFTiposDescuento.dbgDctosDblClick(Sender: TObject);
begin
  if DM1.cdsQry5.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FTipoDescuento := TFTipoDescuento.Create(Self);
    FTipoDescuento.CODDCTO := DM1.cdsQry5.FieldByName('CODDCTO').AsInteger;
    FTipoDescuento.ShowModal;
    if FTipoDescuento.MODIFICADO then
      CargarDatos;      
  Finally
    FTipoDescuento.Free;
  End;
end;

procedure TFTiposDescuento.dbgDctosIButtonClick(Sender: TObject);
begin
  Try
    FTipoDescuento := TFTipoDescuento.Create(Self);
    FTipoDescuento.ShowModal;
    if FTipoDescuento.MODIFICADO then
      CargarDatos;      
  Finally
    FTipoDescuento.Free;
  End;
end;

procedure TFTiposDescuento.dbgDctosCellChanged(Sender: TObject);
begin
  CargarConversiones;
  CargarConversion;
  gbConversiones.Caption := 'Los siguientes tipos son convertidos a ' + DM1.cdsQry5.FieldByName('CODIGO').AsString;
  gbConversion.Caption := 'El tipo ' + DM1.cdsQry5.FieldByName('CODIGO').AsString + ' se convierte a';
end;

procedure TFTiposDescuento.dbgConversionIButtonClick(Sender: TObject);
begin
  Try
    FTipoDctoConver := TFTipoDctoConver.Create(Self);
    FTipoDctoConver.MODO := 'N';
    FTipoDctoConver.ORI_DES := 'ORI';
    FTipoDctoConver.CODIGODEST := DM1.cdsQry5.FieldByName('CODIGO').AsString;
    FTipoDctoConver.ShowModal;
    if FTipoDctoConver.MODIFICADO then
      CargarConversiones;
  Finally
    FTipoDctoConver.Free;
  End;
end;

procedure TFTiposDescuento.dbgConversionesDblClick(Sender: TObject);
begin
  if DM1.cdsCia.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FTipoDctoConver := TFTipoDctoConver.Create(Self);
    FTipoDctoConver.MODO := 'E';
    FTipoDctoConver.ORI_DES := 'ORI';
    FTipoDctoConver.CODCONV := DM1.cdsCia.FieldByName('CODCONV').AsInteger;
    FTipoDctoConver.ShowModal;
    if FTipoDctoConver.MODIFICADO then
      CargarConversiones;
  Finally
    FTipoDctoConver.Free;
  End;
end;

procedure TFTiposDescuento.btneditarClick(Sender: TObject);
begin
  Try
    FTipoDctoConver := TFTipoDctoConver.Create(Self);
    if Trim(edtCodigo.Text) = '' then
      FTipoDctoConver.MODO := 'N'
    else
      FTipoDctoConver.MODO := 'E';
    FTipoDctoConver.ORI_DES := 'DES';
    FTipoDctoConver.CODCONV := DM1.cdsQry3.FieldByName('CODCONV').AsInteger;
    FTipoDctoConver.CODIGOORI := DM1.cdsQry5.FieldByName('CODIGO').AsString;
    FTipoDctoConver.ShowModal;
    if FTipoDctoConver.MODIFICADO then
      CargarConversion;
  Finally
    FTipoDctoConver.Free;
  End;
end;

end.

