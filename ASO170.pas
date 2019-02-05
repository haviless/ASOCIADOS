unit ASO170;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DBGrids, ppDB,
  ppDBPipe, ppBands, ppCtrls, ppClass, ppVar, ppPrnabl, ppCache, ppComm,
  // inicio: HPP_201003_ASO
  // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
  ppRelatv, ppProd, ppReport, Db, ppEndUsr, ppParameter;
  // Fin: HPP_201003_ASO

type
  TfEstDepSex = class(TForm)
    BitSalir: TBitBtn;
    dtgEstDepSex: TwwDBGrid;
    BitImprimir: TBitBtn;
    BitExcel: TBitBtn;
    dtgData: TDBGrid;
    Reporte: TppReport;
    // inicio: HPP_201003_ASO
    // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
    ppDBPipeline5: TppDBPipeline;
    ppParameterList1: TppParameterList;
    // Fin: HPP_201003_ASO
    ppHeaderBand16: TppHeaderBand;
    ppLabel347: TppLabel;
    ppLabel349: TppLabel;
    ppLabel351: TppLabel;
    ppLabel353: TppLabel;
    ppLabel354: TppLabel;
    ppLabel355: TppLabel;
    ppSystemVariable46: TppSystemVariable;
    ppSystemVariable47: TppSystemVariable;
    ppSystemVariable48: TppSystemVariable;
    ppLabel356: TppLabel;
    ppLabel357: TppLabel;
    ppLabel358: TppLabel;
    xTit01: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppDBText133: TppDBText;
    ppDBText136: TppDBText;
    ppDBText138: TppDBText;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppDBText137: TppDBText;
    ppDBText139: TppDBText;
    ppDBText140: TppDBText;
    ppDBText118: TppDBText;
    ppFooterBand16: TppFooterBand;
    // inicio: HPP_201003_ASO
    // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
    ppLabel1: TppLabel;
    // Fin: HPP_201003_ASO
    ppSummaryBand16: TppSummaryBand;
    ppLine4: TppLine;
    ppLabel379: TppLabel;
    ppDBCalc121: TppDBCalc;
    ppDBCalc123: TppDBCalc;
    ppLine56: TppLine;
    ppDBCalc122: TppDBCalc;
    ppDBCalc124: TppDBCalc;
    ppDBCalc125: TppDBCalc;
    ppDBCalc126: TppDBCalc;
    ppDBCalc127: TppDBCalc;
    ppDBCalc128: TppDBCalc;
    ppDBCalc129: TppDBCalc;
    ppGroup13: TppGroup;
    ppGroupHeaderBand13: TppGroupHeaderBand;
    ppShape45: TppShape;
    ppShape44: TppShape;
    ppShape43: TppShape;
    ppShape42: TppShape;
    ppShape41: TppShape;
    ppDBText144: TppDBText;
    ppLabel365: TppLabel;
    ppLabel381: TppLabel;
    ppLabel382: TppLabel;
    ppLabel383: TppLabel;
    ppLabel384: TppLabel;
    ppLabel385: TppLabel;
    ppLabel386: TppLabel;
    ppLabel387: TppLabel;
    ppLabel388: TppLabel;
    ppLabel389: TppLabel;
    ppLabel390: TppLabel;
    ppLabel391: TppLabel;
    ppLabel360: TppLabel;
    ppGroupFooterBand13: TppGroupFooterBand;
    ppDBCalc130: TppDBCalc;
    ppDBCalc131: TppDBCalc;
    ppDBCalc132: TppDBCalc;
    ppDBCalc133: TppDBCalc;
    ppDBCalc134: TppDBCalc;
    ppDBCalc135: TppDBCalc;
    ppDBCalc136: TppDBCalc;
    ppDBCalc137: TppDBCalc;
    ppDBCalc138: TppDBCalc;
    ppLabel380: TppLabel;
    ppLine65: TppLine;
    ppLine67: TppLine;
    // inicio: HPP_201003_ASO
    // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
    //ppDBPipeline5: TppDBPipeline;
    // Fin: HPP_201003_ASO
    procedure BitSalirClick(Sender: TObject);
    procedure BitExcelClick(Sender: TObject);
    procedure BitImprimirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgEstDepSexDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEstDepSex: TfEstDepSex;

implementation

uses ASODM;

{$R *.dfm}

procedure TfEstDepSex.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfEstDepSex.BitExcelClick(Sender: TObject);
begin
  If DM1.cdsSobrino.RecordCount > 0 Then
      Begin
        dtgData.DataSource := DM1.dsSobrino;
        DM1.HojaExcel('Resumen',DM1.dsSobrino, dtgData);
      End;

end;

procedure TfEstDepSex.BitImprimirClick(Sender: TObject);
begin
If DM1.cdsSobrino.RecordCount > 0 Then
   Begin
      xTit01.Caption:='INFORMACION PROCESADA AL : '+DM1.UltProceso; Screen.Cursor:=crDefault;
      Reporte.Print;
      Reporte.Cancel;
   End;

end;

procedure TfEstDepSex.FormActivate(Sender: TObject);
var xProblacion:Integer;
    xAtM,xAtF,xAtS,xAtT:Integer;
    xNaM,xNaF,xNaS,xNaT:Integer;
begin

    xProblacion:=0;xAtM:=0;xAtF:=0;xAtS:=0;xAtT:=0;
    xNaM:=0;xNaF:=0;xNaS:=0;xNaT:=0;
   DM1.cdsSobrino.First;
   While Not DM1.cdsSobrino.Eof Do
   Begin
       xProblacion:= xProblacion +  DM1.cdsSobrino.FieldByName('POBLACION').AsInteger;
       xAtM:= xAtM + DM1.cdsSobrino.FieldByName('NUMMAS_A').AsInteger;
       xAtF:= xAtF + DM1.cdsSobrino.FieldByName('NUMFEM_A').AsInteger;
       xAtS:= xAtS + DM1.cdsSobrino.FieldByName('NUMSIF_A').AsInteger;
       xAtT:= xAtT + DM1.cdsSobrino.FieldByName('TOTAL_A').AsInteger;
       xNaM:= xNaM + DM1.cdsSobrino.FieldByName('NUMMAS_N').AsInteger;
       xNaF:= xNaF + DM1.cdsSobrino.FieldByName('NUMFEM_N').AsInteger;
       xNaS:= xNaS + DM1.cdsSobrino.FieldByName('NUMSIF_N').AsInteger;
       xNaT:= xNaT + DM1.cdsSobrino.FieldByName('TOTAL_N').AsInteger;
       DM1.cdsSobrino.Next;
   End;
   dtgEstDepSex.ColumnByName('USENOM').FooterValue :='Totales';
   dtgEstDepSex.ColumnByName('POBLACION').FooterValue := FloatToStrF(xProblacion,ffNumber, 10, 0);
   dtgEstDepSex.ColumnByName('NUMMAS_A').FooterValue := FloatToStrF(xAtM,ffNumber, 10, 0);
   dtgEstDepSex.ColumnByName('NUMFEM_A').FooterValue := FloatToStrF(xAtF,ffNumber, 10, 0);
   dtgEstDepSex.ColumnByName('NUMSIF_A').FooterValue := FloatToStrF(xAtS,ffNumber, 10, 0);
   dtgEstDepSex.ColumnByName('TOTAL_A').FooterValue := FloatToStrF(xAtT,ffNumber, 10, 0);

   dtgEstDepSex.ColumnByName('NUMMAS_N').FooterValue := FloatToStrF(xNaM,ffNumber, 10, 0);
   dtgEstDepSex.ColumnByName('NUMFEM_N').FooterValue := FloatToStrF(xNaF,ffNumber, 10, 0);
   dtgEstDepSex.ColumnByName('NUMSIF_N').FooterValue := FloatToStrF(xNaS,ffNumber, 10, 0);
   dtgEstDepSex.ColumnByName('TOTAL_N').FooterValue := FloatToStrF(xNaT,ffNumber, 10, 0);



end;

procedure TfEstDepSex.dtgEstDepSexDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 If (Field.FieldName = 'DPTODES') Then
     Begin
        dtgEstDepSex.Canvas.Font.Color := clRed;
        dtgEstDepSex.DefaultDrawDataCell(rect,Field,State);
     End;

 If (Field.FieldName = 'USENOM') Then
     Begin
        dtgEstDepSex.Canvas.Font.Color := clGreen;
        dtgEstDepSex.DefaultDrawDataCell(rect,Field,State);
     End;
end;

end.
