// Unidad                    : ASO155.pas
// Formulario                : FestONP
// Fecha de Creación         : 2013
// Autor                     : Equipo de Desarrollo de Sistemas DM
// Objetivo                  : Estadisticas de la generación y envío de datos ONP

// Actualizaciones:
// HPC_201312_ASO            : 12/11/2013 Estadisticas de la generación y envío de datos ONP
// SPP_201313_ASO            : Se realiza el pase a producción a partir del HPC_201312_ASO
// HPC_201701_ASO            : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

Unit ASO155;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, wwdbdatetimepicker, Grids,
   Wwdbigrd, Wwdbgrid, db, DBGrids, ppCtrls, ppPrnabl, ppClass, ppBands,
   ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
   Mask, wwdblook, Wwdbdlg;

Type
   TFestONP = Class(TForm)
      dbgprevio: TwwDBGrid;
      btncerrar: TBitBtn;
      btnaExcel: TBitBtn;
      btnimprimir: TBitBtn;
      ppBDEPipeline1: TppBDEPipeline;
      pprdep: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppShape20: TppShape;
      ppLabel23: TppLabel;
      ppShape25: TppShape;
      ppLabel33: TppLabel;
      ppShape26: TppShape;
      ppLabel34: TppLabel;
      ppShape27: TppShape;
      ppLabel35: TppLabel;
      ppShape28: TppShape;
      ppShape29: TppShape;
      ppLabel36: TppLabel;
      ppShape30: TppShape;
      ppLabel37: TppLabel;
      ppLabel40: TppLabel;
      ppShape34: TppShape;
      ppLabel42: TppLabel;
      ppShape35: TppShape;
      ppLabel43: TppLabel;
      ppShape38: TppShape;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppltitulodep: TppLabel;
      ppLabel50: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText20: TppDBText;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppDBText31: TppDBText;
      ppDBText32: TppDBText;
      ppDBText34: TppDBText;
      ppDBText36: TppDBText;
      ppSummaryBand2: TppSummaryBand;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppDBCalc14: TppDBCalc;
      ppLabel57: TppLabel;
      ppDBCalc17: TppDBCalc;
      ppDBCalc19: TppDBCalc;
      pplimpresopordep: TppLabel;
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
    ppDBCalc12: TppDBCalc;
    ppltotCobertura: TppLabel;
    pplCodPension: TppLabel;
    pplCodLeyPen: TppLabel;
    ppLabel1: TppLabel;
    pplnumero: TppLabel;
    // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
	Label6: TLabel;
    lblActCodPrestacion: TLabel;
    lblNoActCodPrestacion: TLabel;
    ppShape1: TppShape;
    ppLabel2: TppLabel;
    ppShape2: TppShape;
    ppLabel3: TppLabel;
    ppShape3: TppShape;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBCalc1: TppDBCalc;
    pplCodPre: TppLabel;
	// Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btncerrarClick(Sender: TObject);
      Procedure btnaExcelClick(Sender: TObject);
      Procedure btnimprimirClick(Sender: TObject);
      procedure FormClose(Sender: TObject; var Action: TCloseAction);

   Private
      { Private declarations }
      Procedure estadisticaONP;
   Public
      xasotipdes: String;
      { Public declarations }
   End;

Var
   FestONP: TFestONP;

Implementation

Uses ASODM;

{$R *.dfm}



Procedure TFestONP.FormActivate(Sender: TObject);
Var
   xsSql: String;
Begin

   lblNumero.Caption := DM1.cdsCreditos.FieldByName('NUMERO').AsString;
   estadisticaONP;

End;

Procedure TFestONP.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

Procedure TFestONP.btncerrarClick(Sender: TObject);
Begin
   FestONP.Close;
End;

Procedure TFestONP.btnaExcelClick(Sender: TObject);
Begin
   DM1.ExportaGridExcel(dbgprevio, 'Est_ONP');
End;

Procedure TFestONP.btnimprimirClick(Sender: TObject);
Begin
   If (DM1.cdsReporte.Active = False) Or (DM1.cdsReporte.RecordCount = 0) Then
   Begin
      MessageDlg('No ha encontrado información para imprimir', mtError, [mbOk], 0);
      Exit;
   End;

   ppltitulodep.Caption := 'ESTADISTICA DE ACTUALIZACION ONP - PERIODO: ' + DM1.cdsCreditos.FieldByName('PERIODO').AsString;;
   pplnumero.Caption := DM1.cdsCreditos.FieldByName('NUMERO').AsString;;
   pplimpresopordep.Caption := 'Impreso por   : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
   ppltotCobertura.Caption :=  dbgprevio.ColumnByName('COBERTURA').FooterValue;
   pplCodPension.Caption :=  dbgprevio.ColumnByName('PORC_ACTCODPENSION').FooterValue;
   pplCodLeyPen.Caption :=  dbgprevio.ColumnByName('PORC_ACTCODLEYPEN').FooterValue;
   // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   pplCodPre.Caption :=  dbgprevio.ColumnByName('PORC_ACTCODPRE').FooterValue;
   // Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   pprdep.Print;
End;

procedure TFestONP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';
end;

Procedure TFestONP.estadisticaONP;
Var
   xsSql: String;
   // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   xnCantEnv, xnCantRec, xnCantActCodPension, xnCantActCodLeyPen,xnCantActCodPrestacion: Integer;
   // Fin HPC_201701_ASO        : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
Begin

   xsSql := 'SELECT '
        +'      COUNT(*) TOTAL, '
        +'      SUM(CASE WHEN FLAGACTCODPENSION = ''S'' THEN 1 ELSE 0 END) ACTCODPENSION, '
        +'      SUM(CASE WHEN FLAGACTCODPENSION = ''N'' THEN 1 ELSE 0 END) NOACTCODPENSION, '
        +'      SUM(CASE WHEN FLAGACTCODLEYPEN = ''S'' THEN 1 ELSE 0 END) ACTCODLEYPEN, '
        +'      SUM(CASE WHEN FLAGACTCODLEYPEN = ''N'' THEN 1 ELSE 0 END) NOACTCODLEYPEN, '
        // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        +'      SUM(CASE WHEN FLAGACTCODPRE = ''S'' THEN 1 ELSE 0 END) ACTCODPRE, '
        +'      SUM(CASE WHEN FLAGACTCODPRE = ''N'' THEN 1 ELSE 0 END) NOACTCODPRE, '
        // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
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
   // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   lblActCodPrestacion.Caption := DM1.cdsQry20.FieldByName('ACTCODPRE').AsString;
   lblNoActCodPrestacion.Caption := DM1.cdsQry20.FieldByName('NOACTCODPRE').AsString;
   // Fin HPC_201701_ASO        : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

   xnCantEnv := DM1.cdsQry20.FieldByName('ENVIADOS').AsInteger;
   xnCantRec := DM1.cdsQry20.FieldByName('CARGADOS').AsInteger;
   xnCantActCodPension := DM1.cdsQry20.FieldByName('ACTCODPENSION').AsInteger;
   xnCantActCodLeyPen := DM1.cdsQry20.FieldByName('ACTCODLEYPEN').AsInteger;
   // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   xnCantActCodPrestacion := DM1.cdsQry20.FieldByName('ACTCODPRE').AsInteger;
   // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   xsSql := 'SELECT '
        +'       NUMERO, '
        +'       DPTDOM, '
        +'       ENVIADOS, '
        +'       RECEPCIONADOS, '
        +'       ROUND((CASE WHEN ENVIADOS > 0 THEN (ROUND((RECEPCIONADOS/ENVIADOS),5) * 100) ELSE 0 END), 2) COBERTURA, '
        +'       ACTCODPENSION, '
        +'       ROUND((CASE WHEN RECEPCIONADOS > 0 THEN (ROUND((ACTCODPENSION/RECEPCIONADOS),5) * 100) ELSE 0 END), 2) PORC_ACTCODPENSION, '
        +'       ACTCODLEYPEN, '
        +'       ROUND((CASE WHEN RECEPCIONADOS > 0 THEN (ROUND((ACTCODLEYPEN/RECEPCIONADOS),5) * 100) ELSE 0 END), 2) PORC_ACTCODLEYPEN '
        // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        +'       ,ACTCODPRE, '
        +'       ROUND((CASE WHEN RECEPCIONADOS > 0 THEN (ROUND((ACTCODPRE/RECEPCIONADOS),5) * 100) ELSE 0 END), 2) PORC_ACTCODPRE '
        // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        +' FROM '
        +' ( '
        +' SELECT '
        +'        NUMERO, '
        +'       NVL(C.DPTODES,''NO IDENTIFICADO'') DPTDOM, '
        +'       SUM(CASE WHEN FLAGENVIARONP = ''S'' THEN 1 ELSE 0 END) ENVIADOS, '
        +'       SUM(CASE WHEN NOT REC_ASODNI IS NULL THEN 1 ELSE 0 END) RECEPCIONADOS, '
        +'       SUM(CASE WHEN FLAGACTCODPENSION = ''S'' THEN 1 ELSE 0 END) ACTCODPENSION, '
        +'       SUM(CASE WHEN FLAGACTCODLEYPEN = ''S'' THEN 1 ELSE 0 END) ACTCODLEYPEN '
        // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        +'       ,SUM(CASE WHEN FLAGACTCODPRE = ''S'' THEN 1 ELSE 0 END) ACTCODPRE '
        // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

        +' FROM ASO_ONP_DES_DET A, APO201 B, APO158 C '
        +' WHERE A.NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
        +'       AND A.ASOID=B.ASOID(+) '
        +'       AND SUBSTR(B.ZIPID,1,2)=C.DPTOID(+) '
        +' GROUP BY NUMERO, NVL(C.DPTODES,''NO IDENTIFICADO'') '
        +' ) '
        +' ORDER BY NUMERO, DPTDOM ';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xsSql);
   DM1.cdsReporte.Open;

   dbgprevio.Refresh;

   dbgprevio.Selected.Clear;
   dbgprevio.Selected.Add('DPTDOM'#9'20'#9'Desc.~Departamento'#9#9);
   dbgprevio.Selected.Add('ENVIADOS'#9'12'#9'Cantidad~Enviados'#9#9);
   dbgprevio.Selected.Add('RECEPCIONADOS'#9'12'#9'Cantidad~Recepcionados'#9#9);
   dbgprevio.Selected.Add('COBERTURA'#9'12'#9'Porcentaje(%)~Cobertura'#9#9);
   dbgprevio.Selected.Add('ACTCODPENSION'#9'12'#9'CodPension~actualizados'#9#9);
   dbgprevio.Selected.Add('PORC_ACTCODPENSION'#9'12'#9'CodPension %~actualizados'#9#9);
   dbgprevio.Selected.Add('ACTCODLEYPEN'#9'12'#9'CodLeyPen~actualizados'#9#9);
   dbgprevio.Selected.Add('PORC_ACTCODLEYPEN'#9'12'#9'CodLeyPen %~actualizados'#9#9);
   // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   dbgprevio.Selected.Add('ACTCODPRE'#9'12'#9'CodPrestacion~actualizados'#9#9);
   dbgprevio.Selected.Add('PORC_ACTCODPRE'#9'12'#9'CodPrestacion %~actualizados'#9#9);
   // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   dbgprevio.ApplySelected;
   TNumericField(DM1.cdsReporte.FieldByName('ENVIADOS')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsReporte.FieldByName('RECEPCIONADOS')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsReporte.FieldByName('COBERTURA')).DisplayFormat := '###.00';
   TNumericField(DM1.cdsReporte.FieldByName('ACTCODPENSION')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsReporte.FieldByName('PORC_ACTCODPENSION')).DisplayFormat := '###.00';
   TNumericField(DM1.cdsReporte.FieldByName('ACTCODLEYPEN')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsReporte.FieldByName('PORC_ACTCODLEYPEN')).DisplayFormat := '###.00';
   // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   TNumericField(DM1.cdsReporte.FieldByName('ACTCODPRE')).DisplayFormat := '###,###';
   TNumericField(DM1.cdsReporte.FieldByName('PORC_ACTCODPRE')).DisplayFormat := '###.00';
   // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

   dbgprevio.ColumnByName('DPTDOM').FooterValue := 'Totales :';

   dbgprevio.ColumnByName('ENVIADOS').FooterValue := FormatFloat('##,###', xnCantEnv);
   dbgprevio.ColumnByName('RECEPCIONADOS').FooterValue := FormatFloat('##,###', xnCantRec);
   If xnCantEnv > 0 Then
      dbgprevio.ColumnByName('COBERTURA').FooterValue := FormatFloat('###.00', (xnCantRec/xnCantEnv)*100 )
   Else
      dbgprevio.ColumnByName('COBERTURA').FooterValue := FormatFloat('###.00', 0 );

   dbgprevio.ColumnByName('ACTCODPENSION').FooterValue := FormatFloat('##,###', xnCantActCodPension);
   If xnCantRec > 0 Then
      dbgprevio.ColumnByName('PORC_ACTCODPENSION').FooterValue := FormatFloat('###.00', (xnCantActCodPension/xnCantRec)*100 )
   Else
      dbgprevio.ColumnByName('PORC_ACTCODPENSION').FooterValue := FormatFloat('###.00', 0 );

   dbgprevio.ColumnByName('ACTCODLEYPEN').FooterValue := FormatFloat('##,###', xnCantActCodLeyPen);
   If xnCantRec > 0 Then
      dbgprevio.ColumnByName('PORC_ACTCODLEYPEN').FooterValue := FormatFloat('###.00', (xnCantActCodLeyPen/xnCantRec)*100 )
   Else
      dbgprevio.ColumnByName('PORC_ACTCODLEYPEN').FooterValue := FormatFloat('###.00', 0 );
   // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   dbgprevio.ColumnByName('ACTCODPRE').FooterValue := FormatFloat('##,###', xnCantActCodPrestacion);
   If xnCantRec > 0 Then
      dbgprevio.ColumnByName('PORC_ACTCODPRE').FooterValue := FormatFloat('###.00', (xnCantActCodPrestacion/xnCantRec)*100 )
   Else
      dbgprevio.ColumnByName('PORC_ACTCODPRE').FooterValue := FormatFloat('###.00', 0 );
   // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   Screen.Cursor := crDefault;
end;

End.


