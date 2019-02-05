unit ASO955;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls ;

type
  TfCtrOfdes = class(TForm)
    Panel1: TPanel;
    dtgOfDes: TwwDBGrid;
    BitSalir: TBitBtn;
    pnlFlag: TPanel;
    Shape1: TShape;
    Label35: TLabel;
    BitMarcar: TBitBtn;
    Button1: TButton;
    GroupBox1: TGroupBox;
    chkVerFirma: TCheckBox;
    chkVerFoto: TCheckBox;
    GroupBox2: TGroupBox;
    chkValDatAso: TCheckBox;
    chkActDatRen: TCheckBox;
    procedure BitSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitMarcarClick(Sender: TObject);
    procedure dtgOfDesRowChanged(Sender: TObject);
    procedure dtgOfDesDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    Procedure CargaDatos;
  public
    { Public declarations }
  end;

var
  fCtrOfdes: TfCtrOfdes;

implementation

uses ASODM;

{$R *.dfm}

{ 'OFDESID'#9'4'#9'ID'
  'OFDESNOM'#9'45'#9'Oficina Desconcetrada'
  'IDASO'#9'1'#9'Verifica~Foto'#9'F'
  'IDFIRMA'#9'1'#9'Verifica~Firma'#9'F'
  'VALDATASO'#9'1'#9'Validacion~Dat.Asoc.'#9'F'
  'ACTDATREN'#9'1'#9'Actualiza.~Dat.RENIEC'#9'F')}


procedure TfCtrOfdes.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfCtrOfdes.FormCreate(Sender: TObject);
begin
dtgOfDes.SetControlType('IDASO',fctCheckBox, 'S;N');
dtgOfDes.SetControlType('IDFIRMA',fctCheckBox, 'S;N');
dtgOfDes.SetControlType('VALDATASO',fctCheckBox, 'S;N');
dtgOfDes.SetControlType('ACTDATREN',fctCheckBox, 'S;N');
end;

procedure TfCtrOfdes.BitMarcarClick(Sender: TObject);
var
   xRegistro: TBookmark;
   xSQL:String;
begin

if MessageDlg('¿Desea Actualizar los Flag de Activación ?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
   Begin
    xRegistro:=DM1.cdsOfdes.GetBookmark;
    DM1.cdsOfdes.Edit;
    If chkVerFoto.Checked   Then  DM1.cdsOfdes.FieldByName('IDASO').AsString    := 'S' ELSE DM1.cdsOfdes.FieldByName('IDASO').AsString    := 'N';
    If chkVerFirma.Checked  Then  DM1.cdsOfdes.FieldByName('IDFIRMA').AsString  := 'S' ELSE DM1.cdsOfdes.FieldByName('IDFIRMA').AsString  := 'N';
    If chkValDatAso.Checked Then  DM1.cdsOfdes.FieldByName('VALDATASO').AsString:= 'S' ELSE DM1.cdsOfdes.FieldByName('VALDATASO').AsString:= 'N';
    If chkActDatRen.Checked Then  DM1.cdsOfdes.FieldByName('ACTDATREN').AsString:= 'S' ELSE DM1.cdsOfdes.FieldByName('ACTDATREN').AsString:= 'N';
    XSQL := 'UPDATE APO110 SET IDASO='''+DM1.cdsOfdes.FieldByName('IDASO').AsString+''','+
            'IDFIRMA='''+ DM1.cdsOfdes.FieldByName('IDFIRMA').AsString+''','+
            'VALDATASO='''+DM1.cdsOfdes.FieldByName('VALDATASO').AsString+''','+
            'ACTDATREN='''+DM1.cdsOfdes.FieldByName('ACTDATREN').AsString+''' '+
            'WHERE OFDESID ='+QuotedStr(DM1.cdsOfdes.FieldByName('OFDESID').AsString);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    DM1.cdsOfdes.GotoBookmark(xRegistro);
    MessageDlg(' <<< Se Grabo Con Exito >>> ', mtInformation,[mbOk],0);
    pnlFlag.Visible := False;
  End
Else
  Begin
   MessageDlg(' <<< Modificación Cancelada >>> ', mtInformation,[mbOk],0);
   pnlFlag.Visible := False;
  End;


{xRegistro:=DM1.cdsOfdes.GetBookmark;
   If DM1.cdsOfdes.FieldByName('IDASO').AsString='S' Then
      Begin
        BitMarcar.Caption := 'Marcar';
        xSQL:='UPDATE APO110 SET IDASO=''N'' WHERE OFDESID ='+QuotedStr(DM1.cdsOfdes.FieldByName('OFDESID').AsString);
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        CargaDatos;
        DM1.cdsOfdes.GotoBookmark(xRegistro);
        dtgOfDes.SetFocus;
      End
   Else
      Begin
        BitMarcar.Caption := 'DesMarcar';
        xSQL:='UPDATE APO110 SET IDASO=''S'' WHERE OFDESID ='+QuotedStr(DM1.cdsOfdes.FieldByName('OFDESID').AsString);
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        CargaDatos;
        DM1.cdsOfdes.GotoBookmark(xRegistro);
        dtgOfDes.SetFocus;
      End;}

end;

procedure TfCtrOfdes.CargaDatos;
var xSQL:String;
begin
 xSQL:='SELECT OFDESID,OFDESNOM,IDASO FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ';
 DM1.cdsOfdes.Close;
 DM1.cdsOfdes.DataRequest(xSQL);
 DM1.cdsOfdes.Open;
end;

procedure TfCtrOfdes.dtgOfDesRowChanged(Sender: TObject);
begin
//If DM1.cdsOfdes.FieldByName('IDASO').AsString='S' Then BitMarcar.Caption := 'DesMacar'  Else BitMarcar.Caption := 'Marcar';
end;

procedure TfCtrOfdes.dtgOfDesDblClick(Sender: TObject);

begin

 If DM1.cdsOfdes.FieldByName('IDASO').AsString    = 'S' then  chkVerFoto.Checked  := True ELSE chkVerFoto.Checked   := False;
 If DM1.cdsOfdes.FieldByName('IDFIRMA').AsString  = 'S' then  chkVerFirma.Checked := True ELSE chkVerFirma.Checked  := False;
 If DM1.cdsOfdes.FieldByName('VALDATASO').AsString= 'S' then  chkValDatAso.Checked:= True ELSE chkValDatAso.Checked := False;
 If DM1.cdsOfdes.FieldByName('ACTDATREN').AsString= 'S' then  chkActDatRen.Checked:= True ELSE chkActDatRen.Checked := False;

 pnlFlag.Left    := 152;
 pnlFlag.Top     := 80;
 pnlFlag.Visible := True;
 
end;

procedure TfCtrOfdes.Button1Click(Sender: TObject);
begin
  pnlFlag.Visible := False;
end;

end.
