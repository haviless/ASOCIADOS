unit ASO260K;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, fcLabel, ExtCtrls;

type
  TFMantAsociadoAutDes = class(TForm)
    pnlmenautdes: TPanel;
    StaticText1: TStaticText;
    GroupBox3: TGroupBox;
    fcLabel1: TfcLabel;
    lblDcto: TfcLabel;
    btnacepta: TBitBtn;
    procedure btnaceptaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MostrarDcto(FlgDcto: boolean);
  end;

var
  FMantAsociadoAutDes: TFMantAsociadoAutDes;

implementation

{$R *.dfm}

procedure TFMantAsociadoAutDes.btnaceptaClick(Sender: TObject);
begin
  self.Close;
end;

procedure TFMantAsociadoAutDes.MostrarDcto(FlgDcto: boolean);
begin
  lblDcto.Visible := FlgDcto;
end;

end.
