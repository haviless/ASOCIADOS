unit ASO947;

interface

uses
  {Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;}
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, fcButton, fcImgBtn,
  fcShapeBtn, ExtCtrls, wwdbdatetimepicker, Db, ppBands, ppVar, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, Buttons;


type
  TfAutCtas = class(TForm)
    grpDatos: TGroupBox;
    mMotivo: TMemo;
    Panel1: TPanel;
    lblAsoApenom: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    lblAsonCta: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblUser: TLabel;
    lblHreg: TLabel;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAutCtas: TfAutCtas;

implementation

uses ASODM;

{$R *.dfm}

procedure TfAutCtas.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfAutCtas.BitGrabarClick(Sender: TObject);
var xSQL,xAsoId,xCuenta:String;
begin
xAsoId:=DM1.cdsUSESy.FieldByName('ASOID').Asstring;
xCuenta:=DM1.cdsUSESy.FieldByName('ASONCTA').Asstring;
If Length(Trim(mMotivo.Text))=0 Then
   Begin
     MessageDlg('Debe Ingresar El Motivo De La Autorización De La CUENTA DE AHORROS !!! ', mtError, [mbOk], 0);
     Exit;
   End;

   xSQL:='UPDATE ASO002 SET FECAUT='+QuotedStr(DateToStr(DM1.FechaSys))+',USRAUT='+QuotedStr(DM1.wUsuario)+',MOTAUT='+QuotedStr(Trim(mMotivo.Text))+',FHAUT=SYSDATE  WHERE ASOID='+QuotedStr(xAsoId)+' AND ASONCTA='+QuotedStr(Trim(xCuenta)) ;
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   Close;
   DM1.cdsUSESy.Close; DM1.cdsUSESy.Open;
   DM1.cdsUSESy.Locate('ASONCTA', VarArrayOf([TRIM(xCuenta)]), [loPartialKey]);

   MessageDlg('Cuenta De Ahorros PERSONAL Autorizada..!', mtInformation, [mbOk], 0);
   




end;

end.
