unit ASO236;
// SPP_201306_ASO   : Se realiza el pase a producción a partir del HPC_201305_ASO

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdbedit;

type
  TFPadronReempNombre = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtDesOri: TwwDBEdit;
    edtDesDest: TwwDBEdit;
    btnSalir: TBitBtn;
    btngrabar: TBitBtn;
    btnEliminar: TBitBtn;
    procedure btnSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btngrabarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    CODREP: integer;
    MODIFICADO: boolean;
  end;

var
  FPadronReempNombre: TFPadronReempNombre;

implementation

uses ASODM;

{$R *.dfm}

procedure TFPadronReempNombre.FormActivate(Sender: TObject);
var
  xSql: string;
begin
  if CODREP = 0 then
  begin
    edtDesOri.Text := '';
    edtDesDest.Text := '';
  end
  else
  begin
    xSql := 'SELECT CODREP, CODTIPREP, DESORI, DESDEST FROM ASO_PAD_REP_MAE WHERE CODREP = ' + IntToStr(CODREP);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    if DM1.cdsQry.RecordCount > 0 then
    begin
      edtDesOri.Text := DM1.cdsQry.FieldByName('DESORI').AsString;
      edtDesDest.Text := DM1.cdsQry.FieldByName('DESDEST').AsString;
    end
    else
    begin
      edtDesOri.Text := '';
      edtDesDest.Text := '';
    end;
  end;
end;

procedure TFPadronReempNombre.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadronReempNombre.btngrabarClick(Sender: TObject);
var
  xSql: string;
begin
  if Trim(edtDesOri.Text) = '' then
  begin
    MessageDlg('Ingrese el texto a buscar', mtInformation, [mbOk], 0);
    Exit;
  end;
  if Trim(edtDesDest.Text) = '' then
  begin
    MessageDlg('Ingrese el texto a reemplazar', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  if CODREP = 0 then
  begin
    xSql := 'INSERT INTO ASO_PAD_REP_MAE (CODREP, CODTIPREP, DESORI, DESDEST, FECREG, USUREG)'
      + ' VALUES((SELECT NVL(MAX(CODREP),0) + 1 FROM ASO_PAD_REP_MAE), ''APENOM'','
      + QuotedStr(Trim(edtDesOri.Text)) + ', '
      + QuotedStr(Trim(edtDesDest.Text)) + ', SYSDATE,'
      + QuotedStr(DM1.wUsuario) + ')';
  end
  else
  begin
    xSql := 'UPDATE ASO_PAD_REP_MAE'
      + ' SET DESORI = ' + QuotedStr(Trim(edtDesOri.Text)) + ','
      + ' DESDEST = ' + QuotedStr(Trim(edtDesDest.Text)) + ','
      + ' FECMOD = SYSDATE, USUMOD = ' + QuotedStr(DM1.wUsuario)
      + ' WHERE CODREP = ' + IntToStr(CODREP);
  end;
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  MODIFICADO := true;
  Close;
end;

procedure TFPadronReempNombre.btnEliminarClick(Sender: TObject);
var
  xSql: string;
begin
  If MessageDlg('¿Está seguro de eliminar el registro?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then Exit;
  
  xSql := 'DELETE FROM ASO_PAD_REP_MAE WHERE CODREP = ' + IntToStr(CODREP);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  MODIFICADO := true;
  Close;
end;

procedure TFPadronReempNombre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry.Close;
end;

end.
