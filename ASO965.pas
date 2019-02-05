unit ASO965;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdblook, wwdbdatetimepicker, ExtCtrls, StdCtrls, Mask, wwdbedit,
  Buttons;

type
  TFActNuevo = class(TForm)
    gbIdentidadAso: TGroupBox;
    Label6: TLabel;
    Label16: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label14: TLabel;
    Panel14: TPanel;
    dbeSexo: TwwDBEdit;
    pnlRENIEC1: TPanel;
    EdtApePatDni: TwwDBEdit;
    EdtApeMatDni: TwwDBEdit;
    EdtAsoNomDni: TwwDBEdit;
    pnlRENIEC2: TPanel;
    dbdtFecNac: TwwDBDateTimePicker;
    pnlRENIEC3: TPanel;
    DbLlSexo: TwwDBLookupCombo;
    Panel1: TPanel;
    dbeLibDni: TwwDBEdit;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    procedure BitGrabarClick(Sender: TObject);
    procedure DbLlSexoChange(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FActNuevo: TFActNuevo;

implementation

{$R *.dfm}

uses ASODM, ASO260;

procedure TFActNuevo.BitGrabarClick(Sender: TObject);
var
   xSolicitud, xSQL, xAsoid  : String;
begin
   if FMantAsociado.validaAsoDniNuevo(trim(dbeLibDni.Text)) then
      Begin
        MessageDlg('DNI Ya Existe, Solicitud fue creada', mtError, [mbOk], 0);
        if (gbIdentidadAso.Enabled) and (dbeLibDni.Enabled) then  dbeLibDni.SetFocus ;
   End;

   If MessageDlg('¿ Esta seguro ?' ,mtConfirmation, [mbYes, mbNo], 0) = mrNo  then
      Begin
         exit;
      End;

   xSolicitud:=FMantAsociado.AsignaSolicitud;
   xAsoid    :=FMantAsociado.AsignaAsoid;

   xSQL:='INSERT INTO '+DM1.sAPO201+'( SOLICITUD, ASOID, ASODNI, EST_AUT_CLI, '
        +   'ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASOFECNAC, ASOSEXO) '// , ACTARCREN ) '
        +'VALUES ( '''+xSolicitud+''', '''+xAsoid+''', '''+dbeLibDni.Text+''', ''NU'', '
        +   QuotedStr(TRIM(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString))+', '
        +   QuotedStr(TRIM(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString))+', '
        +   QuotedStr(TRIM(DM1.cdsAso.FieldByName('ASONOMDNI').AsString))   +', '
        +   QuotedStr(TRIM(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString) +' '
                     +TRIM(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString) +' '
                     +TRIM(DM1.cdsAso.FieldByName('ASONOMDNI').AsString)   )+', '
        +   QuotedStr(DM1.cdsAso.FieldByName('ASOFECNAC').AsString)         +', '
        +   QuotedStr(DM1.cdsAso.FieldByName('ASOSEXO').AsString)           +' )'; //, ''S'' )';
   dm1.cdsQry2.Close;
   dm1.cdsQry2.DataRequest( xSQL );
   dm1.cdsQry2.Execute;
   xSQL:='SELECT * FROM '+DM1.sAPO201+' '
        +'WHERE SOLICITUD='''+xSolicitud+''' AND ASOID='+QuotedStr(Trim(xAsoid));

   DM1.sAso_where:='SOLICITUD='''+xSolicitud+''' AND ';

   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSQL);
   DM1.cdsAso.Open;
   xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
   DM1.xInsert := '0';
   FMantAsociado.dbeLibDni.Enabled := False;
   FMantAsociado.xReniec:='N';
   Close;
end;

procedure TFActNuevo.DbLlSexoChange(Sender: TObject);
begin
   If DM1.cdsSexo.Locate('ID',DbLlSexo.Text,[]) then
      Begin
        dbeSexo.Text := DM1.cdsSexo.FieldByName('DESCRIP').asstring
      End
   Else
      Begin
        if Length(DbLlSexo.Text) <> 2 then
           Begin
              Beep;
              dbeSexo.Text  :='';
           End;
      End
end;

procedure TFActNuevo.BitSalirClick(Sender: TObject);
begin
   Close;
end;

end.
