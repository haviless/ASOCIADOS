// Inicio Uso Estándares:	01/08/2011
// Unidad		            :	ASO168.pas
// Formulario		        :	fAutDesApo
// Fecha de Creación	  :	
// Autor			          :	Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Reporte de estadísticas de autorización de descuentos

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// Inicio: HPP_201010_ASO (HPC_201005_ASO)
// se cambio forma completa
// se deshabilitó botón que genera archivo ASO_RES_AUT_DES
// todas las consultas se realizan en línea del APO201
// HPC_201305_ASO   : El departamento se obtiene de la Ugel y no del departamento de domicilio del asociado
// SPP_201306_ASO   : Se realiza el pase a producción a partir del HPC_201305_ASO

Unit ASO168;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Db, ppCtrls,
   ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
   ppComm, ppRelatv, ppDBPipe, DbChart, ExtCtrls, wwdbdatetimepicker,
   ppEndUsr, ppParameter;

Type
   TfAutDesApo = Class(TForm)
      bitGenerar: TBitBtn;
      lblInicio: TLabel;
      lblFin: TLabel;
      dtgCabAut01: TwwDBGrid;
      BitMostrar: TBitBtn;
      Label1: TLabel;
      Label2: TLabel;
      dtgCabAut02: TwwDBGrid;
      lblTitulo: TLabel;
      BitSalir: TBitBtn;
      BitPrint: TBitBtn;
      BitImpr: TBitBtn;
      dbResPoblacion: TppDBPipeline;
      rpResPoblacion: TppReport;
      dbResProduccion: TppDBPipeline;
      dbeResumenppField1: TppField;
      dbeResumenppField2: TppField;
      dbeResumenppField3: TppField;
      dbeResumenppField4: TppField;
      dbeResumenppField5: TppField;
      rpResProduccion: TppReport;
      dtgCabAut03: TwwDBGrid;
      pnlFecha: TPanel;
      dtpFecha: TwwDBDateTimePicker;
      dtpHasta: TwwDBDateTimePicker;
      Label3: TLabel;
      Label4: TLabel;
      BitMstDatos: TButton;
      BitDptoSex: TButton;
      ppHeaderBand1: TppHeaderBand;
      ppLabel2: TppLabel;
      xTitulos01: TppLabel;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      xTitulos02: TppLabel;
      ppLabel9: TppLabel;
      ppLine1: TppLine;
      ppLine2: TppLine;
      sTitulo: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppLabel14: TppLabel;
      ppSummaryBand1: TppSummaryBand;
      ppLine3: TppLine;
      ppLine4: TppLine;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppHeaderBand9: TppHeaderBand;
      ppShape2: TppShape;
      ppLabel108: TppLabel;
      Titulos01: TppLabel;
      ppLabel159: TppLabel;
      ppLabel160: TppLabel;
      ppLabel161: TppLabel;
      ppSystemVariable25: TppSystemVariable;
      ppSystemVariable26: TppSystemVariable;
      ppSystemVariable27: TppSystemVariable;
      ppLabel162: TppLabel;
      ppLabel163: TppLabel;
      ppLabel164: TppLabel;
      Titulos02: TppLabel;
      ppLabel170: TppLabel;
      ppLabel171: TppLabel;
      ppLabel172: TppLabel;
      ppLine48: TppLine;
      ppLine49: TppLine;
      ppLabel1: TppLabel;
      ppLabel12: TppLabel;
      ppDetailBand9: TppDetailBand;
      ppShape1: TppShape;
      ppDBText58: TppDBText;
      ppDBText60: TppDBText;
      ppDBText61: TppDBText;
      ppDBText64: TppDBText;
      ppDBText3: TppDBText;
      ppFooterBand9: TppFooterBand;
      ppLabel13: TppLabel;
      ppSummaryBand9: TppSummaryBand;
      ppLine29: TppLine;
      ppLine30: TppLine;
      ppLabel166: TppLabel;
      ppLabel167: TppLabel;
      ppDBCalc21: TppDBCalc;
      ppDBCalc51: TppDBCalc;
      lblPorFin: TppLabel;
      ppShape3: TppShape;
      ppDBCalc2: TppDBCalc;
      rgProduccion: TRadioGroup;
      Procedure bitGenerarClick(Sender: TObject);
      Procedure BitMostrarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dtgCabAut01DblClick(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure dtgCabAut02DblClick(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure BitImprClick(Sender: TObject);
      Procedure dtgCabAut01DrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure dtgCabAut01DrawFooterCell(Sender: TObject; Canvas: TCanvas;
         FooterCellRect: TRect; Field: TField; FooterText: String;
         Var DefaultDrawing: Boolean);
      Procedure dtgCabAut01DrawTitleCell(Sender: TObject; Canvas: TCanvas;
         Field: TField; Rect: TRect; Var DefaultDrawing: Boolean);
      Procedure BitMstDatosClick(Sender: TObject);
      Procedure dtpFechaChange(Sender: TObject);
      Procedure dtpHastaChange(Sender: TObject);
      Procedure dtgCabAut03DblClick(Sender: TObject);
      Procedure BitDptoSexClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure rgProduccionClick(Sender: TObject);
   Private
    { Private declarations }
      Procedure SumaFooter(xGrid: String);
      Procedure LimpiaGrid;
      Procedure LimpiaGrid03;
      Procedure MostrarDetalle(xOfiDes, xGrid: String);
//
   Public
    { Public declarations }
   End;

Var
   fAutDesApo: TfAutDesApo;

Implementation

Uses ASODM, ASO001, ASO169, ASO170;

{$R *.dfm}

Procedure TfAutDesApo.bitGenerarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Screen.Cursor := crHourGlass;
   lblInicio.Caption := TimeToStr(Time);
   fAutDesApo.Refresh;
   xSQL := 'BEGIN SP_CARGA_AUTORIZACION(' + QuotedStr('PROCESO') + '); END;';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   lblFin.Caption := TimeToStr(Time);
   fAutDesApo.Refresh;
   BitMostrar.Caption := 'Mostrar Datos Al : ' + DM1.UltProceso;
   LimpiaGrid;
   Screen.Cursor := crDefault;
End;

Procedure TfAutDesApo.BitMostrarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'select OFDESID, OFDESNOM, POBLACION, AUTORIZARON, SALDO, round(((AUTORIZARON/POBLACION)*100),2) AVANCE '
      + 'from (select nvl(B.OFDESID,''99'') OFDESID, '
      + '             nvl(C.OFDESNOM,''OF.NO IDENTIF'') OFDESNOM, '
      + '             sum(1) POBLACION, '
      + '             sum(case when nvl(A.AUTDESAPO,''X'') = ''S'' then 1 else 0 end) AUTORIZARON, '
      + '             sum(case when nvl(A.AUTDESAPO,''X'') <> ''S'' then 1 else 0 end) SALDO '
      + '      from APO201 A, APO101 B, APO110 C '
      + '      where A.ASOTIPID=''DO'' AND NVL(A.FALLECIDO,''N'') = ''N'' '
      + '        and B.UPROID(+)=A.UPROID and B.UPAGOID(+)=A.UPAGOID and B.USEID(+)=A.USEID '
      + '        and C.OFDESID(+)=B.OFDESID '
      + '      group by B.OFDESID, C.OFDESNOM) XX '
      + 'order by OFDESID ';
   DM1.cdsConsulta.Close;
   DM1.cdsConsulta.DataRequest(xSQL);
   DM1.cdsConsulta.Open;
   Screen.Cursor := crDefault;
   TNumericField(DM1.cdsConsulta.FieldByName('POBLACION')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsConsulta.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsConsulta.FieldByName('SALDO')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsConsulta.FieldByName('AVANCE')).DisplayFormat := '###.#0';
   SumaFooter('01');

   Screen.Cursor := crHourGlass;
   xSQL := 'select OFDESPRO, OFDESNOM, POBLACION, AUTORIZARON, SALDO, round(((AUTORIZARON/POBLACION)*100),2) AVANCE '
      + 'from (select nvl(A.OFIREGAUTDESAPO,''99'') OFDESPRO, '
      + '             nvl(C.OFDESNOM,''OF.NO IDENTIF'') OFDESNOM, '
      + '             sum(1) POBLACION, '
      + '             sum(case when nvl(A.AUTDESAPO,''X'') = ''S'' then 1 else 0 end) AUTORIZARON, '
      + '             sum(case when nvl(A.AUTDESAPO,''X'') <> ''S'' then 1 else 0 end) SALDO '
      + '      from APO201 A, APO101 B, APO110 C '
      + '      where A.ASOTIPID=''DO'' AND NVL(A.FALLECIDO,''N'') = ''N''  '
      + '        and B.UPROID(+)=A.UPROID and B.UPAGOID(+)=A.UPAGOID and B.USEID(+)=A.USEID '
      + '        and C.OFDESID(+)=A.OFIREGAUTDESAPO '
      + '      group by A.OFIREGAUTDESAPO, C.OFDESNOM) XX '
      + 'order by OFDESPRO ';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   dtgCabAut03.Visible := False;
   pnlFecha.Visible := False;
   dtgCabAut02.Visible := True;
   dtgCabAut02.DataSource := Nil;
   dtgCabAut02.DataSource := DM1.dsReporte;
   dtgCabAut02.Selected.Clear;
   dtgCabAut02.Selected.Add('OFDESNOM'#9'22'#9'Oficina~Desconcentrada'#9#9);
   dtgCabAut02.Selected.Add('AUTORIZARON'#9'9'#9'Nro.~Autorizados'#9#9);
   dtgCabAut02.ApplySelected;
   Screen.Cursor := crDefault;
   TNumericField(DM1.cdsReporte.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
   SumaFooter('02');
   rgProduccion.ItemIndex := 0;
End;

Procedure TfAutDesApo.FormActivate(Sender: TObject);
Begin
   LimpiaGrid;
   BitMostrar.Caption := 'Mostrar Datos Al : ' + datetostr(DM1.FechaSys);
   BitMostrarClick(Sender);
End;

Procedure TfAutDesApo.LimpiaGrid;
Var
   xSQL: String;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT OFDESID,OFDESNOM,POBLACION,AUTORIZARON,AVANCE,0 SALDO '
      + 'FROM (SELECT NVL(A.OFDESID,''00'') OFDESID,NVL(B.OFDESNOM,''NO IDENTIFICADO'') OFDESNOM, POBLACION, AUTORIZARON, '
      + '             ROUND(((AUTORIZARON/POBLACION)*100),2) AVANCE '
      + '      FROM (SELECT OFDESID,SUM(NVL(POBLACION,0)) POBLACION,SUM(NVL(AUTORIZARON,0)) AUTORIZARON '
      + '            FROM ASO_RES_AUT_DES '
      + '            WHERE ASOID=''XXXXXXXXX'' '
      + '            GROUP BY OFDESID) A, '
      + '           APO110 B '
      + '      WHERE A.OFDESID=''XX'' AND A.OFDESID=B.OFDESID(+) ) '
      + 'ORDER BY AVANCE DESC';
   DM1.cdsConsulta.Close;
   DM1.cdsConsulta.DataRequest(xSQL);
   DM1.cdsConsulta.Open;
   Screen.Cursor := crDefault;
   TNumericField(DM1.cdsConsulta.FieldByName('POBLACION')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsConsulta.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsConsulta.FieldByName('SALDO')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsConsulta.FieldByName('AVANCE')).DisplayFormat := '###.#0';
   SumaFooter('01');
   dtgCabAut01.ColumnByName('AVANCE').FooterValue := FloatToStrF(0, ffNumber, 10, 2);

   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT OFDESPRO,B.OFDESNOM,AUTORIZARON '
      + 'FROM (SELECT OFDESPRO,SUM(AUTORIZARON) AUTORIZARON '
      + '      FROM ASO_RES_AUT_DES '
      + '      WHERE OFDESPRO=''XX'' AND ASOID IS NULL '
      + '      GROUP BY OFDESPRO ) A, APO110 B '
      + 'WHERE A.OFDESPRO=B.OFDESID(+) '
      + 'ORDER BY OFDESPRO ';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   Screen.Cursor := crDefault;
   TNumericField(DM1.cdsReporte.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
   SumaFooter('02');

   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT FECAUT,SUM(REGISTROS) AUTORIZARON '
      + 'FROM (SELECT FECAUT,OFDESPRO,B.OFDESNOM,REGISTROS '
      + '      FROM (SELECT FECAUT,OFDESPRO,COUNT(*) REGISTROS '
      + '            FROM ASO_RES_AUT_DES '
      + '            WHERE OFDESPRO IS NOT NULL '
      + '            GROUP BY FECAUT,OFDESPRO) A, '
      + '            APO110 B '
      + '      WHERE OFDESPRO=''XX'' AND A.OFDESPRO=B.OFDESID(+) '
      + '      ORDER BY FECAUT,OFDESPRO ) '
      + 'GROUP BY FECAUT ORDER BY FECAUT ';
   DM1.cdsCbcos.Close;
   DM1.cdsCbcos.DataRequest(xSQL);
   DM1.cdsCbcos.Open;
   Screen.Cursor := crDefault;
   TNumericField(DM1.cdsCbcos.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
   SumaFooter('03');
End;

Procedure TfAutDesApo.SumaFooter(xGrid: String);
Var
   xPoblacion, xAutorizaron, xAvance, xSaldo: Currency;

Begin
   If xGrid = '01' Then
   Begin
      DM1.cdsConsulta.First;
      xPoblacion := 0;
      xAutorizaron := 0;
      xAvance := 0;
      xSaldo := 0;
      While Not DM1.cdsConsulta.Eof Do
      Begin
         xPoblacion := xPoblacion + DM1.cdsConsulta.FieldByName('POBLACION').AsInteger;
         xAutorizaron := xAutorizaron + DM1.cdsConsulta.FieldByName('AUTORIZARON').AsInteger;
         xSaldo := xSaldo + DM1.cdsConsulta.FieldByName('SALDO').AsInteger;
         DM1.cdsConsulta.Next;
      End;
      dtgCabAut01.ColumnByName('OFDESNOM').FooterValue := 'Totales';
      dtgCabAut01.ColumnByName('POBLACION').FooterValue := FloatToStrF(xPoblacion, ffNumber, 10, 0);
      dtgCabAut01.ColumnByName('AUTORIZARON').FooterValue := FloatToStrF(xAutorizaron, ffNumber, 10, 0);
      dtgCabAut01.ColumnByName('SALDO').FooterValue := FloatToStrF(xSaldo, ffNumber, 10, 0);
      dtgCabAut01.ColumnByName('AVANCE').FooterValue := FloatToStrF(DM1.PorGen, ffNumber, 10, 2);
   End;
   If xGrid = '02' Then
   Begin
      DM1.cdsReporte.First;
      xAutorizaron := 0;
      While Not DM1.cdsReporte.Eof Do
      Begin
         xAutorizaron := xAutorizaron + DM1.cdsReporte.FieldByName('AUTORIZARON').AsInteger;
         DM1.cdsReporte.Next;
      End;
      dtgCabAut02.ColumnByName('OFDESNOM').FooterValue := 'Totales';
      dtgCabAut02.ColumnByName('AUTORIZARON').FooterValue := FloatToStrF(xAutorizaron, ffNumber, 10, 0);
   End;
   If xGrid = '03' Then
   Begin
      DM1.cdsCbcos.First;
      xAutorizaron := 0;
      While Not DM1.cdsCbcos.Eof Do
      Begin
         xAutorizaron := xAutorizaron + DM1.cdsCbcos.FieldByName('AUTORIZARON').AsInteger;
         DM1.cdsCbcos.Next;
      End;
      dtgCabAut03.ColumnByName('FECAUT').FooterValue := 'Totales';
      dtgCabAut03.ColumnByName('AUTORIZARON').FooterValue := FloatToStrF(xAutorizaron, ffNumber, 10, 0);
   End;

End;

Procedure TfAutDesApo.dtgCabAut01DblClick(Sender: TObject);
Begin
   If dtgCabAut01.DataSource.DataSet.RecordCount = 0 Then Exit;
   fDetAutDes := TfDetAutDes.Create(self);
   DM1.sGrid := 'S';
   fDetAutDes.dtgDetAut01.Visible := True;
   fDetAutDes.dtgDetAut02.Visible := False;
   MostrarDetalle(DM1.cdsConsulta.FieldByName('OFDESID').AsString, '01');
   fDetAutDes.Caption := 'Detalle de Autorización de Descuento - Distribución por UGELES que administra la Oficina Desconcentrada';
   fDetAutDes.lblDescripcion.Caption := 'Oficina Desconcentrada : ' + DM1.cdsConsulta.FieldByName('OFDESNOM').AsString;
   If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' AND COMPONENTE=' + QuotedStr('Bit003'), 'GES_AUT_USU', 'IMPRESION') = 'N' Then
   Begin
      fDetAutDes.BitPrint.Enabled := False;
   End;
   fDetAutDes.ShowModal;
   fDetAutDes.Free;
End;

Procedure TfAutDesApo.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfAutDesApo.MostrarDetalle(xOfiDes, xGrid: String);
Var
   xSQL: String;
Begin
   If xGrid = '01' Then
   Begin
      Screen.Cursor := crHourGlass;
      xSQL := 'select UPROID, UPAGOID, USEID, USENOM, POBLACION, AUTORIZARON, SALDO, round(((AUTORIZARON/POBLACION)*100),2) AVANCE '
         + 'from (select A.UPROID, A.UPAGOID, A.USEID, B.USENOM, '
         + '       sum(1) POBLACION, '
         + '       sum(case when nvl(A.AUTDESAPO,''X'') = ''S'' then 1 else 0 end) AUTORIZARON, '
         + '       sum(case when nvl(A.AUTDESAPO,''X'') <> ''S'' then 1 else 0 end) SALDO '
         + '      from APO201 A, APO101 B, APO110 C '
         + '      where A.ASOTIPID=''DO'' AND NVL(A.FALLECIDO,''N'') = ''N'' '
         + '        and B.UPROID(+)=A.UPROID and B.UPAGOID(+)=A.UPAGOID and B.USEID(+)=A.USEID '
         + '        and C.OFDESID(+)=B.OFDESID '
         + '        and nvl(B.OFDESID,''99'')=' + quotedstr(xOfides)
         + '      group by A.UPROID, A.UPAGOID, A.USEID, B.USENOM)XX '
         + ' order by UPROID, UPAGOID, USEID ';
      DM1.cdsDetalle.Close;
      DM1.cdsDetalle.DataRequest(xSQL);
      DM1.cdsDetalle.Open;
      Screen.Cursor := crDefault;
      TNumericField(DM1.cdsDetalle.FieldByName('POBLACION')).DisplayFormat := '###,###,##0';
      TNumericField(DM1.cdsDetalle.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
      TNumericField(DM1.cdsDetalle.FieldByName('SALDO')).DisplayFormat := '###,###,##0';
      TNumericField(DM1.cdsDetalle.FieldByName('AVANCE')).DisplayFormat := '###.#0';
   End;

   If xGrid = '02' Then
   Begin
      Screen.Cursor := crHourGlass;
      xSQL := 'select UPROID, UPAGOID, USEID, USENOM, POBLACION, AUTORIZARON, SALDO, round(((AUTORIZARON/POBLACION)*100),2) AVANCE '
         + 'from (select A.UPROID, A.UPAGOID, A.USEID, B.USENOM, '
         + '       sum(1) POBLACION, '
         + '       sum(case when nvl(A.AUTDESAPO,''X'') = ''S'' then 1 else 0 end) AUTORIZARON, '
         + '       sum(case when nvl(A.AUTDESAPO,''X'') <> ''S'' then 1 else 0 end) SALDO '
         + '      from APO201 A, APO101 B '
         + '      where A.ASOTIPID=''DO'' AND NVL(A.FALLECIDO,''N'') = ''N''  '
         + '        and B.UPROID(+)=A.UPROID and B.UPAGOID(+)=A.UPAGOID and B.USEID(+)=A.USEID '
         + '        and nvl(A.OFIREGAUTDESAPO,''99'')=' + quotedstr(xOfides)
         + '      group by A.UPROID, A.UPAGOID, A.USEID, B.USENOM) XX '
         + ' order by UPROID, UPAGOID, USEID ';
      DM1.cdsDetalle.Close;
      DM1.cdsDetalle.DataRequest(xSQL);
      DM1.cdsDetalle.Open;
      Screen.Cursor := crDefault;
      TNumericField(DM1.cdsDetalle.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
   End;

   If xGrid = '03' Then
   Begin
      Screen.Cursor := crHourGlass;
      xSQL := 'select A.UPROID, A.UPAGOID, A.USEID, B.USENOM, '
         + '       sum(1) POBLACION, '
         + '       sum(case when nvl(A.AUTDESAPO,''X'') = ''S'' then 1 else 0 end) AUTORIZARON, '
         + '       sum(case when nvl(A.AUTDESAPO,''X'') <> ''S'' then 1 else 0 end) SALDO '
         + '   from APO201 A, APO101 B  '
         + '  where A.ASOTIPID = ''DO'' '
         + '    AND NVL(A.FALLECIDO, ''N'') = ''N'' '
         + '    and nvl(A.AUTDESAPO, ''X'') = ''S'' '
         + '    and trunc(A.FECAUTDESAPO) =' + QuotedStr(xOfides)
         + '    and B.UPROID(+)=A.UPROID and B.UPAGOID(+)=A.UPAGOID and B.USEID(+)=A.USEID '
         + '  group by A.UPROID, A.UPAGOID, A.USEID, B.USENOM';
      DM1.cdsDetalle.Close;
      DM1.cdsDetalle.DataRequest(xSQL);
      DM1.cdsDetalle.Open;
      Screen.Cursor := crDefault;
      TNumericField(DM1.cdsDetalle.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
   End;
End;

Procedure TfAutDesApo.dtgCabAut02DblClick(Sender: TObject);
Begin
   If dtgCabAut02.DataSource.DataSet.RecordCount = 0 Then Exit;
   fDetAutDes := TfDetAutDes.Create(self);
   DM1.sGrid := 'R';
   fDetAutDes.dtgDetAut01.Visible := False;
   fDetAutDes.dtgDetAut02.Visible := True;
   MostrarDetalle(DM1.cdsReporte.FieldByName('OFDESPRO').AsString, '02');
   fDetAutDes.Caption := 'Detalle de Autorización de Descuento - Distribución por UGELES que registró la Oficina Desconcentrada';
   fDetAutDes.lblDescripcion.Caption := 'Origén De Registro (Producción) : ' + DM1.cdsReporte.FieldByName('OFDESNOM').AsString;
   If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' AND COMPONENTE=' + QuotedStr('Bit003'), 'GES_AUT_USU', 'IMPRESION') = 'N' Then
   Begin
      fDetAutDes.BitPrint.Enabled := False;
   End;
   fDetAutDes.ShowModal;
   fDetAutDes.Free;

End;

Procedure TfAutDesApo.BitPrintClick(Sender: TObject);
Begin
   If dtgCabAut01.DataSource.DataSet.RecordCount = 0 Then Exit;
   lblPorFin.Caption := FloatToStrF(DM1.PorGen, ffNumber, 10, 2);
   Titulos01.Caption := 'AUTORIZACIONES DE DESCUENTO DE APORTES POR ORIGEN DE ASOCIADO';
   Titulos02.Caption := 'Proceso de Información al : ' + datetostr(DM1.FechaSys);
   rpResPoblacion.Print;
   rpResPoblacion.Cancel;
End;

Procedure TfAutDesApo.BitImprClick(Sender: TObject);
Begin
   If rgProduccion.ItemIndex = 0 Then
   Begin
      If dtgCabAut02.DataSource.DataSet.RecordCount = 0 Then Exit;
      dbResProduccion.DataSource := DM1.dsReporte;
      xTitulos01.Caption := 'AUTORIZACIONES DE DESCUENTO DE APORTES POR ORIGEN DE REGISTRO(PRODUCCION)';
      xTitulos02.Caption := 'Proceso de Información al : ' + datetostr(DM1.FechaSys);
      sTitulo.Caption := 'Origen de Registro';
      rpResProduccion.Print;
      rpResProduccion.Cancel;
   End;

   If rgProduccion.ItemIndex = 1 Then
   Begin
      If dtgCabAut03.DataSource.DataSet.RecordCount = 0 Then Exit;
      dbResProduccion.DataSource := DM1.dsCBcos;
      sTitulo.Caption := 'Fecha De Registro';
      xTitulos01.Caption := 'AUTORIZACIONES DE DESCUENTO DE APORTES POR FECHA DE REGISTRO(PRODUCCION)';
      xTitulos02.Caption := 'Proceso de Información al : ' + datetostr(DM1.FechaSys);
      sTitulo.Caption := 'Rango de Fechas';
      rpResProduccion.Print;
      rpResProduccion.Cancel;
   End;

End;

Procedure TfAutDesApo.dtgCabAut01DrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If (Field.FieldName = 'SALDO') Then
   Begin
      dtgCabAut01.Canvas.Font.Color := clRed;
      dtgCabAut01.DefaultDrawDataCell(rect, Field, State);
   End;

End;

Procedure TfAutDesApo.dtgCabAut01DrawFooterCell(Sender: TObject;
   Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
   FooterText: String; Var DefaultDrawing: Boolean);
Begin
   If (Field.FieldName = 'SALDO') Then
   Begin
      dtgCabAut01.Canvas.Font.Color := clRed;
   End;

End;

Procedure TfAutDesApo.dtgCabAut01DrawTitleCell(Sender: TObject;
   Canvas: TCanvas; Field: TField; Rect: TRect;
   Var DefaultDrawing: Boolean);
Begin
   If (Field.FieldName = 'SALDO') Then
   Begin
      dtgCabAut01.Canvas.Font.Color := clRed;
   End;

End;

Procedure TfAutDesApo.BitMstDatosClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If dtgCabAut01.DataSource.DataSet.RecordCount = 0 Then Exit;
   dtgCabAut03.Visible := True;
   pnlFecha.Visible := True;
   dtgCabAut02.Visible := False;
   Screen.Cursor := crHourGlass;
   xSQL := 'select nvl(trunc(FECAUTDESAPO),to_date(''01/01/2007'')) OFDESNOM, '
      + '       sum(case when nvl(AUTDESAPO, ''X'') = ''S'' then 1 else 0 end) AUTORIZARON '
      + '  from APO201 '
      + ' where ASOTIPID = ''DO'' '
      + '   AND NVL(FALLECIDO, ''N'') = ''N'' '
      + '   and nvl(AUTDESAPO, ''X'') = ''S'' '
      + '   and FECAUTDESAPO >=' + QuotedStr(dtpFecha.Text)
      + '   and FECAUTDESAPO <=' + QuotedStr(dtpHasta.Text)
      + ' group by trunc(FECAUTDESAPO)';

   DM1.cdsCbcos.Close;
   DM1.cdsCbcos.DataRequest(xSQL);
   DM1.cdsCbcos.Open;
   dtgCabAut03.DataSource := DM1.dsCbcos;
   dtgCabAut03.Selected.Clear;
   dtgCabAut03.Selected.Add('OFDESNOM'#9'20'#9'Fecha de~Registro'#9#9);
   dtgCabAut03.Selected.Add('AUTORIZARON'#9'10'#9'Nro.~Autorizados'#9#9);
   dtgCabAut03.ApplySelected;

   Screen.Cursor := crDefault;
   TNumericField(DM1.cdsCbcos.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
   SumaFooter('03');
End;

Procedure TfAutDesApo.LimpiaGrid03;
Var
   xSQL: String;
Begin
   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT FECAUT OFDESNOM,SUM(REGISTROS) AUTORIZARON '
      + 'FROM (SELECT FECAUT,OFDESPRO,B.OFDESNOM,REGISTROS '
      + '      FROM (SELECT FECAUT,OFDESPRO,COUNT(*) REGISTROS '
      + '            FROM ASO_RES_AUT_DES '
      + '            WHERE ASOID=''!@##$#$%'' '
      + '            GROUP BY FECAUT,OFDESPRO) A,APO110 B '
      + '      WHERE A.OFDESPRO=B.OFDESID(+) '
      + '      ORDER BY FECAUT,OFDESPRO ) '
      + 'GROUP BY FECAUT ORDER BY FECAUT ';
   DM1.cdsCbcos.Close;
   DM1.cdsCbcos.DataRequest(xSQL);
   DM1.cdsCbcos.Open;
   Screen.Cursor := crDefault;
   TNumericField(DM1.cdsCbcos.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
   SumaFooter('03');

End;

Procedure TfAutDesApo.dtpFechaChange(Sender: TObject);
Begin
   LimpiaGrid03;
End;

Procedure TfAutDesApo.dtpHastaChange(Sender: TObject);
Begin
   LimpiaGrid03;
End;

Procedure TfAutDesApo.dtgCabAut03DblClick(Sender: TObject);
Begin
   If dtgCabAut03.DataSource.DataSet.RecordCount = 0 Then Exit;
   fDetAutDes := TfDetAutDes.Create(self);
   DM1.sGrid := 'R';
   fDetAutDes.dtgDetAut01.Visible := False;
   fDetAutDes.dtgDetAut02.Visible := True;
   MostrarDetalle(DM1.cdsCbcos.FieldByName('OFDESNOM').AsString, '03');
   fDetAutDes.Caption := 'Detalle de Autorización de Descuento - Distribución por UGELES gestionadas en la Fecha de Registro';
   fDetAutDes.lblDescripcion.Caption := 'Fecha De Registro (Producción) : ' + DM1.cdsCbcos.FieldByName('OFDESNOM').AsString;
   If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' AND COMPONENTE=' + QuotedStr('Bit003'), 'GES_AUT_USU', 'IMPRESION') = 'N' Then
   Begin
      fDetAutDes.BitPrint.Enabled := False;
   End;
   fDetAutDes.ShowModal;
   fDetAutDes.Free;
End;

Procedure TfAutDesApo.BitDptoSexClick(Sender: TObject);
Var
   xSQL: String;
Begin
// Inicio: SPP_201306_ASO
   xSQL := 'SELECT DPTODES,USENOM,SUM(POBLACION) POBLACION,SUM(AUTORIZARON) AUTORIZARON,SUM(NUMMAS_A) NUMMAS_A,SUM(NUMFEM_A) NUMFEM_A, '
      + '       SUM(NUMSIF_A) NUMSIF_A, SUM(TOTAL_A) TOTAL_A,SUM(NUMMAS_N) NUMMAS_N,SUM(NUMFEM_N) NUMFEM_N,SUM(NUMSIF_N) NUMSIF_N, '
      + '       SUM(TOTAL_N) TOTAL_N,ROUND(SUM(AUTORIZARON)/SUM(POBLACION)*100,2) PORC '
      + 'FROM (SELECT DPTODES,USENOM,POBLACION,AUTORIZARON,NUMMAS_A,NUMFEM_A,NUMSIF_A,NUMMAS_A+NUMFEM_A+NUMSIF_A TOTAL_A,NUMMAS_N, '
      + '             NUMFEM_N,NUMSIF_N,NUMMAS_N+NUMFEM_N+NUMSIF_N TOTAL_N '
      + '      FROM (SELECT A.DPTOID,NVL(B.DPTODES,''NO IDENTIFICADO'') DPTODES,A.UPROID,A.UPAGOID,A.USEID, '
      + '                   NVL(C.USENOM,''NO IDENTIFICADO'') USENOM, '
      + '                   1 POBLACION, '
      + '                   case when nvl(A.AUTDESAPO,''X'') = ''S'' then 1 else 0 end AUTORIZARON, '
      + '                   CASE WHEN ASOSEXO=''M'' AND nvl(A.AUTDESAPO,''X'') = ''S'' THEN 1 ELSE 0 END NUMMAS_A, '
      + '                   CASE WHEN ASOSEXO=''F'' AND nvl(A.AUTDESAPO,''X'') = ''S'' THEN 1 ELSE 0 END NUMFEM_A, '
      + '                   CASE WHEN ASOSEXO IS NULL AND nvl(A.AUTDESAPO,''X'') = ''S'' THEN 1 ELSE 0 END NUMSIF_A, '
      + '                   CASE WHEN ASOSEXO=''M'' AND nvl(A.AUTDESAPO,''X'') <> ''S'' THEN 1 ELSE 0 END NUMMAS_N, '
      + '                   CASE WHEN ASOSEXO=''F'' AND nvl(A.AUTDESAPO,''X'') <> ''S'' THEN 1 ELSE 0 END NUMFEM_N, '
      + '                   CASE WHEN ASOSEXO IS NULL AND nvl(A.AUTDESAPO,''X'') <> ''S'' THEN 1 ELSE 0 END NUMSIF_N '
      + '            FROM APO201 A,APO158 B,APO101 C '
      + '            WHERE A.ASOTIPID = ''DO'' '
      + '              AND NVL(A.FALLECIDO, ''N'') = ''N'' '
      + '              AND B.DPTOID(+)=C.DPTOID '
      + '              AND C.UPROID(+)=A.UPROID AND C.UPAGOID(+)=A.UPAGOID AND C.USEID(+)=A.USEID '
      + '            ) '
      + '      ) '
      + 'GROUP BY DPTODES,USENOM ORDER BY DPTODES,USENOM ';
// Fin: SPP_201306_ASO
   DM1.cdsSobrino.Close;
   DM1.cdsSobrino.DataRequest(xSQL);
   Screen.Cursor := crHourGlass;
   DM1.cdsSobrino.Open;
   Screen.Cursor := crDefault;
   TNumericField(DM1.cdsSobrino.FieldByName('POBLACION')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsSobrino.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsSobrino.FieldByName('NUMMAS_A')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsSobrino.FieldByName('NUMFEM_A')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsSobrino.FieldByName('NUMSIF_A')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsSobrino.FieldByName('TOTAL_A')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsSobrino.FieldByName('NUMMAS_N')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsSobrino.FieldByName('NUMFEM_N')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsSobrino.FieldByName('NUMSIF_N')).DisplayFormat := '###,###,##0';
   TNumericField(DM1.cdsSobrino.FieldByName('TOTAL_N')).DisplayFormat := '###,###,##0';
   If DM1.cdsSobrino.RecordCount > 0 Then
   Begin
      fEstDepSex := TfEstDepSex.Create(self);
      If DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)) + ' AND COMPONENTE=' + QuotedStr(FPrincipal.spdpriautsdes.Name), 'GES_AUT_USU', 'IMPRESION') = 'N' Then
      Begin
         fEstDepSex.BitImprimir.Enabled := False;
         fEstDepSex.BitExcel.Enabled := False;
      End;

      fEstDepSex.ShowModal;
      fEstDepSex.Free;

   End;
   DM1.cdsSobrino.Close;
End;

Procedure TfAutDesApo.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter := '';
   DM1.cdsReporte.Filtered := False;
   DM1.cdsReporte.IndexFieldNames := '';
End;

Procedure TfAutDesApo.rgProduccionClick(Sender: TObject);
Var
   xSQL: String;
Begin
// Por Origen de Registro
   If rgProduccion.ItemIndex = 0 Then
   Begin
      If dtgCabAut01.DataSource.DataSet.RecordCount = 0 Then
      Begin
         ShowMessage('No hay registros en la Captación de Origen por Asociado (Cuadro Principal)');
         exit;
      End;
      dtgCabAut03.Visible := False;
      dtgCabAut02.Visible := True;
      pnlFecha.Visible := False;

      dtgCabAut02.DataSource := DM1.dsReporte;
      TNumericField(DM1.cdsReporte.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
      SumaFooter('02');
   End;

// Por Rango de Fechas
   If rgProduccion.ItemIndex = 1 Then
   Begin
      If dtgCabAut01.DataSource.DataSet.RecordCount = 0 Then
      Begin
         ShowMessage('No hay registros en la Captación de Origen por Asociado (Cuadro Principal)');
         exit;
      End;
      dtgCabAut03.Visible := True;
      pnlFecha.Visible := True;
      dtgCabAut02.Visible := False;
      dtpFecha.date := strtodate('01/01/2007');
      dtpHasta.date := DM1.FechaSys;
      Screen.Cursor := crHourGlass;

      xSQL := 'select sysdate OFDESNOM, 1 AUTORIZARON '
         + 'from DUAL '
         + 'where 1<>1 ';
      DM1.cdsCbcos.Close;
      DM1.cdsCbcos.DataRequest(xSQL);
      DM1.cdsCbcos.Open;
      dtgCabAut03.DataSource := DM1.dsCbcos;
      dtgCabAut03.Selected.Clear;
      dtgCabAut03.Selected.Add('OFDESNOM'#9'20'#9'Fecha de~Registro'#9#9);
      dtgCabAut03.Selected.Add('AUTORIZARON'#9'10'#9'Nro.~Autorizados'#9#9);
      dtgCabAut03.ApplySelected;
      Screen.Cursor := crDefault;
      TNumericField(DM1.cdsCbcos.FieldByName('AUTORIZARON')).DisplayFormat := '###,###,##0';
      SumaFooter('03');
   End;
End;
// Fin: HPP_201010_ASO

End.

