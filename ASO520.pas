// Inicio Uso Estándares   : 01/08/2011
// Unidad		          : ASO520.pas
// Formulario		      : FRepAsoConCredVig
// Fecha de Creación       : 16/06/2011
// Autor			       : Daniel Fernández
// Objetivo		        : Reporte de Docentes con Créditos Vigentes

// Actualizaciones:
// HPP_201107_ASO          : 16/06/2011 Inicio de la unidad.
// HPC_201301_ASO          : 30/01/2013  DFERNANDEZ Se agrega tipo de asociado al reporte
// SPP_201303_ASO          : El pase a producción se solicita a partir del HPC_201301_ASO
// HPC_201307_ASO          : Se agregan filtros y columnas de resultados
// SPP_201308_ASO          : Se realiza el pase a plataforma a partir del HPC_201307_ASO
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES

Unit ASO520;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, db, DBGrids,
   ppEndUsr, ppParameter, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass,
   ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, Mask,
   wwdblook, Wwdbdlg;

Type
   TFRepAsoConCredVig = Class(TForm)
      bitProcesar: TBitBtn;
      dbgResultados: TwwDBGrid;
      BitPrint: TBitBtn;
      BitExporta: TBitBtn;
      BitSalir: TBitBtn;
      dtgData: TDBGrid;
      ppDBPipeline1: TppDBPipeline;
      ppReport1: TppReport;
      ppParameterList1: TppParameterList;
      ppDesigner1: TppDesigner;
      // Inicio: SPP_201308_ASO
      grpUgel: TGroupBox;
      dblcdUgel: TwwDBLookupComboDlg;
      dbeUgel: TMaskEdit;
      grpDepartamento: TGroupBox;
      dblcdDepartamento: TwwDBLookupComboDlg;
      dbeDepartamento: TMaskEdit;
      grpUnidadProceso: TGroupBox;
      dblcdUnidadProceso: TwwDBLookupComboDlg;
      dbeUnidadProceso: TMaskEdit;
      grpUnidadPago: TGroupBox;
      dblcdUnidadPago: TwwDBLookupComboDlg;
      dbeUnidadPago: TMaskEdit;
      grpTipoAsociado: TGroupBox;
      dblcdTipoAsociado: TwwDBLookupComboDlg;
      dbeTipoAsociado: TMaskEdit;
      ppHeaderBand1: TppHeaderBand;
      ppLabel114: TppLabel;
      ppLabel115: TppLabel;
      ppLabel116: TppLabel;
      ppLabel120: TppLabel;
      ppLabel121: TppLabel;
      ppLabel122: TppLabel;
      ppSystemVariable19: TppSystemVariable;
      ppSystemVariable20: TppSystemVariable;
      ppLabel123: TppLabel;
      ppLabel124: TppLabel;
      ppLabel125: TppLabel;
      ppLine34: TppLine;
      ppLine1: TppLine;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBCalc1: TppDBCalc;
      ppDBText9: TppDBText;
      ppLine2: TppLine;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppPageStyle1: TppPageStyle;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText10: TppDBText;
      ppLabel9: TppLabel;
      ppGroupFooterBand1: TppGroupFooterBand;
      // Fin: SPP_201308_ASO
      Procedure bitProcesarClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure BitExportaClick(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dbgResultadosTitleButtonClick(Sender: TObject;
         AFieldName: String);
// Inicio: SPP_201308_ASO
      Procedure dblcdUgelChange(Sender: TObject); 
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      procedure dblcdDepartamentoChange(Sender: TObject); 
      procedure dblcdUnidadProcesoChange(Sender: TObject); 
      procedure dblcdUnidadPagoChange(Sender: TObject); 
      procedure dblcdTipoAsociadoChange(Sender: TObject); 
   Private
    { Private declarations }
      Procedure Buscar;
      Procedure CargarUnidadesProceso; 
      Procedure CargarUnidadesPago; 
      Procedure CargarUgeles; 
      Procedure CargarDepartamentos; 
      Procedure CargarTiposAsociado; 
// Fin: SPP_201308_ASO
      Procedure LimpiarGrid;
   Public
    { Public declarations }
   End;

Var
   FRepAsoConCredVig: TFRepAsoConCredVig;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure TFRepAsoConCredVig.bitProcesarClick(Sender: TObject);
Begin
   Buscar;
End;

Procedure TFRepAsoConCredVig.Buscar;
Var
   xSql: String;
   CantAso, CantCred: integer;
   TotGirado, TotSaldo: double;
   // INICIO HPC_201513_ASO
   xnSaldoPagoAnticipado : double;
   // FIN HPC_201513_ASO
Begin
   Try
      Screen.Cursor := crHourGlass;
      // INICIO HPC_201513_ASO
      // Inicio: SPP_201308_ASO
      // Inicio: SPP_201303_ASO
      (*
      xSql := 'SELECT MAX(UG.USENOM) USENOM, C.ASOID, MAX(A.ASODNI) ASODNI, MAX(A.ASOAPENOMDNI) ASOAPENOMDNI, MAX(A.ASOTIPID) ASOTIPID,'
         + ' MAX(A.ASODIR) ASODIR, MAX(A.ASOTELF1) ASOTELF1, MAX(A.ASOTELF2) ASOTELF2, MAX(A.ASOEMAIL) ASOEMAIL,'
         + ' MAX(DPT.DPTODES) DPTODES, MAX(PRV.CIUDDES) CIUDDES, MAX(DST.ZIPDES) ZIPDES,'
         + ' COUNT(C.CREDID) CANTCRED, SUM(C.CREMTOGIR) CREMTOGIR, SUM(C.CRESDOACT) CRESDOACT, MAX(RP.REGPENDES) REGPENDES '
         + 'FROM'
         + '    CRE301 C'
         + '        INNER JOIN'
         + '    APO201 A ON'
         + '    C.ASOID = A.ASOID'
         + '        INNER JOIN'
         + '    ASO_CEN_EDU CE ON'
         + '    A.CENEDUID = CE.CENEDUID'
         + '        LEFT JOIN'
         + '    TGE158 DPT ON'
         + '    SUBSTR(CE.UBIGEO_DIR,1,2) = DPT.DPTOID'
         + '        LEFT JOIN'
         + '    APO123 PRV ON'
         + '    SUBSTR(CE.UBIGEO_DIR,1,2) = PRV.DPTOID'
         + '    AND SUBSTR(CE.UBIGEO_DIR,1,4) = PRV.CIUDID'
         + '        LEFT JOIN'
         + '    APO122 DST ON'
         + '    SUBSTR(CE.UBIGEO_DIR,1,2) = DST.DPTOID'
         + '    AND SUBSTR(CE.UBIGEO_DIR,1,4) = DST.CIUDID'
         + '    AND CE.UBIGEO_DIR = DST.ZIPID '
         + '        LEFT JOIN'
         + '    APO101 UG ON'
         + '    A.UPROID = UG.UPROID'
         + '    AND A.UPAGOID = UG.UPAGOID'
         + '    AND A.USEID = UG.USEID '
         + '        LEFT JOIN'
         + '    APO105 RP ON'
         + '    A.REGPENID = RP.REGPENID '
         + 'WHERE C.CREESTID IN (''01'', ''02'') ';
      // Fin: SPP_201303_ASO

      If Trim(dbeUnidadProceso.Text) <> '' Then
         xSql := xSql + '  AND A.UPROID = ' + QuotedStr(trim(dblcdUnidadProceso.Text));
      If Trim(dbeUnidadPago.Text) <> '' Then
         xSql := xSql + '  AND A.UPAGOID = ' + QuotedStr(trim(dblcdUnidadPago.Text));
      If Trim(dbeUgel.Text) <> '' Then
         xSql := xSql + '  AND A.USEID = ' + QuotedStr(trim(dblcdUgel.Text));
      If Trim(dbeDepartamento.Text) <> '' Then
         xSql := xSql + '  AND A.DPTOID = ' + QuotedStr(trim(dblcdDepartamento.Text));
      If Trim(dbeTipoAsociado.Text) <> '' Then
         xSql := xSql + '  AND A.ASOTIPID = ' + QuotedStr(trim(dblcdTipoAsociado.Text));

      xSql := xSql + ' GROUP BY C.ASOID ORDER BY MAX(UG.USENOM), MAX(A.ASOAPENOMDNI)';
      *)
      // Fin: SPP_201308_ASO

      xSql := 'SELECT UG.USENOM '
            + '      ,B.ASODNI '
            + '      ,B.ASOAPENOMDNI '
            + '      ,B.ASOTIPID '
            + '      ,RP.REGPENDES '
            + '      ,B.ASODIR '
            + '      ,B.ASOTELF1 '
            + '      ,B.ASOTELF2 '
            + '      ,B.ASOEMAIL '
            + '      ,DPT.DPTODES '
            + '      ,PRV.CIUDDES '
            + '      ,DST.ZIPDES '
            + '      ,A.CANTCRED '
            + '      ,A.CREMTOGIR '
            + '      ,A.CRESDOACT '
            + '      ,CARGO.COD_CARGO '
            + '      ,CALIF.CFCDES_F '
            + '      ,SF_ASO_CAL_SALDO_PAGO_ANTICIP(A.ASOID, TO_CHAR(SYSDATE,''YYYYMM'')) SALDO_PAGO_ANTICIPADO '
            + '      ,A.ASOID '
            + ' FROM (SELECT ASOID '
            + '             ,COUNT(CREDID) CANTCRED '
            + '             ,SUM(CREMTOGIR) CREMTOGIR '
            + '             ,SUM(CRESDOACT) CRESDOACT '
            + '         FROM CRE301 '
            + '        WHERE CREESTID IN (''01'',''02'') '
            + '        GROUP BY ASOID) A '
            + '     ,APO201 B '
            + '     ,ASO_CEN_EDU CE '
            + '     ,TGE158 DPT '
            + '     ,APO123 PRV '
            + '     ,APO122 DST '
            + '     ,APO101 UG '
            + '     ,APO105 RP '
            + '     ,(SELECT A.ASOCODMOD, MAX(B.COD_CARGO) COD_CARGO '
            + '         FROM (SELECT DISTINCT ASOCODMOD FROM CRE301 WHERE CREESTID IN (''01'', ''02'')) A '
            + '                     ,ASO_PAD_DES_HIS B '
            + '                WHERE A.ASOCODMOD = B.MODULAR '
            + '                  AND (SELECT MAX(CODPAD) FROM ASO_PAD_DES_HIS) = B.CODPAD '
            + '                GROUP BY A.ASOCODMOD) CARGO '
            + '     ,(SELECT A.ASOID, B.CFCDES_F '
            + '         FROM (SELECT DISTINCT ASOID FROM CRE301 WHERE CREESTID IN (''01'' ,''02'')) A '
            + '                     ,CFC000 B '
            + '                WHERE A.ASOID = B.ASOID '
            + '                  AND (SELECT MAX(PERIODO) FROM CFC000) = B.PERIODO) CALIF '
            + ' WHERE A.ASOID = B.ASOID(+) '
            + '   AND B.CENEDUID = CE.CENEDUID(+) '
            + '   AND SUBSTR(CE.UBIGEO_DIR,1,2) = DPT.DPTOID(+) '
            + '   AND SUBSTR(CE.UBIGEO_DIR,1,2) = PRV.DPTOID(+) '
            + '   AND SUBSTR(CE.UBIGEO_DIR,1,4) = PRV.CIUDID(+) '
            + '   AND SUBSTR(CE.UBIGEO_DIR,1,2) = DST.DPTOID(+) '
            + '   AND SUBSTR(CE.UBIGEO_DIR,1,4) = DST.CIUDID(+) '
            + '   AND CE.UBIGEO_DIR = DST.ZIPID(+) '
            + '   AND B.UPROID = UG.UPROID(+) '
            + '   AND B.UPAGOID = UG.UPAGOID(+) '
            + '   AND B.USEID = UG.USEID(+) '
            + '   AND B.REGPENID = RP.REGPENID(+) '
            + '   AND B.ASOCODMOD = CARGO.ASOCODMOD(+) '
            + '   AND A.ASOID = CALIF.ASOID(+) ';
      If Trim(dbeUnidadProceso.Text) <> '' Then
         xSql := xSql + '  AND B.UPROID = ' + QuotedStr(trim(dblcdUnidadProceso.Text));
      If Trim(dbeUnidadPago.Text) <> '' Then
         xSql := xSql + '  AND B.UPAGOID = ' + QuotedStr(trim(dblcdUnidadPago.Text));
      If Trim(dbeUgel.Text) <> '' Then
         xSql := xSql + '  AND B.USEID = ' + QuotedStr(trim(dblcdUgel.Text));
      If Trim(dbeDepartamento.Text) <> '' Then
         xSql := xSql + '  AND SUBSTR(CE.UBIGEO_DIR,1,2) = ' + QuotedStr(trim(dblcdDepartamento.Text));
      If Trim(dbeTipoAsociado.Text) <> '' Then
         xSql := xSql + '  AND B.ASOTIPID = ' + QuotedStr(trim(dblcdTipoAsociado.Text));

      // FIN HPC_201513_ASO

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      // Inicio: SPP_201308_ASO
      CantAso := 0;
      CantCred := 0;
      TotGirado := 0;
      TotSaldo := 0;
      // INICIO HPC_201513_ASO
      xnSaldoPagoAnticipado := 0;
      // FIN HPC_201513_ASO
      While Not DM1.cdsReporte.Eof Do
      Begin
         CantAso := CantAso + 1;
         CantCred := CantCred + DM1.cdsReporte.FieldByName('CANTCRED').AsInteger;
         TotGirado := TotGirado + DM1.cdsReporte.FieldByName('CREMTOGIR').AsCurrency;
         TotSaldo := TotSaldo + DM1.cdsReporte.FieldByName('CRESDOACT').AsCurrency;
         // INICIO HPC_201513_ASO
         xnSaldoPagoAnticipado := xnSaldoPagoAnticipado + DM1.cdsReporte.FieldByName('SALDO_PAGO_ANTICIPADO').AsCurrency;
         // FIN HPC_201513_ASO
         DM1.cdsReporte.Next;
      End;
      // INICIO HPC_201513_ASO
      DM1.cdsReporte.first;
      // FIN HPC_201513_ASO

      dbgResultados.Selected.Clear;
      dbgResultados.Selected.Add('USENOM'#9'20'#9'Ugel'#9'F'#9);
      // Fin: SPP_201308_ASO
      dbgResultados.Selected.Add('ASODNI'#9'8'#9'DNI'#9'F'#9);
      dbgResultados.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y Nombres D.N.I.'#9'F'#9);
      // Inicio: SPP_201303_ASO
      dbgResultados.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso'#9'F'#9);
      // Fin: SPP_201303_ASO
     // Inicio: SPP_201308_ASO
      dbgResultados.Selected.Add('REGPENDES'#9'10'#9'Reg.Pensión'#9'F'#9);
      dbgResultados.Selected.Add('ASODIR'#9'40'#9'Dirección'#9'F'#9);
      dbgResultados.Selected.Add('ASOTELF1'#9'10'#9'Teléfono 1'#9'F'#9);
      dbgResultados.Selected.Add('ASOTELF2'#9'10'#9'Teléfono 2'#9'F'#9);
      dbgResultados.Selected.Add('ASOEMAIL'#9'30'#9'Email'#9'F'#9);
      dbgResultados.Selected.Add('DPTODES'#9'15'#9'Departamento'#9'F'#9);
      dbgResultados.Selected.Add('CIUDDES'#9'15'#9'Provincia'#9'F'#9);
      dbgResultados.Selected.Add('ZIPDES'#9'15'#9'Distrito'#9'F'#9);
      dbgResultados.Selected.Add('CANTCRED'#9'10'#9'#Cred.Vig'#9'F'#9);
      dbgResultados.Selected.Add('CREMTOGIR'#9'12'#9'Monto Desem'#9'F'#9);
      dbgResultados.Selected.Add('CRESDOACT'#9'12'#9'Saldo Total'#9'F'#9);
      // INICIO HPC_201513_ASO
      dbgResultados.Selected.Add('COD_CARGO'#9'12'#9'Código Cargo'#9'F'#9);
      dbgResultados.Selected.Add('CFCDES_F'#9'12'#9'Calificación'#9'F'#9);
      dbgResultados.Selected.Add('SALDO_PAGO_ANTICIPADO'#9'12'#9'Saldo Pago~Anticipado'#9'F'#9);
      // FIN HPC_201513_ASO
      dbgResultados.ApplySelected;

      TNumericField(DM1.cdsReporte.FieldByName('CREMTOGIR')).DisplayFormat := '#,###,##0.00';
      TNumericField(DM1.cdsReporte.FieldByName('CRESDOACT')).DisplayFormat := '#,###,##0.00';

      dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := FloatToStrF(CantAso, ffNumber, 10, 0) + ' registro(s)';
      dbgResultados.ColumnByName('CANTCRED').FooterValue := FloatToStrF(CantCred, ffNumber, 10, 0);
      dbgResultados.ColumnByName('CREMTOGIR').FooterValue := FloatToStrF(TotGirado, ffNumber, 15, 2);
      dbgResultados.ColumnByName('CRESDOACT').FooterValue := FloatToStrF(TotSaldo, ffNumber, 15, 2);
      // INICIO HPC_201513_ASO
      dbgResultados.ColumnByName('SALDO_PAGO_ANTICIPADO').FooterValue := FloatToStrF(xnSaldoPagoAnticipado, ffNumber, 15, 2);
      // FIN HPC_201513_ASO
      // Fin: SPP_201308_ASO
   Finally
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFRepAsoConCredVig.LimpiarGrid;
Var
   xSql: String;
Begin
   Try
      Screen.Cursor := crHourGlass;
      // Inicio: SPP_201308_ASO
      // Inicio: SPP_201303_ASO
      // INICIO HPC_201513_ASO
      xSql := 'SELECT UG.USENOM, C.ASOID, A.ASODNI, A.ASOAPENOMDNI, A.ASOTIPID,'
         + ' A.ASODIR, A.ASOTELF1, A.ASOTELF2, A.ASOEMAIL,'
         + ' DPT.DPTODES, PRV.CIUDDES, DST.ZIPDES,'
         + ' 0 CANTCRED, 0 CREMTOGIR, 0 CRESDOACT, RP.REGPENDES '
         + ' ,''X'' COD_CARGO '
         + ' ,''X'' CFCDES_F '
         + ' , 0 SALDO_PAGO_ANTICIPADO '
         + 'FROM'
         + '    CRE301 C'
         + '        INNER JOIN'
         + '    APO201 A ON'
         + '    C.ASOID = A.ASOID'
         + '        INNER JOIN'
         + '    ASO_CEN_EDU CE ON'
         + '    A.CENEDUID = CE.CENEDUID'
         + '        LEFT JOIN'
         + '    TGE158 DPT ON'
         + '    SUBSTR(CE.UBIGEO_DIR,1,2) = DPT.DPTOID'
         + '        LEFT JOIN'
         + '    APO123 PRV ON'
         + '    SUBSTR(CE.UBIGEO_DIR,1,2) = PRV.DPTOID'
         + '    AND SUBSTR(CE.UBIGEO_DIR,1,4) = PRV.CIUDID'
         + '        LEFT JOIN'
         + '    APO122 DST ON'
         + '    SUBSTR(CE.UBIGEO_DIR,1,2) = DST.DPTOID'
         + '    AND SUBSTR(CE.UBIGEO_DIR,1,4) = DST.CIUDID'
         + '    AND CE.UBIGEO_DIR = DST.ZIPID '
         + '        LEFT JOIN'
         + '    APO101 UG ON'
         + '    A.UPROID = UG.UPROID'
         + '    AND A.UPAGOID = UG.UPAGOID'
         + '    AND A.USEID = UG.USEID '
         + '        LEFT JOIN'
         + '    APO105 RP ON'
         + '    A.REGPENID = RP.REGPENID '
         + 'WHERE 1 = 2';
      // FIN HPC_201513_ASO         
      // Fin: SPP_201303_ASO

      // Fin: SPP_201308_ASO

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      dbgResultados.Selected.Clear;
      // Inicio: SPP_201308_ASO
      dbgResultados.Selected.Add('USENOM'#9'20'#9'Ugel'#9'F'#9);
      // Fin: SPP_201308_ASO
      dbgResultados.Selected.Add('ASODNI'#9'8'#9'DNI'#9'F'#9);
      dbgResultados.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y Nombres D.N.I.'#9'F'#9);
      // Inicio: SPP_201303_ASO
      dbgResultados.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso'#9'F'#9);
      // Fin: SPP_201303_ASO
      // Inicio: SPP_201308_ASO
      dbgResultados.Selected.Add('REGPENDES'#9'10'#9'Reg.Pensión'#9'F'#9);
      // Fin: SPP_201308_ASO
      dbgResultados.Selected.Add('ASODIR'#9'40'#9'Dirección'#9'F'#9);
      dbgResultados.Selected.Add('ASOTELF1'#9'10'#9'Teléfono 1'#9'F'#9);
      dbgResultados.Selected.Add('ASOTELF2'#9'10'#9'Teléfono 2'#9'F'#9);
      dbgResultados.Selected.Add('ASOEMAIL'#9'30'#9'Email'#9'F'#9);
      dbgResultados.Selected.Add('DPTODES'#9'15'#9'Departamento'#9'F'#9);
      dbgResultados.Selected.Add('CIUDDES'#9'15'#9'Provincia'#9'F'#9);
      dbgResultados.Selected.Add('ZIPDES'#9'15'#9'Distrito'#9'F'#9);
      dbgResultados.Selected.Add('CANTCRED'#9'10'#9'#Cred.Vig'#9'F'#9);
      dbgResultados.Selected.Add('CREMTOGIR'#9'10'#9'Monto Desem'#9'F'#9);
      dbgResultados.Selected.Add('CRESDOACT'#9'10'#9'Saldo Total'#9'F'#9);
      // INICIO HPC_201513_ASO
      dbgResultados.Selected.Add('COD_CARGO'#9'12'#9'Código Cargo'#9'F'#9);
      dbgResultados.Selected.Add('CFCDES_F'#9'12'#9'Calificación'#9'F'#9);
      dbgResultados.Selected.Add('SALDO_PAGO_ANTICIPADO'#9'12'#9'Saldo Pago~Anticipado'#9'F'#9);
      // FIN HPC_201513_ASO
      dbgResultados.ApplySelected;

      dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := '0 registro(s)';
      dbgResultados.ColumnByName('CANTCRED').FooterValue := '';
      dbgResultados.ColumnByName('CREMTOGIR').FooterValue := '';
      dbgResultados.ColumnByName('CRESDOACT').FooterValue := '';
   Finally
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFRepAsoConCredVig.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFRepAsoConCredVig.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsReporte.IndexfieldNames := '';
   DM1.cdsReporte.Close;
   // Inicio: SPP_201308_ASO
   //DM1.cdsOfdes.Close;
   DM1.cdsUnidadProceso.Close;
   DM1.cdsUnidadPago.Close;
   DM1.cdsUgel.Close;
   DM1.cdsDpto.Close;
   DM1.cdsTAso.Close;
   // Fin: SPP_201308_ASO
End;

Procedure TFRepAsoConCredVig.BitExportaClick(Sender: TObject);
Begin
   Try
      Screen.Cursor := crHourGlass;

      If DM1.cdsReporte.RecordCount > 0 Then
      Begin
         If MessageDlg('¿Desea exportar la información a Excel?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes Then Exit;

         DM1.HojaExcel('Detalle', DM1.dsReporte, dtgData);
      End
      Else
      Begin
         MessageDlg('No existe información a exportar', mtInformation, [mbOk], 0);
         Exit;
      End;
   Finally
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFRepAsoConCredVig.BitPrintClick(Sender: TObject);
Begin
   If DM1.cdsReporte.RecordCount <= 0 Then
   Begin
      MessageDlg('No existe información', mtInformation, [mbOk], 0);
      Exit;
   End;

   ppReport1.Print;
   ppReport1.Cancel;
// Inicio: SPP_201308_ASO
   //ppDesigner1.Show;
// Fin: SPP_201308_ASO
End;

Procedure TFRepAsoConCredVig.FormActivate(Sender: TObject);
Begin
   // Inicio: SPP_201308_ASO
   CargarUnidadesProceso;
   CargarUnidadesPago;
   CargarUgeles;
   CargarDepartamentos;
   CargarTiposAsociado;
   LimpiarGrid;
   // Fin: SPP_201308_ASO
End;

Procedure TFRepAsoConCredVig.CargarTiposAsociado;
Var
   xSql: String;
Begin
   // Inicio: SPP_201308_ASO
   Try
      Screen.Cursor := crHourGlass;
      
      xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'', ''CO'', ''CE'') ORDER BY ASOTIPDES';
      DM1.cdsTAso.Close;
      DM1.cdsTAso.DataRequest(xSql);
      DM1.cdsTAso.Open;
      
      dblcdTipoAsociado.Selected.Clear;
      dblcdTipoAsociado.Selected.Add('ASOTIPID'#9'3'#9'ID'#9'F'#9);
      dblcdTipoAsociado.Selected.Add('ASOTIPDES'#9'20'#9'Tipo Asociado'#9'F'#9);
   Finally
      Screen.Cursor := crDefault;
   End;
   // Fin: SPP_201308_ASO
End;

Procedure TFRepAsoConCredVig.CargarDepartamentos;
Var
   xSql: String;
Begin
   // Inicio: SPP_201308_ASO
   Try
      Screen.Cursor := crHourGlass;
      
      xSql := 'SELECT DPTOID, DPTODES FROM TGE158 ORDER BY DPTODES';
      
      DM1.cdsDpto.Close;
      DM1.cdsDpto.DataRequest(xSql);
      DM1.cdsDpto.Open;
      
      dblcdDepartamento.Selected.Clear;
      dblcdDepartamento.Selected.Add('DPTOID'#9'3'#9'ID'#9'F'#9);
      dblcdDepartamento.Selected.Add('DPTODES'#9'20'#9'Departamento'#9'F'#9);
   Finally
      Screen.Cursor := crDefault;
   End;
   // Fin: SPP_201308_ASO
End;

Procedure TFRepAsoConCredVig.CargarUnidadesProceso;
Var
   xSql: String;
Begin
   // Inicio: SPP_201308_ASO
   Try
      Screen.Cursor := crHourGlass;

      xSql := 'SELECT UPROID, UPRONOM FROM APO102 ORDER BY UPRONOM';
      DM1.cdsUnidadProceso.Close;
      DM1.cdsUnidadProceso.DataRequest(xSql);
      DM1.cdsUnidadProceso.Open;

      dblcdUnidadProceso.Selected.Clear;
      dblcdUnidadProceso.Selected.Add('UPROID'#9'5'#9'ID'#9'F'#9);
      dblcdUnidadProceso.Selected.Add('UPRONOM'#9'30'#9'Unidad de Proceso'#9'F'#9);
   Finally
      Screen.Cursor := crDefault;
   End;
   // Fin: SPP_201308_ASO
End;

Procedure TFRepAsoConCredVig.CargarUnidadesPago;
Var
   xSql: String;
Begin
   // Inicio: SPP_201308_ASO
   Try
      Screen.Cursor := crHourGlass;

      xSql := 'SELECT UPAGOID, UPAGONOM FROM APO103 '
        + ' WHERE UPROID = ' + QuotedStr(Trim(dblcdUnidadProceso.Text))
        + ' ORDER BY UPAGONOM';
      DM1.cdsUnidadPago.Close;
      DM1.cdsUnidadPago.DataRequest(xSql);
      DM1.cdsUnidadPago.Open;

      dblcdUnidadPago.Selected.Clear;
      dblcdUnidadPago.Selected.Add('UPAGOID'#9'5'#9'ID'#9'F'#9);
      dblcdUnidadPago.Selected.Add('UPAGONOM'#9'30'#9'Unidad de Pago'#9'F'#9);
   Finally
      Screen.Cursor := crDefault;
   End;
   // Fin: SPP_201308_ASO
End;

Procedure TFRepAsoConCredVig.CargarUgeles;
Var
   xSql: String;
Begin
   // Inicio: SPP_201308_ASO
   Try
      Screen.Cursor := crHourGlass;
      
      xSql := 'SELECT USEID, USENOM FROM APO101 '
        + ' WHERE UPROID = ' + QuotedStr(Trim(dblcdUnidadProceso.Text))
        + ' AND UPAGOID = ' + QuotedStr(Trim(dblcdUnidadPago.Text))
        + ' ORDER BY USENOM';
      DM1.cdsUgel.Close;
      DM1.cdsUgel.DataRequest(xSql);
      DM1.cdsUgel.Open;
      
      dblcdUgel.Selected.Clear;
      dblcdUgel.Selected.Add('USEID'#9'5'#9'ID'#9'F'#9);
      dblcdUgel.Selected.Add('USENOM'#9'30'#9'Ofides'#9'F'#9);
   Finally
      Screen.Cursor := crDefault;
   End;
   // Fin: SPP_201308_ASO
End;

Procedure TFRepAsoConCredVig.dbgResultadosTitleButtonClick(Sender: TObject;
   AFieldName: String);
Begin
   DM1.cdsReporte.IndexFieldNames := AFieldName;
End;
// Inicio: SPP_201308_ASO
Procedure TFRepAsoConCredVig.dblcdUgelChange(Sender: TObject);
Begin
   If DM1.cdsUgel.Locate('USEID', dblcdUgel.Text, []) Then
      dbeUgel.Text := DM1.cdsUgel.FieldByName('USENOM').AsString
   Else
      dbeUgel.Text := '';
End;
// Fin: SPP_201308_ASO
Procedure TFRepAsoConCredVig.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

procedure TFRepAsoConCredVig.dblcdDepartamentoChange(Sender: TObject);
begin
  // Inicio: SPP_201308_ASO
   If DM1.cdsDpto.Locate('DPTOID', dblcdDepartamento.Text, []) Then
      dbeDepartamento.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString
   Else
      dbeDepartamento.Text := '';
  // Fin: SPP_201308_ASO
end;

procedure TFRepAsoConCredVig.dblcdUnidadProcesoChange(Sender: TObject);
begin
  // Inicio: SPP_201308_ASO
   If DM1.cdsUnidadProceso.Locate('UPROID', dblcdUnidadProceso.Text, []) Then
   begin
      dbeUnidadProceso.Text := DM1.cdsUnidadProceso.FieldByName('UPRONOM').AsString;
      dblcdUnidadPago.Text := '';
      dbeUnidadPago.Text := '';
      dblcdUgel.Text := '';
      dbeUgel.Text := '';
      CargarUnidadesPago;
   end
   Else
   begin
      dbeUnidadProceso.Text := '';
      dblcdUnidadPago.Text := '';
      dbeUnidadPago.Text := '';
      dblcdUgel.Text := '';
      dbeUgel.Text := '';
   end;
  // Fin: SPP_201308_ASO
end;

procedure TFRepAsoConCredVig.dblcdUnidadPagoChange(Sender: TObject);
begin
  // Inicio: SPP_201308_ASO
   If DM1.cdsUnidadPago.Locate('UPAGOID', dblcdUnidadPago.Text, []) Then
   begin
      dbeUnidadPago.Text := DM1.cdsUnidadPago.FieldByName('UPAGONOM').AsString;
      dblcdUgel.Text := '';
      dbeUgel.Text := '';
      CargarUgeles;
   end
   Else
   begin
      dbeUnidadPago.Text := '';
      dblcdUgel.Text := '';
      dbeUgel.Text := '';
   end;
  // Fin: SPP_201308_ASO
end;

procedure TFRepAsoConCredVig.dblcdTipoAsociadoChange(Sender: TObject);
begin
  // Inicio: SPP_201308_ASO
   If DM1.cdsTAso.Locate('ASOTIPID', dblcdTipoAsociado.Text, []) Then
      dbeTipoAsociado.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').AsString
   Else
      dbeTipoAsociado.Text := '';
  // Fin: SPP_201308_ASO
end;

End.

