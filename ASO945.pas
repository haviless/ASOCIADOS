unit ASO945;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, ppDB,
  ppDBPipe, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppComm,
  ppRelatv, ppProd, ppReport;

type
  TfContRegistro = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    BitLog: TBitBtn;
    dtgUsuarios: TwwDBGrid;
    pUsuario: TPanel;
    lblUsuario: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblOrigen: TLabel;
    Label3: TLabel;
    lblNivel: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ppDBEstCta01: TppDBPipeline;
    ppREstCta01: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppLine7: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLblTitulo01: TppLabel;
    ppLine8: TppLine;
    ppLabel20: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    lblUser01: TppLabel;
    lblOrig01: TppLabel;
    lblNiv01: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLine9: TppLine;
    ppLabel39: TppLabel;
    ppLine10: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLine11: TppLine;
    procedure BitLogClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure dtgUsuariosDblClick(Sender: TObject);
    procedure dtgUsuariosRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure CrgUser;
  public
    { Public declarations }
  end;

var
  fContRegistro: TfContRegistro;

implementation

uses ASODM;

{$R *.dfm}

procedure TfContRegistro.BitLogClick(Sender: TObject);
var xSQL:String;
begin
   Screen.Cursor:=crHourGlass;
   xSQL:='SELECT A.USERID,A.TABLA,B.CAMPODES,A.USRAUT,FREG,USRRET,FRET FROM SIS004 A,SIS001 B WHERE A.USERID='+QuotedStr(DM1.cdsUsesx.FieldByName('USERID').AsString)+' AND A.TABLA=B.TABLA AND A.CAMPO=B.CAMPO AND A.COMPONENTE=B.COMPONENTE ORDER BY FREG ';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(xSQL);
   DM1.cdsCEdu.Open;
   If DM1.cdsCEdu.RecordCount > 0 Then
      Begin
          ppLblTitulo01.Caption:='DETALLE DE CONTROL DE ASIGNACION DE ACCESO AL : '+DateToStr(DM1.FechaSys)+' (LOG)';;
          lbluser01.Caption:= lblUsuario.Caption;
          lblorig01.Caption:= lblOrigen.Caption;
          lblniv01.Caption:=  lblNivel.Caption;
          ppREstCta01.Print;
          ppREstCta01.Cancel;
      End;
      DM1.cdsCEdu.Close;

   Screen.Cursor:=crDefault;
end;

procedure TfContRegistro.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfContRegistro.CrgUser;
begin
lblUsuario.Caption:=DM1.cdsUsesX.Fieldbyname('USERID').AsString+' - '+DM1.cdsUsesX.Fieldbyname('USERNOM').AsString;
lblOrigen.Caption:=DM1.cdsUsesX.Fieldbyname('OFDESNOM').AsString;
lblNivel.Caption := DM1.RecuperaDatos('CRE800','NIVELID',DM1.cdsUsesX.Fieldbyname('NIVEL').AsString,'NIVELDES') ;

end;

procedure TfContRegistro.dtgUsuariosDblClick(Sender: TObject);
begin
CrgUser;
end;

procedure TfContRegistro.dtgUsuariosRowChanged(Sender: TObject);
begin
 CrgUser;
end;

end.
