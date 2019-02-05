// Inicio Uso Estándares   :	01/08/2011
// Unidad		            :	COB515.pas
// Formulario		         :	FRepSegundaVez
// Fecha de Creación	      :	17/06/2011
// Autor			            :	Daniel Fernández
// Objetivo		            :  Reporte de Descuentos por Segunda Vez

// Actualizaciones:
// HPC_201108_ASO          : 17/06/2011 Inicio de la unidad.
// HPP_201106_ASO          : 17/08/2011 Pase a Producción.

Unit ASO515;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Wwdbigrd, Wwdbgrid, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,
   wwdbdatetimepicker, Mask, wwdblook, Wwdbdlg, ppEndUsr, ppParameter,
   ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport,
   ppComm, ppRelatv, ppDB, ppDBPipe;

Type
   TFRepSegundaVez = Class(TForm)
      bitProcesar: TBitBtn;
      BitSalir: TBitBtn;
      BitPrint: TBitBtn;
      BitExporta: TBitBtn;
      dtgData: TDBGrid;
      dbgResultados: TwwDBGrid;
      grpFechaAut: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      dtFecDesde: TwwDBDateTimePicker;
      dtFecHasta: TwwDBDateTimePicker;
      grpOfides: TGroupBox;
      dblOfides: TwwDBLookupComboDlg;
      dbeOfides: TMaskEdit;
      ppDBPipeline1: TppDBPipeline;
      ppReport1: TppReport;
      ppParameterList1: TppParameterList;
      ppDesigner1: TppDesigner;
      grpUsuario: TGroupBox;
      dblUsuario: TwwDBLookupComboDlg;
      dbeUsuario: TMaskEdit;
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
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppDBText2: TppDBText;
      ppDBText3: TppDBText;
      ppDBText4: TppDBText;
      ppDBText5: TppDBText;
      ppDBText6: TppDBText;
      ppDBText7: TppDBText;
      ppFooterBand1: TppFooterBand;
      ppGroup1: TppGroup;
      ppGroupHeaderBand1: TppGroupHeaderBand;
      ppDBText8: TppDBText;
      ppLabel6: TppLabel;
      ppGroupFooterBand1: TppGroupFooterBand;
      Procedure FormActivate(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure dblOfidesChange(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure bitProcesarClick(Sender: TObject);
      Procedure dbgResultadosTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure BitExportaClick(Sender: TObject);
      Procedure BitPrintClick(Sender: TObject);
      Procedure dblUsuarioChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
   Private
    { Private declarations }
   Public
    { Public declarations }
      Procedure CargarOfides;
      Procedure CargarUsuarios;
      Procedure LimpiarPantalla;
      Procedure Buscar;
   End;

Var
   FRepSegundaVez: TFRepSegundaVez;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure TFRepSegundaVez.FormCreate(Sender: TObject);
Begin
   dtFecHasta.Date := DM1.FechaSys;
End;

Procedure TFRepSegundaVez.FormActivate(Sender: TObject);
Var
   xAno, xMes, xDia: word;
Begin
   decodedate(DM1.FechaSys, xAno, xMes, xDia);
   dtFecDesde.Date := StrToDate('01/' + inttostr(xMes) + '/' + inttostr(xAno));
   dtFecHasta.Date := DM1.FechaSys;
   CargarOfides;
   CargarUsuarios;
   LimpiarPantalla;
End;

Procedure TFRepSegundaVez.CargarOfides;
Var
   xSql: String;
Begin
   Try
      Screen.Cursor := crHourGlass;

      xSql := 'SELECT OFDESID, OFDESNOM FROM APO110 ORDER BY OFDESNOM';

      DM1.cdsOfdes.Close;
      DM1.cdsOfdes.DataRequest(xSql);
      DM1.cdsOfdes.Open;

      dblOfides.Selected.Clear;
      dblOfides.Selected.Add('OFDESID'#9'3'#9'ID'#9'F'#9);
      dblOfides.Selected.Add('OFDESNOM'#9'30'#9'Ofides'#9'F'#9);
   Finally
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFRepSegundaVez.CargarUsuarios;
Var
   xSql: String;
Begin
   Try
      Screen.Cursor := crHourGlass;

      xSql := 'SELECT DISTINCT AUT.USUREG USERID, U.USERNOM'
         + ' FROM'
         + '     APOSINCARTA AUT'
         + '         INNER JOIN'
         + '     APO201 ASO ON'
         + '     AUT.ASOID = ASO.ASOID'
         + '         INNER JOIN'
         + '     TGE006 U ON'
         + '     AUT.USUREG = U.USERID'
         + ' WHERE'
         + '     AUT.AUTODESC = ''N''';

      If Trim(dblOfides.Text) <> '' Then
      Begin
         xSql := xSql + '     AND AUT.OFDESID = ' + Trim(dblOfides.Text)
      End;

      xSql := xSql + '     AND TRUNC(AUT.FECREG) BETWEEN ' + QuotedStr(Trim(dtFecDesde.Text)) + ' AND ' + QuotedStr(Trim(dtFecHasta.Text))
         + ' ORDER BY U.USERNOM';

      DM1.cdsUser.Close;
      DM1.cdsUser.DataRequest(xSql);
      DM1.cdsUser.Open;

      dblUsuario.Selected.Clear;
      dblUsuario.Selected.Add('USERID'#9'3'#9'Código'#9'F'#9);
      dblUsuario.Selected.Add('USERNOM'#9'30'#9'Usuario'#9'F'#9);
   Finally
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFRepSegundaVez.LimpiarPantalla;
Var
   xSql: String;
Begin
   Try
      Screen.Cursor := crHourGlass;
      xSql := 'SELECT ROWNUM, ASO.ASOCODMOD, ASO.ASODNI, ASO.ASOAPENOMDNI, AUT.FECREG, AUT.USUREG, OFI.OFDESNOM, UG.USENOM'
         + ' FROM'
         + '     APOSINCARTA AUT'
         + '         LEFT JOIN'
         + '     APO201 ASO ON'
         + '     AUT.ASOID = ASO.ASOID'
         + '         INNER JOIN'
         + '     APO110 OFI ON'
         + '     AUT.OFDESID = OFI.OFDESID'
         + '         INNER JOIN'
         + '     APO101 UG ON'
         + '     ASO.UPROID = UG.UPROID'
         + '     AND ASO.UPAGOID = UG.UPAGOID'
         + '     AND ASO.USEID = UG.USEID'
         + ' WHERE 1 = 2';

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      dbgResultados.Selected.Clear;
      dbgResultados.Selected.Add('ROWNUM'#9'6'#9'Nº'#9'F'#9);
      dbgResultados.Selected.Add('OFDESNOM'#9'20'#9'Ofides'#9'F'#9);
      dbgResultados.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.'#9'F'#9);
      dbgResultados.Selected.Add('ASODNI'#9'10'#9'D.N.I.'#9'F'#9);
      dbgResultados.Selected.Add('ASOAPENOMDNI'#9'40'#9'Apellidos y Nombres DNI'#9'F'#9);
      dbgResultados.Selected.Add('USENOM'#9'20'#9'Ugel'#9'F'#9);
      dbgResultados.Selected.Add('USUREG'#9'20'#9'Usuario'#9'F'#9);
      dbgResultados.Selected.Add('FECREG'#9'10'#9'Fec.Reg.'#9'F'#9);
      dbgResultados.ApplySelected;

      dbgResultados.ColumnByName('OFDESNOM').FooterValue := '0 registro(s)';
   Finally
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFRepSegundaVez.dblOfidesChange(Sender: TObject);
Begin
   If DM1.cdsOfdes.Locate('OFDESID', dblOfides.Text, []) Then
      dbeOfides.Text := DM1.cdsOfdes.FieldByName('OFDESNOM').AsString
   Else
      dbeOfides.Text := '';
   CargarUsuarios;
End;

Procedure TFRepSegundaVez.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFRepSegundaVez.Buscar;
Var
   xSql: String;
Begin
   If Trim(dtFecDesde.Text) = '' Then
   Begin
      MessageDlg('Seleccione la fecha inicial', mtInformation, [mbOk], 0);
      dtFecDesde.SetFocus;
      exit;
   End;
   If Trim(dtFecHasta.Text) = '' Then
   Begin
      MessageDlg('Seleccione la fecha final', mtInformation, [mbOk], 0);
      dtFecHasta.SetFocus;
      exit;
   End;

   Try
      Screen.Cursor := crHourGlass;
      xSql := 'SELECT ROWNUM, ASO.ASOCODMOD, ASO.ASODNI, ASO.ASOAPENOMDNI, AUT.FECREG, AUT.USUREG, OFI.OFDESNOM, UG.USENOM'
         + ' FROM'
         + '     APOSINCARTA AUT'
         + '         LEFT JOIN'
         + '     APO201 ASO ON'
         + '     AUT.ASOID = ASO.ASOID'
         + '         INNER JOIN'
         + '     APO110 OFI ON'
         + '     AUT.OFDESID = OFI.OFDESID'
         + '         INNER JOIN'
         + '     APO101 UG ON'
         + '     ASO.UPROID = UG.UPROID'
         + '     AND ASO.UPAGOID = UG.UPAGOID'
         + '     AND ASO.USEID = UG.USEID'
         + ' WHERE'
         + '     AUT.AUTODESC = ''N'''
         + '     AND TRUNC(AUT.FECREG) BETWEEN ' + QuotedStr(dtFecDesde.Text) + ' AND ' + QuotedStr(dtFecHasta.Text);

      If Trim(dblOfides.Text) <> '' Then
      Begin
         xSql := xSql + '     AND AUT.OFDESID = ' + QuotedStr(dblOfides.Text);
      End;

      If Trim(dblUsuario.Text) <> '' Then
      Begin
         xSql := xSql + '     AND AUT.USUREG = ' + QuotedStr(dblUsuario.Text);
      End;

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;

      dbgResultados.Selected.Clear;
      dbgResultados.Selected.Add('ROWNUM'#9'6'#9'Nº'#9'F'#9);
      dbgResultados.Selected.Add('OFDESNOM'#9'20'#9'Ofides'#9'F'#9);
      dbgResultados.Selected.Add('ASOCODMOD'#9'10'#9'Cod.Mod.'#9'F'#9);
      dbgResultados.Selected.Add('ASODNI'#9'10'#9'D.N.I.'#9'F'#9);
      dbgResultados.Selected.Add('ASOAPENOMDNI'#9'40'#9'Apellidos y Nombres DNI'#9'F'#9);
      dbgResultados.Selected.Add('USENOM'#9'20'#9'Ugel'#9'F'#9);
      dbgResultados.Selected.Add('USUREG'#9'20'#9'Usuario'#9'F'#9);
      dbgResultados.Selected.Add('FECREG'#9'10'#9'Fec.Reg.'#9'F'#9);
      dbgResultados.ApplySelected;

      dbgResultados.ColumnByName('OFDESNOM').FooterValue := IntToStr(DM1.cdsReporte.RecordCount) + ' registro(s)';
   Finally
      Screen.Cursor := crDefault;
   End;
End;

Procedure TFRepSegundaVez.bitProcesarClick(Sender: TObject);
Begin
   Buscar;
End;

Procedure TFRepSegundaVez.dbgResultadosTitleButtonClick(Sender: TObject;
   AFieldName: String);
Begin
   DM1.cdsReporte.IndexFieldNames := AFieldName;
End;

Procedure TFRepSegundaVez.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   DM1.cdsReporte.IndexFieldNames := '';
   DM1.cdsReporte.Close;

   DM1.cdsOfdes.Close;
End;

Procedure TFRepSegundaVez.BitExportaClick(Sender: TObject);
Begin
   Try
      Screen.Cursor := crHourGlass;

      If DM1.cdsReporte.RecordCount > 0 Then
      Begin
         If MessageDlg('¿Desea exportar la información a Excel?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes Then Exit;

         DM1.HojaExcel('Dcto2daVez', DM1.dsReporte, dtgData);
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

Procedure TFRepSegundaVez.BitPrintClick(Sender: TObject);
Begin
   If DM1.cdsReporte.RecordCount <= 0 Then
   Begin
      MessageDlg('No existe información', mtInformation, [mbOk], 0);
      Exit;
   End;

   ppReport1.Print;
   ppReport1.Cancel;

End;

Procedure TFRepSegundaVez.dblUsuarioChange(Sender: TObject);
Begin
   If DM1.cdsUser.Locate('USERID', dblUsuario.Text, []) Then
      dbeUsuario.Text := DM1.cdsUser.FieldByName('USERNOM').AsString
   Else
      dbeUsuario.Text := '';
End;

procedure TFRepSegundaVez.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then
   begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

End.

