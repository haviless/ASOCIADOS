Unit ASO167;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, ExtCtrls, ppEndUsr, ppDB, ppDBPipe,
   ppParameter, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
   ppRelatv, ppProd, ppReport, ImgList, Wwdbigrd, Wwdbgrid, Grids, DBGrids,
   ComCtrls, DB, DBClient, StrUtils, Spin, Mask, wwdblook, Wwdbdlg,
   DBTables, shellapi, ToolWin, wwdbedit,
   clipbrd, wwExport, wwclearbuttongroup, wwradiogroup, wwcheckbox,
   Wwdotdot, Wwdbcomb, Wwdatsrc, Wwquery;

Type
   TFRptCartaDesignatario = Class(TForm)
      imgLstGrid: TImageList;
      ppDesignerRun: TppDesigner;
      ppPrevio: TppReport;
      ppParameterList1: TppParameterList;
      ppDBConexion: TppDBPipeline;
      gbUbigeo: TGroupBox;
      Label3: TLabel;
      dblcddpto: TwwDBLookupComboDlg;
      medpto: TMaskEdit;
      btnProcesar: TBitBtn;
      pcData: TPageControl;
      tsResumen: TTabSheet;
      tsDetallado: TTabSheet;
      dbgPrevio: TwwDBGrid;
      dbgPrevioDet: TwwDBGrid;
      pInferior: TPanel;
      lblNroRegEncontrados: TLabel;
      btnAExcel: TBitBtn;
      btnCerrar: TBitBtn;
      btnPrint: TBitBtn;
      dtgData: TDBGrid;
      Panel1: TPanel;
      lblNroRegEncontradosDet: TLabel;
      btnAExcelDet: TBitBtn;
      BitBtn2: TBitBtn;
      btnPrintDet: TBitBtn;
      dtgDataDet: TDBGrid;
      ppPrevioDet: TppReport;
      ppParameterList2: TppParameterList;
      ppDBConexionDet: TppDBPipeline;
      ppDesignerRunDet: TppDesigner;
      ppHeaderBand1: TppHeaderBand;
      ppLabel11: TppLabel;
      ppLabel12: TppLabel;
      ppLabel13: TppLabel;
      ppLabel14: TppLabel;
      ppLabel15: TppLabel;
      ppSystemVariable1: TppSystemVariable;
      ppSystemVariable2: TppSystemVariable;
      ppSystemVariable3: TppSystemVariable;
      ppLblTitulo: TppLabel;
      ppLabel20: TppLabel;
      ppLabel21: TppLabel;
      ppLabel22: TppLabel;
      ppLabel_1: TppLabel;
      ppLabel_5: TppLabel;
      ppLabel_6: TppLabel;
      ppLabel_7: TppLabel;
      ppLine5: TppLine;
      ppDetailBand1: TppDetailBand;
      ppDBText_2: TppDBText;
      ppDBText_6: TppDBText;
      ppDBText_5: TppDBText;
      ppDBText_8: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppSummaryBand1: TppSummaryBand;
      ppGroup3: TppGroup;
      ppGroupHeaderBand3: TppGroupHeaderBand;
      ppDBText10: TppDBText;
      ppLine2: TppLine;
      ppGroupFooterBand3: TppGroupFooterBand;
      ppLine7: TppLine;
      ppLine8: TppLine;
      ppLabel29: TppLabel;
      ppDBCalc2: TppDBCalc;
      ppDBCalc4: TppDBCalc;
      ppGroup4: TppGroup;
      ppGroupHeaderBand4: TppGroupHeaderBand;
      ppDBText9: TppDBText;
      ppLine4: TppLine;
      ppGroupFooterBand4: TppGroupFooterBand;
      ppLine6: TppLine;
      ppLabel28: TppLabel;
      ppDBCalc1: TppDBCalc;
      ppDBCalc3: TppDBCalc;

    // Inicio: HPP_200909_ASO
      rgtiprep: TRadioGroup;
    ppHeaderBand2: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel19: TppLabel;
    ppLabel23: TppLabel;
    ppLabel25: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText8: TppDBText;
    ppLine3: TppLine;
    ppLine1: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppLine9: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    // Fin: HPP_200909_ASO

      Procedure btnAExcelClick(Sender: TObject);
      Procedure btnPrintClick(Sender: TObject);
      Procedure btnProcesarClick(Sender: TObject);
      Procedure dbgPrevioCalcTitleImage(Sender: TObject;
         Field: TField; Var TitleImageAttributes: TwwTitleImageAttributes);
      Procedure dbgPrevioTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure dblcddptoChange(Sender: TObject);
      Procedure dblcddptoExit(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure btnPrintDetClick(Sender: TObject);
      Procedure btnAExcelDetClick(Sender: TObject);

    // Inicio: HPP_200909_ASO
      Procedure rgtiprepClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    // Fin: HPP_200909_ASO
   Private
      xDptoDes: String;
      Procedure DoSorting(cdsName: TClientDataset; AFieldName: String);
    // HPP_200909_ASO - se retira procedure agrupar
    // procedure agrupar(Sender: TObject; IField: string);
      Procedure asignarColumnas;

   Public
    { Public declarations }
   End;

Var
   FRptCartaDesignatario: TFRptCartaDesignatario;

Implementation

Uses ASODM;

{$R *.dfm}

(******************************************************************************)

Procedure TFRptCartaDesignatario.DoSorting(cdsName: TClientDataset; AFieldName: String);
Const
   NONSORTABLE: Set Of TFieldType = [ftBlob, ftMemo, ftOraBlob, ftOraCLob];
Begin
   With cdsName Do
   Begin
      If IsEmpty Or (FieldByName(AFieldName).DataType In NONSORTABLE) Then
         Exit;

      If (IndexFieldNames = AFieldName) Then
      Begin
         IndexDefs.Update;
         If IndexDefs.IndexOf('w2wTempIndex') > -1 Then
         Begin
            DeleteIndex('w2wTempIndex');
            IndexDefs.Update;
         End;
         AddIndex('w2wTempIndex', AFieldName, [ixDescending, ixCaseInsensitive], '', '', 0);
         IndexName := 'w2wTempIndex';
      End
      Else
      Begin
         IndexFieldNames := AFieldName;
      End;
   End;
End;

(******************************************************************************)
// Inicio: HPP_200909_ASO - se retira procedure agrupar
{
procedure TFRptCartaDesignatario.agrupar(Sender: TObject;IField:string);
begin
      (Sender as TwwDBGrid).GroupFieldName:= IField;
      (Sender as TwwDBGrid).Datasource.Dataset.FieldByName(IField).Index := 0;
      DoSorting(TClientDataset((Sender as TwwDBGrid).Datasource.Dataset), IField);
      (Sender as TwwDBGrid).Invalidate;
end;
Fin: HPP_200909_ASO}

(******************************************************************************)

Procedure TFRptCartaDesignatario.dbgPrevioTitleButtonClick(
   Sender: TObject; AFieldName: String);
Begin
   DoSorting(TClientDataset((Sender As TwwDBGrid).Datasource.Dataset), AFieldName);
End;

(******************************************************************************)

Procedure TFRptCartaDesignatario.dbgPrevioCalcTitleImage(Sender: TObject;
   Field: TField; Var TitleImageAttributes: TwwTitleImageAttributes);
Begin
   With (Sender As TwwDBGrid) Do
      If Field.FieldName = TClientDataset(Datasource.Dataset).indexfieldnames Then
      Begin
         TitleImageAttributes.ImageIndex := 0;
      End
      Else
         If TClientDataset(Datasource.Dataset).indexname = 'w2wTempIndex' Then
         Begin
            TClientDataset(Datasource.Dataset).indexdefs.Update;
            If TClientDataset(Datasource.Dataset).indexdefs.Find('w2wTempIndex').Fields = Field.Fieldname Then
               TitleImageAttributes.ImageIndex := 1;
         End;
End;

(******************************************************************************)
(******************************************************************************)

Procedure TFRptCartaDesignatario.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin
// Inicio: HPP_200909_ASO - se desagrega campos en select
   xSql := 'select DPTOID, DPTODES from apo158';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSql);
   DM1.cdsDpto.Open;
   dblcddpto.Selected.Clear;
   dblcddpto.Selected.Add('DPTOID'#9'4'#9'Código'#9#9);
   dblcddpto.Selected.Add('DPTODES'#9'20'#9'Descripción'#9#9);
   dblcddpto.SetFocus;

   DM1.cdsQry4.Close;
   DM1.cdsQry6.Close;
   medpto.Text := 'Todos los Departamentos';
// Fin: HPP_200909_ASO - se desagrega campos en select
End;

(******************************************************************************)

Procedure TFRptCartaDesignatario.dblcddptoChange(Sender: TObject);
Begin
// Inicio: HPP_200909_ASO - se retira procedure agrupar
   DM1.cdsQry4.Close;
   DM1.cdsQry6.Close;
// Fin: HPP_200909_ASO

   If DM1.cdsDpto.Locate('DPTOID', dblcddpto.Text, []) Then
   Begin
      medpto.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
   End
   Else
   Begin
      If Not dblcddpto.Focused Then dblcddpto.Text := '';
      medpto.Text := 'Todos los Departamentos';
   End;
End;

(******************************************************************************)

Procedure TFRptCartaDesignatario.dblcddptoExit(Sender: TObject);
Begin
   dblcddptoChange(dblcddpto);
End;

(******************************************************************************)

Procedure TFRptCartaDesignatario.asignarColumnas();
Var
   xTotalDocentes, xCantNoCartaAut: integer;
Begin
   If DM1.cdsQry6.Active Then
   Begin
      DM1.cdsQry6.First;
      xTotalDocentes := 0;
      xCantNoCartaAut := 0;
      While Not DM1.cdsQry6.Eof Do
      Begin
         xCantNoCartaAut := xCantNoCartaAut + DM1.cdsQry6.FieldByName('CANT_NO_CARTA_AUT').Value;
         xTotalDocentes := xTotalDocentes + DM1.cdsQry6.FieldByName('TOTAL_DOCENTES').Value;
         DM1.cdsQry6.Next;
      End;
      DM1.cdsQry6.First;

      dbgPrevio.Selected.Clear;
      If (trim(dblcddpto.Text) = '') Then // todos los dptos
         dbgPrevio.Selected.Add('DEPARTAMENTO'#9'18'#9'DEPARTAMENTO');
      dbgPrevio.Selected.Add('PROVINCIA'#9'18'#9'PROVINCIA');
      dbgPrevio.Selected.Add('DISTRITO'#9'18'#9'DISTRITO');
      dbgPrevio.Selected.Add('CANT_NO_CARTA_AUT'#9'10'#9'SIN~AUTO.');
      dbgPrevio.Selected.Add('TOTAL_DOCENTES'#9'10'#9'TOTAL~DOC.');
      dbgPrevio.Selected.Add('PORCENTAJE_NO_CART_AUT'#9'10'#9'%');

      dbgPrevio.ApplySelected;

      TNumericField(DM1.cdsQry6.FieldByName('CANT_NO_CARTA_AUT')).DisplayFormat := '###,###,##0';
      TNumericField(DM1.cdsQry6.FieldByName('TOTAL_DOCENTES')).DisplayFormat := '###,###,##0';
      TNumericField(DM1.cdsQry6.FieldByName('PORCENTAJE_NO_CART_AUT')).DisplayFormat := '###,###,##0.00';

      dbgPrevio.ColumnByName('DISTRITO').FooterValue := 'TOTAL';
      dbgPrevio.ColumnByName('CANT_NO_CARTA_AUT').FooterValue := FloatTostrf(xCantNoCartaAut, ffnumber, 15, 0);
      dbgPrevio.ColumnByName('TOTAL_DOCENTES').FooterValue := FloatTostrf(xTotalDocentes, ffnumber, 15, 0);
      dbgPrevio.RefreshDisplay;
   End;

   dbgPrevioDet.Selected.Clear;
   If (trim(dblcddpto.Text) = '') Then // todos los dptos
      dbgPrevioDet.Selected.Add('DEPARTAMENTO'#9'18'#9'DEPARTAMENTO');
   dbgPrevioDet.Selected.Add('PROVINCIA'#9'18'#9'PROVINCIA');
   dbgPrevioDet.Selected.Add('DISTRITO'#9'18'#9'DISTRITO');
   //dbgPrevioDet.Selected.Add('ASOID'#9'10'#9'ASOID');
   dbgPrevioDet.Selected.Add('DNI'#9'8'#9'DNI');
   dbgPrevioDet.Selected.Add('APENOM'#9'30'#9'APELLIDOS~Y NOMBRES');
   dbgPrevioDet.Selected.Add('AUT'#9'5'#9'AUT');

// HPP_200909_ASO - SAR2009-0354
   // Se modifica la columna de dirección segun la elección de radio group.
   If rgtiprep.ItemIndex = 0 Then
      dbgPrevioDet.Selected.Add('DIRECCION'#9'60'#9'DIRECCION~DOMICILIARIA')
   Else
   Begin
      dbgPrevioDet.Selected.Add('ASODESLAB'#9'60'#9'CENTRO~EDUCATIVO');
      dbgPrevioDet.Selected.Add('DIRECCION'#9'60'#9'DIRECCION~LABORAL');
      dbgPrevioDet.Selected.Add('CENPO'#9'50'#9'CENTRO~POBLADO');
   End;
// FIN HPP_200909_ASO - SAR2009-0354

   dbgPrevioDet.ApplySelected;
   dbgPrevioDet.RefreshDisplay;

End;
(******************************************************************************)

Procedure TFRptCartaDesignatario.btnProcesarClick(Sender: TObject);
  {----------------------------------------------------}

   Procedure generarDxsLab();
   Var
      xSQL: String;
   Begin
// Inicio: HPP_200909_ASO
      // SAR2009-0354
      // Se modifica los Qrys para tomar el ubigeo del centro educativo
      // Se verifica si exixte en la tabla ASO_CEN_EDU en el caso que exista
      // se toma el UBIGEO_DIR en caso contrario se toma ASODSTLABID del APO201
      // resumen
      {
      xSQL:='SELECT NVL(DPTO.DPTODES,''Z-NULO'') DEPARTAMENTO, NVL(PROV.CIUDDES,''Z-NULO'') PROVINCIA, '
           +'       NVL(DIST.ZIPDES,''Z-NULO'') DISTRITO, '
           +'       SUM(CASE WHEN NVL(APO.AUTDESAPO, ''N'') = ''N'' THEN 1 ELSE 0 END) CANT_NO_CARTA_AUT, '
           +'       SUM(1) TOTAL_DOCENTES, '
           +'       ROUND((SUM(CASE WHEN NVL(APO.AUTDESAPO, ''N'') = ''N'' THEN 1 ELSE 0 END)/SUM(1)*100),2) PORCENTAJE_NO_CART_AUT '
           +'  FROM (SELECT ASODSTLABID, AUTDESAPO '
           +'           FROM APO201 WHERE NVL(ASOTIPID, ''Z-NULO'') = ''DO''''
      if not (trim(dblcddpto.Text)='') then // solo un dptamento
           xSQL:=xSQL+'     AND SUBSTR(ASODSTLABID,1,2) = '+QuotedStr(trim(dblcddpto.Text));
      xSQL:=xSQL+'  ) APO, '
           +'       APO158 DPTO, TGE121 PROV, '
           +'       TGE122 DIST '
           +' WHERE SUBSTR(APO.ASODSTLABID,1,2) = DPTO.DPTOID(+) '
           +'   AND SUBSTR(APO.ASODSTLABID,1,2) = PROV.DPTOID(+)  AND SUBSTR(APO.ASODSTLABID,3,2) = PROV.CIUDID(+) '
           +'   AND SUBSTR(APO.ASODSTLABID,1,2) = DIST.DPTOID(+)  AND SUBSTR(APO.ASODSTLABID,3,2) = DIST.CIUDID(+)  '
           +'   AND SUBSTR(APO.ASODSTLABID,5,2) = DIST.ZIPID(+) '
           +' GROUP BY NVL(DPTO.DPTODES,''Z-NULO''), NVL(PROV.CIUDDES,''Z-NULO''), NVL(DIST.ZIPDES,''Z-NULO'') '
           +' ORDER BY NVL(DPTO.DPTODES,''Z-NULO''), NVL(PROV.CIUDDES,''Z-NULO''), NVL(DIST.ZIPDES,''Z-NULO'') ';
       }

// inicio: HPP_201010_ASO (HPC_201005_ASO)
{
      xSQL := 'SELECT NVL(DPTO.DPTODES,''Z-NULO'') DEPARTAMENTO, NVL(PROV.CIUDDES,''Z-NULO'') PROVINCIA, '
         + '       NVL(DIST.ZIPDES,''Z-NULO'') DISTRITO, '
         + '       SUM(CASE WHEN NVL(APO.AUTDESAPO, ''N'') = ''N'' THEN 1 ELSE 0 END) CANT_NO_CARTA_AUT, '
         + '       SUM(1) TOTAL_DOCENTES, '
         + '       ROUND((SUM(CASE WHEN NVL(APO.AUTDESAPO, ''N'') = ''N'' THEN 1 ELSE 0 END)/SUM(1)*100),2) PORCENTAJE_NO_CART_AUT '
         + '  FROM (SELECT CASE WHEN B.UBIGEO_DIR IS NOT NULL THEN B.UBIGEO_DIR ELSE A.ASODSTLABID END ASODSTLABID, A.AUTDESAPO '
         + '           FROM APO201 A, ASO_CEN_EDU B '
         + '          WHERE NVL(ASOTIPID, ''Z-NULO'') = ''DO'' '
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// NO SE MUESTRAN LOS ASOCIADOS FALLECIDOS
//         + '          AND A.CENEDUID = B.CENEDUID(+)';
         + '          AND A.CENEDUID = B.CENEDUID(+) AND NVL(FALLECIDO,''N'') = ''N'''; //no considerar fallecidos
// Fin: HPP_201003_ASO
      // solo un departamento
      If Not (trim(dblcddpto.Text) = '') Then
         xSql := xSql + ' AND SUBSTR((CASE WHEN B.UBIGEO_DIR IS NOT NULL THEN B.UBIGEO_DIR ELSE A.ASODSTLABID END),1,2) = ' + QuotedStr(trim(dblcddpto.Text));
      xSQL := xSQL + '  ) APO, '
         + '       APO158 DPTO, TGE121 PROV, '
         + '       TGE122 DIST '
         + ' WHERE SUBSTR(APO.ASODSTLABID,1,2) = DPTO.DPTOID(+) '
         + '   AND SUBSTR(APO.ASODSTLABID,1,2) = PROV.DPTOID(+)  AND SUBSTR(APO.ASODSTLABID,3,2) = PROV.CIUDID(+) '
         + '   AND SUBSTR(APO.ASODSTLABID,1,2) = DIST.DPTOID(+)  AND SUBSTR(APO.ASODSTLABID,3,2) = DIST.CIUDID(+)  '
         + '   AND SUBSTR(APO.ASODSTLABID,5,2) = DIST.ZIPID(+) '
         + ' GROUP BY NVL(DPTO.DPTODES,''Z-NULO''), NVL(PROV.CIUDDES,''Z-NULO''), NVL(DIST.ZIPDES,''Z-NULO'') '
         + ' ORDER BY NVL(DPTO.DPTODES,''Z-NULO''), NVL(PROV.CIUDDES,''Z-NULO''), NVL(DIST.ZIPDES,''Z-NULO'') ';
}
     xSQL := 'SELECT NVL(DPTO.DPTODES,''NO IDENTIFICADO'') DEPARTAMENTO, NVL(PROV.CIUDDES,''NO IDENTIFICADO'') PROVINCIA, NVL(DIST.ZIPDES,''NO IDENTIFICADO'') DISTRITO,'
     +' SUM(CASE WHEN NVL(APO.AUTDESAPO, ''N'') = ''N'' THEN 1 ELSE 0 END) CANT_NO_CARTA_AUT,'
     +' SUM(1) TOTAL_DOCENTES, ROUND((SUM(CASE WHEN NVL(APO.AUTDESAPO, ''N'') = ''N'' THEN 1 ELSE 0 END)/SUM(1)*100),2) PORCENTAJE_NO_CART_AUT'
     +' FROM (SELECT CASE WHEN B.UBIGEO_DIR IS NOT NULL THEN B.UBIGEO_DIR ELSE A.ASODSTLABID END ASODSTLABID, A.AUTDESAPO'
     +' FROM APO201 A, ASO_CEN_EDU B'
     //+'WHERE NVL(ASOTIPID, ''Z-NULO'') = ''DO'' '
//     +' WHERE NVL(ASOTIPID, ''Z-NULO'') IN (''DO'',''NI'')'
     +' WHERE ASOTIPID=''DO'' '
     //+' AND A.CENEDUID = B.CENEDUID(+)';
     +' AND A.CENEDUID = B.CENEDUID(+) AND NVL(FALLECIDO,''N'') = ''N''';
     If Not (trim(dblcddpto.Text) = '') Then
       xSql := xSql + ' AND SUBSTR((CASE WHEN B.UBIGEO_DIR IS NOT NULL THEN B.UBIGEO_DIR ELSE A.ASODSTLABID END),1,2) = ' + QuotedStr(trim(dblcddpto.Text));
     xSQL := xSQL + '  ) APO, APO158 DPTO, TGE121 PROV, TGE122 DIST'
     +' WHERE SUBSTR(APO.ASODSTLABID,1,2) = DPTO.DPTOID(+) AND SUBSTR(APO.ASODSTLABID,1,2) = PROV.DPTOID(+) AND SUBSTR(APO.ASODSTLABID,3,2) = PROV.CIUDID(+)'
     +' AND SUBSTR(APO.ASODSTLABID,1,2) = DIST.DPTOID(+) AND SUBSTR(APO.ASODSTLABID,3,2) = DIST.CIUDID(+)'
     +' AND SUBSTR(APO.ASODSTLABID,5,2) = DIST.ZIPID(+)'
     +' GROUP BY NVL(DPTO.DPTODES,''NO IDENTIFICADO''), NVL(PROV.CIUDDES,''NO IDENTIFICADO''), NVL(DIST.ZIPDES,''NO IDENTIFICADO'')'
     +' ORDER BY NVL(DPTO.DPTODES,''NO IDENTIFICADO''), NVL(PROV.CIUDDES,''NO IDENTIFICADO''), NVL(DIST.ZIPDES,''NO IDENTIFICADO'')';
// fin: HPP_201010_ASO (HPC_201005_ASO)

      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSql);
      DM1.cdsQry6.Open;

// inicio: HPP_201010_ASO (HPC_201005_ASO)
{
      xSQL := ' SELECT NVL(DPTO.DPTODES, ''Z-NULO'') DEPARTAMENTO, NVL(PROV.CIUDDES, ''Z-NULO'') PROVINCIA, NVL(DIST.ZIPDES, ''Z-NULO'') DISTRITO, APO.ASOID, '
            + '        APO.ASODNI DNI, APO.ASOAPENOM APENOM,  APO.ASODESLAB,  APO.ASODIRLAB DIRECCION, APO.CENPO '
            + ' FROM (SELECT A.ASOID, A.ASODNI, A.ASOAPENOM, A.AUTDESAPO, '
            + '              CASE WHEN B.DIREC IS NOT NULL THEN B.DIREC ELSE A.ASODIRLAB END ASODIRLAB, '
            + '              CASE WHEN B.UBIGEO_DIR IS NOT NULL THEN B.UBIGEO_DIR ELSE A.ASODSTLABID END ASODSTLABID, '
            + '              CASE WHEN B.NOMCENEDU IS NOT NULL THEN B.NOMCENEDU ELSE A.ASODESLAB END ASODESLAB, B.CENPO ' // Se añade Nombre del centro educativo
            + '       FROM APO201 A, ASO_CEN_EDU B '
            + '       WHERE NVL(ASOTIPID, ''Z-NULO'') = ''DO'' AND NVL(A.AUTDESAPO,''N'') = ''N'' ' // Se añade la condición AUTODESAPO = 'N'
            + '         AND SUBSTR((CASE WHEN B.UBIGEO_DIR IS NOT NULL THEN B.UBIGEO_DIR ELSE A.ASODSTLABID END), 1, 2) = ' + QuotedStr(trim(dblcddpto.Text))
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
//            + '         AND A.CENEDUID = B.CENEDUID(+) '
            + '         AND A.CENEDUID = B.CENEDUID(+) AND NVL(FALLECIDO,''N'') = ''N''' //no considerar fallecidos
// Fin: HPP_201003_ASO
            + '       ) APO, APO158 DPTO, TGE121 PROV, TGE122 DIST '
            + ' WHERE SUBSTR(APO.ASODSTLABID, 1, 2) = DPTO.DPTOID(+) AND SUBSTR(APO.ASODSTLABID, 1, 2) = PROV.DPTOID(+) '
            + '   AND SUBSTR(APO.ASODSTLABID, 3, 2) = PROV.CIUDID(+) AND SUBSTR(APO.ASODSTLABID, 1, 2) = DIST.DPTOID(+) '
            + '   AND SUBSTR(APO.ASODSTLABID, 3, 2) = DIST.CIUDID(+) AND SUBSTR(APO.ASODSTLABID, 5, 2) = DIST.ZIPID(+) '
            + ' ORDER BY NVL(DPTO.DPTODES, ''Z-NULO''), NVL(PROV.CIUDDES, ''Z-NULO''), NVL(DIST.ZIPDES, ''Z-NULO'') ';
}

     xSQL := ' SELECT NVL(DPTO.DPTODES, ''NO IDENTIFICADO'') DEPARTAMENTO, NVL(PROV.CIUDDES, ''NO IDENTIFICADO'') PROVINCIA, NVL(DIST.ZIPDES, ''NO IDENTIFICADO'') DISTRITO, APO.ASOID,'
     +' APO.ASODNI DNI, APO.ASOAPENOM APENOM,  APO.ASODESLAB,  APO.ASODIRLAB DIRECCION, APO.CENPO'
     +' FROM (SELECT A.ASOID, A.ASODNI, A.ASOAPENOM, A.AUTDESAPO, CASE WHEN B.DIREC IS NOT NULL THEN B.DIREC ELSE A.ASODIRLAB END ASODIRLAB,'
     +' CASE WHEN B.UBIGEO_DIR IS NOT NULL THEN B.UBIGEO_DIR ELSE A.ASODSTLABID END ASODSTLABID,'
     +' CASE WHEN B.NOMCENEDU IS NOT NULL THEN B.NOMCENEDU ELSE A.ASODESLAB END ASODESLAB, B.CENPO' // Se añade Nombre del centro educativo
     +' FROM APO201 A, ASO_CEN_EDU B'
     // +' WHERE NVL(ASOTIPID, ''NO IDENTIFICADO'') = ''DO'' AND NVL(A.AUTDESAPO,''N'') = ''N'' '
//     +' WHERE A.ASOTIPID IN (''DO'',''NI'') AND NVL(A.AUTDESAPO,''N'') = ''N'' '
     +' WHERE A.ASOTIPID=''DO'' AND NVL(A.AUTDESAPO,''N'') = ''N'' '
     +' AND SUBSTR((CASE WHEN B.UBIGEO_DIR IS NOT NULL THEN B.UBIGEO_DIR ELSE A.ASODSTLABID END), 1, 2) = ' + QuotedStr(trim(dblcddpto.Text))
     +' AND A.CENEDUID = B.CENEDUID(+) AND NVL(FALLECIDO,''N'') = ''N''' //no considerar fallecidos
     +' ) APO, APO158 DPTO, TGE121 PROV, TGE122 DIST'
     +' WHERE SUBSTR(APO.ASODSTLABID, 1, 2) = DPTO.DPTOID(+) AND SUBSTR(APO.ASODSTLABID, 1, 2) = PROV.DPTOID(+)'
     +' AND SUBSTR(APO.ASODSTLABID, 3, 2) = PROV.CIUDID(+) AND SUBSTR(APO.ASODSTLABID, 1, 2) = DIST.DPTOID(+)'
     +' AND SUBSTR(APO.ASODSTLABID, 3, 2) = DIST.CIUDID(+) AND SUBSTR(APO.ASODSTLABID, 5, 2) = DIST.ZIPID(+)'
     +' ORDER BY NVL(DPTO.DPTODES, ''NO IDENTIFICADO''), NVL(PROV.CIUDDES, ''NO IDENTIFICADO''), NVL(DIST.ZIPDES, ''NO IDENTIFICADO'')';
// fin: HPP_201010_ASO (HPC_201005_ASO)

      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xSql);
      DM1.cdsQry4.Open;
      // FIN: HPP_200909_ASO - SAR2009-0354
   End;

   Procedure generarDxsDom();
   Var
      xSQL: String;
   Begin
// inicio: HPP_201010_ASO (HPC_201005_ASO)
{
      // resumen
      xSQL := 'SELECT NVL(DPTO.DPTODES,''Z-NULO'') DEPARTAMENTO, NVL(PROV.CIUDDES,''Z-NULO'') PROVINCIA, '
         + '       NVL(DIST.ZIPDES,''Z-NULO'') DISTRITO, '
         + '       SUM(CASE WHEN NVL(APO.AUTDESAPO, ''N'') = ''N'' THEN 1 ELSE 0 END) CANT_NO_CARTA_AUT, '
         + '       SUM(1) TOTAL_DOCENTES, '
         + '       ROUND((SUM(CASE WHEN NVL(APO.AUTDESAPO, ''N'') = ''N'' THEN 1 ELSE 0 END)/SUM(1)*100),2) PORCENTAJE_NO_CART_AUT '
         + '  FROM (SELECT ZIPID, AUTDESAPO '
         + '           FROM APO201 '
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// NO SE MUESTRAN LOS ASOCIADOS FALLECIDOS
//         + '          WHERE NVL(ASOTIPID, ''Z-NULO'') = ''DO'' ';
         + '          WHERE NVL(ASOTIPID, ''Z-NULO'') = ''DO'' AND NVL(FALLECIDO,''N'') = ''N''';  //no considerar fallecidos
// Fin: HPP_201003_ASO
      If Not (trim(dblcddpto.Text) = '') Then // solo un dptamento
         xSQL := xSQL + '     AND SUBSTR(ZIPID,1,2) = ' + QuotedStr(trim(dblcddpto.Text));
      xSQL := xSQL + '  ) APO, '
         + '       APO158 DPTO, TGE121 PROV, '
         + '       TGE122 DIST '
         + ' WHERE SUBSTR(APO.ZIPID,1,2) = DPTO.DPTOID(+) '
         + '   AND SUBSTR(APO.ZIPID,1,2) = PROV.DPTOID(+)  AND SUBSTR(APO.ZIPID,3,2) = PROV.CIUDID(+) '
         + '   AND SUBSTR(APO.ZIPID,1,2) = DIST.DPTOID(+)  AND SUBSTR(APO.ZIPID,3,2) = DIST.CIUDID(+)  '
         + '   AND SUBSTR(APO.ZIPID,5,2) = DIST.ZIPID(+) '
         + ' GROUP BY NVL(DPTO.DPTODES,''Z-NULO''), NVL(PROV.CIUDDES,''Z-NULO''), NVL(DIST.ZIPDES,''Z-NULO'') '
         + ' ORDER BY NVL(DPTO.DPTODES,''Z-NULO''), NVL(PROV.CIUDDES,''Z-NULO''), NVL(DIST.ZIPDES,''Z-NULO'') ';

}
     xSQL := 'SELECT NVL(DPTO.DPTODES,''NO IDENTIFICADO'') DEPARTAMENTO, NVL(PROV.CIUDDES,''NO IDENTIFICADO'') PROVINCIA, NVL(DIST.ZIPDES,''NO IDENTIFICADO'') DISTRITO,'
     +' SUM(CASE WHEN NVL(APO.AUTDESAPO, ''N'') = ''N'' THEN 1 ELSE 0 END) CANT_NO_CARTA_AUT,'
     +' SUM(1) TOTAL_DOCENTES, ROUND((SUM(CASE WHEN NVL(APO.AUTDESAPO, ''N'') = ''N'' THEN 1 ELSE 0 END)/SUM(1)*100),2) PORCENTAJE_NO_CART_AUT'
     +' FROM (SELECT ZIPID, AUTDESAPO'
     +' FROM APO201'
//     +' WHERE ASOTIPID IN (''DO'',''NI'') AND NVL(FALLECIDO,''N'') = ''N''';  //no considerar fallecidos
     +' WHERE ASOTIPID=''DO'' AND NVL(FALLECIDO,''N'') = ''N''';  //no considerar fallecidos
     If Not (trim(dblcddpto.Text) = '') Then // solo un dptamento
       xSQL := xSQL + '     AND SUBSTR(ZIPID,1,2) = ' + QuotedStr(trim(dblcddpto.Text));
     xSQL := xSQL + ') APO, APO158 DPTO, TGE121 PROV, TGE122 DIST'
     +' WHERE SUBSTR(APO.ZIPID,1,2) = DPTO.DPTOID(+) AND SUBSTR(APO.ZIPID,1,2) = PROV.DPTOID(+)  AND SUBSTR(APO.ZIPID,3,2) = PROV.CIUDID(+)'
     +' AND SUBSTR(APO.ZIPID,1,2) = DIST.DPTOID(+) AND SUBSTR(APO.ZIPID,3,2) = DIST.CIUDID(+) AND SUBSTR(APO.ZIPID,5,2) = DIST.ZIPID(+)'
     +' GROUP BY NVL(DPTO.DPTODES,''NO IDENTIFICADO''), NVL(PROV.CIUDDES,''NO IDENTIFICADO''), NVL(DIST.ZIPDES,''NO IDENTIFICADO'')'
     +' ORDER BY NVL(DPTO.DPTODES,''NO IDENTIFICADO''), NVL(PROV.CIUDDES,''NO IDENTIFICADO''), NVL(DIST.ZIPDES,''NO IDENTIFICADO'')';
// fin: HPP_201010_ASO (HPC_201005_ASO)

      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSql);
      DM1.cdsQry6.Open;

      // detalle
// inicio: HPP_201010_ASO (HPC_201005_ASO)
{
      xSql := 'SELECT NVL(DPTO.DPTODES, ''Z-NULO'') DEPARTAMENTO, '
         + '       NVL(PROV.CIUDDES, ''Z-NULO'') PROVINCIA, NVL(DIST.ZIPDES, ''Z-NULO'') DISTRITO, '
         + '       APO.ASOID, APO.ASODNI DNI, APO.ASOAPENOM APENOM, '
         + '       '' '' ASODESLAB, '' '' CENPO, '
         + '       APO.ASODIR DIRECCION '
         + '  FROM (SELECT ZIPID, ASOID, ASODNI, ASOAPENOM, AUTDESAPO, ASODIR '
         + '           FROM APO201 '
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
//         + '          WHERE NVL(ASOTIPID, ''Z-NULO'') = ''DO'' AND NVL(AUTDESAPO, ''N'') = ''N'''; // Se añade la condición AUTODESAPO = 'N'
         + '          WHERE NVL(ASOTIPID, ''Z-NULO'') = ''DO'' AND NVL(AUTDESAPO, ''N'') = ''N'' AND NVL(FALLECIDO,''N'') = ''N'''; // Se añade la condición AUTODESAPO = 'N' y FALLECIDO='N'
// Fin: HPP_201003_ASO
      // solo un departamento
      If Not (trim(dblcddpto.Text) = '') Then xSql := xSql + ' AND SUBSTR(ZIPID,1,2) = ' + QuotedStr(trim(dblcddpto.Text));
      xSql := xSql + '  ) APO, '
         + '       APO158 DPTO, TGE121 PROV, TGE122 DIST '
         + ' WHERE SUBSTR(APO.ZIPID, 1, 2) = DPTO.DPTOID(+) '
         + '   AND SUBSTR(APO.ZIPID, 1, 2) = PROV.DPTOID(+) '
         + '   AND SUBSTR(APO.ZIPID, 3, 2) = PROV.CIUDID(+) '
         + '   AND SUBSTR(APO.ZIPID, 1, 2) = DIST.DPTOID(+) '
         + '   AND SUBSTR(APO.ZIPID, 3, 2) = DIST.CIUDID(+) '
         + '   AND SUBSTR(APO.ZIPID, 5, 2) = DIST.ZIPID(+) '
         + ' ORDER BY NVL(DPTO.DPTODES, ''Z-NULO''), NVL(PROV.CIUDDES, ''Z-NULO''), '
         + '          NVL(DIST.ZIPDES, ''Z-NULO'')';

}
     xSql := 'SELECT NVL(DPTO.DPTODES, ''NO IDENTIFICADO'') DEPARTAMENTO, NVL(PROV.CIUDDES, ''NO IDENTIFICADO'') PROVINCIA, NVL(DIST.ZIPDES, ''NO IDENTIFICADO'') DISTRITO,'
     +' APO.ASOID, APO.ASODNI DNI, APO.ASOAPENOM APENOM, '' '' ASODESLAB, '' '' CENPO, APO.ASODIR DIRECCION'
     +' FROM (SELECT ZIPID, ASOID, ASODNI, ASOAPENOM, AUTDESAPO, ASODIR'
     +' FROM APO201'
     //+' WHERE NVL(ASOTIPID, ''Z-NULO'') = ''DO'' AND NVL(AUTDESAPO, ''N'') = ''N'' AND NVL(FALLECIDO,''N'') = ''N'''; // Se añade la condición AUTODESAPO = 'N' y FALLECIDO='N'
//     +' WHERE ASOTIPID IN (''DO'',''NI'') AND NVL(AUTDESAPO, ''N'') = ''N'' AND NVL(FALLECIDO,''N'') = ''N'''; // Se añade la condición AUTODESAPO = 'N' y FALLECIDO='N'
     +' WHERE ASOTIPID=''DO'' AND NVL(AUTDESAPO, ''N'') = ''N'' AND NVL(FALLECIDO,''N'') = ''N'''; // Se añade la condición AUTODESAPO = 'N' y FALLECIDO='N'
     // solo un departamento
     If Not (trim(dblcddpto.Text) = '') Then
       xSql := xSql + ' AND SUBSTR(ZIPID,1,2) = ' + QuotedStr(trim(dblcddpto.Text));
     xSql := xSql + '  ) APO, APO158 DPTO, TGE121 PROV, TGE122 DIST'
     +' WHERE SUBSTR(APO.ZIPID, 1, 2) = DPTO.DPTOID(+) AND SUBSTR(APO.ZIPID, 1, 2) = PROV.DPTOID(+) AND SUBSTR(APO.ZIPID, 3, 2) = PROV.CIUDID(+)'
     +' AND SUBSTR(APO.ZIPID, 1, 2) = DIST.DPTOID(+) AND SUBSTR(APO.ZIPID, 3, 2) = DIST.CIUDID(+) AND SUBSTR(APO.ZIPID, 5, 2) = DIST.ZIPID(+)'
     +' ORDER BY NVL(DPTO.DPTODES, ''NO IDENTIFICADO''), NVL(PROV.CIUDDES, ''NO IDENTIFICADO''), NVL(DIST.ZIPDES, ''NO IDENTIFICADO'')';
// fin: HPP_201010_ASO (HPC_201005_ASO)

      DM1.cdsQry4.Close;
      DM1.cdsQry4.DataRequest(xSql);
      DM1.cdsQry4.Open;

   End;
// Fin: HPP_200909_ASO

  {----------------------------------------------------}
Begin
   pcData.ActivePage := TTabSheet(tsResumen);
   If trim(medpto.text) = '' Then
   Begin
      showmessage('Por favor Seleccione un Departamento');
      exit;
   End;
   xDptoDes := medpto.text;

// HPP_200909_ASO - SAR2009-0354
   // Se añade radio group para diferenciar el tipo de reporte deseado
   If rgtiprep.ItemIndex = 0 Then
   Begin
      Screen.Cursor := crHourGlass;
      generarDxsDom();
      asignarColumnas();
   End
   Else
   Begin
      Screen.Cursor := crHourGlass;
      generarDxsLab();
      asignarColumnas();
   End;
   DM1.cdsQry6.IndexFieldNames:='DEPARTAMENTO;PROVINCIA;DISTRITO';
   DM1.cdsQry4.IndexFieldNames:='DEPARTAMENTO;PROVINCIA;DISTRITO;APENOM';
// FIN: HPP_200909_ASO - SAR2009-0354


   If (trim(dblcddpto.Text) = '') Then // todos los dptos
   Begin
      dbgPrevio.GroupFieldName := 'DEPARTAMENTO';
      dbgPrevioDet.GroupFieldName := 'DEPARTAMENTO';
   End
   Else
   Begin
      dbgPrevio.GroupFieldName := 'PROVINCIA';
      dbgPrevioDet.GroupFieldName := 'PROVINCIA';
   End;

   lblNroRegEncontrados.Caption := FloatToStr(DM1.cdsQry6.RecordCount) + ' Registros encontrados - Resumen';
   lblNroRegEncontradosDet.caption := FloatToStr(DM1.cdsQry4.RecordCount) + ' Registros encontrados - Detalle';

   btnAExcel.Enabled := (DM1.cdsQry6.RecordCount > 0);
   btnPrint.Enabled := (DM1.cdsQry6.RecordCount > 0);

   btnAExcelDet.Enabled := (DM1.cdsQry4.RecordCount > 0);
   btnPrintDet.Enabled := (DM1.cdsQry4.RecordCount > 0);

   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TFRptCartaDesignatario.btnPrintClick(Sender: TObject);
Begin
   If DM1.cdsQry6.RecordCount > 0 Then
   Begin
      ppPrevio.Print;
      ppPrevio.stop;
   End;
End;

(******************************************************************************)

Procedure TFRptCartaDesignatario.btnPrintDetClick(Sender: TObject);
Begin
   If DM1.cdsQry4.RecordCount > 0 Then
   Begin
      ppPrevioDet.Print;
      ppPrevioDet.stop;
   End;
End;
(******************************************************************************)

Procedure TFRptCartaDesignatario.btnAExcelDetClick(Sender: TObject);
Begin
// HPP_200909_ASO - SAR2009-0354
   // Se modifica la forma de exportar al Excel
   With dbgPrevioDet, dbgPrevioDet.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'det_direcciones.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgPrevioDet.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
// FIN HPP_200909_ASO - SAR2009-0354
End;

(******************************************************************************)

Procedure TFRptCartaDesignatario.btnAExcelClick(Sender: TObject);
Begin
// HPP_200909_ASO - SAR2009-0354
   // Se modifica la forma de exportar al Excel
   With dbgPrevio, dbgPrevio.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'res_direcciones.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgPrevio.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;

End;

(******************************************************************************)

Procedure TFRptCartaDesignatario.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   Try
      If Not (DM1.cdsQry6.State = dsInactive) Then
         DM1.cdsQry6.Filtered := false;
      If Not (DM1.cdsQry4.State = dsInactive) Then
         DM1.cdsQry4.Filtered := false;
// Inicio: HPP_200909_ASO
      DM1.cdsQry6.IndexFieldNames:='';
      DM1.cdsQry6.Close;
      DM1.cdsQry4.IndexFieldNames:='';
      DM1.cdsQry4.Close;
// Fin: HPP_200909_ASO
   Finally
      Action := caFree;
   End;
End;

(******************************************************************************)
// Inicio: HPP_200909_ASO

Procedure TFRptCartaDesignatario.rgtiprepClick(Sender: TObject);
Begin
   DM1.cdsQry4.Close;
   DM1.cdsQry6.Close;
End;
// Fin: HPP_200909_ASO

procedure TFRptCartaDesignatario.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

End.

