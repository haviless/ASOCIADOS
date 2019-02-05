Unit ASO304;

// Inicio Uso Estándares : 01/08/2011
// Unidad                : ASO304
// Formulario            : FrmGeneraCtaIndividualPDF
// Fecha de Creación     : 03/12/2014
// Autor                 : Area de desarrollo de sistemas.
// Objetivo              : Cuenta Individual
//
// Actualizaciones       :
// SPP_201412_ASO        : Se realiza el pase a producción a partir del HPC_201414_ASO.
// HPC_201510_ASO        : Agregar en Consultas aplicaciones de CCI
// HPC_201610_ASO        : Tomar como fecha de corte del cálculo de la Cuenta Individual la Fecha de Resolución de Cese del maestro de asociados si no tiene usará la Fecha actual
//                       : Tomar como un descuento  al total de la Cuenta Individual del asociado, la suma de las aplicaciones  por CCI que no estén marcadas como liquidadas.

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB, DBClient,
   ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
   ppComm, ppRelatv, ppDB, ppDBPipe, ExtCtrls, ppParameter, ppStrtch,
   ppSubRpt, ppDBBDE, ppChrtDP, DbChart, ppChrt, Series, TeEngine,
   jpeg, ppMemo, TeeProcs, Chart, StrUtils, Printers,
   Dateutils, ppEndUsr, ppRichTx, DBGrids;
Type
   TFrmGeneraCtaIndividualPDF = Class(TForm)
      ppdbRepLiqxFallec: TppDBPipeline;
      Image1: TImage;
      Chart1: TChart;
      Series1: TPieSeries;
      ppBDEdetapo: TppBDEPipeline;
      pprresest: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppShape8: TppShape;
    ppShape7: TppShape;
    ppShape6: TppShape;
    ppShape5: TppShape;
    ppLabel236: TppLabel;
    ppLabel237: TppLabel;
    ppLabel238: TppLabel;
    ppLabel239: TppLabel;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    pplasoapenomdni_nc: TppLabel;
    pplasodir_nc: TppLabel;
    pplasodni_nc: TppLabel;
    ppldst_nc: TppLabel;
    pplprv_nc: TppLabel;
    ppldep_nc: TppLabel;
    ppLabel234: TppLabel;
    ppLabel235: TppLabel;
    pplasotelf1_nc: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppLabel252: TppLabel;
    ppLabel253: TppLabel;
    ppLabel254: TppLabel;
    ppLabel264: TppLabel;
    ppLabel266: TppLabel;
    pplasocodmod_nc: TppLabel;
    pplunipro_nc: TppLabel;
    ppLabel255: TppLabel;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppldstdeslab_nc: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    pplprvdeslab_nc: TppLabel;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppldepdeslab_nc: TppLabel;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppluniges_nc: TppLabel;
    pplunipag_nc: TppLabel;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    pplasodeslab_nc: TppLabel;
    pplasodirleb_nc: TppLabel;
    pplasofresnom_nc: TppLabel;
    ppLabel280: TppLabel;
    pplasoresnom_nc: TppLabel;
    ppLabel231: TppLabel;
    pplanoapo_nc: TppLabel;
    ppShape4: TppShape;
    ppLabel232: TppLabel;
    ppLabel233: TppLabel;
    ppLabel248: TppLabel;
    ppLabel258: TppLabel;
    ppLabel261: TppLabel;
    ppShape9: TppShape;
    ppShape11: TppShape;
    ppShape10: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppldesini: TppLabel;
    pplapoini: TppLabel;
    pplintini: TppLabel;
    pplbonini: TppLabel;
    pplsalini: TppLabel;
    ppLabel50: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText40: TppDBText;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape21: TppShape;
    pplanomes: TppLabel;
    ppSummaryBand7: TppSummaryBand;
    ppShape17: TppShape;
    ppShape20: TppShape;
    ppLabel163: TppLabel;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape22: TppShape;
    pplapofin: TppLabel;
    pplintfin: TppLabel;
    pplbonfin: TppLabel;
    pplsalfin: TppLabel;
    ppImage3: TppImage;
    pplsaldoal: TppLabel;
    ppParameterList2: TppParameterList;
    pplcpocenedu: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel1: TppLabel;
    pplcpoNIVEDU: TppLabel;
    pplblMsj1: TppLabel;
    ppLabel87: TppLabel;
    ppLabel167: TppLabel;
    pplMsgTotal: TppLabel;
    ppLabel169: TppLabel;
    ppDesigner1: TppDesigner;
    pplFechaImp: TppLabel;
    ppRichText1: TppRichText;
    ppShape1: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppldesini20061231: TppLabel;
    pplapoini20061231: TppLabel;
    pplintini20061231: TppLabel;
    pplbonini20061231: TppLabel;
    pplsalini20061231: TppLabel;
    pplultaporte: TppLabel;
    pplblAsoSinFirma: TppLabel;
// Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
    ppFooterBand1: TppFooterBand;
    ppdbCCI: TppBDEPipeline;
    ppdbCCIDet: TppBDEPipeline;
    ppdbCCIDetppField1: TppField;
    ppdbCCIDetppField2: TppField;
    ppdbCCIDetppField3: TppField;
    ppdbCCIDetppField4: TppField;
    ppdbCCIDetppField5: TppField;
    ppdbCCIDetppField6: TppField;
    ppSubReport2: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppDetailBand7: TppDetailBand;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppDBText42: TppDBText;
    ppLabel13: TppLabel;
    ppSummaryBand11: TppSummaryBand;
// Fin   HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Procedure pplanomesPrint(Sender: TObject);
   Private
      xSaldoInicio : string;
      xSaldoFin : string;

   Public
      xanomesnom, xanomesces, xSql, anoultapo, mesultapo: String;
      xaportes, xbonus, xinteres, xmonini: Double;
      Function generarData(): String;
      Procedure generarReporte(INro: integer);
   End;

Var
   fmstapo: TFrmGeneraCtaIndividualPDF;

Implementation

Uses ASODM, VCLCom;
{$R *.dfm}
(*****************************************************************************)
(*****************************************************************************)

Function TFrmGeneraCtaIndividualPDF.generarData(): String;
Var
   fechaNombramiento: String;
   xContinua: boolean;
   xContador, xcontador2: integer;
Begin
   Try
     DM1.cdsCueInd.EmptyDataSet;
  //Inicio HPC_201610_ASO
  //Se adiciona la Fecha de Cese
  //xSql := 'select asofresnom from APO201 where asoid=' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString);
     xSql := 'select asofresnom,asofrescese from APO201 where asoid=' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString);
  //Final HPC_201610_ASO
     DM1.cdsQry.Close;
     DM1.cdsQry.DataRequest(xSql);
     DM1.cdsQry.Open;
     fechaNombramiento := DM1.cdsQry.FieldByName('asofresnom').AsString;
  //Inicio HPC_201610_ASO
  //Tomar como fecha de corte del cálculo de la Cuenta Individual la Fecha de Resolución de Cese del maestro de asociados si no tiene usará la Fecha actual
   If Length(Trim(DM1.cdsQry.FieldByName('asofrescese').AsString))=0 Then
        Dm1.asofrescese := DateToStr(DM1.FechaSys)
   Else Dm1.asofrescese := DM1.cdsQry.FieldByName('asofrescese').AsString;
  //Final HPC_201610_ASO
     xSql := 'DELETE T_CTAIND1';
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
     // Se añade el parametro de reliquidación
  //Inicio HPC_201610_ASO
  //Tomar como fecha de corte del cálculo de la Cuenta Individual la Fecha de Resolución de Cese del maestro de asociados si no tiene usará la Fecha actual  
   //xSql := 'BEGIN P_CUENTA_INDIVIDUAL(' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ',''' + fechaNombramiento + ''',to_char(sysdate,''DD/MM/YYYY''),'''',''N''); END;';
     xSql := 'BEGIN P_CUENTA_INDIVIDUAL(' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + ',''' + fechaNombramiento + ''','''+Dm1.asofrescese+''','''',''N''); END;';
  //Final HPC_201610_ASO
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   Except
     showmessage('Error al Generar Cuenta Individual');
     Exit;
   End;

   xContinua := False;
   xContador := 0;
   While Not xContinua Do
   Begin
      xSql:='SELECT LUG_PRO,COD_USE,COD_MOD,NRO_VEZ,LIB_ELE,ACUMESANT,ACUMULADO,CAPITAL,INTCAPACU, '
           +  'BONOS,FEC_ING,FEC_CES,ANOSERF,ANOSER,FEC_PROC,FLG_PROC,TIP_CLI,ANO,MES,ASOID, '
           +  'TRI,COD_PAG,TRANSMTODEV,TRANSMTO FROM T_CTAIND1 '
           + 'WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString)
           + ' AND ANO||MES < to_char(sysdate,''YYYYMM'') '
           + ' ORDER BY ANO,MES';
      DM1.cdsCuentas.Close;
      DM1.cdsCuentas.DataRequest(xSql);
      DM1.cdsCuentas.Open;
      If DM1.cdsCuentas.RecordCount > 0 Then
         xContinua := True
      Else
      Begin
         xContador := xContador + 1;
         If xContador >= 5 Then
            xContinua := True
         Else
            For xcontador2 := 0 To 10000 Do
               ;
      End;
   End;

   If Not (DM1.cdsCuentas.RecordCount > 0) Then
   Begin
      Result := 'No existe información de cuenta individual';
      exit;
   End;

   DM1.cdsCuentas.First;
   xmonini := DM1.cdsCuentas.FieldByName('ACUMESANT').AsFloat;
   DM1.cdsCueInd.EmptyDataSet;

   TNumericField(DM1.cdsCueInd.FieldByName('CAPACU')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCueInd.FieldByName('INTERES')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCueInd.FieldByName('BONUS')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCueInd.FieldByName('APORTE')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCueInd.FieldByName('DEVOLUC')).DisplayFormat := '###,###,##0.00';
   TNumericField(DM1.cdsCueInd.FieldByName('TOTACU')).DisplayFormat := '###,###,##0.00';
   If DM1.cdsCuentas.Active = True Then
   Begin
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
   DM1.cdsCueInd.First;
   xaportes := 0;
   xbonus := 0;
   xinteres := 0;
   While Not DM1.cdsCueInd.Eof Do
   Begin
      xaportes := xaportes + DM1.cdsCueInd.FieldByName('APORTE').AsFloat;
      xbonus := xbonus + DM1.cdsCueInd.FieldByName('BONUS').AsFloat;
      xinteres := xinteres + DM1.cdsCueInd.FieldByName('INTERES').AsFloat;
      DM1.cdsCueInd.Next;
   End;
   DM1.cdsCueInd.First;

// Inicio HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI
   DM1.DetalleCCI(DM1.cdsAsociado.FieldByName('ASOID').AsString);
   DM1.ResumenCCI( DM1.cdsAsociado.FieldByName('ASOID').AsString );
   ppdbCCI.DataSource:=DM1.dsRepCCI;
// Fin HPC_201510_ASO     : Agregar en Consultas aplicaciones de CCI

End;

(******************************************************************************)

Procedure TFrmGeneraCtaIndividualPDF.generarReporte(INro: integer);
Var
   xfecini, xultano, xAnoMesIni: String;
   xtmp: Double;
   xAno, xMes, xMesIni, xAnoIni, i: Integer;
   xtotal_pie: Double;
   Chart: TDBChart;
   Series: TPieSeries;
   Image: TImage;
   Jpeg: TJpegImage;
   apo, int, bon: Double;
   // COLOCAR FECHA DE ULTIMO APORTE
   XULT_ANHOMES_APORT:string;

   ultimoAnhoSaldo:integer;
   ultimoMesSaldo:integer;
   ultimoDiaSaldo :Integer;
   cadAnho:string;
   cadMes:string;
   valAnho:string;
   valMes:string;
   autdesapo: boolean;

Begin
   if (DM1.cdsAsociado.FieldByName('AUTDESAPO').AsString = '')
      or (DM1.cdsAsociado.FieldByName('AUTDESAPO').AsString = 'N') then
      autdesapo := false
   else
      autdesapo := true;
   pplasoapenomdni_nc.Caption := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
   pplasodni_nc.Caption := DM1.cdsAsociado.FieldByName('ASODIR').AsString;
   pplasodir_nc.Caption := DM1.cdsAsociado.FieldByName('ASODNI').AsString;
   ppldep_nc.Caption := DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', Copy(DM1.cdsAsociado.FieldByName('ZIPID').AsString, 1, 2));
   pplprv_nc.Caption := DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', Copy(DM1.cdsAsociado.FieldByName('ZIPID').AsString, 1, 4));
   ppldst_nc.Caption := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', DM1.cdsAsociado.FieldByName('ZIPID').AsString);
   pplasotelf1_nc.Caption := DM1.cdsAsociado.FieldByName('ASOTELF1').AsString;
   pplasocodmod_nc.Caption := DM1.cdsAsociado.FieldByName('ASOCODMOD').AsString;

// COLOCAR NIVEL DEL CENTRO EDUCATIVO
   xSql := 'SELECT UPPER(NIVEDU_DES) NIVEDU_DES, B.CENEDUID FROM ASO_CEN_EDU B, NIV_CEN_EDU C WHERE B.NIVEDU_ID = C.NIVEDU_ID(+) AND B.CENEDUID = '+ QuotedStr(DM1.cdsAsociado.FieldByName('CENEDUID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   pplcpoNIVEDU.Caption := DM1.cdsQry.FieldByName('NIVEDU_DES').AsString;


   xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   pplunipro_nc.Caption := DM1.cdsQry.FieldByName('UPRONOM').AsString;
   xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   pplunipag_nc.Caption := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
   xSql := 'SELECT USENOM FROM APO101 WHERE UPROID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('UPAGOID').AsString) + ' AND USEID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('USEID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   ppluniges_nc.Caption := DM1.cdsQry.FieldByName('USENOM').AsString;
   pplasofresnom_nc.Caption := DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString;
   pplasoresnom_nc.Caption := DM1.cdsAsociado.FieldByName('ASORESNOM').AsString;

//                                     se cambia la forma de tomar el dato del colegio del asociado
//                                     primero busca en la tabla de Centros Educativos si tiene asignado
//                                     el CENEDUID en el Maestro APO201
//                                     sino, toma los datos del propio Maestro de Asociados
   xSQL := 'SELECT NOMCENEDU, DIREC, CENPO, DPTO.DPTODES DPTO, PROV.CIUDDES PROV, DIST.ZIPDES DIST '
      + '  FROM ASO_CEN_EDU CE, APO158 DPTO, APO123 PROV, APO122 DIST '
      + ' WHERE CENEDUID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('CENEDUID').AsString)
      + '   AND SUBSTR(CE.UBIGEO_DIR, 1, 2) = DPTO.DPTOID(+) '
      + '   AND SUBSTR(CE.UBIGEO_DIR, 1, 2) = PROV.DPTOID(+) '
      + '   AND SUBSTR(CE.UBIGEO_DIR, 1, 4) = PROV.CIUDID(+) '
      + '   AND SUBSTR(CE.UBIGEO_DIR, 1, 2) = DIST.DPTOID(+) '
      + '   AND SUBSTR(CE.UBIGEO_DIR, 1, 4) = DIST.CIUDID(+) '
      + '   AND CE.UBIGEO_DIR = DIST.ZIPID(+) ';

   DM1.cdsQry24.Close;
   DM1.cdsQry24.DataRequest(xSql);
   DM1.cdsQry24.Open;
   pplcpocenedu.Caption := DM1.cdsQry24.FieldByName('CENPO').AsString;
   If trim(DM1.cdsQry24.FieldByName('NOMCENEDU').AsString) <> '' Then
      pplasodeslab_nc.Caption := DM1.cdsQry24.FieldByName('NOMCENEDU').AsString
   Else
      pplasodeslab_nc.Caption := DM1.cdsAsociado.FieldByName('ASODESLAB').AsString;

   If trim(DM1.cdsQry24.FieldByName('DIREC').AsString) <> '' Then
      pplasodirleb_nc.Caption := DM1.cdsQry24.FieldByName('DIREC').AsString
   Else
      pplasodirleb_nc.Caption := DM1.cdsAsociado.FieldByName('ASODIRLAB').AsString;

   If trim(DM1.cdsQry24.FieldByName('DIST').AsString) <> '' Then
      ppldstdeslab_nc.Caption := DM1.cdsQry24.FieldByName('DIST').AsString
   Else
      ppldstdeslab_nc.Caption := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', DM1.cdsAsociado.FieldByName('ASODSTLABID').AsString);

   If trim(DM1.cdsQry24.FieldByName('PROV').AsString) <> '' Then
      pplprvdeslab_nc.Caption := DM1.cdsQry24.FieldByName('PROV').AsString
   Else
      pplprvdeslab_nc.Caption := DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', Copy(DM1.cdsAsociado.FieldByName('ASODSTLABID').AsString, 1, 4));

   If trim(DM1.cdsQry24.FieldByName('DPTO').AsString) <> '' Then
      ppldepdeslab_nc.Caption := DM1.cdsQry24.FieldByName('DPTO').AsString
   Else
      ppldepdeslab_nc.Caption := DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', Copy(DM1.cdsAsociado.FieldByName('ASODSTLABID').AsString, 1, 2));

   xSql := 'SELECT MAX(ANO||MES) vFechaFinal,MAX(ANOSERF) vANOSERF FROM T_CTAIND1'
      + ' WHERE ANO||MES < to_char(sysdate,''YYYYMM'') ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

   ultimoAnhoSaldo :=   StrToInt(Copy(DM1.cdsQry.FieldByName('vFechaFinal').AsString, 1, 4));
   ultimoMesSaldo :=   StrToInt(Copy(DM1.cdsQry.FieldByName('vFechaFinal').AsString, 5, 2));

   xAno := StrToInt(Copy(DM1.cdsQry.FieldByName('vFechaFinal').AsString, 1, 4));
   xMes := StrToInt(Copy(DM1.cdsQry.FieldByName('vFechaFinal').AsString, 5, 2));

   //Calcula el periodo inicial del cambio de secciones: sección acumulada inicial y sección detalle
   if autdesapo then
   begin //si firmó cadaps, se muestran los 6 últimos meses
     xMesIni := xMes - 6;
     xAnoIni := xAno;
     If xMesIni < 1 Then
     Begin
        xMesIni := xMesIni + 12;
        xAnoIni := xAno - 1;
     End;
     xAnoMesIni := DM1.StrZero(IntToStr(xAnoIni), 4) + DM1.StrZero(IntToStr(xMesIni), 2);
   end
   else
   begin //no firmó cadaps, se muestran los 6 últimos años
     xMesIni := 12;
     xAnoIni := xAno - 6;
     xAnoMesIni := DM1.StrZero(IntToStr(xAnoIni), 4) + DM1.StrZero(IntToStr(xMesIni), 2);
   end;

   //Calcula el saldo acumulado al 31/12/2006
   xSql := 'SELECT MIN(NVL(ACUMESANT,0)) INICIAL, SUM(NVL(CAPITAL,0)) APORTE, '
      + '          SUM(NVL(INTCAPACU,0)) INTERES, SUM(NVL(BONOS,0)) BONUS, MAX(NVL(ACUMULADO,0)) SALDO, '
      + '          max(anoserf) anoserf  FROM T_CTAIND1'
      + ' WHERE ANO||MES <= ' + QuotedStr(xAnoMesIni)
      + ' AND ANO||MES < ''200612'' '
      + ' ORDER BY ANO, MES';
   DM1.cdsQry20.Close;
   DM1.cdsQry20.DataRequest(xSql);
   DM1.cdsQry20.Open;

   ppldesini20061231.Caption := 'SALDO ACUMULADO AL: 31/12/2006';
   pplapoini20061231.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('INICIAL').AsFloat + DM1.cdsQry20.FieldByName('APORTE').AsFloat, ffNumber, 10, 2);
   pplintini20061231.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('INTERES').AsFloat, ffNumber, 10, 2);
   pplbonini20061231.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('BONUS').AsFloat, ffNumber, 10, 2);
   pplsalini20061231.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('SALDO').AsFloat, ffNumber, 10, 2);

   //si firmó cadaps se oculta la etiqueta "NO AUTORIZO DESCUENTO"
   if autdesapo then
   begin
     pplblAsoSinFirma.Visible := false;
   end
   else
   begin
     pplblAsoSinFirma.Visible := true;
   end;

   //Calcula el saldo acumulado hasta antes de los 6 periodos que se mostrarán en la cuenta individual
   xSql := 'SELECT MIN(NVL(ACUMESANT,0)) INICIAL, SUM(NVL(CAPITAL,0)) APORTE, '
      + '          SUM(NVL(INTCAPACU,0)) INTERES, SUM(NVL(BONOS,0)) BONUS, MAX(NVL(ACUMULADO,0)) SALDO, '
      + '          max(anoserf) anoserf  FROM T_CTAIND1'
      + ' WHERE ANO||MES <= ' + QuotedStr(xAnoMesIni)
      + ' AND ANO||MES < to_char(sysdate,''YYYYMM'') '
      + ' ORDER BY ANO, MES';
   DM1.cdsQry20.Close;
   DM1.cdsQry20.DataRequest(xSql);
   DM1.cdsQry20.Open;

   //Calcula los 6 periodos que se mostrarán en el detalle de la cuenta individual
   if autdesapo then
   begin
     xSql := 'SELECT ANO, MES, NVL(CAPITAL,0) APORTE, NVL(INTCAPACU,0) INTERES, NVL(BONOS,0) BONUS, NVL(ACUMULADO,0) SALDO FROM T_CTAIND1'
        + ' WHERE ANO||MES > ' + QuotedStr(xAnoMesIni)
        + ' AND ANO||MES < to_char(sysdate,''YYYYMM'') '
        + ' ORDER BY ANO, MES';
   end
   else
   begin
     xSql := 'SELECT ANO, MAX(MES) MES, SUM(NVL(CAPITAL,0)) APORTE, SUM(NVL(INTCAPACU,0)) INTERES, SUM(NVL(BONOS,0)) BONUS, MAX(NVL(ACUMULADO,0)) SALDO FROM T_CTAIND1'
        + ' WHERE ANO||MES > ' + QuotedStr(xAnoMesIni)
        + ' AND ANO||MES < to_char(sysdate,''YYYYMM'') '
        + ' GROUP BY ANO'
        + ' ORDER BY ANO, MES';
   end;
   DM1.cdsQry21.Close;
   DM1.cdsQry21.DataRequest(xSql);
   DM1.cdsQry21.Open;

   //si tiene saldo acumulado hasta el 2006 y
   //si tiene saldo acumulado positivo hasta antes de los 6 periodos a mostrar en el detalle
   //no se muestra el acumulado hasta el 2006
   if (DM1.cdsQry20.FieldByName('SALDO').AsFloat > 0)
     and (DM1.cdsQry21.FieldByName('SALDO').AsFloat > 0) then
   begin
     ppldesini20061231.Visible := false;
     pplapoini20061231.Visible := false;
     pplintini20061231.Visible := false;
     pplbonini20061231.Visible := false;
     pplsalini20061231.Visible := false;

     ppShape1.Visible := false;
     ppShape25.Visible := false;
     ppShape26.Visible := false;
     ppShape23.Visible := false;
     ppShape24.Visible := false;
     ppLabel232.Top := 5.0208;
     ppLabel233.Top := 5.0208;
     ppLabel248.Top := 5.0208;
     ppLabel258.Top := 5.0208;
     ppLabel261.Top := 5.0208;
     ppShape4.Top := 5;
     ppShape5.Top := 5;
     ppShape6.Top := 5;
     ppShape7.Top := 5;
     ppShape8.Top := 5;
   end
   else
   begin
     ppldesini20061231.Visible := true;
     pplapoini20061231.Visible := true;
     pplintini20061231.Visible := true;
     pplbonini20061231.Visible := true;
     pplsalini20061231.Visible := true;

     ppShape1.Visible := true;
     ppShape25.Visible := true;
     ppShape26.Visible := true;
     ppShape23.Visible := true;
     ppShape24.Visible := true;
     ppLabel232.Top := 4.8125;
     ppLabel233.Top := 4.8125;
     ppLabel248.Top := 4.8125;
     ppLabel258.Top := 4.8125;
     ppLabel261.Top := 4.8125;
     ppShape4.Top := 4.7917;
     ppShape5.Top := 4.7917;
     ppShape6.Top := 4.7917;
     ppShape7.Top := 4.7917;
     ppShape8.Top := 4.7917;
   end;

// COLOCAR FECHA DE ULTIMO APORTE
   xSql := 'SELECT MAX(ANHOMES) XULT_ANHOMES_APORT'
        +  '  FROM (SELECT (ANO || MES) ANHOMES '
        +  '          FROM T_CTAIND1 '
        +  '         WHERE ANO || MES <= TO_CHAR(SYSDATE, ''YYYYMM'') '
        +  '           AND NVL(CAPITAL, 0) > 0)';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   IF DM1.cdsQry.RecordCount>0 THEN
      XULT_ANHOMES_APORT:= DM1.cdsQry.fieldbyname('XULT_ANHOMES_APORT').AsString;

   if trim(DM1.cdsQry.fieldbyname('XULT_ANHOMES_APORT').AsString)='' then
      XULT_ANHOMES_APORT:= xAnoMesIni;

   //Calculo de años de aportacion del ANOSERF - RMZ
   // años de asociado

   xSql := '  SELECT ANHOS, '
         + '         CASE WHEN MESES > 12 THEN MESES - (ANHOS * 12) ELSE MESES END MESES '
         + '    FROM (SELECT TRUNC((FECHACESE - ASOFRESNOM) / 365) ANHOS, '
         + '                 TRUNC(MONTHS_BETWEEN(FECHACESE, LAST_DAY(ASOFRESNOM))) MESES '
         + '             FROM (SELECT ASOFRESNOM, '
         + '                          CASE WHEN ASOFRESCESE IS NULL THEN TRUNC(SYSDATE) ELSE ASOFRESCESE END FECHACESE '
         + '                      FROM APO201 '
         + '                     WHERE ASOID = ' + QuotedStr(DM1.cdsAsociado.FieldByName('ASOID').AsString) + '))';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;


   valAnho := DM1.cdsQry.fieldbyname('ANHOS').asstring;
   if (DM1.cdsQry.fieldbyname('ANHOS').Value=1) then
      cadAnho:= 'AÑO'
   else
      cadAnho:= 'AÑOS';

   valMes := DM1.cdsQry.fieldbyname('MESES').asstring;
   if (DM1.cdsQry.fieldbyname('MESES').Value=1) then
      cadMes:= 'MES'
   else
      cadMes:= 'MESES';


   pplanoapo_nc.Caption := valAnho+' '+cadAnho+' '+valMes+' '+cadMes;

   // ultimo aporte
   xfecini := '01/' + COPY(XULT_ANHOMES_APORT,5,2) + '/' + COPY(XULT_ANHOMES_APORT,1,4);
   xSql := 'SELECT LAST_DAY(' + QuotedStr(xfecini) + ') FEC_FIN FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

   pplultaporte.Caption := copy(DM1.NombreMes(COPY(XULT_ANHOMES_APORT,5,2)),1,3)+'/'+COPY(XULT_ANHOMES_APORT,1,4);
      (*ppldesini.Caption := 'SALDO A : '+DateToStr(Date);*)
   xfecini := '01/' + IntToStr(xMesIni) + '/' + IntToStr(xAnoIni);
   xSql := 'SELECT LAST_DAY(' + QuotedStr(xfecini) + ') FEC_INI FROM DUAL';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   ppldesini.Caption := 'SALDO ACUMULADO AL: ' + DM1.cdsQry.FieldByName('FEC_INI').AsString;
   pplapoini.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('INICIAL').AsFloat + DM1.cdsQry20.FieldByName('APORTE').AsFloat, ffNumber, 10, 2);
   pplintini.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('INTERES').AsFloat, ffNumber, 10, 2);
   pplbonini.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('BONUS').AsFloat, ffNumber, 10, 2);
   pplsalini.Caption := FloatToStrF(DM1.cdsQry20.FieldByName('SALDO').AsFloat, ffNumber, 10, 2);
   xSaldoInicio:=FloatToStrF(DM1.cdsQry20.FieldByName('SALDO').AsFloat, ffNumber, 10, 2);
   xSql:= 'SELECT MIN(NVL(ACUMESANT,0)) ACUMESANT,  SUM(NVL(CAPITAL,0)) CAPITAL,  SUM(NVL(INTCAPACU,0)) INTCAPACU, SUM(NVL(BONOS,0)) BONOS, MAX(NVL(ACUMULADO,0)) ACUMULADO  FROM T_CTAIND1'
        + ' WHERE ANO||MES < to_char(sysdate,''YYYYMM'') ';
   DM1.cdsQry22.Close;
   DM1.cdsQry22.DataRequest(xSql);
   DM1.cdsQry22.Open;

   // COLOCAR FECHA DE ULTIMO APORTE
   pplapofin.Caption := FloatToStrF(DM1.cdsQry22.FieldByName('ACUMESANT').AsFloat + DM1.cdsQry22.FieldByName('CAPITAL').AsFloat, ffNumber, 10, 2)+'(*)';

   pplblMsj1.caption := '(*) MONTO QUE CORRESPONDE A LO REALMENTE RECIBIDO POR LA INSTITUCIÓN.';

   pplintfin.Caption := FloatToStrF(DM1.cdsQry22.FieldByName('INTCAPACU').AsFloat, ffNumber, 10, 2);
   pplbonfin.Caption := FloatToStrF(DM1.cdsQry22.FieldByName('BONOS').AsFloat, ffNumber, 10, 2);
   pplsalfin.Caption := FloatToStrF(DM1.cdsQry22.FieldByName('ACUMULADO').AsFloat, ffNumber, 10, 2);
   xSaldoFin:=FloatToStrF(DM1.cdsQry22.FieldByName('ACUMULADO').AsFloat, ffNumber, 10, 2);

   xtotal_pie :=
      DM1.cdsQry22.FieldByName('ACUMESANT').AsFloat + DM1.cdsQry22.FieldByName('CAPITAL').AsFloat
      + DM1.cdsQry22.FieldByName('INTCAPACU').AsFloat + DM1.cdsQry22.FieldByName('BONOS').AsFloat;

      ultimoDiaSaldo:= DaysInAMonth(ultimoAnhoSaldo,ultimoMesSaldo);
  //Inicio HPC_201610_ASO
  //Tomar como un descuento  al total de la Cuenta Individual del asociado, la suma de las aplicaciones  por CCI que no estén marcadas como liquidadas.
  //  pplsaldoal.Caption := copy(DM1.NombreMes(DM1.StrZero(IntToStr(ultimoMesSaldo),2)),1,3)+'.'+IntToStr(ultimoAnhoSaldo)+ ' : S/. ' + FloatToStrF(xtotal_pie, ffNumber, 10, 2);  
      pplsaldoal.Caption := copy(DM1.NombreMes(DM1.StrZero(IntToStr(ultimoMesSaldo),2)),1,3)+'.'+IntToStr(ultimoAnhoSaldo)+ ' : S/. ' + FloatToStrF(xtotal_pie-DM1.cdsRepCCI.FieldByName('TOTCCI').AsFloat, ffNumber, 10, 2);
  //Final HPC_201610_ASO
      if (xSaldoInicio=xSaldoFin) then
      begin
         // cambia el mensaje
         pplMsgTotal.Caption :='SALDO ACUMULADO AL: ' + DM1.StrZero(IntToStr(ultimoDiaSaldo),2)+'/'+DM1.StrZero(IntToStr(ultimoMesSaldo),2)+'/'+IntToStr(ultimoAnhoSaldo);
         pplMsgTotal.Font.Name := 'Arial';
         pplMsgTotal.Font.size := 6;

         ppldesini.visible :=false;
         pplapoini.visible :=false;
         pplintini.visible :=false;
         pplbonini.visible :=false;
         pplsalini.visible :=false;
      end;
      pplFechaImp.Caption := 'FECHA DE IMPRESIÓN : '+DateToStr(Date);

   apo := StrToFloat(FloatToStrF(((DM1.cdsQry22.FieldByName('ACUMESANT').AsFloat + DM1.cdsQry22.FieldByName('CAPITAL').AsFloat) / xtotal_pie) * 100, ffNumber, 5, 2));
   int := StrToFloat(FloatToStrF((DM1.cdsQry22.FieldByName('INTCAPACU').AsFloat / xtotal_pie) * 100, ffNumber, 5, 2));
   bon := StrToFloat(FloatToStrF((DM1.cdsQry22.FieldByName('BONOS').AsFloat / xtotal_pie) * 100, ffNumber, 5, 2));

   Chart1.Series[0].Clear;
   Chart1.Series[0].Add(apo, 'Aportes');
   Chart1.Series[0].Add(int, 'Intereses');
   Chart1.Series[0].Add(bon, 'Bonus');

   // crea o bitmap de memória
   Image := TImage.Create(Nil);
   Image.Width := Chart1.Width;
   Image.Height := Chart1.Height;

   Chart1.Draw(Image1.Canvas, Image.BoundsRect);
   Jpeg := TJpegImage.Create;
   Jpeg.Assign(Image1.Picture.Bitmap);
   ppImage3.Picture.Bitmap := image1.Picture.Bitmap;
      (***********************)
   pprresest.PrinterSetup.PrinterName := 'Default';

   pprresest.PrinterSetup.DocumentName := RightStr('0000000000' + inttostr(INro), 8) + '-' + DM1.cdsAsociado.FieldByName('ASODNI').AsString;
   pprresest.ModalPreview := false;
   pprresest.ShowPrintDialog := false;
      (* pprresest.Device:=dvPrinter; *)
      (***********************)
// Inicio HPC_201510_ASO : Agregar en Consultas aplicaciones de CCI
   if DM1.cdsRepCCI.FieldByName('TOTCCI').AsFloat<=0 then
      ppSubReport2.Visible:=False;
// Fin HPC_201510_ASO : Agregar en Consultas aplicaciones de CCI

   pprresest.Print;

   Jpeg.Free;
   Jpeg := Nil;
   Image.Free;
   Image := Nil;

   self.Close;
End;

Procedure TFrmGeneraCtaIndividualPDF.pplanomesPrint(Sender: TObject);
Var
   xMes: String;
Begin
   If DM1.cdsQry21.FieldByName('MES').AsString = '01' Then xMes := 'ENE - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '02' Then xMes := 'FEB - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '03' Then xMes := 'MAR - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '04' Then xMes := 'ABR - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '05' Then xMes := 'MAY - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '06' Then xMes := 'JUN - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '07' Then xMes := 'JUL - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '08' Then xMes := 'AGO - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '09' Then xMes := 'SET - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '10' Then xMes := 'OCT - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '11' Then xMes := 'NOV - ';
   If DM1.cdsQry21.FieldByName('MES').AsString = '12' Then xMes := 'DIC - ';
   pplanomes.Caption := xMes + DM1.cdsQry21.FieldByName('ANO').AsString;
End;

// COLOCAR FECHA DE ULTIMO APORTE
procedure TFrmGeneraCtaIndividualPDF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  DM1.cdsCuentas.Close;
  DM1.cdsCuentas.Filter:='';
  DM1.cdsCuentas.IndexFieldNames:='';

  DM1.cdsQry.Close;
  DM1.cdsQry.Filter:='';
  DM1.cdsQry.IndexFieldNames:='';

  DM1.cdsQry20.Close;
  DM1.cdsQry20.Filter:='';
  DM1.cdsQry20.IndexFieldNames:='';

  DM1.cdsQry21.Close;
  DM1.cdsQry21.Filter:='';
  DM1.cdsQry21.IndexFieldNames:='';

  DM1.cdsQry22.Close;
  DM1.cdsQry22.Filter:='';
  DM1.cdsQry22.IndexFieldNames:='';

  DM1.cdsQry24.Close;
  DM1.cdsQry24.Filter:='';
  DM1.cdsQry24.IndexFieldNames:='';

  Action := caFree;

end;

End.


