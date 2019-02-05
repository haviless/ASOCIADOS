unit ASO941;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, fcButton, fcImgBtn, fcShapeBtn;

type
  TfNuePerfil = class(TForm)
    GroupBox1: TGroupBox;
    EdtPerfil: TEdit;
    z2bbtnAcepta: TfcShapeBtn;
    procedure z2bbtnAceptaClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNuePerfil: TfNuePerfil;

implementation

uses ASODM;

{$R *.dfm}

procedure TfNuePerfil.z2bbtnAceptaClick(Sender: TObject);
var xSQL:String;
begin
If Length(Trim(EdtPerfil.Text))=0 Then
   Begin
     MessageDlg('Debe Ingresar Un Nombre Para El Nuevo Perfil!', mtError, [mbOk], 0);
     Exit;
   End;


If Length(Trim(EdtPerfil.Text))>15 Then
   Begin
     MessageDlg('Maximo 15 Caracteres Para El Nuevo Perfil!', mtError, [mbOk], 0);
     Exit;
   End;

xSQL:='INSERT INTO SIS002(PERFIL,USUARIO,HREG) VALUES ('+QuotedStr(EdtPerfil.Text)+','+QuotedStr(DM1.wUsuario)+',SYSDATE)';
DM1.DCOM1.AppServer.EjecutaSql(xSQL);
EdtPerfil.Text:=''; Close;
xSQL:='SELECT PERFIL,USUARIO,HREG FROM SIS002 ORDER BY PERFIL';
DM1.cdsProf.Close; DM1.cdsProf.DataRequest(xSQL); DM1.cdsProf.Open;


end;

procedure TfNuePerfil.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

end.
