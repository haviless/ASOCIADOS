unit CRE907;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdblook, ComCtrls, Spin, StdCtrls, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, Mask, wwdbedit, ppDB, ppDBPipe, ppParameter, ppCtrls, ppBands,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  DB, DBClient, wwclient, Math, ExtCtrls;

type
  TfConsCre = class(TForm)
    GroupBox2: TGroupBox;
    dtgCronograma: TwwDBGrid;
    BitGenera: TBitBtn;
    SpECuotas: TSpinEdit;
    dtPFecVen: TDateTimePicker;
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    BitBtn1: TBitBtn;
    EdtMonto: TwwDBEdit;
    DBLCTipos: TwwDBLookupCombo;
    dsCronograma: TDataSource;
    cdsCronograma: TwwClientDataSet;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLblTitulo: TppLabel;
    ppMonto: TppLabel;
    ppFecPre: TppLabel;
    ppNroCuotas: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppInteres: TppLabel;
    ppGastos: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel1: TppLabel;
    ppParameterList1: TppParameterList;
    ppDBPipeline1: TppDBPipeline;
    ppDBPipeline1ppField1: TppField;
    ppDBPipeline1ppField2: TppField;
    ppDBPipeline1ppField3: TppField;
    ppDBPipeline1ppField4: TppField;
    ppDBPipeline1ppField5: TppField;
    ppDBPipeline1ppField6: TppField;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    GroupBox3: TGroupBox;
    EdtInteres: TwwDBEdit;
    EdtGastos: TwwDBEdit;
    Panel1: TPanel;
    EdtDesTip: TEdit;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLblTipo: TppLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure DBLCTiposChange(Sender: TObject);
    procedure DBLCTiposCloseUp(Sender: TObject; LookupTable,
      FillTable: TDataSet; modified: Boolean);
    procedure EdtMontoExit(Sender: TObject);
    procedure BitGeneraClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdtMontoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsCre: TfConsCre;

implementation

uses ASODM;

{$R *.dfm}

procedure TfConsCre.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfConsCre.DBLCTiposChange(Sender: TObject);
begin
   cdsCronograma.Close; cdsCronograma.Open; cdsCronograma.EmptyDataSet;
   If DM1.cdsClaCre.Locate('TIPCREID',VarArrayof([DBLCTipos.text]),[]) Then
      Begin
        EdtDesTip.Text  := DM1.cdsClaCre.fieldbyname('TIPCREDES').AsString ;
        EdtInteres.Text := FormatFloat('###.#0',DM1.cdsClaCre.fieldbyname('POR_INT').AsFloat);
        EdtGastos.Text  := FormatFloat('###.#0',DM1.cdsClaCre.fieldbyname('POR_FLT').AsFloat);
      End
   Else
      Begin
        if Length(DBLCTipos.Text) <> 2 then
           Begin
              Beep;
              EdtDesTip.Text  :=''; EdtInteres.Text :='0.00'; EdtGastos.Text  :='0.00'
           End;
      End

end;

procedure TfConsCre.DBLCTiposCloseUp(Sender: TObject; LookupTable,
  FillTable: TDataSet; modified: Boolean);
begin
  If Modified Then
     Begin
        EdtDesTip.Text  := DM1.cdsClaCre.fieldbyname('TIPCREDES').AsString ;
        EdtInteres.Text := FormatFloat('###.#0',DM1.cdsClaCre.fieldbyname('POR_INT').AsFloat);
        EdtGastos.Text  := FormatFloat('###.#0',DM1.cdsClaCre.fieldbyname('POR_FLT').AsFloat);
     End;

end;

procedure TfConsCre.EdtMontoExit(Sender: TObject);
begin
  EdtMonto.Text:=FormatFloat('###,###.#0',DM1.Valores(EdtMonto.Text));
end;

procedure TfConsCre.BitGeneraClick(Sender: TObject);
var i,j:Integer;
    xMonto,xTas_Int,xTas_Flt,xMon_Cuo,xTotCuo,xTotFlt,xTotAmo,xTotInt,cNumer,cDenom,sFlt_Pag,xSal_Pag:Real;
    xMon_Aux,xAmo_Pag,xInt_Pag,xGas_Pag,s,r:Real;
    sMon_Cuo,sAmo_Pag,sInt_Pag,sGas_Pag:Real;
    xFec_Pre,xFec_Ven:tDateTime;
    tMes,tAno,xMes,xAno:Integer;
    tDia,xDia,xPrdGra:String;
begin

If Length(Trim(EdtDesTip.Text))=0 Then
   Begin
     MessageDlg(' Debe Ingresar Un Monto Para Generar La Consulta ', mtError,[mbOk],0);
     Exit;
   End;
If Length(Trim(EdtMonto.Text))=0 Then
   Begin
     MessageDlg(' Debe Ingresar Un Monto Para Generar La Consulta ', mtError,[mbOk],0);
     Exit;
   End;
xMonto:=DM1.Valores(EdtMonto.Text);
If xMonto <= 0 Then
   Begin
     MessageDlg(' Debe Ingresar Un Monto Para Generar La Consulta ', mtError,[mbOk],0);
     Exit;
   End
Else
xFec_Pre:=dtPFecVen.DateTime;
xPrdGra:=Trim(DM1.RecuperaDatos('CRE110','TIPCREID',Trim(DBLCTipos.Text),'PER_GRA'));
If xPrdGra>'0' Then
   Begin
      For j:= 1 to StrToInt(xPrdGra) Do
       Begin
         tDia:=Copy(DateToStr(xFec_Pre),1,2);
         tMes:=StrToInt(Copy(DateToStr(xFec_Pre),4,2)) + 1;
         tAno:=StrToInt(Copy(DateToStr(xFec_Pre),7,4));
         If tMes > 12 Then
            Begin
              tMes := 1;
              tAno := tAno + 1 ;
            End;
         xFec_Pre:=StrToDate(tDia+'/'+Format('%.2d',[tMes])+'/'+ Trim(IntToStr(tAno)));
       End;

   End;
cdsCronograma.Close; cdsCronograma.Open; cdsCronograma.EmptyDataSet;
xTotCuo:=0;xTotFlt:=0;
xTas_Int:=StrToFloat(EdtInteres.Text);
xTas_Flt:=StrToFloat(EdtGastos.Text);
If xTas_Int <> 0 Then
   Begin
     xTas_Int:= StrToFloat(FloatToStrF(xTas_Int/100,ffFixed,15,4));
     xTas_Flt:= StrToFloat(FloatToStrF(xTas_Flt/100,ffFixed,15,4));
     cNumer  := xTas_Int * Power((1+xTas_Int),SpECuotas.Value);
     cDenom  := Power((1+xTas_Int),SpECuotas.Value)-1 ;
     xMon_Cuo:= StrToFloat(FloatToStrF(xMonto * (cNumer/cDenom),ffFixed,15,2));
     sFlt_Pag:= StrToFloat(FloatToStrF(xMonto * xTas_Flt / SpECuotas.Value,ffFixed,15,2)) ;
   End
Else
   Begin
     xMon_Cuo:=xMonto / SpECuotas.Value;
     xMon_Cuo:= StrToFloat(FloatToStrF(xMon_Cuo,ffFixed,15,2));
   End;
xMon_Aux:=xMonto ; xSal_Pag:= xMonto;
sMon_Cuo:=0 ; sAmo_Pag:=0 ; sInt_Pag:=0 ; sGas_Pag:=0; s:=0 ;r :=0;
For i:= 1 to SpECuotas.Value  Do
   Begin
      xInt_Pag:=StrToFloat(FloatToStrF(xMonto * xTas_Int,ffFixed,15,2));
      xAmo_Pag:=xMon_Cuo-xInt_Pag;
      xMes:=StrToInt(Copy(DateToStr(xFec_Pre),4,2)) + 1;
      xAno:=StrToInt(Copy(DateToStr(xFec_Pre),7,4));
      If xMes > 12 Then
         Begin
           xMes := 1;
           xAno := xAno + 1 ;
         End;
      xDia:=DM1.UltimoDia(xMes,xAno);
      xFec_Ven := StrToDate(xDia+'/'+Format('%.2d',[xMes])+'/'+ Trim(IntToStr(xAno)));
      sAmo_Pag := sAmo_Pag + xAmo_Pag ;
      sInt_Pag := sInt_Pag + xInt_Pag ;
      sMon_Cuo := sMon_Cuo + xMon_Cuo ;
      If i = SpECuotas.Value Then
         Begin
            If sAmo_Pag > xMon_Aux Then
               s := sAmo_Pag - xMon_Aux ;
            If sInt_Pag > ( sMon_Cuo - xMon_Aux ) Then
               r := sInt_Pag - ( sMon_Cuo - xMon_Aux ) ;
         End;
      cdsCronograma.Append;
      cdsCronograma.FieldByName('CdsIteCuo').AsString   := Format('%.2d',[i]);
      cdsCronograma.FieldByName('CdsFecVen').AsDateTime := xFec_Ven;
      cdsCronograma.FieldByName('CdsAmort').AsFloat     := xAmo_Pag-s+r;
      cdsCronograma.FieldByName('CdsInteres').AsFloat   := xInt_Pag+s-r;
      cdsCronograma.FieldByName('CdsGastos').AsFloat    := sFlt_Pag;
      cdsCronograma.FieldByName('CdsCuota').AsFloat     := xMon_Cuo + sFlt_Pag;
      xSal_Pag:= xMonto - xAmo_Pag;
      xMonto  := xSal_Pag; xFec_Pre:= xFec_ven;
      xTotAmo:= xTotAmo + cdsCronograma.FieldByName('CdsAmort').AsFloat;
      xTotInt:= xTotInt + cdsCronograma.FieldByName('CdsInteres').AsFloat;
      xTotFlt:= xTotFlt + cdsCronograma.FieldByName('CdsGastos').AsFloat;
      xTotCuo:= xTotCuo + cdsCronograma.FieldByName('CdsCuota').AsFloat ;
    end;
    DtgCronograma.ColumnByName('CdsFecVen').FooterValue :='Total';
    DtgCronograma.ColumnByName('CdsAmort').FooterValue := FloatToStrF(xTotAmo,ffNumber, 10, 2);
    DtgCronograma.ColumnByName('CdsInteres').FooterValue := FloatToStrF(xTotInt,ffNumber, 10, 2);
    DtgCronograma.ColumnByName('CdsGastos').FooterValue := FloatToStrF(xTotFlt,ffNumber, 10, 2);
    DtgCronograma.ColumnByName('CdsCuota').FooterValue := FloatToStrF(xTotCuo,ffNumber, 10, 2);
    TNumericField(CdsCronograma.FieldByName('CdsAmort')).DisplayFormat:='##0.00';
    TNumericField(CdsCronograma.FieldByName('CdsInteres')).DisplayFormat:='##0.00';
    TNumericField(CdsCronograma.FieldByName('CdsGastos')).DisplayFormat:='##0.00';
    TNumericField(CdsCronograma.FieldByName('CdsCuota')).DisplayFormat:='##0.00';
    cdsCronograma.First;
    dtgCronograma.SetFocus;

end;

procedure TfConsCre.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfConsCre.BitBtn1Click(Sender: TObject);
begin
  If dtgCronograma.DataSource.DataSet.RecordCount > 0 Then
     Begin
        ppLblTitulo.Caption := 'CRONOGRAMA DE PAGOS PROPUESTO AL : '+DateToStr(DM1.FechaSys);
        ppLblTipo.Caption := Trim(DBLCTipos.Text)+'-'+Trim(EdtDesTip.Text);  
        ppMonto.Caption := FormatFloat('###,###.00',DM1.Valores(EdtMonto.Text));
        ppNroCuotas.Caption :=IntToStr(SpECuotas.Value);
        ppFecPre.Caption :=DateToStr(dtPFecVen.DateTime);
        ppInteres.Caption:= 'Inteses        :  '+ EdtInteres.Text ;
        ppGastos.Caption := 'Gastos / Flat  :  '+ EdtGastos.Text  ;
        ppReport1.Print;
        ppReport1.Cancel;
     End
  Else
     Begin
        MessageDlg(' No Existen Datos a Mostrar En Esta Consulta ', mtError,[mbOk],0);
        Exit;
     End

end;

procedure TfConsCre.FormActivate(Sender: TObject);
begin
  dtPFecVen.Date := DM1.FechaSys;
end;

procedure TfConsCre.EdtMontoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

end.
