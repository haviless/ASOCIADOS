unit ASO302;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO302
// Formulario           : fReporteCartera
// Fecha de Creación    : 07/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Generar rerporte de asignaciones medianete una grafica.
// Actualizaciones      :
// SPP_201404_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO
// HPC_201503_ASO       : Se adiciona reporte Resumen de Resultados de hoja de ruta

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, ComCtrls, ExtCtrls, StdCtrls,
  wwdblook, Wwdbdlg, TeeProcs, TeEngine, Chart, DbChart,
   Series, wwClient,  Spin,  ppComm, ppRelatv, DB,
   ppProd, ppClass, ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, fcLabel,
   Menus, jpeg,
   Mask, wwdbedit, Wwdbspin, BubbleCh, CheckLst, fcButton, fcImgBtn,
  //Inicio HPC_201503_ASO
  //fcShapeBtn;
   fcShapeBtn, wwdbdatetimepicker,
   wwExport,shellapi, ppParameter, ppVar, ppDB, ppDBPipe, ppEndUsr;
  //Final HPC_201503_ASO

type
  TfReporteCartera = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    PageControl1: TPageControl;
    tsReporte: TTabSheet;
    DBChart1: TDBChart;
    tsReporteDetalle: TTabSheet;
    DBChart2: TDBChart;
    bBuscar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    dblAnio: TwwDBLookupCombo;
    dblMes: TwwDBLookupCombo;
    GroupBox2: TGroupBox;
    bSalir: TBitBtn;
 //Inicio HPC_201503_ASO
    tsResumenResultado: TTabSheet;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    gbFiltro1: TGroupBox;
    Label4: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    dblcdResponsable: TwwDBLookupComboDlg;
    mdesResponsable: TMaskEdit;
    dtpInicio: TwwDBDateTimePicker;
    dtpFin: TwwDBDateTimePicker;
    chkTodoResponsable: TCheckBox;
    gbFiltro2: TGroupBox;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    rbDomicilio: TRadioButton;
    rbColegio: TRadioButton;
    dblcdcoddep: TwwDBLookupComboDlg;
    medesdep: TMaskEdit;
    dblcdcodpro: TwwDBLookupComboDlg;
    medespro: TMaskEdit;
    dblcdcoddis: TwwDBLookupComboDlg;
    medesdis: TMaskEdit;
    dblcdColegio: TwwDBLookupComboDlg;
    mdesColegio: TMaskEdit;
    chkCADAPS: TCheckBox;
    Label7: TLabel;
    gbTipoCar: TGroupBox;
    cbAfiliacion: TCheckBox;
    cbNoveles: TCheckBox;
    cbFamiliarizada: TCheckBox;
    cbPrecese: TCheckBox;
    dblTipoGest: TwwDBLookupCombo;
    mdesTipoGest: TMaskEdit;
    rdgApoReg: TRadioGroup;
    bFiltrar: TBitBtn;
    dbgResumenResultdos: TwwDBGrid;
    dtgExcel: TwwDBGrid;
    bExportar: TBitBtn;
    bImprimir: TBitBtn;
    ppdg1: TppDesigner;
    ppDBP1: TppDBPipeline;
    RepResHojaRuta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppImage1: TppImage;
    pplblResponsable: TppLabel;
    pplbFecha: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape2: TppShape;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppParameterList1: TppParameterList;
 //Final HPC_201503_ASO
    procedure bBuscarClick(Sender: TObject);
    procedure MostrarGraficoTP(xAnio, xMes: String;xTipoGrafico,xOpcion:Integer);
    procedure CreaGrafico(xTipoGrafico: Integer;   xCds: TwwClientDataSet; xChart: TDBChart; xMens01, xMens02,   xMstSerie: String);
    procedure FormActivate(Sender: TObject);
    function ObtieneMesDes(xMes : String):String;
    procedure DBChart1ClickSeries(Sender: TCustomChart;
      Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure MostrarGraficoTPDetalle(xUsuario,xAnio, xMes: String;xTipoGrafico,xOpcion:Integer);
    procedure bSalirClick(Sender: TObject);
//Inicio HPC_201503_ASO
    procedure rbDomicilioClick(Sender: TObject);
    procedure rbColegioClick(Sender: TObject);
    procedure dblcdcoddepChange(Sender: TObject);
    procedure dblcdcoddepDropDown(Sender: TObject);
    procedure dblcdcoddepExit(Sender: TObject);
    procedure dblcdcodproChange(Sender: TObject);
    procedure dblcdcodproExit(Sender: TObject);
    procedure dblcdcoddisChange(Sender: TObject);
    procedure dblcdcoddisExit(Sender: TObject);
    procedure dblcdColegioChange(Sender: TObject);
    procedure dblcdColegioExit(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
    procedure bExportarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure chkTodoResponsableClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcdResponsableChange(Sender: TObject);
    procedure dtpInicioChange(Sender: TObject);
    procedure dtpFinChange(Sender: TObject);
    procedure chkCADAPSClick(Sender: TObject);
    procedure cbAfiliacionClick(Sender: TObject);
    procedure cbNovelesClick(Sender: TObject);
    procedure cbFamiliarizadaClick(Sender: TObject);
    procedure cbPreceseClick(Sender: TObject);
    procedure dblTipoGestChange(Sender: TObject);
    procedure rdgApoRegClick(Sender: TObject);
    procedure actfoot();
//Final HPC_201503_ASO
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReporteCartera: TfReporteCartera;

implementation

uses ASODM;

{$R *.dfm}

procedure TfReporteCartera.FormActivate(Sender: TObject);
Var xSql :String;
begin

   //--Llena combo Año--//
   xSql := ' SELECT DISTINCT SUBSTR(GAC.PERCAR,7,4) ANIO FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC ORDER BY TO_NUMBER(SUBSTR(GAC.PERCAR,7,4)) '  ;
   DM1.cdsNivelSat.Close;
   DM1.cdsNivelSat.DataRequest(xSql);
   DM1.cdsNivelSat.Open;
   dblAnio.LookupTable := DM1.cdsNivelSat;
   dblAnio.LookupField := 'ANIO';
   dblAnio.Selected.Clear;
   dblAnio.Selected.Add('ANIO'#9'2'#9'Año'#9#9);

   //--Llena combo Mes--//
   xSql := ' SELECT DISTINCT SUBSTR(GAC.PERCAR,4,2) MES FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC ORDER BY TO_NUMBER(SUBSTR(GAC.PERCAR,4,2))'  ;
   DM1.cdsNivelCono.Close;
   DM1.cdsNivelCono.DataRequest(xSql);
   DM1.cdsNivelCono.Open;
   dblMes.LookupTable := DM1.cdsNivelCono;
   dblMes.LookupField := 'MES';
   dblMes.Selected.Clear;
   dblMes.Selected.Add('MES'#9'2'#9'Mes'#9#9);

   //--Valores inciales--//
   tsReporteDetalle.TabVisible:=false;
 //Inciio HPC_201503_ASO
      dbgResumenResultdos.Selected.Clear;
      dbgResumenResultdos.Selected.Add('TIPRES'#9'4'#9'Cod.'#9#9);
      dbgResumenResultdos.Selected.Add('ESTRES'#9'3'#9'Est.'#9#9);
      dbgResumenResultdos.Selected.Add('NOMVAL'#9'57'#9'Descripción'#9#9);
      dbgResumenResultdos.Selected.Add('CANT'#9'05'#9'Cant.'#9#9);
      dbgResumenResultdos.ApplySelected;
      xsql:='SELECT 0 TIPRES,0 ESTRES,'' '' NOMVAL,0 CANT FROM DUAL ';
      DM1.CdsConsultaCartera.Close;
      DM1.CdsConsultaCartera.DataRequest(XSQL);
      DM1.CdsConsultaCartera.Open;
      dbgResumenResultdos.DataSource := Dm1.dsConsultaCartera;


      dtpInicio.Date          := StrToDate('01/'+Copy(DateToStr(DM1.FechaSys),4,7));
      dtpFin.Date             := DM1.FechaSys;
      rbColegio.Checked       := True;
      cbAfiliacion.Checked    := True;
      cbNoveles.Checked       := True;
      cbFamiliarizada.Checked := True;
      cbPrecese.Checked       := True;

     //--Llena Combo Departamento--//
      xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
      DM1.cdsDpto.Close;
      DM1.cdsDpto.DataRequest(xSql);
      DM1.cdsDpto.Open;
      dblcdcoddep.Selected.Clear;
      dblcdcoddep.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
      dblcdcoddep.Selected.Add('DPTODES'#9'15'#9'Descripción'#9#9);

      //--Llena Combo Tipo de Gestion--//
      xSql := ' SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                           +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                           + 'AND C.ESTREG=1 '
                           +  'AND D.ESTREG=1   '
                           +  'AND C.CODCAB=''TIPOGEST'' '  ;
      DM1.cdsTipoGes.Close;
      DM1.cdsTipoGes.DataRequest(xSql);
      DM1.cdsTipoGes.Open;
      dblTipoGest.Selected.Clear;
      dblTipoGest.Selected.Add('VALDES01'#9'2'#9'Código'#9#9);
      dblTipoGest.Selected.Add('NOMVAL'#9'15'#9'Descripción'#9#9);

      //--Llena Combo Responsable--//
      xSql := ' SELECT DISTINCT O.USERID,T.USERNOM FROM ASO_NIV_USU_OTO O   '
               +'   INNER JOIN TGE006 T ON O.USERID=T.USERID  '
               +'   WHERE O.USERNIV=''N1'' --ASESORES '  ;
      DM1.cdsResponsable.Close;
      DM1.cdsResponsable.DataRequest(xSql);
      DM1.cdsResponsable.Open;
      dblcdResponsable.Selected.Clear;
      dblcdResponsable.Selected.Add('USERID'#9'15'#9'UserId'#9#9);
      dblcdResponsable.Selected.Add('USERNOM'#9'30'#9'Nombre'#9#9);
      dblcdResponsable.Text:=DM1.wUsuario;
 //Final HPC_201503_ASO
end;

procedure TfReporteCartera.bBuscarClick(Sender: TObject);
begin
        //--Validaciones--//
    if dblAnio.Text= '' then
    begin
          MessageDlg(' Debe Ingresar el Año...!!!!', mtError, [mbOk], 0);
           Exit;
    end;                                     
    if dblMes.Text= '' then
    begin
          MessageDlg(' Debe Ingresar el Mes...!!!!', mtError, [mbOk], 0);
           Exit;
    end;
    Screen.Cursor := crHourGlass;
    MostrarGraficoTP(dblAnio.Text, dblMes.Text,1,1);
    DBChart1.Series[0].Marks.Visible := True;
    Screen.Cursor := crDefault;

end;

procedure TfReporteCartera.MostrarGraficoTP(xAnio, xMes: String;xTipoGrafico,xOpcion:Integer);

var xSQL:String;
begin
Screen.Cursor := crHourGlass;
    //--Reporte--//
      xSQL:='SELECT DISTINCT GAC.CODUSUASI,COUNT(GAC.CODUSUASI) OVER(PARTITION BY GAC.CODUSUASI) CANT FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
            +' WHERE SUBSTR(GAC.PERCAR,4,2)='+QuotedStr(xMes)+' AND SUBSTR(GAC.PERCAR,7,4)='+QuotedStr(xAnio)
            +' AND NVL(GAC.CODUSUASI,''V'')!=''V'''
            +' ORDER BY 1';
            DM1.cdsReporte.Close;
            DM1.LimpiaClientDataset(DM1.cdsReporte);
            DM1.cdsReporte.DataRequest(xSQL);
            DM1.cdsReporte.Open;
            ObtieneMesDes(xMes);
            CreaGrafico(xTipoGrafico, DM1.cdsReporte, DBChart1, 'REPORTE DE CARTERA MENSUAL: CANTIDAD DE ASIGNACIONES x RESPONSABLE', ObtieneMesDes(xMes)+' - '+xAnio, 'S');

   Screen.Cursor := crDefault;

end;

procedure TfReporteCartera.CreaGrafico(xTipoGrafico: Integer;   xCds: TwwClientDataSet; xChart: TDBChart; xMens01, xMens02,   xMstSerie: String);
const
   Color_01 : Array[0..0] Of Integer = (16747804);
   Color_02 : Array[0..0] Of Integer = (5855743);
   Color_03 : Array[0..2] Of TColor = (5855743, 16747804, 40704);
   Color_04 : Array[0..0] Of TColor = (16747804);
   Color_05 : Array[0..0] Of TColor = (40704);
   Color_06 : Array[0..4] Of TColor = (40704,16747804,5212415,16742911,5855743);
   Color_07 : Array[0..3] Of TColor = (40704,16747804,5212415,16742911);
   Color_08 : Array[0..1] Of TColor = (5855743, 16747804);
var
   xFieldDefList : TFieldDefList;
   i, i2, xMark, xColor, xTitle : integer;
   MySerie : TChartSeries;
   xIndex : String;
begin
   Randomize;
   xChart.FreeAllSeries;
   xChart.Title.Text.Clear;
   xChart.Title.Text.Add(xMens01);
   xChart.Title.Text.Add(xMens02);
   xFieldDefList := xCds.FieldDefList;
   xIndex := xFieldDefList.FieldDefs[0].Name;
   i2 := 0;
   xMark := 5;
   xTitle := StrToInt(Copy(DateToStr(DM1.FechaSys), 7, 4)) - 1;
   For i := 0 To xFieldDefList.Count - 1 Do
   Begin
      If xFieldDefList.FieldDefs[i].Name <> xIndex Then
      Begin
         Case xTipoGrafico Of
            0 :Begin
                  xChart.AddSeries(TBarSeries.Create(Self));
                  TBarSeries(xChart.Series[i2]).BarPen.Visible := True;
                  TBarSeries(xChart.Series[i2]).MultiBar:= mbStacked100;
                  TBarSeries(xChart.Series[i2]).BarStyle:= bsCilinder;
               End;

            1 :Begin
                  xChart.AddSeries(TBarSeries.Create(Self));
                  TBarSeries(xChart.Series[i2]).BarPen.Visible := True;
               End;
            2 :Begin
                  xChart.AddSeries(TLineSeries.Create(Self));
                  TLineSeries(xChart.Series[i2]).LinePen.Width := 3;
                  TLineSeries(xChart.Series[i2]).Pointer.Visible := True;
               End;
            3 :Begin
                  xChart.AddSeries(TAreaSeries.Create(Self));
               End;
            4 :Begin
                  xChart.AddSeries(TPieSeries.Create(self));
                  TPieSeries(xChart.Series[i2]).Marks.Style:= smsPercent;
                  TPieSeries(xChart.Series[i2]).Marks.Font.Size:=11;
               End;
            5:Begin
                  xChart.AddSeries(TBubbleSeries.Create(self));
              End;
            6:Begin
                  xChart.AddSeries(THorizBarSeries.Create(self));
              End;
         End;
         xChart.Series[i2].DataSource := xCds;
         xChart.Series[i2].XLabelsSource := xIndex;

         if xTipoGrafico = 6 then
           xChart.Series[i2].XValues.ValueSource := xFieldDefList.FieldDefs[i].Name
         else
           xChart.Series[i2].YValueS.ValueSource := xFieldDefList.FieldDefs[i].Name;

         xChart.Series[i2].Name := xFieldDefList.FieldDefs[i].Name;
         xChart.Series[i2].Marks.Visible := False;
         xChart.Series[i2].Marks.Style := smsValue;
         xChart.Series[i2].Marks.BackColor := clYellow;
         If xTipoGrafico=4 Then
            Begin
                xChart.Series[i2].valueFormat := '##,###,##0';
                xChart.Series[i2].Marks.Visible := False;
                xChart.Series[i2].Marks.Style := smsValue;
            End;
         If (xMstSerie='S') Or (Copy(xMstSerie,1,1)='W') Then
            Begin
               xChart.Series[i2].Title := xFieldDefList.FieldDefs[i].Name;
            End
         Else
            xChart.Series[i2].Title := IntToStr(xTitle);

         xTitle := xTitle + 1;

         If i2 = 0 Then
            If xMstSerie = 'X' Then
               xChart.Series[i2].SeriesColor := Color_01[Random(1)]
            Else If xMstSerie = 'S' Then
               xChart.Series[i2].SeriesColor := Color_03[i2]
            Else If xMstSerie = 'R' Then
               xChart.Series[i2].SeriesColor := Color_04[i2]
            Else If xMstSerie = 'N' Then
               xChart.Series[i2].SeriesColor := Color_05[i2]
            Else
               xChart.Series[i2].SeriesColor := Color_01[Random(1)]
         Else
            If xMstSerie = 'S' Then
               xChart.Series[i2].SeriesColor := Color_03[i2]
            Else
               xChart.Series[i2].SeriesColor := Color_02[Random(1)];

         If Copy(xMstSerie,1,1)='W' Then
            Begin
              xChart.Series[i2].SeriesColor := Color_06[StrToInt(Copy(xMstSerie,2,1))];
            End;

         If xMstSerie='A' Then
            Begin
              xChart.Series[i2].SeriesColor := Color_08[i2];
            End;


             xChart.Series[i2].Marks.Visible:=True;

         i2 := i2 + 1;

         If i2 > 1 Then
         Begin
            xChart.Legend.Visible := True;
         End
         Else
            xChart.Legend.Visible := False;

         If xMstSerie = 'X' Then
         Begin
            xTipoGrafico := xTipoGrafico + 1;
            xChart.Legend.Visible := False;
         End;

      End;
   End;
   xChart.AllowPanning:=pmNone;
   xChart.AllowZoom:=False;
   xChart.Legend.Font.Size:=9;
   If xTipoGrafico=4 Then
      Begin
        xChart.Legend.Visible := True;
        xChart.Legend.TextStyle:=ltsPlain;
        xChart.Legend.Font.Size:=9;
      End;

   xChart.RefreshData;



end;

function TfReporteCartera.ObtieneMesDes(xMes : String):String;
var xMesDes :String;
begin
   if xMes = '01' then
        xMesDes:='Enero';
   if xMes = '02' then
        xMesDes:='Febrero';
   if xMes = '03' then
        xMesDes:='Marzo';
   if xMes = '04' then
        xMesDes:='Abril';
   if xMes = '05' then
        xMesDes:='Mayo';
   if xMes = '06' then
        xMesDes:='Junio';
   if xMes = '07' then
        xMesDes:='Julio';
   if xMes = '08' then
        xMesDes:='Agosto';
   if xMes = '09' then
        xMesDes:='Setiembre';
   if xMes = '10' then
        xMesDes:='Octubre';
   if xMes = '11' then
        xMesDes:='Noviembre';
   if xMes = '12' then
        xMesDes:='Diciembre';

   result:=xMesDes
end;
procedure TfReporteCartera.DBChart1ClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    PageControl1.ActivePage:= tsReporteDetalle;
    tsReporteDetalle.TabVisible:=true;
    Screen.Cursor := crHourGlass;
    MostrarGraficoTPDetalle(DBChart1.Series[0].XLabel[ValueIndex],dblAnio.Text,dblMes.Text, 1,1);
    Screen.Cursor := crDefault;


end;


procedure TfReporteCartera.MostrarGraficoTPDetalle(xUsuario,xAnio, xMes: String;xTipoGrafico,xOpcion:Integer);

var xSQL:String;
begin
Screen.Cursor := crHourGlass; 
          //--Reporte--//
          xSQL:=' SELECT DISTINCT EH.NOMVAL ESTADO, COUNT(H.ESTHOJ) OVER (PARTITION BY H.ESTHOJ) CANT1'
                +' FROM ASO_HOJARUTA_MOV H'
                +' INNER JOIN ASO_GENERICA_DET EH ON EH.CODCAB=''ESTHOJARUTA'' AND EH.VALDES01=H.ESTHOJ AND EH.ESTREG=1'
                +' INNER JOIN ASO_GENERICA_CAB CAB ON CAB.CODCAB=EH.CODCAB AND CAB.ESTREG=1'
                +' WHERE H.CODUSU='+QuotedStr(xUsuario) +'AND SUBSTR(H.PERCAR,4,2)='+QuotedStr(xMes)+' AND SUBSTR(H.PERCAR,7,4)='+QuotedStr(xAnio);

            DM1.cdsConsultaHojaDet.Close;
            DM1.cdsConsultaHojaDet.DataRequest(xSQL);
            DM1.cdsConsultaHojaDet.Open;
            ObtieneMesDes(xMes);
            CreaGrafico(xTipoGrafico, DM1.cdsConsultaHojaDet, DBChart2, 'ESTADO DE CARTERA DEL USUARIO:'+xUsuario, ObtieneMesDes(xMes)+' - '+xAnio, 'S');

   Screen.Cursor := crDefault;

end;
procedure TfReporteCartera.PageControl1Change(Sender: TObject);
//Inicio HPC_201503_ASO
var xSql:string;
//Final HPC_201503_ASO
begin
    if PageControl1.ActivePage = tsReporte then
    begin
           tsReporteDetalle.TabVisible:=false;
           bBuscarClick(Sender);
    end;
//Inicio HPC_201503_ASO
    if PageControl1.ActivePage = tsResumenResultado then
    begin
       DM1.cdsConsultaCartera.EmptyDataSet;
    End;
//Final HPC_201503_ASO
end;

procedure TfReporteCartera.bSalirClick(Sender: TObject);
begin
    Close;
end;

//Inicio HPC_201503_ASO
procedure TfReporteCartera.rbDomicilioClick(Sender: TObject);
Begin
    DM1.cdsConsultaCartera.EmptyDataSet;
    dblcdcoddep.Text:='';
    dblcdcodpro.Text:='';
    dblcdcoddis.Text:='';
    dblcdColegio.Text:='';
    dblcdcodpro.Enabled:=false;
    dblcdcoddis.Enabled:=false;
    chkCADAPS.Enabled := False;
    chkCADAPS.Checked := False;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.rbColegioClick(Sender: TObject);
Begin
     DM1.cdsConsultaCartera.EmptyDataSet;
     dblcdcoddep.Text:='';
     dblcdcodpro.Text:='';
     dblcdcoddis.Text:='';
     dblcdColegio.Text:='';
     dblcdcodpro.Enabled:=false;
     dblcdcoddis.Enabled:=false;
     chkCADAPS.Enabled := True;
     chkCADAPS.Checked := False;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblcdcoddepChange(Sender: TObject);
Var xSql:String;
Begin
  DM1.cdsConsultaCartera.EmptyDataSet;
  actfoot;
  if dblcdcoddep.Text <>'' then
  begin
  If Length(Trim(dblcdcoddep.Text)) = 2 Then
  begin
     medesdep.Text := DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', dblcdcoddep.Text);
     If Trim(medesdep.Text) <> '' Then
     Begin
        xSql := 'SELECT CIUDID, CIUDDES FROM APO123 WHERE DPTOID = '+QuotedStr(dblcdcoddep.Text)+' ORDER BY CIUDID';
        DM1.cdsProvin.Close;
        DM1.cdsProvin.DataRequest(xSql);
        DM1.cdsProvin.Open;
        dblcdcodpro.Selected.Clear;
        dblcdcodpro.Selected.Add('CIUDID'#9'4'#9'Código'#9#9);
        dblcdcodpro.Selected.Add('CIUDDES'#9'20'#9'Descripción'#9#9);
        DM1.cdsProvin.IndexFieldNames:='CIUDDES';
     End;
    dblcdcodpro.Enabled:=true;
  end;
  end
  else
  begin
        dblcdcoddep.Text := '';
        medesdep.Text    := '';
        dblcdcodpro.Text := '';
        medespro.Text    := '';
        dblcdcoddis.Text := '';
        medesdis.Text    := '';
        dblcdColegio.Text:='';
        mdesColegio.Text :='';
        dblcdColegio.Enabled:=false;
  End;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblcdcoddepDropDown(Sender: TObject);
Begin
    DM1.cdsDpto.IndexFieldNames := 'DPTODES';
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblcdcoddepExit(Sender: TObject);
Begin
  DM1.cdsDpto.IndexFieldNames := '';
  If Trim(dblcdcoddep.Text) = '' Then
  Begin
     medesdep.Text    := '';
     dblcdcodpro.Enabled:=false;
     dblcdcodpro.Text := '';
     medespro.Text    := '';
     dblcdcoddis.Enabled:=false;
     dblcdcoddis.Text := '';
     medesdis.Text    := '';
  End;
  DM1.cdsProvin.IndexFieldNames:='CIUDDES';
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblcdcodproChange(Sender: TObject);
Var xSql:String;
Begin
  DM1.cdsConsultaCartera.EmptyDataSet;
  actfoot;
  if dblcdcodpro.Text <>'' then
  begin
  If Length(Trim(dblcdcodpro.Text)) = 4 Then
  Begin
     medespro.Text := DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', dblcdcodpro.Text);
     If Trim(medespro.Text) <> '' Then
     Begin
        xSql := 'SELECT ZIPID, ZIPDES FROM APO122 WHERE CIUDID = '+QuotedStr(dblcdcodpro.Text)+' ORDER BY ZIPID';
        DM1.cdsDist.Close;
        DM1.cdsDist.DataRequest(xSql);
        DM1.cdsDist.Open;
        dblcdcoddis.Selected.Clear;
        dblcdcoddis.Selected.Add('ZIPID'#9'6'#9'Código'#9#9);
        dblcdcoddis.Selected.Add('ZIPDES'#9'25'#9'Descripción'#9#9);
        DM1.cdsDist.IndexFieldNames := 'ZIPDES';
     End;
     dblcdcoddis.Enabled:=true;
  End;
  end
  else
  begin
  dblcdcodpro.Text := '';
  medespro.Text    := '';
  dblcdcoddis.Text := '';
  medesdis.Text    := '';
  dblcdColegio.Text:='' ;
  mdesColegio.Text:='';
  dblcdColegio.Enabled:=false;
  end;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblcdcodproExit(Sender: TObject);
Begin
 DM1.cdsProvin.IndexFieldNames:='';  
  If Trim(dblcdcodpro.Text) = '' Then
  Begin
     medespro.Text    := '';
     dblcdcoddis.Enabled:=false;
     dblcdcoddis.Text := '';
     medesdis.Text    := '';
  End;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblcdcoddisChange(Sender: TObject);
Var xSql: String;
Begin
  DM1.cdsConsultaCartera.EmptyDataSet;
  actfoot;
  if dblcdcoddis.Text <>'' then
  begin
  If Length(Trim(dblcdcoddis.Text)) = 6 Then
  Begin
   medesdis.Text := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', dblcdcoddis.Text);

   if rbColegio.Checked=true then
   begin
        //--Llena Combo Colegio--//
        xSql :='SELECT ACE.NOMCENEDU ||  '' ('' || NVE.NIVEDU_DES || '')'' NOMCENEDU, '
                + '       ACE.CENEDUID '
                + '  FROM ASO_CEN_EDU ACE, NIV_CEN_EDU NVE '
                + ' WHERE ACE.NIVEDU_ID = NVE.NIVEDU_ID(+) '
                + '   AND ACE.UBIGEO_DIR = ' + QuotedStr(dblcdcoddis.Text)
                + ' ORDER BY NOMCENEDU, NIVEDU_DES';
        DM1.cdsColegio.Close;
        DM1.cdsColegio.DataRequest(xSQL);
        DM1.cdsColegio.Open;
        dblcdColegio.LookupTable := DM1.cdsColegio;
        dblcdColegio.LookupField := 'CENEDUID';
        dblcdColegio.Selected.Clear;
        dblcdColegio.Selected.Add('NOMCENEDU'#9'70'#9'Colegio');
        dblcdColegio.Enabled:=true;
   end;
  end;
  end
  else
  begin
   dblcdcoddis.Text := '';
   medesdis.Text    := '';
   dblcdColegio.Text := '';
   mdesColegio.Text  := '';
   dblcdColegio.Enabled:=false;
  end;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblcdcoddisExit(Sender: TObject);
Begin
   DM1.cdsDist.IndexFieldNames := '';
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblcdColegioChange(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
actfoot;
mdesColegio.Text := DM1.cdsColegio.fieldbyname('CENEDUID').AsString;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblcdColegioExit(Sender: TObject);
Begin
    If Trim(dblcdColegio.Text) = '' Then
     mdesColegio.Text    := '';
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.bFiltrarClick(Sender: TObject);
VAR xSql,xSqlWhere,tipo1,tipo2,tipo3,tipo4,xColegio:String;
    vtotal:currency;
Begin

     xSqlWhere:='';
     if  rbDomicilio.Checked= true then
     begin
        xSqlWhere :=' ';
        if dblcdcoddep.Text<>'' then   xSqlWhere :=' AND DEPA.DPTOID='+QuotedStr(dblcdcoddep.Text);
        if dblcdcodpro.Text<>'' then   xSqlWhere:= xSqlWhere +' AND PROA.CIUDID='+QuotedStr(dblcdcodpro.Text);
        if dblcdcoddis.Text<>'' then   xSqlWhere:= xSqlWhere +' AND DISA.ZIPID='+QuotedStr(dblcdcoddis.Text);
     end;

     if rbColegio.Checked=true then
     begin
         xSqlWhere :=' ';
         if dblcdcoddep.Text<>'' then  xSqlWhere :=' AND DEPC.DPTOID='+dblcdcoddep.Text;
         if dblcdcodpro.Text<>'' then  xSqlWhere:= xSqlWhere +' AND PROC.CIUDID='+QuotedStr(dblcdcodpro.Text);
         if dblcdcoddis.Text<>'' then  xSqlWhere:= xSqlWhere +' AND DISC.ZIPID='+QuotedStr(dblcdcoddis.Text);
         if dblcdColegio.Text<>'' then xSqlWhere:= xSqlWhere +' AND A.CENEDUID='+QuotedStr(mdesColegio.Text);

         //Solo aquellos COLEGIOS que tienen almenos UN ASOCIADO SIN CARTA DE AUTORIZACION DE DESCUENTO
          If chkCADAPS.Checked Then
          Begin
           xSqlWhere:= xSqlWhere
                       +' AND 0<(SELECT COUNT(1) ' // ASOID,AUTDES,DEPC.DPTOID,PROVC.DPTOID,DISC.DPTOID,GAC.CENEDU,GAC.CENEDUID
                       +'FROM ASO_GENERA_ASIGNA_CARTERA_MOV Z '
                       +'LEFT JOIN APO158  DEPC ON DEPC.DPTOID=SUBSTR(Z.UBICOL,1,2) '
                       +'LEFT JOIN APO123  PROVC ON PROVC.DPTOID=SUBSTR(Z.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(Z.UBICOL,1,4) '
                       +'LEFT JOIN APO122  DISC ON DISC.DPTOID=SUBSTR(Z.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(Z.UBICOL,1,4) AND DISC.ZIPID=Z.UBICOL '
                       +'WHERE Z.CENEDUID=A.CENEDUID  AND NVL(Z.AUTDES,''N'')=''N'') ';
          End;
     end;

     Case rdgApoReg.ItemIndex Of
          0: xSqlWhere:= xSqlWhere +' ';
          1: xSqlWhere:= xSqlWhere+ ' AND NVL(D.ASOAPTSER,''N'')=''S''  ';
          2: xSqlWhere:= xSqlWhere+ ' AND NVL(D.ASOAPTSER,''N'')=''N''  ';
     End;

     if cbAfiliacion.Checked=true then    tipo1:=QuotedStr('1')
      else tipo1:=QuotedStr('0');

     if cbNoveles.Checked=true then       tipo2:=QuotedStr('2')
     else tipo2:=QuotedStr('0');

     if cbFamiliarizada.Checked=true then tipo3:=QuotedStr('3')
     else  tipo3:=QuotedStr('0');

     if cbPrecese.Checked=true then       tipo4:=QuotedStr('4')
     else  tipo4:=QuotedStr('0');

     xSqlWhere:= xSqlWhere +' AND A.TIPCAR IN ('+tipo1+','+tipo2+','+tipo3+','+tipo4+')';

     if dblTipoGest.Text<>''      Then xSqlWhere:= xSqlWhere +' AND A.TIPGES='+QuotedStr(dblTipoGest.Text);
     if dblcdResponsable.Text<>'' Then xSqlWhere:= xSqlWhere +' AND A.CODUSUASI='+QuotedStr(dblcdResponsable.Text);


      xSql:= '(SELECT A.codgen,A.asoid,A.nomaso,A.dniaso,A.codmod,A.fecnac,A.autdes,A.email,A.telaso1,A.telaso2,A.diraso,A.ubiaso, A.cenpobaso,A.cenedu,'
            +'A.dircol,A.ubicol,A.cenpobcol,A.nivcenedu,A.ceneduid,A.sitaso,A.tipaso,A.usureg,A.fecreg,A.usumod,A.fecmod,A.estasig,A.fecasi,'
            +'A.codusuasi,A.tipcar,A.tipges,A.percar,A.tipubi,A.estreg,'
            +'B.CODUSU,B.USUREG USUREGHOJARUTA,B.FECREG FECREGHOJARUTA,B.FLGIMP,B.ESTHOJ,B.ESTREG,B.ESTASIHOJ,B.PERASIHOJ,'
            +'C.CODRES,C.REFASO,C.GESREAASO,C.TIPRES,C.ESTRES,C.USUREG USUREGRESP,C.FECREG FECREGRESP,'
            +'D.NOMVAL '
            +'FROM ASO_GENERA_ASIGNA_CARTERA_MOV A, '//CARTERA ASIGNADA
            +'ASO_HOJARUTA_MOV B, ' //DETALLE DE HOJA DE RUTA
            +'ASO_RESULT_ASEPREV_MOV C, ' //REULTADO
            +'APO201 D,APO158 DEPA,APO123 PROA,APO122 DISA, APO158 DEPC,APO123 PROC,APO122 DISC,'  //TABLAS DE DESCRIPCION
            +'(SELECT * FROM ASO_GENERICA_DET WHERE ESTREG=1 AND CODCAB=''RESULTADO'') D  '//DESCRIPCION DE RESULTADO
            +'WHERE A.CODGEN=B.CODGEN AND '
            +'C.CODUSU=B.CODUSU AND C.PERCAR=B.PERCAR AND C.ASOID=B.ASOID AND '
            +'D.VALDES01=C.TIPRES AND '
            +'D.ASOID=A.ASOID  AND '
            +'DEPA.DPTOID(+)=SUBSTR(A.UBIASO,1,2) AND '
            +'PROA.DPTOID(+)=SUBSTR(A.UBIASO,1,2) AND PROA.CIUDID(+)=SUBSTR(A.UBIASO,1,4) AND '
            +'DISA.DPTOID(+)=SUBSTR(A.UBIASO,1,2) AND DISA.CIUDID(+)=SUBSTR(A.UBIASO,1,4) AND DISA.ZIPID(+)=A.UBIASO AND '
            +'DEPC.DPTOID(+)=SUBSTR(A.UBICOL,1,2)    AND '
            +'PROC.DPTOID(+)=SUBSTR(A.UBICOL,1,2) AND PROC.CIUDID(+)=SUBSTR(A.UBICOL,1,4) AND '
            +'DISC.DPTOID(+)=SUBSTR(A.UBICOL,1,2) AND DISC.CIUDID(+)=SUBSTR(A.UBICOL,1,4) AND DISC.ZIPID(+)=A.UBICOL ' + xSqlWhere+') '
            +'WHERE   FECREGHOJARUTA BETWEEN TO_DATE('''+DateToStr(dtpInicio.DateTime)+''',''DD/MM/YYYY'') AND TO_DATE('''+DateToStr(dtpFin.DateTime)+''',''DD/MM/YYYY'') ';
         //--llenar la Grilla--//
       xSql:=' SELECT TIPRES,ESTRES,NOMVAL,COUNT(1) CANT FROM '+xSql+' GROUP BY TIPRES,ESTRES,NOMVAL ';
       DM1.cdsConsultaCartera.Close;
       DM1.cdsConsultaCartera.DataRequest(xSql);
       DM1.cdsConsultaCartera.Open;

       actfoot;

End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.bExportarClick(Sender: TObject);
Begin

   If dm1.cdsConsultaCartera.RecordCount=0 Then
   Begin
    ShowMessage('No existe información para mostrar');
    exit;
   End;

   dtgExcel.DataSource:=DM1.dsConsultaCartera;
   With dtgExcel, dtgExcel.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'ResumenResultado.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dtgExcel.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.bImprimirClick(Sender: TObject);
Begin
  If dm1.cdsConsultaCartera.RecordCount=0 Then
  Begin
   ShowMessage('No existe información para mostrar');
   exit;
  End;

  If chkTodoResponsable.Checked Then
       pplblResponsable.Caption := 'Responsable (Todos)'
  Else pplblResponsable.Caption := 'Responsable ('''+dblcdResponsable.Text+''')';
  pplbFecha.Caption := 'Fecha del '+DateToStr(dtpInicio.Date)+' Al '+DateToStr(dtpFin.Date);

  ppDBP1.DataSource := DM1.dsConsultaCartera;
  //ppdg1.ShowModal;
  RepResHojaRuta.Print;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.chkTodoResponsableClick(Sender: TObject);
Begin
 DM1.cdsConsultaCartera.EmptyDataSet;
 actfoot;
 If chkTodoResponsable.Checked Then
 Begin
   dblcdResponsable.Text    :='';
   dblcdResponsable.Enabled := False;
 End
 Else dblcdResponsable.Enabled := True;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.FormClose(Sender: TObject;
  var Action: TCloseAction);
Begin
  DM1.cdsDpto.Close;
  DM1.cdsDpto.IndexFieldNames:='';
  DM1.cdsTipoGes.Close;
  DM1.cdsTipoGes.IndexFieldNames:='';
  DM1.cdsResponsable.Close;
  DM1.cdsResponsable.IndexFieldNames:='';
  DM1.cdsConsultaCartera.Close;
  DM1.cdsConsultaCartera.IndexFieldNames:='';
  DM1.cdsProvin.Close;
  DM1.cdsProvin.IndexFieldNames:='';
  DM1.cdsDist.Close;
  DM1.cdsDist.IndexFieldNames:='';
  DM1.cdsColegio.Close;
  DM1.cdsColegio.IndexFieldNames:='';
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblcdResponsableChange(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
actfoot;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dtpInicioChange(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
actfoot;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dtpFinChange(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
actfoot;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.chkCADAPSClick(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.cbAfiliacionClick(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
actfoot;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.cbNovelesClick(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
actfoot;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.cbFamiliarizadaClick(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
actfoot;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.cbPreceseClick(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
actfoot;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.dblTipoGestChange(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
actfoot;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.rdgApoRegClick(Sender: TObject);
Begin
DM1.cdsConsultaCartera.EmptyDataSet;
actfoot;
End;
//Final HPC_201503_ASO

//Inicio HPC_201503_ASO
procedure TfReporteCartera.actfoot;
var vtotal:currency;
Begin
    DM1.cdsConsultaCartera.DisableControls;
    DM1.cdsConsultaCartera.First;
    vtotal:=0;
    While not DM1.cdsConsultaCartera.Eof Do
    Begin
      vtotal:=vtotal+DM1.cdsConsultaCartera.FieldByname('CANT').AsInteger;
      DM1.cdsConsultaCartera.Next;
    End;
    DM1.cdsConsultaCartera.First;
    DM1.cdsConsultaCartera.EnableControls;
    dbgResumenResultdos.ColumnByName('CANT').FooterValue:=FormatFloat('###,###',vtotal);
End;
//Final HPC_201503_ASO

end.
