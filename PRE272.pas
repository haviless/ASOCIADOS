// Inicio Uso Estándares : 01/08/2011
// Unidad                : PRE272
// Formulario            : Fprocueind
// Fecha de Creación     : 03/12/2014
// Autor                 : Area de desarrollo de sistemas.
// Objetivo              : Cuenta Individual
//
// Actualizaciones       :
// HPP_201009_ASO, HPC_201009_ASO
// se copia opción de Consulta de Cuenta Individual del módulo de Previsión
// HPC_201301_ASO : Se corrige acceso a cuenta individual de docentes sin aportes
// SPP_201303_ASO : El pase a producción se solicita a partir del HPC_201301_ASO
// HPC_201509_ASO : Visualización e Impresión de Cuenta Individual para Asociados tipo CE.
// HPC_201610_ASO : Tomar como fecha de corte del cálculo de la Cuenta Individual la Fecha de Resolución de Cese del maestro de asociados si no tiene usará la Fecha actual
// HPC_201707_ASO : Se añade la unidad PRE295

Unit PRE272;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
   StdCtrls, Buttons, ExtCtrls, Mask, ppDB, ppDBPipe, ppDBBDE, ppParameter,
   ppCtrls, ppBands, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass,
   ppCache, ppComm, ppRelatv, ppProd;

Type
   TFprocueind = Class(TForm)
      dbgasociado: TwwDBGrid;
      GroupBox1: TGroupBox;
      rgbusca: TRadioGroup;
      mebusca: TMaskEdit;
      btnBuscar: TBitBtn;
      btncerrar: TBitBtn;
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnBuscarClick(Sender: TObject);
      Procedure btncerrarClick(Sender: TObject);
      Procedure rgbuscaClick(Sender: TObject);
      Procedure dbgasociadoDblClick(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
   Private
    { Private declarations }
   Public
      xWhere: String;
    { Public declarations }
   End;

Var
   Fprocueind: TFprocueind;

Implementation
// Inicio: HPC_201707_ASO
// Se añade la unidad PRE295
// Uses ASODM, PRE273, PRE237;
Uses ASODM, PRE273, PRE237, PRE295;
// Fin: HPC_201707_ASO

{$R *.dfm}

Procedure TFprocueind.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin
   dbgasociado.Selected.Clear;
   dbgasociado.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9);
   dbgasociado.Selected.Add('ASOTIPDES'#9'12'#9'Tipo de~asociado'#9);
   dbgasociado.Selected.Add('ASODNI'#9'10'#9'DNI del~asociado'#9);
   dbgasociado.Selected.Add('ASOAPENOMDNI'#9'40'#9'Apellidos y nombre(s)'#9);
   dbgasociado.Selected.Add('USENOM'#9'25'#9'UGEL del asociado'#9);
   dbgasociado.Selected.Add('ASOFRESNOM'#9'10'#9'Fecha de~nombramiento'#9);
   dbgasociado.ApplySelected;
   rgbusca.ItemIndex := 0;
   mebusca.Width := 353;
   mebusca.MaxLength := 42;
   mebusca.SetFocus;
   btnBuscar.Left := 520;

   xSql := 'SELECT A.*, C.ASOTIPDES, C.ASOTIPABR, B.USENOM'
      + ' FROM APO201 A, APO101 B, APO107 C WHERE A.USEID = B.USEID AND A.UPAGOID = B.UPAGOID AND A.UPROID = B.UPROID'
      + ' AND A.ASOTIPID = C.ASOTIPID AND A.ASOID = ''''';

   DM1.cdsAsociado.Close;
   DM1.cdsAsociado.DataRequest(xSql);
   DM1.cdsAsociado.Open;

End;

Procedure TFprocueind.FormKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
End;

Procedure TFprocueind.btnBuscarClick(Sender: TObject);
Var
   xSql, cadena: String;
Begin
   If rgbusca.ItemIndex = 0 Then cadena := 'Ingrese los apellidos y nombre(s) del asociado';
   If rgbusca.ItemIndex = 1 Then cadena := 'Ingrese el código modular del asociado';
   If rgbusca.ItemIndex = 2 Then cadena := 'Ingrese el DNI del asociado';
   If Trim(mebusca.Text) = '' Then
   Begin
      MessageDlg(cadena, mtInformation, [mbOk], 0);
      mebusca.SetFocus;
      Exit;
   End;
   If rgbusca.ItemIndex = 0 Then xWhere := ' A.ASOAPENOMDNI LIKE ' + QuotedStr(Trim(mebusca.Text) + '%');
   If rgbusca.ItemIndex = 1 Then
   Begin
      mebusca.Text := DM1.StrZero(Trim(mebusca.Text), 10);
      xWhere := ' A.ASOCODMOD = ' + QuotedStr(Trim(mebusca.Text));
   End;
   If rgbusca.ItemIndex = 2 Then
   Begin
      mebusca.Text := DM1.StrZero(Trim(mebusca.Text), 8);
      xWhere := ' A.ASODNI = ' + QuotedStr(Trim(mebusca.Text));
   End;
   xSql := 'SELECT A.*, C.ASOTIPDES, C.ASOTIPABR, B.USENOM FROM APO201 A, APO101 B, APO107 C'
      + ' WHERE ' + xWhere + ' AND A.USEID = B.USEID'
      + ' AND A.UPAGOID = B.UPAGOID AND A.UPROID = B.UPROID AND A.ASOTIPID = C.ASOTIPID';
   DM1.cdsAsociado.Close;
   DM1.cdsAsociado.DataRequest(xSql);
   DM1.cdsAsociado.Open;
   If DM1.cdsAsociado.RecordCount = 0 Then
   Begin
      MessageDlg('Cadena buscada no existe', mtError, [mbOk], 0);
      mebusca.SetFocus;
      Exit;
   End;
End;

Procedure TFprocueind.btncerrarClick(Sender: TObject);
Begin
   Fprocueind.Close;
End;

Procedure TFprocueind.rgbuscaClick(Sender: TObject);
Begin
   If rgbusca.ItemIndex = 0 Then
   Begin
      mebusca.Width := 353;
      mebusca.MaxLength := 42;
      mebusca.SetFocus;
      btnBuscar.Left := 520;
      mebusca.Text := '';
   End;
   If rgbusca.ItemIndex = 1 Then
   Begin
      mebusca.Width := 89;
      mebusca.MaxLength := 11;
      mebusca.SetFocus;
      btnBuscar.Left := 256;
      mebusca.Text := '';
   End;
   If rgbusca.ItemIndex = 2 Then
   Begin
      mebusca.Width := 78;
      mebusca.MaxLength := 10;
      mebusca.SetFocus;
      btnBuscar.Left := 247;
      mebusca.Text := '';
   End;
End;

Procedure TFprocueind.dbgasociadoDblClick(Sender: TObject);
Var
   xSql: String;
 //Inicio HPC_201509_ASO
   xTIPBEN : String;
 //Final HPC_201509_ASO
Begin
 //Inicio HPC_201509_ASO   
   XSQL:='Select SF_ASO_VAL_ESTADO_BENEFICIO('''+Trim(DM1.cdsAsociado.FieldByName('ASOID').AsString)+''') TIPBEN From dual ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(XSQL);
   DM1.cdsQry1.Open;
   xTIPBEN := DM1.cdsQry1.FieldByName('TIPBEN').AsString;
 //Final HPC_201509_ASO

   xSql := 'SELECT TO_CHAR(SYSDATE, ''YYYYMM'') ANOMESACT FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

   //Inicio HPC_201610_ASO
   //Tomar como fecha de corte del cálculo de la Cuenta Individual la Fecha de Resolución de Cese del maestro de asociados si no tiene usará la Fecha actual
   //DM1.xanomesact := DM1.cdsQry.FieldByName('ANOMESACT').AsString;
   If   length(TRIM(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString))=0 Then
        DM1.xanomesact := DM1.cdsQry.FieldByName('ANOMESACT').AsString
   Else DM1.xanomesact := copy(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString,7,4)+
                          copy(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString,4,2);
   //Final HPC_201610_ASO


   //Inicio HPC_201509_ASO
   //If DM1.cdsAsociado.FieldByName('ASOTIPID').AsString <> 'DO' Then
    If (DM1.cdsAsociado.FieldByName('ASOTIPID').AsString <> 'DO') and
       (DM1.cdsAsociado.FieldByName('ASOTIPID').AsString <> 'CE') Then
   Begin
      MessageDlg('No es un Asociado Activo', mtInformation, [mbOk], 0);
      Exit;
   End;

   If DM1.cdsAsociado.FieldByName('ASOTIPID').AsString = 'CE' Then
   //Final HPC_201509_ASO
   Begin
   //Inicio HPC_201509_ASO
     If (Trim(xTIPBEN)<>'De Oficio')  and
        (Trim(xTIPBEN)<>'En Tramite') Then
     Begin
   //Final HPC_201509_ASO
      MessageDlg('No es un Asociado Activo', mtInformation, [mbOk], 0);
      Exit;
   //Inicio HPC_201509_ASO
     End;
     If Length(Trim(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString))>0  Then
        DM1.xanomesact :=  FormatDateTime('YYYYMM',DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsDateTime);
   //Final HPC_201509_ASO
   End;

   If DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString = '' Then
   Begin
      MessageDlg('Asociado no cuenta con resolución de nombramiento', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.asoresnom := DM1.cdsAsociado.FieldByName('ASORESNOM').AsString;
   DM1.asorescese := DM1.cdsAsociado.FieldByName('ASORESCESE').AsString;
   DM1.asofresnom := DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString;
   DM1.tipben := '01';
   xSql := 'SELECT MAX(APOSEC) APOSEC FROM APO301 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   // Inicio: SPP_201303_ASO
   if DM1.cdsQry.FieldByName('APOSEC').AsString = '' then
   begin
     MessageDlg('El docente no tiene aportes', mtInformation, [mbOk], 0);
     Exit;
   end;
   // Fin: SPP_201303_ASO

   //Inicio HPC_201610_ASO
   //Tomar como fecha de corte del cálculo de la Cuenta Individual la Fecha de Resolución de Cese del maestro de asociados si no tiene usará la Fecha actual
   //DM1.anoultapo := Copy(DM1.cdsQry.FieldByName('APOSEC').AsString, 1, 4);
   //DM1.mesultapo := Copy(DM1.cdsQry.FieldByName('APOSEC').AsString, 5, 2);
   //DM1.xanomesultapo := DM1.cdsQry.FieldByName('APOSEC').AsString;
   //DM1.xanomestop := inttostr(StrToInt(DM1.anoultapo) + 2) + DM1.mesultapo;
   If length(TRIM(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString))=0 Then
   begin
     DM1.anoultapo     := Copy(DM1.cdsQry.FieldByName('APOSEC').AsString, 1, 4);
     DM1.mesultapo     := Copy(DM1.cdsQry.FieldByName('APOSEC').AsString, 5, 2);
     DM1.xanomesultapo := DM1.cdsQry.FieldByName('APOSEC').AsString;
     DM1.xanomestop    := inttostr(StrToInt(DM1.anoultapo) + 2) + DM1.mesultapo;
   end
   Else
   begin
     DM1.anoultapo     := copy(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString,7,4);
     DM1.mesultapo     := copy(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString,4,2);
     DM1.xanomesultapo := copy(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString,7,4)+
                          copy(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString,4,2);
     DM1.xanomestop    := copy(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString,7,4)+
                          copy(DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString,4,2);
   end;
   //Final HPC_201610_ASO


   If DM1.xanomestop > DM1.xanomesact Then
      DM1.asofrescese := '28/' + Copy(DM1.xanomesact, 5, 2) + '/' + Copy(DM1.xanomesact, 1, 4)
   Else
      DM1.asofrescese := '28/' + Copy(DM1.xanomestop, 5, 2) + '/' + Copy(DM1.xanomestop, 1, 4);

   If DM1.asofrescese = '' Then
   Begin
      MessageDlg('Ingrese fecha de resolución de cese para esa opción', mtInformation, [mbOk], 0);
      Exit;
   End;
   If Copy(DM1.asofrescese, 7, 4) + Copy(DM1.asofrescese, 4, 2) < '199912' Then
   Begin
      If DM1.tipben = '' Then
      Begin
         MessageDlg('Ingrese el tipo de beneficio para procesar esta opción', mtInformation, [mbOk], 0);
         Exit;
      End;
   End;
   If (DM1.tipben = '03') And (Copy(DM1.asofrescese, 7, 4) < '1997') And (DM1.cdsAsociado.FieldByName('ASOFECNAC').AsString = '') Then
   Begin
      MessageDlg('Ingrese la fecha de nacimiento del asociado para procesar esta opción', mtInformation, [mbOk], 0);
      Exit;
   End;
   DM1.xpvslbennr := '';
   // Inicio: HPC_201707_ASO
   // Se cambia de formulario (nuevo Fnuerepcueind)
   // Try
   //    fmstapo := Tfmstapo.create(Self);
   //    fmstapo.ShowModal;
   // Finally
   //    fmstapo.Free;
   // End;

   Try
      Fnuerepcueind := TFnuerepcueind.create(Self);
      Fnuerepcueind.ShowModal;
   Finally
      Fnuerepcueind.Free;
   End;
   // Fin: HPC_201707_ASO

End;

Procedure TFprocueind.FormCreate(Sender: TObject);
Begin
   DM1.cdsCueInd.open();
End;

Procedure TFprocueind.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
// El client cdsCueind no debe ser cerrado de abre al inicio de la aplicación.
// y solo de limpia si se desea utilizarlo otra vez.
// el client cdsCueInd es un client temporal que siempre esta abierto.
// COLOCAR FECHA DE ULTIMO APORTE
//  DM1.cdsCueInd.Close;
//  DM1.cdsCueInd.Filter:='';
//  DM1.cdsCueInd.IndexFieldNames:='';
End;

End.

