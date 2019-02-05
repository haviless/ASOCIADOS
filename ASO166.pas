// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO001.pas
// Formulario              :  FRepNueAso
// Fecha de Creación       :  
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  VALIDACION DE CUENTAS
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES
// HPC_201707_ASO : Mejoras en los repores Estadistica de Nuevos Asociados

Unit ASO166;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, wwdblook, Wwdbdlg,
   Wwdbcomb, ToolWin, shellapi, wwExport, Grids, Wwdbigrd,
   Wwdbgrid, wwdbdatetimepicker, ppCtrls, ppVar, ppPrnabl, ppClass, ppBands,
   ppCache, ppDB, ppDBPipe, ppDBBDE, ppComm, ppRelatv, ppProd, ppReport;

Type
   TFRepNueAso = Class(TForm)
      GroupBox1: TGroupBox;
      btnprocesar: TBitBtn;
      dbgreporte: TwwDBGrid;
      btnaexcel: TBitBtn;
      btnimprimir: TBitBtn;
      btncerrar: TBitBtn;
      rgtipo: TRadioGroup;
      pprrepdet: TppReport;
      ppbdepreporte: TppBDEPipeline;
      pprrepres: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppLabel1: TppLabel;
      ppLabel2: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      pplfecha: TppLabel;
      ppLabel4: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppShape1: TppShape;
      ppShape2: TppShape;
      ppShape3: TppShape;
      ppShape4: TppShape;
      ppLabel3: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppShape5: TppShape;
      ppLabel15: TppLabel;
      ppShape6: TppShape;
      ppLabel16: TppLabel;
      ppShape7: TppShape;
      ppLabel17: TppLabel;
      ppShape8: TppShape;
      ppLabel18: TppLabel;
      ppShape9: TppShape;
      ppLabel19: TppLabel;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppHeaderBand2: TppHeaderBand;
      ppDetailBand2: TppDetailBand;
      pplimpresopor: TppLabel;
      ppLine1: TppLine;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel23: TppLabel;
      pplfechares: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppSystemVariable4: TppSystemVariable;
      ppSystemVariable5: TppSystemVariable;
      ppSystemVariable6: TppSystemVariable;
      ppLabel28: TppLabel;
      ppLabel29: TppLabel;
      ppLabel30: TppLabel;
      ppShape10: TppShape;
      ppShape11: TppShape;
      ppShape12: TppShape;
      ppShape13: TppShape;
      ppLabel31: TppLabel;
      ppLabel32: TppLabel;
      ppLabel33: TppLabel;
      ppLabel34: TppLabel;
      ppShape14: TppShape;
      ppLabel35: TppLabel;
      ppShape17: TppShape;
      ppLabel38: TppLabel;
      ppShape15: TppShape;
      ppLabel36: TppLabel;
      ppShape16: TppShape;
      ppLabel37: TppLabel;
      ppShape18: TppShape;
      ppLabel39: TppLabel;
      ppShape19: TppShape;
      ppLabel40: TppLabel;
      ppShape20: TppShape;
      ppLabel41: TppLabel;
      ppShape21: TppShape;
      ppLabel42: TppLabel;
      ppSummaryBand2: TppSummaryBand;
      ppLine2: TppLine;
      pplimpresoporres: TppLabel;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppDBText19: TppDBText;
      ppDBCalc1: TppDBCalc;
      ppLine3: TppLine;
      ppDBCalc2: TppDBCalc;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppDBCalc5: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      rgtipreppri: TRadioGroup;
      GroupBox2: TGroupBox;
      Label1: TLabel;
      Label3: TLabel;
      dbdtpinicio: TwwDBDateTimePicker;
      Label2: TLabel;
      Label4: TLabel;
      dbdtpfinal: TwwDBDateTimePicker;
      GroupBox3: TGroupBox;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Label8: TLabel;
      Label11: TLabel;
      Label9: TLabel;
      dblcdDptoId: TwwDBLookupComboDlg;
      dblcdUniPro: TwwDBLookupComboDlg;
      dblcdUniPag: TwwDBLookupComboDlg;
      dblcdUniGes: TwwDBLookupComboDlg;
      Panel1: TPanel;
      edtdesdep: TEdit;
      Panel2: TPanel;
      edtunipronom: TEdit;
      Panel3: TPanel;
      edtunipagnom: TEdit;
      Panel4: TPanel;
      edtunigesnom: TEdit;
      Label13: TLabel;
      Label14: TLabel;
      Procedure FormActivate(Sender: TObject);
      Procedure dblcdDptoIdExit(Sender: TObject);
      Procedure dblcdUniProExit(Sender: TObject);
      Procedure dblcdUniPagExit(Sender: TObject);
      Procedure dblcdUniGesExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnprocesarClick(Sender: TObject);
      Procedure btncerrarClick(Sender: TObject);
      Procedure btnaexcelClick(Sender: TObject);
      Procedure btnimprimirClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure rgtipreppriClick(Sender: TObject);
      Procedure rgtipoClick(Sender: TObject);
      Procedure dbdtpinicioExit(Sender: TObject);
      Procedure dbdtpfinalExit(Sender: TObject);
   Private
      Procedure inicializa;
      Procedure cargardepartamento;
      Procedure cargaunipro(xdptoid: String);
      Procedure cargarunipag(xunipro: String);
      Procedure cargaruniges(xunipro: String; xuniges: String);
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FRepNueAso: TFRepNueAso;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure TFRepNueAso.cargardepartamento;
Var
   xSql: String;
Begin
   xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTODES';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSql);
   DM1.cdsDpto.Open;
   dblcdDptoid.Selected.Clear;
   dblcdDptoid.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
   dblcdDptoid.Selected.Add('DPTODES'#9'30'#9'Descripción'#9#9);
End;

Procedure TFRepNueAso.FormActivate(Sender: TObject);
Begin
   inicializa;
   cargardepartamento;
   btnaexcel.Enabled := False;
   btnimprimir.Enabled := False;
   rgtipo.ItemIndex := 0;
// HPP_200901_ASO 2009 IR  MEMO 239-2008-DM-EPS
   If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
End;

Procedure TFRepNueAso.cargaunipro(xdptoid: String);
Var
   xSql: String;
Begin
   dblcdUniPro.Enabled := True;
   dblcdUniPro.Color := clWhite;
   edtunipronom.Color := clWhite;
   xSql := 'SELECT B.UPROID, B.UPRONOM '
          +'FROM APO101 A, APO102 B '
          +'WHERE A.DPTOID = '+ QuotedStr(xdptoid)
          +'  AND A.UPROID = B.UPROID '
          +'GROUP BY B.UPROID, B.UPRONOM ';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSql);
   DM1.cdsUPro.Open;
   dblcdUniPro.Selected.Clear;
   dblcdUniPro.Selected.Add('UPROID'#9'2'#9'Código'#9#9);
   dblcdUniPro.Selected.Add('UPRONOM'#9'30'#9'Descripción'#9#9);
End;

Procedure TFRepNueAso.cargarunipag(xunipro: String);
Var
   xSql: String;
Begin
   dblcdUniPag.Enabled := True;
   dblcdUniPag.Color := clWhite;
   edtunipagnom.Color := clWhite;
   xSql := 'SELECT UPROID, UPAGOID, UPAGONOM '
          +'FROM APO103 '
          +'WHERE UPROID = '+QuotedStr(xunipro)+' '
          +'ORDER BY UPAGONOM';
   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSql);
   DM1.cdsUPago.Open;
   dblcdUniPag.Selected.Clear;
   dblcdUniPag.Selected.Add('UPAGOID'#9'2'#9'Código'#9#9);
   dblcdUniPag.Selected.Add('UPAGONOM'#9'30'#9'Descripción'#9#9);
   edtunipronom.Color := clWhite;
   dblcdUniPro.Color := clWhite;
End;

Procedure TFRepNueAso.cargaruniges(xunipro, xuniges: String);
Var
   xSql: String;
Begin
   dblcdUniGes.Enabled := True;
   dblcdUniGes.Color := clWhite;
   edtunigesnom.Color := clWhite;
   xSql := 'SELECT UPROID, UPAGOID, USEID, USENOM '
          +' FROM APO101 '
          +' WHERE UPROID = ' + QuotedStr(xunipro)
          +'  AND UPAGOID = ' + QuotedStr(xuniges)
          +' ORDER BY USENOM';
   DM1.cdsUSES.Close;
   DM1.cdsUSES.DataRequest(xSql);
   DM1.cdsUSES.Open;
   dblcdUniGes.Selected.Clear;
   dblcdUniGes.Selected.Add('USEID'#9'2'#9'Código'#9#9);
   dblcdUniGes.Selected.Add('USENOM'#9'30'#9'Descripción'#9#9);
End;

Procedure TFRepNueAso.dblcdDptoIdExit(Sender: TObject);
Begin
   If DM1.cdsDpto.Locate('DPTOID', dblcdDptoId.Text, []) Then
   Begin
      cargaunipro(dblcdDptoId.Text);
      edtdesdep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
      dblcdUniPro.Text := '';
      edtunipronom.Text := '';
      dblcdUniPro.Enabled := True;
      dblcdUniPro.Color := clWhite;
      dblcdUniPag.Text := '';
      edtunipagnom.Text := '';
      dblcdUniPag.Enabled := False;
      dblcdUniPag.Color := clSilver;
      dblcdUniGes.Text := '';
      edtunigesnom.Text := '';
      dblcdUniGes.Enabled := False;
      dblcdUniGes.Color := clSilver;
   End
   Else
   Begin
      dblcdDptoId.Text := '';
      edtdesdep.Text := '';
      dblcdUniPro.Text := '';
      edtunipronom.Text := '';
      dblcdUniPro.Enabled := False;
      dblcdUniPro.Color := clSilver;
      dblcdUniPag.Text := '';
      edtunipagnom.Text := '';
      dblcdUniPag.Enabled := False;
      dblcdUniPag.Color := clSilver;
      dblcdUniGes.Text := '';
      edtunigesnom.Text := '';
      dblcdUniGes.Enabled := False;
      dblcdUniGes.Color := clSilver;
   End;
   DM1.cdsReporte.Close;
End;

Procedure TFRepNueAso.inicializa;
Begin
   dblcdDptoId.Text := '';
   edtdesdep.Text := '';
   dblcdUniPro.Text := '';
   edtunipronom.Text := '';
   dblcdUniPro.Enabled := False;
   dblcdUniPro.Color := clSilver;
   dblcdUniPag.Text := '';
   edtunipagnom.Text := '';
   dblcdUniPag.Enabled := False;
   dblcdUniPag.Color := clSilver;
   dblcdUniGes.Text := '';
   edtunigesnom.Text := '';
   dblcdUniGes.Enabled := False;
   dblcdUniGes.Color := clSilver;
End;

Procedure TFRepNueAso.dblcdUniProExit(Sender: TObject);
Begin
   If DM1.cdsUPro.Locate('UPROID', dblcdUniPro.Text, []) Then
   Begin
      edtunipronom.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
      cargarunipag(dblcdUniPro.Text);
      dblcdUniPag.Text := '';
      edtunipagnom.Text := '';
      dblcdUniPag.Enabled := True;
      dblcdUniPag.Color := clWhite;
      dblcdUniGes.Text := '';
      edtunigesnom.Text := '';
      dblcdUniGes.Enabled := False;
      dblcdUniGes.Color := clSilver;
   End
   Else
   Begin
      dblcdUniPro.Text := '';
      edtunipronom.Text := '';
      dblcdUniPag.Text := '';
      edtunipagnom.Text := '';
      dblcdUniPag.Enabled := False;
      dblcdUniPag.Color := clSilver;
      dblcdUniGes.Text := '';
      edtunigesnom.Text := '';
      dblcdUniGes.Enabled := False;
      dblcdUniGes.Color := clSilver;
   End;
   DM1.cdsReporte.Close;
End;

Procedure TFRepNueAso.dblcdUniPagExit(Sender: TObject);
Begin
   If DM1.cdsUPago.Locate('UPROID;UPAGOID', VarArrayof([dblcdUniPro.Text,
      dblcdUniPag.Text]), []) Then
   Begin
      edtunipagnom.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
      cargaruniges(dblcdUniPro.Text, dblcdUniPag.Text);
      dblcdUniGes.Text := '';
      edtunigesnom.Text := '';
      dblcdUniGes.Enabled := True;
      dblcdUniGes.Color := clWhite;
   End
   Else
   Begin
      dblcdUniPag.Text := '';
      edtunipagnom.Text := '';
      dblcdUniGes.Text := '';
      edtunigesnom.Text := '';
      dblcdUniGes.Enabled := False;
      dblcdUniGes.Color := clSilver;
   End;
   DM1.cdsReporte.Close;
End;

Procedure TFRepNueAso.dblcdUniGesExit(Sender: TObject);
Begin
   If DM1.cdsUSES.Locate('UPROID;UPAGOID;USEID', VarArrayof([dblcdUniPro.Text,
      dblcdUniPag.Text, dblcdUniGes.Text]), []) Then
      edtunigesnom.Text := DM1.cdsUSES.FieldByName('USENOM').AsString
   Else
   Begin
      dblcdUniGes.Text := '';
      edtunigesnom.Text := '';
   End;
   DM1.cdsReporte.Close;
End;

Procedure TFRepNueAso.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

Procedure TFRepNueAso.btnprocesarClick(Sender: TObject);
Var
   xSql, xSelect, xWhere: String;
   xfecini, xfecfin: String; // HPP_200901_ASO 2009 IR  MEMO 239-2008-DM-EPS
Begin
// HPP_200901_ASO 2009 IR  MEMO 239-2008-DM-EPS
   If rgtipreppri.ItemIndex = -1 Then
   Begin
      MessageDlg('Seleccione el tipo de reporte', mtError, [mbOK], 0);
      rgtipreppri.SetFocus;
      Exit;
   End;

   If rgtipo.ItemIndex = -1 Then
   Begin
      MessageDlg('Seleccione el tipo de reporte', mtError, [mbOK], 0);
      rgtipo.SetFocus;
      Exit;
   End;

   If Trim(dbdtpinicio.Text) = '' Then
   Begin
      MessageDlg('Ingrese fecha inicial', mtError, [mbOK], 0);
      dbdtpinicio.SetFocus;
      Exit;
   End;

   If Trim(dbdtpfinal.Text) = '' Then
   Begin
      MessageDlg('Ingrese fecha inicial', mtError, [mbOK], 0);
      dbdtpfinal.SetFocus;
      Exit;
   End;

   xWhere := '';
   xfecini := Copy(DateToStr(dbdtpinicio.Date), 7, 4) +
      Copy(DateToStr(dbdtpinicio.Date), 4, 2) + Copy(DateToStr(dbdtpinicio.Date),
      1, 2);
   xfecfin := Copy(DateToStr(dbdtpfinal.Date), 7, 4) +
      Copy(DateToStr(dbdtpfinal.Date), 4, 2) + Copy(DateToStr(dbdtpfinal.Date), 1,
      2);

// Nuevos Asociados
   If rgtipreppri.ItemIndex = 0 Then
   Begin
      If Trim(dblcdDptoId.Text) <> '' Then
         xWhere := ' AND C.DPTOID = ' + QuotedStr(dblcdDptoId.Text);
      If Trim(dblcdUniPro.Text) <> '' Then
         xWhere := ' AND C.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                  +' AND D.UPROID = ' + QuotedStr(dblcdUniPro.Text);
      If Trim(dblcdUniPag.Text) <> '' Then
         xWhere := ' AND C.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                  +' AND D.UPROID = ' + QuotedStr(dblcdUniPro.Text)
                  +' AND E.UPAGOID = ' + QuotedStr(dblcdUniPag.Text);
      If Trim(dblcdUniGes.Text) <> '' Then
         xWhere := ' AND C.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                  +' AND D.UPROID = ' + QuotedStr(dblcdUniPro.Text)
                  +' AND E.UPAGOID = ' + QuotedStr(dblcdUniPag.Text)
                  +' AND B.USEID = ' + QuotedStr(dblcdUniGes.Text);

      If rgtipo.ItemIndex = 0 Then
      Begin
         // INICIO HPC_201513_ASO 
         xSelect := 'SELECT C.DPTODES, '
            + '       B.UPROID, D.UPRONOM, '
            + '       B.UPAGOID, E.UPAGONOM, '
            + '       B.USEID, B.USENOM, '
            + '       A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, F.ASOTIPDES, '
            + '       CASE WHEN A.EST_AUT_CLI IN (''NU'',''N3'') '
            + '            THEN ''PENDIENTES'' '
            + '            ELSE CASE WHEN A.EST_AUT_CLI = ''AP'' '
            + '                      THEN ''AUTORIZADOS'' '
            + '                      ELSE CASE WHEN EST_AUT_CLI = ''RE'' '
            + '                                THEN ''RECHAZADOS'' '
            + '                           END '
            + '                 END '
            + '       END ESTADO, '
            // Inicio: HPC_201707_ASO
            // Se añaden campos USU_AUT_CLI, FEC_AUT_CLI, OBS_AUT_CLI, USU_CRE_CLI, FEC_CRE_CLI, OBS_AUT_CLI_UGE, OBS_AUT_CLI_PAD
            // + '       TO_CHAR(A.FEC_CRE_CLI,''DD/MM/YYYY'') FECHA_OPERACION '
            + '       TO_CHAR(A.FEC_CRE_CLI,''DD/MM/YYYY'') FECHA_OPERACION, '
            + ' A.USU_AUT_CLI, A.FEC_AUT_CLI, A.OBS_AUT_CLI, A.USU_CRE_CLI, A.FEC_CRE_CLI, A.OBS_AUT_CLI_UGE, A.OBS_AUT_CLI_PAD '
            // Fin: HPC_201707_ASO 
            + 'FROM ASO_NUE_CLI A, APO101 B, APO158 C, APO102 D, APO103 E, APO107 F '
            + 'WHERE A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID '
            + '  AND B.DPTOID = C.DPTOID AND A.UPROID = D.UPROID '
            + '  AND A.UPROID = E.UPROID AND A.UPAGOID = E.UPAGOID AND A.ASOTIPID = F.ASOTIPID '
            + '  AND NVL(B.FDESHABILITADO,''S'') = ''N'' '
            + '  AND TO_CHAR(A.FEC_CRE_CLI,''YYYYMMDD'') >= ' + QuotedStr(xfecini)
            + '  AND TO_CHAR(A.FEC_CRE_CLI,''YYYYMMDD'') <= ' + QuotedStr(xfecfin);
         xSql := xSelect + xWhere
            + ' ORDER BY C.DPTOID, D.UPROID, E.UPAGOID, B.USEID, A.ASOTIPID, A.EST_AUT_CLI';
         // FIN HPC_201513_ASO
      End
      Else
      Begin
         xSelect := 'SELECT DPTODES, UPROID, UPRONOM, UPAGOID, UPAGONOM, USEID, USENOM, SUM(NVL(CO_PEND,0)) CO_PEND, '
            + '       SUM(NVL(VO_PEND,0)) VO_PEND, SUM(NVL(CE_PEND,0)) CE_PEND, '
            + '       SUM(NVL(CO_APRO,0)) CO_APRO, SUM(NVL(VO_APRO,0)) VO_APRO, '
            + '       SUM(NVL(CE_APRO,0)) CE_APRO '
            + 'FROM (SELECT C.DPTODES, '
            + '             B.UPROID, D.UPRONOM, '
            + '             B.UPAGOID, E.UPAGONOM, '
            + '             B.USEID, B.USENOM, '
            + '      CASE WHEN A.ASOTIPID = ''CO'' AND A.EST_AUT_CLI IN (''NU'',''N3'') THEN 1 ELSE 0 END CO_PEND,'
            + '      CASE WHEN A.ASOTIPID = ''VO'' AND A.EST_AUT_CLI IN (''NU'',''N3'') THEN 1 ELSE 0 END VO_PEND,'
            + '      CASE WHEN A.ASOTIPID = ''CE'' AND A.EST_AUT_CLI IN (''NU'',''N3'') THEN 1 ELSE 0 END CE_PEND,'
            + '      CASE WHEN A.ASOTIPID = ''CO'' AND A.EST_AUT_CLI IN (''AP'')        THEN 1 ELSE 0 END CO_APRO,'
            + '      CASE WHEN A.ASOTIPID = ''VO'' AND A.EST_AUT_CLI IN (''AP'')        THEN 1 ELSE 0 END VO_APRO,'
            + '      CASE WHEN A.ASOTIPID = ''CE'' AND A.EST_AUT_CLI IN (''AP'')        THEN 1 ELSE 0 END CE_APRO'
            + '      FROM ASO_NUE_CLI A, APO101 B, APO158 C, APO102 D, APO103 E, APO107 F '
            + '      WHERE A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID '
            + '        AND B.DPTOID = C.DPTOID AND A.UPROID = D.UPROID '
            + '        AND A.UPROID = E.UPROID AND A.UPAGOID = E.UPAGOID AND A.ASOTIPID = F.ASOTIPID '
            + '        AND NVL(B.FDESHABILITADO,''S'') =''N'' '
            + '        AND TO_CHAR(A.FEC_CRE_CLI,''YYYYMMDD'') >= ' + QuotedStr(xfecini)
            + '        AND TO_CHAR(A.FEC_CRE_CLI,''YYYYMMDD'') <= ' + QuotedStr(xfecfin);
         xSql := xSelect + xWhere
            + ') GROUP BY DPTODES, UPROID, UPRONOM, UPAGOID, UPAGONOM, USEID, USENOM '
            + 'ORDER BY DPTODES, UPRONOM, UPAGONOM, USENOM';
      End;
   End;

// Desactivaciones de Flag's
   If rgtipreppri.ItemIndex = 1 Then
   Begin
      xWhere := '';
      If Trim(dblcdDptoId.Text) <> '' Then
         xWhere := ' AND D.DPTOID = ' + QuotedStr(dblcdDptoId.Text);
      If Trim(dblcdUniPro.Text) <> '' Then
         xWhere := ' AND D.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                 + ' AND E.UPROID = ' + QuotedStr(dblcdUniPro.Text);
      If Trim(dblcdUniPag.Text) <> '' Then
         xWhere := ' AND D.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                 + ' AND E.UPROID = ' + QuotedStr(dblcdUniPro.Text)
                 + ' AND F.UPAGOID = ' + QuotedStr(dblcdUniPag.Text);
      If Trim(dblcdUniGes.Text) <> '' Then
         xWhere := ' AND D.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                 + ' AND E.UPROID = ' + QuotedStr(dblcdUniPro.Text)
                 + ' AND F.UPAGOID = ' + QuotedStr(dblcdUniPag.Text)
                 + ' AND C.USEID = ' + QuotedStr(dblcdUniGes.Text);
      If rgtipo.ItemIndex = 0 Then
      Begin
         // INICIO HPC_201513_ASO
         xSql := 'SELECT D.DPTODES, '
            + '       C.UPROID, E.UPRONOM, '
            + '       C.UPAGOID, F.UPAGONOM, '
            + '       C.USEID, C.USENOM, '
            + '       B.ASODNI, B.ASOCODMOD, '
            + '       B.ASOAPENOMDNI, B.ASOTIPID, '
            + '       CASE WHEN NVL(A.VALCODMODDNI,''X'') = ''N'' '
            + '            THEN ''S'' ELSE ''N'' END VALCODMODDNI, '
            + '       CASE WHEN NVL(A.ACTARCREN,''X'') = ''N''  '
            + '            THEN ''S'' ELSE ''N'' END ACTARCREN, '
            + '       CASE WHEN NVL(A.VALTODCAM,''X'') = ''N'' '
            + '            THEN ''S'' ELSE ''N'' END VALTODCAM, '
            + '       A.USUVAL, '
            // Inicio: HPC_201707_ASO
            // Se añaden campos USUVAL, FECHOR
            // + '       TO_CHAR(A.FECHOR,''DD/MM/YYYY'') FECHA_OPERACION '
            + '       TO_CHAR(A.FECHOR,''DD/MM/YYYY'') FECHA_OPERACION, A.USUVAL, A.FECHOR '
            // Fin: HPC_201707_ASO
            + 'FROM ASO_VAL_CAM_LOG A, APO201 B, APO101 C, APO158 D, APO102 E, APO103 F '
            + 'WHERE TO_CHAR(FECHOR,''YYYYMMDD'') >= ' + QuotedStr(xfecini)
            + '  AND TO_CHAR(FECHOR,''YYYYMMDD'') <= ' + QuotedStr(xfecfin)
            + '  AND A.ASOID = B.ASOID AND B.UPROID = C.UPROID '
            + '  AND B.UPAGOID = C.UPAGOID AND B.USEID = C.USEID '
            + '  AND C.DPTOID = D.DPTOID AND B.UPROID = E.UPROID '
            + '  AND B.UPROID = F.UPROID AND B.UPAGOID = F.UPAGOID '
            + xWhere;
         // FIN HPC_201513_ASO
      End
      Else
      Begin
         xSql := 'SELECT DPTODES, UPROID, UPRONOM, UPAGOID, UPAGONOM, USEID, USENOM, '
            + '       SUM(NVL(VALCODMODDNI,0)) VALCODMODDNI, '
            + '       SUM(NVL(ACTARCREN,0)) ACTARCREN, '
            + '       SUM(NVL(VALTODCAM,0)) VALTODCAM '
            + 'FROM (SELECT D.DPTODES, '
            + '             C.UPROID, E.UPRONOM, '
            + '             C.UPAGOID, F.UPAGONOM, '
            + '             C.USEID, C.USENOM, '
            + '             CASE WHEN NVL(A.VALCODMODDNI,''X'') = ''N''  '
            + '                  THEN 1 ELSE 0 END VALCODMODDNI,'
            + '             CASE WHEN NVL(A.ACTARCREN,''X'')    = ''N''  '
            + '                  THEN 1 ELSE 0 END ACTARCREN, '
            + '             CASE WHEN NVL(A.VALTODCAM,''X'')    = ''N''  '
            + '                  THEN 1 ELSE 0 END VALTODCAM '
            + '      FROM ASO_VAL_CAM_LOG A, APO201 B, APO101 C, APO158 D, '
            + '           APO102 E, APO103 F '
            + '      WHERE TO_CHAR(FECHOR,''YYYYMMDD'') >= ' + QuotedStr(xfecini)
            + '        AND TO_CHAR(FECHOR,''YYYYMMDD'') <= ' + QuotedStr(xfecfin)
            + '        AND A.ASOID = B.ASOID AND B.UPROID = C.UPROID '
            + '        AND B.UPAGOID = C.UPAGOID AND B.USEID = C.USEID '
            + '        AND C.DPTOID = D.DPTOID AND B.UPROID = E.UPROID '
            + '        AND B.UPROID = F.UPROID AND B.UPAGOID = F.UPAGOID '
            + xWhere + ') '
            + 'GROUP BY DPTODES, UPROID, UPRONOM, UPAGOID, UPAGONOM, USEID, USENOM';
      End;
   End;

// Validación de Actualización de Registro(N2)
   If rgtipreppri.ItemIndex = 2 Then
   Begin
      xWhere := '';
      If Trim(dblcdDptoId.Text) <> '' Then
         xWhere := ' AND E.DPTOID = ' + QuotedStr(dblcdDptoId.Text);
      If Trim(dblcdUniPro.Text) <> '' Then
         xWhere := ' AND E.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                 + ' AND F.UPROID = ' + QuotedStr(dblcdUniPro.Text);
      If Trim(dblcdUniPag.Text) <> '' Then
         xWhere := ' AND E.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                 + ' AND F.UPROID = ' + QuotedStr(dblcdUniPro.Text)
                 + ' AND G.UPAGOID = ' + QuotedStr(dblcdUniPag.Text);
      If Trim(dblcdUniGes.Text) <> '' Then
         xWhere := ' AND E.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                 + ' AND F.UPROID = ' + QuotedStr(dblcdUniPro.Text)
                 + ' AND G.UPAGOID = ' + QuotedStr(dblcdUniPag.Text)
                 + ' AND D.USEID = ' + QuotedStr(dblcdUniGes.Text);
      If rgtipo.ItemIndex = 0 Then
      Begin
         // INICIO HPC_201513_ASO
         xSql := 'SELECT E.DPTODES, '
            + '       D.UPROID, F.UPRONOM, '
            + '       D.UPAGOID, G.UPAGONOM, '
            + '       D.USEID, D.USENOM, '
            + '       C.ASODNI, '
            + '       C.ASOCODMOD, C.ASOAPENOMDNI, C.ASOTIPID, A.REASIGNACION, '
            // Inicio: HPC_201707_ASO
            // Se añaden campos USRVERIFICA, FHVERIFICA, OBSERVACION
            // + '       A.DATGENERAL, A.DATSOCIOECO, A.USUARIO, A.USRVERIFICA, B.DESESTADO, '
            // + '       TO_CHAR(A.FHREGISTRO,''DD/MM/YYYY'') FECHA_OPERACION '
            + '       A.DATGENERAL, A.DATSOCIOECO, A.USUARIO, B.DESESTADO, '
            + '       TO_CHAR(A.FHREGISTRO,''DD/MM/YYYY'') FECHA_OPERACION, '
            + '       A.USRVERIFICA, A.FHVERIFICA, A.OBSERVACION '
            // Fin: HPC_201707_ASO
            + 'FROM ASO003 A, ASO004 B, APO201 C, APO101 D, APO158 E, APO102 F, APO103 G '
            + 'WHERE TO_CHAR(FHREGISTRO,''YYYYMMDD'') >= ' + QuotedStr(xfecini)
            + '  AND TO_CHAR(FHREGISTRO,''YYYYMMDD'') <= ' + QuotedStr(xfecfin)
            + '  AND A.IDESTADO = B.IDESTADO AND A.ASOID = C.ASOID '
            + '  AND C.UPROID = D.UPROID AND C.UPAGOID = D.UPAGOID '
            + '  AND C.USEID  = D.USEID AND D.DPTOID = E.DPTOID '
            + '  AND C.UPROID = F.UPROID AND C.UPROID = G.UPROID '
            + '  AND C.UPAGOID = G.UPAGOID '
            + xWhere
            + ' ORDER BY C.ASOCODMOD';
         // FIN HPC_201513_ASO
      End
      Else
      Begin
      // SE AGREGA USENOM
         xSql := 'SELECT DPTODES, UPROID, UPRONOM, UPAGOID, UPAGONOM, USEID, USENOM, SUM(VAL) VAL '
            + 'FROM (SELECT E.DPTODES, '
            + '             D.UPROID, F.UPRONOM, '
            + '             D.UPAGOID, G.UPAGONOM, '
            + '             D.USEID, D.USENOM, '
            + '       CASE WHEN NVL(REASIGNACION,''X'') = ''S'' '
            + '              OR NVL(DATGENERAL,''X'') = ''S'' '
            + '              OR NVL(DATSOCIOECO,''X'') = ''S'' THEN 1 END VAL'
            + '      FROM ASO003 A, ASO004 B, APO201 C, APO101 D, APO158 E, APO102 F, APO103 G '
            + '      WHERE TO_CHAR(FHREGISTRO,''YYYYMMDD'') >= ' + QuotedStr(xfecini)
            + '        AND TO_CHAR(FHREGISTRO,''YYYYMMDD'') <= ' + QuotedStr(xfecfin)
            + '        AND A.IDESTADO = B.IDESTADO AND A.ASOID = C.ASOID '
            + '        AND C.UPROID = D.UPROID AND C.UPAGOID = D.UPAGOID '
            + '        AND C.USEID  = D.USEID AND D.DPTOID = E.DPTOID '
            + '        AND C.UPROID = F.UPROID AND C.UPROID = G.UPROID '
            + '        AND C.UPAGOID = G.UPAGOID '
            + xWhere
            + ' ) GROUP BY DPTODES, UPROID, UPRONOM, UPAGOID, UPAGONOM, USEID, USENOM';
      End;
   End
   Else
   Begin
   End;

// Autorización de Cuenta de Teleahorro
   If rgtipreppri.ItemIndex = 3 Then
   Begin
      xWhere := '';
      If Trim(dblcdDptoId.Text) <> '' Then
         xWhere := ' AND D.DPTOID = ' + QuotedStr(dblcdDptoId.Text);
      If Trim(dblcdUniPro.Text) <> '' Then
         xWhere := ' AND D.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                 + ' AND F.UPROID = ' + QuotedStr(dblcdUniPro.Text);
      If Trim(dblcdUniPag.Text) <> '' Then
         xWhere := ' AND D.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                 + ' AND F.UPROID = ' + QuotedStr(dblcdUniPro.Text)
                 + ' AND F.UPAGOID = ' + QuotedStr(dblcdUniPag.Text);
      If Trim(dblcdUniGes.Text) <> '' Then
         xWhere := ' AND D.DPTOID = ' + QuotedStr(dblcdDptoId.Text)
                 + ' AND F.UPROID = ' + QuotedStr(dblcdUniPro.Text)
                 + ' AND F.UPAGOID = ' + QuotedStr(dblcdUniPag.Text)
                 + ' AND G.USEID = ' + QuotedStr(dblcdUniGes.Text);
      If rgtipo.ItemIndex = 0 Then
      Begin
         // INICIO HPC_201513_ASO
         xSql := 'SELECT D.DPTODES, '
            + '       C.UPROID, E.UPRONOM, '
            + '       C.UPAGOID, F.UPAGONOM, '
            + '       C.USEID, G.USENOM, '
            + '       A.ASODNI, '
            + '       B.ASOCODMOD, B.ASOAPENOMDNI, B.ASOTIPID, B.ASONCTA, A.USRAUT, '
            // Inicio: HPC_201707_ASO
            // Se adicionan campos MOTAUT, FHAUT
            // + '       TO_CHAR(A.FECAUT,''DD/MM/YYYY'') FECHA_OPERACION '
            + '       A.MOTAUT, A.FHAUT '
            // Fin: HPC_201707_ASO
            + 'FROM ASO002 A, APO201 B, APO101 C, APO158 D, APO102 E, APO103 F, APO101 G '
            + 'WHERE TO_CHAR(FECAUT,''YYYYMMDD'') >= ' + QuotedStr(xfecini)
            + '  AND TO_CHAR(FECAUT,''YYYYMMDD'') <= ' + QuotedStr(xfecfin)
            + '  AND A.ASOID = B.ASOID AND B.UPROID = C.UPROID '
            + '  AND B.UPAGOID = C.UPAGOID AND B.USEID = C.USEID '
            + '  AND C.DPTOID = D.DPTOID AND C.UPROID = E.UPROID AND C.UPROID = F.UPROID '
            + '  AND C.UPAGOID = F.UPAGOID AND C.UPROID = G.UPROID '
            + '  AND C.UPAGOID = G.UPAGOID AND C.USEID = G.USEID'
            + xWhere;
         // FIN HPC_201513_ASO
      End
      Else
      Begin
         xSql := 'SELECT D.DPTODES, '
            + '       C.UPROID, E.UPRONOM, '
            + '       C.UPAGOID, F.UPAGONOM, '
            + '       C.USEID, G.USENOM, '
            + '       COUNT(*) CANTIDAD '
            + 'FROM ASO002 A, APO201 B, APO101 C, APO158 D, APO102 E, APO103 F, APO101 G '
            + 'WHERE TO_CHAR(FECAUT,''YYYYMMDD'') >= ' + QuotedStr(xfecini)
            + '  AND TO_CHAR(FECAUT,''YYYYMMDD'') <= ' + QuotedStr(xfecfin)
            + '  AND A.ASOID = B.ASOID AND B.UPROID = C.UPROID '
            + '  AND B.UPAGOID = C.UPAGOID AND B.USEID = C.USEID '
            + '  AND C.DPTOID = D.DPTOID AND C.UPROID = E.UPROID '
            + '  AND C.UPROID = F.UPROID AND C.UPAGOID = F.UPAGOID '
            + '  AND C.UPROID = G.UPROID AND C.UPAGOID = G.UPAGOID '
            + '  AND C.USEID = G.USEID '
            + xWhere
            + 'GROUP BY D.DPTODES, C.UPROID, E.UPRONOM, C.UPAGOID, F.UPAGONOM, C.USEID, G.USENOM ';
      End;
   End;

   Screen.Cursor := crHourGlass;
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;

   If DM1.cdsReporte.RecordCount = 0 Then
   Begin
      MessageDlg('No se ha encontrado registros en esta selección', mtError,
         [mbOK], 0);
      dbdtpinicio.SetFocus;
      Screen.Cursor := crDefault;
      Exit;
   End;

   btnaexcel.Enabled := True;
   btnimprimir.Enabled := True;

   Screen.Cursor := crDefault;

   dbgreporte.Selected.Clear;

   If rgtipreppri.ItemIndex = 0 Then
   Begin
      If rgtipo.ItemIndex = 0 Then
      Begin
         dbgreporte.Selected.Add('DPTODES'#9'13'#9'Departamento'#9#9);
         dbgreporte.Selected.Add('UPROID'#9'10'#9'Unidad de~proceso'#9#9);
         dbgreporte.Selected.Add('UPAGOID'#9'10'#9'Unidad de~pago'#9#9);
         dbgreporte.Selected.Add('USEID'#9'10'#9'Unidad de~Gestión'#9#9);
         dbgreporte.Selected.Add('ASODNI'#9'8'#9'D.N.I.'#9#9);
         dbgreporte.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
         dbgreporte.Selected.Add('ASOAPENOMDNI'#9'62'#9'Apellidos~ y nombre(s)'#9#9);
         dbgreporte.Selected.Add('ASOTIPDES'#9'12'#9'Tipo~asociado'#9#9);
         dbgreporte.Selected.Add('ESTADO'#9'12'#9'Estado'#9#9);
         dbgreporte.Selected.Add('UPRONOM'#9'25'#9'Nombre~Unidad de Proceso'#9#9);
         dbgreporte.Selected.Add('UPAGONOM'#9'25'#9'Nombre~Unidad de Pago'#9#9);
         dbgreporte.Selected.Add('USENOM'#9'30'#9'Nombre~Unidad de Gestión'#9#9);
         // INICIO HPC_201513_ASO
         dbgreporte.Selected.Add('FECHA_OPERACION'#9'30'#9'Fecha de Operación'#9#9);
         // FIN HPC_201513_ASO
         // Inicio: HPC_201707_ASO
         // Se añaden columnas al grid
         dbgreporte.Selected.Add('USU_AUT_CLI'#9'15'#9'Usuario que~autoriza'#9#9);
         dbgreporte.Selected.Add('FEC_AUT_CLI'#9'20'#9'Fecha de~autorización'#9#9);
         dbgreporte.Selected.Add('OBS_AUT_CLI'#9'60'#9'Observación de~la autorización'#9#9);
         dbgreporte.Selected.Add('USU_CRE_CLI'#9'15'#9'Usuario~que crea'#9#9);
         dbgreporte.Selected.Add('FEC_CRE_CLI'#9'20'#9'Fecha de~creación'#9#9);
         dbgreporte.Selected.Add('OBS_AUT_CLI_UGE'#9'60'#9'Obs. Aut.~Cli. Uge.'#9#9);
         dbgreporte.Selected.Add('OBS_AUT_CLI_PAD'#9'60'#9'Obs. Aut.~Cli.Pad.'#9#9);
         // Fin: HPC_201707_ASO
      End
      Else
      Begin
         dbgreporte.Selected.Add('DPTODES'#9'13'#9'Departamento'#9#9);
         dbgreporte.Selected.Add('UPROID'#9'10'#9'Unidad de~proceso'#9#9);
         dbgreporte.Selected.Add('UPAGOID'#9'10'#9'Unidad de~pago'#9#9);
         dbgreporte.Selected.Add('USEID'#9'10'#9'Unidad de~Gestión'#9#9);
         dbgreporte.Selected.Add('DO_PEND'#9'10'#9'Docente~pendiente'#9#9);
         dbgreporte.Selected.Add('CO_PEND'#9'10'#9'Contratado~pendiente'#9#9);
         dbgreporte.Selected.Add('VO_PEND'#9'10'#9'Nuevo~pendiente'#9#9);
         dbgreporte.Selected.Add('DO_APRO'#9'10'#9'Docente~aprobado'#9#9);
         dbgreporte.Selected.Add('CO_APRO'#9'10'#9'Contratado~aprobado'#9#9);
         dbgreporte.Selected.Add('VO_APRO'#9'10'#9'Nuevo~aprobado'#9#9);
         dbgreporte.Selected.Add('UPRONOM'#9'25'#9'Nombre~Unidad de Proceso'#9#9);
         dbgreporte.Selected.Add('UPAGONOM'#9'25'#9'Nombre~Unidad de Pago'#9#9);
         dbgreporte.Selected.Add('USENOM'#9'30'#9'Nombre~Unidad de Gestión'#9#9);
      End;
   End;

   If rgtipreppri.ItemIndex = 1 Then
   Begin
      If rgtipo.ItemIndex = 0 Then
      Begin
         dbgreporte.Selected.Add('DPTODES'#9'13'#9'Departamento'#9#9);
         dbgreporte.Selected.Add('UPROID'#9'10'#9'Unidad de~proceso'#9#9);
         dbgreporte.Selected.Add('UPAGOID'#9'10'#9'Unidad de~pago'#9#9);
         dbgreporte.Selected.Add('USEID'#9'10'#9'Unidad de~Gestión'#9#9);
         dbgreporte.Selected.Add('ASODNI'#9'8'#9'D.N.I.'#9#9);
         dbgreporte.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
         dbgreporte.Selected.Add('ASOAPENOMDNI'#9'62'#9'Apellidos~ y nombre(s)'#9#9);
         dbgreporte.Selected.Add('ASOTIPID'#9'2'#9'Tipo~asociado'#9#9);
         dbgreporte.Selected.Add('VALCODMODDNI'#9'2'#9'Cod.Mod-~D.N.I.'#9#9);
         dbgreporte.Selected.Add('ACTARCREN'#9'2'#9'Datos~RENIEC'#9#9);
         dbgreporte.Selected.Add('VALTODCAM'#9'2'#9' Todos los~campos'#9#9);
         // Inicio: HPC_201707_ASO
         // Se retira columna del grid
         // dbgreporte.Selected.Add('USUVAL'#9'15'#9'USUARIO'#9#9);
         // Fin: HPC_201707_ASO

         dbgreporte.Selected.Add('UPRONOM'#9'25'#9'Nombre~Unidad de Proceso'#9#9);
         dbgreporte.Selected.Add('UPAGONOM'#9'25'#9'Nombre~Unidad de Pago'#9#9);
         dbgreporte.Selected.Add('USENOM'#9'30'#9'Nombre~Unidad de Gestión'#9#9);
         // INICIO HPC_201513_ASO
         dbgreporte.Selected.Add('FECHA_OPERACION'#9'30'#9'Fecha de Operación'#9#9);
         // FIN HPC_201513_ASO
         // Inicio: HPC_201707_ASO 
         // Se adicionan columnas al grid
         dbgreporte.Selected.Add('USUVAL'#9'15'#9'Código de Usuario~que valida'#9#9);
         dbgreporte.Selected.Add('FECHOR'#9'20'#9'Fecha y hora~ de validación'#9#9);
         // Fin: HPC_201707_ASO 

      End
      Else
      Begin
         dbgreporte.Selected.Add('DPTODES'#9'13'#9'Departamento'#9#9);
         dbgreporte.Selected.Add('UPROID'#9'10'#9'Unidad de~proceso'#9#9);
         dbgreporte.Selected.Add('UPAGOID'#9'10'#9'Unidad de~pago'#9#9);
         dbgreporte.Selected.Add('USEID'#9'10'#9'Unidad de~Gestión'#9#9);
         dbgreporte.Selected.Add('VALCODMODDNI'#9'2'#9'Cod.Mod-~D.N.I.'#9#9);
         dbgreporte.Selected.Add('ACTARCREN'#9'2'#9'Datos~RENIEC'#9#9);
         dbgreporte.Selected.Add('VALTODCAM'#9'2'#9' Todos los~campos'#9#9);
         dbgreporte.Selected.Add('UPRONOM'#9'25'#9'Nombre~Unidad de Proceso'#9#9);
         dbgreporte.Selected.Add('UPAGONOM'#9'25'#9'Nombre~Unidad de Pago'#9#9);
         dbgreporte.Selected.Add('USENOM'#9'30'#9'Nombre~Unidad de Gestión'#9#9);
      End;
   End;

   If rgtipreppri.ItemIndex = 2 Then
   Begin
      If rgtipo.ItemIndex = 0 Then
      Begin
         dbgreporte.Selected.Add('DPTODES'#9'13'#9'Departamento'#9#9);
         dbgreporte.Selected.Add('UPROID'#9'10'#9'Unidad de~proceso'#9#9);
         dbgreporte.Selected.Add('UPAGOID'#9'10'#9'Unidad de~pago'#9#9);
         dbgreporte.Selected.Add('USEID'#9'10'#9'Unidad de~Gestión'#9#9);
         dbgreporte.Selected.Add('ASODNI'#9'8'#9'D.N.I.'#9#9);
         dbgreporte.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
         dbgreporte.Selected.Add('ASOAPENOMDNI'#9'62'#9'Apellidos~ y nombre(s)'#9#9);
         dbgreporte.Selected.Add('ASOTIPID'#9'8'#9'Tipo~asociado'#9#9);
         dbgreporte.Selected.Add('REASIGNACION'#9'12'#9'Reasignación'#9#9);
         dbgreporte.Selected.Add('DATGENERAL'#9'9'#9'Datos~generales'#9#9);
         dbgreporte.Selected.Add('DATSOCIOECO'#9'15'#9'Datos~socioeconomicos'#9#9);
         dbgreporte.Selected.Add('USUARIO'#9'15'#9'Usuario'#9#9);
         // Inicio: HPC_201707_ASO
         // Se retira columna del grid
         // dbgreporte.Selected.Add('USRVERIFICA'#9'15'#9'Usuario~verifica'#9#9);
         // Fin: HPC_201707_ASO
         dbgreporte.Selected.Add('DESESTADO'#9'6'#9'Estado'#9#9);
         dbgreporte.Selected.Add('UPRONOM'#9'25'#9'Nombre~Unidad de Proceso'#9#9);
         dbgreporte.Selected.Add('UPAGONOM'#9'25'#9'Nombre~Unidad de Pago'#9#9);
         dbgreporte.Selected.Add('USENOM'#9'30'#9'Nombre~Unidad de Gestión'#9#9);
         // INICIO HPC_201513_ASO
         dbgreporte.Selected.Add('FECHA_OPERACION'#9'30'#9'Fecha de Operación'#9#9);
         // FIN HPC_201513_ASO
         // Inicio: HPC_201707_ASO
         // Se adicionan columnas al grid
         dbgreporte.Selected.Add('USRVERIFICA'#9'15'#9'Código de usuario~que verifica'#9#9);
         dbgreporte.Selected.Add('FHVERIFICA'#9'20'#9'Fecha y hora~de verificación'#9#9);
         dbgreporte.Selected.Add('OBSERVACION'#9'60'#9'Observación'#9#9);
         // Fin: HPC_201707_ASO

      End
      Else
      Begin
         dbgreporte.Selected.Add('DPTODES'#9'13'#9'Departamento'#9#9);
         dbgreporte.Selected.Add('UPROID'#9'10'#9'Unidad de~proceso'#9#9);
         dbgreporte.Selected.Add('UPAGOID'#9'10'#9'Unidad de~pago'#9#9);
         dbgreporte.Selected.Add('USEID'#9'10'#9'Unidad de~Gestión'#9#9);
         dbgreporte.Selected.Add('VAL'#9'30'#9'Nº~validaciones'#9#9);
         dbgreporte.Selected.Add('UPRONOM'#9'25'#9'Nombre~Unidad de Proceso'#9#9);
         dbgreporte.Selected.Add('UPAGONOM'#9'25'#9'Nombre~Unidad de Pago'#9#9);
         dbgreporte.Selected.Add('USENOM'#9'30'#9'Nombre~Unidad de Gestión'#9#9);
      End;
   End;

   If rgtipreppri.ItemIndex = 3 Then
   Begin
      If rgtipo.ItemIndex = 0 Then
      Begin
         dbgreporte.Selected.Add('DPTODES'#9'13'#9'Departamento'#9#9);
         dbgreporte.Selected.Add('UPROID'#9'10'#9'Unidad de~proceso'#9#9);
         dbgreporte.Selected.Add('UPAGOID'#9'10'#9'Unidad de~pago'#9#9);
         dbgreporte.Selected.Add('USEID'#9'10'#9'Unidad de~Gestión'#9#9);
         dbgreporte.Selected.Add('ASODNI'#9'8'#9'D.N.I.'#9#9);
         dbgreporte.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
         dbgreporte.Selected.Add('ASOAPENOMDNI'#9'62'#9'Apellidos~ y nombre(s)'#9#9);
         dbgreporte.Selected.Add('ASOTIPID'#9'8'#9'Tipo~asociado'#9#9);
         dbgreporte.Selected.Add('ASONCTA'#9'10'#9'Nº~Cuenta'#9#9);
         // Inicio: HPC_201707_ASO  
         // Se retira columna del grid
         // dbgreporte.Selected.Add('USRAUT'#9'12'#9'Usuario que~autoriza'#9#9);
         // Fin: HPC_201707_ASO  
         dbgreporte.Selected.Add('UPRONOM'#9'25'#9'Nombre~Unidad de Proceso'#9#9);
         dbgreporte.Selected.Add('UPAGONOM'#9'25'#9'Nombre~Unidad de Pago'#9#9);
         dbgreporte.Selected.Add('USENOM'#9'30'#9'Nombre~Unidad de Gestión'#9#9);
         // INICIO HPC_201513_ASO
         // Inicio: HPC_201707_ASO  
         // Se retira columna del grid
         // dbgreporte.Selected.Add('FECHA_OPERACION'#9'30'#9'Fecha de Operación'#9#9);
         // Fin: HPC_201707_ASO  
         // FIN HPC_201513_ASO

         // Inicio: HPC_201707_ASO
         // Se adiciona columna del grid
         dbgreporte.Selected.Add('USRAUT'#9'15'#9'Código de usuario~que autoriza'#9#9);
         dbgreporte.Selected.Add('MOTAUT'#9'60'#9'Motivo de~autorización'#9#9);
         dbgreporte.Selected.Add('FHAUT'#9'20'#9'Fecha y hora~de autorización'#9#9);
         // Fin: HPC_201707_ASO
      End
      Else
      Begin
         dbgreporte.Selected.Add('DPTODES'#9'13'#9'Departamento'#9#9);
         dbgreporte.Selected.Add('UPROID'#9'10'#9'Unidad de~proceso'#9#9);
         dbgreporte.Selected.Add('UPAGOID'#9'10'#9'Unidad de~pago'#9#9);
         dbgreporte.Selected.Add('USEID'#9'10'#9'Unidad de~Gestión'#9#9);
         dbgreporte.Selected.Add('CANTIDAD'#9'14'#9'Nº~autorizaciones'#9#9);
         dbgreporte.Selected.Add('UPRONOM'#9'25'#9'Nombre~Unidad de Proceso'#9#9);
         dbgreporte.Selected.Add('UPAGONOM'#9'25'#9'Nombre~Unidad de Pago'#9#9);
         dbgreporte.Selected.Add('USENOM'#9'30'#9'Nombre~Unidad de Gestión'#9#9);
      End;
   End;
   dbgreporte.ApplySelected;
End;

Procedure TFRepNueAso.btncerrarClick(Sender: TObject);
Begin
   FRepNueAso.Close;
End;

Procedure TFRepNueAso.btnaexcelClick(Sender: TObject);
Var
   xSufijo: String;
   xAno, xMes, xDia: word;
Begin
   // INICIO HPC_201513_ASO
   Screen.Cursor:=crHourGlass;
   // FIN HPC_201513_ASO
   decodedate(DM1.FechaSys, xAno, xMes, xDia);
   With dbgreporte, dbgreporte.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      xSufijo := '';
      If FileExists('reporte.slk') Then
         xSufijo := inttostr(xAno)
            + DM1.strzero(inttostr(xMes), 2)
            + DM1.strzero(inttostr(xDia), 2)
            + copy(timetostr(time), 1, 2)
            + copy(timetostr(time), 4, 2)
            + copy(timetostr(time), 7, 2);
      FileName := 'reporte' + xSufijo + '.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgreporte.exportoptions.Filename),
            Nil, Nil, sw_shownormal);
   End;
   // INICIO HPC_201513_ASO
   Screen.Cursor:=crDefault;
   // FIN HPC_201513_ASO
End;

Procedure TFRepNueAso.btnimprimirClick(Sender: TObject);
Begin
   If rgtipo.ItemIndex = 0 Then
   Begin
      pplfecha.Caption := ' DEL ' + dbdtpinicio.Text + ' AL ' + dbdtpfinal.Text;
      pplimpresopor.Caption := 'Impreso por : ' + DM1.CrgDescrip('USERID=' +
         QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
      pprrepdet.Print;
   End
   Else
   Begin
      pplfechares.Caption := ' DEL ' + dbdtpinicio.Text + ' AL ' +
         dbdtpfinal.Text;
      pplimpresoporres.Caption := 'Impreso por : ' + DM1.CrgDescrip('USERID=' +
         QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
      pprrepres.Print;
   End;
End;

Procedure TFRepNueAso.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// se cierra cds abiertos en la forma
// se detectó en pruebas integrales
   DM1.cdsDpto.Close;
   DM1.cdsDpto.Filter:='';
   DM1.cdsDpto.Filtered:=False;
   DM1.cdsDpto.IndexFieldNames:='';

   DM1.cdsUPro.Close;
   DM1.cdsUPro.Filter:='';
   DM1.cdsUPro.Filtered:=False;
   DM1.cdsUPro.IndexFieldNames:='';

   DM1.cdsUPago.Close;
   DM1.cdsUPago.Filter:='';
   DM1.cdsUPago.Filtered:=False;
   DM1.cdsUPago.IndexFieldNames:='';

   DM1.cdsUSES.Close;
   DM1.cdsUSE.Filter:='';
   DM1.cdsUSE.Filtered:=False;
   DM1.cdsUSE.IndexFieldNames:='';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';
// Fin: HPP_201003_ASO

   Action := caFree;
End;

Procedure TFRepNueAso.rgtipreppriClick(Sender: TObject);
Begin
   DM1.cdsReporte.Close;
End;

Procedure TFRepNueAso.rgtipoClick(Sender: TObject);
Begin
   DM1.cdsReporte.Close;
End;

Procedure TFRepNueAso.dbdtpinicioExit(Sender: TObject);
Begin
   DM1.cdsReporte.Close;
End;

Procedure TFRepNueAso.dbdtpfinalExit(Sender: TObject);
Begin
   DM1.cdsReporte.Close;
End;

End.

