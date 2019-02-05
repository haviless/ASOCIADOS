// Inicio Uso Estándares  : 01/08/2011
// Unidad		         : ASO233.pas
// Formulario		     : FTipoDescuento
// Fecha de Creación	  : 02/01/2013
// Autor			      : Daniel Fernández
// Objetivo		       : Mantenimiento del tipo de descuento

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201211_ASO    : DFERNANDEZ Creación.
// SPP_201301_ASO    : El pase a producción se realiza sobre la base del HPC_201301_ASO

unit ASO233;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdbedit, Buttons;

type
  TFTipoDescuento = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtCodigo: TwwDBEdit;
    edtDescripcion: TwwDBEdit;
    btnSalir: TBitBtn;
    btngrabar: TBitBtn;
    btnEliminar: TBitBtn;
    procedure btngrabarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODDCTO: integer;
    MODIFICADO: boolean;
  end;

var
  FTipoDescuento: TFTipoDescuento;

implementation

uses ASODM;

{$R *.dfm}

procedure TFTipoDescuento.btngrabarClick(Sender: TObject);
var
  xSql: string;
begin
  if Trim(edtCodigo.Text) = '' then
  begin
    MessageDlg('Ingrese el código', mtInformation, [mbOk], 0);
    Exit;
  end;
  if Trim(edtDescripcion.Text) = '' then
  begin
    MessageDlg('Ingrese la descripción', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  if CODDCTO = 0 then
  begin
    xSql := 'INSERT INTO ASO_TIP_DCTO_MAE (CODDCTO, CODIGO, DESDCTO, FECREG, USUREG)'
      + ' VALUES((SELECT NVL(MAX(CODDCTO),0) + 1 FROM ASO_TIP_DCTO_MAE),'
      + QuotedStr(Trim(edtCodigo.Text)) + ', '
      + QuotedStr(Trim(edtDescripcion.Text)) + ', SYSDATE,'
      + QuotedStr(DM1.wUsuario) + ')';
  end
  else
  begin
    xSql := 'UPDATE ASO_TIP_DCTO_MAE'
      + ' SET CODIGO = ' + QuotedStr(Trim(edtCodigo.Text)) + ','
      + ' DESDCTO = ' + QuotedStr(Trim(edtDescripcion.Text)) + ','
      + ' FECMOD = SYSDATE, USUMOD = ' + QuotedStr(DM1.wUsuario)
      + ' WHERE CODDCTO = ' + IntToStr(CODDCTO);
  end;
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  MODIFICADO := true;
  Close;
end;

procedure TFTipoDescuento.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFTipoDescuento.btnEliminarClick(Sender: TObject);
var
  xSql: string;
begin
  If MessageDlg('¿Está seguro de eliminar el registro?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then Exit;
  
  xSql := 'DELETE FROM ASO_TIP_DCTO_MAE WHERE CODDCTO = ' + IntToStr(CODDCTO);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  MODIFICADO := true;
  Close;
end;

procedure TFTipoDescuento.FormActivate(Sender: TObject);
var
  xSql: string;
begin
  if CODDCTO = 0 then
  begin
    edtCodigo.Text := '';
    edtDescripcion.Text := '';
  end
  else
  begin
    xSql := 'SELECT CODDCTO, CODIGO, DESDCTO FROM ASO_TIP_DCTO_MAE WHERE CODDCTO = ' + IntToStr(CODDCTO);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    if DM1.cdsQry.RecordCount > 0 then
    begin
      edtCodigo.Text := DM1.cdsQry.FieldByName('CODIGO').AsString;
      edtDescripcion.Text := DM1.cdsQry.FieldByName('DESDCTO').AsString;
    end
    else
    begin
      edtCodigo.Text := '';
      edtDescripcion.Text := '';
    end;
  end;
end;

end.

