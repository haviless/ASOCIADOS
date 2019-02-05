unit ASO958D;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Buttons;

type
  TFRechazar = class(TForm)
    BitSalir: TBitBtn;
    BitGrabar: TBitBtn;
    pnlObs: TPanel;
    dbmObsRechazo: TDBMemo;
    procedure BitGrabarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRechazar: TFRechazar;

implementation

uses ASODM, ASO260;

{$R *.dfm}

procedure TFRechazar.BitGrabarClick(Sender: TObject);
var
   xSQL : String;
begin
   if length(trim(DM1.cdsAso.FieldByname('obs_aut_cli').AsString))<5 then
   begin
      ShowMessage('Debe Ingresar Motivo de Rechazo');
      Exit;
   end;
   if MessageDlg('RECHAZAR A NUEVO CLIENTE. ¿ ESTA SEGURO ?' ,mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

   xSQL:='SELECT ASOID FROM ASO_NUE_CLI '
        +'WHERE SOLICITUD='+QuotedStr( DM1.cdsAso.FieldByname('SOLICITUD').AsString )
        + ' and EST_AUT_CLI=''N3''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount<=0 then
   begin
      ShowMessage('NO Existe Asociado Nuevo para Rechazar, con DNI '+DM1.cdsAso.FieldByname('ASODNI').AsString+'. Verificar...');
      Exit;
   end;

   xSQL:='Update ASO_NUE_CLI set EST_AUT_CLI=''RE'', '
        +       'USU_AUT_CLI='''+DM1.wUsuario+''', FEC_AUT_CLI=SYSDATE, '
        +       'obs_aut_cli='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli').AsString )+' '
        +'WHERE SOLICITUD='+QuotedStr( DM1.cdsAso.FieldByname('SOLICITUD').AsString )
        + ' and ASOID='    +QuotedStr( DM1.cdsAso.FieldByname('ASOID').AsString )
        + ' and EST_AUT_CLI=''N3''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;

   FMantAsociado.bbtnN1.Enabled:=False;
   FMantAsociado.bitAutoriza.Enabled:=False;
   FMantAsociado.bitRechaza.Enabled:=False;
   FMantAsociado.ActivaSalir;

   pnlObs.Enabled:=False;
   BitGrabar.Enabled:=False;

   ShowMessage('Rechazado');

end;

procedure TFRechazar.BitSalirClick(Sender: TObject);
begin
   Close
end;

procedure TFRechazar.FormShow(Sender: TObject);
begin
//   if copy(dbmObsRechazo.Text,1,13) = 'dbmObsRechazo' then
      dbmObsRechazo.Text:='';
end;

end.
