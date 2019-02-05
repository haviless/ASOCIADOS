// Inicio Uso Estándares   :	01/08/2011
// Unidad		               :	ASO215.pas
// Formulario		           :	FCambDatosNombExped
// Fecha de Creación	     :	23/01/2012
// Autor			             :	Daniel Fernández
// Objetivo		             :  Cambiar Datos de Nombramiento de Asociado con Expediente

// Actualizaciones:
// HPC             FECHA       AUTOR      DESCRIPCION
// -------------------------------------------------------------------------------------------------------------------------
// HPC_201301_ASO  : 23/01/2012  DFERNANDEZ Creación.
// SPP_201303_ASO  : El pase a producción se solicita a partir del HPC_201301_ASO
// HPC_201602_ASO  : Permitir la actualización de la res. y fecha de nombramiento para asociados con
//                   expediente de tipo "DO".
// HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
// HPC_201714_ASO : Mejoras en el Mantenimiento de Asociados para Fallecidos no Liquidados

Unit ASO215;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, wwdbedit, wwdbdatetimepicker, Buttons,
   Msgdlgs;

Type
   TFCambDatosNombExped = Class(TForm)
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
    btnGraba: TBitBtn;
      BitSalir: TBitBtn;
      edtASOTIPID: TwwDBEdit;
      edtTipoAsociado: TwwDBEdit;
      edtASOID: TwwDBEdit;
    edtASODNI: TwwDBEdit;
      Procedure BitBuscarClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure btnGrabaClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
   Private
    { Private declarations }
   Public
    // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
	sNumResTemp,sFecResTemp,sFecResCeTemp:String;
	// Fin HPC_201701_ASO         : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    { Public declarations }
      Function corr(XASOID: String): String;
      Function SacaUltimaFechaCese(xasoid: String): String;
      Function CodReg: String;
   End;

Var
   FCambDatosNombExped: TFCambDatosNombExped;

Implementation
// Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
Uses ASO200, ASODM, DB, DateUtils;
// Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

{$R *.dfm}

Procedure TFCambDatosNombExped.BitBuscarClick(Sender: TObject);
Var
   xSql: String;
Begin
   Try
      FSeleccionaAso := TFSeleccionaAso.Create(self);
      FSeleccionaAso.ShowModal;
      If FSeleccionaAso.Seleccionado Then
      Begin
         xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOAPENOMDNI, A.ASOTIPID, A.USEID, A.UPROID, A.ASODNI, A.ASONCTA, T.ASOTIPDES,'
// Inicio HPC_201714_ASO
// Mejoras en el Mantenimiento de Asociados para Fallecidos no Liquidados 
            + ' A.ASORESNOM, A.ASOFRESNOM, A.ASORESCESE, A.ASOFRESCESE, A.FALLECIDO'
// Fin HPC_201714_ASO
             // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
            + ' ,A.ASOFECNAC '
            // Fin HPC_201701_ASO        : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
            + ' FROM APO201 A INNER JOIN APO107 T ON A.ASOTIPID = T.ASOTIPID'
            + ' WHERE A.ASOID = ' + QuotedStr(FSeleccionaAso.ASOID);
         DM1.cdsAsociado.Close;
         DM1.cdsAsociado.DataRequest(xSql);
         DM1.cdsAsociado.Open;
         // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         sNumResTemp:=  DM1.cdsAsociado.FieldByName('ASORESNOM').AsString;
         sFecResTemp:=  DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString;
         sFecResCeTemp:= DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString;
         // Fin HPC_201701_ASO         : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

         // Inicio: HPC_201602_ASO -- Adiciona tipo DO
         // If edtASOTIPID.Text <> 'CE' Then
// Inicio HPC_201714_ASO
// Mejoras en el Mantenimiento de Asociados para Fallecidos no Liquidados 
         If DM1.cdsAsociado.FieldByName('FALLECIDO').AsString = 'S' Then
         Begin
              xSql := 'SELECT A.ASOID from APO201 A,PVS301 B WHERE NVL(A.FALLECIDO,''N'')=''S''  AND A.ASOID=B.ASOID AND B.PVSESTADO=''01'' '
                    +'AND A.ASOID ='+QuotedStr(FSeleccionaAso.ASOID)
                    +'AND EXISTS (SELECT ASOID FROM RES_TEC_1 C WHERE C.ASOID=A.ASOID AND NVL(C.ACUMULADO,0)>0) ';


              DM1.cdsQry.Close;
              DM1.cdsQry.DataRequest(xSQL);
              DM1.cdsQry.Open;
              If DM1.cdsQry.RecordCount>0 Then
              Begin
                btnGraba.Enabled := true;
              End
              Else
              Begin
                btnGraba.Enabled := false;
              End;
         End
         Else
         Begin
             If (edtASOTIPID.Text = 'CE')  Or (edtASOTIPID.Text = 'DO') Then
             Begin
                //El asociado debe tener un expediente activo
                xSql := 'SELECT PVSEXPNRO, PVSLBENNR FROM PVS301 WHERE ASOID = ' + QuotedStr(edtASOID.Text) + ' AND PVSESTADO NOT IN (''04'', ''13'')'
                + ' AND ASORESNOM = ' + QuotedStr(Trim(edtResNomb.Text))
                + ' AND ASOFRESNOM = ' + QuotedStr(Trim(dbdFecResNom.Text))
                + ' AND ASORESCESE = ' + QuotedStr(Trim(edtResCese.Text))
                + ' AND ASOFRESCESE = ' + QuotedStr(Trim(dbdFecResCese.Text));
                DM1.cdsQry1.Close;
                DM1.cdsQry1.DataRequest(xSql);
                DM1.cdsQry1.Open;
                If DM1.cdsQry1.RecordCount = 0 Then
                Begin
                   btnGraba.Enabled := false;
                   MessageDlg('El asociado debe tener un expediente no anulado', mtInformation, [mbOk], 0);
                   Exit;
                End;
                If DM1.cdsQry1.FieldByName('PVSLBENNR').AsString <> '' Then
                Begin
                   btnGraba.Enabled := false;
                   MessageDlg('La liquidación ya fue generada', mtInformation, [mbOk], 0);
                   Exit;
                End;
                if DM1.IndicaAsociadoEnAct(DM1.cdsAsociado.fieldbyname('ASOID').AsString) then
                begin
                   btnGraba.Enabled := false;
                   ErrorMsg('Módulo de Asociados', 'Existe otra opción que puede estar actualizando datos del Asociado'+chr(13)
                                                      +'no se puede ejecutar en simultáneo con esta Opción');
                   exit;
                end;
                btnGraba.Enabled := true;
             End
             Else
             Begin
                btnGraba.Enabled := false;
                MessageDlg('Solo debe ser Cesante o Docente', mtInformation, [mbOk], 0);
                DM1.cdsAsociado.Close;
                exit;
             End;
             // Fin: HPC_201602_ASO
             End;
      End;
// Fin HPC_201714_ASO
	Finally
      FSeleccionaAso.Free;
   End;
End;

Procedure TFCambDatosNombExped.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Function TFCambDatosNombExped.corr(XASOID: String): String;
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

Function TFCambDatosNombExped.CodReg: String;
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

Procedure TFCambDatosNombExped.btnGrabaClick(Sender: TObject);
Var
   // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   xSql,xTime: String;
   // Fin HPC_201701_ASO         : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   xAsoid, xCorrelativo, xcodreg: String;
Begin

  If Trim(edtASOID.Text) = '' Then
   Begin
      MessageDlg('Seleccione el asociado a modificar', mtInformation, [mbOk], 0);
      BitBuscar.SetFocus;
      exit;
   End;
   // Inicio: HPC_201602_ASO -- Adiciona tipo DO
   // If edtASOTIPID.Text <> 'CE' Then
   If (edtASOTIPID.Text <> 'CE') And (edtASOTIPID.Text <> 'DO') Then
   Begin
      // MessageDlg('El asociado debe ser Cesante', mtInformation, [mbOk], 0);
     MessageDlg('El asociado debe ser Cesante o Docente', mtInformation, [mbOk], 0);      
      exit;
   End;
   // Fin: HPC_201602_ASO

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

      // Fin HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   End;

   //las resoluciones de nombramiento y cese vigentes deben tener un expediente activo
   xSql := 'SELECT PVSEXPNRO, PVSLBENNR FROM PVS301 WHERE ASOID = ' + QuotedStr(edtASOID.Text) + ' AND PVSESTADO NOT IN (''04'', ''13'')'
      + ' AND ASORESNOM = ' + QuotedStr(Trim(edtResNomb.Text))
      + ' AND ASOFRESNOM = ' + QuotedStr(Trim(dbdFecResNom.Text))
      + ' AND ASORESCESE = ' + QuotedStr(Trim(edtResCese.Text))
      + ' AND ASOFRESCESE = ' + QuotedStr(Trim(dbdFecResCese.Text));
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;

   If DM1.cdsQry1.RecordCount = 0 Then
   Begin
     MessageDlg('El asociado debe tener un expediente no anulado', mtInformation, [mbOk], 0);
     Exit;
   End;

   If DM1.cdsQry1.FieldByName('PVSLBENNR').AsString <> '' Then
   Begin
      MessageDlg('La liquidación ya fue generada', mtInformation, [mbOk], 0);
      Exit;
   End;

   if dbdFecResNom2.date >= dbdFecResCese.date then
   Begin
      MessageDlg('Fecha de Nombramiento debe ser menor que la Fecha de Cese', mtError, [mbOk], 0);
      dbdFecResNom2.SetFocus;
      Exit;
   End;

   xAsoid := edtASOID.Text;
   xCorrelativo := corr(xAsoid);

   If MessageDlg('¿Desea realizar el cambio de los datos de nombramiento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      Exit;

   DM1.DCOM1.AppServer.SOLStartTransaction;
   Try
      //para insertar un nuevo registro, los anteriores se marcan como No Vigentes ==> 'N'
      xSql := 'UPDATE ASO_RESOLUCIONES'
         + ' SET RESVIG = ''N'''
         + ' WHERE ASOID = ' + QuotedStr(xAsoid) + ' AND RESVIG = ''S''';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      //Actualiza el APO201
      xCodReg := CodReg; //Genera Numero de Log
      DM1.Registro_Aud(xAsoId, '0', xCodReg);
      xSQL := 'UPDATE APO201 SET'
         + ' ASORESNOM = ' + QuotedStr(edtResNomb2.Text) + ','
         + ' ASOFRESNOM = ' + QuotedStr(dbdFecResNom2.Text)
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
         +      QuotedStr(DM1.cdsAsociado.FieldByName('ASORESCESE').AsString) + ','
         +      QuotedStr(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString) + ','
         +      QuotedStr('S') + ','
         +      QuotedStr(xCorrelativo) + ','
         +      QuotedStr(DM1.wUsuario) + ','
         +      QuotedStr(DateToStr(DM1.FechaSys)) + ',SYSDATE,'
         +      QuotedStr('S') + ')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      xSQL := 'UPDATE PVS301 SET'
        + ' ASORESNOM = ' + QuotedStr(edtResNomb2.Text) + ','
        + ' ASOFRESNOM = ' + QuotedStr(dbdFecResNom2.Text)
        + ' WHERE PVSEXPNRO = ' + QuotedStr(DM1.cdsQry1.FieldByName('PVSEXPNRO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      If  (Trim(sNumResTemp)<>'') and (Trim(sFecResTemp)<>'') Then
      Begin
      xSQL := 'CALL SP_ASO_ING_RESOLUCIONES_HIS('+QuotedStr(edtASOID.Text)+','+QuotedStr(sNumResTemp)+',TO_DATE('+QuotedStr(sFecResTemp)+'),'+'TO_DATE('+QuotedStr(sFecResCeTemp)+'),'+QuotedStr(DM1.wUsuario)+')' ;
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
      // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

      DM1.DCOM1.AppServer.SOLCommit;
   Except
      DM1.DCOM1.AppServer.SOLRollBack;
      showmessage('No se pudo grabar los datos de nombramiento, por favor intente nuevamente');
      screen.Cursor := crDefault;
      exit;
   End;

   MessageDlg('Datos de nombramiento grabados correctamente', mtInformation, [mbOk], 0);
   Close;
End;

Function TFCambDatosNombExped.SacaUltimaFechaCese(xasoid: String): String;
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

Procedure TFCambDatosNombExped.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   // Inicio HPC_201714_ASO
   // Mejoras en el Mantenimiento de Asociados para Fallecidos no Liquidados
   edtResNomb2.Text:='';
   dbdFecResNom2.Text:='';
   // Fin HPC_201714_ASO
   DM1.cdsQry1.Close;
   DM1.cdsGradoI.IndexFieldNames := '';
   DM1.cdsGradoI.Close;
   DM1.cdsAsociado.Close;
   DM1.cdsListaCred.Close;
End;

procedure TFCambDatosNombExped.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

End.

