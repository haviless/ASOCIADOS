unit ASO260D;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFMantAsociadoZoom = class(TForm)
    pnlzoom: TPanel;
    imgDerramaFoto: TImage;
    imgReniecFoto: TImage;
    imgDerramafirma: TImage;
    imgReniecFirma: TImage;
    Shape11: TShape;
    Shape10: TShape;
    Label40: TLabel;
    Label41: TLabel;
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
  end;

var
  FMantAsociadoZoom: TFMantAsociadoZoom;

implementation

{$R *.dfm}

procedure TFMantAsociadoZoom.Button6Click(Sender: TObject);
begin
  self.Close;
end;

end.

