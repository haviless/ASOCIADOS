// Unidad                    : ASO909.pas
// Formulario                : FCenEduCodPago
// Fecha de Creación         : 2012
// Autor                     : Equipo de Desarrollo de Sistemas DM

// Actualizaciones:
// HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201211_ASO    : Creación de Formulario
// SPP_201301_ASO    : El pase a producción se realiza sobre la base del HPC_201301_ASO

unit ASO909;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFCenEduCodPago = class(TForm)
    Label28: TLabel;
    edtCodigoPago: TEdit;
    BitGrabar: TBitBtn;
    bbtnCerrar: TBitBtn;
    chkActivo: TCheckBox;
    procedure BitGrabarClick(Sender: TObject);
    procedure bbtnCerrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    CODREG: integer;
    CODMOD: string;
    NIVEDU_ID: string;
    ASOCODPAGO: string;
    ACTIVO: string;
  end;

var
  FCenEduCodPago: TFCenEduCodPago;

implementation

uses ASODM;

{$R *.dfm}

procedure TFCenEduCodPago.BitGrabarClick(Sender: TObject);
var
  xSql: string;
begin
  If Length(edtCodigoPago.Text) = 0 Then
  Begin
    MessageDlg('Debe ingresar el código de pago', mtWarning, [mbOk], 0);
    edtCodigoPago.SetFocus;
    Exit;
  End;
  
  if ASOCODPAGO = '' then
  begin
    //Nuevo
    xSql := 'SELECT COUNT(1) CANTIDAD FROM ASO_CEN_EDU_VS_PAGO_MAE WHERE ASOCODPAGO = ' + QuotedStr(Trim(edtCodigoPago.Text))
      + ' AND CODREG <> ' + IntToStr(CODREG) + ' AND ACTIVO = ''S''';
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;
    if (DM1.cdsQry1.RecordCount > 0)
      and (DM1.cdsQry1.FieldByName('CANTIDAD').AsInteger > 0) then
    begin
      MessageDlg('El código de pago activo ya existe en la base de datos', mtWarning, [mbOk], 0);
      Exit;
    end;
    
    xSql := 'INSERT INTO ASO_CEN_EDU_VS_PAGO_MAE (CODREG, ASOCODPAGO, CODMOD, NIVEDU_ID, ACTIVO)'
      + ' VALUES ((SELECT NVL(MAX(CODREG),0) + 1 FROM ASO_CEN_EDU_VS_PAGO_MAE), '
      + QuotedStr(Trim(edtCodigoPago.Text)) + ', ' + QuotedStr(CODMOD) + ', ' + QuotedStr(NIVEDU_ID) + ', ';
    if chkActivo.Checked then
      xSql := xSql + QuotedStr('S') + ')'
    else
      xSql := xSql + QuotedStr('N') + ')';
    DM1.DCOM1.AppServer.EjecutaSql(xSql);
  end
  else
  begin
    if chkActivo.Checked then
    begin
      xSql := 'SELECT COUNT(1) CANTIDAD FROM ASO_CEN_EDU_VS_PAGO_MAE WHERE ASOCODPAGO = ' + QuotedStr(Trim(edtCodigoPago.Text))
        + ' AND CODREG <> ' + IntToStr(CODREG) + ' AND ACTIVO = ''S''';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xSql);
      DM1.cdsQry1.Open;
      if (DM1.cdsQry1.RecordCount > 0)
        and (DM1.cdsQry1.FieldByName('CANTIDAD').AsInteger > 0) then
      begin
        MessageDlg('El código de pago activo ya existe en la base de datos', mtWarning, [mbOk], 0);
        Exit;
      end;
    end;
    
    xSql := 'UPDATE ASO_CEN_EDU_VS_PAGO_MAE SET ACTIVO = ';
    if chkActivo.Checked then
      xSql := xSql + QuotedStr('S')
    else
      xSql := xSql + QuotedStr('N');
    xSql := xSql + ', ASOCODPAGO = ' + QuotedStr(Trim(edtCodigoPago.Text))
      + ' WHERE CODREG = ' + IntToStr(CODREG);
    DM1.DCOM1.AppServer.EjecutaSql(xSql);
  end;
  
  self.ModalResult := mrOk;
end;

procedure TFCenEduCodPago.bbtnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFCenEduCodPago.FormActivate(Sender: TObject);
begin
  edtCodigoPago.Text := ASOCODPAGO;
  if ACTIVO = 'S' then
    chkActivo.Checked := true
  else
    chkActivo.Checked := false;
end;

procedure TFCenEduCodPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry1.Close;
end;

end.

