// Unidad                    : ASO161.pas
// Formulario                : fimptexto
// Fecha de Creación         : 2013
// Autor                     : Equipo de Desarrollo de Sistemas DM
// Objetivo                  : Carga de archivo texto (PADRON/ONP)

// Actualizaciones:
// HPC_201312_ASO            : 12/11/2013 Carga de archivo texto (PADRON/ONP)
// SPP_201313_ASO            : Se realiza el pase a producción a partir del HPC_201312_ASO
// HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

Unit ASO161;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, FileCtrl, wwdblook, Wwdbdlg, Spin, Mask,
   ExtCtrls,
   //Inicio: HPP_200908_ASO - realizado por: JDCRUZ
   ComCtrls;
   //Fin: HPP_200908_ASO
Type
   Tfimptexto = Class(TForm)
      gbDriver: TGroupBox;
      dcbarcmig: TDriveComboBox;
      dbbarcmig: TDirectoryListBox;
      flbarcmig: TFileListBox;
      btnprocesar: TBitBtn;
      btnSalir: TBitBtn;
      Edit1: TEdit;
      GroupBox1: TGroupBox;
      Label1: TLabel;
      dblcddptoid: TwwDBLookupComboDlg;
      Label2: TLabel;
      Panel1: TPanel;
      medptodes: TMaskEdit;
      Label5: TLabel;
      Label6: TLabel;
      seano: TSpinEdit;
      semes: TSpinEdit;
      Label7: TLabel;
      Label8: TLabel;
      Label3: TLabel;
      Label4: TLabel;
      dblcdasotipid: TwwDBLookupComboDlg;
      Panel2: TPanel;
      measotipdes: TMaskEdit;
      //Inicio: HPP_200908_ASO - realizado por: JDCRUZ
      pnlBar: TPanel;
      pbData: TProgressBar;
//Inicio: SPP_201313_ASO
      GroupBox2: TGroupBox;
      lblNumero: TLabel;
      Label9: TLabel;
      Label10: TLabel;
      lblPeriodo: TLabel;
//Fin: SPP_201313_ASO
      //Fin: HPP_200908_ASO
      Procedure btnprocesarClick(Sender: TObject);
      Procedure btnSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dblcddptoidExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcdasotipidExit(Sender: TObject);
   Private
      { Private declarations }
   Public
      { Public declarations }
//Inicio: SPP_201313_ASO
      procedure cargarPADRON;
      procedure cargarONP;
//Fin: SPP_201313_ASO
   End;

Var
   fimptexto: Tfimptexto;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure Tfimptexto.btnprocesarClick(Sender: TObject);
Begin
//Inicio: SPP_201313_ASO - 1. Dependiendo desde donde es ejecutado este formulario funcionara para PADRON o para ONP
//                          2. Todo el contenido en este botón se paso a "cargarPADRON;"
   If DM1.sTipoCarga = 'PADRON' Then cargarPADRON;
   If DM1.sTipoCarga = 'ONP' Then cargarONP;
//Fin: SPP_201313_ASO
End;

//Inicio: SPP_201313_ASO - Nuevo
procedure Tfimptexto.cargarONP;
Var
   archivo: TextFile;
   S, origen: String;
   xSql: String;
   xNumero: String;
   xCanreg: Double;
   xnomarc: String;
   xpath: String;
   MFile: TStringList;
   i: integer;
Begin

   screen.Cursor := crHourGlass;

   seano.Text := DM1.StrZero(seano.Text, 4);
   semes.Text := DM1.StrZero(semes.Text, 2);

   xnomarc := flbarcmig.FileName;
   While Pos('\', xnomarc) > 0 Do
   Begin
      xnomarc := Copy(xnomarc, Pos('\', xnomarc) + 1, Length(xnomarc));
   End;

   If Trim(xnomarc) = '' Then
   Begin
      MessageDlg('Seleccione el nombre del archivo a migrar', mtInformation, [mbOk], 0);
      screen.Cursor := crDefault;
      flbarcmig.SetFocus;
      Exit;
   End;

   screen.Cursor := crHourGlass;

   // GRABAR EL DETALLE
   DM1.DCOM1.AppServer.SOLStartTransaction;
   Try

      // BORRAR ANTES DE CARGAR NUEVAMENTE
      DM1.xNumero := DM1.cdsCreditos.FieldByName('NUMERO').AsString;

      If DM1.cdsCreditos.FieldByName('FLAG_CARGA').AsString = 'S' Then
         Begin
         xSQL := 'DELETE ASO_PAD_DES_DET WHERE NUMERO = ' + quotedstr(DM1.xNumero);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);

         // BORRAR LA TRANSFERENCIA
         xSQL := 'UPDATE ASO_PAD_DES_CAB SET CANREG_TRANSF = NULL, FLAG_TRANSF = NULL, FECHOR_TRANSF = NULL, USUARIO_TRANSF = NULL '
              +  ' WHERE NUMERO = ' + quotedstr(DM1.xNumero);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);

         // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         //xSQL := 'UPDATE ASO_ONP_DES_DET SET REC_ASODNI = NULL, REC_CODPENSION = NULL, REC_CODLEYPEN = NULL, FLAGACTCODPENSION = NULL, FLAGACTCODLEYPEN = NULL '
         xSQL := 'UPDATE ASO_ONP_DES_DET SET REC_ASODNI = NULL, REC_CODPENSION = NULL, REC_CODLEYPEN = NULL, FLAGACTCODPENSION = NULL, FLAGACTCODLEYPEN = NULL, FLAGACTCODPRE = NULL,REC_CODPRE = NULL  '
         // Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
              +  ' WHERE NUMERO = ' + quotedstr(DM1.xNumero);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         End;

      // se lee el archivo TEXTO
      MFile := TStringList.Create;
      Try
         MFile.Clear;
         MFile.LoadFromFile(flbarcmig.FileName);

         pbData.Max := MFile.Count;
         pbData.Min := 0;
         pbData.Position := 0;
         pnlBar.Visible := True;
         pnlBar.Refresh;
         xCanreg := MFile.Count;
         // GRABA EL DETALLE
         For i := 0 To MFile.Count - 1 Do
         Begin
            xSQL := 'INSERT INTO ASO_PAD_DES_DET(NUMERO,LINEA)'
               + ' VALUES(' + quotedstr(DM1.xNumero) + ',' + quotedstr(MFile[i]) + ')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            pbData.Position := pbData.Position + 1;
            pnlBar.Refresh;
         End;
      Finally
         MFile.Free;
         pnlBar.Visible := False;
      End;

      xSQL := 'UPDATE ASO_PAD_DES_CAB '
         + '      SET CANREG_CARGA = ' + FloatToStr(xCanreg)
         + '        , FLAG_CARGA = ''S'' '
         + '        , FECHOR_CARGA = SYSDATE '
         + '        , USUARIO_CARGA = ' + QuotedStr(DM1.wUsuario)
         + '        , DESCAM = '''' '
         + '    WHERE NUMERO = ' + quotedstr(DM1.xNumero);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);

      DM1.DCOM1.AppServer.SOLCommit;
      DM1.xSgr := 'I';
      DM1.cdsCreditos.Last;
      MessageDlg('Importación ha concluido', mtInformation, [mbOk], 0);
   Except
      DM1.DCOM1.AppServer.SOLRollBack;
      showmessage('Ocurrio algun error.. No se pudo grabar el detalle');
      screen.Cursor := crDefault;
      exit;
   End;

   screen.Cursor := crDefault;
End;
//Fin: SPP_201313_ASO


//Inicio: SPP_201313_ASO - El código proviene del botón "Tfimptexto.btnprocesarClick(Sender: TObject);"
procedure Tfimptexto.cargarPADRON;
Var
   archivo: TextFile;
   S, origen: String;
   xSql: String;
   xNumero: String;
   xCanreg: Double;
   xnomarc: String;
   xpath: String;
   MFile: TStringList;
   i: integer;
Begin

   screen.Cursor := crHourGlass;

   seano.Text := DM1.StrZero(seano.Text, 4);
   semes.Text := DM1.StrZero(semes.Text, 2);

   xnomarc := flbarcmig.FileName;
   While Pos('\', xnomarc) > 0 Do
   Begin
      xnomarc := Copy(xnomarc, Pos('\', xnomarc) + 1, Length(xnomarc));
   End;

   If Trim(dblcddptoid.Text) = '' Then
   Begin
      MessageDlg('Debe seleccione el departamento', mtInformation, [mbOk], 0);
      screen.Cursor := crDefault;
      dblcddptoid.SetFocus;
      Exit;
   End;

   If Trim(dblcdasotipid.Text) = '' Then
   Begin
      MessageDlg('Debe seleccione el Tipo de Planilla', mtInformation, [mbOk], 0);
      screen.Cursor := crDefault;
      dblcdasotipid.SetFocus;
      Exit;
   End;

   If Trim(seano.Text) = '' Then
   Begin
      MessageDlg('Ingrese el año del archivo a procesar', mtInformation, [mbOk], 0);
      screen.Cursor := crDefault;
      seano.SetFocus;
      Exit;
   End;

   //Inicio: HPP_200908_ASO - realizado por JDCRUZ
   If Trim(semes.Text) = '' Then
   Begin
      MessageDlg('Ingrese el mes del archivo a procesar', mtInformation, [mbOk], 0);
      screen.Cursor := crDefault;
      semes.SetFocus;
      Exit;
   End;
   //Fin: HPP_200908_ASO

   If Trim(xnomarc) = '' Then
   Begin
      MessageDlg('Seleccione el nombre del archivo a migrar', mtInformation, [mbOk], 0);
      screen.Cursor := crDefault;
      flbarcmig.SetFocus;
      Exit;
   End;

   screen.Cursor := crHourGlass;

   xSql := 'SELECT  LPAD(MAX(NVL(NUMERO,0)+1),10,''0'') NUMERO FROM ASO_PAD_DES_CAB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

   If DM1.cdsQry.FieldByName('NUMERO').AsString = '' Then
      xNumero := '0000000001'
   Else
      DM1.xNumero := DM1.cdsQry.FieldByName('NUMERO').AsString;

      DM1.DCOM1.AppServer.SOLStartTransaction;
   Try

      xSql := 'INSERT INTO ASO_PAD_DES_CAB '
         + '          ( NUMERO, NOMARC, PERIODO, USUARIO, FECHOR, DPTOID, ASOTIPID, TIPOCARGA ) '
         + '   VALUES( '
         + QuotedStr(DM1.xNumero)
         + ', ' + QuotedStr(xnomarc)
         + ', ' + QuotedStr(seano.Text + semes.Text)
         + ', ' + QuotedStr(DM1.wUsuario)
         + ', ' + 'SYSDATE '
         + ', ' + QuotedStr(dblcddptoid.Text)
         + ', ' + QuotedStr(dblcdasotipid.Text)
         + ', ''' + DM1.sTipoCarga + ''' )';

      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      DM1.DCOM1.AppServer.SOLCommit;
   Except
      DM1.DCOM1.AppServer.SOLRollBack;
      showmessage('No se pudo grabar la cabecera, por favor intente nuevamente');
      screen.Cursor := crDefault;
      exit;
   End;

   // GRABAR EL DETALLE
   DM1.DCOM1.AppServer.SOLStartTransaction;
   Try
      MFile := TStringList.Create;
      Try
         MFile.Clear;
         MFile.LoadFromFile(flbarcmig.FileName);

         pbData.Max := MFile.Count;
         pbData.Min := 0;
         pbData.Position := 0;
         pnlBar.Visible := True;
         pnlBar.Refresh;
         xCanreg := MFile.Count;
         // GRABA EL DETALLE
         For i := 0 To MFile.Count - 1 Do
         Begin
            xSQL := 'INSERT INTO ASO_PAD_DES_DET(NUMERO,LINEA)'
               + ' VALUES(' + quotedstr(DM1.xNumero) + ',' + quotedstr(MFile[i]) + ')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            pbData.Position := pbData.Position + 1;
            pnlBar.Refresh;
         End;
      Finally
         MFile.Free;
         pnlBar.Visible := False;
      End;

      xSQL := 'UPDATE ASO_PAD_DES_CAB '
         + '      SET CANREG = ' + FloatToStr(xCanreg)
         + '    WHERE NUMERO = ' + quotedstr(DM1.xNumero);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);

      //HPP_200908_ASO - realizado por JDCRUZ
      DM1.DCOM1.AppServer.SOLCommit;
      DM1.xSgr := 'I';
      DM1.cdsCreditos.Last;
      MessageDlg('Importación ha concluido', mtInformation, [mbOk], 0);
   Except
      DM1.DCOM1.AppServer.SOLRollBack;
      // SE BORRA LA CABECERA QUE SE GRABO CON ATERIORIDAD
      xSQL := 'DELETE FROM ASO_PAD_DES_CAB WHERE NUMERO=' + quotedstr(DM1.xNumero);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      showmessage('Ocurrio algun error.. No se pudo grabar el detalle');
      screen.Cursor := crDefault;
      exit;
   End;
   //HPP_20090008_ASO SAR2009-0256 - FIN

   screen.Cursor := crDefault;
End;
//Fin: SPP_201313_ASO


Procedure Tfimptexto.btnSalirClick(Sender: TObject);
Begin
   fimptexto.Close;
End;

Procedure Tfimptexto.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin
//Inicio: SPP_201313_ASO - Dependiendo desde donde es ejecutado este formulario funcionara para PADRON o para ONP
   If DM1.sTipoCarga = 'ONP' Then
      Begin
      lblNumero.Caption := DM1.cdsCreditos.FieldByName('NUMERO').AsString;
      lblPeriodo.Caption := DM1.cdsCreditos.FieldByName('PERIODO').AsString;

      Groupbox1.Visible := false;
      Groupbox2.Visible := true;
      End;

   If DM1.sTipoCarga = 'PADRON' Then
      Begin
      xSql := 'SELECT DPTOID, DPTODES FROM APO158';
      DM1.cdsDpto.Close;
      DM1.cdsDpto.DataRequest(xSql);
      DM1.cdsDpto.Open;
      dblcddptoid.Selected.Clear;
      dblcddptoid.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
      dblcddptoid.Selected.Add('DPTODES'#9'17'#9'Descripción'#9#9);

      xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'',''CE'', ''CO'')';
      DM1.cdsTAso.Close;
      DM1.cdsTAso.DataRequest(xSql);
      DM1.cdsTAso.Open;
      dblcdasotipid.Selected.Clear;
      dblcdasotipid.Selected.Add('ASOTIPID'#9'3'#9'Código'#9#9);
      dblcdasotipid.Selected.Add('ASOTIPDES'#9'17'#9'Descripción'#9#9);

      seano.Text := Copy(DateToStr(date), 7, 4);
      semes.Text := Copy(DateToStr(date), 4, 2);

      dblcddptoid.SetFocus;

      Groupbox1.Visible := true;
      Groupbox2.Visible := false;
      End;
//Fin: SPP_201313_ASO
End;

Procedure Tfimptexto.dblcddptoidExit(Sender: TObject);
Begin
   If Trim(dblcddptoid.Text) = '' Then Exit;
   If DM1.cdsDpto.Locate('DPTOID', dblcddptoid.Text, []) Then
   Begin
      medptodes.Text := DM1.cdsDpto.FieldByName('DPTODES').asstring;
   End
   Else
   Begin
      medptodes.Text := '';
      dblcddptoid.Text := '';
      dblcddptoid.SetFocus;
   End;
End;

Procedure Tfimptexto.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

Procedure Tfimptexto.dblcdasotipidExit(Sender: TObject);
Begin
   If Trim(dblcdasotipid.Text) = '' Then Exit;
   If DM1.cdsTAso.Locate('ASOTIPID', dblcdasotipid.Text, []) Then
   Begin
      measotipdes.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').asstring;
   End
   Else
   Begin
      measotipdes.Text := '';
      dblcdasotipid.Text := '';
      dblcdasotipid.SetFocus;
   End;
End;

End.

