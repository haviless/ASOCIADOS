Unit ASO273;

// Inicio Uso Estándares   : 01/08/2011
// Unidad                  : ASO273
// Formulario              : fInfmImp
// Fecha de Creación       : 19/01/2015
// Autor                   : Equipo de Sistemas
// Objetivo                : Contactabilidad de Telefonos

// Actualizaciones         :
// HPC_201501_ASO          : Contactabilidad de Telefonos

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, wwdblook, Buttons;
Type
   TfInfmImp = Class(TForm)
      grpTelAso: TGroupBox;
      dblTipTel: TwwDBLookupCombo;
      Panel3: TPanel;
      EdtDesTip: TEdit;
      Label6: TLabel;
      EdtNroTel: TEdit;
      mObsTel: TMemo;
      Label1: TLabel;
      Label2: TLabel;
      BitSalir: TBitBtn;
      chkActivo: TCheckBox;
      BitGrabar: TBitBtn;
      Procedure dblTipTelChange(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure BitGrabarClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormCreate(Sender: TObject);
    procedure EdtNroTelKeyPress(Sender: TObject; var Key: Char);
   Private
    { Private declarations }
   Public
    { Public declarations }
      xsAsoid : string;
   End;

Var
   fInfmImp: TfInfmImp;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure TfInfmImp.dblTipTelChange(Sender: TObject);
Begin
   If DM1.cdsTPension.Locate('IDTEL', VarArrayof([dblTipTel.Text]), []) Then
      Begin
         EdtDesTip.Text := DM1.cdsTPension.fieldbyname('DESCRIP').AsString;
      End
   Else
      Begin
         If Length(dblTipTel.Text) <> 2 Then
            Begin
               Beep;
               EdtDesTip.Text := '';
            End;
      End;

End;

Procedure TfInfmImp.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfInfmImp.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      End

End;


Procedure TfInfmImp.BitGrabarClick(Sender: TObject);
Var
   xSQL, xActivo : String;
Begin
   If Length(Trim(dblTipTel.Text)) = 0 Then
      Begin
         MessageDlg('DEBE SELECCIONAR UN TIPO DE TELEFONO!!', mtError, [mbOk], 0);
         Exit;
      End;
   If Length(Trim(EdtNroTel.Text)) = 0 Then
      Begin
         MessageDlg('DEBE INGRESAR UN NUMERO TELEFONICO!!', mtError, [mbOk], 0);
         Exit;
      End;

   xActivo := 'N';
   If chkActivo.Checked Then xActivo := 'S';

   If DM1.xNuevo = 'S' Then
      Begin
         xSQL := 'INSERT INTO GES_TEL_ASO(IDTIPTEL, NROTELF, ACTIVO, ASOID, '
               + '                        USUARIO, HREG, OBSTEL, CODFUEINF) '
               + '  VALUES (' + QuotedStr(dblTipTel.Text) + ', ' + QuotedStr(EdtNroTel.Text) + ', ' + QuotedStr(xActivo) + ', ' + QuotedStr(xsAsoId) + ', '
               +            QuotedStr(DM1.wUsuario) + ', SYSDATE, SUBSTR(UPPER(' + QuotedStr(mObsTel.Text) + '),1,100), ''05'')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
   ModalResult := mrOK;
End;

procedure TfInfmImp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;
(******************************************************************************)

procedure TfInfmImp.FormCreate(Sender: TObject);
VAR xSQL : String;
begin
   xSQL := 'SELECT CODTIPTEL IDTEL, DESTIPTEL DESCRIP FROM GES_TIP_TEL_MAE ORDER BY CODTIPTEL';
   DM1.cdsTPension.Close;
   DM1.cdsTPension.DataRequest(xSQL);
   DM1.cdsTPension.Open;
   dblTipTel.LookupTable := DM1.cdsTPension;
   dblTipTel.LookupField := 'IDTEL';
   dblTipTel.Selected.Clear;
   dblTipTel.Selected.Add('IDTEL'#9'3'#9'Código'#9#9);
   dblTipTel.Selected.Add('DESCRIP'#9'20'#9'Descripción'#9#9);
end;
(******************************************************************************)
procedure TfInfmImp.EdtNroTelKeyPress(Sender: TObject; var Key: Char);
begin
    If Key In [' ', 'Ñ', 'ñ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´',{ '*',} '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', ''''{, '-'}, '_','.'] Then
    Key := #0;
end;

End.

