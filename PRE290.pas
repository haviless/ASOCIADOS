// Inicio Uso Estándares   :  01/08/2011
// Unidad		          :  PRE290.pas
// Formulario		      :  FRptPagBenXTipo
// Fecha de Creación	   :  15/12/1993
// Autor			       :  Equipo de Desarrollo de Sistemas DM
// Objetivo		        :  Menú Principal del Módulo de Asociados

// Actualizaciones:
// HPC_201119_ASO    Copia del módulo de Previsión. Se utilizará en Campañas en el interior del País
// HPP_201109_ASO  : Se realiza el pase a producción a partir del pase HPC_201119_ASO

unit PRE290;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ppEndUsr, ppDB, ppDBPipe,
  ppParameter, ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, ImgList, Wwdbigrd, Wwdbgrid, Grids, DBGrids,
  ComCtrls,DB,DBClient,StrUtils;

type
  TFRptPagBenXTipo = class(TForm)
    pInferior: TPanel;
    lblNroRegEncontrados: TLabel;
    btnAExcel: TBitBtn;
    btnCerrar: TBitBtn;
    btnPrint: TBitBtn;
    Panel1: TPanel;
    dtgData: TDBGrid;
    dbgPrevio: TwwDBGrid;
    imgLstGrid: TImageList;
    btnProcesar: TBitBtn;
    dtpInicio: TDateTimePicker;
    Label1: TLabel;
    dtpFin: TDateTimePicker;
    Label2: TLabel;
    ppDesignerRun: TppDesigner;
    ppPrevio: TppReport;
    ppParameterList1: TppParameterList;
    ppDBConexion: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppShape9: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
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
    ppLabel10: TppLabel;
    ppLabel19: TppLabel;
    ppLblPeriodo: TppLabel;
    ppShape3: TppShape;
    ppLabel1: TppLabel;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppShape10: TppShape;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel9: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText1: TppDBText;
    ppDBText8: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel8: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine3: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText7: TppDBText;
    ppLine2: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel7: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine1: TppLine;
    ppLine4: TppLine;
    procedure btnAExcelClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure btnProcesarClick(Sender: TObject);
    procedure dbgPrevioCalcTitleImage(Sender: TObject;
      Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
    procedure dbgPrevioTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormActivate(Sender: TObject);
  private
    xFInicio,xFFin: string;
    procedure DoSorting(cdsName: TClientDataset; AFieldName: String);

  public
    { Public declarations }
  end;

var
  FRptPagBenXTipo: TFRptPagBenXTipo;

implementation

uses ASODM;

{$R *.dfm}

procedure TFRptPagBenXTipo.btnProcesarClick(Sender: TObject);
  {----------------------------------------------------}
  function isFechasValidas():boolean;
    begin
      result:= not ((trim(datetostr(dtpInicio.Date))='') or (trim(datetostr(dtpFin.Date))=''));
    end;
  {----------------------------------------------------}
  procedure calcularTotales;
  var xTotCantRet,xTotMontoRet,
      xTotCantFal,xTotMontoFal,
      xTotCantInv,xTotMontoInv,
      xNroRegistros:Double;
  begin
     xTotCantRet:=0;
     xTotMontoRet:=0;
     xTotCantFal:=0;
     xTotMontoFal:=0;
     xTotCantInv:=0;
     xTotMontoInv:=0;
     xNroRegistros:=0;
     if DM1.cdsQry6.Active then
       begin
       DM1.cdsQry6.First;
         While not DM1.cdsQry6.Eof Do
           Begin
             xTotCantRet:=xTotCantRet+DM1.cdsQry6.FieldByName('CAN_RET').AsFloat;
             xTotMontoRet:=xTotMontoRet+DM1.cdsQry6.FieldByName('MON_RET').AsFloat;
             xTotCantFal:=xTotCantFal+DM1.cdsQry6.FieldByName('CAN_FAL').AsFloat;
             xTotMontoFal:=xTotMontoFal+DM1.cdsQry6.FieldByName('MON_FAL').AsFloat;
             xTotCantInv:=xTotCantInv+DM1.cdsQry6.FieldByName('CAN_INV').AsFloat;
             xTotMontoInv:=xTotMontoInv+DM1.cdsQry6.FieldByName('MON_INV').AsFloat;
             xNroRegistros:=xNroRegistros+1;
             DM1.cdsQry6.Next;
           End;
         self.lblNroRegEncontrados.Caption:=FloatToStr(xNroRegistros)+' Registros encontrados '
                                            + 'del '+datetostr(dtpInicio.Date)+' a '+ datetostr(dtpFin.Date);

         dbgPrevio.Selected.Clear;
         dbgPrevio.Selected.Add('DPTODES'#9'18'#9'Departamento'#9);
         dbgPrevio.Selected.Add('USENOM'#9'32'#9'UGEL'#9);
         dbgPrevio.Selected.Add('CAN_RET'#9'12'#9'Cant'#9'F'#9'Retiro');
         dbgPrevio.Selected.Add('MON_RET'#9'10'#9'Beneficio'#9'F'#9'Retiro');
         dbgPrevio.Selected.Add('CAN_FAL'#9'12'#9'Cant'#9'F'#9'Fallecimiento');
         dbgPrevio.Selected.Add('MON_FAL'#9'10'#9'Beneficio'#9'F'#9'Fallecimiento');
         dbgPrevio.Selected.Add('CAN_INV'#9'12'#9'Cant'#9'F'#9'Invalidez');
         dbgPrevio.Selected.Add('MON_INV'#9'10'#9'Beneficio'#9'F'#9'Invalidez');


         dbgPrevio.ApplySelected;
         TNumericField(DM1.cdsQry6.FieldByName('CAN_RET')).DisplayFormat := '###,###,##0';
         TNumericField(DM1.cdsQry6.FieldByName('MON_RET')).DisplayFormat := '###,###,##0.00';
         TNumericField(DM1.cdsQry6.FieldByName('CAN_FAL')).DisplayFormat := '###,###,##0';
         TNumericField(DM1.cdsQry6.FieldByName('MON_FAL')).DisplayFormat := '###,###,##0.00';
         TNumericField(DM1.cdsQry6.FieldByName('CAN_INV')).DisplayFormat := '###,###,##0';
         TNumericField(DM1.cdsQry6.FieldByName('MON_INV')).DisplayFormat := '###,###,##0.00';


         dbgPrevio.ColumnByName('DPTODES').FooterValue := 'TOTAL';
         dbgPrevio.ColumnByName('CAN_RET').FooterValue := FloatTostrf(xTotCantRet,ffnumber,15,0);
         dbgPrevio.ColumnByName('MON_RET').FooterValue := FloatTostrf(xTotMontoRet,ffnumber,15,2);
         dbgPrevio.ColumnByName('CAN_FAL').FooterValue := FloatTostrf(xTotCantFal,ffnumber,15,0);
         dbgPrevio.ColumnByName('MON_FAL').FooterValue := FloatTostrf(xTotMontoFal,ffnumber,15,2);
         dbgPrevio.ColumnByName('CAN_INV').FooterValue := FloatTostrf(xTotCantInv,ffnumber,15,0);
         dbgPrevio.ColumnByName('MON_INV').FooterValue := FloatTostrf(xTotMontoInv,ffnumber,15,2);

         dbgPrevio.RefreshDisplay;
         DM1.cdsQry6.First;
       end;
  end;
  {----------------------------------------------------}
  procedure generarDxs();
  var xSQL: String;
  begin
      xFInicio:=datetostr(dtpInicio.Date);
      xFFin:=datetostr(dtpFin.Date);
      XSQL:='SELECT CASE WHEN DPTOID  IS NULL THEN ''99'' ELSE DPTOID END DPTOID, '
           +'       CASE WHEN DPTODES IS NULL THEN ''POR IDENTIFICAR'' ELSE DPTODES END DPTODES, '
           +'       CASE WHEN USEID   IS NULL THEN ''99'' ELSE USEID END USEID, '
           +'       CASE WHEN USENOM  IS NULL THEN ''POR IDENTIFICAR'' ELSE USENOM END USENOM, '
           +'       SUM(NVL(CAN_RET,0)) CAN_RET, SUM(NVL(MON_RET,0)) MON_RET, '
           +'       SUM(NVL(CAN_FAL,0)) CAN_FAL, SUM(NVL(MON_FAL,0)) MON_FAL,'
           +'       SUM(NVL(CAN_INV,0)) CAN_INV, SUM(NVL(MON_INV,0)) MON_INV '
           +'FROM ( SELECT C.DPTOID, C.DPTODES, '
           +'              B.USEID, B.USENOM, '
           +'              CASE WHEN A.PVSLTIPBE = ''01'' THEN 1 ELSE 0 END CAN_RET, '
           +'              CASE WHEN A.PVSLTIPBE = ''01'' THEN NVL(A.MONLIQBEN,0) ELSE 0 END MON_RET, '
           +'              CASE WHEN A.PVSLTIPBE = ''02'' THEN 1 ELSE 0 END CAN_FAL, '
           +'              CASE WHEN A.PVSLTIPBE = ''02'' THEN NVL(A.MONLIQBEN,0) ELSE 0 END MON_FAL, '
           +'              CASE WHEN A.PVSLTIPBE = ''03'' THEN 1 ELSE 0 END CAN_INV, '
           +'              CASE WHEN A.PVSLTIPBE = ''03'' THEN NVL(A.MONLIQBEN,0) ELSE 0 END MON_INV '
           +'       FROM PVS306 A, APO101 B, APO158 C '
           +'       WHERE TO_DATE(A.PVSLFECBE) >= '+QuotedStr(xFInicio)
           +'         AND TO_DATE(A.PVSLFECBE) <= '+QuotedStr(xFFin)
           +'         AND PVSESTLIQ IN (''02'', ''05'', ''06'') AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) '
           +'         AND A.USEID = B.USEID(+) AND B.DPTOID = C.DPTOID(+) '
           +'      ) '
           +'GROUP BY DPTOID, DPTODES, USEID, USENOM '
           +'ORDER BY DPTOID, USEID';

      DM1.cdsQry6.Close;
      DM1.cdsQry6.DataRequest(xSql);
      DM1.cdsQry6.Open;
      //excel
      DM1.cdsQry5.Close;
      DM1.cdsQry5.DataRequest(XSQL);
      DM1.cdsQry5.Open;
  end;
  {----------------------------------------------------}
  procedure agrupar(Sender: TObject;IField:string);
    begin
      (Sender as TwwDBGrid).GroupFieldName:= IField;
      (Sender as TwwDBGrid).Datasource.Dataset.FieldByName(IField).Index := 0;
      DoSorting(TClientDataset((Sender as TwwDBGrid).Datasource.Dataset), IField);
      (Sender as TwwDBGrid).Invalidate;
    end;
  {----------------------------------------------------}
begin
  if isFechasValidas() then
    begin
      Screen.Cursor:= crHourGlass;
      generarDxs();
      calcularTotales();
      agrupar(dbgPrevio,'DPTODES');
      btnAExcel.Enabled:=true;
      btnPrint.Enabled:=true;
      Screen.Cursor:= crDefault;
    end
  else
    showmessage('Por favor seleccione fechas validas');
end;

(******************************************************************************)

procedure TFRptPagBenXTipo.DoSorting(cdsName:TClientDataset; AFieldName: String);
const
  NONSORTABLE: Set of TFieldType=[ftBlob,ftMemo,ftOraBlob,ftOraCLob];
begin
  with cdsName do
  begin
    if IsEmpty or (FieldByName(AFieldName).DataType in NONSORTABLE) then
      Exit;

    if (IndexFieldNames=AFieldName) then
    begin
       IndexDefs.Update;
       if IndexDefs.IndexOf('w2wTempIndex')>-1  then
       begin
         DeleteIndex('w2wTempIndex');
         IndexDefs.Update;
       end;
       AddIndex('w2wTempIndex',AFieldName,[ixDescending,ixCaseInsensitive],'','',0);
       IndexName:='w2wTempIndex';
    end
    else
    begin
       IndexFieldNames := AFieldName;
    end;
  end;
end;

(******************************************************************************)

procedure TFRptPagBenXTipo.dbgPrevioTitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
  DoSorting(TClientDataset((Sender as TwwDBGrid).Datasource.Dataset),AFieldName);
end;

(******************************************************************************)

procedure TFRptPagBenXTipo.FormActivate(Sender: TObject);
var cadFecha:Double;
begin
     cadFecha:=DM1.FechaSys;
     dtpInicio.date:=cadFecha;
     dtpFin.date:=cadFecha;
     DM1.cdsQry5.Close;
     DM1.cdsQry6.Close;
end;

(******************************************************************************)

procedure TFRptPagBenXTipo.dbgPrevioCalcTitleImage(Sender: TObject;
  Field: TField; var TitleImageAttributes: TwwTitleImageAttributes);
begin
  with (Sender as TwwDBGrid) do
  if Field.FieldName=TClientDataset(Datasource.Dataset).indexfieldnames then
  begin
    TitleImageAttributes.ImageIndex := 0;
  end
  else if TClientDataset(Datasource.Dataset).indexname = 'w2wTempIndex' then
  begin
     TClientDataset(Datasource.Dataset).indexdefs.Update;
     if TClientDataset(Datasource.Dataset).indexdefs.Find('w2wTempIndex').Fields = Field.Fieldname then
       TitleImageAttributes.ImageIndex := 1;
  end;
end;

(******************************************************************************)

procedure TFRptPagBenXTipo.btnAExcelClick(Sender: TObject);
  function fechaCadena(cad:string):string;
  begin
    result:= MidStr(cad,7,4)+MidStr(cad,4,2)+MidStr(cad,1,2)
  end;
begin
   DM1.HojaExcel(fechaCadena(xFInicio)+'-'+fechaCadena(xFFin),dtgData.DataSource, dtgData);
end;

(******************************************************************************)

procedure TFRptPagBenXTipo.btnPrintClick(Sender: TObject);
begin
   ppLblPeriodo.Caption:='( '+xFInicio+' A '+xFFin+' )';
   If DM1.cdsQry5.RecordCount > 0 Then
      Begin
        // para diseñar en tiempo de ejecucion
        //  ppdesignerRun.Report := ppPrevio;
        //  ppdesignerRun.Show;

        // para presentar
        ppPrevio.Print;
        ppPrevio.stop;
      End;
end;

(******************************************************************************)

end.
