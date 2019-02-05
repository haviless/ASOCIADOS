// Inicio Uso Estándares   :	01/08/2011
// Unidad		            :	ASO211.pas
// Formulario		         :	FReingresoCesantes
// Fecha de Creación	      :	22/06/2011
// Autor			            :	Daniel Fernández
// Objetivo		            :  Reingreso de Cesantes

// Actualizaciones:
// HPC_201120_ASO (HPC_201110_ASO)       22/06/2011     Inicio de Formulario
// HPP_201110_ASO     : Se realiza el pase a partir del HPC_201120_ASO
// HPC_201301_ASO     : Se agrega condición para ordenar y obtener la última liquidación
// SPP_201303_ASO     : El pase a producción se solicita a partir del HPC_201301_ASO
// HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

Unit ASO211;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, wwdbedit, wwdbdatetimepicker, Buttons;

Type
   TFReingresoCesantes = Class(TForm)
      GroupBox1: TGroupBox;
      edtASOCODMOD: TwwDBEdit;
      edtASOAPENOMDNI: TwwDBEdit;
      BitBuscar: TButton;
      GroupBox2: TGroupBox;
      Label1: TLabel;
      edtResNomb: TwwDBEdit;
      Label2: TLabel;
      dbdFecResNom: TwwDBDateTimePicker;
      Label3: TLabel;
      edtResCese: TwwDBEdit;
      Label4: TLabel;
      dbdFecResCese: TwwDBDateTimePicker;
      GroupBox3: TGroupBox;
      Label5: TLabel;
      Label6: TLabel;
      edtResNomb2: TwwDBEdit;
      dbdFecResNom2: TwwDBDateTimePicker;
      btnGrabaResol: TBitBtn;
      BitSalir: TBitBtn;
      edtASOTIPID: TwwDBEdit;
      edtTipoAsociado: TwwDBEdit;
      edtASOID: TwwDBEdit;
    edtASODNI: TwwDBEdit;
      Procedure BitBuscarClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure btnGrabaResolClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

   Private
    { Private declarations }
   Public
      // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      sNumResTemp,sFecResTemp,sFecResCeTemp:String;
	  // Fin HPC_201701_ASO           : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    { Public declarations }
      Function corr(XASOID: String): String;
      Function SacaUltimaFechaCese(xasoid: String): String;
      Function CodReg: String;
   End;

Var
   FReingresoCesantes: TFReingresoCesantes;

Implementation

Uses ASO200, ASODM, 
// Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
DateUtils,
// Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
DB; // SPP_201303_ASO

{$R *.dfm}

Procedure TFReingresoCesantes.BitBuscarClick(Sender: TObject);
Var
   xSql: String;
Begin
   Try
      FSeleccionaAso := TFSeleccionaAso.Create(self);
      FSeleccionaAso.ShowModal;
      If FSeleccionaAso.Seleccionado Then
      Begin
         xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOAPENOMDNI, A.ASOTIPID, A.USEID, A.UPROID, A.ASODNI, A.ASONCTA, T.ASOTIPDES,'
            + ' A.ASORESNOM, A.ASOFRESNOM, A.ASORESCESE, A.ASOFRESCESE'
            // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
            + ' ,A.ASOFECNAC '
            // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
            + ' FROM APO201 A INNER JOIN APO107 T ON A.ASOTIPID = T.ASOTIPID'
            + ' WHERE A.ASOID = ' + QuotedStr(FSeleccionaAso.ASOID);
         DM1.cdsAsociado.Close;
         DM1.cdsAsociado.DataRequest(xSql);
         DM1.cdsAsociado.Open;
         // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         sNumResTemp:=  DM1.cdsAsociado.FieldByName('ASORESNOM').AsString;
         sFecResTemp:=  DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString;
         sFecResCeTemp:= DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString;
         // Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

      End
      Else
      Begin
         DM1.cdsAsociado.Close;
      End;
   Finally
      FSeleccionaAso.Free;
   End;
End;

Procedure TFReingresoCesantes.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Function TFReingresoCesantes.corr(XASOID: String): String;
Var
   XSQL: String;
Begin
   XSQL := ' SELECT NVL(MAX(TO_NUMBER(CORRELATIVO)),0) MAXIMO '
      + ' FROM ASO_RESOLUCIONES '
      + ' WHERE ASOID = ''' + XASOID + ''' ';
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(XSQL);
   DM1.cdsGradoI.Open;
   If DM1.cdsGradoI.FieldByName('MAXIMO').AsInteger > 0 Then
      Result := Format('%.2d', [DM1.cdsGradoI.FieldByName('MAXIMO').AsInteger + 1])
   Else
      Result := '01';
   DM1.cdsGradoI.Close;
End;

Function TFReingresoCesantes.SacaUltimaFechaCese(xasoid: String): String;
Var
   XSQL, XFEC: String;
Begin
   xsql := ' SELECT ASOID, MAX(ASOFRESCESE) FCESE '
      + ' FROM ASO_RESOLUCIONES'
      + ' WHERE ASOID = ''' + xasoid + ''' AND NVL(ANULADO,''X'')<>''S'' and RESVIG=''S'' '
      + ' GROUP BY ASOID';

   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xsql);
   DM1.cdsGradoI.Open;
   xfec := DM1.cdsGradoI.FieldByname('FCESE').AsString;
   If Dm1.cdsGradoI.RecordCount = 0 Then
      Result := 'SIN DATA'
   Else
      Result := xfec;
   DM1.cdsGradoI.IndexFieldNames := '';
   DM1.cdsGradoI.Close;
End;

Function TFReingresoCesantes.CodReg: String;
Var
   xSQL, xResAbn: String;
   xCorAbn: Integer;
Begin
   DM1.cdsListaCred.Close;
   xSQL := 'SELECT CREAREA,CORREANO,TIPO,ASOID FROM CRE206 WHERE CORREANO=' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ' AND CREAREA=''ASO'' AND TIPO=''1''';
   DM1.cdsListaCred.DataRequest(xSQL);
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

Procedure TFReingresoCesantes.btnGrabaResolClick(Sender: TObject);
Var
   // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   xSql, PVSEXPNRO,xTime: String;
   // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   xAsoid, xCorrelativo, xcodreg, xUltFecCeseAnt: String;
// Inicio: SPP_201303_ASO
   xExpedAnterior: boolean;
// Fin: SPP_201303_ASO
Begin
   If Trim(edtASOID.Text) = '' Then
   Begin
      MessageDlg('Seleccione el asociado a Reingresar', mtInformation, [mbOk], 0);
      BitBuscar.SetFocus;
      exit;
   End;

   If edtASOTIPID.Text <> 'CE' Then
   Begin
      MessageDlg('El asociado debe ser Cesante', mtInformation, [mbOk], 0);
      exit;
   End;

   If Trim(edtResNomb2.Text) = '' Then
   Begin
      MessageDlg('Ingrese la Nueva Resolución de Nombramiento', mtInformation, [mbOk], 0);
      exit;
   End;

   If Trim(dbdFecResNom2.Text) = '' Then
   Begin
      MessageDlg('Ingrese la fecha de Resolución de Nombramiento', mtInformation, [mbOk], 0);
      dbdFecResNom2.SetFocus;
      exit;
   // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   End
   Else
   Begin
      IF (dbdFecResNom2.Date < dm1.dFundacionDerrama) THEN
      begin
        MessageDlg(' Resolución de nombramiento no es válida,'+ chr(13)+' la Derrama Magisterial inició sus operaciones en Marzo de 1966 ', mtError, [mbOk], 0);
        exit;
      end
      else
      begin
        xTime := FloatToStr(int(YearSpan(dbdFecResNom2.Date, DM1.cdsAsociado.FieldByName('ASOFECNAC').AsDateTime)));
        if (dm1.Valores(xTime) < 18) then
        begin
          MessageDlg(' Fecha de Resolución no válida, la diferencia de la fecha de nacimiento y resolución corresponden a un menor de edad ', mtError, [mbOk], 0);
          exit;
        end
      end;

      if(DM1.cdsAsociado.FieldByName('ASOTIPID').AsString <> 'CO') then
      begin
        if(dbdFecResNom2.Date > dm1.FechaSys)then
        begin
          MessageDlg(' Fecha de Nombramiento no puede ser mayor a la Fecha Actual ', mtError, [mbOk], 0);
          exit;
        end
      end;

      // Fin HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   End;

// las resoluciones de nombramiento y cese vigentes deben tener un expediente activo
   xSql := 'SELECT PVSEXPNRO FROM PVS301 WHERE ASOID = ' + QuotedStr(edtASOID.Text) + ' AND PVSESTADO NOT IN (''04'', ''13'')'
      + ' AND ASORESNOM = ' + QuotedStr(Trim(edtResNomb.Text))
      + ' AND ASOFRESNOM = ' + QuotedStr(Trim(dbdFecResNom.Text))
      + ' AND ASORESCESE = ' + QuotedStr(Trim(edtResCese.Text))
      + ' AND ASOFRESCESE = ' + QuotedStr(Trim(dbdFecResCese.Text));
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;

   // Inicio: SPP_201303_ASO
   xExpedAnterior := false;
   
   If DM1.cdsQry1.RecordCount = 0 Then
   Begin
     xSql := 'SELECT PVSEXPNRO FROM PVS301 WHERE ASOID = ' + QuotedStr(edtASOID.Text) + ' AND PVSESTADO NOT IN (''04'', ''13'')';
     DM1.cdsQry1.Close;
     DM1.cdsQry1.DataRequest(xSql);
     DM1.cdsQry1.Open;
     If DM1.cdsQry1.RecordCount = 0 Then
     Begin
       xSql := 'SELECT * FROM PVS315 WHERE TRIM(LIB_ELE) = ' + QuotedStr(edtASODNI.Text);
       DM1.cdsQry1.Close;
       DM1.cdsQry1.DataRequest(xSql);
       DM1.cdsQry1.Open;
       If DM1.cdsQry1.RecordCount = 0 Then
       Begin
         MessageDlg('El asociado no cuenta con un expediente de beneficios', mtInformation, [mbOk], 0);
         Exit;
       End;
       xExpedAnterior := true;
     End
     Else
     Begin
       MessageDlg('Los datos de las resoluciones de nombramiento y cese del expediente de beneficios no coinciden con el maestro de asociados', mtInformation, [mbOk], 0);
       Exit;
     End;
     //MessageDlg('El asociado no cuenta con un expediente de beneficios', mtInformation, [mbOk], 0);
     //Exit;
   End;

   if xExpedAnterior then
     PVSEXPNRO := DM1.cdsQry1.FieldByName('NUM_EXP').AsString
   else
     PVSEXPNRO := DM1.cdsQry1.FieldByName('PVSEXPNRO').AsString;
   
   if xExpedAnterior then
   Begin
     //valida con Resoluciones Registradas
     xAsoid := edtASOID.Text;
     xUltFecCeseAnt := DM1.cdsQry1.FieldByName('FEC_CAL').AsString;
     If (xUltFecCeseAnt <> '') And (Length(trim(xUltFecCeseAnt)) <> 0) And (UpperCase(trim(xUltFecCeseAnt)) <> 'SIN DATA') Then
     Begin
        If (StrToDate(xUltFecCeseAnt) > dbdFecResNom2.Date) And (dbdFecResNom2.Date = 0) Then
        Begin
           MessageDlg('Fecha de Nombramiento es menor que la Fecha de Cese anterior, VERIFIQUE', mtError, [mbOk], 0);
           dbdFecResNom2.SetFocus;
           Exit;
        End;
     End;

     //valida con dato propio del Maestro
     if (xUltFecCeseAnt <> '') And (dbdFecResNom2.date<=dbdFecResCese.date) then
     Begin
        MessageDlg('Fecha de Nombramiento es menor que la Fecha de Cese anterior, VERIFIQUE', mtError, [mbOk], 0);
        dbdFecResNom2.SetFocus;
        Exit;
     End;
   End
   Else
   Begin
  // la liquidación de beneficio no debe estar anulada ni extornada
     xSql := 'SELECT PVSESTLIQ FROM (SELECT PVSESTLIQ FROM PVS306 WHERE ASOID = ' + QuotedStr(edtASOID.Text) + ' AND PVSEXPNRO = ' + QuotedStr(PVSEXPNRO)
      + '  ORDER BY HREG DESC) X WHERE ROWNUM = 1';
   // Fin: SPP_201301_ASO 
     DM1.cdsQry1.Close;
     DM1.cdsQry1.DataRequest(xSql);
     DM1.cdsQry1.Open;
     If DM1.cdsQry1.RecordCount = 0 Then
     Begin
        MessageDlg('La Liquidación del Cesante aún no ha sido creada', mtInformation, [mbOk], 0);
        Exit;
     End;

     If DM1.cdsQry1.FieldByName('PVSESTLIQ').AsString = '13' Then
     Begin
        MessageDlg('La liquidación de beneficio del asociado se encuentra Anulada', mtInformation, [mbOk], 0);
        Exit;
     End;
     If DM1.cdsQry1.FieldByName('PVSESTLIQ').AsString = '04' Then
     Begin
        MessageDlg('La liquidación de beneficio del asociado se encuentra Extornada', mtInformation, [mbOk], 0);
        Exit;
     End;

  // valida con Resoluciones Registradas
     xAsoid := edtASOID.Text;
     xUltFecCeseAnt := SacaUltimaFechaCese(xAsoId);
     If (Length(trim(xUltFecCeseAnt)) <> 0) And (UpperCase(trim(xUltFecCeseAnt)) <> 'SIN DATA') Then
     Begin
        If (StrToDate(xUltFecCeseAnt) > dbdFecResNom2.Date) And (dbdFecResNom2.Date = 0) Then
        Begin
           MessageDlg('Fecha de Nombramiento es menor que la Fecha de Cese anterior, VERIFIQUE', mtError, [mbOk], 0);
           dbdFecResNom2.SetFocus;
           Exit;
        End;
     End;

  // valida con dato propio del Maestro
     if dbdFecResNom2.date<=dbdFecResCese.date then
     Begin
        MessageDlg('Fecha de Nombramiento es menor que la Fecha de Cese anterior, VERIFIQUE', mtError, [mbOk], 0);
        dbdFecResNom2.SetFocus;
        Exit;
     End;
   End;
   // Fin: SPP_201303_ASO

   xCorrelativo := corr(xAsoid);

   If MessageDlg('¿Desea realizar el Reingreso del asociado Cesante?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Exit;

   DM1.DCOM1.AppServer.SOLStartTransaction;
   Try
   // para insertar un nuevo registro, los anteriores se marcan como No Vigentes ==> 'N'
      xSql := 'UPDATE ASO_RESOLUCIONES'
         + ' SET RESVIG = ''N'''
         + ' WHERE ASOID = ' + QuotedStr(xAsoid) + ' AND RESVIG = ''S''';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

     //Actualiza el APO201
      xCodReg := CodReg; //Genera Numero de Log
      DM1.Registro_Aud(xAsoId, '0', xCodReg);
      xSQL := 'UPDATE APO201 SET'
         + ' ASOTIPID = ''DO'','
         + ' ASOSITID = ''AC'','
         + ' REINGRESO = ''S'','
         + ' ASORESNOM = ' + QuotedStr(edtResNomb2.Text) + ','
         + ' ASOFRESNOM = ' + QuotedStr(dbdFecResNom2.Text) + ','
         + ' ASORESCESE = NULL,'
         + ' ASOFRESCESE = NULL'
         + ' WHERE ASOID = ' + QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      DM1.Registro_Aud(xAsoId, '1', xCodReg);

     //Inserto el ASO_RESOLUCIONES
      xSQL := 'INSERT INTO ASO_RESOLUCIONES (ASOID,ASOCODMOD,ASOCODAUX,ASORESNOM,ASOFRESNOM, '
         + '                                 ASORESCESE,ASOFRESCESE,RESVIG, '
         + '                                 CORRELATIVO,USUARIO,FREG,HREG,REINGRESO) '
         + 'VALUES ('
         +      QuotedStr(xAsoId) + ','
         +      QuotedStr(edtASOCODMOD.Text) + ','
         +      QuotedStr(DM1.cdsAsociado.FieldByName('ASOCODAUX').AsString) + ','
         +      QuotedStr(edtResNomb2.Text) + ','
         +      QuotedStr(dbdFecResNom2.Text) + ','
         +      'NULL,'
         +      'NULL,'
         +      QuotedStr('S') + ','
         +      QuotedStr(xCorrelativo) + ','
         +      QuotedStr(DM1.wUsuario) + ','
         +      QuotedStr(DateToStr(DM1.FechaSys)) + ',SYSDATE,'
         +      QuotedStr('S') + ')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      DM1.DCOM1.AppServer.SOLCommit;
   Except
      DM1.DCOM1.AppServer.SOLRollBack;
      showmessage('No se pudo grabar el Reingreso, por favor intente nuevamente');
      screen.Cursor := crDefault;
      exit;
   End;
    // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    If  (Trim(sNumResTemp)<>'') and (Trim(sFecResTemp)<>'') Then
    Begin
    xSQL := 'CALL SP_ASO_ING_RESOLUCIONES_HIS('+QuotedStr(xAsoId)+','+QuotedStr(sNumResTemp)+',TO_DATE('+QuotedStr(sFecResTemp)+'),'+'TO_DATE('+QuotedStr(sFecResCeTemp)+'),'+QuotedStr(DM1.wUsuario)+')' ;
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    DM1.DCOM1.AppServer.SOLCommit;
    End;
    // Fin HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   MessageDlg('Reingreso realizado correctamente', mtInformation, [mbOk], 0);
   Close;
End;

Procedure TFReingresoCesantes.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsQry1.Close;
   DM1.cdsGradoI.IndexFieldNames := '';
   DM1.cdsGradoI.Close;
   DM1.cdsAsociado.Close;
   DM1.cdsListaCred.Close;
End;

procedure TFReingresoCesantes.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;



End.

