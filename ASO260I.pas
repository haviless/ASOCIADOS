unit ASO260I;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls;

type
  TFMantAsociadoIguApeLiqAnt = class(TForm)
    pnlValAsoPrev: TPanel;
    dbgValAsoPrev: TwwDBGrid;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    bConfirmado: boolean;
    bExistenDatos: boolean;
    procedure CargarDatos(xnombres: string);
  end;

var
  FMantAsociadoIguApeLiqAnt: TFMantAsociadoIguApeLiqAnt;

implementation

uses ASODM;

{$R *.dfm}

procedure TFMantAsociadoIguApeLiqAnt.BitBtn2Click(Sender: TObject);
begin
  bConfirmado := true;
  //Grabacion2;
  self.Close;
end;

procedure TFMantAsociadoIguApeLiqAnt.FormCreate(Sender: TObject);
begin
  bConfirmado := false;
  bExistenDatos := false;
end;

procedure TFMantAsociadoIguApeLiqAnt.CargarDatos(xnombres: string);
var
  xSql: string;
begin
  xSql := 'SELECT ANO||''-''||NUM_EXP NUM_EXP, FEC_EXP, COD_MOD, NUM_EXP, NOM_GEN, LIB_ELE, COD_MOD FROM PVS315 WHERE NOM_GEN LIKE ' + QuotedStr(Trim(xnombres) + '%');
  DM1.cdsMGrupo.Close;
  DM1.cdsMGrupo.DataRequest(xSql);
  DM1.cdsMGrupo.Open;
  If DM1.cdsMGrupo.RecordCount >  0 Then
  begin
    bExistenDatos := true;
    dbgValAsoPrev.Selected.Clear;
    dbgValAsoPrev.Selected.Add('NUM_EXP'#9'12'#9'Nmero del~Expediente'#9#9);
    dbgValAsoPrev.Selected.Add('FEC_EXP'#9'10'#9'Fecha del~Expediente'#9#9);
    dbgValAsoPrev.Selected.Add('COD_MOD'#9'10'#9'C digo~modular'#9#9);
    dbgValAsoPrev.Selected.Add('NOM_GEN'#9'35'#9'Apellidos y~Nombres'#9#9);
    dbgValAsoPrev.Selected.Add('LIB_ELE'#9'10'#9'Libreta~Electoral'#9#9);
    dbgValAsoPrev.DataSource := DM1.dsMGrupo;
  end
  else
    self.Close;
end;

procedure TFMantAsociadoIguApeLiqAnt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.IndexFieldNames := '';
end;

end.
