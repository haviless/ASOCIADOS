// Inicio Uso Estándares   :	01/08/2011
// Unidad		               :	ASO959
// Formulario		           :	fResNomb2
// Fecha de Creación	     :
// Autor			             :
// Objetivo		             :  Cambiar Datos de Resoluciones (núnero y fecha) de Asociado

// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// se realizan 
// - Modificaciones generales en la forma entre Desarrollo y Calidad
// - Modificaciones por Fallecimiento del asociado

// HPC_201120_ASO  (HPC_201110_ASO) por DFERNANDEZ
// HPP_201110_ASO  : Se realiza el pase a producción a partir del HPC_201120_ASO
// HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
// HPC_201714_ASO : Mejoras en el Mantenimiento de Asociados para Fallecidos no Liquidados
Unit ASO959;

Interface

Uses

   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, ExtCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls,
   wwdbdatetimepicker, Mask, wwdbedit, wwcheckbox, DBCtrls, db;

Type
   TfResNomb2 = Class(TForm)
      grpResoluciones: TGroupBox;
      dbgResoluciones: TwwDBGrid;
      dbgResolucionesIButton: TwwIButton;
      pnlResoluciones: TPanel;
      Shape3: TShape;
      Button1: TButton;
      gbMantRes: TGroupBox;
      lblResNom: TLabel;
      lblResCese: TLabel;
      dbeNroResNom: TwwDBEdit;
      dbeNroResCes: TwwDBEdit;
      lblFecRes: TLabel;
      lblFecCes: TLabel;
      dbdFecResNom: TwwDBDateTimePicker;
      dbdFecResCes: TwwDBDateTimePicker;
      btnGrabaResol: TBitBtn;
      Label5: TLabel;
      chkReingreso: TwwCheckBox;
      Label6: TLabel;
      chkVigente: TwwCheckBox;
      Shape1: TShape;
      BitBtn1: TBitBtn;
      Button2: TButton;
      edtObsAnula: TEdit;
      Label7: TLabel;
      pnlAnulacion: TPanel;
      bitAnula: TBitBtn;
      BitSalir: TBitBtn;
      // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
	  BitMostrar: TBitBtn;
	  // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      Procedure dbgResolucionesIButtonClick(Sender: TObject);
      Procedure btnGrabaResolClick(Sender: TObject);
      Procedure dbgResolucionesDblClick(Sender: TObject);
      Procedure Button1Click(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbgResolucionesDrawDataCell(Sender: TObject;
         Const Rect: TRect; Field: TField; State: TGridDrawState);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure bitAnulaClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure Button2Click(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
	  procedure bitMostrarClick(Sender: TObject);
	  // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   Private
    { Private declarations }
   Public
      // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      sNumResTemp,sFecResTemp,sFecResCeTemp:String;
      // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      xinsert, xNroResNomb, xNroResCese, xFechaResNomb, xFechaResCese: String;
      Function corr(): String;
      Function SacaUltimaFechaCese(xasoid: String): String;
      Procedure graba();
    { Public declarations }
   End;

Var
   fResNomb2: TfResNomb2;
   xReingreso: boolean;

Implementation
// Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
Uses ASODM, ASO260,DateUtils, ASO959a;
// Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

{$R *.dfm}

Procedure TfResNomb2.dbgResolucionesIButtonClick(Sender: TObject);
Var
   xfec, xSQL: String;
   xTieneVigente: boolean;
Begin
   If DM1.xCnd = 'AUT' Then
   Begin
      ShowMessage('No tiene accesos a Modificar...');
      Exit;
   End;

   xinsert := 'N';

   xTieneVigente := false;
   xReingreso := False;
   If (Dm1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE') Then
   Begin
// sólo se puede insertar un nuevo registro si y sólo si no hay una resolución vigente
      If DM1.cdsGradoA.RecordCount > 0 Then
      Begin
         DM1.cdsGradoA.First;
         While Not DM1.cdsGradoA.Eof Do
         Begin
            If DM1.cdsGradoA.FieldByName('RESVIG').AsString = 'S' Then
               xTieneVigente := True;
            DM1.cdsGradoA.Next;
         End;
         If xTieneVigente Then
         Begin
            MessageDlg('El Asociado no puede tener mas de una Resolución Vigente', mtError, [mbOk], 0);
            exit;
         End;
      End;
// Inicio: HPP_201110_ASO
// End
   End;
   {Else
   Begin
      // verifica que CESANTE tenga su Expediente de Liquidación Cerrado.
      xSQL := 'select ASOID '
         + 'from PVS301 '
         + 'where ASOID = ' + quotedstr(DM1.cdsGradoA.FieldByName('ASOID').AsString)
         + '  and PVSESTADO not in (''13'',''04'') ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         xSQL := 'select ASOID '
            + 'from PVS306 '
            + 'where ASOID = ' + quotedstr(DM1.cdsGradoA.FieldByName('ASOID').AsString)
            + '  and PVSESTLIQ not in (''13'',''04'') ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount = 0 Then
         Begin
            ShowMessage('La Liquidación del Cesante aún no ha sido Cerrada');
            exit;
         End;
      End;
      If MessageDlg('¿Desea Registrar como Reingreso?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;
      xReingreso := True;
   End;}
// Fin: HPP_201110_ASO

//Inicio: HPP_201110_ASO
   If Dm1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO' Then
   Begin
      lblResNom.Caption := 'Nro. Contrato';
      lblFecRes.Caption := 'Fec.Ini.Contrato';
      lblResCese.Caption := '*******';
      lblFecCes.Caption := 'Fec.Fin.Contrato';
      lblResCese.Enabled := False;
      dbeNroResCes.Enabled := False;
   End
   Else If Dm1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO' Then
   Begin
      lblResNom.Caption := 'Nro. de Res. Nomb';
      lblFecRes.Caption := 'Fec. de Res. Nomb';
      lblResCese.Caption := 'Nro. de Res. Cese';
      lblFecCes.Caption := 'Fec. de Res. Cese';
      //lblResCese.Enabled := True;
      //dbeNroResCes.Enabled := True;
      lblResCese.Enabled := false;
      dbeNroResCes.Enabled := false;
      lblFecCes.Enabled := false;
      dbdFecResCes.Enabled := false;
   End
   Else If Dm1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE' Then
   Begin
      lblResNom.Caption := 'Nro. de Res. Nomb';
      lblFecRes.Caption := 'Fec. de Res. Nomb';
      lblResCese.Caption := 'Nro. de Res. Cese';
      lblFecCes.Caption := 'Fec. de Res. Cese';
      lblResCese.Enabled := True;
      lblFecCes.Enabled := True;
      dbeNroResNom.Enabled := True;
      dbdFecResNom.Enabled := True;
      dbeNroResCes.Enabled := True;
      dbdFecResCes.Enabled := True;

{      //Si el cesante no tiene expediente de beneficios vigente se asume que es un
      //Si el cesante tiene un expediente vigente no se debe permitir modificar los datos de cese
      xSql := 'SELECT PVSTIPBEN FROM PVS301 WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
        + ' AND PVSESTADO NOT IN (''04'', ''13'')';

      //Si el cesante tiene un expediente vigente no se debe permitir modificar los datos de cese
      xSql := 'SELECT PVSTIPBEN FROM PVS301 WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
        + ' AND PVSESTADO NOT IN (''04'', ''13'')'
        + ' AND ASORESNOM = ' + QuotedStr(Trim(dbeNroResNom.Text))
        + ' AND ASOFRESNOM = ' + QuotedStr(Trim(dbdFecResNom.Text))
        + ' AND ASORESCESE = ' + QuotedStr(Trim(dbeNroResCes.Text))
        + ' AND ASOFRESCESE = ' + QuotedStr(Trim(dbdFecResCes.Text));
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
        lblResCese.Enabled := False;
        dbeNroResCes.Enabled := False;
        dbdFecResCes.Enabled := False;
      End
      Else
      Begin
        lblResCese.Enabled := True;
        dbeNroResCes.Enabled := True;
        dbdFecResCes.Enabled := True;
      End; }
   End;
// Fin: HPP_201110_ASO
   xinsert := 'S';

   DM1.cdsGradoA.Insert;
   DM1.cdsGradoA.FieldByName('ASOID').AsString := DM1.cdsAso.FieldByName('ASOID').AsString;
   DM1.cdsGradoA.FieldByName('ASOCODMOD').AsString := DM1.cdsAso.FieldByName('ASOID').AsString;
   DM1.cdsGradoA.FieldByName('ASOCODAUX').AsString := DM1.cdsAso.FieldByName('ASOID').AsString;
   grpResoluciones.Enabled := False;
   pnlResoluciones.Left := 85;
   pnlResoluciones.Top := 8;
   pnlResoluciones.Visible := True;

   If (Dm1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE') Or xReingreso Then
      dbeNroResNom.SetFocus
   Else
      dbeNroResCes.SetFocus;
End;

Procedure TfResNomb2.btnGrabaResolClick(Sender: TObject);
var
// Inicio: HPP_201006_ASO por IREVILLA
   xSQL, xUltFecCeseAnt, xAsoId: String;
// Fin: HPP_201006_ASO
  // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  xTime: String;
  // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
Begin
   If DM1.xCnd = 'AUT' Then
   Begin
      ShowMessage('No tiene accesos a Modificar...');
      Exit;
   End;

  // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  IF (dbdFecResNom.Date < dm1.dFundacionDerrama) THEN
  begin
    MessageDlg(' Resolución de nombramiento no es válida,'+ chr(13)+' la Derrama Magisterial inició sus operaciones en Marzo de 1966 ', mtError, [mbOk], 0);
    exit;
  end
  else
  begin
    xTime := FloatToStr(int(YearSpan(dbdFecResNom.Date, DM1.cdsAso.FieldByName('ASOFECNAC').AsDateTime)));
      if (dm1.Valores(xTime) < 18) then
      begin
        MessageDlg(' Fecha de Resolución no válida, la diferencia de la fecha de nacimiento y resolución corresponden a un menor de edad ', mtError, [mbOk], 0);
        exit;
      end
  end;

  if(DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CO') then
  begin
    if(dbdFecResNom.Date > dm1.FechaSys)then
    begin
      MessageDlg(' Fecha de Nombramiento no puede ser mayor a la Fecha Actual ', mtError, [mbOk], 0);
      exit;
    end
  end;

  // Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion


// Inicio: HPP_201006_ASO por IREVILLA
// se valida para que si el Asociado tiene una Cuenta de Ahorros
// no podra cambiar a una Fecha de Cese mayor a 1997
   xSQL := 'SELECT ASOID, ASONCTA '
          +'FROM APO207 '
          +'WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
          +'  and ASONCTA like (''CI_%'') '
          +'  and SITCTA=''A'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>0 then
   begin
      if strtoint(copy(dbdFecResCes.Text, 7, 4)) >= 1997 then
      begin
         ShowMessage('     No se permite una Fecha de Resolución de Cese mayor a 1997     '+chr(13)
                    +'cuando hay una Cuenta de Ahorros Interna asignada y que está activa.');
         If xInsert = 'N' Then
         Begin
            DM1.cdsGradoA.Edit;
            DM1.cdsGradoA.FieldByName('ASOFRESCESE').AsString := xFechaResCese;
         End;
         dbdFecResCes.SetFocus;
         exit;
      end;
   end;
// Fin: HPP_201006_ASO 


// valida Número de Resolucion de nombramiento
// se valida que tenga valor si es DO, VO, CO o Reingreso
   If ((DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE') Or (xReingreso))
      And (Length(trim(dbeNroResNom.Text)) = 0) Then
   Begin
      ShowMessage('El número de Resolución de Nombramiento, es obligatorio');
      If xInsert = 'N' Then
      Begin
         DM1.cdsGradoA.Edit;
         DM1.cdsGradoA.FieldByName('ASORESNOM').AsString := xNroResNomb;
      End;
      dbeNroResNom.SetFocus;
      exit;
   End;

// inicio: HPP_201006_ASO por IREVILLA
// validando datos de Cese
   If Not xReingreso Then
   Begin
   // valida Número de Resolución de Cese
      If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') And
         (Length(trim(dbeNroResCes.Text)) = 0) Then
      Begin
         MessageDlg('<<< El Numero de Resolución de Cese es obligatorio para un Cesante>>>', mtError, [mbOk], 0);
         If xInsert = 'N' Then
         Begin
            DM1.cdsGradoA.Edit;
            DM1.cdsGradoA.FieldByName('ASORESCESE').AsString := xNroResCese;
         End;
         dbeNroResCes.SetFocus;
         exit;
      End;

   // valida Fecha de Resolucion de Cese
      If ((DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') Or (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO'))
         And (Length(trim(dbdFecResCes.Text)) = 0) Then
      Begin
         If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE' Then
            MessageDlg('<<< La Fecha de Resolución de Cese es obligatoria para un Cesante>>>', mtError, [mbOk], 0)
         Else
            MessageDlg('<<< La Fecha Final de Contrato es obligatoria para un Contratado>>>', mtError, [mbOk], 0);

         If xInsert = 'N' Then
         Begin
            DM1.cdsGradoA.Edit;
// Inicio: HPP_201006_ASO por IREVILLA
            DM1.cdsGradoA.FieldByName('ASOFRESCESE').AsString := xFechaResCese;
// Fin: HPP_201006_ASO
         End;
         dbdFecResCes.SetFocus;
         exit;
      End;

// Inicio: HPP_201006_ASO por IREVILLA
{
   End;

// validando datos de nombramiento
   if not xReingreso then
   begin
}
// Fin: HPP_201006_ASO 

   // si es cesante el número de Resolución de Nombramiento es obligatoria
      if (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE')
         And (strtoint(copy(dbdFecResCes.Text, 7, 4)) >= 1997)
         And (Length(trim(dbeNroResNom.Text)) = 0) Then
      begin
         ShowMessage('El número de Resolución de Nombramiento, es obligatorio');
         If xInsert = 'N' Then
         Begin
            DM1.cdsGradoA.Edit;
            DM1.cdsGradoA.FieldByName('ASORESNOM').AsString := xNroResNomb;
         End;
         dbeNroResNom.SetFocus;
         exit;
      end;

   // si es cesante la Fecha de Resolución de Nombramiento es obligatoria
      if (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE')
         And (strtoint(copy(dbdFecResCes.Text, 7, 4)) >= 1997)
         And (Length(trim(dbdFecResNom.Text)) = 0) Then
      begin
         ShowMessage('La fecha de Resolución de Nombramiento, es obligatorio');
         If xInsert = 'N' Then
         Begin
            DM1.cdsGradoA.Edit;
            DM1.cdsGradoA.FieldByName('ASOFRESNOM').AsString := xFechaResNomb;
         End;
         dbeNroResNom.SetFocus;
         exit;
      end;
   end;
// fin: HPP_201006_ASO

// valida Fecha de Resolucion de nombramiento
   If ((DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE') Or (xReingreso))
      And (Length(trim(dbdFecResNom.Text)) = 0) Then
   Begin
      MessageDlg('<<< La Fecha de Resolución de Nombramiento es obligatoria>>>', mtError, [mbOk], 0);
      If xInsert = 'N' Then
      Begin
         DM1.cdsGradoA.Edit;
         DM1.cdsGradoA.FieldByName('ASOFRESNOM').AsString := xFechaResNomb;
      End;
      dbdFecResNom.SetFocus;
      exit;
   End;

   If (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE')
        And (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CO') Then
   Begin
      if xInsert<>'S' then
      begin
         if Length(trim(dbeNroResCes.Text)) > 0 then
         begin
         // se pregunta al usuario si se desea borrar los datos de Resolución de Cese
            If MessageDlg('<<< Un docente Activo no debe tener el Nro.de Resolución de Cese >>>' + #13
               + '¿ conservar los datos de Resolución de Cese ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
            Begin
               DM1.cdsGradoA.Edit;
               DM1.cdsGradoA.FieldByName('ASORESCESE').AsString := '';
               DM1.cdsGradoA.FieldByName('ASOFRESCESE').AsString := '';
               exit;
            End;
         end;
         if Length(trim(dbdFecResCes.Text)) > 0 then
         begin
            If MessageDlg('<<< Un docente Activo no debe tener Fecha de Resolución de Cese >>>' + #13
               + '¿ conservar los datos de Resolución de Cese ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
            Begin
               DM1.cdsGradoA.Edit;
               DM1.cdsGradoA.FieldByName('ASORESCESE').AsString := '';
               DM1.cdsGradoA.FieldByName('ASOFRESCESE').AsString := '';
               exit;
            End;
         end;
      end;
   End;

// valida q la fecha de cese sea mayor o igual a la fecha de nombramiento
   If (Length(trim(dbdFecResNom.Text)) > 0) And
      (Length(trim(dbdFecResCes.Text)) > 0) Then
   Begin
      If (dbdFecResNom.Date >= dbdFecResCes.Date) Then
      Begin
         MessageDlg('La Fecha de Resolución de Nombramiento no puede ser mayor o igual a la Fecha de Res.Cese', mtError, [mbOk], 0);
         dbdFecResNom.SetFocus;
         Exit;
      End;
   End;

   If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO' Then
   Begin
      // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
	  {If dbdFecResNom.Date < StrToDate('01/03/1966') Then
      Begin
         MessageDlg('Resolución de nombramiento no es válida,' + chr(13)
            + 'la Derrama Magisterial inició sus operaciones en Marzo de 1966', mtError, [mbOk], 0);
         dbdFecResNom.SetFocus;
         Exit;
      End;}
	  // Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

      If xInsert = 'S' Then
      Begin
         If Length(trim(dbeNroResCes.Text)) > 0 Then
         Begin
            MessageDlg('El Número de Resolución de Cese no está permitido en un Registro nuevo ', mtError, [mbOk], 0);
            DM1.cdsGradoA.Edit;
            DM1.cdsGradoA.FieldByName('ASORESCESE').AsString := '';
            Exit;
         End;
         If Length(trim(dbdFecResCes.Text)) > 0 Then
         Begin
            MessageDlg('La Fecha de Resolución de Cese no está permitida en un Registro nuevo  ', mtError, [mbOk], 0);
            DM1.cdsGradoA.Edit;
            DM1.cdsGradoA.FieldByName('ASOFRESCESE').AsString := '';
            Exit;
         End;
      End;
   End;

// Inicio: HPP_201110_ASO
// El fecha de resolucion de nombramiento en reingreso, no puede ser menor a la maxima fecha de los reg.anteriores
   {If xReingreso Then
   Begin
      xAsoid := DM1.cdsAso.FieldByName('ASOID').AsString;
      xUltFecCeseAnt := SacaUltimaFechaCese(xAsoId);
      If (Length(trim(xUltFecCeseAnt)) <> 0) And (UpperCase(trim(xUltFecCeseAnt)) <> 'SIN DATA') Then
      Begin
         If StrToDate(xUltFecCeseAnt) > dbdFecResNom.Date Then
         Begin
            MessageDlg('Fecha de Nombramiento es menor que la Fecha de Cese anterior, VERIFIQUE', mtError, [mbOk], 0);
            dbdFecResNom.SetFocus;
            Exit;
         End;
      End;
   End;}
// Fin: HPP_201110_ASO

   Graba;
End;

//genera correlativo de resolucion

Function TfResNomb2.corr(): String;
Var
   XSQL: String;
Begin
   XSQL := ' SELECT NVL(MAX(TO_NUMBER(CORRELATIVO)),0) MAXIMO '
      + ' FROM ' + DM1.sResolucion
      + ' WHERE ' + DM1.sReso_where + ' ASOID=''' + DM1.cdsAso.FieldByName('ASOID').AsString + ''' ';
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(XSQL);
   DM1.cdsGradoI.Open;
   If DM1.cdsGradoI.FieldByName('MAXIMO').AsInteger > 0 Then
      Result := Format('%.2d', [DM1.cdsGradoI.FieldByName('MAXIMO').AsInteger + 1])
   Else
      Result := '01';
   DM1.cdsGradoI.Close;
End;

Procedure TfResNomb2.dbgResolucionesDblClick(Sender: TObject);
var
  xSql: String; // HPP_201110_ASO
Begin
// Memorándum 063-2009-DM-EPS    -  SAR-200910-0890   -   DAD-DF-2009-0077
// No se puede Liquidar sino es Fallecido
// Inicio HPC_201714_ASO
// Mejoras en el Mantenimiento de Asociados para Fallecidos no Liquidados
   {if length(DM1.cdsAso.FieldByName('TIPO_FALL_ID').AsString)>0 then
   begin
      ShowMessage('No se puede Modificar los datos de un Fallecido Liquidado o Confirmado por Gestión');
      Exit;
   End;}
//Fin HPC_201714_ASO
   If DM1.xCnd = 'AUT' Then
   Begin
      ShowMessage('No tiene accesos a Modificar...');
      Exit;
   End;

   If DM1.cdsGradoA.RecordCount = 0 Then
   Begin
      MessageDlg('No tiene Resolución para modificar, tiene que adicionar uno nuevo', mtError, [mbOk], 0);
      exit;
   End;

   If DM1.cdsGradoA.FieldByName('ANULADO').AsString = 'S' Then
   Begin
      MessageDlg('Registro Anulado, NO PUEDE SER MODIFICADO', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(TRIM(DM1.cdsGradoA.FieldByName('NUMLIQ').AsString)) <> 0 Then
   Begin
      MessageDlg('Periodo Liquidado, NO PUEDE SER MODIFICADO', mtError, [mbOk], 0);
      exit;
   End;

   If DM1.cdsGradoA.FieldByName('RESVIG').AsString <> 'S' Then
   Begin
      MessageDlg('Solo puede modificar Resolución vigente', mtError, [mbOk], 0);
      Exit;
   End;

// Captura los valores iniciales antes de pasar a modificar los datos:
   xNroResNomb := DM1.cdsGradoA.FieldByName('ASORESNOM').AsString;
   xFechaResNomb := DM1.cdsGradoA.FieldByName('ASOFRESNOM').AsString;
   xNroResCese := DM1.cdsGradoA.FieldByName('ASORESCESE').AsString;
   xFechaResCese := DM1.cdsGradoA.FieldByName('ASOFRESCESE').AsString;

   chkVigente.Checked := (DM1.cdsGradoA.FieldByName('RESVIG').AsString = 'S');
   chkReingreso.Checked := (DM1.cdsGradoA.FieldByName('REINGRESO').AsString = 'S');

// Inicio: HPP_201110_ASO
   If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO' Then
   Begin
      lblResNom.Caption := 'Nro. Contrato';
      lblFecRes.Caption := 'Fec.Ini.Contrato';
      lblResCese.Caption := '*******';
      // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
	  lblFecCes.Caption := 'Fec.Fin.Contrato';
	  // Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      lblResCese.Enabled := False;
      dbeNroResCes.Enabled := False;
   End
   Else If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO' Then
   Begin
      lblResNom.Caption := 'Nro. de Res. Nomb';
      lblFecRes.Caption := 'Fec. de Res. Nomb';
      lblResCese.Caption := 'Nro. de Res. Cese';
      lblFecCes.Caption := 'Fec. de Res. Cese';
      //lblResCese.Enabled := True;
      //dbeNroResCes.Enabled := True;

      //Si el docente tiene un expediente vigente no se debe permitir modificar ningún dato
      xSql := 'SELECT PVSTIPBEN FROM PVS301 WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
        + ' AND PVSESTADO NOT IN (''04'', ''13'')'
        + ' AND ASORESNOM = ' + QuotedStr(Trim(dbeNroResNom.Text))
        + ' AND ASOFRESNOM = ' + QuotedStr(Trim(dbdFecResNom.Text));
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
        lblResNom.Enabled := False;
        dbeNroResNom.Enabled := False;
        dbdFecResNom.Enabled := False;
        lblResCese.Enabled := False;
        dbeNroResCes.Enabled := False;
        dbdFecResCes.Enabled := False;
      End
      Else
      Begin
        lblResNom.Enabled := True;
        dbeNroResNom.Enabled := True;
        dbdFecResNom.Enabled := True;
        lblResCese.Enabled := False;
        dbeNroResCes.Enabled := False;
        dbdFecResCes.Enabled := False;
      End;
   End
   Else If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE' Then
   Begin
      lblResNom.Caption := 'Nro. de Res. Nomb';
      lblFecRes.Caption := 'Fec. de Res. Nomb';
      lblResCese.Caption := 'Nro. de Res. Cese';
      lblFecCes.Caption := 'Fec. de Res. Cese';
      //dbeNroResNom.Enabled := false;
      //dbdFecResNom.Enabled := false;

      //Si el cesante tiene un expediente vigente no se debe permitir modificar ningun dato
      xSql := 'SELECT PVSTIPBEN FROM PVS301 WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
        + ' AND PVSESTADO NOT IN (''04'', ''13'')'
        + ' AND ASORESNOM = ' + QuotedStr(Trim(dbeNroResNom.Text))
        + ' AND ASOFRESNOM = ' + QuotedStr(Trim(dbdFecResNom.Text));
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
        lblResNom.Enabled := False;
        dbeNroResNom.Enabled := False;
        dbdFecResNom.Enabled := False;
        lblResCese.Enabled := False;
        dbeNroResCes.Enabled := False;
        dbdFecResCes.Enabled := False;
      End
      Else
      Begin
        lblResNom.Enabled := True;
        dbeNroResNom.Enabled := True;
        dbdFecResNom.Enabled := True;
        lblResCese.Enabled := True;
        dbeNroResCes.Enabled := True;
        dbdFecResCes.Enabled := True;
      End;
   End;
// Fin: HPP_201110_ASO

   xinsert := 'N';
   // Inicio: HPP_201006_ASO por IREVILLA
   xReingreso := False;
   // Fin: HPP_201006_ASO
   grpResoluciones.Enabled := False;
   pnlResoluciones.Left := 85;
   pnlResoluciones.Top := 8;
   pnlResoluciones.Visible := True;
// Inicio: HPP_201110_ASO
   If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO')
      or (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO') Then
   begin
     if dbeNroResNom.Enabled then dbeNroResNom.SetFocus;
   end
   else If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE' Then
   begin
     if dbeNroResCes.Enabled then dbeNroResCes.SetFocus;
   end;

   if (not dbeNroResNom.Enabled) and (not dbdFecResNom.Enabled)
    and (not dbeNroResCes.Enabled) and (not dbdFecResCes.Enabled) then btnGrabaResol.Enabled := False;
// Fin: HPP_201110_ASO


   // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   sNumResTemp:=  DM1.cdsAso.FieldByName('ASORESNOM').AsString;
   sFecResTemp:=  DM1.cdsAso.FieldByName('ASOFRESNOM').AsString;
   sFecResCeTemp:= DM1.cdsGradoA.FieldByName('ASOFRESCESE').AsString;
   // Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion


End;

Procedure TfResNomb2.Button1Click(Sender: TObject);
Var
   xSQL: String;
Begin

   If DM1.sAPO201 = 'APO201' Then
   Begin
      // se define estructura de archivo ASO_RESOLUCIONES para abrir
      xSQL := 'select ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, ASORESCESE, '
         + '       ASOFRESCESE, RESVIG, CORRELATIVO, USUARIO, FREG, HREG, LIQUIDADO, NUMLIQ, FECLIQ, '
         + '       REINGRESO, ANULADO, OBSANU, USUANU, FECANU, NUMEXPLIQ, FECEXPLIQ '
   End
   Else
   Begin
      // se define estructura de archivo ASO_RESOLUCIONES_NUE para abrir
      xSQL := 'select SOLICITUD, ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, ASORESCESE, '
         + '       ASOFRESCESE, RESVIG, CORRELATIVO, USUARIO, FREG, HREG, LIQUIDADO, NUMLIQ, FECLIQ, '
         + '       REINGRESO, ANULADO, OBSANU, USUANU, FECANU, NUMEXPLIQ, FECEXPLIQ '
   End;

   xSQL := xSQL + ' from ' + DM1.sResolucion
      + ' WHERE ' + DM1.sReso_where
      + ' ASOID=' + QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)
      + ' ORDER BY CORRELATIVO ';

   DM1.cdsGradoA.Close;
   DM1.cdsGradoA.DataRequest(xSQL);
   DM1.cdsGradoA.Open;
   DM1.cdsGradoA.Last;

   pnlResoluciones.Visible := False;
   grpResoluciones.Enabled := True;
// se valida para que tenga registros antes de borrar
   if DM1.cdsGradoA.RecordCount>0 then
      If Length(TRIM(DM1.cdsGradoA.FieldByName('CORRELATIVO').AsString)) = 0 Then DM1.cdsGradoA.Delete;

End;

Procedure TfResNomb2.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

Procedure TfResNomb2.dbgResolucionesDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If DM1.cdsGradoA.FieldByName('RESVIG').AsString = 'S' Then
   Begin
      dbgResoluciones.Canvas.Font.Color := clLime;
      dbgResoluciones.DefaultDrawDataCell(rect, Field, State);
   End;

   If DM1.cdsGradoA.FieldByName('ANULADO').AsString = 'S' Then
   Begin
      dbgResoluciones.Canvas.Font.Color := clRED;
      dbgResoluciones.DefaultDrawDataCell(rect, Field, State);
   End;
End;

Procedure TfResNomb2.FormClose(Sender: TObject; Var Action: TCloseAction);
var
   xSQL : String;
Begin
// Memorándum 063-2009-DM-EPS    -  SAR-200910-0890   -   DAD-DF-2009-0077
// No se valida para Asociados Fallecidos
   if DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' then
   begin

      If DM1.sAPO201 = 'APO201' Then
      Begin
      // se define estructura de archivo ASO_RESOLUCIONES para abrir
         xSQL := 'select ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, ASORESCESE, '
            + '       ASOFRESCESE, RESVIG, CORRELATIVO, USUARIO, FREG, HREG, LIQUIDADO, NUMLIQ, FECLIQ, '
            + '       REINGRESO, ANULADO, OBSANU, USUANU, FECANU, NUMEXPLIQ, FECEXPLIQ '
      End
      Else
      Begin
      // se define estructura de archivo ASO_RESOLUCIONES_NUE para abrir
         xSQL := 'select SOLICITUD, ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, ASORESCESE, '
            + '       ASOFRESCESE, RESVIG, CORRELATIVO, USUARIO, FREG, HREG, LIQUIDADO, NUMLIQ, FECLIQ, '
            + '       REINGRESO, ANULADO, OBSANU, USUANU, FECANU, NUMEXPLIQ, FECEXPLIQ '
      End;
      xSQL := xSQL + ' from ' + DM1.sResolucion
         + ' WHERE ' + DM1.sReso_where
         + ' ASOID=' + QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)
         + ' and nvl(RESVIG,''N'')=''S'' ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      if DM1.cdsQry.RecordCount=0 then
      begin
        MessageDlg('El asociado debería tener una Resolución Vigente', mtConfirmation, [mbOk], 0);
         //raise exception.Create('No se puede quedar sin una Resolución Vigente');
      end;

   end; // Asociados No Fallecidos

   dm1.cdsGradoA.Close;
   dm1.cdsGradoA.IndexFieldNames := '';
End;

Procedure TfResNomb2.graba;
Var
   XSQL, xAsoid, xCorrelativo, xcodreg : String;
Begin
   xAsoid := DM1.cdsAso.FieldByName('ASOID').AsString;
   xCorrelativo := corr;

   If xInsert = 'S' Then
   Begin
   // para insertar un nuevo registro, los anteriores se marcan como Vigente='N'
      xSQL := ' UPDATE ' + DM1.sResolucion
         + ' SET RESVIG=''N'' '
         + ' WHERE ' + DM1.sReso_where + ' ASOID=''' + XASOID + ''' AND RESVIG=''S'' ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   // Actualizo el APO201
      xCodReg := FMantAsociado.CodReg; //Genera Numero de Log
      DM1.Registro_Aud(xAsoId, '0', xCodReg);
      xSQL := 'UPDATE ' + DM1.sAPO201 + ' SET ';
// Inicio: HPP_201110_ASO
{      If xReingreso Then
      Begin
         xSQL := xSQL + ' ASOTIPID=''DO'', '
            + ' ASOSITID=''AC'', '
            + ' REINGRESO=' + QuotedStr('S') + ',';
      End
      Else
         xSQL := xSQL + ' REINGRESO=' + QuotedStr('N') + ',';}
// Fin: HPP_201110_ASO

      xSQL := xSQL + ' ASORESNOM=' + QuotedStr(dbeNroResNom.Text) + ','
         + ' ASOFRESNOM=' + QuotedStr(dbdFecResNom.Text) + ','
         + ' ASORESCESE=' + QuotedStr(dbeNroResCes.Text) + ','
         + ' ASOFRESCESE=' + QuotedStr(dbdFecResCes.Text)
         + ' WHERE ASOID=' + QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      DM1.Registro_Aud(xAsoId, '1', xCodReg);

      DM1.cdsAso.Edit;
      If (xReingreso) And (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') Then
      Begin
         DM1.cdsAso.FieldByName('ASOTIPID').AsString := 'DO';
         DM1.cdsAso.FieldByName('ASOSITID').AsString := 'AC';
         DM1.cdsAso.FieldByName('REINGRESO').AsString := 'S';
      End
      Else
         DM1.cdsAso.FieldByName('REINGRESO').AsString := 'N';

      DM1.cdsAso.FieldByName('ASORESNOM').AsString := dbeNroResNom.Text;
      DM1.cdsAso.FieldByName('ASOFRESNOM').AsString := dbdFecResNom.Text;
      DM1.cdsAso.FieldByName('ASORESCESE').AsString := dbeNroResCes.Text;
      DM1.cdsAso.FieldByName('ASOFRESCESE').Asstring := dbdFecResCes.Text;
      DM1.cdsAso.Post;

      //Inserto el ASO_RESOLUCIONES
      If DM1.sResolucion = 'ASO_RESOLUCIONES' Then
         xSQL := 'INSERT INTO ' + DM1.sResolucion + ' (ASOID,ASOCODMOD,ASOCODAUX,ASORESNOM,ASOFRESNOM,ASORESCESE,ASOFRESCESE,RESVIG, '
            + '  CORRELATIVO,USUARIO,FREG,HREG,REINGRESO) '
            + 'VALUES (' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
            QuotedStr(dbeNroResNom.Text) + ',' +
            QuotedStr(dbdFecResNom.Text) + ',' +
            QuotedStr(dbeNroResCes.Text) + ',' +
            QuotedStr(dbdFecResCes.Text) + ',' +
            QuotedStr('S') + ',' +
            QuotedStr(xCorrelativo) + ',' +
            QuotedStr(DM1.wUsuario) + ',' +
            QuotedStr(DateToStr(DM1.FechaSys)) + ',SYSDATE,' +
            QuotedStr(DM1.cdsAso.FieldByName('REINGRESO').AsString) + ')'
      Else
         xSQL := 'INSERT INTO ' + DM1.sResolucion + ' (SOLICITUD,ASOID,ASOCODMOD,ASOCODAUX,ASORESNOM,ASOFRESNOM,ASORESCESE,ASOFRESCESE,RESVIG, '
            + '  CORRELATIVO,USUARIO,FREG,HREG,REINGRESO) '
            + 'VALUES (' +
            QuotedStr(DM1.cdsAso.FieldByName('SOLICITUD').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString) + ',' +
            QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString) + ',' +
            QuotedStr(dbeNroResNom.Text) + ',' +
            QuotedStr(dbdFecResNom.Text) + ',' +
            QuotedStr(dbeNroResCes.Text) + ',' +
            QuotedStr(dbdFecResCes.Text) + ',' +
            QuotedStr('S') + ',' +
            QuotedStr(xCorrelativo) + ',' +
            QuotedStr(DM1.wUsuario) + ',' +
            QuotedStr(DateToStr(DM1.FechaSys)) + ',SYSDATE,' +
            QuotedStr(DM1.cdsAso.FieldByName('REINGRESO').AsString) + ')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End
   Else // si se está modificando
   Begin
      DM1.cdsAso.Edit;
      DM1.cdsAso.FieldByName('ASORESNOM').AsString := dbeNroResNom.Text;
      DM1.cdsAso.FieldByName('ASOFRESNOM').AsString := dbdFecResNom.Text;
      DM1.cdsAso.FieldByName('ASORESCESE').AsString := dbeNroResCes.Text;
      DM1.cdsAso.FieldByName('ASOFRESCESE').Asstring := dbdFecResCes.Text;
      DM1.cdsAso.Post;

      xCodReg := FMantAsociado.CodReg; //Genera Numero de Log
      DM1.Registro_Aud(xAsoId, '0', xCodReg); //Antes del Cambio

      xSQL := 'UPDATE ' + DM1.sAPO201 + ' SET ';

      xSQL := xSQL + ' ASORESNOM=' + QuotedStr(dbeNroResNom.Text) + ',ASOFRESNOM=' + QuotedStr(dbdFecResNom.Text) +
         ',ASORESCESE=' + QuotedStr(dbeNroResCes.Text) + ',ASOFRESCESE=' + QuotedStr(dbdFecResCes.Text) +
         ' WHERE ASOID=' + QuotedStr(xAsoId);

      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      DM1.Registro_Aud(xAsoId, '1', xCodReg); //Despues del Cambio

      If DM1.sResolucion = 'ASO_RESOLUCIONES' Then
         XSQL := 'UPDATE ASO_RESOLUCIONES '
            + 'SET ASORESNOM =' + QuotedStr(dbeNroResNom.Text) + ','
            + '    ASOFRESNOM=' + QuotedStr(dbdFecResNom.Text) + ','
            + '    ASORESCESE=' + QuotedStr(dbeNroResCes.Text) + ','
            + '    ASOFRESCESE=' + QuotedStr(dbdFecResCes.Text) + ','
            + '    RESVIG=' + quotedstr('S') + ','
            + '    USUARIO=' + QuotedStr(DM1.wUsuario) + ','
            + '    FREG=' + QuotedStr(DateToStr(DM1.FechaSys)) + ','
            + '    HREG=SYSDATE '
            + 'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND CORRELATIVO=''' + DM1.cdsGradoA.FieldByName('CORRELATIVO').AsString + ''' '
      Else
         XSQL := 'UPDATE ' + DM1.sResolucion
            + ' SET ASORESNOM =' + QuotedStr(dbeNroResNom.Text) + ','
            + '    ASOFRESNOM=' + QuotedStr(dbdFecResNom.Text) + ','
            + '    ASORESCESE=' + QuotedStr(dbeNroResCes.Text) + ','
            + '    ASOFRESCESE=' + QuotedStr(dbdFecResCes.Text) + ','
            + '    RESVIG=' + quotedstr('S') + ','
            + '    USUARIO=' + QuotedStr(DM1.wUsuario) + ','
            + '    FREG=' + QuotedStr(DateToStr(DM1.FechaSys)) + ','
            + '    HREG=SYSDATE '
            + 'WHERE ' + DM1.sReso_where + ' ASOID=' + QuotedStr(xAsoId) + 'AND CORRELATIVO=''' + DM1.cdsGradoA.FieldByName('CORRELATIVO').AsString + ''' ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

   pnlResoluciones.Visible := False;

{
// Verifica si existe resolucion vigente de lo contrario blanque los datos en el APO201
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest('SELECT * FROM ' + DM1.sResolucion + ' WHERE ' + DM1.sReso_where + ' ASOID=''' + XASOID + ''' AND RESVIG=''S'' ');
   DM1.cdsGradoI.Open;
   If DM1.cdsGradoI.RecordCount = 0 Then
   Begin
      DM1.cdsAso.Edit;
      DM1.cdsAso.FieldByName('ASORESNOM').AsString := '';
      DM1.cdsAso.FieldByName('ASOFRESNOM').AsString := '';
      DM1.cdsAso.FieldByName('ASORESCESE').AsString := '';
      DM1.cdsAso.FieldByName('ASOFRESCESE').Asstring := '';
      DM1.cdsAso.FieldByName('REINGRESO').AsString := '';
      xCodReg := FMantAsociado.CodReg; //Genera Numero de Log
      DM1.Registro_Aud(xAsoId, '0', xCodReg); //Antes del Cambio

      xSQL := 'UPDATE ' + DM1.sAPO201 + ' SET ASORESNOM=NULL,ASOFRESNOM=NULL,ASORESCESE=NULL,ASOFRESCESE=NULL WHERE ASOID=' + QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      DM1.Registro_Aud(xAsoId, '1', xCodReg); //Despues del Cambio
   End;
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.IndexFieldNames := '';
}

   // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   If  (Trim(sNumResTemp)<>'') and (Trim(sFecResTemp)<>'') Then
   Begin
   xSQL := 'CALL SP_ASO_ING_RESOLUCIONES_HIS('+QuotedStr(xAsoId)+','+QuotedStr(sNumResTemp)+',TO_DATE('+QuotedStr(sFecResTemp)+'),'+'TO_DATE('+QuotedStr(sFecResCeTemp)+'),'+QuotedStr(DM1.wUsuario)+')' ;
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
   // Fin HPC_201701_ASO        : Reglas de control al ingresar resolucion / implementacion codigo de prestacion




   Button1Click(self);
End;

Function TfResNomb2.SacaUltimaFechaCese(xasoid: String): String;
Var
   XSQL, XFEC: String;
Begin
   If xinsert = 'S' Then
      xsql := ' Select ASOID,max(ASOFRESCESE) Fcese '
         + ' FROM ' + DM1.sResolucion
         + ' WHERE ' + DM1.sReso_where + ' ASOID=''' + XASOID + '''and NVL(ANULADO,''X'')<>''S'' and RESVIG=''S'' '
         + ' Group by Asoid'
   Else
      xsql := ' Select ASOID,max(ASOFRESCESE) Fcese '
         + ' FROM ' + DM1.sResolucion
         + ' WHERE ' + DM1.sReso_where + ' ASOID=''' + XASOID + ''' and CORRELATIVO<> ''' + DM1.cdsGradoA.FieldByName('CORRELATIVO').Asstring + ''' '
         + '   and NVL(ANULADO,''X'')<>''S'' '
         + ' Group by Asoid ';

   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(xsql);
   DM1.cdsGradoI.Open;
   xfec := DM1.cdsGradoI.FieldByname('Fcese').AsString;
   If Dm1.cdsGradoI.RecordCount = 0 Then
      Result := 'SIN DATA'
   Else
      Result := xfec;
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.IndexFieldNames := '';
End;

Procedure TfResNomb2.bitAnulaClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If DM1.xCnd = 'AUT' Then
   Begin
      ShowMessage('No tiene accesos a Modificar...');
      Exit;
   End;

   If DM1.cdsGradoA.FieldByName('ANULADO').AsString = 'S' Then
   Begin
      MessageDlg('Registro Anulado, NO PUEDE SER MODIFICADO', mtError, [mbOk], 0);
      Exit;
   End;

   If Length(TRIM(DM1.cdsGradoA.FieldByName('NUMLIQ').AsString)) <> 0 Then
   Begin
      MessageDlg('Periodo Liquidado, NO PUEDE SER MODIFICADO', mtError, [mbOk], 0);
      exit;
   End;

  //Verifico que Anule siempre el Vigente
   If DM1.cdsGradoA.FieldByName('RESVIG').AsString <> 'S' Then
   Begin
      MessageDlg('Sólo se puede Anular la Resolución Vigente', mtError, [mbOk], 0);
      exit;
   End;

  // si el Asociado es Cesado y ha sido Liquidado, NO SE PUEDE ANULAR
   If (Dm1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') Then
   Begin
      xSQL := 'select ASOID '
         + 'from PVS301 '
         + 'where ASOID = ' + quotedstr(DM1.cdsGradoA.FieldByName('ASOID').AsString)
         + '  and PVSESTADO not in (''13'',''04'') ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         xSQL := 'select ASOID '
            + 'from PVS306 '
            + 'where ASOID = ' + quotedstr(DM1.cdsGradoA.FieldByName('ASOID').AsString)
            + '  and PVSESTLIQ not in (''13'',''04'') ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            ShowMessage('La Liquidación del Cesante ha sido Cerrada, no se puede Anular');
            exit;
         End
         Else
         Begin
            ShowMessage('El Expediente de Beneficio está en trámite, no se puede Anular');
            exit;
         End;
      End;
   End;

   edtObsAnula.Text := '';

   grpResoluciones.Enabled := False;
   pnlAnulacion.Top := 32;
   pnlAnulacion.Left := 176;
   pnlAnulacion.Visible := True;

End;

Procedure TfResNomb2.BitBtn1Click(Sender: TObject);
Var
   xsql, xasoid, xcorrelativo: String;
Begin
   If Length(trim(edtObsAnula.Text)) = 0 Then
   Begin
      MessageDlg('Debe Ingresar Observación de la Anulación', mtError, [mbOk], 0);
      edtObsAnula.SetFocus;
      Exit;
   End;

   If MessageDlg('ESTA SEGURO(A) ANULAR', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then exit;

// marca como anulado
   xcorrelativo := DM1.cdsGradoA.FieldByName('CORRELATIVO').AsString;
   xasoid := DM1.cdsGradoA.FieldByName('ASOID').AsString;

   xsql := ' UPDATE ' + DM1.sResolucion
         + ' SET RESVIG='+quotedstr('N')+','
         + '     ANULADO='+quotedstr('S')+','
         + '     OBSANU='+quotedstr(trim(edtObsAnula.Text))+','
         + '     USUANU='+quotedstr(DM1.wUsuario)+','
         + '     FECANU=SYSDATE '
         + ' WHERE ' + DM1.sReso_where + ' ASOID='+quotedstr(XASOID)
         + '   AND CORRELATIVO='+ quotedstr(xcorrelativo);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   MessageDlg('<<< Anulación Concluida >>>', mtError, [mbOk], 0);
   Button2Click(self); //SALIR
End;

Procedure TfResNomb2.Button2Click(Sender: TObject);
Begin
   edtObsAnula.Text := '';
   pnlAnulacion.Visible := False;
   grpResoluciones.Enabled := TRue;
End;

Procedure TfResNomb2.FormActivate(Sender: TObject);
var
   xSQL : string;
Begin
   xSQL := ' select CORRELATIVO '
          +' from '+DM1.sResolucion
          +' where ASOID='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString)
          +'   and CORRELATIVO is null ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>0 then
   begin
      xSQL := ' update '+DM1.sResolucion
             +' set CORRELATIVO=(case when ROWNUM<10 '
             +'                       then ''0''||trim(cast(ROWNUM as varchar2(2))) '
             +'                       when ROWNUM>=10 '
             +'                       then trim(cast(ROWNUM as varchar2(2))) '
             +'                  end) '
             +' where ASOID='+quotedstr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      If DM1.sAPO201 = 'APO201' Then
      Begin
         // se define estructura de archivo ASO_RESOLUCIONES para abrir
         xSQL := 'select ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, ASORESCESE, '
            + '       ASOFRESCESE, RESVIG, CORRELATIVO, USUARIO, FREG, HREG, LIQUIDADO, NUMLIQ, FECLIQ, '
            + '       REINGRESO, ANULADO, OBSANU, USUANU, FECANU, NUMEXPLIQ, FECEXPLIQ '
      End
      Else
      Begin
         // se define estructura de archivo ASO_RESOLUCIONES_NUE para abrir
         xSQL := 'select SOLICITUD, ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, ASORESCESE, '
            + '       ASOFRESCESE, RESVIG, CORRELATIVO, USUARIO, FREG, HREG, LIQUIDADO, NUMLIQ, FECLIQ, '
            + '       REINGRESO, ANULADO, OBSANU, USUANU, FECANU, NUMEXPLIQ, FECEXPLIQ '
      End;

      xSQL := xSQL + ' from ' + DM1.sResolucion
         + ' WHERE ' + DM1.sReso_where
         + ' ASOID=' + QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)
         + ' ORDER BY CORRELATIVO ';

      DM1.cdsGradoA.Close;
      DM1.cdsGradoA.DataRequest(xSQL);
      DM1.cdsGradoA.Open;
      DM1.cdsGradoA.Last;
   end;
   DM1.cdsQry.Close;


   If (DM1.sAPO201 = 'ASO_NUE_CLI') And (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO') Then
   Begin
      fResNomb2.Caption := 'Contrato';

      dbgResoluciones.Selected.Clear;
      dbgResoluciones.Selected.Add('CORRELATIVO'#9'3'#9'Corr.'#9#9);
      dbgResoluciones.Selected.Add('ASORESNOM'#9'10'#9'Número~Contrato'#9#9);
      dbgResoluciones.Selected.Add('ASOFRESNOM'#9'10'#9'Fecha~Inicio'#9#9);
      dbgResoluciones.Selected.Add('ASOFRESCESE'#9'10'#9'Fecha~de Fin'#9#9);
      dbgResoluciones.Selected.Add('RESFVIG'#9'7'#9'Vigente'#9#9);
      dbgResoluciones.Selected.Add('USUARIO'#9'12'#9'Actualizado~Por'#9#9);
      dbgResoluciones.Selected.Add('HREG'#9'22'#9'Fecha/Hora'#9#9);
      dbgResoluciones.ApplySelected;

      grpResoluciones.Caption := 'Contrato';
      gbMantRes.Caption := 'Contrato';
      lblResNom.Caption := 'Nro. de Contrato';
      lblFecRes.Caption := 'Fec.Inicio Contrato';
      lblFecCes.Caption := 'Fec.Fin Contrato';
      lblResCese.Visible := False;
      dbeNroResCes.Visible := False;
      Label5.Visible := False;
      chkReingreso.Visible := False;
      Label6.Visible := False;
      chkVigente.Visible := False;
   End;
   dbgResoluciones.DataSource := DM1.dsGradoA;
// - Modificaciones por Fallecimiento del asociado
   if (DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S') or
        (DM1.xCnd = 'AUT') then
   begin
      dbgResolucionesIButton.Visible := false;
      bitAnula.Enabled := false;
   end;
// Fin: HPP_201003_ASO

// Inicio: HPP_201110_ASO
  //si el asociado ya tiene alguna resolución Vigente no se permite agregar un nuevo registro
  xSQL := ' SELECT CORRELATIVO'
    + ' FROM ' + DM1.sResolucion
    + ' WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  if DM1.cdsQry.RecordCount > 0 then
  begin
    dbgResolucionesIButton.Visible := false;
    bitAnula.Enabled := false;
  end;
  DM1.cdsQry.Close;
//Fin: HPP_201110_ASO
End;

Procedure TfResNomb2.BitSalirClick(Sender: TObject);
Begin
   close;
End;
// Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
procedure TfResNomb2.bitMostrarClick(Sender: TObject);
var
   xSQL : string;
begin
      Try
      fResNombHist:= TfResNombHist.create(self);
      xSQL := 'SELECT ASOID, NUMDOC, FECIDOC, FECFDOC, USUREG, FECREG FROM ASO_RESOLUCIONES_HIS WHERE ASOID=' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ' ORDER BY FECIDOC DESC';
      DM1.cdsResolucionHist.Close;
      DM1.cdsResolucionHist.DataRequest(xSQL);
      DM1.cdsResolucionHist.Open;
      If DM1.cdsResolucionHist.RecordCount >= 1 Then
      Begin

      fResNombHist.Width:=580;
      fResNombHist.grpResoluciones.Width:=560;
      fResNombHist.dbgResolucionesHist.Width:=541;

      If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO') Then
      Begin

         fResNombHist.dbgResolucionesHist.Selected.Clear;
         fResNombHist.dbgResolucionesHist.Selected.Add('NUMDOC'#9'5'#9'Numero Cont.'#9#9);
         fResNombHist.dbgResolucionesHist.Selected.Add('FECIDOC'#9'10'#9'Fecha Ini. Cont.'#9#9);
         fResNombHist.dbgResolucionesHist.Selected.Add('FECFDOC'#9'10'#9'Fecha Fin. Cont.'#9#9);
         fResNombHist.dbgResolucionesHist.Selected.Add('USUREG'#9'10'#9'Usuario~Modificación'#9#9);
         fResNombHist.dbgResolucionesHist.Selected.Add('FECREG'#9'20'#9'Fecha~Modificación'#9#9);
         fResNombHist.dbgResolucionesHist.ApplySelected;
      End
      Else
      Begin
         fResNombHist.dbgResolucionesHist.Selected.Clear;
         fResNombHist.dbgResolucionesHist.Selected.Add('NUMDOC'#9'5'#9'Numero Res.Nomb.'#9#9);
         fResNombHist.dbgResolucionesHist.Selected.Add('FECIDOC'#9'10'#9'Fecha Res.Nomb.'#9#9);
         fResNombHist.dbgResolucionesHist.Selected.Add('FECFDOC'#9'10'#9'Fecha Cese.'#9#9);
         fResNombHist.dbgResolucionesHist.Selected.Add('USUREG'#9'10'#9'Usuario~Modificación'#9#9);
         fResNombHist.dbgResolucionesHist.Selected.Add('FECREG'#9'20'#9'Fecha~Modificación'#9#9);
         fResNombHist.dbgResolucionesHist.ApplySelected;
      End;
         fResNombHist.Showmodal;
      End
      Else
      Begin
         MessageDlg('No existe un Historial de Cambios relacionado al Asociado', mtConfirmation, [mbOk], 0);
      End;

      finally
      DM1.cdsResolucionHist.Close;
      fResNombHist.Free;
      end;
end;
// Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
End.

