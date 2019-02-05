// HPP_201009_ASO, HPC_201009_ASO
// se copia opción de Consulta de Cuenta Individual del módulo de Previsión
Unit PRE273;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB, DBClient,
   ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
   ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppParameter, ppStrtch,
   ppSubRpt, ppDBBDE, dateutils;

Type
   Tfmstcueind = Class(TForm)
      dbgcueind: TwwDBGrid;
      btnimprime: TBitBtn;
      btnSalir: TBitBtn;
      pprcueindres: TppReport;
      ppParameterList1: TppParameterList;
      ppdbRepLiqxFallec: TppDBPipeline;
      ppHeaderBand4: TppHeaderBand;
      ppLine18: TppLine;
      ppSystemVariable10: TppSystemVariable;
      ppLabel70: TppLabel;
      ppLabel73: TppLabel;
      ppLabel77: TppLabel;
      ppLabel80: TppLabel;
      ppSystemVariable11: TppSystemVariable;
      ppLabel85: TppLabel;
      ppLabel89: TppLabel;
      ppLabel96: TppLabel;
      ppLabel102: TppLabel;
      ppLabel103: TppLabel;
      pplasocodmod: TppLabel;
      pplasoapenomdni: TppLabel;
      ppLabel117: TppLabel;
      ppLabel118: TppLabel;
      pplusenom: TppLabel;
      ppLabel122: TppLabel;
      ppLabel123: TppLabel;
      pplupagonom: TppLabel;
      ppLabel125: TppLabel;
      ppLabel126: TppLabel;
      pplupronom: TppLabel;
      ppLabel128: TppLabel;
      ppLabel129: TppLabel;
      pplregpendes: TppLabel;
      ppLabel131: TppLabel;
      ppLabel132: TppLabel;
      ppLabel133: TppLabel;
      ppLabel134: TppLabel;
      pplnumresnom: TppLabel;
      pplfecresnom: TppLabel;
      pplnumresces: TppLabel;
      pplfecresces: TppLabel;
      ppLine19: TppLine;
      ppLabel139: TppLabel;
      ppLabel140: TppLabel;
      pplanoapo: TppLabel;
      ppLabel142: TppLabel;
      ppLabel143: TppLabel;
      pplmonapo: TppLabel;
      ppLine20: TppLine;
      ppLabel145: TppLabel;
      ppLine21: TppLine;
      ppLabel158: TppLabel;
      ppLabel159: TppLabel;
      ppSystemVariable12: TppSystemVariable;
      ppDetailBand8: TppDetailBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLine1: TppLine;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      ppLine2: TppLine;
      ppLabel18: TppLabel;
      ppLine3: TppLine;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLine4: TppLine;
      ppDBText1: TppDBText;
      ppBDEPipeline1: TppBDEPipeline;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppLine5: TppLine;
      ppLabel27: TppLabel;
      Procedure FormActivate(Sender: TObject);
      Procedure btnSalirClick(Sender: TObject);
      Procedure btnimprimeClick(Sender: TObject);
   Private
    { Private declarations }
   Public
      xanomescese, xSql: String;
    { Public declarations }
   End;

Var
   fmstcueind: Tfmstcueind;

Implementation

Uses ASODM;
{$R *.dfm}

Procedure Tfmstcueind.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin
   DM1.cdsCueInd.EmptyDataSet;
   DM1.asofrescese := DateToStr(DM1.FechaSys);
   DM1.asofresnom := DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString;
   xSql := 'DELETE T_CTAIND1';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   xSql := 'BEGIN P_CUENTA_INDIVIDUAL(' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString)
   + ',' + QuotedStr(DM1.asofresnom) + ',' + QuotedStr(DM1.asofrescese) + ', '''', ''N''); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   xSql := 'SELECT * FROM T_CTAIND1 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ' ORDER BY ANO,MES';
   DM1.cdsCuentas.Close;
   DM1.cdsCuentas.DataRequest(xSql);
   DM1.cdsCuentas.Open;
   TNumericField(DM1.cdsCueInd.FieldByName('CAPACU')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCueInd.FieldByName('INTERES')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCueInd.FieldByName('BONUS')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCueInd.FieldByName('APORTE')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCueInd.FieldByName('DEVOLUC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCueInd.FieldByName('TOTACU')).DisplayFormat := '###,###,##0.00';
   DM1.cdsCuentas.First;
   While Not DM1.cdsCuentas.Eof Do
   Begin
      DM1.cdsCueInd.Append;
      DM1.cdsCueInd.FieldByName('MES').AsString := DM1.NombreMes(DM1.cdsCuentas.FieldByName('MES').AsString);
      DM1.cdsCueInd.FieldByName('ANO').AsString := DM1.cdsCuentas.FieldByName('ANO').AsString;
      xSql := 'SELECT MAX(USEABR) USEABR FROM APO301 WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString)
         + ' AND TRANSANO = ' + QuotedStr(DM1.cdsCuentas.FieldByName('ANO').AsString) + ' AND TRANSMES = ' + QuotedStr(DM1.cdsCuentas.FieldByName('MES').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      DM1.cdsCueInd.FieldByName('USENOM').AsString := DM1.cdsQry.FieldByName('USEABR').AsString;
      DM1.cdsCueInd.FieldByName('CAPACU').AsFloat := DM1.cdsCuentas.FieldByName('ACUMESANT').AsFloat;
      DM1.cdsCueInd.FieldByName('INTERES').AsFloat := DM1.cdsCuentas.FieldByName('INTCAPACU').AsFloat;
      DM1.cdsCueInd.FieldByName('BONUS').AsFloat := DM1.cdsCuentas.FieldByName('BONOS').AsFloat;
      DM1.cdsCueInd.FieldByName('APORTE').AsFloat := DM1.cdsCuentas.FieldByName('CAPITAL').AsFloat;
      DM1.cdsCueInd.FieldByName('DEVOLUC').AsFloat := DM1.cdsCuentas.FieldByName('TRANSMTODEV').AsFloat;
      DM1.cdsCueInd.FieldByName('TOTACU').AsFloat := DM1.cdsCuentas.FieldByName('ACUMULADO').AsFloat;
      DM1.cdsCuentas.Next;
   End;
End;

Procedure Tfmstcueind.btnSalirClick(Sender: TObject);
Begin
   fmstcueind.Close;
End;

Procedure Tfmstcueind.btnimprimeClick(Sender: TObject);
Var
   Anoactual, ano_1, ano_2, anonombramiento, anoaportado: Integer;
   montoinicial_1, montofinal_1, apoacu_1, intacu_1, bonacu_1: Double;
Begin

   ppLabel96.Caption := 'ESTADO DE CUENTA INDIVIDUAL DE APORTES AL ' + DateToStr(DM1.FechaSys);
   Anoactual := StrToInt(Copy(datetostr(DM1.fechasys), 7, 4));
   ano_1 := Anoactual - 1;
   ano_2 := Anoactual - 2;
   ppLabel139.Caption := 'Años Aportados a ' + Trim(IntToStr(ano_2));

   anonombramiento := StrToInt(Copy(DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString, 7, 4));
   anoaportado := (Anoactual - 2) - anonombramiento;
   If anoaportado < 0 Then anoaportado := 0;

   pplanoapo.Caption := IntToStr(anoaportado) + ' AÑOS';

   xSql := 'SELECT ACUMULADO FROM T_CTAIND1 WHERE ANO = ' + IntToStr(ano_2) + ' AND MES = ''12''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   ppLabel142.Caption := 'Capital Acumulado a Dic. ' + Trim(IntToStr(ano_2));
   pplmonapo.Caption := FormatFloat('###,###.00', DM1.cdsQry.FieldByName('ACUMULADO').AsFloat);
   pplasocodmod.Caption := DM1.cdsAsociado.FieldByName('ASOCODMOD').AsString;
   pplasoapenomdni.Caption := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
   xSql := 'SELECT USENOM FROM APO101 WHERE USEID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('USEID').AsString)
      + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   pplusenom.Caption := Copy(DM1.cdsQry.FieldByName('USENOM').AsString, 1, 29);
   xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   pplupagonom.Caption := Copy(DM1.cdsQry.FieldByName('UPAGONOM').AsString, 1, 29);
   xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   pplupronom.Caption := Copy(DM1.cdsQry.FieldByName('UPRONOM').AsString, 1, 29);
   xSql := 'SELECT REGPENDES FROM APO105 WHERE REGPENID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('REGPENID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   pplregpendes.Caption := DM1.cdsQry.FieldByName('REGPENDES').AsString;
   pplnumresnom.Caption := DM1.cdsAsociado.FieldByName('ASORESNOM').AsString;
   pplfecresnom.Caption := DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString;
   ppLabel145.Caption := 'RESUMEN CUENTA INDIVIDUAL ' + IntToStr(ano_1);

   xSql := 'SELECT * FROM T_CTAIND1 WHERE ANO = ' + QuotedStr(IntToStr(ano_1)) + ' ORDER BY ANO, MES';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   DM1.cdsQry.First;
   montoinicial_1 := DM1.cdsQry.FieldByName('ACUMESANT').AsFloat;
   DM1.cdsQry.Last;
   montofinal_1 := DM1.cdsQry.FieldByName('ACUMULADO').AsFloat;

   xSql := 'SELECT SUM(NVL(CAPITAL,0)) CAPITAL, SUM(NVL(INTCAPACU,0)) INTCAPACU, SUM(NVL(BONOS,0)) BONOS  FROM T_CTAIND1 WHERE ANO = ' + QuotedStr(IntToStr(ano_1));
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   apoacu_1 := DM1.cdsQry.FieldByName('CAPITAL').AsFloat;
   intacu_1 := DM1.cdsQry.FieldByName('INTCAPACU').AsFloat;
   bonacu_1 := DM1.cdsQry.FieldByName('BONOS').AsFloat;
   ppLabel17.Caption := IntToStr(ano_1);
   ppLabel12.Caption := FormatFloat('###,###.00', montoinicial_1);
   ppLabel13.Caption := FormatFloat('###,###.00', apoacu_1);
   ppLabel14.Caption := FormatFloat('###,###.00', intacu_1);
   ppLabel15.Caption := FormatFloat('###,###.00', bonacu_1);
   ppLabel16.Caption := FormatFloat('###,###.00', montofinal_1);
   ppLabel18.Caption := 'DETALLE DE CUENTA INDIVIDUAL AÑO ' + IntToStr(Anoactual);
   xSql := 'SELECT ANO||''  ''||TO_CHAR(TO_DATE(''15''||''/''||MES||''/''||ANO), ''MONTH'') ANOMES,'
      + ' NVL(ACUMESANT,0) ACUMESANT,  NVL(CAPITAL,0) CAPITAL, NVL(INTCAPACU,0) INTCAPACU, NVL(BONOS,0) BONOS,'
      + ' NVL(ACUMULADO,0) ACUMULADO FROM T_CTAIND1 A WHERE ANO = ' + IntToStr(Anoactual)
      + ' ORDER BY MES';
   DM1.cdsQry22.Close;
   DM1.cdsQry22.DataRequest(xSql);
   DM1.cdsQry22.Open;
   DM1.cdsQry22.Last;
   ppLabel27.Caption := 'CAPITAL ACUMULADO A LA EMISION DE ESTE REPORTE S/.   ' + FormatFloat('###,###.00', DM1.cdsQry22.FieldByName('ACUMULADO').AsFloat);
   DM1.cdsQry22.First;
   pprcueindres.Print;
End;

End.

