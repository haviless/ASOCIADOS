// Inicio Uso Estándares: 01/08/2011
// Unidad               : PRE292C
// Formulario           : FNueSegExp
// Fecha de Creación    : 07/06/2017
// Autor                : Jesús Castillo Pampas
// Objetivo             : Formulario de Consulta de seguimiento del Expediente de Beneficios
// Actualizaciones      :
//HPC_201702_ASO        : Creación del Formulario

//Inicio HPC_201702_ASO
//Creación de formulario que muestra los datos del seguimiento del Expediente de Beneficios

unit PRE292C;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, wwriched, wwdbdatetimepicker, ExtCtrls,
  fcButton, fcImgBtn, fcShapeBtn, Buttons, Wwdbigrd, Grids, Wwdbgrid;

type
  TFNueSegExp = class(TForm)
    dbgSegExp: TwwDBGrid;
    btncerrar: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    stNumExp: TStaticText;
    stFecreg: TStaticText;
    stUsuReg: TStaticText;
    Label4: TLabel;
    stasoapenom: TStaticText;
    procedure FormActivate(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNueSegExp: TFNueSegExp;

implementation

uses ASODM, PRE235C;

{$R *.dfm}

procedure TFNueSegExp.FormActivate(Sender: TObject);
Var xSql:String;
begin
   stNumExp.Caption := DM1.cdsExpLiq.FieldByName('PVSEXPNRO').AsString;
   stFecreg.Caption := DM1.cdsExpLiq.FieldByName('PVSFECEXP').AsString;
   stUsuReg.Caption := DM1.cdsExpLiq.FieldByName('USUARIO').AsString;
   stasoapenom.Caption := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
   xSql := 'SELECT  E.OFDESNOM, F.DPTODES, A.ASOAPENOM, A.NUMEXP, A.FEC_HOR_CRE, A.USU_CRE, B.ITEM, B.CODESTEXP, C.DESESPEXP, B.CODSITEXP, B.USUARIO, B.FECSITEXP,'
   +' D.DESSITEXP, B.USUARIO, B.FECSITEXP, B.COMOBS'
   +' FROM PVSSEGEXPCAB A, PVSSEGEXPDET B, PVSSEGESTREF C,  PVSSEGSITREF D, APO110 E, APO158 F'
   +' WHERE A.ASOID = '+QuotedStr(DM1.cdsExpLiq.FieldByName('ASOID').AsString)+' AND A.NUMEXP = '+QuotedStr(DM1.cdsExpLiq.FieldByName('PVSEXPNRO').AsString)
   +' AND A.ASOID = B.ASOID AND A.NUMEXP = B.NUMEXP'
   +' AND B.CODESTEXP = C.CODESTEXP'
   +' AND B.CODESTEXP = D.CODESTEXP AND B.CODSITEXP = D.CODSITEXP'
   +' AND A.OFDESID = E.OFDESID'
   +' AND A.DPTOID = F.DPTOID'
   +' ORDER BY A.ITEM';
   DM1.cdsFonSolDet.Close;
   DM1.cdsFonSolDet.DataRequest(xSql);
   DM1.cdsFonSolDet.Open;
   dbgSegExp.Selected.Clear;
   dbgSegExp.Selected.Add('ITEM'#9'2'#9'Item'#9#9);
   dbgSegExp.Selected.Add('DPTODES'#9'18'#9'Departamento~que registra'#9#9);
   dbgSegExp.Selected.Add('OFDESNOM'#9'25'#9'Oficina que~registra'#9#9);
   dbgSegExp.Selected.Add('CODESTEXP'#9'2'#9'Código de~estado'#9#9);
   dbgSegExp.Selected.Add('DESESPEXP'#9'20'#9'Descripción~de estado'#9#9);
   dbgSegExp.Selected.Add('CODSITEXP'#9'2'#9'Código de~Situación'#9#9);
   dbgSegExp.Selected.Add('DESSITEXP'#9'20'#9'Descripción de~Situación'#9#9);
   dbgSegExp.Selected.Add('COMOBS'#9'30'#9'Observación'#9#9);
   dbgSegExp.Selected.Add('USUARIO'#9'15'#9'Usuario que~registra'#9#9);
   dbgSegExp.Selected.Add('FECSITEXP'#9'10'#9'Fecha que~registra'#9#9);
   dbgSegExp.ApplySelected;
end;

procedure TFNueSegExp.btncerrarClick(Sender: TObject);
begin
   FnueSegExp.Close;
end;

end.
//Final HPC_201702_ASO
