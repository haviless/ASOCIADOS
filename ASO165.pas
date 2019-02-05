Unit ASO165;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, wwdbdatetimepicker, Grids,
   Wwdbigrd, Wwdbgrid, db, DBGrids, ppCtrls, ppPrnabl, ppClass, ppBands,
   ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE,
   Mask, wwdblook, Wwdbdlg;

Type
   TFestpadr = Class(TForm)
      dbgprevio: TwwDBGrid;
      GroupBox1: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      dbdtpinicio: TwwDBDateTimePicker;
      dbdtpfinal: TwwDBDateTimePicker;
      rgtipaso: TRadioGroup;
      rgtiprep: TRadioGroup;
      btnprocesar: TBitBtn;
      btncerrar: TBitBtn;
      btnaExcel: TBitBtn;
      dtgData: TDBGrid;
      btnimprimir: TBitBtn;
      ppBDEPipeline1: TppBDEPipeline;
      pprestugel: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppDetailBand1: TppDetailBand;
      ppShape1: TppShape;
      ppLabel1: TppLabel;
      ppShape2: TppShape;
      ppLabel2: TppLabel;
      ppShape3: TppShape;
      ppLabel3: TppLabel;
      ppShape4: TppShape;
      ppLabel4: TppLabel;
      ppShape5: TppShape;
      ppLabel5: TppLabel;
      ppShape6: TppShape;
      ppLabel6: TppLabel;
      ppShape7: TppShape;
      ppLabel7: TppLabel;
      ppShape8: TppShape;
      ppLabel8: TppLabel;
      ppShape9: TppShape;
      ppShape10: TppShape;
      ppLabel9: TppLabel;
      ppShape11: TppShape;
      ppLabel10: TppLabel;
      ppShape12: TppShape;
      ppLabel11: TppLabel;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppShape13: TppShape;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppShape14: TppShape;
      ppLabel14: TppLabel;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppDBText8: TppDBText;
      ppDBText9: TppDBText;
      ppDBText10: TppDBText;
      ppDBText11: TppDBText;
      ppDBText12: TppDBText;
      ppDBText13: TppDBText;
      ppDBText14: TppDBText;
      ppShape15: TppShape;
      ppLabel15: TppLabel;
      ppShape16: TppShape;
      ppLabel16: TppLabel;
      ppShape17: TppShape;
      ppLabel17: TppLabel;
      ppShape18: TppShape;
      ppLabel18: TppLabel;
      ppShape19: TppShape;
      ppLabel19: TppLabel;
      ppDBText15: TppDBText;
      ppDBText16: TppDBText;
      ppDBText17: TppDBText;
      ppDBText18: TppDBText;
      ppSummaryBand1: TppSummaryBand;
      ppLine1: TppLine;
      ppDBCalc1: TppDBCalc;
      ppLine2: TppLine;
      ppDBCalc2: TppDBCalc;
      ppDBText19: TppDBText;
      ppDBCalc3: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppLabel20: TppLabel;
      ppDBCalc5: TppDBCalc;
      ppDBCalc6: TppDBCalc;
      ppDBCalc7: TppDBCalc;
      ppDBCalc8: TppDBCalc;
      ppDBCalc9: TppDBCalc;
      ppDBCalc10: TppDBCalc;
      ppDBCalc11: TppDBCalc;
      pplimpresopor: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppltitulo: TppLabel;
      ppLabel24: TppLabel;
      ppLabel25: TppLabel;
      ppLabel26: TppLabel;
      ppLabel27: TppLabel;
      ppLabel28: TppLabel;
      ppldptodes: TppLabel;
      pplasotipidesugel: TppLabel;
      pprdep: TppReport;
      ppHeaderBand2: TppHeaderBand;
      ppShape20: TppShape;
      ppLabel23: TppLabel;
      ppShape23: TppShape;
      ppLabel31: TppLabel;
      ppShape24: TppShape;
      ppLabel32: TppLabel;
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
      ppShape31: TppShape;
      ppLabel38: TppLabel;
      ppLabel40: TppLabel;
      ppShape33: TppShape;
      ppLabel41: TppLabel;
      ppShape34: TppShape;
      ppLabel42: TppLabel;
      ppShape35: TppShape;
      ppLabel43: TppLabel;
      ppShape36: TppShape;
      ppLabel44: TppLabel;
      ppShape37: TppShape;
      ppLabel45: TppLabel;
      ppShape38: TppShape;
      ppLabel46: TppLabel;
      ppLabel47: TppLabel;
      ppLabel48: TppLabel;
      ppltitulodep: TppLabel;
      ppLabel50: TppLabel;
      ppLabel52: TppLabel;
      ppLabel54: TppLabel;
      pplasotipdesdep: TppLabel;
      ppDetailBand2: TppDetailBand;
      ppDBText20: TppDBText;
      ppDBText25: TppDBText;
      ppDBText26: TppDBText;
      ppDBText27: TppDBText;
      ppDBText28: TppDBText;
      ppDBText29: TppDBText;
      ppDBText30: TppDBText;
      ppDBText31: TppDBText;
      ppDBText32: TppDBText;
      ppDBText33: TppDBText;
      ppDBText34: TppDBText;
      ppDBText35: TppDBText;
      ppDBText36: TppDBText;
      ppDBText37: TppDBText;
      ppSummaryBand2: TppSummaryBand;
      ppLine3: TppLine;
      ppDBCalc12: TppDBCalc;
      ppLine4: TppLine;
      ppDBCalc13: TppDBCalc;
      ppDBText38: TppDBText;
      ppDBCalc14: TppDBCalc;
      ppDBCalc15: TppDBCalc;
      ppLabel57: TppLabel;
      ppDBCalc16: TppDBCalc;
      ppDBCalc17: TppDBCalc;
      ppDBCalc18: TppDBCalc;
      ppDBCalc19: TppDBCalc;
      ppDBCalc20: TppDBCalc;
      ppDBCalc21: TppDBCalc;
      ppDBCalc22: TppDBCalc;
      pplimpresopordep: TppLabel;
      dblcddepdes: TwwDBLookupComboDlg;
      pnldepdes: TPanel;
      medepdes: TMaskEdit;
      Label3: TLabel;
      ppShape21: TppShape;
      ppLabel29: TppLabel;
      ppDBText21: TppDBText;
      ppDBCalc23: TppDBCalc;
      ppShape22: TppShape;
      ppLabel30: TppLabel;
      ppDBText22: TppDBText;
      ppDBCalc24: TppDBCalc;
      ppShape32: TppShape;
      ppLabel39: TppLabel;
      ppDBText23: TppDBText;
      ppDBCalc25: TppDBCalc;
      ppLabel49: TppLabel;
      ppShape39: TppShape;
      ppDBText24: TppDBText;
      ppDBCalc26: TppDBCalc;
      ppLabel51: TppLabel;
      ppShape40: TppShape;
      ppDBText39: TppDBText;
      ppDBCalc27: TppDBCalc;
      ppShape41: TppShape;
      ppLabel53: TppLabel;
      ppDBText40: TppDBText;
      ppDBCalc28: TppDBCalc;
      Procedure btnprocesarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btncerrarClick(Sender: TObject);
      Procedure btnaExcelClick(Sender: TObject);
      Procedure btnimprimirClick(Sender: TObject);
      Procedure rgtiprepClick(Sender: TObject);
      Procedure dblcddepdesExit(Sender: TObject);
      // inicio: HPP_201003_ASO
      // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      // Fin: HPP_201003_ASO

   Private
      { Private declarations }
   Public
      xasotipdes: String;
      { Public declarations }
   End;

Var
   Festpadr: TFestpadr;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure TFestpadr.btnprocesarClick(Sender: TObject);
Var
   xSql, xasotipid: String;
   xcanregmod_asocodpago, xcanregmod_asoncta, xcanregmod, xmodconcrevig, xmodconautdes, xcanregrec: Integer;
   xcanregugel, xcanregubi, xcanregnoubi, xcanregmod_asocodmod, xcanregmod_cargo, xcanregmod_useid: Integer;
   xcanregmod_regpen: Integer;
   xcanregmod_colegio: Integer; //HPP_20090008_ASO SAR2009-0256
   xcant_inc: Integer; //HPP_20090008_ASO SAR2009-0256
// inicio : HPC_201102_ASO
   xcanregmod_carlab, xcanregmod_sitact, xcanregmod_tipser : Integer; // SAR-2010-0155
// fin : HPC_201102_ASO
   //HPP_20090008_ASO SAR2009-0256 - INICIO

   Function getInconsistencias(IDptoid: String; IUProId: String = ''; IUPagoId: String = ''; IUseId: String = ''): integer;
   Var
      xSQL: String;
   Begin
      xSQL := 'SELECT COUNT(NUMERO) CANT '
         + '     FROM ASO_PAD_DES_DET '
         + '    WHERE NUMERO IN (SELECT DISTINCT NUMERO '
         + '                       FROM ASO_RES_ACT_PAD '
         + '                      WHERE FECHOR >= ' + QuotedStr(dbdtpinicio.Text)
         + '                        AND FECHOR <= ' + QuotedStr(dbdtpfinal.Text)
         + '                        AND ASOTIPID = ' + QuotedStr(xasotipid)
         + '                        AND DPTOID = ' + QuotedStr(IDptoid) + ') '
         + '      AND FLAINC IS NOT NULL ';

      If (trim(IUProId) <> '') And (trim(IUPagoId) <> '') And (trim(IUseId) <> '') Then
         xSQL := xSQL
            + '   AND UPROID =' + QuotedStr(IUProId)
            + '   AND UPAGOID =' + QuotedStr(IUPagoId)
            + '   AND USEID =' + QuotedStr(IUseId);

      DM1.cdsQry8.Close;
      DM1.cdsQry8.DataRequest(xSql);
      DM1.cdsQry8.Open;
      result := DM1.cdsQry8.fieldbyname('CANT').AsInteger;
   End;
   //HPP_20090008_ASO SAR2009-0256 - FIN
Begin
   //HPP_20090008_ASO SAR2009-0256 - INICIO
   (*
   IF rgtiprep.ItemIndex = 0 THEN
      dblcddepdes.Enabled := True
   ELSE
      dblcddepdes.Enabled := False;
   *)
   If rgtiprep.ItemIndex = 0 Then
   Begin
      If (dblcddepdes.Text = '') Then
      Begin
         MessageDlg('Seleccione un Departamento', mtError, [mbOk], 0);
         dblcddepdes.SetFocus;
         Exit;
      End;
   End;
   //HPP_20090008_ASO SAR2009-0256 - FIN

   If Trim(dbdtpinicio.Text) = '' Then
   Begin
      MessageDlg('Ingrese fecha inicial', mtError, [mbOk], 0);
      dbdtpinicio.SetFocus;
      Exit;
   End;
   If Trim(dbdtpfinal.Text) = '' Then
   Begin
      MessageDlg('Ingrese fecha final', mtError, [mbOk], 0);
      dbdtpfinal.SetFocus;
      Exit;
   End;
   If rgtipaso.ItemIndex = -1 Then
   Begin
      MessageDlg('Seleccione tipo de asociado', mtError, [mbOk], 0);
      rgtipaso.SetFocus;
      Exit;
   End;
   If rgtiprep.ItemIndex = -1 Then
   Begin
      rgtiprep.SetFocus;
      MessageDlg('Seleccione tipo de reporte', mtError, [mbOk], 0);
      Exit;
   End;
   Screen.Cursor := crHourGlass;

   If rgtipaso.ItemIndex = 0 Then
   Begin
      xasotipid := 'DO';
      xasotipdes := 'DOCENTE';
   End
   Else
   Begin
      xasotipid := 'CE';
      xasotipdes := 'CESANTE';
   End;

   If rgtiprep.ItemIndex = 0 Then
      xSql := 'SELECT A.DPTOID, B.DPTODES, A.UPROID, C.UPRONOM, '
         + '          A.UPAGOID, D.UPAGONOM, A.USEID, E.USENOM, '
         + '          SUM(NVL(A.CANREGREC,0)) CANREGREC,'
         + '          SUM(NVL(A.CANREGUGEL,0)) CANREGUGEL, '
         + '          SUM(NVL(A.CANREGUBI,0))  CANREGUBI,'
         + '          SUM(NVL(A.CANREGNOUBI,0)) CANREGNOUBI, '
         + '          SUM(NVL(A.CANREGMOD_ASOCODMOD,0)) CANREGMOD_ASOCODMOD, '
         + '          SUM(NVL(A.CANREGMOD_CARGO,0)) CANREGMOD_CARGO,'
         + '          SUM(NVL(A.CANREGMOD_USEID,0)) CANREGMOD_USEID, '
         + '          SUM(NVL(A.CANREGMOD_ASOCODPAGO,0)) CANREGMOD_ASOCODPAGO, '
         + '          SUM(NVL(A.CANREGMOD_ASONCTA,0)) CANREGMOD_ASONCTA,'
         + '          SUM(NVL(A.CANREGMOD_REGPEN,0)) CANREGMOD_REGPEN, '
// inicio : HPC_201102_ASO
         + '          SUM(NVL(A.CANREGMOD_CARLAB,0)) CANREGMOD_CARLAB, '  // SAR-2010-0155
         + '          SUM(NVL(A.CANREGMOD_SITACT,0)) CANREGMOD_SITACT, '  // SAR-2010-0155
         + '          SUM(NVL(A.CANREGMOD_TIPSER,0)) CANREGMOD_TIPSER, '  // SAR-2010-0155
// fin : HPC_201102_ASO
         + '          SUM(NVL(A.CANREGMOD,0)) CANREGMOD, '
         + '          SUM(NVL(A.PORACT,0)) PORACT, '
         + '          SUM(NVL(A.MODCONCREVIG,0)) MODCONCREVIG, '
         + '          SUM(NVL(A.MODCONAUTDES,0)) MODCONAUTDES, '
         + '          SUM(NVL(A.CANREGMOD_COLEGIO, 0)) CANREGMOD_COLEGIO, ' //HPP_20090008_ASO SAR2009-0256
         + '          0 CANT_INC ' //HPP_20090008_ASO SAR2009-0256
         + '     FROM ASO_RES_ACT_PAD A, APO158 B, APO102 C, APO103 D, APO101 E'
         + '    WHERE FECHOR >= ' + QuotedStr(dbdtpinicio.Text)
         + '      AND FECHOR <= ' + QuotedStr(dbdtpfinal.Text)
         + '      AND ASOTIPID = ' + QuotedStr(xasotipid)
         + '      AND A.DPTOID = ' + QuotedStr(dblcddepdes.Text)
         + '      AND A.DPTOID = B.DPTOID(+) ' //HPP_20090008_ASO SAR2009-0256
         + '      AND A.UPROID = C.UPROID(+) ' //HPP_20090008_ASO SAR2009-0256
         + '      AND A.UPROID = D.UPROID(+) ' //HPP_20090008_ASO SAR2009-0256
         + '      AND A.UPAGOID = D.UPAGOID(+)' //HPP_20090008_ASO SAR2009-0256
      //Cambio por HPP_00024_ASO - 23/09/2008
      + '      AND A.UPROID = E.UPROID(+) ' //HPP_20090008_ASO SAR2009-0256
         + '      AND A.UPAGOID = E.UPAGOID(+) ' //HPP_20090008_ASO SAR2009-0256
         + '      AND A.USEID = E.USEID(+) ' //HPP_20090008_ASO SAR2009-0256
         + '      AND NVL(E.FDESHABILITADO,''S'') =''N'' '
         + '    GROUP BY A.DPTOID, B.DPTODES, A.UPROID, C.UPRONOM, A.UPAGOID, D.UPAGONOM, A.USEID, E.USENOM'
   Else
      xSql := 'SELECT A.DPTOID, B.DPTODES, '
         + '          SUM(NVL(A.CANREGREC,0)) CANREGREC, '
         + '          SUM(NVL(A.CANREGUGEL,0))  CANREGUGEL, '
         + '          SUM(NVL(A.CANREGUBI,0))  CANREGUBI,'
         + '          SUM(NVL(A.CANREGNOUBI,0)) CANREGNOUBI, '
         + '          SUM(NVL(A.CANREGMOD_ASOCODMOD,0)) CANREGMOD_ASOCODMOD, '
         + '          SUM(NVL(A.CANREGMOD_CARGO,0)) CANREGMOD_CARGO,'
         + '          SUM(NVL(A.CANREGMOD_USEID,0)) CANREGMOD_USEID, '
         + '          SUM(NVL(A.CANREGMOD_ASOCODPAGO,0)) CANREGMOD_ASOCODPAGO, '
         + '          SUM(NVL(A.CANREGMOD_ASONCTA,0)) CANREGMOD_ASONCTA,'
         + '          SUM(NVL(A.CANREGMOD_REGPEN,0)) CANREGMOD_REGPEN, '
// inicio : HPC_201102_ASO
         + '          SUM(NVL(A.CANREGMOD_CARLAB,0)) CANREGMOD_CARLAB, '  // SAR-2010-0155
         + '          SUM(NVL(A.CANREGMOD_SITACT,0)) CANREGMOD_SITACT, '  // SAR-2010-0155
         + '          SUM(NVL(A.CANREGMOD_TIPSER,0)) CANREGMOD_TIPSER, '  // SAR-2010-0155
// fin : HPC_201102_ASO
         + '          SUM(NVL(A.CANREGMOD,0)) CANREGMOD, '
         + '          SUM(NVL(A.PORACT,0)) PORACT, '
         + '          SUM(NVL(A.MODCONCREVIG,0)) MODCONCREVIG, '
         + '          SUM(NVL(A.MODCONAUTDES,0)) MODCONAUTDES, '
         + '          SUM(NVL(A.CANREGMOD_COLEGIO, 0)) CANREGMOD_COLEGIO, ' //HPP_20090008_ASO SAR2009-0256
         + '          0 CANT_INC ' //HPP_20090008_ASO SAR2009-0256
         + '     FROM ASO_RES_ACT_PAD A, APO158 B '
         + '    WHERE FECHOR >= ' + QuotedStr(dbdtpinicio.Text)
         + '      AND FECHOR <= ' + QuotedStr(dbdtpfinal.Text)
         + '      AND ASOTIPID = ' + QuotedStr(xasotipid)
         + '      AND A.DPTOID = B.DPTOID(+)' //HPP_20090008_ASO SAR2009-0256
         + '    GROUP BY A.DPTOID, B.DPTODES';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;

   //HPP_20090008_ASO SAR2009-0256 - INICIO
   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.Eof Do
   Begin
      DM1.cdsReporte.Edit;
      If rgtiprep.ItemIndex = 1 Then // POR DEPARTAMENTOS
         DM1.cdsReporte.FieldByName('CANT_INC').Value := getInconsistencias(DM1.cdsReporte.FieldByName('DPTOID').Value)
      Else // POR UGEL
         DM1.cdsReporte.FieldByName('CANT_INC').Value := getInconsistencias(DM1.cdsReporte.FieldByName('DPTOID').Value,
            DM1.cdsReporte.FieldByName('UPROID').Value,
            DM1.cdsReporte.FieldByName('UPAGOID').Value,
            DM1.cdsReporte.FieldByName('USEID').Value);
      DM1.cdsReporte.Post;
      DM1.cdsReporte.Next;
   End;
   DM1.cdsReporte.First;
   //HPP_20090008_ASO SAR2009-0256 - FIN

   If rgtiprep.ItemIndex = 0 Then
   Begin
      dbgprevio.Selected.Clear;
      dbgprevio.Selected.Add('DPTOID'#9'2'#9'Cod.~Dpto'#9#9);
      dbgprevio.Selected.Add('DPTODES'#9'15'#9'Desc..~Departamento'#9#9);
      dbgprevio.Selected.Add('UPROID'#9'3'#9'Uni.~Pro.'#9#9);
      dbgprevio.Selected.Add('UPRONOM'#9'25'#9'Desc..~Uni.Proceso'#9#9);
      dbgprevio.Selected.Add('UPAGOID'#9'3'#9'Uni.~Pag.'#9#9);
      dbgprevio.Selected.Add('UPAGONOM'#9'25'#9'Desc..~Uni.Pago'#9#9);
      dbgprevio.Selected.Add('USEID'#9'3'#9'Uni.~Gest.'#9#9);
      dbgprevio.Selected.Add('USENOM'#9'25'#9'Desc..~Uni.Gestión'#9#9);
      dbgprevio.Selected.Add('CANREGREC'#9'10'#9'Registros~recepcionados'#9#9);
      dbgprevio.Selected.Add('CANREGUGEL'#9'10'#9'Inventario~de Ugel'#9#9);
      dbgprevio.Selected.Add('CANREGUBI'#9'10'#9'Registros~ubicados'#9#9);
      dbgprevio.Selected.Add('CANREGNOUBI'#9'10'#9'Registros~no ubicados'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_ASOCODMOD'#9'10'#9'Cod.Mod.~modificado'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_CARGO'#9'10'#9'Cargo~modificado'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_USEID'#9'10'#9'Uni.Ges.~modificado'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_ASOCODPAGO'#9'10'#9'Cod.Pago~modificado'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_ASONCTA'#9'10'#9'Cuenta~modificado'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_REGPEN'#9'10'#9'Reg.pen.~modificado'#9#9);
// inicio : HPC_201102_ASO
      dbgprevio.Selected.Add('CANREGMOD_CARLAB'#9'10'#9'Car.Lab.~modificado'#9#9); // SAR-2010-0155
      dbgprevio.Selected.Add('CANREGMOD_SITACT'#9'10'#9'Sit.Act.~modificado'#9#9); // SAR-2010-0155
      dbgprevio.Selected.Add('CANREGMOD_TIPSER'#9'10'#9'Tip.Ser.~modificado'#9#9); // SAR-2010-0155
// fin : HPC_201102_ASO
      dbgprevio.Selected.Add('CANREGMOD_COLEGIO'#9'10'#9'Cen.Edu.~modificado'#9#9); //HPP_20090008_ASO SAR2009-0256
      dbgprevio.Selected.Add('CANREGMOD'#9'10'#9'Registro~modificado'#9#9);
      dbgprevio.Selected.Add('PORACT'#9'10'#9'porcentaje~modificado'#9#9);
      dbgprevio.Selected.Add('CANT_INC'#9'10'#9'Inconsistencias'#9#9);
      dbgprevio.Selected.Add('MODCONCREVIG'#9'10'#9'Modificado~con cred.vig.'#9#9);
      dbgprevio.Selected.Add('MODCONAUTDES'#9'10'#9'Modificado~con aut.desc.'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('CANREGREC')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGUGEL')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGUBI')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGNOUBI')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_ASOCODMOD')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_CARGO')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_USEID')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_ASOCODPAGO')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_ASONCTA')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_REGPEN')).DisplayFormat := '###,###';
// inicio : HPC_201102_ASO
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_CARLAB')).DisplayFormat := '###,###'; // SAR-2010-0155
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_SITACT')).DisplayFormat := '###,###'; // SAR-2010-0155
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_TIPSER')).DisplayFormat := '###,###'; // SAR-2010-0155
// fin : HPC_201102_ASO
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_COLEGIO')).DisplayFormat := '###,###'; //HPP_20090008_ASO SAR2009-0256
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('PORACT')).DisplayFormat := '#0.#0';
      TNumericField(DM1.cdsReporte.FieldByName('CANT_INC')).DisplayFormat := '###,##0';
      TNumericField(DM1.cdsReporte.FieldByName('MODCONCREVIG')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('MODCONAUTDES')).DisplayFormat := '###,###';
   End
   Else
   Begin
      dbgprevio.Selected.Clear;
      dbgprevio.Selected.Add('DPTOID'#9'2'#9'Cod.~Dpto'#9#9);
      dbgprevio.Selected.Add('DPTODES'#9'15'#9'Desc..~Departamento'#9#9);
      dbgprevio.Selected.Add('CANREGREC'#9'10'#9'Registros~recepcionados'#9#9);
      dbgprevio.Selected.Add('CANREGUGEL'#9'10'#9'Inventario~de Ugel'#9#9);
      dbgprevio.Selected.Add('CANREGUBI'#9'10'#9'Registros~ubicados'#9#9);
      dbgprevio.Selected.Add('CANREGNOUBI'#9'10'#9'Registros~no ubicados'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_ASOCODMOD'#9'10'#9'Cod.Mod.~modificado'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_CARGO'#9'10'#9'Cargo~modificado'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_USEID'#9'10'#9'Uni.Ges.~modificado'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_ASOCODPAGO'#9'10'#9'Cod.Pago~modificado'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_ASONCTA'#9'10'#9'Cuenta~modificado'#9#9);
      dbgprevio.Selected.Add('CANREGMOD_COLEGIO'#9'10'#9'Cen.Edu.~modificado'#9#9); //HPP_20090008_ASO SAR2009-0256
      dbgprevio.Selected.Add('CANREGMOD_REGPEN'#9'10'#9'Reg.pen.~modificado'#9#9);
// inicio : HPC_201102_ASO
      dbgprevio.Selected.Add('CANREGMOD_CARLAB'#9'10'#9'Car.Lab.~modificado'#9#9); // SAR-2010-0155
      dbgprevio.Selected.Add('CANREGMOD_SITACT'#9'10'#9'Sit.Act.~modificado'#9#9); // SAR-2010-0155
      dbgprevio.Selected.Add('CANREGMOD_TIPSER'#9'10'#9'Tip.Ser.~modificado'#9#9); // SAR-2010-0155
// fin : HPC_201102_ASO
      dbgprevio.Selected.Add('CANREGMOD'#9'10'#9'Registro~modificado'#9#9);
      dbgprevio.Selected.Add('PORACT'#9'10'#9'porcentaje~modificado'#9#9);
      dbgprevio.Selected.Add('CANT_INC'#9'10'#9'Inconsistencias'#9#9); //HPP_20090008_ASO SAR2009-0256
      dbgprevio.Selected.Add('MODCONCREVIG'#9'10'#9'Modificado~con cred.vig.'#9#9);
      dbgprevio.Selected.Add('MODCONAUTDES'#9'10'#9'Modificado~con aut.desc.'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('CANREGREC')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGUGEL')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGUBI')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGNOUBI')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_ASOCODMOD')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_CARGO')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_USEID')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_ASOCODPAGO')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_ASONCTA')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_COLEGIO')).DisplayFormat := '###,###'; //HPP_20090008_ASO SAR2009-0256
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_REGPEN')).DisplayFormat := '###,###';
// inicio : HPC_201102_ASO
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_CARLAB')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_SITACT')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD_TIPSER')).DisplayFormat := '###,###';
// fin : HPC_201102_ASO
      TNumericField(DM1.cdsReporte.FieldByName('CANREGMOD')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('PORACT')).DisplayFormat := '#0.#0';
      TNumericField(DM1.cdsReporte.FieldByName('CANT_INC')).DisplayFormat := '###,##0'; //HPP_20090008_ASO SAR2009-0256
      TNumericField(DM1.cdsReporte.FieldByName('MODCONCREVIG')).DisplayFormat := '###,###';
      TNumericField(DM1.cdsReporte.FieldByName('MODCONAUTDES')).DisplayFormat := '###,###';
   End;
   xcanregmod_asocodpago := 0;
   xcanregmod_asoncta := 0;
   xcanregmod := 0;
   xmodconcrevig := 0;
   xmodconautdes := 0;
   xcanregrec := 0;
   xcanregubi := 0;
   xcanregnoubi := 0;
   xcanregmod_asocodmod := 0;
   xcanregmod_cargo := 0;
   xcanregmod_useid := 0;
   xcanregugel := 0;
   xcanregmod_colegio := 0; //HPP_20090008_ASO SAR2009-0256
   xcant_inc := 0; //HPP_20090008_ASO SAR2009-0256
   xcanregmod_regpen := 0;
// inicio : HPC_201102_ASO
   xcanregmod_carlab := 0; // SAR-2010-0155
   xcanregmod_sitact := 0; // SAR-2010-0155
   xcanregmod_tipser := 0; // SAR-2010-0155
// fin : HPC_201102_ASO
   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.Eof Do
   Begin
      xcanregrec := xcanregrec + DM1.cdsReporte.FieldByName('CANREGREC').AsInteger;
      xcanregugel := xcanregugel + DM1.cdsReporte.FieldByName('CANREGUGEL').AsInteger;
      xcanregubi := xcanregubi + DM1.cdsReporte.FieldByName('CANREGUBI').AsInteger;
      xcanregnoubi := xcanregnoubi + DM1.cdsReporte.FieldByName('CANREGNOUBI').AsInteger;
      xcanregmod_asocodmod := xcanregmod_asocodmod + DM1.cdsReporte.FieldByName('CANREGMOD_ASOCODMOD').AsInteger;
      xcanregmod_cargo := xcanregmod_cargo + DM1.cdsReporte.FieldByName('CANREGMOD_CARGO').AsInteger;
      xcanregmod_useid := xcanregmod_useid + DM1.cdsReporte.FieldByName('CANREGMOD_USEID').AsInteger;
      xcanregmod_asocodpago := xcanregmod_asocodpago + DM1.cdsReporte.FieldByName('CANREGMOD_ASOCODPAGO').AsInteger;
      xcanregmod_asoncta := xcanregmod_asoncta + DM1.cdsReporte.FieldByName('CANREGMOD_ASONCTA').AsInteger;
      xcanregmod_regpen := xcanregmod_regpen + DM1.cdsReporte.FieldByName('CANREGMOD_REGPEN').AsInteger;
// inicio : HPC_201102_ASO
      xcanregmod_carlab := xcanregmod_carlab + DM1.cdsReporte.FieldByName('CANREGMOD_CARLAB').AsInteger; // SAR-2010-0155
      xcanregmod_sitact := xcanregmod_sitact + DM1.cdsReporte.FieldByName('CANREGMOD_SITACT').AsInteger; // SAR-2010-0155
      xcanregmod_tipser := xcanregmod_tipser + DM1.cdsReporte.FieldByName('CANREGMOD_TIPSER').AsInteger; // SAR-2010-0155
// fin : HPC_201102_ASO
      xcanregmod := xcanregmod + DM1.cdsReporte.FieldByName('CANREGMOD').AsInteger;
      xmodconcrevig := xmodconcrevig + DM1.cdsReporte.FieldByName('MODCONCREVIG').AsInteger;
      xmodconautdes := xmodconautdes + DM1.cdsReporte.FieldByName('MODCONAUTDES').AsInteger;
      xcanregmod_colegio := xcanregmod_colegio + DM1.cdsReporte.FieldByName('CANREGMOD_COLEGIO').AsInteger; //HPP_20090008_ASO SAR2009-0256
      xcant_inc := xcant_inc + DM1.cdsReporte.FieldByName('CANT_INC').AsInteger; //HPP_20090008_ASO SAR2009-0256
      DM1.cdsReporte.Next;
   End;

   dbgprevio.ColumnByName('DPTODES').FooterValue := 'Totales :';
   dbgprevio.ColumnByName('CANREGREC').FooterValue := FormatFloat('##,###', xcanregrec);
   dbgprevio.ColumnByName('CANREGUGEL').FooterValue := FormatFloat('##,###', xcanregugel);
   dbgprevio.ColumnByName('CANREGUBI').FooterValue := FormatFloat('##,###', xcanregubi);
   dbgprevio.ColumnByName('CANREGNOUBI').FooterValue := FormatFloat('##,###', xcanregnoubi);
   dbgprevio.ColumnByName('CANREGMOD_ASOCODMOD').FooterValue := FormatFloat('##,###', xcanregmod_asocodmod);
   dbgprevio.ColumnByName('CANREGMOD_CARGO').FooterValue := FormatFloat('##,###', xcanregmod_cargo);
   dbgprevio.ColumnByName('CANREGMOD_USEID').FooterValue := FormatFloat('##,###', xcanregmod_useid);
   dbgprevio.ColumnByName('CANREGMOD_ASOCODPAGO').FooterValue := FormatFloat('##,###', xcanregmod_asocodpago);
   dbgprevio.ColumnByName('CANREGMOD_ASONCTA').FooterValue := FormatFloat('##,###', xcanregmod_asoncta);
   dbgprevio.ColumnByName('CANREGMOD_REGPEN').FooterValue := FormatFloat('##,###', xcanregmod_regpen); //HPP_20090008_ASO SAR2009-0256

// inicio : HPC_201102_ASO
   dbgprevio.ColumnByName('CANREGMOD_CARLAB').FooterValue := FormatFloat('##,###', xcanregmod_carlab); // SAR-2010-0155
   dbgprevio.ColumnByName('CANREGMOD_TIPSER').FooterValue := FormatFloat('##,###', xcanregmod_tipser); // SAR-2010-0155
   dbgprevio.ColumnByName('CANREGMOD_SITACT').FooterValue := FormatFloat('##,###', xcanregmod_sitact); // SAR-2010-0155
// fin : HPC_201102_ASO

   dbgprevio.ColumnByName('CANREGMOD_COLEGIO').FooterValue := FormatFloat('##,###', xcanregmod_colegio); //HPP_20090008_ASO SAR2009-0256
   dbgprevio.ColumnByName('CANREGMOD').FooterValue := FormatFloat('##,###', xcanregmod);
   dbgprevio.ColumnByName('CANT_INC').FooterValue := FormatFloat('##,###', xcant_inc); //HPP_20090008_ASO SAR2009-0256
   dbgprevio.ColumnByName('MODCONCREVIG').FooterValue := FormatFloat('##,###', xmodconcrevig);
   dbgprevio.ColumnByName('MODCONAUTDES').FooterValue := FormatFloat('##,###', xmodconautdes);
   Screen.Cursor := crDefault;
End;

Procedure TFestpadr.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin
   xSql := 'SELECT DPTOID, DPTODES FROM APO158';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSql);
   DM1.cdsDpto.Open;
   dblcddepdes.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
   dblcddepdes.Selected.Add('DPTODES'#9'30'#9'Departamento'#9#9);
   If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
   dbdtpinicio.SetFocus;
End;

Procedure TFestpadr.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

Procedure TFestpadr.btncerrarClick(Sender: TObject);
Begin
   Festpadr.Close;
End;

Procedure TFestpadr.btnaExcelClick(Sender: TObject);
Begin
// inicio : HPC_201102_ASO
//   DM1.HojaExcel('Resumen', DM1.dsReporte, dtgData);

 //decodedate(DM1.FechaSys,xAno,xMes,xDia);
  // xArchivo:='EstxUGEL_'+inttostr(xAno)+DM1.StrZero(inttostr(xMes),2)+DM1.StrZero(inttostr(xDia),2);
  // xArchivo:=xArchivo+copy(timetostr(time),1,2)+copy(timetostr(time),4,2)+copy(timetostr(time),7,2);

   DM1.ExportaGridExcel(dbgprevio, 'Est_Pad'); 
  // xNumLista := xNumlista+1;
  // xListaExcel[xNumLista] := xArchivo+'.slk';
// fin : HPC_201102_ASO
End;

Procedure TFestpadr.btnimprimirClick(Sender: TObject);
Begin
   If (DM1.cdsReporte.Active = False) Or (DM1.cdsReporte.RecordCount = 0) Then
   Begin
      MessageDlg('No ha encontrado información para imprimir', mtError, [mbOk], 0);
      Exit;
   End;
   // Imprimir
   If rgtiprep.ItemIndex = 0 Then
   Begin
      ppltitulo.Caption := 'ESTADISTICA DE ACTUALIZACION DE PADRONES DEL ' + dbdtpinicio.Text + ' AL ' + dbdtpfinal.Text;
      pplimpresopor.Caption := 'Impreso por   : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
      pplasotipidesugel.Caption := xasotipdes;
      ppldptodes.Caption := DM1.cdsDpto.FieldByName('DPTODES').AsString;
      pprestugel.Print;
   End
   Else
   Begin
      ppltitulodep.Caption := 'ESTADISTICA DE ACTUALIZACION DE PADRONES DEL ' + dbdtpinicio.Text + ' AL ' + dbdtpfinal.Text;
      pplimpresopordep.Caption := 'Impreso por   : ' + DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
      pplasotipdesdep.Caption := xasotipdes;
      pprdep.Print;
   End;
End;

Procedure TFestpadr.rgtiprepClick(Sender: TObject);
Begin
   If rgtiprep.ItemIndex = 0 Then
   Begin
      dblcddepdes.Enabled := True;
      dblcddepdes.SetFocus;
      Exit;
   End
   Else
   Begin
      dblcddepdes.Enabled := False;
      dblcddepdes.Text := '';
      medepdes.Text := '';
      btnprocesar.SetFocus;
      Exit;
   End;
End;

Procedure TFestpadr.dblcddepdesExit(Sender: TObject);
Begin
   If DM1.cdsDpto.Locate('DPTOID', VarArrayof([dblcddepdes.Text]), []) Then
      medepdes.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
End;

procedure TFestpadr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';
// Fin: HPP_201003_ASO
end;

End.

