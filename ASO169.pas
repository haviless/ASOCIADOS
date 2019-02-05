unit ASO169;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ppDB, ppDBPipe,
  ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv,
  ppProd, ppReport,DB;

type
  TfDetAutDes = class(TForm)
    dtgDetAut01: TwwDBGrid;
    BitSalir: TBitBtn;
    lblDescripcion: TLabel;
    BitPrint: TBitBtn;
    rpResPoblacion: TppReport;
    ppHeaderBand9: TppHeaderBand;
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
    ppDetailBand9: TppDetailBand;
    ppDBText58: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText64: TppDBText;
    ppFooterBand9: TppFooterBand;
    ppSummaryBand9: TppSummaryBand;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    lblPorFin: TppLabel;
    dbResPoblacion: TppDBPipeline;
    Titulo03: TppLabel;
    dbResProduccion: TppDBPipeline;
    rpResProduccion: TppReport;
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
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBCalc1: TppDBCalc;
    xTitulo03: TppLabel;
    sTitulo: TppLabel;
    dtgDetAut02: TwwDBGrid;
    ppDBCalc2: TppDBCalc;
    ppDBText3: TppDBText;
    ppLabel13: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel12: TppLabel;
    ppLabel14: TppLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure dtgDetAut01DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgDetAut01DrawFooterCell(Sender: TObject; Canvas: TCanvas;
      FooterCellRect: TRect; Field: TField; FooterText: String;
      var DefaultDrawing: Boolean);
    procedure dtgDetAut01DrawTitleCell(Sender: TObject; Canvas: TCanvas;
      Field: TField; Rect: TRect; var DefaultDrawing: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDetAutDes: TfDetAutDes;

implementation

uses ASODM, ASO168;

{$R *.dfm}

procedure TfDetAutDes.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfDetAutDes.FormActivate(Sender: TObject);
var xSQL:String;
    xPoblacion,xAutorizaron,xSaldo:Integer;
    xAvance:Real;
begin
   If DM1.sGrid='S' Then
   Begin
       DM1.cdsDetalle.First;
       xPoblacion:=0;xAutorizaron:=0;xAvance:=0;xSaldo:=0;
       While Not DM1.cdsDetalle.Eof Do
       Begin
          xPoblacion:=xPoblacion + DM1.cdsDetalle.FieldByName('POBLACION').AsInteger ;
          xAutorizaron:=xAutorizaron + DM1.cdsDetalle.FieldByName('AUTORIZARON').AsInteger ;
          xSaldo:=xSaldo + DM1.cdsDetalle.FieldByName('SALDO').AsInteger ;
          DM1.cdsDetalle.Next;
       End;
// Inicio: HPP_201010_ASO (HPC_201005_ASO)

       dtgDetAut01.Selected.Clear;
       dtgDetAut01.Selected.Add('UPROID'#9'5'#9'Unidad~Proceso'#9#9);
       dtgDetAut01.Selected.Add('UPAGOID'#9'5'#9'Unidad~Pago'#9#9);
       dtgDetAut01.Selected.Add('USEID'#9'5'#9'UGEL'#9#9);
       dtgDetAut01.Selected.Add('USENOM'#9'30'#9'Nombre UGEL'#9#9);
       dtgDetAut01.Selected.Add('POBLACION'#9'8'#9'Población'#9#9);
       dtgDetAut01.Selected.Add('AUTORIZARON'#9'8'#9'Autorizaron'#9#9);
       dtgDetAut01.Selected.Add('SALDO'#9'8'#9'No~Autorizaron'#9#9);
       dtgDetAut01.Selected.Add('AVANCE'#9'8'#9'%~Efectividad'#9#9);
       dtgDetAut01.ApplySelected;
// fin: HPP_201010_ASO (HPC_201005_ASO)

       dtgDetAut01.ColumnByName('USENOM').FooterValue :='Totales';
       dtgDetAut01.ColumnByName('POBLACION').FooterValue := FloatToStrF(xPoblacion,ffNumber, 10, 0);
       dtgDetAut01.ColumnByName('AUTORIZARON').FooterValue := FloatToStrF(xAutorizaron,ffNumber, 10, 0);
       dtgDetAut01.ColumnByName('SALDO').FooterValue := FloatToStrF(xSaldo,ffNumber, 10, 0);
       dtgDetAut01.ColumnByName('AVANCE').FooterValue := DM1.cdsConsulta.FieldByName('AVANCE').AsString;
   End;

   If DM1.sGrid='R' Then
   Begin
       DM1.cdsDetalle.First;
       xAutorizaron:=0;
       While Not DM1.cdsDetalle.Eof Do
       Begin
          xAutorizaron:=xAutorizaron + DM1.cdsDetalle.FieldByName('AUTORIZARON').AsInteger ;
          DM1.cdsDetalle.Next;
       End;
// inicio: HPP_201010_ASO (HPC_201005_ASO)
      dtgDetAut02.Selected.Clear;
      dtgDetAut02.Selected.Add('UPROID'#9'5'#9'Unidad~Proceso'#9#9);
      dtgDetAut02.Selected.Add('UPAGOID'#9'5'#9'Unidad~Pago'#9#9);
      dtgDetAut02.Selected.Add('USEID'#9'5'#9'UGEL'#9#9);
      dtgDetAut02.Selected.Add('USENOM'#9'30'#9'Nombre UGEL'#9#9);
      dtgDetAut02.Selected.Add('AUTORIZARON'#9'10'#9'Nro.~Autorizados'#9#9);
      dtgDetAut02.ApplySelected;
      dtgDetAut02.ColumnByName('USENOM').FooterValue :='Totales';
      dtgDetAut02.ColumnByName('AUTORIZARON').FooterValue := FloatToStrF(xAutorizaron,ffNumber, 10, 0);
// fin: HPP_201010_ASO (HPC_201005_ASO)
   End;

end;

procedure TfDetAutDes.BitPrintClick(Sender: TObject);
begin
If dtgDetAut01.Visible Then
   Begin
      Titulos01.Caption:='AUTORIZACIONES DE DESCUENTO DE APORTES POR USES/UGEL';
// inicio: HPP_201010_ASO (HPC_201005_ASO)
//      Titulos02.Caption:='Proceso de Información al : '+DM1.UltProceso;
      Titulos02.Caption:='Proceso de Información al : '+datetostr(DM1.FechaSys);
      Titulo03.Caption:='Origen de Asociados : '+DM1.cdsConsulta.FieldByName('OFDESNOM').AsString;
// fin: HPP_201010_ASO (HPC_201005_ASO)
      lblPorFin.Caption:=DM1.cdsConsulta.FieldByName('AVANCE').AsString;
      rpResPoblacion.Print;
      rpResPoblacion.Cancel;
   End;

If dtgDetAut02.Visible Then
   Begin
// inicio: HPP_201010_ASO (HPC_201005_ASO)
       if fAutDesApo.rgProduccion.ItemIndex=0 then
    //   If fAutDesApo.rdbOriReg.Checked Then
// fin: HPP_201010_ASO (HPC_201005_ASO)
         Begin
            dbResProduccion.DataSource:=DM1.dsDetalle;
            xTitulos01.Caption:='AUTORIZACIONES DE DESCUENTO DE APORTES POR USES/UGEL(PRODUCCION)';
// inicio: HPP_201010_ASO (HPC_201005_ASO)
           // xTitulos02.Caption:='Proceso de Información al : '+DM1.UltProceso;
            xTitulos02.Caption:='Proceso de Información al : '+datetostr(DM1.FechaSys);
            xTitulo03.Caption:='Origen de Asociados : '+DM1.cdsReporte.FieldByName('OFDESNOM').AsString;
// fin: HPP_201010_ASO (HPC_201005_ASO)
            rpResProduccion.Print;
            rpResProduccion.Cancel;
         End;

// inicio: HPP_201010_ASO (HPC_201005_ASO)
       if fAutDesApo.rgProduccion.ItemIndex=1 then
   //    If fAutDesApo.rdbOriDia.Checked Then
// fin: HPP_201010_ASO (HPC_201005_ASO)
         Begin
            dbResProduccion.DataSource:=DM1.dsDetalle;
            xTitulos01.Caption:='AUTORIZACIONES DE DESCUENTO DE APORTES POR DIA : '+DM1.CdsCBcos.FieldByName('OFDESNOM').AsString;
// inicio: HPP_201010_ASO (HPC_201005_ASO)
          //  xTitulos02.Caption:='Proceso de Información al : '+DM1.UltProceso;
            xTitulos02.Caption:='Proceso de Información al : '+datetostr(DM1.FechaSys);
            xTitulo03.Caption:='';  sTitulo.Caption:='Origen de Registro';
// fin: HPP_201010_ASO (HPC_201005_ASO)
            rpResProduccion.Print;
            rpResProduccion.Cancel;
         End;
   End;
end;

procedure TfDetAutDes.dtgDetAut01DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 If (Field.FieldName = 'SALDO') Then
     Begin
        dtgDetAut01.Canvas.Font.Color := clRed;
        dtgDetAut01.DefaultDrawDataCell(rect,Field,State);
     End;
end;

procedure TfDetAutDes.dtgDetAut01DrawFooterCell(Sender: TObject;
  Canvas: TCanvas; FooterCellRect: TRect; Field: TField;
  FooterText: String; var DefaultDrawing: Boolean);
begin
 If (Field.FieldName = 'SALDO') Then
     Begin
        dtgDetAut01.Canvas.Font.Color := clRed;
     End;

end;

procedure TfDetAutDes.dtgDetAut01DrawTitleCell(Sender: TObject;
  Canvas: TCanvas; Field: TField; Rect: TRect;
  var DefaultDrawing: Boolean);
begin
 If (Field.FieldName = 'SALDO') Then
     Begin
        dtgDetAut01.Canvas.Font.Color := clRed;
     End;

end;

end.
