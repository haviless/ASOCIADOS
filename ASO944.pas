Unit ASO944;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Db, ppDB,
   ppDBPipe, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
   ppRelatv, ppProd, ppReport, ExtCtrls, ppEndUsr, ppParameter;

Type
   TfRegApor = Class(TForm)
      GroupBox1: TGroupBox;
      lstAnoApot: TListBox;
      dtgAportes: TwwDBGrid;
      BitPrint: TBitBtn;
      RepAportes: TppReport;
      ppHeaderBand31: TppHeaderBand;
      lblTitulo: TppLabel;
      ppLabel628: TppLabel;
      ppLabel629: TppLabel;
      ppLabel630: TppLabel;
      ppLabel631: TppLabel;
      ppLabel632: TppLabel;
      ppSystemVariable62: TppSystemVariable;
      ppSystemVariable63: TppSystemVariable;
      ppSystemVariable64: TppSystemVariable;
      ppLabel633: TppLabel;
      ppLabel634: TppLabel;
      ppLabel635: TppLabel;
      ppLine156: TppLine;
      ppLine157: TppLine;
      ppDBText260: TppDBText;
      ppDBText267: TppDBText;
      lblUse: TppLabel;
      lblProc: TppLabel;
      lblTipAso: TppLabel;
      ppLabel636: TppLabel;
      ppLabel637: TppLabel;
      ppLabel638: TppLabel;
      ppLabel639: TppLabel;
      ppLabel640: TppLabel;
      ppLabel641: TppLabel;
      ppLabel642: TppLabel;
      ppLabel643: TppLabel;
      ppLabel644: TppLabel;
      ppLabel645: TppLabel;
      ppDetailBand33: TppDetailBand;
      ppDBText268: TppDBText;
      ppDBText269: TppDBText;
      ppDBText270: TppDBText;
      ppDBText271: TppDBText;
      ppDBText272: TppDBText;
      ppDBText273: TppDBText;
      ppDBText274: TppDBText;
      ppFooterBand26: TppFooterBand;
      ppSummaryBand31: TppSummaryBand;
      ppLabel646: TppLabel;
      ppDBCalc218: TppDBCalc;
      ppDBCalc219: TppDBCalc;
      ppLabel647: TppLabel;
      ppLine158: TppLine;
      ppLine159: TppLine;
      lblUsuario: TppLabel;
      ppGroup40: TppGroup;
      ppGroupHeaderBand40: TppGroupHeaderBand;
      ppDBText275: TppDBText;
      ppLabel648: TppLabel;
      ppLabel649: TppLabel;
      ppLabel650: TppLabel;
      ppLabel651: TppLabel;
      ppLabel652: TppLabel;
      ppLabel653: TppLabel;
      ppLabel654: TppLabel;
      ppLabel655: TppLabel;
      ppLine160: TppLine;
      ppLine161: TppLine;
      ppLabel656: TppLabel;
      ppLabel657: TppLabel;
      ppGroupFooterBand40: TppGroupFooterBand;
      ppDBCalc220: TppDBCalc;
      ppDBCalc221: TppDBCalc;
      ppLabel658: TppLabel;
      ppLabel659: TppLabel;
      ppLine162: TppLine;
      ppLine163: TppLine;
      DbAportes: TppDBPipeline;
      Panel1: TPanel;
      BitSalir: TBitBtn;
      dbgApo: TwwDBGrid;
      Label1: TLabel;
      BitBtn1: TBitBtn;
      ppdb2: TppDBPipeline;
      ppr2: TppReport;
      ppd2: TppDesigner;
      ppParameterList1: TppParameterList;
      ppHeaderBand1: TppHeaderBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLine1: TppLine;
      ppLine2: TppLine;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel8: TppLabel;
      ppDBText7: TppDBText;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc1: TppDBCalc;
      ppLine3: TppLine;
      ppLabel7: TppLabel;
      ppLabel9: TppLabel;
      ppDBText8: TppDBText;
      ppLabel10: TppLabel;
      ppDBText9: TppDBText;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure lstAnoApotClick(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
   Private
      { Private declarations }
      Procedure MstAportes(xAsoid, xAno: String);
   Public
      { Public declarations }
   End;

Var
   fRegApor: TfRegApor;

Implementation

Uses DateUtils, ASODM, ASO900;

{$R *.dfm}

Procedure TfRegApor.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfRegApor.FormActivate(Sender: TObject);
Var
   I: Integer;
   xSQL: String;
   xMesIni: String;
   xMesRes: String;
Begin
   For I := YearOf(DM1.FechaSys) Downto 1997 Do
   Begin
      lstAnoApot.Items.Add(IntToStr(I));
      lstAnoApot.ItemIndex := 0;
   End;
   MstAportes(DM1.cdsAso.fieldbyname('ASOID').AsString, lstAnoApot.Items.Strings[lstAnoApot.ItemIndex]);

   xMesIni := '199701';
   xMesRes := Copy(DM1.cdsAso.fieldbyname('ASOFRESNOM').AsString, 7, 4) + Copy(DM1.cdsAso.fieldbyname('ASOFRESNOM').AsString, 4, 2);
   If xMesRes > xMesIni Then
      xMesIni := xMesRes;

   xSQL := 'SELECT SUM( PORPAGAR ) POR_PAGAR '
      + '     FROM (SELECT APOANO, APOMES, C.MESDESL, APOVALOR, TRANSMTO, '
      + '                  APOVALOR-TRANSMTO PORPAGAR, CONSEL, ORDEN '
      + '             FROM (SELECT APOANO, APOMES, APOVALOR, NVL(TRANSMTO,0) TRANSMTO, '
      + '                          CONSEL, ROWNUM ORDEN '
      + '                     FROM APO117 A, (SELECT ASOID, TRANSANO, TRANSMES, '
      + '                                            SUM(NVL(TRANSMTO,0)) TRANSMTO, CONSEL '
      + '                                       FROM APO301 '
      + '                                      WHERE ASOID=''' + DM1.cdsAso.fieldbyname('ASOID').AsString + ''' '
      + '                                        AND TRANSINTID=''APO'' '
      + '                                      GROUP BY ASOID,TRANSANO,TRANSMES,CONSEL) B '
      + '                    WHERE A.APOANO=B.TRANSANO(+) '
      + '                      AND A.APOMES=B.TRANSMES(+) '
      + '                      AND A.APOANO || A.APOMES <= TO_CHAR(SYSDATE, ''YYYYMM'') ' //HPP_20090008_ASO SAR2009-0256
      + '                    ORDER BY APOANO, APOMES) A, TGE181 C '
      + '    WHERE APOVALOR<>TRANSMTO '
      + '      AND APOANO||APOMES >= ''' + xMesIni + ''''
       //+  'and APOANO||APOMES BETWEEN '''+xMesIni+''' AND ''200808'' '
   + '      AND APOVALOR>TRANSMTO '
      + '      AND A.APOMES=C.MESIDR(+)) A';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   xSQL := 'SELECT ' + QuotedStr(DM1.cdsAso.fieldbyname('ASOAPENOMDNI').AsString) + ' ASOAPENOM, '
      + '          APOANO, APOMES, C.MESDESL, APOVALOR, TRANSMTO, APOVALOR-TRANSMTO PORPAGAR, CONSEL, ORDEN '
      + '     FROM (SELECT APOANO, APOMES, APOVALOR, NVL(TRANSMTO,0) TRANSMTO, '
      + '                  CONSEL, ROWNUM ORDEN '
      + '             FROM APO117 A, ( SELECT ASOID, TRANSANO, TRANSMES, SUM(NVL(TRANSMTO,0)) TRANSMTO, CONSEL '
      + '                                FROM APO301 '
      + '                               WHERE ASOID=''' + DM1.cdsAso.fieldbyname('ASOID').AsString + ''' '
      + '                                 AND TRANSINTID=''APO'' '
      + '                               GROUP BY ASOID,TRANSANO,TRANSMES,CONSEL) B '
      + '            WHERE A.APOANO=B.TRANSANO(+) '
      + '              AND A.APOMES=B.TRANSMES(+) '
      + '              AND A.APOANO || A.APOMES <= TO_CHAR(SYSDATE, ''YYYYMM'') ' //HPP_20090008_ASO SAR2009-0256
      + '            ORDER BY APOANO, APOMES) A, TGE181 C '
      + '    WHERE APOVALOR<>TRANSMTO '
      + '      AND APOANO||APOMES >= ''' + xMesIni + ''''
      //+  'and APOANO||APOMES BETWEEN '''+xMesIni+''' AND ''200808'' '
   + '      AND APOVALOR>TRANSMTO '
      + '      AND A.APOMES=C.MESIDR(+) '
      + '    ORDER BY APOANO,APOMES';
   DM1.cdsQry20.Close;
   DM1.cdsQry20.DataRequest(xSQL);
   DM1.cdsQry20.Open;
   dbgApo.ColumnByName('MESDESL').FooterValue := 'Total Por Pagar: ';
   dbgApo.ColumnByName('PORPAGAR').FooterValue := FloatToStrF(DM1.cdsQry2.fieldByname('POR_PAGAR').AsFloat, ffNumber, 10, 2);
End;

Procedure TfRegApor.lstAnoApotClick(Sender: TObject);
Begin
   MstAportes(DM1.cdsAso.fieldbyname('ASOID').AsString, lstAnoApot.Items.Strings[lstAnoApot.ItemIndex]);
End;

Procedure TfRegApor.MstAportes(xAsoId, xAno: String);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT TRANSMES||''/''||TRANSANO PERIODO,FORPAGOABR FRMPAG, '
      + ' TRANSMTO MONTO, NVL(TRANSMTODEV,0) MONDEV, NVL(TRANSMTO,0) MONTOT, '
      + ' TRANSFOPE,USUARIO,USEID||'' - ''||USEABR USES,HREG FROM APO301 '
      + ' WHERE ASOID=' + QuotedStr(xAsoId) + ' AND TRANSANO=' + QuotedStr(xAno) + ' AND TRANSINTID=''APO'' ORDER BY TRANSANO,TRANSMES DESC ';
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest(xSQL);
   DM1.cdsCuotas.Open;
   TNumericField(DM1.cdsCuotas.fieldbyname('MONTO')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsCuotas.fieldbyname('MONDEV')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsCuotas.fieldbyname('MONTOT')).DisplayFormat := '###,###.#0';
   dtgAportes.ColumnByName('USES').FooterValue := 'N° De Registros :   ' + IntToStr(DM1.cdsCuotas.RecordCount);
End;

Procedure TfRegApor.BitPrintClick(Sender: TObject);
Var
   xSQL, xCondicion: String;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT ' + QuotedStr(DM1.cdsAso.fieldbyname('ASOAPENOM').AsString) + ' ASOAPENOM,'
      + '       ASOCODMOD,TRANSANO,TRANSMES||''/''||TRANSANO PERIODO,FORPAGOABR FRMPAG,'
      + '       TRANSMTO MONTO, NVL(TRANSMTODEV,0) MONDEV, NVL(TRANSMTO,0) MONTOT, '
      + '       TRANSFOPE,USUARIO,USEID||''- ''||USEABR USES, ' +
      'HREG FROM APO301 WHERE ASOID=' + QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString) + ' AND  TRANSINTID=''APO'' ORDER BY TRANSFOPE DESC ';
   DM1.cdsReclamoDCre.Close;
   DM1.cdsReclamoDCre.DataRequest(xSQL);
   DM1.cdsReclamoDCre.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsReclamoDCre.RecordCount > 0 Then
   Begin
      xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString)) + ' AND USEID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString)) + ' AND UPAGOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString));
      lblUse.Caption := Trim(DM1.cdsAso.FieldByName('USEID').AsString) + '- ' + DM1.CrgDescrip(xCondicion, 'APO101', 'USENOM');
      xCondicion := 'UPROID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString));
      lblProc.Caption := Trim(DM1.cdsAso.FieldByName('UPROID').AsString) + '- ' + DM1.CrgDescrip(xCondicion, 'APO102', 'UPRONOM');
      lblTipAso.Caption := Trim(DM1.cdsAso.FieldByName('ASOTIPID').AsString) + '- ' + DM1.CrgDescrip('ASOTIPID=' + QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOTIPID').AsString)), 'APO107', 'ASOTIPDES');
      lblTitulo.Caption := 'DETALLE DE APORTES REGISTRADOS  AL : ' + DateToStr(DM1.FechaSys);
      lblUsuario.Caption := 'Emitido Por : ' + DM1.wUsuario;
      RepAportes.Print;
      RepAportes.Cancel;
   End;
   DM1.cdsReclamoDCre.Close;

End;

Procedure TfRegApor.BitBtn1Click(Sender: TObject);
Begin
   ppdb2.DataSource := dm1.dsQry20;
   //ppr2.Template.FileName:='ApoDebe.rtm';
   //ppr2.Template.LoadFromFile;
   //ppd2.ShowModal;
   ppr2.Print;
   ppdb2.DataSource := Nil;
End;

Procedure TfRegApor.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsQry2.Close;
   DM1.cdsQry20.Close;
   DM1.cdsCuotas.Close;
   DM1.cdsReclamoDCre.Close;
   Action := caFree;
End;

End.

