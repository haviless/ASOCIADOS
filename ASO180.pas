// Inicio Uso Estándares : 01/08/2011
// Unidad                : ASO180.pas
// Formulario            : Fcamtipaso
// Fecha de Creación     :
// Autor                 : Equipo de Desarrollo de Sistemas DM
// Objetivo              : Mantenimiento del tipo de Asociado
// Actualizaciones:
// HPC_201601_ASO : AMPLIAR ALCANCE DE LIQUIDACIONES ANTIGUAS

Unit ASO180;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, wwdblook, Wwdbdlg,
   wwdbdatetimepicker;

Type
   TFcamtipaso = Class(TForm)
      GroupBox1: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Panel1: TPanel;
      edtasocodmod: TEdit;
      Panel2: TPanel;
      edtasoapenom: TEdit;
      Panel3: TPanel;
      edtupronom: TEdit;
      Panel4: TPanel;
      edtusenom: TEdit;
      Label5: TLabel;
      Panel5: TPanel;
      edtasotipid: TEdit;
      gbmodificar: TGroupBox;
      btnModificar: TBitBtn;
      btnActualizar: TBitBtn;
      btnCerrar: TBitBtn;
      dblcdtipaso: TwwDBLookupComboDlg;
      Panel6: TPanel;
      metipaso: TMaskEdit;
      //Inicio: HPP_200913_ASO
      //se cambia nombre a group box de GroupBox2 A gbNroResol para poder dar atributos en tiempo de ejecución
      gbNroResol: TGroupBox;
      //Fin: HPP_200913_ASO
      Label6: TLabel;
      //Inicio: HPP_200913_ASO
      //se cambia nombre a label de Fecha de Inicio de Label7 A lblFecinicio para poder dar atributos en tiempo de ejecución
      lblFecinicio: TLabel;
      //Fin: HPP_200913_ASO
      Panel7: TPanel;
      menumresnom: TMaskEdit;
      dbdtpfecresnom: TwwDBDateTimePicker;
      pnlconfirmacion: TPanel;
      Memo1: TMemo;
      BtnAceptar: TBitBtn;
      BtnCancelar: TBitBtn;
      BtnConfirmar2: TBitBtn;
      StaticText1: TStaticText;
      Memo2: TMemo;
      BtnCancelar2: TBitBtn;
      Timer1: TTimer;
      Timer2: TTimer;
      //Inicio: HPP_200913_ASO
      // se añade label y datetimepicker para fecha final del contrato
      lblFechaFinal: TLabel;
      dbdtpFechaFinal: TwwDBDateTimePicker;
      //Fin: HPP_200913_ASO
      // INICIO HPC_201601_ASO
	  // DESACTIVA PROCEDURE
      //Procedure FormActivate(Sender: TObject);
      // FIN HPC_201601_ASO
      Procedure btnCerrarClick(Sender: TObject);
      Procedure dblcdtipasoExit(Sender: TObject);
      Procedure btnModificarClick(Sender: TObject);
      Procedure btnActualizarClick(Sender: TObject);
      Procedure BtnCancelarClick(Sender: TObject);
      Procedure BtnConfirmar2Click(Sender: TObject);
      Procedure BtnCancelar2Click(Sender: TObject);
      Procedure BtnAceptarClick(Sender: TObject);
      Procedure Timer2Timer(Sender: TObject);
      Procedure Timer1Timer(Sender: TObject);
      //Inicio: HPP_200913_ASO
      // se añade evento FormClose para cerrar cdsAso, para que no comprometa la estructura parcialmente abierta
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      //Fin: HPP_200913_ASO

      //Inicio: HPP_200913_ASO
      // se cambia control para q ENTER=TAB
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      // INICIO HPC_201601_ASO
	  // DECLARA PROCEDURE
      procedure FormCreate(Sender: TObject);
      // FIN HPC_201601_ASO
      //Fin: HPP_200913_ASO
   Private
      { Private declarations }
   Public
      { Public declarations }
   End;

Var
   Fcamtipaso: TFcamtipaso;

Implementation

Uses ASODM;

{$R *.dfm}
// INICIO HPC_201601_ASO
// INVOCA A OTRO PROCEDURE
// Procedure TFcamtipaso.FormActivate(Sender: TObject);
procedure TFcamtipaso.FormCreate(Sender: TObject);
// FIN HPC_201601_ASO
Begin
   edtasocodmod.Text := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   edtasoapenom.Text := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest('SELECT UPRONOM FROM APO102 '
      + 'WHERE UPROID = ' + QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString));
   DM1.cdsQry.Open;
   edtupronom.Text := DM1.cdsQry.FieldByName('UPRONOM').AsString;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest('SELECT USENOM '
      + 'FROM APO101 '
      + 'WHERE UPROID = ' + QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)
      + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString)
      + ' AND USEID = ' + QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString));
   DM1.cdsQry.Open;
   edtusenom.Text := DM1.cdsQry.FieldByName('USENOM').AsString;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest('SELECT ASOTIPID, ASOTIPDES '
      + 'FROM APO107 '
      + 'WHERE ASOTIPID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString));
   DM1.cdsQry.Open;
   edtasotipid.Text := DM1.cdsQry.FieldByName('ASOTIPID').AsString + ' - '
      + DM1.cdsQry.FieldByName('ASOTIPDES').AsString;

   //Inicio: HPP_200913_ASO
   // Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
   // se cambia apertura de tabla de Tipo de Asociado para abrir en el botón modificar
   // dependiendo del Tipo de Asociado original, el universo permitido cambia
   (*
   DM1.cdsTAso.Close;
   DM1.cdsTAso.DataRequest('SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'')');
   DM1.cdsTAso.Open;
   dblcdtipaso.Selected.Clear;
   dblcdtipaso.Selected.Add('ASOTIPID'#9'2'#9'Código'#9#9);
   dblcdtipaso.Selected.Add('ASOTIPDES'#9'25'#9'Descripción'#9#9);
   *)
   //Fin: HPP_200913_ASO

   gbmodificar.Enabled     := False;
   btnModificar.Enabled    := True;
   pnlconfirmacion.Visible := False;

   //Inicio: HPP_200913_ASO
   // se pone datos de fecha final de contrato en invisible por default
   lblFecinicio.Caption    := 'Fecha:';
   lblFechaFinal.Visible   := False;
   dbdtpFechaFinal.Visible := False;
   //Fin: HPP_200913_ASO
End;

Procedure TFcamtipaso.btnCerrarClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFcamtipaso.dblcdtipasoExit(Sender: TObject);
Begin
   If DM1.cdsTAso.Locate('ASOTIPID', dblcdtipaso.Text, []) Then
   //Inicio: HPP_200913_ASO
   // Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
   // Si cambia el Tipo de Asociado a Contratado cambia el label
   // del groupbox poniendo en Visible la fecha final de contrato
   Begin
      metipaso.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').AsString;
      // INICIO HPC_201601_ASO
	  // CAMBIA ETIQUETA
      //gbNroResol.Caption      := ' Resolución de nombramiento ';
      gbNroResol.Caption      := ' Datos de Resolución ';
      menumresnom.Text    := '';
      dbdtpfecresnom.Text := '';
      dbdtpfecresnom.Enabled := True;
      menumresnom.Enabled := True;
      // FIN HPC_201601_ASO
      lblFecinicio.Caption    := 'Fecha:';
      lblFechaFinal.Visible   := False;
      dbdtpFechaFinal.Visible := False;
      If dblcdtipaso.Text = 'CO' Then
      Begin
         gbNroResol.Caption      := ' Datos del Contrato ';
         lblFecinicio.Caption    := 'Fecha Inicial:';
         lblFechaFinal.Visible   := True;
         dbdtpFechaFinal.Visible := True;
         // INICIO HPC_201601_ASO
		 // LIMPIA OBJETO
         dbdtpFechaFinal.Text    := '';
         // FIN HPC_201601_ASO
      End;
      // INICIO HPC_201601_ASO
	  // AGREGA REGLAS PAR OT
      If dblcdtipaso.Text = 'OT' Then
      Begin
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest('SELECT TO_CHAR(SYSDATE,''YYYY'') RESOLUCION, TO_DATE(SYSDATE,''DD/MM/YYYY'') FECHA FROM DUAL');
         DM1.cdsQry.Open;
         menumresnom.Text    := DM1.cdsQry.FieldByName('RESOLUCION').AsString;
         dbdtpfecresnom.Date := DM1.cdsQry.FieldByName('FECHA').Value;
         menumresnom.Enabled := False;
         dbdtpfecresnom.Enabled := False;
      End;
      // FIN HPC_201601_ASO
   End
   //Fin: HPP_200913_ASO

   Else
   Begin
      dblcdtipaso.Text := '';
      metipaso.Text := '';
   End;
End;

Procedure TFcamtipaso.btnModificarClick(Sender: TObject);
Var
   xSQL: String;
// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
// Se añade la variable xSinAportes para determinar si abre la posibilidad
//  o no de permitir el cambio a Docentes
//  si xSinAportes es falso, se puede cambiar a DOcentes o COntratado
//  si xSinAportes es Verdadero, sólo se puede cambiar a Contratado
   xSinAportes: boolean;
// Fin: HPP_200913_ASO
Begin

// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098

// Se incluye también a Cesantes
   // INICIO HPC_201601_ASO
   // CAMBIA REGLA PARA TIPOS DE ASOCIADOS
   // If (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'OT') And
   //    (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'AD') And
   //    (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CO') And
   //    (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE') Then
   If (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'AD') And
      (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE') And
      (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CO') And
      (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'DO') And
      (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'OT')
   Then
   // FIN HPC_201601_ASO
   Begin
      MessageDlg('<< Tipo de Asociado no puede ser modificado >>', mtError,
         [mbRetry], 0);
      Exit;
   End;

// Se valida que si es Contratado no esté vigente la fecha final de contrato
   If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO' Then
   Begin
      If DM1.cdsAso.FieldByName('ASOFRESCESE').AsdateTime > DM1.FechaSys Then
      Begin
         MessageDlg('<< Fecha de Contrato aún esta Vigente >>', mtError,
            [mbRetry], 0);
         exit;
      End;
   End;

   // INICIO HPC_201601_ASO
   // CAMBIA REGLAS PARA TIPO DE ASOCIADO
   // If ((DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CO')
   //    And (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE')) Then
   // Begin
   //    xSQL := 'select ASOID from APO301 where ASOID=' + quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString);
   //    DM1.cdsQry.Close;
   //    DM1.cdsQry.DataRequest(xSQL);
   //    DM1.cdsQry.Open;
   //
   // // Considera las aportaciones como flag para ver a donde puede ir
   //    If DM1.cdsQry.RecordCount < 1 Then
   //    Begin
   //       xSinAportes := True;
   //    End;
   //
   // End;
   // FIN HPC_201601_ASO

// Incluye para Cesantes pasar a Contratado
// Para OTROS, ADMINISTRATIVOS, No Identificados pasar a Docentes o contratados
// dependiendo del Tipo de Asociado original, el universo permitido cambia
   // INICIO HPC_201601_ASO
   // CAMBIA REGLAS PARA TIPOS DE ASOCIADOS
   // If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') Then
   //    xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CO'')'
   // Else
   //    If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO') Then
   //       xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'')'
   //    Else
   //       If xSinAportes Then
   //          xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CO'') '
   //       Else
   //          xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'',''CO'') ';
   If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'AD') Then
      xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CE'',''DO'',''OT'') ORDER BY ASOTIPID'
   Else If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') Then
      xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CO'',''OT'') ORDER BY ASOTIPID' (* NO SE CONSIDERA EL DO PORQUE ES UN REINGRESO *)
   Else If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO') Then
      xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CE'',''DO'',''OT'') ORDER BY ASOTIPID'
   Else If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO') Then
      xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''AD'',''CE'',''CO'',''OT'') ORDER BY ASOTIPID'
   Else If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'OT') Then
      xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''AD'',''CE'',''CO'',''DO'') ORDER BY ASOTIPID'
   Else
      xSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''XXX'') ORDER BY ASOTIPID';
   // FIN HPC_201601_ASO
   DM1.cdsTAso.Close;
   DM1.cdsTAso.DataRequest(xSQL);
   DM1.cdsTAso.Open;
   dblcdtipaso.Selected.Clear;
   dblcdtipaso.Selected.Add('ASOTIPID'#9'2'#9'Código'#9#9);
   dblcdtipaso.Selected.Add('ASOTIPDES'#9'25'#9'Descripción'#9#9);
// Fin: de los cambio en HPP_200913_ASO

   gbmodificar.Enabled := True;
   btnModificar.Enabled := True;
   btnActualizar.Enabled := True;
   // INICIO HPC_201601_ASO
   // VALIDA QUE EL OBJETO ESTE VISIBLE
   if self.Visible then dblcdtipaso.SetFocus;
   // FIN HPC_201601_ASO
End;

Procedure TFcamtipaso.btnActualizarClick(Sender: TObject);
Var
   xSql: String;
Begin
// Inicio: HPP_200913_ASO
// verifica que sólo sea DO o CO y no esté vacío
   // INICIO HPC_201601_ASO
   // CAMBIA REGLAS PARA TIPO DE ASOCIADO
   //If ((dblcdtipaso.Text <> 'DO') And (dblcdtipaso.Text <> 'CO')) Then
   If (dblcdtipaso.Text = '') Then
   // FIN HPC_201601_ASO
   Begin
      MessageDlg('<< Seleccione el Tipo de Asociado. >>', mtError,
         [mbRetry], 0);
      dblcdtipaso.SetFocus;
      Exit;
   End;
// Fin: HPP_200913_ASO

   If Trim(menumresnom.Text) = '' Then
   Begin
// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
// Si condiciona el mensaje, dependiendo del Tipo de Asociado elegido a cambiar
      // INICIO HPC_201601_ASO
	  // CAMBIA REGLAS PARA TIPO DE ASOCIADO
      // If dblcdtipaso.Text = 'DO' Then
      //    MessageDlg('<< Ingrese el número de resolución de nombramiento. >>', mtError, [mbRetry], 0)
      // Else
      //    MessageDlg('<< Ingrese el número de Contrato. >>', mtError, [mbRetry], 0);
      If dblcdtipaso.Text = 'AD' Then
         MessageDlg('<< Ingrese el número de resolución. >>', mtError, [mbRetry], 0)
      Else If dblcdtipaso.Text = 'CE' Then
         MessageDlg('<< Ingrese el número de resolución de cese. >>', mtError, [mbRetry], 0)
      Else If dblcdtipaso.Text = 'CO' Then
         MessageDlg('<< Ingrese el número de resolución de contrato. >>', mtError, [mbRetry], 0)
      Else If dblcdtipaso.Text = 'DO' Then
         MessageDlg('<< Ingrese el número de resolución de nombramiento. >>', mtError, [mbRetry], 0)
      Else
         MessageDlg('<< Ingrese el número de resolución. >>', mtError, [mbRetry], 0);
      // FIN HPC_201601_ASO
// Fin: HPP_200913_ASO
      menumresnom.SetFocus;
      Exit;
   End;

   If Trim(dbdtpfecresnom.Text) = '' Then
   Begin
// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
// Si condiciona el mensaje, dependiendo del Tipo de Asociado elegido a cambiar
      // INICIO HPC_201601_ASO
	  // CAMBIA REGLAS PARA TIPO DE ASOCIADO
      // If dblcdtipaso.Text = 'DO' Then
      //    MessageDlg('<< Ingrese la fecha de resolución de nombramiento. >>', mtError, [mbRetry], 0)
      // Else
      //    MessageDlg('<< Ingrese la Fecha Inicial del Contrato. >>', mtError, [mbRetry], 0);
      If dblcdtipaso.Text = 'AD' Then
         MessageDlg('<< Ingrese la fecha de resolución. >>', mtError, [mbRetry], 0)
      Else If dblcdtipaso.Text = 'CE' Then
         MessageDlg('<< Ingrese la fecha de resolución de cese. >>', mtError, [mbRetry], 0)
      Else If dblcdtipaso.Text = 'CO' Then
         MessageDlg('<< Ingrese la fecha de resolución de contrato. >>', mtError, [mbRetry], 0)
      Else If dblcdtipaso.Text = 'DO' Then
         MessageDlg('<< Ingrese la fecha de resolución de nombramiento. >>', mtError, [mbRetry], 0)
      Else
         MessageDlg('<< Ingrese la fecha de resolución. >>', mtError, [mbRetry], 0);
      // FIN HPC_201601_ASO
// Fin: HPP_200913_ASO
      dbdtpfecresnom.SetFocus;
      Exit;
   End;

// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
// se añade validación de la fecha final de contrato cuando el cambio de Tipo de Asociado es a COntratado
   If dblcdtipaso.Text = 'CO' Then
   Begin
      If length(dbdtpFechaFinal.Text) = 0 Then
      Begin
         MessageDlg('<< Ingrese la Fecha Final del Contrato. >>', mtError, [mbRetry], 0);
         dbdtpFechaFinal.SetFocus;
         Exit;
      End;
   End;
// Fin: HPP_200913_ASO

   xSql := 'SELECT UPPER(USERNOM) USERNOM '
      + 'FROM TGE006 '
      + 'WHERE USERID = ' + QuotedStr(DM1.wUsuario);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

   memo1.Lines.Clear;
   memo1.Lines.Text := 'Yo ' + Trim(DM1.cdsQry.FieldByName('USERNOM').AsString) + ','
      + ' declaro haber revisado el Documento Físico Original que sustenta el cambio '
      + ' de Tipo de Asociado al Profesor : ' + DM1.cdsAso.FieldByName('ASOAPENOM').AsString + '.';

// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
// se fija la posición del panel a mostrar
   pnlconfirmacion.Left := 133;
   pnlconfirmacion.Top := 46;
// Fin: HPP_200913_ASO
   pnlconfirmacion.Visible := True;
   BtnConfirmar2.Visible := False;
   BtnCancelar2.Visible := False;
   Memo2.Visible := False;
   BtnAceptar.Enabled := True;
   BtnCancelar.Enabled := True;
   Timer2.Enabled := False;
   Timer1.Enabled := True;
End;

Procedure TFcamtipaso.BtnCancelarClick(Sender: TObject);
Begin
   pnlconfirmacion.Visible := False;
End;

Procedure TFcamtipaso.BtnConfirmar2Click(Sender: TObject);
Var
   xcorrelativo, xScrip, xSql: String;
   // INICIO HPC_201601_ASO
   // DECLARA VARIABLE
   xsASORESCESE, xsASOFRESCESE : String;
   xsASORESNOM, xsASOFRESNOM   : String;
   xConAportes : Boolean;
   // FIN HPC_201601_ASO
Begin
   If MessageDlg('¿ Seguro de actualizar el tipo de asociado ?', mtConfirmation,
      [mbYes, mbNo], 0) = mrNo Then exit;

   // INICIO HPC_201601_ASO
   // VERIFICA SI DO TIENE APORTES
   If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO') Then Begin
      xSQL := 'select ASOID from APO301 where ASOID=' + quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount >= 1 Then
         xConAportes := True
      else
         xConAportes := False;
   End;
   // FIN HPC_201601_ASO


// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
// dependiendo del Tipo de Asociado elegido a cambiar se actualizan los campos
// para COntratados, la fecha Final se registra sobre ASOFRESCESE
   // INICIO HPC_201601_ASO
   // ACTUALIZA SEGUN REGLAS DE CADA TIPO DE ASOCIADO
   If dblcdtipaso.Text = 'AD' Then
      xScrip := QuotedStr('UPDATE APO201 '
         + 'SET ASOSITID = ''AC'', ASOTIPID = ' + QuotedStr(dblcdtipaso.Text) + ', '
         + '    ASORESNOM = ' + QuotedStr(menumresnom.Text) + ','
         + '    ASOFRESNOM = ' + QuotedStr(dbdtpfecresnom.Text) + ','
         + '    ASORESCESE = null,'
         + '    ASOFRESCESE = null '
         + 'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString))
   Else If dblcdtipaso.Text = 'CE' Then
        begin
          if (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO') and (xConAportes = True) then begin
             MessageDlg('El asociado tiene aportes por lo tanto solo se modificara el número y fecha de resolución de cese, conservando el tipo de Asociado "DO"', mtInformation, [mbOk], 0);
             xScrip := QuotedStr('UPDATE APO201 '
               + 'SET ASORESCESE = ' + QuotedStr(menumresnom.Text) + ','
               + '    ASOFRESCESE = ' + QuotedStr(dbdtpfecresnom.Text) + ' '
               + 'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString))
          end else begin
             xScrip := QuotedStr('UPDATE APO201 '
               + 'SET ASOSITID = ''CE'', ASOTIPID = ' + QuotedStr(dblcdtipaso.Text) + ', '
               + '    ASORESCESE = ' + QuotedStr(menumresnom.Text) + ','
               + '    ASOFRESCESE = ' + QuotedStr(dbdtpfecresnom.Text) + ' '
               + 'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString))
          end
        end
   Else If dblcdtipaso.Text = 'CO' Then //CO
      xScrip := QuotedStr('UPDATE APO201 '
         + 'SET ASOSITID = ''AC'', ASOTIPID = ' + QuotedStr(dblcdtipaso.Text) + ', '
         + '    ASORESNOM = ' + QuotedStr(menumresnom.Text) + ','
         + '    ASOFRESNOM = ' + QuotedStr(dbdtpfecresnom.Text) + ','
         + '    ASORESCESE = null,'
         + '    ASOFRESCESE = ' + QuotedStr(dbdtpFechaFinal.Text) + ' '
         + 'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString))
   Else If dblcdtipaso.Text = 'DO' Then
      xScrip := QuotedStr('UPDATE APO201 '
         + 'SET ASOSITID = ''AC'', ASOTIPID = ' + QuotedStr(dblcdtipaso.Text) + ', '
         + '    ASORESNOM = ' + QuotedStr(menumresnom.Text) + ','
         + '    ASOFRESNOM = ' + QuotedStr(dbdtpfecresnom.Text) + ','
         + '    ASORESCESE = null,'
         + '    ASOFRESCESE = null '
         + 'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString))
   Else If dblcdtipaso.Text = 'OT' Then
      xScrip := QuotedStr('UPDATE APO201 '
         + 'SET ASOSITID = ''AC'', ASOTIPID = ' + QuotedStr(dblcdtipaso.Text) + ', '
         + '    ASORESNOM = ' + QuotedStr(menumresnom.Text) + ','
         + '    ASOFRESNOM = ' + QuotedStr(dbdtpfecresnom.Text) + ','
         + '    ASORESCESE = null,'
         + '    ASOFRESCESE = null '
         + 'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString));
   // FIN HPC_201601_ASO
// Fin: HPP_200913_ASO

   xSql := 'BEGIN DB2ADMIN.SP_APO201_LOG('
      + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ',' + xScrip
      + ',' + QuotedStr(DM1.wUsuario) + ',''ASO''' + '); END;';
   DM1.DCOM1.AppServer.EjecutaSql(xSql);

   xSql := 'SELECT LPAD(MAX(CORRELATIVO+1),2,''0'') CORRELATIVO '
         + '  FROM ASO_RESOLUCIONES '
         + ' WHERE ASOID =' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xcorrelativo := DM1.cdsQry.FieldByName('CORRELATIVO').AsString;

   xSql := 'UPDATE ASO_RESOLUCIONES '
         + '   SET RESVIG = ''N'' '
         + ' WHERE ASOID  = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);

// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
// se graba la fecha final de resolucion de cese con nulo o con la fecha final del contrato dependiendo del caso
   // INICIO HPC_201601_ASO
   // MODIFICA REGLAS DE ACTUALIZACION DE DATA SEGUN EL TIPO DE ASOCIADO
   //If dblcdtipaso.Text = 'DO' Then
   //   xScrip := 'null'
   //Else
   //   xScrip := quotedstr(dbdtpFechaFinal.Text);
   //xSql := 'INSERT INTO ASO_RESOLUCIONES (ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, ASOFRESCESE, '
   //   + '                              RESVIG, CORRELATIVO, USUARIO, FREG, HREG)'
   //   + 'VALUES (' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ','
   //   + QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ','
   //   + QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ','
   //   + QuotedStr(menumresnom.Text) + ','
   //   + QuotedStr(dbdtpfecresnom.Text) + ','
   //   + xScrip + ','
   //   + ' ''S''' + ','
   //   + QuotedStr(xcorrelativo) + ','
   //   + QuotedStr(DM1.wUsuario) + ','
   //   + ' TO_DATE(SYSDATE), SYSDATE)';
   If dblcdtipaso.Text = 'CO' then begin
      xsASORESNOM   := QuotedStr(menumresnom.Text);
      xsASOFRESNOM  := QuotedStr(dbdtpfecresnom.Text);
      xsASORESCESE  := 'null';
      xsASOFRESCESE := quotedstr(dbdtpFechaFinal.Text)
   end else if dblcdtipaso.Text = 'CE'Then begin
      xsASORESNOM   := QuotedStr(DM1.cdsAso.FieldByName('ASORESNOM').AsString);
      xsASOFRESNOM  := QuotedStr(DM1.cdsAso.FieldByName('ASOFRESNOM').AsString);
      xsASORESCESE  := QuotedStr(menumresnom.Text);
      xsASOFRESCESE := quotedstr(dbdtpfecresnom.Text)
   end else begin // AD, DO, OT
      xsASORESNOM   := QuotedStr(menumresnom.Text);
      xsASOFRESNOM  := QuotedStr(dbdtpfecresnom.Text);
      xsASORESCESE  := 'null';
      xsASOFRESCESE := 'null';
   end;
   xSql := 'INSERT INTO ASO_RESOLUCIONES (ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, ASORESCESE, ASOFRESCESE, '
      + '                              RESVIG, CORRELATIVO, USUARIO, FREG, HREG)'
      + 'VALUES (' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ','
      + QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ','
      + QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ','
      + xsASORESNOM + ',' + xsASOFRESNOM + ','
      + xsASORESCESE + ',' + xsASOFRESCESE + ','
      + ' ''S''' + ','
      + QuotedStr(xcorrelativo) + ','
      + QuotedStr(DM1.wUsuario) + ','
      + ' TO_DATE(SYSDATE), SYSDATE)';
   // FIN HPC_201601_ASO
// Fin: HPP_200913_ASO
   DM1.DCOM1.AppServer.EjecutaSql(xSql);

// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
//  se reemplaza select * // se deja estructura completa de APO201, en caso de errores el grupo de campos seleccionados
// xSql := 'select * '
   // INICIO HPC_201601_ASO
   // AGREGA CAMPOS A CONSULTA
   //xSql := 'SELECT ASOCODMOD, ASOAPENOMDNI, UPROID, UPAGOID, USEID, ASOAPENOM, ASOTIPID, ASOID, ASOCODAUX, ASOFRESCESE '
   xSql := 'SELECT ASOCODMOD, ASOAPENOMDNI, UPROID, UPAGOID, USEID, ASOAPENOM, ASOTIPID, ASOID, ASOCODAUX, ASORESCESE, ASOFRESCESE '
   // FIN HPC_201601_ASO
{   xSQL := 'select ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, '
          +'       ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, '
          +'       RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, '
          +'       ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, '
          +'       PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, '
          +'       ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, '
          +'       SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, '
          +'       ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, '
          +'       ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, '
          +'       ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, '
          +'       USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, '
          +'       CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, '
          +'       ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, '
          +'       ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, '
          +'       PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID, '
          +'       PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, '
          +'       CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, '
          +'       AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, '
          +'       CODMODAUTDESAPO, CODARCHIVO, GENCODBAR, ENVAUTDES, CORENVAUTDES, '
          +'       CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, '
          +'       CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, '
          +'       ANOENV, ENVIO, CODOTRDOCIDE, NUMOTRDOCIDE, CODMOTDESTAPO, AUTDESCUO, '
          +'       FECAUTDESCUO, USUREGAUTDESCUO, OFIREGAUTDESCUO, CODMODAUTDESCUO, '
          +'       MDFASODIR, MDFZIPID, MDFCNTREG, MDFUSRMOD, MDFFECMOD, EMICARTA, '
          +'       DESMANVIV, CODMOTDESTCUO, FECACTPAD, CENEDUID '
}
// Fin: HPP_200913_ASO
   + 'FROM APO201 '
      + 'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSql);
   DM1.cdsAso.Open;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest('SELECT ASOTIPID, ASOTIPDES '
      + 'FROM APO107 '
      + 'WHERE ASOTIPID=' + QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString));
   DM1.cdsQry.Open;
   edtasotipid.Text := DM1.cdsQry.FieldByName('ASOTIPID').AsString + ' - '
      + DM1.cdsQry.FieldByName('ASOTIPDES').AsString;
// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
// se cambia mensaje decía "existosa" ahora dice "exitosa"
   MessageDlg('<< Grabación exitosa >>', mtConfirmation, [mbOk], 0);
// Fin: HPP_200913_ASO
   btnModificar.Enabled := False;
   gbmodificar.Enabled := False;
   btnActualizar.Enabled := False;
   pnlconfirmacion.Visible := False;
End;

Procedure TFcamtipaso.BtnCancelar2Click(Sender: TObject);
Begin
   pnlconfirmacion.Visible := False;
End;

Procedure TFcamtipaso.BtnAceptarClick(Sender: TObject);
Begin
   BtnAceptar.Enabled := False;
   BtnCancelar.Enabled := False;
   BtnConfirmar2.Visible := True;
   BtnCancelar2.Visible := True;
   Memo2.Visible := True;
   Timer2.Enabled := True;
   Timer1.Enabled := False;
   StaticText1.Visible := True;
End;

Procedure TFcamtipaso.Timer2Timer(Sender: TObject);
Begin
   If Memo2.Visible = True Then
      Memo2.Visible := False
   Else
      Memo2.Visible := True;
End;

Procedure TFcamtipaso.Timer1Timer(Sender: TObject);
Begin
   If StaticText1.Visible = True Then
      StaticText1.Visible := False
   Else
      StaticText1.Visible := True;
End;

Procedure TFcamtipaso.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
// se cierra cdsAso, para que no comprometa la estructura parcialmente abierta
   DM1.cdsAso.Close;
// Fin: HPP_200913_ASO
End;

Procedure TFcamtipaso.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
// Inicio: HPP_200913_ASO
// Memorándum 204-2009-DM-EPS - SAR-2009-0427 - DAD-JD-2009-0098
//  se cambia control para q ENTER=TAB
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
// Fin: HPP_200913_ASO
End;

End.

