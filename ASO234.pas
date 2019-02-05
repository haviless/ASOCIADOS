// Inicio Uso Estándares  : 01/08/2011
// Unidad		         : ASO234.pas
// Formulario		     : FTipoDctoConver
// Fecha de Creación	  : 02/01/2013
// Autor			      : Daniel Fernández
// Objetivo		       : Mantenimiento de la conversión de tipo de descuento

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201211_ASO    : DFERNANDEZ Creación.
// SPP_201301_ASO    : El pase a producción se realiza sobre la base del HPC_201301_ASO

unit ASO234;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdblook, Wwdbdlg;

type
  TFTipoDctoConver = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    btnSalir: TBitBtn;
    btngrabar: TBitBtn;
    dblcdTipoOrigen: TwwDBLookupComboDlg;
    edtTipoOrigen: TMaskEdit;
    dblcdTipoDestino: TwwDBLookupComboDlg;
    edtTipoDestino: TMaskEdit;
    lblCODDCTOORI: TLabel;
    lblCODDCTODEST: TLabel;
    btnEliminar: TBitBtn;
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcdTipoOrigenChange(Sender: TObject);
    procedure dblcdTipoDestinoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btngrabarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
  private
    { Private declarations }
    procedure CargarDatos;
  public
    { Public declarations }
    CODCONV: integer;
    CODIGOORI: string;
    CODIGODEST: string;
    MODO: string; //N=NUEVO, E=EDICION
    ORI_DES: string; //ORI=ORIGEN, DES=DESTINO
    MODIFICADO: boolean;
  end;

var
  FTipoDctoConver: TFTipoDctoConver;

implementation

uses ASODM, DB;

{$R *.dfm}

procedure TFTipoDctoConver.FormActivate(Sender: TObject);
begin
  CargarDatos;
  if ORI_DES = 'ORI' then
  begin
    dblcdTipoOrigen.Enabled := true;
    dblcdTipoDestino.Enabled := false;
  end
  else if ORI_DES = 'DES' then
  begin
    dblcdTipoOrigen.Enabled := false;
    dblcdTipoDestino.Enabled := true;
  end;
  if CODCONV = 0 then
  begin
    btnEliminar.Enabled := false;
    dblcdTipoOrigen.Text := CODIGOORI;
    dblcdTipoDestino.Text := CODIGODEST;
  end
  else
  begin
    btnEliminar.Enabled := true;
  end;
end;

procedure TFTipoDctoConver.CargarDatos;
var
  xSql: string;
begin
  xSql := 'SELECT CODDCTO, CODIGO, DESDCTO FROM ASO_TIP_DCTO_MAE';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  
  dblcdTipoOrigen.Selected.Clear;
  dblcdTipoOrigen.Selected.Add('CODIGO'#9'20'#9'Código'#9#9);
  dblcdTipoOrigen.Selected.Add('DESDCTO'#9'40'#9'Descripción'#9#9);
  
  DM1.cdsProvin.Close;
  DM1.cdsProvin.DataRequest(xSql);
  DM1.cdsProvin.Open;
  
  dblcdTipoDestino.Selected.Clear;
  dblcdTipoDestino.Selected.Add('CODIGO'#9'20'#9'Código'#9#9);
  dblcdTipoDestino.Selected.Add('DESDCTO'#9'40'#9'Descripción'#9#9);
  
  xSql := 'SELECT C.CODCONV, C.CODDCTOORI, C.CODDCTODEST, T1.CODIGO CODIGOORI, T2.CODIGO CODIGODEST'
    + ' FROM ASO_CONV_DCTO_MAE C INNER JOIN ASO_TIP_DCTO_MAE T1 ON C.CODDCTOORI = T1.CODDCTO INNER JOIN ASO_TIP_DCTO_MAE T2 ON C.CODDCTODEST = T2.CODDCTO'
    + ' WHERE C.CODCONV = ' + IntToStr(CODCONV);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  if DM1.cdsQry.RecordCount > 0 then
  begin
    dblcdTipoOrigen.Text := DM1.cdsQry.FieldByName('CODIGOORI').AsString;
    dblcdTipoDestino.Text := DM1.cdsQry.FieldByName('CODIGODEST').AsString;
  end;
end;

procedure TFTipoDctoConver.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFTipoDctoConver.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsDpto.Close;
  DM1.cdsProvin.Close;
  DM1.cdsQry.Close;
end;

procedure TFTipoDctoConver.dblcdTipoOrigenChange(Sender: TObject);
begin
  If (not DM1.cdsDpto.IsEmpty) and DM1.cdsDpto.Locate('CODIGO',VarArrayof([dblcdTipoOrigen.Text]),[]) Then
  begin
    lblCODDCTOORI.Caption := DM1.cdsDpto.FieldByName('CODDCTO').AsString;
    edtTipoOrigen.Text := DM1.cdsDpto.FieldByName('DESDCTO').AsString;
  end
  Else
  begin
    lblCODDCTOORI.Caption := '';
    edtTipoOrigen.Text := '';
  end
end;

procedure TFTipoDctoConver.dblcdTipoDestinoChange(Sender: TObject);
begin
  If (not DM1.cdsProvin.IsEmpty) and DM1.cdsProvin.Locate('CODIGO',VarArrayof([dblcdTipoDestino.Text]),[]) Then
  begin
    lblCODDCTODEST.Caption := DM1.cdsProvin.FieldByName('CODDCTO').AsString;
    edtTipoDestino.Text := DM1.cdsProvin.FieldByName('DESDCTO').AsString;
  end
  Else
  begin
    lblCODDCTODEST.Caption := '';
    edtTipoDestino.Text := '';
  end;
end;

procedure TFTipoDctoConver.btngrabarClick(Sender: TObject);
var
  xSql: string;
begin
  if Trim(edtTipoOrigen.Text) = '' then
  begin
    MessageDlg('Ingrese el tipo de descuento origen', mtInformation, [mbOk], 0);
    Exit;
  end;
  if Trim(edtTipoDestino.Text) = '' then
  begin
    MessageDlg('Ingrese el tipo de descuento destino', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  if MODO = 'N' then
  begin
    xSql := 'INSERT INTO ASO_CONV_DCTO_MAE (CODCONV, CODDCTOORI, CODDCTODEST) VALUES ('
      + '(SELECT NVL(MAX(CODCONV),0) + 1 FROM ASO_CONV_DCTO_MAE),'
      + lblCODDCTOORI.Caption + ','
      + lblCODDCTODEST.Caption + ')';
  end
  else if MODO = 'E' then
  begin
    xSql := 'UPDATE ASO_CONV_DCTO_MAE SET'
      + ' CODDCTOORI = ' + lblCODDCTOORI.Caption + ','
      + ' CODDCTODEST = ' + lblCODDCTODEST.Caption
      + ' WHERE CODCONV = ' + IntToStr(CODCONV);
  end;
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  MODIFICADO := true;
  Close;
end;

procedure TFTipoDctoConver.btnEliminarClick(Sender: TObject);
var
  xSql: string;
begin
  If MessageDlg('¿Está seguro de eliminar el registro?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then Exit;
  
  xSql := 'DELETE FROM ASO_CONV_DCTO_MAE WHERE CODCONV = ' + IntToStr(CODCONV);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  MODIFICADO := true;
  Close;
end;

end.

