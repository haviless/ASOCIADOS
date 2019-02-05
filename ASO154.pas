// Unidad                    : ASO154.pas
// Formulario                : FDetMigONP
// Fecha de Creación         : 2013
// Autor                     : Equipo de Desarrollo de Sistemas DM
// Objetivo                  : Actualizar datos cargados de ONP en Asociados

// Actualizaciones:
// HPC_201312_ASO            : 12/11/2013 Actualizar datos cargados de ONP en Asociados
// SPP_201313_ASO            : Se realiza el pase a producción a partir del HPC_201312_ASO
// HPC_201607_ASO            : Se inserta registro de ONP en la tabla de datos socioeconomicos
// HPC_201701_ASO            : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

Unit ASO154;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Mask;

Type
   TFDetMigONP = Class(TForm)
   dbgdepurar: TwwDBGrid;
   btncerrar: TBitBtn;
   btnactualiza: TBitBtn;
   GroupBox1: TGroupBox;
   btntransferir: TBitBtn;
   Label1: TLabel;
   Label3: TLabel;
   lblEnviados: TLabel;
   lblActCodPension: TLabel;
   Label9: TLabel;
   lblNoActCodPension: TLabel;
   Label4: TLabel;
   Label5: TLabel;
   lblActCodLeyPen: TLabel;
   lblNoActCodLeyPen: TLabel;
   Label8: TLabel;
   Label10: TLabel;
   lblCargados: TLabel;
   Label2: TLabel;
   lblNumero: TLabel;
   rbtTodos: TRadioButton;
   rbtCargados: TRadioButton;
   btnaExcel: TBitBtn;
   // Inicio: HPC_201607_ASO
   // Se añade panel para poder visualizar el avance.
    pnlprocesar: TPanel;
    Label6: TLabel;
    stregistro: TStaticText;
    Label7: TLabel;
    stasoapenom: TStaticText;
    StaticText3: TStaticText;
    // Inicio: HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    Label11: TLabel;
    lblActCodPrestacion: TLabel;
    lblNoActCodPrestacion: TLabel;
    // Fin: HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   // Fin: HPC_201607_ASO
   Procedure FormActivate(Sender: TObject);
   Procedure btncerrarClick(Sender: TObject);
   Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   procedure btnactualizaClick(Sender: TObject);
   procedure btntransferirClick(Sender: TObject);
   procedure btnaExcelClick(Sender: TObject);
   Private
      Procedure Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
      Function CodReg(): String;
      Procedure FiltrarRegistros;
      { Private declarations }
   Public
      { Public declarations }
   End;

Var
   FDetMigONP: TFDetMigONP;

Implementation

Uses ASODM, ASO163, ASO164;

{$R *.dfm}

Procedure TFDetMigONP.FormActivate(Sender: TObject);
Begin

   If DM1.cdsCreditos.FieldByName('FLAG_ACTONP').AsString = 'S' Then
      Begin
      btnactualiza.Enabled := False;
      End
   Else
      Begin
      btnactualiza.Enabled := True;
      End;

   lblNumero.Caption := DM1.cdsCreditos.FieldByName('NUMERO').AsString;
   rbtTodos.Checked := true;
   FiltrarRegistros;
End;

Procedure TFDetMigONP.FiltrarRegistros;
Var
   xsSql: String;
   xsSqlWhere: String;
Begin

   Screen.Cursor := crHourGlass;

   xsSql := 'SELECT '
        +'      COUNT(*) TOTAL, '
        +'      SUM(CASE WHEN FLAGACTCODPENSION = ''S'' THEN 1 ELSE 0 END) ACTCODPENSION, '
        +'      SUM(CASE WHEN FLAGACTCODPENSION = ''N'' THEN 1 ELSE 0 END) NOACTCODPENSION, '
        +'      SUM(CASE WHEN FLAGACTCODLEYPEN = ''S'' THEN 1 ELSE 0 END) ACTCODLEYPEN, '
        +'      SUM(CASE WHEN FLAGACTCODLEYPEN = ''N'' THEN 1 ELSE 0 END) NOACTCODLEYPEN, '
        // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        +'      SUM(CASE WHEN FLAGACTCODPRE = ''S'' THEN 1 ELSE 0 END) ACTCODPRE, '
        +'      SUM(CASE WHEN FLAGACTCODPRE = ''N'' THEN 1 ELSE 0 END) NOACTCODPRE, '
        // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        +'      SUM(CASE WHEN REC_ASODNI IS NULL THEN 0 ELSE 1 END) CARGADOS, '
        +'      SUM(CASE WHEN FLAGENVIARONP = ''S'' THEN 1 ELSE 0 END) ENVIADOS '
        +'  FROM ASO_ONP_DES_DET '
        +'  WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);

   DM1.cdsQry20.Close;
   DM1.cdsQry20.DataRequest(xsSql);
   DM1.cdsQry20.Open;

   lblEnviados.Caption := DM1.cdsQry20.FieldByName('ENVIADOS').AsString;
   lblCargados.Caption := DM1.cdsQry20.FieldByName('CARGADOS').AsString;
   lblActCodPension.Caption := DM1.cdsQry20.FieldByName('ACTCODPENSION').AsString;
   lblNoActCodPension.Caption := DM1.cdsQry20.FieldByName('NOACTCODPENSION').AsString;
   lblActCodLeyPen.Caption := DM1.cdsQry20.FieldByName('ACTCODLEYPEN').AsString;
   lblNoActCodLeyPen.Caption := DM1.cdsQry20.FieldByName('NOACTCODLEYPEN').AsString;
   // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   lblActCodPrestacion.Caption := DM1.cdsQry20.FieldByName('ACTCODPRE').AsString;
   lblNoActCodPrestacion.Caption := DM1.cdsQry20.FieldByName('NOACTCODPRE').AsString;
   // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

   xsSql := 'SELECT A.ROWID FILA, A.NUMERO, '
        + '    A.ASOID, '
        // Inicio: HPC_201607_ASO
        // Se añade el campo del CODIGO MODULAR
        + '    A.ASOCODMOD,'
        // Fin: HPC_201607_ASO
        + '    SUBSTR(A.ASOAPENOM,1,35) ASOAPENOM, '
        + '    A.ENV_ASODNI, '
        + '    A.ENV_CODPENSION, '
        + '    A.ENV_CODLEYPEN, '
        + '    A.FLAGENVIARONP, '
        + '    A.REC_ASODNI, '
        + '    A.REC_CODPENSION, '
        + '    A.REC_CODLEYPEN, '
        + '    A.FLAGACTCODPENSION, '
        + '    A.FLAGACTCODLEYPEN, '
        // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        + '    A.REC_CODPRE, '
        + '    A.FLAGACTCODPRE, '
        + '    A.ENV_CODPRE '
        // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        + ' FROM '
        + '    ASO_ONP_DES_DET A '
        + ' WHERE A.NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);

   If rbtTodos.Checked Then xsSqlWhere := '';
   If rbtCargados.Checked Then xsSqlWhere := ' AND NOT REC_ASODNI IS NULL ';

   xsSql := xsSql + xsSqlWhere;

   DM1.cdsQry20.Close;
   DM1.cdsQry20.DataRequest(xsSql);
   DM1.cdsQry20.Open;

   dbgdepurar.Refresh;
   dbgdepurar.Selected.Clear;
   dbgdepurar.Selected.Add('NUMERO'#9'12'#9'Numero'#9#9);
   dbgdepurar.Selected.Add('ASOID'#9'12'#9'AsoId'#9#9);
   dbgdepurar.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos y~Nombres'#9#9);
   dbgdepurar.Selected.Add('ENV_ASODNI'#9'10'#9'Enviado~DNI'#9#9);
   dbgdepurar.Selected.Add('ENV_CODPENSION'#9'8'#9'Enviado~CodPensión'#9#9);
   dbgdepurar.Selected.Add('ENV_CODLEYPEN'#9'3'#9'Enviado~CodLeyPen'#9#9);
   // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   dbgdepurar.Selected.Add('ENV_CODPRE'#9'3'#9'Enviado~CodPrestación'#9#9);
   // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   dbgdepurar.Selected.Add('FLAGENVIARONP'#9'6'#9'Flag~Enviado'#9#9);
   dbgdepurar.Selected.Add('REC_ASODNI'#9'10'#9'Carga~DNI'#9#9);
   dbgdepurar.Selected.Add('REC_CODPENSION'#9'8'#9'Carga~CodPensión'#9#9);
   dbgdepurar.Selected.Add('REC_CODLEYPEN'#9'3'#9'Carga~CodLeyPen'#9#9);
   // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   dbgdepurar.Selected.Add('REC_CODPRE'#9'3'#9'Carga~CodPrestación'#9#9);
   // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   dbgdepurar.Selected.Add('FLAGACTCODPENSION'#9'5'#9'Flag Act.~CodPensión'#9#9);
   dbgdepurar.Selected.Add('FLAGACTCODLEYPEN'#9'5'#9'Flag Act.~CodLeyPen'#9#9);
   // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   dbgdepurar.Selected.Add('FLAGACTCODPRE'#9'5'#9'Flag Act.~CodPrestación'#9#9);
   // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   dbgdepurar.ApplySelected;

   Screen.Cursor := crDefault;
End;

Procedure TFDetMigONP.btncerrarClick(Sender: TObject);
Begin
   FDetMigONP.Close;
End;


Procedure TFDetMigONP.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

procedure TFDetMigONP.btnactualizaClick(Sender: TObject);
Var
   xAsoid, xsSql: String;
   xNumero: String;
   // Inicio: HPC_201607_ASO
   // Se añade variables para controlar la actualización de registros ONP en la tabla APO206
   // xsSqlUpdate: String;
   xsSqlUpdate, xSql, xcorrelativo: String;
   xTotal: Integer;
   // Fin: HPC_201607_ASO
   xCodReg: String;
   xCant: Integer;
Begin

   If DM1.cdsCreditos.FieldByName('FLAG_ACTONP').AsString = 'S' Then
   Begin
      MessageDlg('Información ya fue actualizada', mtInformation, [mbOk], 0);
      Exit;
   End;

   If MessageDlg('¿ Confirma la actualización en B.D. ?', mtconfirmation, [mbYes, mbNo], 0) = mrNo Then
   Begin
      Exit;
   End;

// SI NINGUN REGISTRO TIENE DATOS EN REC_ASOID, ENTONCES NO SE CARGO LA RECEPCION
   xsSql := 'SELECT COUNT(*) CANTIDAD '
      + '     FROM ASO_ONP_DES_DET '
      + '    WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '      AND NOT REC_ASODNI IS NULL ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('CANTIDAD').AsInteger = 0 Then
   Begin
      MessageDlg('No existe registros para actualizar', mtInformation, [mbOk], 0);
      Exit;
   End;

   xNumero := QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   xCant := 0;
   
   // Inicio: HPC_201607_ASO
   // Variables para controlar la visualización del avance del proceso
   xTotal := DM1.cdsQry20.RecordCount;
   Screen.Cursor:=crHourGlass;
   // Fin: HPC_201607_ASO

   // ACTUALIZA EN APO201
   DM1.cdsQry20.First;
   While Not DM1.cdsQry20.Eof Do
   Begin
      // Inicio: HPC_201607_ASO
      // Se muestra panel de avance del proceso
      pnlprocesar.Visible := True;
      // Fin: HPC_201607_ASO
      xsSqlUpdate := '';

      If DM1.cdsQry20.FieldByName('FLAGACTCODPENSION').AsString = 'S' Then
         xsSqlUpdate := ' CODPENSION = ''' + DM1.cdsQry20.FieldByName('REC_CODPENSION').AsString + '''';

      If DM1.cdsQry20.FieldByName('FLAGACTCODLEYPEN').AsString = 'S' Then
         Begin
         If xsSqlUpdate <> '' Then xsSqlUpdate := xsSqlUpdate + ', ';
         xsSqlUpdate := xsSqlUpdate + ' CODLEYPEN = ''' + DM1.cdsQry20.FieldByName('REC_CODLEYPEN').AsString + '''';
         End;
      // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      If DM1.cdsQry20.FieldByName('FLAGACTCODPRE').AsString = 'S' Then
         Begin
         If xsSqlUpdate <> '' Then xsSqlUpdate := xsSqlUpdate + ', ';
         xsSqlUpdate := xsSqlUpdate + ' CODPRE = ''' + DM1.cdsQry20.FieldByName('REC_CODPRE').AsString + '''';
         End;
      // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      If xsSqlUpdate <> '' Then
         Begin

         xAsoId := DM1.cdsQry20.FieldByName('ASOID').AsString;
         xCodReg := CodReg;
         xCant := xCant + 1;
         // Inicio: HPC_201607_ASO 
         // Se pintan datos de avance en el panel
         stregistro.Caption := IntToStr(xCant)+' de '+ IntToStr(xTotal);
         stasoapenom.Caption := DM1.cdsQry20.FieldByName('ASOAPENOM').AsString;
         pnlprocesar.Refresh;
         // Fin: HPC_201607_ASO 

         DM1.DCOM1.AppServer.SOLStartTransaction;
         Try
            Registro_Aud(xAsoId, '0', xCodReg);
            xsSql := 'UPDATE APO201 SET ' + xsSqlUpdate + ' WHERE ASOID = ' + xAsoId;
            DM1.DCOM1.AppServer.EjecutaSQL(xsSql);
            Registro_Aud(xAsoId, '1', xCodReg);
            DM1.DCOM1.AppServer.SolCommit;
         Except
            DM1.DCOM1.AppServer.SOLRollBack;
         End;

         // Inicio: HPC_201607_ASO
         // Se inserta registros ONP en la tabla de datos socioeconomicos
         xSql := 'SELECT LPAD(MAX(ITEM)+1,2,''0'') ITEM FROM APO206 WHERE ASOID = '+QuotedStr(xAsoId);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         If Trim(DM1.cdsQry.FieldByName('ITEM').AsString) <> '' Then
            xcorrelativo := DM1.cdsQry.FieldByName('ITEM').AsString
         Else
            xcorrelativo := '01';
         DM1.DCOM1.AppServer.SOLStartTransaction;
         Try
            xSql := 'INSERT INTO APO206 (ASOID, ITEM, ASOCODMOD, FREG, HREG, USUARIO, IDE_PAD, PERIODO) VALUES ('+QuotedStr(xAsoid)
            +','+QuotedStr(xcorrelativo)+','+QuotedStr(DM1.cdsQry20.FieldByName('ASOCODMOD').AsString)
            +', TO_DATE(SYSDATE), SYSDATE, '+QuotedStr(DM1.wUsuario)+', '+QuotedStr(DM1.cdsQry20.FieldByName('NUMERO').AsString)+','+QuotedStr(DM1.cdsCreditos.FieldByName('PERIODO').AsString)+')';
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            DM1.DCOM1.AppServer.SolCommit;
         Except
            DM1.DCOM1.AppServer.SOLRollBack;
         End;
         // Fin: HPC_201607_ASO

      End;
      DM1.cdsQry20.Next;
   End;
   // Inicio: HPC_201607_ASO 
   // Se deshabilita panal y cursor al terminar el proceso.
   pnlprocesar.Visible := False;
   Screen.Cursor:=crDefault;
   // Fin: HPC_201607_ASO 


   // Actualizando cabecera
   If xCant > 0 Then
      Begin
      xsSql := 'UPDATE ASO_PAD_DES_CAB '
         + '   SET FLAG_ACTONP = ''S'' '
         + '       ,FECHOR_ACTONP = SYSDATE '
         + '       ,CANREG_ACTONP = ' + FloatToStr(xCant)
         + '       ,USUARIO_ACTONP = ' + QuotedStr(DM1.wUsuario)
         + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xsSql);

      xsSql := 'SELECT FLAG_ACTONP, FECHOR_ACTONP, CANREG_ACTONP, USUARIO_ACTONP FROM ASO_PAD_DES_CAB WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsSql);
      DM1.cdsQry.Open;

      DM1.cdsCreditos.Edit;
      DM1.cdsCreditos.FieldByName('FLAG_ACTONP').AsString := DM1.cdsQry.FieldByName('FLAG_ACTONP').Value;
      DM1.cdsCreditos.FieldByName('FECHOR_ACTONP').Value := DM1.cdsQry.FieldByName('FECHOR_ACTONP').Value;
      DM1.cdsCreditos.FieldByName('CANREG_ACTONP').Value := DM1.cdsQry.FieldByName('CANREG_ACTONP').Value;
      DM1.cdsCreditos.FieldByName('USUARIO_ACTONP').Value := DM1.cdsQry.FieldByName('USUARIO_ACTONP').Value;
      DM1.cdsCreditos.Post;
      // Inicio: HPC_201607_ASO
      // Se actualiza registros
      // DM1.DCOM1.AppServer.SolCommit;
      DM1.cdsCreditos.ApplyUpdates(0);
      // Fin: HPC_201607_ASO
      End;

   MessageDlg('Actualización ha concluido', mtInformation, [mbOk], 0);
End;


Function TFDetMigONP.CodReg: String;
Var
   xsSql, xResAbn: String;
   xCorAbn: Integer;
Begin
   DM1.cdsListaCred.Close;
   xsSql := 'SELECT CREAREA,CORREANO,TIPO,ASOID FROM CRE206 WHERE CORREANO=' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ' AND CREAREA=''ASO'' AND TIPO=''1''';
   DM1.cdsListaCred.DataRequest(xsSql);
   DM1.cdsListaCred.Open;
   If DM1.cdsListaCred.RecordCount = 1 Then
   Begin
      xCorAbn := StrToInt(DM1.cdsListaCred.fieldbyname('ASOID').AsString) + 1;
      xResAbn := Format('%.10d', [xCorAbn]);
      DM1.cdsListaCred.Edit;
      DM1.cdsListaCred.fieldbyname('ASOID').AsString := xResAbn;
      DM1.cdsListaCred.ApplyUpdates(0);
      Result := xResAbn;
   End;
   DM1.cdsListaCred.Close;
End;


Procedure TFDetMigONP.Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
Var
   xsSql: String;
Begin
   If Length(Trim(xCodReg)) = 0 Then
   Begin
      MessageDlg(' No Se Grabo Log De USUARIO Informe al Equipo De Sistemas ', mtError, [mbOk], 0);
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   xsSql := 'INSERT INTO APO201_LOG(ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID,  ASOFACT,  ASOTIPID,'
      + ' VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL,'
      + ' BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID,'
      + ' CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL,'
      + ' ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID,'
      + ' PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO,'
      + ' GENCODBAR, ENVAUTDES, CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, ANOENV, ENVIO, USUARIO_AUD, REGISTRO_AUD,'
      + ' SECUENCIA, CODREG, MODULOID, CODOTRDOCIDE, NUMOTRDOCIDE,CENEDUID, CODPENSION, CODLEYPEN'
      // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      + ', CODPRE'
      // Fin HPC_201701_ASO        : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      +')'

      + ' SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID,  ASOFACT,  ASOTIPID,'
      + ' VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL,'
      + ' BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID,'
      + ' CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL,'
      + ' ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID,'
      + ' PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO,'
      + ' GENCODBAR, ENVAUTDES, CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, ANOENV, ENVIO,'
      + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(xSecuencia) + ',' + QuotedStr(xCodReg) + ',''ASO'', CODOTRDOCIDE, NUMOTRDOCIDE,CENEDUID, CODPENSION, CODLEYPEN '
      // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      + ' ,CODPRE'
      // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      + ' FROM APO201'
      + ' WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.DCOM1.AppServer.EjecutaSql(xsSql);
   Screen.Cursor := crDefault;
End;


procedure TFDetMigONP.btntransferirClick(Sender: TObject);
begin
  FiltrarRegistros;
end;

procedure TFDetMigONP.btnaExcelClick(Sender: TObject);
begin
   DM1.ExportaGridExcel(dbgdepurar, 'Est_ONP');
end;

End.

