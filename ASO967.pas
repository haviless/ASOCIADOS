// HPP_200909_ASO - SAR2009-319 - realizado por IREVILLA
Unit ASO967;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ppDB, ppDBPipe,
   ppDBBDE, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache,
   DBGrids, ExtCtrls, wwdblook, Wwdbdlg;

Type
   TFDocCon = Class(TForm)
      btnSalir: TBitBtn;
      btnAExcel: TBitBtn;
      dbgreporte: TwwDBGrid;
      dtgData: TDBGrid;
      GroupBox1: TGroupBox;
      btnProcesar: TBitBtn;
      dblcdAsoTipId: TwwDBLookupComboDlg;
      Label1: TLabel;
      Label2: TLabel;
      rgTipDep: TRadioGroup;
      Label3: TLabel;
      Label4: TLabel;
      dblcdDptoId: TwwDBLookupComboDlg;
      edtTipAso: TEdit;
      edtDesDep: TEdit;
    lblFiltrarPor: TLabel;
    rgOrden: TRadioGroup;
    lblNroRegEncontrados: TLabel;
      // inicio: HPP_201003_ASO
      // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
      Label5: TLabel;
      // Fin: HPP_201003_ASO
      Procedure FormActivate(Sender: TObject);
      Procedure btnAExcelClick(Sender: TObject);
      Procedure btnSalirClick(Sender: TObject);
      Procedure btnProcesarClick(Sender: TObject);
      Procedure dblcdAsoTipIdExit(Sender: TObject);
      Procedure dblcdDptoIdExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgOrdenClick(Sender: TObject);
    procedure rgTipDepClick(Sender: TObject);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FDocCon: TFDocCon;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure TFDocCon.FormActivate(Sender: TObject);
Var
   xSql: String;
Begin
   xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107';
   DM1.cdsTAso.Close;
   DM1.cdsTAso.DataRequest(xSql);
   DM1.cdsTAso.Open;
   dblcdAsoTipId.Selected.Clear;
   dblcdAsoTipId.Selected.Add('ASOTIPID'#9'2'#9'Código'#9#9);
   dblcdAsoTipId.Selected.Add('ASOTIPDES'#9'15'#9'Descripción'#9#9);

   xSql := 'SELECT DPTOID, DPTODES FROM APO158';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSql);
   DM1.cdsDpto.Open;
   dblcdDptoId.Selected.Clear;
   dblcdDptoId.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
   dblcdDptoId.Selected.Add('DPTODES'#9'15'#9'Descripción'#9#9);

   lblFiltrarPor.Visible := False;
   rgTipDep.Visible := False;

End;

Procedure TFDocCon.btnAExcelClick(Sender: TObject);
Begin
   DM1.HojaExcel('Resumen', DM1.dsReporte, dtgData);
End;

Procedure TFDocCon.btnSalirClick(Sender: TObject);
Begin
   FDocCon.Close;
End;

Procedure TFDocCon.btnProcesarClick(Sender: TObject);
Var
   xSQL, xWhere: String;
Begin
   if length(Trim(edtTipAso.Text))=0 and length(trim(edtDesDep.Text)) then
   begin
      ShowMessage('Debe elegir al menos una alternativa de Filtro');
      dblcdAsoTipId.SetFocus;
      exit;
   end;

   xSQL := 'select count(ASOID) ASOCIADOS from APO201 ';
   xWhere := '';
   If Trim(dblcdAsoTipId.Text) <> '' Then
      xWhere := ' where ASOTIPID = ' + QuotedStr(dblcdAsoTipId.Text);
   If Trim(dblcdDptoId.Text) <> '' Then
   begin
      if length(xWhere)>0 then
         xWhere := xWhere + ' and '
      else
         xWhere := 'where ';
      xWhere := xWhere + 'SUBSTR(ZIPID,1,2) = ' + QuotedStr(dblcdDptoId.Text);
   end;
   xSQL := xSQL + xWhere;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   if DM1.cdsQry.FieldByName('ASOCIADOS').AsInteger > 65000 then
   begin
      ShowMessage('El universo filtrado contiene un número muy grande de asociados, escoja un filtro mas apropiado');
      dblcdAsoTipId.SetFocus;
      exit;
   end;

   Screen.Cursor := crHourGlass;
   xSQL := 'SELECT ASOTIPID, ASODNI, ASOAPENOMDNI, DIR_CAS, DEP_CAS, PRO_CAS, DIS_CAS, '
         + '       case when NOMCENEDU is null then ASODESLAB else NOMCENEDU end ASODESLAB, '
         + '       USENOM,'
         + '       CASE WHEN DIR_COL IS NOT NULL THEN DIR_COL ELSE DIR_COL_ASO END DIR_COL,'
         + '       CASE WHEN DIR_COL IS NOT NULL THEN DEP_COL ELSE DEP_COL_ASO END DEP_COL,'
         + '       CASE WHEN DIR_COL IS NOT NULL THEN PRO_COL ELSE PRO_COL_ASO END PRO_COL,'
         + '       CASE WHEN DIR_COL IS NOT NULL THEN DIS_COL ELSE DIS_COL_ASO END DIS_COL,'
         + '       ZIPID, UBIGEO_DIR, ASODSTLABID '
         + 'FROM (SELECT A.ASOTIPID, A.ASODNI, A.ASOAPENOMDNI, A.ASODESLAB, E.NOMCENEDU, L.USENOM, A.ASODIR DIR_CAS, '
         + '             B.DPTODES DEP_CAS, C.CIUDDES PRO_CAS, D.ZIPDES DIS_CAS,'
         + '             E.DIREC DIR_COL, F.DPTODES DEP_COL, G.CIUDDES PRO_COL, H.ZIPDES DIS_COL, '
         + '             A.ASODIRLAB DIR_COL_ASO, I.DPTODES DEP_COL_ASO, J.CIUDDES PRO_COL_ASO, '
         + '             K.ZIPDES DIS_COL_ASO, A.ZIPID, E.UBIGEO_DIR, A.ASODSTLABID '
         + '      FROM APO201 A, APO158 B, APO123 C, APO122 D, ASO_CEN_EDU E, APO158 F, '
         + '           APO123 G, APO122 H, APO158 I, APO123 J, APO122 K, APO101 L '
         + '      WHERE SUBSTR(A.ASODSTLABID,1,2) = B.DPTOID(+) AND SUBSTR(A.ASODSTLABID,1,4) = C.CIUDID(+) '
         + '        AND A.ASODSTLABID = D.ZIPID(+) AND A.CENEDUID = E.CENEDUID(+) '
         + '        AND SUBSTR(E.UBIGEO_DIR,1,2) = F.DPTOID(+) AND SUBSTR(E.UBIGEO_DIR,1,4) = G.CIUDID(+) '
         + '        AND E.UBIGEO_DIR = H.ZIPID(+) AND SUBSTR(A.ZIPID,1,2) = I.DPTOID(+) '
         + '        AND SUBSTR(A.ZIPID,1,4) = J.CIUDID(+) AND A.ZIPID = K.ZIPID(+) '
  // inicio: HPP_201003_ASO
  // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Modificaciones por Fallecimiento del asociado
//         + '        AND A.UPROID = L.UPROID(+) AND A.UPAGOID = L.UPAGOID(+) AND A.USEID = L.USEID(+)';
         + '        AND A.UPROID = L.UPROID(+) AND A.UPAGOID = L.UPAGOID(+) AND A.USEID = L.USEID(+)'
         + '        AND NVL(A.FALLECIDO,''N'') = ''N'' ';
  // Fin: HPP_201003_ASO
   If Trim(dblcdAsoTipId.Text) <> '' Then
      xSql := xSql + ' AND ASOTIPID = ' + QuotedStr(dblcdAsoTipId.Text);
   If Trim(dblcdDptoId.Text) <> '' Then
   Begin
      If rgTipDep.ItemIndex = -1 Then
      Begin
         MessageDlg(' Seleccione el tipo de Filtro ', mtInformation, [mbOK], 0);
         rgTipDep.SetFocus;
         Exit;
      End;

   // si es Domiciliario (0) se muestra el departamento domiciliario
      If rgTipDep.ItemIndex = 0 Then
         xSql := xSql+' AND SUBSTR(A.ZIPID,1,2) = ' + QuotedStr(dblcdDptoId.Text)
      Else
         xSql := xSql+' AND ((E.UBIGEO_DIR IS NOT NULL AND SUBSTR(E.UBIGEO_DIR,1,2) = '+QuotedStr(dblcdDptoId.Text)+') '
                       +' OR (E.UBIGEO_DIR IS NULL AND SUBSTR(A.ASODSTLABID,1,2) = '+QuotedStr(dblcdDptoId.Text)+ '))';
   End;
   xSql := xSql + ')';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSQL);
   DM1.cdsReporte.Open;
   if rgOrden.ItemIndex=0 then
      DM1.cdsReporte.IndexFieldNames := 'ASOAPENOMDNI'
   else if rgOrden.ItemIndex=1 then
           DM1.cdsReporte.IndexFieldNames := 'ASODNI'
        else
           DM1.cdsReporte.IndexFieldNames := 'ASODESLAB';

   lblNroRegEncontrados.Caption := FloatToStr(DM1.cdsReporte.RecordCount) + ' Registros encontrados';

   dbgreporte.Selected.Clear;
   dbgreporte.Selected.Add('ASOTIPID'#9'8'#9'Tipo~Asociado'#9#9);
   dbgreporte.Selected.Add('ASODNI'#9'8'#9'D.N.I.'#9#9);
   dbgreporte.Selected.Add('ASOAPENOMDNI'#9'70'#9'Apellidos~y Nombre(s)'#9#9);
   dbgreporte.Selected.Add('DIR_CAS'#9'120'#9'Dirección~Domiciliaria'#9#9);
   dbgreporte.Selected.Add('DEP_CAS'#9'25'#9'Departamento~domicilio'#9#9);
   dbgreporte.Selected.Add('PRO_CAS'#9'25'#9'Provincia~domicilio'#9#9);
   dbgreporte.Selected.Add('DIS_CAS'#9'25'#9'Distrito~domicilio'#9#9);
   dbgreporte.Selected.Add('ASODESLAB'#9'40'#9'Nombre del~Colegio'#9#9);
   dbgreporte.Selected.Add('USENOM'#9'35'#9'Nombre de la~Ugel'#9#9);
   dbgreporte.Selected.Add('DIR_COL'#9'120'#9'Dirección del~Colegio'#9#9);
   dbgreporte.Selected.Add('DEP_COL'#9'25'#9'Departamento~colegio'#9#9);
   dbgreporte.Selected.Add('PRO_COL'#9'25'#9'Provincia~Colegio'#9#9);
   dbgreporte.Selected.Add('DIS_COL'#9'25'#9'Distrito~Colegio'#9#9);
   dbgreporte.ApplySelected;
   Screen.Cursor := crDefault;
End;

Procedure TFDocCon.dblcdAsoTipIdExit(Sender: TObject);
Begin
   If Trim(dblcdAsoTipId.Text) <> '' Then
   Begin
      If DM1.cdsTAso.Locate('ASOTIPID', dblcdAsoTipId.Text, []) Then
         edtTipAso.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').AsString
      Else
      Begin
         dblcdAsoTipId.Text := '';
         edtTipAso.Text := '';
      End;
      lblFiltrarPor.Visible := False;
      rgTipDep.Visible := False;
   End;
End;

Procedure TFDocCon.dblcdDptoIdExit(Sender: TObject);
Begin
   If Trim(dblcdAsoTipId.Text) <> '' Then
   Begin
      If DM1.cdsDpto.Locate('DPTOID', dblcdDptoId.Text, []) Then
      begin
         edtDesDep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
         lblFiltrarPor.Visible := True;
         rgTipDep.Visible := True;
      end
      Else
      Begin
         dblcdDptoId.Text := '';
         edtDesDep.Text := '';
         lblFiltrarPor.Visible := False;
         rgTipDep.Visible := False;
      End;
   End;
End;

Procedure TFDocCon.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

procedure TFDocCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // inicio: HPP_201003_ASO
  // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// se cierra cds abiertos en la forma
// se detectó en pruebas integrales
   DM1.cdsTAso.Close;
   DM1.cdsTAso.Filter:='';
   DM1.cdsTAso.Filtered:=False;
   DM1.cdsTAso.IndexFieldNames:='';

   DM1.cdsDpto.Close;
   DM1.cdsDpto.Filter:='';
   DM1.cdsDpto.Filtered:=False;
   DM1.cdsDpto.IndexFieldNames:='';

   DM1.cdsQry.Close;
   DM1.cdsQry.Filter:='';
   DM1.cdsQry.Filtered:=False;
   DM1.cdsQry.IndexFieldNames:='';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';

   Action := caFree;
  // Fin: HPP_201003_ASO
end;

procedure TFDocCon.rgOrdenClick(Sender: TObject);
begin
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// se pregunta para ver si el archivo está o no abierto
   if DM1.cdsReporte.Active then
// fin: HPP_201003_ASO
   begin
      if rgOrden.ItemIndex=0 then
         DM1.cdsReporte.IndexFieldNames := 'ASOAPENOMDNI'
      else if rgOrden.ItemIndex=1 then
              DM1.cdsReporte.IndexFieldNames := 'ASODNI'
           else
              DM1.cdsReporte.IndexFieldNames := 'ASODESLAB';
      DM1.cdsReporte.First;
   end;
end;

procedure TFDocCon.rgTipDepClick(Sender: TObject);
begin
   DM1.cdsReporte.Close;
end;

End.

