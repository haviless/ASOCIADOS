// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO001.pas
// Formulario              :  FRepAutDescuento
// Fecha de Creación       :  15/12/1993
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Reportes de autotización de descuentos

// Actualizaciones:
// HPP_201003_ASO, ASO318  :  Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// HPC_201306_ASO          :  Se utiliza la fecha de registro en lugar de la fecha de autorizacion
// SPP_201307_ASO          :  Se realiza el pase a producción a partir del HPC_201306_ASO
// HPC_201312_ASO          :  12/11/2013 - Se agregó scripts sql para considerar la firma por 1ra y 2da vez.
//                            A partir del 2008 se aperturó la fecha de registro FECREGAUTDESAPO por lo tanto,
//                            los que firmaron por segunda vez (en FECREGAUTDESAPO) tienen que tener su primera
//                            fecha de autorización hasta el 07/02/2013
// SPP_201313_ASO          :  Se realiza el pase a producción a partir del HPC_201312_ASO


Unit ASO961;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, wwdblook, Buttons, ComCtrls,
   wwdbdatetimepicker, ppDB, ppDBPipe, ppBands, ppClass, ppCtrls, ppVar,
   ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport, Grids, DBGrids;

Type
   TfRepAutDescuento = Class(TForm)
      grbRepfPago: TGroupBox;
      LblUsuarios: TLabel;
      BitPrint: TBitBtn;
      BitSalir: TBitBtn;
      DBLUsuarios: TwwDBLookupCombo;
      PnFecGen: TPanel;
      Label3: TLabel;
      Label4: TLabel;
      DtpFecIni: TwwDBDateTimePicker;
      DtpFecFin: TwwDBDateTimePicker;
      Label1: TLabel;
      DBLkOfiDes: TwwDBLookupCombo;
      DataDet: TppDBPipeline;
      rpResumen: TppReport;
      ppHeaderBand7: TppHeaderBand;
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
      Tit02: TppLabel;
      ppLine33: TppLine;
      ppDetailBand7: TppDetailBand;
      ppDBText41: TppDBText;
      ppDBText46: TppDBText;
      ppDBText42: TppDBText;
      ppFooterBand7: TppFooterBand;
      ppSummaryBand7: TppSummaryBand;
      ppLabel130: TppLabel;
      ppLabel131: TppLabel;
      ppDBCalc22: TppDBCalc;
      ppLine35: TppLine;
      ppLine36: TppLine;
      dbResumen: TppDBPipeline;
      dbResumenppField1: TppField;
      dbResumenppField2: TppField;
      dbResumenppField3: TppField;
      RepDeta: TppReport;
      ppHeaderBand1: TppHeaderBand;
      ppLabel3: TppLabel;
      ppLabel4: TppLabel;
      ppLabel5: TppLabel;
      ppLabel6: TppLabel;
      ppLabel7: TppLabel;
      ppLabel8: TppLabel;
      ppLabel9: TppLabel;
      ppLabel10: TppLabel;
      ppLabel11: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLine2: TppLine;
      ppLine3: TppLine;
      ppLabel15: TppLabel;
      ppLabel16: TppLabel;
      ppLabel17: TppLabel;
      Tit01: TppLabel;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppLabel18: TppLabel;
      ppLabel19: TppLabel;
      ppDBCalc2: TppDBCalc;
      ppLine4: TppLine;
      ppLine5: TppLine;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText6: TppDBText;
      ppGroupFooterBand1: TppGroupFooterBand;
      ppLine37: TppLine;
      ppLabel126: TppLabel;
      ppLabel139: TppLabel;
      ppDBCalc38: TppDBCalc;
      ppLine45: TppLine;
      rdgGrupo: TRadioGroup;
      Cab01: TppLabel;
      Cab02: TppLabel;
      BitExporta: TBitBtn;
      dtgData: TDBGrid;
      rgTipoReporte: TRadioGroup;
      EdtOfiDes: TEdit;
      EdtUser: TEdit;
//Inicio: SPP_201313_ASO
      rgTipoFirma: TRadioGroup;
//Fin: SPP_201313_ASO
      Procedure BitSalirClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure BitExportaClick(Sender: TObject);
      Procedure DBLkOfiDesExit(Sender: TObject);
      Procedure rgTipoReporteClick(Sender: TObject);
      Procedure DBLUsuariosEnter(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure DBLUsuariosExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   fRepAutDescuento: TfRepAutDescuento;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure TfRepAutDescuento.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfRepAutDescuento.FormActivate(Sender: TObject);
Begin
   DBLkOfiDes.Text := '';
   EdtOfiDes.Text := '';
   DBLUsuarios.Text := '';
   EdtUser.Text := '';

   DtpFecIni.Date := DM1.FechaSys;
   DtpFecFin.Date := DM1.FechaSys;
   If Copy(DM1.CrgArea(DM1.wUsuario), 4, 2) = '01' Then
      rgTipoReporte.ItemIndex := 1
   Else
   Begin
      rgTipoReporte.ItemIndex := 0;
      rgTipoReporteclick(sender);
   End;
End;

Procedure TfRepAutDescuento.BitPrintClick(Sender: TObject);
Var
   xSQL, xUser, xOficina: String;
Begin
   xUser := '';
   If Length(Trim(EdtUser.Text)) > 0 Then
      xUser := ' AND USUREGAUTDESAPO=' + QuotedStr(DBLUsuarios.Text);
   xOficina := ' ';
   If Length(Trim(EdtOfiDes.Text)) > 0 Then
      xOficina := ' AND A.OFIREGAUTDESAPO=' + QuotedStr(DBLkOfiDes.Text);

//Inicio: SPP_201313_ASO - ya no es obligatorio
{
   If (length(xOficina) = 0) And (rgTipoReporte.ItemIndex = 0) Then
   Begin
      ShowMessage('Para sacar este reporte en forma detallada es necesario que defina la Oficina');
      DBLkOfiDes.SetFocus;
      exit;
   End;
}
//Fin: SPP_201313_ASO

  // Inicio: SPP_201307_ASO
//Inicio: SPP_201313_ASO - Se modifica la consulta para considerar si firmo por 1ra o 2da vez
   If rgTipoReporte.ItemIndex = 0 Then                          // Detallado
      If rgTipoFirma.ItemIndex = 0 Then                         // 1ra Vez
         xSQL := 'SELECT ASOID, ASOCODMOD, ASODNI, ASOAPENOMDNI, FECREGAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, '
              + '       NVL(B.OFDESNOM,''NO IDENTIFICADO'') OFDESNOM,  CODMODAUTDESAPO '
              + 'FROM APO201 A,APO110 B '
              + 'WHERE A.ASOTIPID=''DO'' '
              + '  and trunc(FECAUTDESAPO)>=' + QuotedStr(DtpFecIni.Text)
              + '  and trunc(FECAUTDESAPO)<=' + QuotedStr(DtpFecFin.Text)
              + '  and nvl(AUTDESAPO,''X'') = ''S'' and nvl(FALLECIDO,''N'') = ''N'' '
              + '  and B.OFDESID(+) = A.OFIREGAUTDESAPO '
              + xUser
              + xOficina
              + ' ORDER BY OFIREGAUTDESAPO,FECREGAUTDESAPO,ASOAPENOM'
      Else                                                       // 2da Vez
         xSQL := 'SELECT ASOID, ASOCODMOD, ASODNI, ASOAPENOMDNI, FECREGAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, '
              + '       NVL(B.OFDESNOM,''NO IDENTIFICADO'') OFDESNOM,  CODMODAUTDESAPO '
              + 'FROM APO201 A,APO110 B '
              + 'WHERE A.ASOTIPID=''DO'' '
              + '  and trunc(FECREGAUTDESAPO)>=' + QuotedStr(DtpFecIni.Text)
              + '  and trunc(FECREGAUTDESAPO)<=' + QuotedStr(DtpFecFin.Text)
              + '  and nvl(AUTDESAPO,''X'') = ''S'' and nvl(FALLECIDO,''N'') = ''N'' '
              + '  and B.OFDESID(+) = A.OFIREGAUTDESAPO '
              + '  AND TRUNC(FECAUTDESAPO) <= ''07/02/2013'' '
              + xUser
              + xOficina
              + ' ORDER BY OFIREGAUTDESAPO,FECREGAUTDESAPO,ASOAPENOM'
   Else                                                          // Resumen
      If rgTipoFirma.ItemIndex = 0 Then
         xSQL := 'SELECT OFIREGAUTDESAPO OFDESID,OFDESNOM,COUNT(*) REGISTROS '
              + 'FROM (SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECREGAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM '
              + '      FROM APO201 A,APO110 B '
              + '      WHERE A.ASOTIPID=''DO'' '
              + '        and trunc(FECAUTDESAPO)>=' + QuotedStr(DtpFecIni.Text)
              + '        and trunc(FECAUTDESAPO)<=' + QuotedStr(DtpFecFin.Text)
              + '        AND NVL(AUTDESAPO,''X'') = ''S'' AND NVL(FALLECIDO,''N'') = ''N'' '
              + '        AND B.OFDESID(+)=A.OFIREGAUTDESAPO '
              + '      ORDER BY ASOAPENOM ) '
              + 'GROUP BY OFIREGAUTDESAPO,OFDESNOM '
      Else
         xSQL := 'SELECT OFIREGAUTDESAPO OFDESID,OFDESNOM,COUNT(*) REGISTROS '
              + 'FROM (SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECREGAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM '
              + '      FROM APO201 A,APO110 B '
              + '      WHERE A.ASOTIPID=''DO'' '
              + '        and trunc(FECREGAUTDESAPO)>=' + QuotedStr(DtpFecIni.Text)
              + '        and trunc(FECREGAUTDESAPO)<=' + QuotedStr(DtpFecFin.Text)
              + '        AND NVL(AUTDESAPO,''X'') = ''S'' AND NVL(FALLECIDO,''N'') = ''N'' '
              + '        AND B.OFDESID(+)=A.OFIREGAUTDESAPO '
              + '        AND TRUNC(FECAUTDESAPO) <= ''07/02/2013'' '
              + '      ORDER BY ASOAPENOM ) '
              + 'GROUP BY OFIREGAUTDESAPO,OFDESNOM ';
//Fin: SPP_201313_ASO

   // Fin: SPP_201307_ASO
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsQry.RecordCount = 0 Then
   Begin
      MessageDlg('NO EXISTE INFORMACIÓN PARA ESE CRITERIO ', mtError, [mbOk], 0);
      Exit;
   End;

//Inicio: SPP_201313_ASO - Se agregó subtitulos
   If rgTipoFirma.ItemIndex = 0 Then
      Begin
      Cab01.Caption := 'FIRMADO POR 1RA VEZ';
      Cab02.Caption := 'FIRMADO POR 1RA VEZ';
      End
   Else
      Begin
      Cab01.Caption := 'FIRMADO POR 2DA VEZ';
      Cab02.Caption := 'FIRMADO POR 2DA VEZ';
      End;

   If rgTipoReporte.ItemIndex = 0 Then
   Begin
      Tit01.Caption := 'REGISTRADOS DEL ' + DtpFecIni.Text + ' AL ' + DtpFecFin.Text;
      RepDeta.Print;
      RepDeta.Cancel;
   End
   Else
   Begin
      Tit02.Caption := 'REGISTRADOS DEL ' + DtpFecIni.Text + ' AL ' + DtpFecFin.Text;
      rpResumen.Print;
      rpResumen.Cancel;
   End;
//Fin: SPP_201313_ASO
End;

Procedure TfRepAutDescuento.BitExportaClick(Sender: TObject);
Var
   xSQL, xUser, xOficina: String;
Begin
//Inicio: SPP_201313_ASO - Es la misma consulta que Imprimir ("TfRepAutDescuento.BitPrintClick(Sender: TObject);")
   xUser := '';
   If Length(Trim(EdtUser.Text)) > 0 Then
      xUser := ' AND USUREGAUTDESAPO=' + QuotedStr(DBLUsuarios.Text);
   xOficina := ' ';
   If Length(Trim(EdtOfiDes.Text)) > 0 Then
      xOficina := ' AND A.OFIREGAUTDESAPO=' + QuotedStr(DBLkOfiDes.Text);

   If rgTipoReporte.ItemIndex = 0 Then                          // Detallado
      If rgTipoFirma.ItemIndex = 0 Then                         // 1ra Vez
         xSQL := 'SELECT ASOID, ASOCODMOD, ASODNI, ASOAPENOMDNI, FECREGAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, '
              + '       NVL(B.OFDESNOM,''NO IDENTIFICADO'') OFDESNOM,  CODMODAUTDESAPO '
              + 'FROM APO201 A,APO110 B '
              + 'WHERE A.ASOTIPID=''DO'' '
              + '  and trunc(FECAUTDESAPO)>=' + QuotedStr(DtpFecIni.Text)
              + '  and trunc(FECAUTDESAPO)<=' + QuotedStr(DtpFecFin.Text)
              + '  and nvl(AUTDESAPO,''X'') = ''S'' and nvl(FALLECIDO,''N'') = ''N'' '
              + '  and B.OFDESID(+) = A.OFIREGAUTDESAPO '
              + xUser
              + xOficina
              + ' ORDER BY OFIREGAUTDESAPO,FECREGAUTDESAPO,ASOAPENOM'
      Else                                                       // 2da Vez
         xSQL := 'SELECT ASOID, ASOCODMOD, ASODNI, ASOAPENOMDNI, FECREGAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, '
              + '       NVL(B.OFDESNOM,''NO IDENTIFICADO'') OFDESNOM,  CODMODAUTDESAPO '
              + 'FROM APO201 A,APO110 B '
              + 'WHERE A.ASOTIPID=''DO'' '
              + '  and trunc(FECREGAUTDESAPO)>=' + QuotedStr(DtpFecIni.Text)
              + '  and trunc(FECREGAUTDESAPO)<=' + QuotedStr(DtpFecFin.Text)
              + '  and nvl(AUTDESAPO,''X'') = ''S'' and nvl(FALLECIDO,''N'') = ''N'' '
              + '  and B.OFDESID(+) = A.OFIREGAUTDESAPO '
              + '  AND TRUNC(FECAUTDESAPO) <= ''07/02/2013'' '
              + xUser
              + xOficina
              + ' ORDER BY OFIREGAUTDESAPO,FECREGAUTDESAPO,ASOAPENOM'
   Else                                                          // Resumen
      If rgTipoFirma.ItemIndex = 0 Then
         xSQL := 'SELECT OFIREGAUTDESAPO OFDESID,OFDESNOM,COUNT(*) REGISTROS '
              + 'FROM (SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECREGAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM '
              + '      FROM APO201 A,APO110 B '
              + '      WHERE A.ASOTIPID=''DO'' '
              + '        and trunc(FECAUTDESAPO)>=' + QuotedStr(DtpFecIni.Text)
              + '        and trunc(FECAUTDESAPO)<=' + QuotedStr(DtpFecFin.Text)
              + '        AND NVL(AUTDESAPO,''X'') = ''S'' AND NVL(FALLECIDO,''N'') = ''N'' '
              + '        AND B.OFDESID(+)=A.OFIREGAUTDESAPO '
              + '      ORDER BY ASOAPENOM ) '
              + 'GROUP BY OFIREGAUTDESAPO,OFDESNOM '
      Else
         xSQL := 'SELECT OFIREGAUTDESAPO OFDESID,OFDESNOM,COUNT(*) REGISTROS '
              + 'FROM (SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECREGAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM '
              + '      FROM APO201 A,APO110 B '
              + '      WHERE A.ASOTIPID=''DO'' '
              + '        and trunc(FECREGAUTDESAPO)>=' + QuotedStr(DtpFecIni.Text)
              + '        and trunc(FECREGAUTDESAPO)<=' + QuotedStr(DtpFecFin.Text)
              + '        AND NVL(AUTDESAPO,''X'') = ''S'' AND NVL(FALLECIDO,''N'') = ''N'' '
              + '        AND B.OFDESID(+)=A.OFIREGAUTDESAPO '
              + '        AND TRUNC(FECAUTDESAPO) <= ''07/02/2013'' '
              + '      ORDER BY ASOAPENOM ) '
              + 'GROUP BY OFIREGAUTDESAPO,OFDESNOM ';

   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      Try
         DM1.HojaExcel('Aut_Desc', DM1.dsQry, dtgData);
      Except
         On Ex: Exception Do
            Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
      End;
   End
   Else
   Begin
      MessageDlg('NO EXISTE INFORMACION PARA ESE CRITERIO ', mtError, [mbOk], 0);
      Exit;
   End;
//Fin: SPP_201313_ASO


//Inicio: SPP_201313_ASO - Generaba el Excel dependiendo de lo que se imprimio.
//                          No creaba ninguna consulta sql porque hay un Exit antes
{
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      Try
         DM1.HojaExcel('Resumen', DM1.dsQry, dtgData);
      Except
         On Ex: Exception Do
            Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
      End;
   End
   Else
   Begin
      MessageDlg('NO EXISTE INFORMACION PARA ESE CRITERIO ', mtError, [mbOk], 0);
      Exit;
   End;
   exit;

   // Inicio: SPP_201307_ASO
   If rgTipoReporte.ItemIndex = 0 Then
   Begin
      Begin
         xUser := '';
         If Length(Trim(EdtUser.Text)) > 0 Then
            xUser := ' AND USUREGAUTDESAPO=' + QuotedStr(DBLUsuarios.Text);
         xOficina := ' ';
         If Length(Trim(EdtOfiDes.Text)) > 0 Then
            xOficina := ' AND A.OFIREGAUTDESAPO=' + QuotedStr(DBLkOfiDes.Text);
         xSQL := 'SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECREGAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM,CODMODAUTDESAPO '
            + ' FROM APO201 A,APO110 B '
            + ' WHERE A.ASOTIPID=''DO'' '
            + '   and TO_DATE(FECREGAUTDESAPO) BETWEEN ' + QuotedStr(DtpFecIni.Text) + ' AND ' + QuotedStr(DtpFecFin.Text)
            + '   AND NVL(AUTDESAPO,''X'') = ''S'' AND A.OFIREGAUTDESAPO = B.OFDESID(+) '
            + xUser + xOficina
            + ' ORDER BY OFIREGAUTDESAPO,FECREGAUTDESAPO,ASOAPENOM ';
      End;
      Screen.Cursor := crHourGlass;
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         Try
            DM1.HojaExcel('Detalles', DM1.dsQry, dtgData);
         Except
            On Ex: Exception Do
               Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
         End;
      End
      Else
      Begin
         MessageDlg('NO EXISTE INFORMACION PARA ESE CRITERIO ', mtError, [mbOk], 0);
         Exit;
      End;
   End;

   If rgTipoReporte.ItemIndex = 1 Then
   Begin
      Screen.Cursor := crHourGlass;
      xSQL := 'SELECT OFIREGAUTDESAPO OFDESID,OFDESNOM,COUNT(*) REGISTROS '
         + 'FROM (SELECT ASOID,ASOCODMOD,ASODNI,ASOAPENOMDNI,FECREGAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,B.OFDESNOM '
         + '      FROM APO201 A,APO110 B '
         + '      WHERE A.ASOTIPID=''DO'' '
         + '        and TO_DATE(FECREGAUTDESAPO) BETWEEN ' + QuotedStr(DtpFecIni.Text) + ' AND ' + QuotedStr(DtpFecFin.Text)
         + '        AND AUTDESAPO=''S''  AND A.OFIREGAUTDESAPO=B.OFDESID '
         + '      ORDER BY ASOAPENOM ) '
         + 'GROUP BY OFIREGAUTDESAPO,OFDESNOM ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      Screen.Cursor := crDefault;
      If DM1.cdsQry.RecordCount > 0 Then
      Begin
         Try
            DM1.HojaExcel('Resumen', DM1.dsQry, dtgData);
         Except
            On Ex: Exception Do
               Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
         End;

      End
      Else
      Begin
         MessageDlg('NO EXISTE INFORMACION PARA ESE CRITERIO ', mtError, [mbOk], 0);
         Exit;
      End;

   End;
   // Fin: SPP_201307_ASO
}
//Fin: SPP_201313_ASO

End;

Procedure TfRepAutDescuento.DBLkOfiDesExit(Sender: TObject);
Begin
   If rgTipoReporte.Focused Then exit;
   If BitSalir.Focused Then exit;
   If DtpFecFin.Focused Then exit;
   If DtpFecIni.Focused Then exit;

   If DM1.cdsOfdes.Locate('OFDESID', VarArrayof([DBLkOfiDes.Text]), []) Then
   Begin
      EdtOfiDes.Text := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString;
   End
   Else
   Begin
      Beep;
      EdtOfiDes.Text := '';
//Inicio: SPP_201313_ASO - Ya no es obligatorio seleccionar "Origen de Registro" cuando el tipo de reporte es detallado
//      DBLkOfiDes.SetFocus;
//      exit;
//Fin: SPP_201313_ASO
   End;
End;

Procedure TfRepAutDescuento.rgTipoReporteClick(Sender: TObject);
Begin
   DBLkOfiDes.Text := '';
   EdtOfiDes.Text := '';
   DBLUsuarios.Text := '';
   EdtUser.Text := '';
   If rgTipoReporte.ItemIndex = 0 Then
   Begin
      DBLkOfiDes.Text := DM1.xOfiDes;
      EdtOfiDes.Text := DM1.CrgDescrip('OFDESID=' + QuotedStr(Trim(DM1.xOfiDes)), 'APO110', 'OFDESNOM');
      DBLkOfiDes.Enabled := True;
      If Copy(DM1.CrgArea(DM1.wUsuario), 4, 2) <> '01' Then fRepAutDescuento.DBLkOfiDes.Enabled := False;
      DBLUsuarios.Text := DM1.wUsuario;
      EdtUser.Text := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
      DBLUsuarios.Enabled := True;
      If DBLkOfiDes.Enabled Then
         DBLkOfiDes.SetFocus
      Else
         If DBLUsuarios.Enabled Then DBLUsuarios.SetFocus;
   End
   Else
   Begin
      DBLkOfiDes.Enabled := False;
      DBLUsuarios.Enabled := False;
   End;
End;

Procedure TfRepAutDescuento.DBLUsuariosEnter(Sender: TObject);
Var
   xSql: String;
Begin
   // Inicio: SPP_201307_ASO
   xSql := 'select B.USERID USUARIO_AUD, B.USERNOM USERNOM '
      + 'from APO201 A, TGE006 B '
      + 'where A.ASOTIPID=''DO'' '
      + '  and A.AUTDESAPO=''S'' '
      + '  and trunc(FECREGAUTDESAPO)>=' + QuotedStr(DtpFecIni.Text)
      + '  and trunc(FECREGAUTDESAPO)<=' + QuotedStr(DtpFecFin.Text)
      + '  and A.OFIREGAUTDESAPO=' + QuotedStr(DBLkOfiDes.Text)
      + '  and A.USUREGAUTDESAPO=B.USERID '
      + 'group by B.USERID, B.USERNOM';
   // Fin: SPP_201307_ASO
   DM1.cdsCtasBco.Close;
   DM1.cdsCtasBco.DataRequest(xSQL);
   DM1.cdsCtasBco.Open;
   If DM1.cdsCtasBco.RecordCount > 0 Then DBLUsuarios.Enabled := True;
End;

Procedure TfRepAutDescuento.FormCreate(Sender: TObject);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT OFDESID,OFDESNOM FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID';
   DM1.cdsOfdes.Close;
   DM1.cdsOfdes.DataRequest(xSQL);
   DM1.cdsOfdes.Open;

End;

Procedure TfRepAutDescuento.DBLUsuariosExit(Sender: TObject);
Begin
   If length(DBLUsuarios.Text) = 0 Then
   Begin
      EdtUser.Text := '';
      exit;
   End;
   If rgTipoReporte.Focused Then exit;
   If BitSalir.Focused Then exit;
   If DtpFecFin.Focused Then exit;
   If DtpFecIni.Focused Then exit;
   If DBLkOfiDes.Focused Then exit;
   If DM1.cdsCtasBco.Locate('USUARIO_AUD', VarArrayof([DBLUsuarios.Text]), []) Then
   Begin
      EdtUser.Text := DM1.cdsCtasBco.fieldbyname('USERNOM').AsString;
   End
   Else
   Begin
      Beep;
      EdtUser.Text := '';
      EdtUser.SetFocus;
   End;
End;

Procedure TfRepAutDescuento.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;
End.

