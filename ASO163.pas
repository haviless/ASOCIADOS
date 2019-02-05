Unit ASO163;

// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO163.pas
// Formulario              :  Festadisticas
// Fecha de Creación       :  2008
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Estadística de Actualización de Padrones

// Actualizaciones:
// HPP_200809_ASO
// HPP_200905_ASO
// HPP_200908_ASO SAR2009-0256
// HPP_200912_ASO - SAR2009-0432 03/06/2009 - DAD-IR-2009-0112
// HPP_201003_ASO Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// HPC_201102_ASO
// HPC_201201_ASO 13/10/2011  DFERNANDEZ Los registros que tienen inconsistencias tienen la nueva columna Tipo de Asociado.

//DPP_201202_ASO : Se realiza el pase de acuerdo al HPC_201201_ASO

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, ppComm, ppRelatv, ppProd, ppClass, ppReport,
   ppBands, ppCache, ppPrnabl, ppCtrls, ppDB, ppDBPipe, ppDBBDE, Buttons,
   ppParameter, Grids, Wwdbigrd, Wwdbgrid, DBGrids, ppVar,
   wwdbdatetimepicker, ppEndUsr, ppStrtch, ppSubRpt;

Type
   TFestadisticas = Class(TForm)
      rgest: TRadioGroup;
      btnimprime: TBitBtn;
      btnsale: TBitBtn;
      rgtipinc: TRadioGroup;
      ppbdereporte: TppBDEPipeline;
      dbgprevio: TwwDBGrid;
      btnfiltrar: TBitBtn;
      pprregincon: TppReport;
      ppHeaderBand4: TppHeaderBand;
      ppDetailBand5: TppDetailBand;
      ppShape22: TppShape;
      ppShape23: TppShape;
      ppShape24: TppShape;
      ppLabel32: TppLabel;
      ppLabel45: TppLabel;
      ppLabel46: TppLabel;
      ppShape25: TppShape;
      ppLabel47: TppLabel;
      ppltitutloincon: TppLabel;
      ppShape26: TppShape;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      ppShape27: TppShape;
      ppShape28: TppShape;
      ppLabel52: TppLabel;
      ppLabel54: TppLabel;
      ppShape29: TppShape;
      ppDBText5: TppDBText;
      ppDBText7: TppDBText;
      ppDBText9: TppDBText;
      ppDBText11: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText22: TppDBText;
      ppDBText33: TppDBText;
      ppDBText34: TppDBText;
      dtgData: TDBGrid;
      btnaExcel: TBitBtn;
      ppSummaryBand2: TppSummaryBand;
      ppLine1: TppLine;
      pplimpresopor: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel17: TppLabel;
      ppLabel18: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      pprmodificados: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand2: TppDetailBand;
      ppShape1: TppShape;
      ppShape2: TppShape;
      ppShape3: TppShape;
      ppShape4: TppShape;
      ppShape5: TppShape;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppShape6: TppShape;
      ppLabel23: TppLabel;
      pplnomarc: TppLabel;
      ppLabel25: TppLabel;
      ppShape7: TppShape;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText6: TppDBText;
      ppDBText8: TppDBText;
      ppDBText10: TppDBText;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      pplcampomodificado: TppLabel;
      ppLabel24: TppLabel;
      ppLabel31: TppLabel;
      ppLabel33: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppSystemVariable6: TppSystemVariable;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc1: TppDBCalc;
      ppLine2: TppLine;
      ppLine4: TppLine;
      ppLabel38: TppLabel;
      ppLabel57: TppLabel;
      ppLabel58: TppLabel;
      ppLabel59: TppLabel;
      ppReport1: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppDetailBand3: TppDetailBand;
      ppFooterBand1: TppFooterBand;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      ppLabel65: TppLabel;
      ppLabel66: TppLabel;
      ppLabel67: TppLabel;
      pplnomarc_ne: TppLabel;
      ppLabel68: TppLabel;
      ppltipaso_ne: TppLabel;
      pplanomespad_ne: TppLabel;
      ppLine5: TppLine;
      ppLabel69: TppLabel;
      ppLabel70: TppLabel;
      ppLabel71: TppLabel;
      ppLabel72: TppLabel;
      ppLabel73: TppLabel;
      ppLabel74: TppLabel;
      ppLabel75: TppLabel;
      ppLabel76: TppLabel;
      ppLabel77: TppLabel;
      pprresactpad: TppReport;
      ppParameterList2: TppParameterList;
      ppDesigner1: TppDesigner;
      ppbdInconsistencias: TppBDEPipeline;
      ppbdDetalleUndGes: TppBDEPipeline;
      ppTitleBand2: TppTitleBand;
      pplcanregrec: TppLabel;
      pplcanregubi: TppLabel;
      ppLabel94: TppLabel;
      pplcanregnoubi: TppLabel;
      pplnomarcest: TppLabel;
      ppLabel124: TppLabel;
      ppLabel125: TppLabel;
      ppLabel126: TppLabel;
      ppLabel127: TppLabel;
      ppLabel129: TppLabel;
      ppLabel130: TppLabel;
      ppLabel131: TppLabel;
      ppLabel132: TppLabel;
      ppLabel133: TppLabel;
      ppLabel134: TppLabel;
      ppLabel135: TppLabel;
      ppLabel136: TppLabel;
      pplanomes: TppLabel;
      ppltipasoest: TppLabel;
      pplcanregrecpor: TppLabel;
      pplcanregubipor: TppLabel;
      pplcanregnoubipor: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppldptopadron: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      pplundgestabar: TppLabel;
      ppLabel42: TppLabel;
      pplcobertura: TppLabel;
      ppLabel44: TppLabel;
      ppLabel48: TppLabel;
      ppLabel53: TppLabel;
      ppLabel55: TppLabel;
      ppLabel56: TppLabel;
      ppLabel60: TppLabel;
      ppLine3: TppLine;
      ppLine6: TppLine;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLine9: TppLine;
      ppLine10: TppLine;
      ppLine17: TppLine;
      ppLine18: TppLine;
      ppLine19: TppLine;
      ppLine21: TppLine;
      ppImage1: TppImage;
      ppDetailBand4: TppDetailBand;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppDBText31: TppDBText;
      ppDBText32: TppDBText;
      ppDBText35: TppDBText;
      ppDBText36: TppDBText;
      ppLine11: TppLine;
      ppLine12: TppLine;
      ppLine13: TppLine;
      ppLine14: TppLine;
      ppLine15: TppLine;
      ppLine16: TppLine;
      ppLine20: TppLine;
      ppLine22: TppLine;
      ppFooterBand2: TppFooterBand;
      ppLabel105: TppLabel;
      pplfechoract: TppLabel;
      ppLabel6: TppLabel;
      ppLabel11: TppLabel;
      pplfechorche: TppLabel;
      pplusrproc: TppLabel;
      ppSummaryBand5: TppSummaryBand;
      ppLabel51: TppLabel;
      pplcanregmod_asocodmod: TppLabel;
      pplcanregmod_asocodmod_por: TppLabel;
      ppLabel81: TppLabel;
      pplcanregmod_cargo: TppLabel;
      pplcanregmod_cargo_por: TppLabel;
      ppLabel85: TppLabel;
      pplcanregmod_asocodpago: TppLabel;
      pplcanregmod_asocodpago_por: TppLabel;
      ppLabel89: TppLabel;
      pplcanregmod_useid: TppLabel;
      pplcanregmod_useid_por: TppLabel;
      ppLabel93: TppLabel;
      ppLabel96: TppLabel;
      pplcanregdo: TppLabel;
      ppLabel99: TppLabel;
      ppLabel100: TppLabel;
      ppLabel101: TppLabel;
      pplcanregmod_asoncta: TppLabel;
      pplcanregmod_asoncta_por: TppLabel;
      ppLabel137: TppLabel;
      ppLabel138: TppLabel;
      ppLabel139: TppLabel;
      ppLabel140: TppLabel;
      pplcanregce: TppLabel;
      ppLabel78: TppLabel;
      ppLabel86: TppLabel;
      ppLabel90: TppLabel;
      ppLabel82: TppLabel;
      ppLabel98: TppLabel;
      ppLabel102: TppLabel;
      pplcanregmod: TppLabel;
      pplcanregmod_por: TppLabel;
      pplcanregmodconcre: TppLabel;
      pplcanregmodconcre_por: TppLabel;
      pplcanregmodconaut: TppLabel;
      pplcanregmodconaut_por: TppLabel;
      pplcanregdopor: TppLabel;
      pplcanregcepor: TppLabel;
      ppLabel1: TppLabel;
      pplcanregmod_regpen: TppLabel;
      pplcanregmod_regpen_por: TppLabel;
      ppLabel2: TppLabel;
      pplcanregmod_asoapenom: TppLabel;
      pplcanregmod_asoapenom_por: TppLabel;
      ppLabel3: TppLabel;
      pplcanregmod_colegio: TppLabel;
      pplcanregmod_colegio_por: TppLabel;
      ppLabel12: TppLabel;
      ppSubReport1: TppSubReport;
      ppChildReport1: TppChildReport;
      ppTitleBand1: TppTitleBand;
      ppDetailBand1: TppDetailBand;
      ppDBText14: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppSummaryBand3: TppSummaryBand;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel19: TppLabel;
      pplcanregco: TppLabel;
      pplcanregcopor: TppLabel;
      ppLabel26: TppLabel;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      pplcanregmod_carlab: TppLabel;
      pplcanregmod_sitact: TppLabel;
      pplcanregmod_tipser: TppLabel;
      pplcanregmod_carlab_por: TppLabel;
      pplcanregmod_sitact_por: TppLabel;
      pplcanregmod_tipser_por: TppLabel;
      Procedure btnimprimirClick(Sender: TObject);
      Procedure btnsaleClick(Sender: TObject);
      Procedure rgestClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure btnfiltrarClick(Sender: TObject);
      Procedure btnExcelClick(Sender: TObject);
      Procedure rgtipincClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
   Private
      Procedure inicializagrid;
      { Private declarations }
   Public
      { Public declarations }
   End;

Var
   Festadisticas: TFestadisticas;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure TFestadisticas.btnimprimirClick(Sender: TObject);
Var
   xSql: String;
   xCantTotalInco: integer;
   xCantReg: integer;
Begin
   If rgest.ItemIndex = 0 Then
   Begin
      Screen.Cursor := crHourGlass;
    // Se captura las ugeles del padron y luego chequee registro por registro contra el APO201
       xSql := 'SELECT B.USENOM, A.UPROID, A.UPAGOID, A.USEID, 0 CANT_DO, 0 CANT_CE, 0 CANT_CO, 0 CANT_TOT, CANT_PADRON, 0.00 COBERTURA'
       +' FROM (SELECT UPROID, UPAGOID, USEID, SUM(1) CANT_PADRON FROM ASO_PAD_DES_DET WHERE NUMERO = '+QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
       +' AND ASOID IS NOT NULL GROUP BY UPROID, UPAGOID, USEID) A, APO101 B'
       +' WHERE A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID';
      DM1.cdsSobrino.Close;
      DM1.cdsSobrino.DataRequest(xSql);
      DM1.cdsSobrino.Open;
      DM1.cdsSobrino.First;
      While Not DM1.cdsSobrino.Eof Do
      Begin
        xSql := 'SELECT SUM(CAN_DO) CANT_DO, SUM(CAN_CE) CANT_CE, SUM(CAN_CO) CANT_CO, SUM(CAN_TOT) CANT_TOT'
        +' FROM (SELECT CASE WHEN ASOTIPID = ''DO'' THEN 1 ELSE 0 END CAN_DO,'
        +'              CASE WHEN ASOTIPID = ''CE'' THEN 1 ELSE 0 END CAN_CE,'
        +'              CASE WHEN ASOTIPID = ''CO'' THEN 1 ELSE 0 END CAN_CO,'
        +'       CASE WHEN ASOTIPID IN (''DO'',''CE'',''CO'') THEN 1 ELSE 0 END CAN_TOT'
        +'       FROM APO201 WHERE UPROID = '+QuotedStr(DM1.cdsSobrino.FieldByName('UPROID').AsString)
        +'                     AND UPAGOID = '+QuotedStr(DM1.cdsSobrino.FieldByName('UPAGOID').AsString)
        +'                     AND USEID   = '+QuotedStr(DM1.cdsSobrino.FieldByName('USEID').AsString)+')';
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest(xSql);
        DM1.cdsQry.Open;
        DM1.cdsSobrino.Edit;
        DM1.cdsSobrino.FieldByName('CANT_DO').AsInteger := DM1.cdsQry.FieldByName('CANT_DO').AsInteger;
        DM1.cdsSobrino.FieldByName('CANT_CE').AsInteger := DM1.cdsQry.FieldByName('CANT_CE').AsInteger;
        DM1.cdsSobrino.FieldByName('CANT_CO').AsInteger := DM1.cdsQry.FieldByName('CANT_CO').AsInteger;
        DM1.cdsSobrino.FieldByName('CANT_TOT').AsInteger := DM1.cdsQry.FieldByName('CANT_TOT').AsInteger;
        If (DM1.cdsCreditos.FieldByName('ASOTIPID').AsString = 'DO') And
           (DM1.cdsSobrino.FieldByName('CANT_DO').AsInteger > 0) Then
          DM1.cdsSobrino.FieldByName('COBERTURA').AsFloat :=  (DM1.cdsSobrino.FieldByName('CANT_PADRON').AsInteger/DM1.cdsSobrino.FieldByName('CANT_DO').AsInteger)*100;
        If (DM1.cdsCreditos.FieldByName('ASOTIPID').AsString = 'CE') And
           (DM1.cdsSobrino.FieldByName('CANT_CE').AsInteger > 0) Then
          DM1.cdsSobrino.FieldByName('COBERTURA').AsFloat :=  (DM1.cdsSobrino.FieldByName('CANT_PADRON').AsInteger/DM1.cdsSobrino.FieldByName('CANT_CE').AsInteger)*100;
        If (DM1.cdsCreditos.FieldByName('ASOTIPID').AsString = 'CO') And
           (DM1.cdsSobrino.FieldByName('CANT_CO').AsInteger > 0) Then
          DM1.cdsSobrino.FieldByName('COBERTURA').AsFloat :=  (DM1.cdsSobrino.FieldByName('CANT_PADRON').AsInteger/DM1.cdsSobrino.FieldByName('CANT_CO').AsInteger)*100;
        DM1.cdsSobrino.Next;
      End;
      ppbdDetalleUndGes.DataSource := DM1.dsSobrino;
      pplcobertura.Text := Trim(DM1.cdsCreditos.FieldByName('ASOTIPID').AsString);

      // INCONSISTENCIAS
      xSql := 'SELECT B.DESCRIPCION, SUM(1) CANT, 0.0 PORC '
         + '  FROM ASO_PAD_DES_DET A, '
         + '       (SELECT CODIGO, DESCRIPCION '
         + '           FROM ASO_PAD_COD_INC '
         + '          WHERE TIPO = ''01'') B '
         + ' WHERE NUMERO =  ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
         + '   AND A.FLAINC IS NOT NULL '
         + '   AND NVL(A.FLAINC, ''XX'') = B.CODIGO(+) '
         + 'GROUP BY  B.DESCRIPCION';

      DM1.cdsQry22.Close;
      DM1.cdsQry22.DataRequest(xSql);
      DM1.cdsQry22.Open;
      xCantTotalInco := 0;
      DM1.cdsQry22.first;
      While Not DM1.cdsQry22.eof Do
      Begin
         xCantTotalInco := xCantTotalInco + DM1.cdsQry22.fieldbyname('CANT').value;
         DM1.cdsQry22.next;
      End;
      DM1.cdsQry22.first;
      While Not DM1.cdsQry22.eof Do
      Begin
         DM1.cdsQry22.edit;
         DM1.cdsQry22.fieldbyname('PORC').value := (DM1.cdsQry22.fieldbyname('CANT').value / xCantTotalInco) * 100;
         DM1.cdsQry22.post;
         DM1.cdsQry22.next;
      End;
      ppbdInconsistencias.DataSource := DM1.dsQry22;

      // DOS OPCIONES DE OBTENER LA DATA
      xSql := 'SELECT USEID '
         + '  FROM (SELECT USEID '
         + '          FROM APO201'
         + '         WHERE ASOID IN (SELECT ASOID '
         + '                           FROM ASO_PAD_DES_DET '
         + '                          WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
         + '                            AND ASOID IS NOT NULL) '
         + '         ) '
         + '  GROUP BY USEID '
         + '  ORDER BY USEID';

      xSQL := 'SELECT DISTINCT USEID '
         + '  FROM ASO_PAD_DES_DET '
         + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
         + '   AND ASOID IS NOT NULL ';

      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplundgestabar.Caption := '';
      DM1.cdsQry.First;
      While Not DM1.cdsQry.Eof Do
      Begin
         If pplundgestabar.Caption = '' Then
            pplundgestabar.Caption := DM1.cdsQry.FieldByName('USEID').AsString
         Else
            pplundgestabar.Caption := pplundgestabar.Caption + ', ' + DM1.cdsQry.FieldByName('USEID').AsString;
         DM1.cdsQry.Next;
      End;

      pplusrproc.Caption := DM1.wUsuario;
      pplnomarcest.Caption := DM1.cdsCreditos.FieldByName('NOMARC').AsString;
      ppltipasoest.Caption := DM1.cdsTAso.FieldByName('ASOTIPDES').AsString;

      xSQL := 'SELECT DPTOID,DPTODES '
            + '  FROM APO158 '
            + ' WHERE DPTOID = ' + QuotedStr(DM1.cdsCreditos.FieldByName('DPTOID').AsString);
      DM1.cdsDpto.Close;
      DM1.cdsDpto.DataRequest(xSql);
      DM1.cdsDpto.Open;

      ppldptopadron.Caption := DM1.cdsDpto.fieldbyname('DPTODES').AsString;

      pplanomes.Caption := DM1.DesMes(strtoint(Copy(DM1.cdsCreditos.FieldByName('PERIODO').AsString, 5, 2)), 'N') + '-' + Copy(DM1.cdsCreditos.FieldByName('PERIODO').AsString, 1, 4);

      xSql := 'SELECT SUM(NVL(CANREGUBI,0)) CANREGUBI, '
         + '       SUM(NVL(CANREGNOUBI,0)) CANREGNOUBI, '
         + '       SUM(NVL(CANREGMOD_ASOCODMOD,0)) CANREGMOD_ASOCODMOD, '
         + '       SUM(NVL(CANREGMOD_CARGO,0)) CANREGMOD_CARGO, '
         + '       SUM(NVL(CANREGMOD_ASOCODPAGO,0)) CANREGMOD_ASOCODPAGO, '
         + '       SUM(NVL(CANREGMOD_ASONCTA,0)) CANREGMOD_ASONCTA,'
         + '       SUM(NVL(CANREGMOD_USEID,0)) CANREGMOD_USEID, '
         + '       SUM(NVL(CANREGMOD_REGPEN,0)) CANREGMOD_REGPEN,'
         + '       SUM(NVL(CANREGMOD_ASOAPENOM,0)) CANREGMOD_ASOAPENOM, '
         + '       SUM(NVL(CANREGMOD_COLEGIO,0)) CANREGMOD_COLEGIO, '

         + '       SUM(NVL(CANREGMOD_CARLAB,0)) CANREGMOD_CARLAB, '
         + '       SUM(NVL(CANREGMOD_TIPSER,0)) CANREGMOD_TIPSER, '
         + '       SUM(NVL(CANREGMOD_SITACT,0)) CANREGMOD_SITACT, '
         + '       SUM(NVL(CANREGMOD,0)) CANREGMOD, '
         + '       SUM(NVL(CANREGREC,0)) CANREGREC'
         + '  FROM ( SELECT CASE WHEN ASOID IS NOT NULL THEN 1 ELSE 0 END CANREGUBI, '
         + '                CASE WHEN ASOID IS NULL     THEN 1 ELSE 0 END CANREGNOUBI,'
         + '                CASE WHEN NVL(FLAACTASOCODMOD,''X'')  = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASOCODMOD,'
         + '                CASE WHEN NVL(FLAACTCARGO,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_CARGO,'
         + '                CASE WHEN NVL(FLAACTASOCODPAGO,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASOCODPAGO,'
         + '                CASE WHEN NVL(FLAACTASONCTA,''X'')    = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASONCTA,'
         + '                CASE WHEN NVL(FLAACTUSEID,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_USEID,'
         + '                CASE WHEN NVL(FLAACTREGPEN,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_REGPEN,'
         + '                CASE WHEN NVL(FLAACTASOAPENOM,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASOAPENOM,'
         + '                CASE WHEN NVL(FLAACTCOLEGIO,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_COLEGIO,'
         + '                CASE WHEN NVL(FLAACTCARLAB,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_CARLAB,' // SAR-2010-0155
         + '                CASE WHEN NVL(FLAACTTIPSER,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_TIPSER,' // SAR-2010-0155
         + '                CASE WHEN NVL(FLAACTSITACT,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_SITACT,' // SAR-2010-0155
         + '                CASE WHEN (NVL(FLAACTASOCODMOD,''X'') = ''S'' '
         + '                           OR NVL(FLAACTCARGO,''X'') = ''S'' '
         + '                           OR NVL(FLAACTASOCODPAGO,''X'') = ''S'' '
         + '                           OR NVL(FLAACTASONCTA,''X'') = ''S'' '
         + '                           OR NVL(FLAACTUSEID,''X'') = ''S'' '
         + '                           OR NVL(FLAACTREGPEN,''X'') = ''S'' '
         + '                           OR NVL(FLAACTASOAPENOM,''X'') = ''S'''
         + '                           OR NVL(FLAACTCOLEGIO,''X'') = ''S'''

         + '                           OR NVL(FLAACTCARLAB,''X'') = ''S'''
         + '                           OR NVL(FLAACTTIPSER,''X'') = ''S'''
         + '                           OR NVL(FLAACTSITACT,''X'') = ''S'''
         + '                          )  THEN 1 END CANREGMOD, '
         + '                1 CANREGREC '
         + '           FROM ASO_PAD_DES_DET '
         + '          WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ')';
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      pplcanregrec.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGREC').AsFloat, ffNumber, 10, 0);
      pplcanregubi.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat, ffNumber, 10, 0);
      pplcanregnoubi.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGNOUBI').AsFloat, ffNumber, 10, 0);
      pplcanregrecpor.Caption := '100.00';
      pplcanregubipor.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat / DM1.cdsQry21.FieldByName('CANREGREC').AsFloat) * 100, ffNumber, 6, 2);
      pplcanregnoubipor.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGNOUBI').AsFloat / DM1.cdsQry21.FieldByName('CANREGREC').AsFloat) * 100, ffNumber, 6, 2);
      pplcanregmod_asocodmod_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_ASOCODMOD').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);
      pplcanregmod_cargo_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_CARGO').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);
      pplcanregmod_asocodpago_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_ASOCODPAGO').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);
      pplcanregmod_useid_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_USEID').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);
      pplcanregmod_regpen_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_REGPEN').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);
      pplcanregmod_asoncta_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_ASONCTA').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);
      pplcanregmod_carlab_por.Caption  := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_CARLAB').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);  // SAR-2010-0155
      pplcanregmod_tipser_por.Caption  := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_TIPSER').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);  // SAR-2010-0155
      pplcanregmod_sitact_por.Caption  := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_SITACT').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);  // SAR-2010-0155
      pplcanregmod_asocodmod.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_ASOCODMOD').AsFloat, ffNumber, 10, 0);
      pplcanregmod_cargo.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_CARGO').AsFloat, ffNumber, 10, 0);
      pplcanregmod_asocodpago.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_ASOCODPAGO').AsFloat, ffNumber, 10, 0);
      pplcanregmod_useid.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_USEID').AsFloat, ffNumber, 10, 0);
      pplcanregmod_regpen.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_REGPEN').AsFloat, ffNumber, 10, 0);
      pplcanregmod_asoncta.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_ASONCTA').AsFloat, ffNumber, 10, 0);
      pplcanregmod_carlab.Caption  := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_CARLAB').AsFloat, ffNumber, 10, 0); // SAR-2010-0155
      pplcanregmod_tipser.Caption  := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_TIPSER').AsFloat, ffNumber, 10, 0); // SAR-2010-0155
      pplcanregmod_sitact.Caption  := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_SITACT').AsFloat, ffNumber, 10, 0); // SAR-2010-0155
      pplcanregmod_asoapenom.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_ASOAPENOM').AsFloat, ffNumber, 10, 0);
      pplcanregmod_asoapenom_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_ASOAPENOM').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);
      pplcanregmod_colegio.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_COLEGIO').AsFloat, ffNumber, 10, 0);
      pplcanregmod_colegio_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_COLEGIO').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2);

      pplcanregmod.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD').AsFloat, ffNumber, 10, 0);
      If DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat > 0 Then
         pplcanregmod_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2)
      Else
         pplcanregmod_por.Caption := '0';

      xSql := 'SELECT SUM(NVL(CANREGDOC,0)) CANREGDOC , '
         + '          SUM(NVL(CANREGCES,0)) CANREGCES, '
         + '          SUM(NVL(CANREGCON,0)) CANREGCON '
         + '     FROM (SELECT CASE WHEN ASOTIPID = ''DO'' THEN 1 ELSE 0 END CANREGDOC, '
         + '                  CASE WHEN ASOTIPID = ''CE'' THEN 1 ELSE 0 END CANREGCES, '
         + '                  CASE WHEN ASOTIPID = ''CO'' THEN 1 ELSE 0 END CANREGCON  '
         + '             FROM APO201 '
         + '            WHERE (UPROID, UPAGOID, USEID) IN (SELECT UPROID, UPAGOID, USEID '
         + '                                                 FROM ASO_PAD_DES_DET '
         + '                                                WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ')'
         + '       )';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplcanregdo.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CANREGDOC').AsFloat, ffNumber, 10, 0);
      pplcanregce.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CANREGCES').AsFloat, ffNumber, 10, 0);
      pplcanregco.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CANREGCON').AsFloat, ffNumber, 10, 0);

      xCantReg := DM1.cdsQry.FieldByName('CANREGDOC').AsInteger + DM1.cdsQry.FieldByName('CANREGCES').AsInteger + DM1.cdsQry.FieldByName('CANREGCON').AsInteger;

      If xCantReg > 0 Then
      Begin
         pplcanregdopor.Caption := FloatToStrF((DM1.cdsQry.FieldByName('CANREGDOC').AsFloat / xCantReg) * 100, ffNumber, 6, 2);
         pplcanregcepor.Caption := FloatToStrF((DM1.cdsQry.FieldByName('CANREGCES').AsFloat / xCantReg) * 100, ffNumber, 6, 2);
         pplcanregcopor.Caption := FloatToStrF((DM1.cdsQry.FieldByName('CANREGCON').AsFloat / xCantReg) * 100, ffNumber, 6, 2);
      End
      Else
      Begin
         pplcanregdopor.Caption := '0.0';
         pplcanregcepor.Caption := '0.0';
         pplcanregcopor.Caption := '0.0';
      End;

      xSql := 'SELECT COUNT(*) CANTIDAD FROM (SELECT ASOID FROM CRE301 WHERE ASOID IN (SELECT ASOID FROM ASO_PAD_DES_DET'
         + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ' AND (NVL(FLAACTASOCODMOD,''X'') = ''S'' OR NVL(FLAACTCARGO,''X'') = ''S'' OR NVL(FLAACTASOCODPAGO,''X'') = ''S'''
         + ' OR NVL(FLAACTUSEID,''X'') = ''S'') GROUP BY ASOID) AND  CREESTID = ''02'' GROUP BY ASOID)';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplcanregmodconcre.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CANTIDAD').AsFloat, ffNumber, 10, 0);

      If DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat > 0 Then
         pplcanregmodconcre_por.Caption := FloatToStrF((DM1.cdsQry.FieldByName('CANTIDAD').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2)
      Else
         pplcanregmodconcre_por.Caption := '0';

      xSql := 'SELECT COUNT(*) CANTIDAD FROM (SELECT ASOID FROM APO201 WHERE ASOID IN (SELECT ASOID FROM ASO_PAD_DES_DET'
         + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ' AND (NVL(FLAACTASOCODMOD,''X'') = ''S'' OR NVL(FLAACTCARGO,''X'') = ''S'''
         + ' OR NVL(FLAACTASOCODPAGO,''X'') = ''S'' OR NVL(FLAACTUSEID,''X'') = ''S'') GROUP BY ASOID)'
         + ' AND NVL(AUTDESAPO,''X'') = ''S'')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplcanregmodconaut.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CANTIDAD').AsFloat, ffNumber, 10, 0);

      If DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat > 0 Then
         pplcanregmodconaut_por.Caption := FloatToStrF((DM1.cdsQry.FieldByName('CANTIDAD').AsFloat / DM1.cdsQry21.FieldByName('CANREGUBI').AsFloat) * 100, ffNumber, 10, 2)
      Else
         pplcanregmodconaut_por.Caption := '0';

      pplfechorche.Caption := DM1.cdsCreditos.FieldByName('FECHOR_CHE').AsString;
      pplfechoract.Caption := DM1.cdsCreditos.FieldByName('FECHOR_ACT').AsString;
      Screen.Cursor := crDefault;
      pprresactpad.Print;

   End;

   If rgest.ItemIndex = 1 Then
   Begin
      ppltitutloincon.Caption := 'REGISTROS INCONSISTENTES : ' + DM1.cdsCreditos.FieldByName('NOMARC').AsString;
      pprregincon.Print;
   End;

   If rgest.ItemIndex = 2 Then
   Begin
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
         MessageDlg('No existe información para mostrar', mtError, [mbOk], 0);
         Exit;
      End;
      pplnomarc.Caption := DM1.cdsCreditos.FieldByName('NOMARC').AsString;
      pplcampomodificado.Caption := rgtipinc.Items.Strings[rgtipinc.ItemIndex];
      pprmodificados.Print;
   End;

End;

Procedure TFestadisticas.btnsaleClick(Sender: TObject);
Begin
   Festadisticas.Close;
End;

Procedure TFestadisticas.rgestClick(Sender: TObject);
Begin
   inicializagrid;
   If rgest.ItemIndex = 0 Then
   Begin
      btnfiltrar.Enabled := False;
      btnaExcel.Enabled  := False;
      btnimprime.Enabled := True;
      dbgprevio.Enabled  := False;
      rgtipinc.Enabled   := False;
   End;

   If rgest.ItemIndex = 1 Then
   Begin
      btnfiltrar.Enabled := True;
      dbgprevio.Enabled  := True;
      rgtipinc.Enabled   := False;
      btnimprime.Enabled := False;
      btnaExcel.Enabled  := False;
   End;

   If rgest.ItemIndex = 2 Then
   Begin
      btnfiltrar.Enabled := True;
      dbgprevio.Enabled  := True;
      rgtipinc.Enabled   := True;
      btnimprime.Enabled := False;
      btnaExcel.Enabled  := False;
   End;
End;

Procedure TFestadisticas.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin
   xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID = ' + QuotedStr(DM1.cdsCreditos.FieldByName('ASOTIPID').AsString);
   DM1.cdsTAso.Close;
   DM1.cdsTAso.DataRequest(xSql);
   DM1.cdsTAso.Open;

   If DM1.xSgr = 'I' Then
   Begin
      rgest.ItemIndex    := 1;
      rgtipinc.ItemIndex := -1;
      rgest.Enabled      := False;
      rgtipinc.Enabled   := False;
   End
   Else
   Begin
      rgtipinc.ItemIndex := 0;
      btnfiltrar.Enabled := False;
      btnaExcel.Enabled  := False;
      btnimprime.Enabled := True;
      dbgprevio.Enabled  := False;
      rgtipinc.Enabled   := False;
   End;
   inicializagrid;
End;

Procedure TFestadisticas.btnfiltrarClick(Sender: TObject);
Var
   xSql, xSql2: String;
Begin
   btnaExcel.Enabled := True;
   btnimprime.Enabled := True;

// Inicio: DPP_201202_ASO
// Se agrega la columna Tipo de Asociado
   If rgest.ItemIndex = 1 Then // Tipo de Reporte : Registros Inconsistentes
   Begin
      xSql := ' SELECT A.ASODNI, A.ASOCODMOD, A.ASOAPENOM, A.CARGO, A.ASOCODPAGO, A.ASONCTA, A.SITCTA, '
            + '        A.UPROID, A.UPAGOID, A.USEID, B.DESCRIPCION, FLAINC_DETCOL DETALLADO, '
            + '        A.ASOTIPID '
            + ' FROM ASO_PAD_DES_DET A, '
            + '     (SELECT CODIGO, DESCRIPCION '
            + '      FROM ASO_PAD_COD_INC '
            + '      WHERE TIPO = ''01'') B '
            + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
            + '   AND A.FLAINC IS NOT NULL '
            + '   AND NVL(A.FLAINC,''XX'') = B.CODIGO(+) '
            + ' ORDER BY NVL(A.FLAINC,''XX''), ASODNI, ASOAPENOM';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
   End;

   If rgest.ItemIndex = 2 Then  // Tipo de Reporte : Campos Modificados
   Begin
      xSql2 := ' SELECT NUMERO, ASODNI, ASOCODMOD, ASOAPENOM, ASONCTA, SITCTA, CARGO, ASOCODPAGO, '
             + '        ASOID, UPROID, UPAGOID, USEID, REGACT, ASODESLAB, REGPENID, CODAFP, '
             + '        CODMODCOLEGIO, NIVEDU_IDCOLEGIO, CARLAB, SITACT, TIPSER, ASOTIPID '
             + ' FROM ASO_PAD_DES_DET '
             + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      If rgtipinc.ItemIndex = 0 Then xSql2 := xSql2 + ' AND NVL(FLAACTASOCODMOD,''X'') = ''S''';
      If rgtipinc.ItemIndex = 1 Then xSql2 := xSql2 + ' AND NVL(FLAACTCARGO,''X'') = ''S''';
      If rgtipinc.ItemIndex = 2 Then xSql2 := xSql2 + ' AND NVL(FLAACTASOCODPAGO,''X'') = ''S''';
      If rgtipinc.ItemIndex = 3 Then xSql2 := xSql2 + ' AND NVL(FLAACTUSEID,''X'') = ''S''';
      If rgtipinc.ItemIndex = 4 Then xSql2 := xSql2 + ' AND NVL(FLAACTASONCTA,''X'') = ''S''';
      If rgtipinc.ItemIndex = 5 Then xSql2 := xSql2 + ' AND NVL(FLAACTREGPEN,''X'') = ''S''';
      If rgtipinc.ItemIndex = 6 Then xSql2 := xSql2 + ' AND NVL(FLAACTASODESLAB,''X'') = ''S''';
      If rgtipinc.ItemIndex = 7 Then xSql2 := xSql2 + ' AND NVL(FLAACTASOAPENOM,''X'') = ''S''';
      If rgtipinc.ItemIndex = 8 Then xSql2 := xSql2 + ' AND NVL(FLAACTCOLEGIO,''X'') = ''S''';
      If rgtipinc.ItemIndex = 9 Then xSql2 := xSql2 + ' AND (NVL(FLAACTASOCODMOD,''X'') = ''S'' OR NVL(FLAACTCARGO,''X'') = ''S'' OR NVL(FLAACTASOCODPAGO,''X'') = ''S'''
                                                    + ' OR NVL(FLAACTUSEID,''X'') = ''S'' OR NVL(FLAACTASONCTA,''X'') = ''S'' OR NVL(FLAACTREGPEN,''X'') = ''S'' OR NVL(FLAACTASODESLAB,''X'') = ''S'' '
                                                    + ' OR NVL(FLAACTASOAPENOM,''X'') = ''S'' OR NVL(FLAACTCOLEGIO,''X'') = ''S'')';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql2);
      DM1.cdsReporte.Open;
   End;
// Fin: DPP_201202_ASO
End;

Procedure TFestadisticas.btnExcelClick(Sender: TObject);
Begin
   DM1.HojaExcel('Resumen', DM1.dsReporte, dtgData);
End;

Procedure TFestadisticas.inicializagrid;
Begin
   DM1.cdsReporte.IndexFieldNames := '';
   If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
End;

Procedure TFestadisticas.rgtipincClick(Sender: TObject);
Begin
   inicializagrid;
End;

Procedure TFestadisticas.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

Procedure TFestadisticas.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';
   DM1.cdsQry21.Close;
   Action := caFree;
End;

End.

