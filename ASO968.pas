// Inicio: HPP_201006_ASO por IREVILLA
Unit ASO968;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, Mask;

Type
   TFAsiCueAhoInt = Class(TForm)
      gbdatos: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      Label5: TLabel;
      Panel1: TPanel;
      edtasocodmod: TEdit;
      Panel2: TPanel;
      edtasoapenom: TEdit;
      Panel3: TPanel;
      edtupronom: TEdit;
      Panel4: TPanel;
      edtusenom: TEdit;
      Panel5: TPanel;
      edtasotipid: TEdit;
      btnActualizar: TBitBtn;
      Label6: TLabel;
      Panel6: TPanel;
      edtAsoFResCese: TEdit;
      Panel7: TPanel;
      edtAsorescese: TEdit;
      Label7: TLabel;
      BitBtn1: TBitBtn;
      btnActualiza: TBitBtn;
      GroupBox2: TGroupBox;
      Panel8: TPanel;
      edtasonctaint: TEdit;
      gbbuscar: TGroupBox;
      Label9: TLabel;
      Panel10: TPanel;
      btnBuscar: TBitBtn;
      measodni: TMaskEdit;
      Label8: TLabel;
      Panel9: TPanel;
      edtasoncta: TEdit;
      Panel11: TPanel;
      Memo1: TMemo;
      pnlAlerta: TPanel;
      Memo2: TMemo;
      Timer1: TTimer;
      Procedure btnActualizarClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure btnActualizaClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnBuscarClick(Sender: TObject);
      Procedure measodniExit(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure Timer1Timer(Sender: TObject);
   Private
      xAno, xasoncta, xtabla: String;
      Procedure actualizaasociado;
      Procedure limpiaedits;
      Procedure llenaedits;
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FAsiCueAhoInt: TFAsiCueAhoInt;

Implementation
Uses ASODM;

{$R *.dfm}

Procedure TFAsiCueAhoInt.btnActualizarClick(Sender: TObject);
Var
   xSql, xCorrelativo: String;
Begin
  // Se veririca si al asociado se le puede asignar una cuenta interna
  // ASOTIPID = 'CE'

  // Fecha de resolución de Cese menor al año 1997
  // Si ya no tiene asignado una cuenta interna
   If DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE' Then
   Begin
      MessageDlg(' No es un asociado CESANTE ', mtInformation, [mbOk], 0);
      Exit;
   End;
   if length(edtAsoFResCese.Text)=0 then
   begin
      MessageDlg(' No hay fecha de Resolución de Cese ', mtInformation, [mbOk], 0);
      Exit;
   end;
   If DM1.cdsAso.FieldByName('ASOFRESCESE').AsDateTime >= StrToDate('01/01/1997') Then
   Begin
      MessageDlg(' Fecha de Cese es mayor al 31/12/1996', mtInformation, [mbOk], 0);
      Exit;
   End;
   If Copy(DM1.cdsAso.FieldByName('ASONCTA').AsString, 1, 3) = 'CI_' Then
   Begin
      MessageDlg('El asociado ya cuenta con una cuenta interna', mtError, [mbOk], 0);
      Exit;
   End;

  // Proceso de asignación de cuenta
  // Se verifica el nuevo numero de cuenta que se asigna en el CRE206
  // En el caso que no exista registro para el año en el CRE206 se insertara el nuevo registro.
   xAno := Copy(DM1.FechaHora, 7, 4);
   xSql := 'SELECT LPAD(VARIOS+1,3,''0'') CORRELATIVO '
          +'FROM CRE206 '
          +'WHERE CREAREA = ''ASO'' AND CORREANO = ' + QuotedStr(xAno) + ' AND TIPO = ''2''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 0 Then
   Begin
      xSql := 'INSERT INTO CRE206 (CREAREA, CORREANO, TIPO, VARIOS) '
             +'VALUES (''ASO'',' + QuotedStr(xAno) + ',''2'',''000'')';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      xSql := 'SELECT LPAD(VARIOS+1,3,''0'') CORRELATIVO '
             +'FROM CRE206 '
             +'WHERE CREAREA = ''ASO'' AND CORREANO = ' + QuotedStr(xAno) + ' AND TIPO = ''2''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
   End;
  // Generando la cuenta interna
   xCorrelativo := DM1.cdsQry.FieldByName('CORRELATIVO').AsString;
   xasoncta := 'CI_' + xAno + xCorrelativo;
   edtasonctaint.Text := xasoncta;
   btnActualiza.Enabled := True;
End;

Procedure TFAsiCueAhoInt.BitBtn1Click(Sender: TObject);
Begin
   Close;
End;

Procedure TFAsiCueAhoInt.btnActualizaClick(Sender: TObject);
Var
   xasoitem, xSql, xScrip: String;
Begin
// Se verifica que tenga generado la nueva cuenta interna a actualizar
   If edtasonctaint.Text = '' Then
   Begin
      MessageDlg(' Antes de actualizar. Primero asigne la cuenta interna.', mtInformation, [mbOk], 0);
      Exit;
   End;
   pnlAlerta.Visible := True;
   If MessageDlg('¿ Esta seguro de asignar una cuenta interna ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
      pnlAlerta.Visible := False;
      btnActualiza.Enabled := False;
      edtasonctaint.Clear;
      btnActualizar.SetFocus;
      exit;
   end
   else
   begin
      pnlAlerta.Visible := False;
    // Actualizando cuenta
    // Se coloca las cuentas anteriores en estado de cancelado en el APO207
      xSql := 'UPDATE APO207 SET SITCTA = ''C'' WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
    // Inserta nueva cuenta en el APO207
      xSql := 'SELECT LPAD(ASOITEM+1,3,''0'') ASOITEM '
             +'FROM APO207 '
             +'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('ASOITEM').AsString = '' Then
         xasoitem := '001'
      Else
         xasoitem := DM1.cdsQry.FieldByName('ASOITEM').AsString;
      xSql := 'UPDATE APO207 '
             +'SET SITCTA = ''C'' '
             +'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      xSql := 'INSERT INTO APO207(ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASONCTA, SITCTA, ASOITEM, BANCOID)'
            + 'VALUES (' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ', '
                         + QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ', '
                         + QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ', '
                         + QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString) + ', '
                         + QuotedStr(xasoncta) + ', ''A'', ' + QuotedStr(xasoitem) + ',''03'')';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
    // Se actualiza el campo ASONCTA en el APO201 o el ASO_NUE_CLI según sea el caso.
      If xtabla = '1' Then
         xScrip := 'UPDATE APO201 '
                  +'SET ASONCTA = ' + QuotedStr(edtasonctaint.Text) + ','
                  +'    SITCTA = ''A'' ,'
                  +'    BANCOID = ''03'' '
                  +'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      If xtabla = '2' Then
         xScrip := 'UPDATE ASO_NUE_CLI SET ASONCTA = ' + QuotedStr(edtasonctaint.Text) + ','
                  +'       SITCTA = ''A'', BANCOID = ''03'' '
                  +'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      xSql := 'BEGIN DB2ADMIN.SP_APO201_LOG(' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ',' + QuotedStr(xScrip) + ',' + QuotedStr(DM1.wUsuario) + ',''ASO''' + '); END;';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      xSql := 'UPDATE CRE206 '
             +'SET VARIOS = LPAD(VARIOS+1,3,''0'') '
             +'WHERE CREAREA = ''ASO'' AND CORREANO = ' + QuotedStr(xAno) + '  AND TIPO = ''2''';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      edtasoncta.Text := edtasonctaint.Text;
      actualizaasociado;
      llenaedits;
      pnlAlerta.Visible := False;
      MessageDlg(' Se ha actualizado la cuenta interna', mtInformation, [mbOk], 0);
      btnActualiza.Enabled := False;
   End;
End;

Procedure TFAsiCueAhoInt.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

Procedure TFAsiCueAhoInt.btnBuscarClick(Sender: TObject);
Var
   xSql: String;
Begin
  // Se busca asociado el apo201 y si no esta en el ASO_NUE_CLI
  // Se llena los edits con información del asociado.
   btnActualiza.Enabled := False;
   xtabla := '0';
   xSql := 'SELECT COUNT(*) CUENTA FROM APO201 WHERE ASODNI = ' + QuotedStr(measodni.Text);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSql);
   DM1.cdsAso.Open;
   If DM1.cdsAso.FieldByName('CUENTA').AsInteger = 1 Then
      xtabla := '1'
   Else
   Begin
      xSql := 'SELECT COUNT(*) CUENTA FROM ASO_NUE_CLI WHERE ASODNI = ' + QuotedStr(measodni.Text);
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest(xSql);
      DM1.cdsAso.Open;
      If DM1.cdsAso.FieldByName('CUENTA').AsInteger = 1 Then xtabla := '2';
   End;
   If xtabla = '0' Then
   Begin
      MessageDlg('Asociado no Existe', mtError, [mbOk], 0);
      Exit;
   End;
   actualizaasociado;
   llenaedits;
   btnActualizar.Enabled := True;
End;

Procedure TFAsiCueAhoInt.measodniExit(Sender: TObject);
Begin
   limpiaedits;
End;

Procedure TFAsiCueAhoInt.FormActivate(Sender: TObject);
Begin
   pnlAlerta.Visible := False;
   btnActualizar.Enabled := False;
   btnActualiza.Enabled := False;
   gbdatos.Enabled := False;

   measodni.SetFocus;
End;

Procedure TFAsiCueAhoInt.actualizaasociado;
Var
   xSql: String;
Begin
   If xtabla = '1' Then
      xSql := 'SELECT ASOID, ASODNI, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASOAPENOMDNI, '
         + '       UPROID, UPAGOID, USEID, ASOTIPID, ASORESCESE, ASOFRESCESE, ASONCTA '
         + 'FROM APO201 '
         + 'WHERE ASODNI = ' + QuotedStr(measodni.Text);
   If xtabla = '2' Then
      xSql := 'SELECT ASOID, ASODNI, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASOAPENOMDNI, '
         + '       UPROID, UPAGOID, USEID, ASOTIPID, ASORESCESE, ASOFRESCESE, ASONCTA '
         + 'FROM ASO_NUE_CLI '
         + 'WHERE ASODNI = ' + QuotedStr(measodni.Text);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSql);
   DM1.cdsAso.Open;
End;

Procedure TFAsiCueAhoInt.limpiaedits;
Begin
   edtasocodmod.Text := '';
   edtasoapenom.Text := '';
   edtupronom.Text := '';
   edtusenom.Text := '';
   edtasotipid.Text := '';
   edtAsorescese.Text := '';
   edtAsoFResCese.Text := '';
   edtasoncta.Text := '';
End;

Procedure TFAsiCueAhoInt.llenaedits;
Begin
   edtasocodmod.Text := DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
   edtasoapenom.Text := DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
   edtAsorescese.Text := DM1.cdsAso.FieldByName('ASORESCESE').AsString;
   edtAsoFResCese.Text := DM1.cdsAso.FieldByName('ASOFRESCESE').AsString;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest('SELECT UPRONOM '
                         +'FROM APO102 '
                         +'WHERE UPROID = ' + QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString));
   DM1.cdsQry.Open;
   edtupronom.Text := DM1.cdsQry.FieldByName('UPRONOM').AsString;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest('SELECT USENOM '
                         +'FROM APO101 '
                         +'WHERE UPROID = ' + QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)
                         +'  AND UPAGOID = ' + QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString)
                         +'  AND USEID = ' + QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString));
   DM1.cdsQry.Open;
   edtusenom.Text := DM1.cdsQry.FieldByName('USENOM').AsString;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest('SELECT ASOTIPID, ASOTIPDES '
                         +'FROM APO107 '
                         +'WHERE ASOTIPID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOTIPID').AsString));
   DM1.cdsQry.Open;
   edtasotipid.Text := DM1.cdsQry.FieldByName('ASOTIPID').AsString + ' - ' + DM1.cdsQry.FieldByName('ASOTIPDES').AsString;
   edtasoncta.Text := DM1.cdsAso.FieldByName('ASONCTA').AsString;
End;

Procedure TFAsiCueAhoInt.Timer1Timer(Sender: TObject);
Begin
   If pnlAlerta.Visible = True Then
      pnlAlerta.Visible := False
   Else
      pnlAlerta.Visible := True;
End;

// Fin: HPP_201006_ASO por IREVILLA
End.

