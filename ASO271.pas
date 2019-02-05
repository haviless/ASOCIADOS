// Inicio Uso Estándares   :	01/08/2011
// Unidad		               :	ASO271.pas
// Formulario		           :	FConfirmarEstadoFallecidoDetalle
// Fecha de Creación	     :	21/06/2012
// Autor			             :	Juver De la Cruz
// Objetivo		             : opcion de aprobacion de fallecidos para el fondo de desgravamen
// Actualizaciones:
// DPP_201208_ASO          : 20/06/2012 JDCRUZ Creación del formulario TFConfirmarEstadoFallecidoDetalle.

Unit ASO271;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, DBCtrls, Mask, ExtCtrls, Buttons;

Type
   TFConfirmarEstadoFallecidoDetalle = Class(TForm)
      edDNI : TDBEdit;
      edAsociado : TDBEdit;
      edFechaFallecimiento : TDBEdit;
      edSolicitadoPor : TDBEdit;
      edFechaSolicitud : TDBEdit;
      edObservacion : TDBMemo;
      lbl1 : TLabel;
      lbl2 : TLabel;
      lbl3 : TLabel;
      lbl4 : TLabel;
      lbl5 : TLabel;
      lbl6 : TLabel;
      lbl7 : TLabel;
      btnConfirmar : TButton;
      btnRechazar : TButton;
      Bevel1 : TBevel;
      edSustento : TMemo;
      lbl8 : TLabel;
      BitSalir : TBitBtn;
      lblMaxCaracteres : TLabel;
      Procedure FormCreate(Sender : TObject);
      Procedure btnConfirmarClick(Sender : TObject);
      Procedure BitSalirClick(Sender : TObject);
      Procedure btnRechazarClick(Sender : TObject);
      Procedure edSustentoKeyPress(Sender : TObject; Var Key : Char);
      Procedure edSustentoExit(Sender : TObject);
   Private
      Function fn_validar_max_caract_sustento : boolean;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FConfirmarEstadoFallecidoDetalle : TFConfirmarEstadoFallecidoDetalle;

Implementation

Uses ASODM;

{$R *.dfm}
(******************************************************************************)

Procedure TFConfirmarEstadoFallecidoDetalle.FormCreate(Sender : TObject);
Begin
   edDNI.DataSource := DM1.dsQry1;
   edDNI.DataField := 'ASODNI';
   edAsociado.DataSource := DM1.dsQry1;
   edAsociado.DataField := 'ASOAPENOMDNI';
   edFechaFallecimiento.DataSource := DM1.dsQry1;
   edFechaFallecimiento.DataField := 'FECFALGES';
   edSolicitadoPor.DataSource := DM1.dsQry1;
   edSolicitadoPor.DataField := 'USUREG';
   edFechaSolicitud.DataSource := DM1.dsQry1;
   edFechaSolicitud.DataField := 'FECREG';
   edObservacion.DataSource := DM1.dsQry1;
   edObservacion.DataField := 'OBSMEM';
   edSustento.Lines.Clear;
   lblMaxCaracteres.Caption := '0 de ' + IntToStr(edSustento.MaxLength) + ' carácteres';
End;
(******************************************************************************)

Procedure TFConfirmarEstadoFallecidoDetalle.btnConfirmarClick(
   Sender : TObject);
Var
   xsSql : String;
Begin
   If trim(edSustento.Text) = '' Then
   Begin
      MessageDlg('Ingrese el sustento (Maximo 1000 caracteres)', mtInformation, [mbOK], 0);
      exit;
   End;
   If Not fn_validar_max_caract_sustento() Then exit;
   If (MessageDlg('Estos cambios no se podran revertir!' + chr(13) + chr(13) + 'Confirma que el asociado "' + edAsociado.Text + '", "SI ha fallecido"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) Then
   Begin
      xsSql :=
         'BEGIN '
         + ' UPDATE ASO_FAC_GES_DET '
         + '  SET ESTAPRFAL = ''CONFIRMADO'' '
         + '     ,USUAPRFAL = ' + QuotedStr(DM1.wUsuario)
         + '     ,FECAPRFAL = SYSDATE '
         + '     ,SUSAPRFAL = ' + QuotedStr(UpperCase(Trim(edSustento.Text)))
         + ' WHERE IDEGESFAL = ' + QuotedStr(DM1.cdsQry1.fieldbyname('IDEGESFAL').AsString)
         + '   AND ASOID = ' + QuotedStr(DM1.cdsQry1.fieldbyname('ASOID').AsString) + ';'
         + ' UPDATE APO201 '
         + '    SET FALLECIDO = ''S'', '
         + '        TIPO_FALL_ID =''X GESTION'' '
         + '  WHERE ASOID = ' + QuotedStr(DM1.cdsQry1.fieldbyname('ASOID').AsString) + ';'
         + ' COMMIT;'
         + 'END;';
         DM1.DCOM1.AppServer.EjecutaSql(xsSql);
      ModalResult := mrOk;
   End;
End;
(******************************************************************************)

Procedure TFConfirmarEstadoFallecidoDetalle.BitSalirClick(Sender : TObject);
Begin
   ModalResult := mrCancel;
End;
(******************************************************************************)

Procedure TFConfirmarEstadoFallecidoDetalle.btnRechazarClick(
   Sender : TObject);
Var
   xsSql : String;
Begin
   If trim(edSustento.Text) = '' Then
   Begin
      MessageDlg('Ingrese el sustento (Maximo 1000 caracteres)', mtInformation, [mbOK], 0);
      exit;
   End;
   If Not fn_validar_max_caract_sustento() Then exit;
   If (MessageDlg('Estos cambios no se podran revertir!' + chr(13) + chr(13) + 'Confirma que el asociado "' + edAsociado.Text + '", "NO ha fallecido"?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) Then
   Begin
      xsSql :=
         'UPDATE ASO_FAC_GES_DET '
         + ' SET ESTAPRFAL = ''DESESTIMADO'' '
         + '    ,USUAPRFAL = ' + QuotedStr(DM1.wUsuario)
         + '    ,FECAPRFAL = SYSDATE '
         + '    ,SUSAPRFAL = ' + QuotedStr(Trim(edSustento.Text))
         + 'WHERE IDEGESFAL = ' + QuotedStr(DM1.cdsQry1.fieldbyname('IDEGESFAL').AsString)
         + '  AND ASOID = ' + QuotedStr(DM1.cdsQry1.fieldbyname('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xsSql);
      ModalResult := mrOk;
   End;
End;
(******************************************************************************)

Procedure TFConfirmarEstadoFallecidoDetalle.edSustentoKeyPress(
   Sender : TObject; Var Key : Char);
Begin
   If (length(edSustento.Text) <= edSustento.MaxLength) Then
      lblMaxCaracteres.Caption := inttostr(length(edSustento.Text)) + ' de ' + IntToStr(edSustento.MaxLength) + ' carácteres'
   Else
      Key := #0;
End;
(******************************************************************************)

Function TFConfirmarEstadoFallecidoDetalle.fn_validar_max_caract_sustento() : boolean;
Begin
   lblMaxCaracteres.Caption := inttostr(length(edSustento.Text)) + ' de ' + IntToStr(edSustento.MaxLength) + ' carácteres';
   If (length(edSustento.Text) > edSustento.MaxLength) Then
   Begin
      MessageDlg('No debe de exceder el máximo de ' + IntToStr(edSustento.MaxLength) + ' carácteres en el sustento!', mtInformation, [mbOK], 0);
      result := false;
   End
   Else
      result := true;
End;
(******************************************************************************)

Procedure TFConfirmarEstadoFallecidoDetalle.edSustentoExit(
   Sender : TObject);
Begin
   fn_validar_max_caract_sustento()
End;
(******************************************************************************)
End.

