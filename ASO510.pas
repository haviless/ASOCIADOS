// Inicio Uso Estándares   :	01/08/2011
// Unidad		            :	COB510.pas
// Formulario		         :	FRepControlCadap
// Fecha de Creación	      :	17/06/2011
// Autor			            :	Daniel Fernández
// Objetivo		            :  Reportes de Control de Cartas de Autorización de Descuento

// Actualizaciones:
// HPC_201107_ASO          : 17/06/2011 Inicio de la unidad.
// Pasa de HPC_201107_ASO a HPP_201105_ASO: Pase a producción realizado por el Supervisor de Calidad

Unit ASO510;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, ExtCtrls, Grids,
   Wwdbigrd, Wwdbgrid, Spin, DBGrids, DB, ppEndUsr, ppProd, ppClass,
   ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppVar, ppPrnabl,
   ppBands, ppCache, ppParameter;

Type
   TFRepControlCadap = Class(TForm)
      rgNivelDetalle: TRadioGroup;
      gbRangoFechas: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      bitProcesar: TBitBtn;
      BitPrint: TBitBtn;
      BitExporta: TBitBtn;
      BitSalir: TBitBtn;
      dbgResultados: TwwDBGrid;
      seAnioIni: TSpinEdit;
      seMesIni: TSpinEdit;
      Label3: TLabel;
      seAnioFin: TSpinEdit;
      Label4: TLabel;
      seMesFin: TSpinEdit;
      rgTipoReporte: TRadioGroup;
      dtgData: TDBGrid;
      ppDBPipeline1: TppDBPipeline;
      ppReport1: TppReport;
      ppDesigner1: TppDesigner;
      ppReport2: TppReport;
      ppReport3: TppReport;
      ppReport4: TppReport;
      ppReport5: TppReport;
      ppReport6: TppReport;
      ppDesigner2: TppDesigner;
      ppDesigner3: TppDesigner;
      ppDesigner4: TppDesigner;
      ppDesigner5: TppDesigner;
      ppDesigner6: TppDesigner;
      ppParameterList1: TppParameterList;
      ppParameterList2: TppParameterList;
      ppHeaderBand1: TppHeaderBand;
      ppLabel114: TppLabel;
      ppLabel115: TppLabel;
      ppLabel116: TppLabel;
      ppLabel118: TppLabel;
      ppLabel120: TppLabel;
      ppLabel121: TppLabel;
      ppLabel122: TppLabel;
      ppSystemVariable19: TppSystemVariable;
      ppSystemVariable20: TppSystemVariable;
      ppSystemVariable21: TppSystemVariable;
      ppLabel123: TppLabel;
      ppLabel124: TppLabel;
      ppLabel125: TppLabel;
      ppLine34: TppLine;
      ppLabel127: TppLabel;
      ppLine33: TppLine;
      ppLine1: TppLine;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppDBText1: TppDBText;
      ppDetailBand1: TppDetailBand;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText11: TppDBText;
      ppDBCalc1: TppDBCalc;
      ppFooterBand1: TppFooterBand;
      ppHeaderBand2: TppHeaderBand;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppLine2: TppLine;
      ppLabel16: TppLabel;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLabel21: TppLabel;
      ppDBText9: TppDBText;
      ppDetailBand2: TppDetailBand;
      ppDBText8: TppDBText;
      ppDBText10: TppDBText;
      ppDBCalc2: TppDBCalc;
      ppFooterBand2: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppDBCalc3: TppDBCalc;
      ppLine5: TppLine;
      ppLabel17: TppLabel;
      ppParameterList3: TppParameterList;
      ppParameterList4: TppParameterList;
      ppHeaderBand4: TppHeaderBand;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      ppLabel35: TppLabel;
      ppLabel36: TppLabel;
      ppLabel37: TppLabel;
      ppLabel38: TppLabel;
      ppSystemVariable7: TppSystemVariable;
      ppSystemVariable8: TppSystemVariable;
      ppSystemVariable9: TppSystemVariable;
      ppLabel39: TppLabel;
      ppLabel40: TppLabel;
      ppLabel41: TppLabel;
      ppLine10: TppLine;
      ppLabel42: TppLabel;
      ppLine11: TppLine;
      ppLine12: TppLine;
      ppLabel43: TppLabel;
      ppLabel44: TppLabel;
      ppLabel45: TppLabel;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppDBText15: TppDBText;
      ppLabel48: TppLabel;
      ppDetailBand4: TppDetailBand;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBText20: TppDBText;
      ppDBText21: TppDBText;
      ppDBText22: TppDBText;
      ppDBCalc6: TppDBCalc;
      ppDBText23: TppDBText;
      ppFooterBand4: TppFooterBand;
      ppHeaderBand3: TppHeaderBand;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppLabel20: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppSystemVariable6: TppSystemVariable;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppLine6: TppLine;
      ppLabel29: TppLabel;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLabel30: TppLabel;
      ppDBText12: TppDBText;
      ppDetailBand3: TppDetailBand;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBCalc4: TppDBCalc;
      ppFooterBand3: TppFooterBand;
      ppSummaryBand2: TppSummaryBand;
      ppDBCalc5: TppDBCalc;
      ppLine9: TppLine;
      ppLabel31: TppLabel;
      ppParameterList5: TppParameterList;
      ppParameterList6: TppParameterList;
      ppHeaderBand5: TppHeaderBand;
      ppLabel49: TppLabel;
      ppLabel50: TppLabel;
      ppLabel51: TppLabel;
      ppLabel52: TppLabel;
      ppLabel53: TppLabel;
      ppLabel54: TppLabel;
      ppLabel55: TppLabel;
      ppSystemVariable10: TppSystemVariable;
      ppSystemVariable11: TppSystemVariable;
      ppSystemVariable12: TppSystemVariable;
      ppLabel56: TppLabel;
      ppLabel57: TppLabel;
      ppLabel58: TppLabel;
      ppLine13: TppLine;
      ppLabel59: TppLabel;
      ppLine14: TppLine;
      ppLine15: TppLine;
      ppLabel60: TppLabel;
      ppDetailBand5: TppDetailBand;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppDBCalc7: TppDBCalc;
      ppFooterBand5: TppFooterBand;
      ppSummaryBand3: TppSummaryBand;
      ppDBCalc8: TppDBCalc;
      ppLine16: TppLine;
      ppLabel61: TppLabel;
      ppHeaderBand6: TppHeaderBand;
      ppLabel62: TppLabel;
      ppLabel63: TppLabel;
      ppLabel64: TppLabel;
      ppLabel65: TppLabel;
      ppLabel66: TppLabel;
      ppLabel67: TppLabel;
      ppLabel68: TppLabel;
      ppSystemVariable13: TppSystemVariable;
      ppSystemVariable14: TppSystemVariable;
      ppSystemVariable15: TppSystemVariable;
      ppLabel69: TppLabel;
      ppLabel70: TppLabel;
      ppLabel71: TppLabel;
      ppLine17: TppLine;
      ppLabel72: TppLabel;
      ppLine18: TppLine;
      ppLine19: TppLine;
      ppLabel74: TppLabel;
      ppLabel75: TppLabel;
      ppLabel76: TppLabel;
      ppLabel77: TppLabel;
      ppLabel78: TppLabel;
      ppLabel73: TppLabel;
      ppDetailBand6: TppDetailBand;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppDBText31: TppDBText;
      ppDBText32: TppDBText;
      ppDBText33: TppDBText;
      ppDBCalc9: TppDBCalc;
      ppDBText34: TppDBText;
      ppDBText24: TppDBText;
      ppFooterBand6: TppFooterBand;
      Procedure FormActivate(Sender: TObject);
      Procedure bitProcesarClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure dbgResultadosTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure BitExportaClick(Sender: TObject);
      Procedure rgTipoReporteClick(Sender: TObject);
      Procedure rgNivelDetalleClick(Sender: TObject);
      Procedure seAnioIniChange(Sender: TObject);
      Procedure seMesIniChange(Sender: TObject);
      Procedure seAnioFinChange(Sender: TObject);
      Procedure seMesFinChange(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
   Private
    { Private declarations }
      Procedure AlternarTipoReporte;
      Procedure LimpiarGrid;
      Procedure FiltrarCeroAportes;
      Procedure LimpiarCeroAportes;
      Procedure FiltrarUltimoAporte;
      Procedure LimpiarUltimoAporte;
      Procedure FiltrarSinFotoFirma;
      Procedure LimpiarSinFotoFirma;
   Public
    { Public declarations }
   End;

Var
   FRepControlCadap: TFRepControlCadap;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure TFRepControlCadap.FormActivate(Sender: TObject);
Var
   xAno, xMes, xDia: word;
Begin
   decodedate(DM1.FechaSys, xAno, xMes, xDia);
   seAnioIni.Text := inttostr(xAno);
   seMesIni.Text := DM1.StrZero(inttostr(xMes - 1), 2);
   seAnioFin.Text := inttostr(xAno);
   seMesFin.Text := DM1.StrZero(inttostr(xMes - 1), 2);

   AlternarTipoReporte;
End;

Procedure TFRepControlCadap.bitProcesarClick(Sender: TObject);
Begin
   If (seAnioIni.Text + DM1.StrZero(seMesIni.Text, 2)) > (seAnioFin.Text + DM1.StrZero(seMesFin.Text, 2)) Then
   Begin
      MessageDlg('El periodo inicial debe ser menor o igual al final', mtInformation, [mbOk], 0);
      Exit;
   End;

   If rgTipoReporte.ItemIndex = 0 Then
   Begin
      FiltrarCeroAportes;
   End
   Else
      If rgTipoReporte.ItemIndex = 1 Then
      Begin
         FiltrarUltimoAporte;
      End
      Else
         If rgTipoReporte.ItemIndex = 2 Then
         Begin
            FiltrarSinFotoFirma;
         End;
End;

Procedure TFRepControlCadap.FiltrarCeroAportes;
Var
   xSql: String;
   CantAso: Integer;
Begin
   Try
      Screen.Cursor := crHourGlass;

      If rgNivelDetalle.ItemIndex = 0 Then
      Begin
         xSql := 'SELECT ''DEL ' + seAnioIni.Text + seMesIni.Text + ' AL ' + seAnioFin.Text + seMesFin.Text + ''' TITULO,'
            + ' NVL(DPT.DPTOABR,''SIN DPTO.'') DPTOABR, UGEL.USEID UGEL, UGEL.USEABRE, COL.NOMCENEDU, ASO.ASODNI, ASO.ASOAPENOMDNI, TRUNC(ASO.FECAUTDESAPO) FECAUTDESAPO'
            + ' FROM'
            + '     APO201 ASO'
            + '         LEFT JOIN'
            + '     APO301 APO ON'
            + '     ASO.ASOID = APO.ASOID'
            + '     AND APO.TRANSANO || APO.TRANSMES BETWEEN ' + QuotedStr(seAnioIni.Text + seMesIni.Text) + ' AND ' + QuotedStr(seAnioFin.Text + seMesFin.Text)
            + '         LEFT JOIN'
            + '     APO101 UGEL ON'
            + '     ASO.UPROID = UGEL.UPROID'
            + '     AND ASO.UPAGOID = UGEL.UPAGOID'
            + '     AND ASO.USEID = UGEL.USEID'
            + '         LEFT JOIN'
            + '     ASO_CEN_EDU COL ON'
            + '     ASO.CENEDUID = COL.CENEDUID'
            + '         LEFT JOIN'
            + '     TGE158 DPT ON'
            + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
            + ' WHERE'
            + '     ASO.ASOTIPID = ''DO'''
            + '     AND NVL(ASO.AUTDESAPO,''X'') = ''S'''
            + '     AND NVL(ASO.FALLECIDO,''N'') = ''N'''
            + '     AND APO.ASOID IS NULL'
            + ' ORDER BY NVL(DPT.DPTOABR,''SIN DPTO.''), UGEL.USEABRE, COL.NOMCENEDU, ASO.ASOAPENOMDNI';

         DM1.cdsReporte.Close;
         DM1.cdsReporte.DataRequest(xSql);
         DM1.cdsReporte.Open;

         dbgResultados.Selected.Clear;
         dbgResultados.Selected.Add('DPTOABR'#9'15'#9'Departamento'#9'F'#9);
         dbgResultados.Selected.Add('UGEL'#9'4'#9'Ugel'#9'F'#9);
         dbgResultados.Selected.Add('USEABRE'#9'15'#9'Ugel Abr'#9'F'#9);
         dbgResultados.Selected.Add('NOMCENEDU'#9'25'#9'Colegio'#9'F'#9);
         dbgResultados.Selected.Add('ASODNI'#9'8'#9'DNI'#9'F'#9);
         dbgResultados.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y Nombres D.N.I.'#9'F'#9);
         dbgResultados.Selected.Add('FECAUTDESAPO'#9'10'#9'Fec.Aut.Dcto'#9'F'#9);
         dbgResultados.ApplySelected;

         dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := IntToStr(DM1.cdsReporte.RecordCount) + ' registro(s)';
      End
      Else
         If rgNivelDetalle.ItemIndex = 1 Then
         Begin
            xSql := 'SELECT ''DEL ' + seAnioIni.Text + seMesIni.Text + ' AL ' + seAnioFin.Text + seMesFin.Text + ''' TITULO,'
               + ' NVL(DPT.DPTOID,''XX'') DPTOID, NVL(MAX(DPT.DPTOABR), ''SIN DPTO.'') DPTOABR, COUNT(1) CANTASO'
               + ' FROM'
               + '     APO201 ASO'
               + '         LEFT JOIN'
               + '     APO301 APO ON'
               + '     ASO.ASOID = APO.ASOID'
               + '     AND APO.TRANSANO || APO.TRANSMES BETWEEN ' + QuotedStr(seAnioIni.Text + seMesIni.Text) + ' AND ' + QuotedStr(seAnioFin.Text + seMesFin.Text)
               + '         LEFT JOIN'
               + '     ASO_CEN_EDU COL ON'
               + '     ASO.CENEDUID = COL.CENEDUID'
               + '         LEFT JOIN'
               + '     TGE158 DPT ON'
               + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
               + ' WHERE'
               + '     ASO.ASOTIPID = ''DO'''
               + '     AND NVL(ASO.AUTDESAPO,''X'') = ''S'''
               + '     AND NVL(ASO.FALLECIDO,''N'') = ''N'''
               + '     AND APO.ASOID IS NULL'
               + ' GROUP BY NVL(DPT.DPTOID,''XX'')'
               + ' ORDER BY 1';

            DM1.cdsReporte.Close;
            DM1.cdsReporte.DataRequest(xSql);
            DM1.cdsReporte.Open;

            CantAso := 0;
            While Not DM1.cdsReporte.Eof Do
            Begin
               CantAso := CantAso + DM1.cdsReporte.FieldByName('CANTASO').AsInteger;

               DM1.cdsReporte.Next;
            End;

            dbgResultados.Selected.Clear;
            dbgResultados.Selected.Add('DPTOABR'#9'25'#9'Departamento'#9'F'#9);
            dbgResultados.Selected.Add('CANTASO'#9'10'#9'Cantidad'#9'F'#9);
            dbgResultados.ApplySelected;

            TNumericField(DM1.cdsReporte.FieldByName('CANTASO')).DisplayFormat := '###,##0';

            dbgResultados.ColumnByName('DPTOABR').FooterValue := FloatToStrF(DM1.cdsReporte.RecordCount, ffNumber, 10, 0) + ' registro(s)';
            dbgResultados.ColumnByName('CANTASO').FooterValue := FloatToStrF(CantAso, ffNumber, 10, 0);
         End;
   Finally
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFRepControlCadap.LimpiarCeroAportes;
Var
   xSql: String;
Begin
   If rgNivelDetalle.ItemIndex = 0 Then
   Begin
      xSql := 'SELECT NULL TITULO, DPT.DPTOABR, UGEL.USEID UGEL, UGEL.USEABRE, COL.NOMCENEDU, ASO.ASODNI, ASO.ASOAPENOMDNI, ASO.FECAUTDESAPO'
         + ' FROM'
         + '     APO201 ASO'
         + '         LEFT JOIN'
         + '     APO301 APO ON'
         + '     ASO.ASOID = APO.ASOID'
         + '         LEFT JOIN'
         + '     TGE158 DPT ON'
         + '     SUBSTR(ASO.ZIPID,1,2) = DPT.DPTOID'
         + '         LEFT JOIN'
         + '     APO101 UGEL ON'
         + '     ASO.UPROID = UGEL.UPROID'
         + '     AND ASO.UPAGOID = UGEL.UPAGOID'
         + '     AND ASO.USEID = UGEL.USEID'
         + '         LEFT JOIN'
         + '     ASO_CEN_EDU COL ON'
         + '     ASO.CENEDUID = COL.CENEDUID'
         + ' WHERE 1 = 2';

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      dbgResultados.Selected.Clear;
      dbgResultados.Selected.Add('DPTOABR'#9'15'#9'Departamento'#9'F'#9);
      dbgResultados.Selected.Add('UGEL'#9'4'#9'Ugel'#9'F'#9);
      dbgResultados.Selected.Add('USEABRE'#9'15'#9'Ugel Abr'#9'F'#9);
      dbgResultados.Selected.Add('NOMCENEDU'#9'25'#9'Colegio'#9'F'#9);
      dbgResultados.Selected.Add('ASODNI'#9'8'#9'DNI'#9'F'#9);
      dbgResultados.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y Nombres D.N.I.'#9'F'#9);
      dbgResultados.Selected.Add('FECAUTDESAPO'#9'10'#9'Fec.Aut.Dcto'#9'F'#9);
      dbgResultados.ApplySelected;

      dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := '';
      dbgResultados.ColumnByName('DPTOABR').FooterValue := '';
   End
   Else
   Begin
      xSql := 'SELECT NULL TITULO, NVL(DPT.DPTOID,''XX'') DPTOID, NVL(DPT.DPTOABR, ''SIN DPTO.'') DPTOABR, 0 CANTASO'
         + ' FROM'
         + '     APO201 ASO'
         + '         LEFT JOIN'
         + '     APO301 APO ON'
         + '     ASO.ASOID = APO.ASOID'
         + '         LEFT JOIN'
         + '     ASO_CEN_EDU COL ON'
         + '     ASO.CENEDUID = COL.CENEDUID'
         + '         LEFT JOIN'
         + '     TGE158 DPT ON'
         + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
         + ' WHERE 1 = 2';

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      dbgResultados.Selected.Clear;
      dbgResultados.Selected.Add('DPTOABR'#9'25'#9'Departamento'#9'F'#9);
      dbgResultados.Selected.Add('CANTASO'#9'10'#9'Cantidad'#9'F'#9);
      dbgResultados.ApplySelected;

      TNumericField(DM1.cdsReporte.FieldByName('CANTASO')).DisplayFormat := '###,##0';

    //dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := '';
      dbgResultados.ColumnByName('DPTOABR').FooterValue := '';
      dbgResultados.ColumnByName('CANTASO').FooterValue := '';
   End;
End;

Procedure TFRepControlCadap.FiltrarUltimoAporte;
Var
   xSql: String;
   CantAso: Integer;
Begin
   Try
      Screen.Cursor := crHourGlass;

      If rgNivelDetalle.ItemIndex = 0 Then
      Begin
         xSql := 'SELECT ''DEL ' + seAnioIni.Text + seMesIni.Text + ' AL ' + seAnioFin.Text + seMesFin.Text + ''' TITULO,'
            + ' NVL(DPT.DPTOABR,''SIN DPTO.'') DPTOABR, UGEL.USEID UGEL, UGEL.USEABRE, COL.NOMCENEDU, ASO.ASODNI, ASO.ASOAPENOMDNI, TRUNC(ASO.FECAUTDESAPO) FECAUTDESAPO,'
            + ' APO.APOSEC, APO.TRANSFOPE'
            + ' FROM'
            + '     APO201 ASO'
            + '         INNER JOIN'
            + '     APO301 APO ON'
            + '     ASO.ASOID = APO.ASOID'
            + '         LEFT JOIN'
            + '     APO101 UGEL ON'
            + '     ASO.UPROID = UGEL.UPROID'
            + '     AND ASO.UPAGOID = UGEL.UPAGOID'
            + '     AND ASO.USEID = UGEL.USEID'
            + '         LEFT JOIN'
            + '     ASO_CEN_EDU COL ON'
            + '     ASO.CENEDUID = COL.CENEDUID'
            + '         LEFT JOIN'
            + '     TGE158 DPT ON'
            + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
            + ' WHERE'
            + '     ASO.ASOTIPID = ''DO'''
            + '     AND NVL(ASO.AUTDESAPO,''X'') = ''S'''
            + '     AND NVL(ASO.FALLECIDO,''N'') = ''N'''
            + '     AND APO.TRANSANO || APO.TRANSMES BETWEEN ' + QuotedStr(seAnioIni.Text + seMesIni.Text) + ' AND ' + QuotedStr(seAnioFin.Text + seMesFin.Text)
            + '     AND (APO.TRANSANO || APO.TRANSMES) = (SELECT MAX(B.TRANSANO || B.TRANSMES) FROM APO301 B WHERE B.ASOID = ASO.ASOID)'
            + ' ORDER BY NVL(DPT.DPTOABR,''SIN DPTO.''), UGEL.USEABRE, COL.NOMCENEDU, ASO.ASOAPENOMDNI';

         DM1.cdsReporte.Close;
         DM1.cdsReporte.DataRequest(xSql);
         DM1.cdsReporte.Open;

         dbgResultados.Selected.Clear;
         dbgResultados.Selected.Add('DPTOABR'#9'15'#9'Departamento'#9'F'#9);
         dbgResultados.Selected.Add('UGEL'#9'4'#9'Ugel'#9'F'#9);
         dbgResultados.Selected.Add('USEABRE'#9'15'#9'Ugel Abr'#9'F'#9);
         dbgResultados.Selected.Add('NOMCENEDU'#9'25'#9'Colegio'#9'F'#9);
         dbgResultados.Selected.Add('ASODNI'#9'8'#9'DNI'#9'F'#9);
         dbgResultados.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y Nombres D.N.I.'#9'F'#9);
         dbgResultados.Selected.Add('FECAUTDESAPO'#9'10'#9'Fec.Aut.Dcto'#9'F'#9);
         dbgResultados.Selected.Add('APOSEC'#9'8'#9'Per.Apo.'#9'F'#9);
         dbgResultados.Selected.Add('TRANSFOPE'#9'10'#9'Fec.Ope.'#9'F'#9);
         dbgResultados.ApplySelected;

         dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := IntToStr(DM1.cdsReporte.RecordCount) + ' registro(s)';
      End
      Else
         If rgNivelDetalle.ItemIndex = 1 Then
         Begin
            xSql := 'SELECT ''DEL ' + seAnioIni.Text + seMesIni.Text + ' AL ' + seAnioFin.Text + seMesFin.Text + ''' TITULO,'
               + ' NVL(DPT.DPTOID,''XX'') DPTOID, NVL(MAX(DPT.DPTOABR), ''SIN DPTO.'') DPTOABR, COUNT(1) CANTASO'
               + ' FROM'
               + '     APO201 ASO'
               + '         INNER JOIN'
               + '     APO301 APO ON'
               + '     ASO.ASOID = APO.ASOID'
               + '         LEFT JOIN'
               + '     APO101 UGEL ON'
               + '     ASO.UPROID = UGEL.UPROID'
               + '     AND ASO.UPAGOID = UGEL.UPAGOID'
               + '     AND ASO.USEID = UGEL.USEID'
               + '         LEFT JOIN'
               + '     ASO_CEN_EDU COL ON'
               + '     ASO.CENEDUID = COL.CENEDUID'
               + '         LEFT JOIN'
               + '     TGE158 DPT ON'
               + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
               + ' WHERE'
               + '     ASO.ASOTIPID = ''DO'''
               + '     AND NVL(ASO.AUTDESAPO,''X'') = ''S'''
               + '     AND NVL(ASO.FALLECIDO,''N'') = ''N'''
               + '     AND APO.TRANSANO || APO.TRANSMES BETWEEN ' + QuotedStr(seAnioIni.Text + seMesIni.Text) + ' AND ' + QuotedStr(seAnioFin.Text + seMesFin.Text)
               + '     AND (APO.TRANSANO || APO.TRANSMES) = (SELECT MAX(B.TRANSANO || B.TRANSMES) FROM APO301 B WHERE B.ASOID = ASO.ASOID)'
               + ' GROUP BY NVL(DPT.DPTOID,''XX'')'
               + ' ORDER BY 1';

            DM1.cdsReporte.Close;
            DM1.cdsReporte.DataRequest(xSql);
            DM1.cdsReporte.Open;

            CantAso := 0;
            While Not DM1.cdsReporte.Eof Do
            Begin
               CantAso := CantAso + DM1.cdsReporte.FieldByName('CANTASO').AsInteger;

               DM1.cdsReporte.Next;
            End;

            dbgResultados.Selected.Clear;
            dbgResultados.Selected.Add('DPTOABR'#9'25'#9'Departamento'#9'F'#9);
            dbgResultados.Selected.Add('CANTASO'#9'10'#9'Cantidad'#9'F'#9);
            dbgResultados.ApplySelected;

            TNumericField(DM1.cdsReporte.FieldByName('CANTASO')).DisplayFormat := '###,##0';

            dbgResultados.ColumnByName('DPTOABR').FooterValue := FloatToStrF(DM1.cdsReporte.RecordCount, ffNumber, 10, 0) + ' registro(s)';
            dbgResultados.ColumnByName('CANTASO').FooterValue := FloatToStrF(CantAso, ffNumber, 10, 0);
         End;
   Finally
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFRepControlCadap.LimpiarUltimoAporte;
Var
   xSql: String;
Begin
   If rgNivelDetalle.ItemIndex = 0 Then
   Begin
      xSql := 'SELECT NULL TITULO, NVL(DPT.DPTOABR,''SIN DPTO.'') DPTOABR, UGEL.USEID UGEL, UGEL.USEABRE, COL.NOMCENEDU, ASO.ASODNI, ASO.ASOAPENOMDNI, TRUNC(ASO.FECAUTDESAPO) FECAUTDESAPO,'
         + ' APO.APOSEC, APO.TRANSFOPE'
         + ' FROM'
         + '     APO201 ASO'
         + '         INNER JOIN'
         + '     APO301 APO ON'
         + '     ASO.ASOID = APO.ASOID'
         + '         LEFT JOIN'
         + '     APO101 UGEL ON'
         + '     ASO.UPROID = UGEL.UPROID'
         + '     AND ASO.UPAGOID = UGEL.UPAGOID'
         + '     AND ASO.USEID = UGEL.USEID'
         + '         LEFT JOIN'
         + '     ASO_CEN_EDU COL ON'
         + '     ASO.CENEDUID = COL.CENEDUID'
         + '         LEFT JOIN'
         + '     TGE158 DPT ON'
         + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
         + ' WHERE 1 = 2';

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      dbgResultados.Selected.Clear;
      dbgResultados.Selected.Add('DPTOABR'#9'15'#9'Departamento'#9'F'#9);
      dbgResultados.Selected.Add('UGEL'#9'4'#9'Ugel'#9'F'#9);
      dbgResultados.Selected.Add('USEABRE'#9'15'#9'Ugel Abr'#9'F'#9);
      dbgResultados.Selected.Add('NOMCENEDU'#9'25'#9'Colegio'#9'F'#9);
      dbgResultados.Selected.Add('ASODNI'#9'8'#9'DNI'#9'F'#9);
      dbgResultados.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y Nombres D.N.I.'#9'F'#9);
      dbgResultados.Selected.Add('FECAUTDESAPO'#9'10'#9'Fec.Aut.Dcto'#9'F'#9);
      dbgResultados.Selected.Add('APOSEC'#9'8'#9'Per.Apo.'#9'F'#9);
      dbgResultados.Selected.Add('TRANSFOPE'#9'10'#9'Fec.Ope.'#9'F'#9);
      dbgResultados.ApplySelected;

      dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := '';
      dbgResultados.ColumnByName('DPTOABR').FooterValue := '';
      dbgResultados.ColumnByName('CANTASO').FooterValue := '';
   End
   Else
   Begin
      xSql := 'SELECT NULL TITULO, NVL(DPT.DPTOID,''XX'') DPTOID, NVL(DPT.DPTOABR, ''SIN DPTO.'') DPTOABR, 0 CANTASO'
         + ' FROM'
         + '     APO201 ASO'
         + '         INNER JOIN'
         + '     APO301 APO ON'
         + '     ASO.ASOID = APO.ASOID'
         + '         LEFT JOIN'
         + '     APO101 UGEL ON'
         + '     ASO.UPROID = UGEL.UPROID'
         + '     AND ASO.UPAGOID = UGEL.UPAGOID'
         + '     AND ASO.USEID = UGEL.USEID'
         + '         LEFT JOIN'
         + '     ASO_CEN_EDU COL ON'
         + '     ASO.CENEDUID = COL.CENEDUID'
         + '         LEFT JOIN'
         + '     TGE158 DPT ON'
         + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
         + ' WHERE 1 = 2';

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      dbgResultados.Selected.Clear;
      dbgResultados.Selected.Add('DPTOABR'#9'25'#9'Departamento'#9'F'#9);
      dbgResultados.Selected.Add('CANTASO'#9'10'#9'Cantidad'#9'F'#9);
      dbgResultados.ApplySelected;

      TNumericField(DM1.cdsReporte.FieldByName('CANTASO')).DisplayFormat := '###,##0';

      dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := '';
      dbgResultados.ColumnByName('DPTOABR').FooterValue := '';
      dbgResultados.ColumnByName('CANTASO').FooterValue := '';
   End;
End;

Procedure TFRepControlCadap.FiltrarSinFotoFirma;
Var
   xSql: String;
   CantAso: Integer;
Begin
   Try
      Screen.Cursor := crHourGlass;

      If rgNivelDetalle.ItemIndex = 0 Then
      Begin
         xSql := 'SELECT NVL(DPT.DPTOABR,''SIN DPTO.'') DPTOABR, UGEL.USEID UGEL, UGEL.USEABRE, COL.NOMCENEDU, ASO.ASODNI, ASO.ASOAPENOMDNI, TRUNC(ASO.FECAUTDESAPO) FECAUTDESAPO,'
            + ' TRUNC(C.FECAUTCRE) FECAUTCRE, C.CREMTOOTOR, C.USUARIO'
            + ' FROM'
            + '     APO201 ASO'
            + '         LEFT JOIN'
            + '     INF_RENIEC_CAP FT ON'
            + '     ASO.ASODNI = FT.DNI'
            + '         INNER JOIN'
            + '     CRE301 C ON'
            + '     ASO.ASOID = C.ASOID'
            + '         LEFT JOIN'
            + '     APO101 UGEL ON'
            + '     ASO.UPROID = UGEL.UPROID'
            + '     AND ASO.UPAGOID = UGEL.UPAGOID'
            + '     AND ASO.USEID = UGEL.USEID'
            + '         LEFT JOIN'
            + '     ASO_CEN_EDU COL ON'
            + '     ASO.CENEDUID = COL.CENEDUID'
            + '         LEFT JOIN'
            + '     TGE158 DPT ON'
            + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
            + ' WHERE'
            + '     NVL(ASO.FALLECIDO,''N'') = ''N'' AND ASO.IDIMAGE IS NULL'
            + '     AND (FT.DNI IS NULL OR (FT.FOTO IS NULL AND FT.FIRMA IS NULL))'
            + '     AND C.CREESTID IN (''01'', ''02'')'
            + '     AND C.CREDID = (SELECT MAX(C2.CREDID) FROM CRE301 C2 WHERE C2.ASOID = C.ASOID AND C2.CREESTID IN (''01'', ''02''))'
            + ' ORDER BY NVL(DPT.DPTOABR,''SIN DPTO.''), UGEL.USEABRE, COL.NOMCENEDU, ASO.ASOAPENOMDNI';

         DM1.cdsReporte.Close;
         DM1.cdsReporte.DataRequest(xSql);
         DM1.cdsReporte.Open;

         dbgResultados.Selected.Clear;
         dbgResultados.Selected.Add('DPTOABR'#9'15'#9'Departamento'#9'F'#9);
         dbgResultados.Selected.Add('UGEL'#9'4'#9'Ugel'#9'F'#9);
         dbgResultados.Selected.Add('USEABRE'#9'15'#9'Ugel Abr'#9'F'#9);
         dbgResultados.Selected.Add('NOMCENEDU'#9'25'#9'Colegio'#9'F'#9);
         dbgResultados.Selected.Add('ASODNI'#9'8'#9'DNI'#9'F'#9);
         dbgResultados.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y Nombres D.N.I.'#9'F'#9);
         dbgResultados.Selected.Add('FECAUTCRE'#9'10'#9'Fec.Aut.Cred'#9'F'#9);
         dbgResultados.Selected.Add('CREMTOOTOR'#9'10'#9'Mon.Otorga'#9'F'#9);
         dbgResultados.Selected.Add('USUARIO'#9'15'#9'Usu.Otorga'#9'F'#9);
         dbgResultados.ApplySelected;

         dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := IntToStr(DM1.cdsReporte.RecordCount) + ' registro(s)';
      End
      Else
         If rgNivelDetalle.ItemIndex = 1 Then
         Begin
            xSql := 'SELECT NVL(DPT.DPTOID,''XX'') DPTOID, NVL(MAX(DPT.DPTOABR), ''SIN DPTO.'') DPTOABR, COUNT(1) CANTASO'
               + ' FROM'
               + '     APO201 ASO'
               + '         LEFT JOIN'
               + '     INF_RENIEC_CAP FT ON'
               + '     ASO.ASODNI = FT.DNI'
               + '         INNER JOIN'
               + '     CRE301 C ON'
               + '     ASO.ASOID = C.ASOID'
               + '         LEFT JOIN'
               + '     APO101 UGEL ON'
               + '     ASO.UPROID = UGEL.UPROID'
               + '     AND ASO.UPAGOID = UGEL.UPAGOID'
               + '     AND ASO.USEID = UGEL.USEID'
               + '         LEFT JOIN'
               + '     ASO_CEN_EDU COL ON'
               + '     ASO.CENEDUID = COL.CENEDUID'
               + '         LEFT JOIN'
               + '     TGE158 DPT ON'
               + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
               + ' WHERE'
               + '     NVL(ASO.FALLECIDO,''N'') = ''N'' AND ASO.IDIMAGE IS NULL'
               + '     AND (FT.DNI IS NULL OR (FT.FOTO IS NULL AND FT.FIRMA IS NULL))'
               + '     AND C.CREESTID IN (''01'', ''02'')'
               + '     AND C.CREDID = (SELECT MAX(C2.CREDID) FROM CRE301 C2 WHERE C2.ASOID = C.ASOID AND C2.CREESTID IN (''01'', ''02''))'
               + ' GROUP BY NVL(DPT.DPTOID,''XX'')'
               + ' ORDER BY 1';

            DM1.cdsReporte.Close;
            DM1.cdsReporte.DataRequest(xSql);
            DM1.cdsReporte.Open;

            CantAso := 0;
            While Not DM1.cdsReporte.Eof Do
            Begin
               CantAso := CantAso + DM1.cdsReporte.FieldByName('CANTASO').AsInteger;

               DM1.cdsReporte.Next;
            End;

            dbgResultados.Selected.Clear;
            dbgResultados.Selected.Add('DPTOABR'#9'25'#9'Departamento'#9'F'#9);
            dbgResultados.Selected.Add('CANTASO'#9'10'#9'Cantidad'#9'F'#9);
            dbgResultados.ApplySelected;

            TNumericField(DM1.cdsReporte.FieldByName('CANTASO')).DisplayFormat := '###,##0';

            dbgResultados.ColumnByName('DPTOABR').FooterValue := FloatToStrF(DM1.cdsReporte.RecordCount, ffNumber, 10, 0) + ' registro(s)';
            dbgResultados.ColumnByName('CANTASO').FooterValue := FloatToStrF(CantAso, ffNumber, 10, 0);
         End;
   Finally
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFRepControlCadap.LimpiarSinFotoFirma;
Var
   xSql: String;
Begin
   If rgNivelDetalle.ItemIndex = 0 Then
   Begin
      xSql := 'SELECT NVL(DPT.DPTOABR,''SIN DPTO.'') DPTOABR, UGEL.USEID UGEL, UGEL.USEABRE, COL.NOMCENEDU, ASO.ASODNI, ASO.ASOAPENOMDNI, TRUNC(ASO.FECAUTDESAPO) FECAUTDESAPO,'
         + ' TRUNC(C.FECAUTCRE) FECAUTCRE, C.CREMTOOTOR, C.USUARIO'
         + ' FROM'
         + '     APO201 ASO'
         + '         LEFT JOIN'
         + '     INF_RENIEC_CAP FT ON'
         + '     ASO.ASODNI = FT.DNI'
         + '         INNER JOIN'
         + '     CRE301 C ON'
         + '     ASO.ASOID = C.ASOID'
         + '         LEFT JOIN'
         + '     APO101 UGEL ON'
         + '     ASO.UPROID = UGEL.UPROID'
         + '     AND ASO.UPAGOID = UGEL.UPAGOID'
         + '     AND ASO.USEID = UGEL.USEID'
         + '         LEFT JOIN'
         + '     ASO_CEN_EDU COL ON'
         + '     ASO.CENEDUID = COL.CENEDUID'
         + '         LEFT JOIN'
         + '     TGE158 DPT ON'
         + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
         + ' WHERE 1 = 2';

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      dbgResultados.Selected.Clear;
      dbgResultados.Selected.Add('DPTOABR'#9'15'#9'Departamento'#9'F'#9);
      dbgResultados.Selected.Add('UGEL'#9'4'#9'Ugel'#9'F'#9);
      dbgResultados.Selected.Add('USEABRE'#9'15'#9'Ugel Abr'#9'F'#9);
      dbgResultados.Selected.Add('NOMCENEDU'#9'25'#9'Colegio'#9'F'#9);
      dbgResultados.Selected.Add('ASODNI'#9'8'#9'DNI'#9'F'#9);
      dbgResultados.Selected.Add('ASOAPENOMDNI'#9'35'#9'Apellidos y Nombres D.N.I.'#9'F'#9);
      dbgResultados.Selected.Add('FECAUTCRE'#9'10'#9'Fec.Aut.Cred'#9'F'#9);
      dbgResultados.Selected.Add('CREMTOOTOR'#9'10'#9'Mon.Otorga'#9'F'#9);
      dbgResultados.Selected.Add('USUARIO'#9'15'#9'Usu.Otorga'#9'F'#9);
      dbgResultados.ApplySelected;

      dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := '';
      dbgResultados.ColumnByName('DPTOABR').FooterValue := '';
      dbgResultados.ColumnByName('CANTASO').FooterValue := '';
   End
   Else
   Begin
      xSql := 'SELECT NVL(DPT.DPTOID,''XX'') DPTOID, NVL(DPT.DPTOABR, ''SIN DPTO.'') DPTOABR, 0 CANTASO'
         + ' FROM'
         + '     APO201 ASO'
         + '         LEFT JOIN'
         + '     INF_RENIEC_CAP FT ON'
         + '     ASO.ASODNI = FT.DNI'
         + '         INNER JOIN'
         + '     CRE301 C ON'
         + '     ASO.ASOID = C.ASOID'
         + '         LEFT JOIN'
         + '     APO101 UGEL ON'
         + '     ASO.UPROID = UGEL.UPROID'
         + '     AND ASO.UPAGOID = UGEL.UPAGOID'
         + '     AND ASO.USEID = UGEL.USEID'
         + '         LEFT JOIN'
         + '     ASO_CEN_EDU COL ON'
         + '     ASO.CENEDUID = COL.CENEDUID'
         + '         LEFT JOIN'
         + '     TGE158 DPT ON'
         + '     SUBSTR(COL.UBIGEO_DIR,1,2) = DPT.DPTOID'
         + ' WHERE 1 = 2';

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      dbgResultados.Selected.Clear;
      dbgResultados.Selected.Add('DPTOABR'#9'25'#9'Departamento'#9'F'#9);
      dbgResultados.Selected.Add('CANTASO'#9'10'#9'Cantidad'#9'F'#9);
      dbgResultados.ApplySelected;

      TNumericField(DM1.cdsReporte.FieldByName('CANTASO')).DisplayFormat := '###,##0';

      dbgResultados.ColumnByName('ASOAPENOMDNI').FooterValue := '';
      dbgResultados.ColumnByName('DPTOABR').FooterValue := '';
      dbgResultados.ColumnByName('CANTASO').FooterValue := '';
   End;
End;

Procedure TFRepControlCadap.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFRepControlCadap.dbgResultadosTitleButtonClick(Sender: TObject;
   AFieldName: String);
Begin
   DM1.cdsReporte.IndexFieldNames := AFieldName;
End;

Procedure TFRepControlCadap.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsReporte.IndexfieldNames := '';
   DM1.cdsReporte.Close;
End;

Procedure TFRepControlCadap.BitExportaClick(Sender: TObject);
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

Procedure TFRepControlCadap.rgTipoReporteClick(Sender: TObject);
Begin
   AlternarTipoReporte;
End;

Procedure TFRepControlCadap.AlternarTipoReporte;
Begin
   If rgTipoReporte.ItemIndex = 0 Then
   Begin
      gbRangoFechas.Caption := 'Con Cero Aportes durante el Periodo';
      LimpiarCeroAportes;
      seAnioIni.Enabled := true;
      seMesIni.Enabled := true;
      seAnioFin.Enabled := true;
      seMesFin.Enabled := true;
   End
   Else
      If rgTipoReporte.ItemIndex = 1 Then
      Begin
         gbRangoFechas.Caption := 'Con Último aporte durante el Periodo';
         LimpiarUltimoAporte;
         seAnioIni.Enabled := true;
         seMesIni.Enabled := true;
         seAnioFin.Enabled := true;
         seMesFin.Enabled := true;
      End
      Else
         If rgTipoReporte.ItemIndex = 2 Then
         Begin
            gbRangoFechas.Caption := 'Con Crédito vigente durante el Periodo';
            LimpiarSinFotoFirma;
            seAnioIni.Enabled := false;
            seMesIni.Enabled := false;
            seAnioFin.Enabled := false;
            seMesFin.Enabled := false;
         End;
End;

Procedure TFRepControlCadap.LimpiarGrid;
Begin
   If rgTipoReporte.ItemIndex = 0 Then
   Begin
      LimpiarCeroAportes;
   End
   Else
      If rgTipoReporte.ItemIndex = 1 Then
      Begin
         LimpiarUltimoAporte;
      End
      Else
         If rgTipoReporte.ItemIndex = 2 Then
         Begin
            LimpiarSinFotoFirma;
         End;
End;

Procedure TFRepControlCadap.rgNivelDetalleClick(Sender: TObject);
Begin
   LimpiarGrid;
End;

Procedure TFRepControlCadap.seAnioIniChange(Sender: TObject);
Begin
   LimpiarGrid;
End;

Procedure TFRepControlCadap.seMesIniChange(Sender: TObject);
Begin
   seMesIni.Text := DM1.StrZero(seMesIni.Text, 2);
   LimpiarGrid;
End;

Procedure TFRepControlCadap.seAnioFinChange(Sender: TObject);
Begin
   LimpiarGrid;
End;

Procedure TFRepControlCadap.seMesFinChange(Sender: TObject);
Begin
   seMesFin.Text := DM1.StrZero(seMesFin.Text, 2);
   LimpiarGrid;
End;

Procedure TFRepControlCadap.BitPrintClick(Sender: TObject);
Begin
   If DM1.cdsReporte.RecordCount <= 0 Then
   Begin
      MessageDlg('No existe información', mtInformation, [mbOk], 0);
      Exit;
   End;

   If rgTipoReporte.ItemIndex = 0 Then
   Begin
      If rgNivelDetalle.ItemIndex = 0 Then
      Begin
         ppReport1.Print;
         ppReport1.Cancel;
      //ppDesigner1.ShowModal;
      End
      Else
      Begin
         ppReport2.Print;
         ppReport2.Cancel;
      //ppDesigner2.ShowModal;
      End;
   End
   Else
      If rgTipoReporte.ItemIndex = 1 Then
      Begin
         If rgNivelDetalle.ItemIndex = 0 Then
         Begin
            ppReport3.Print;
            ppReport3.Cancel;
      //ppDesigner3.ShowModal;
         End
         Else
         Begin
            ppReport4.Print;
            ppReport4.Cancel;
      //ppDesigner4.ShowModal;
         End;
      End
      Else
      Begin
         If rgNivelDetalle.ItemIndex = 0 Then
         Begin
            ppReport5.Print;
            ppReport5.Cancel;
      //ppDesigner5.ShowModal;
         End
         Else
         Begin
            ppReport6.Print;
            ppReport6.Cancel;
      //ppDesigner6.ShowModal;
         End;
      End
End;

procedure TFRepControlCadap.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;

end;

End.

