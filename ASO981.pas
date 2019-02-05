// Inicio Uso Estándares :	01/08/2011
// Unidad		             :	ASO981.pas
// Formulario		         :	FResumenWeb
// Fecha de Creación	   :	03/11/2017
// Autor			           :	Juan Contreras Arteaga
// Objetivo		           :  Reporte de resumen de envíos de generación de clave web
// Actualizaciones:
// HPC             FECHA       AUTOR      DESCRIPCION
// -------------------------------------------------------------------------------------------------------------------------
// HPC_201710_ASO  : Implementación de la opción de generación de clave Web
// HPC_201712_ASO  : Modificar reportes "Asignación clave web"

unit ASO981;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ComCtrls, StdCtrls,
  wwdbdatetimepicker, DBGrids, Buttons;

type
  TFResumenWeb = class(TForm)
    PageControl1: TPageControl;
    TabEnvios: TTabSheet;
    TabConsulta: TTabSheet;
    TabSheet1: TTabSheet;
    grid1: TwwDBGrid;
    dpFechaInicio1: TwwDBDateTimePicker;
    dpFechaFin1: TwwDBDateTimePicker;
    dpFechaInicio2: TwwDBDateTimePicker;
    dpFechaFin2: TwwDBDateTimePicker;
    dpFechaInicio3: TwwDBDateTimePicker;
    dpFechaFin3: TwwDBDateTimePicker;
    grid2: TwwDBGrid;
    grid3: TwwDBGrid;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    btnBuscar1: TBitBtn;
    btnSalir: TBitBtn;
    btnExportar1: TBitBtn;
    btnExportar2: TBitBtn;
    btnBuscar2: TBitBtn;
    btnBuscar3: TBitBtn;
    btnExportar3: TBitBtn;
    procedure btnBuscar1Click(Sender: TObject);
    procedure btnBuscar2Click(Sender: TObject);
    procedure btnBuscar3Click(Sender: TObject);
    procedure btnExportar1Click(Sender: TObject);
    procedure btnExportar2Click(Sender: TObject);
    procedure btnExportar3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure dpFechaInicio1Change(Sender: TObject);
    procedure dpFechaInicio2Change(Sender: TObject);
    procedure dpFechaInicio3Change(Sender: TObject);
// Inicio HPC_201712_ASO  : Modificar reportes "Asignación clave web"
    procedure TabEnviosShow(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
// Fin HPC_201712_ASO  : Modificar reportes "Asignación clave web"
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FResumenWeb: TFResumenWeb;

implementation

uses ASODM;

{$R *.dfm}

procedure TFResumenWeb.btnBuscar1Click(Sender: TObject);
VAR xSql:String;
// Inicio HPC_201712_ASO  : Modificar reportes "Asignación clave web"
TOTAL_CHARLA,TOTAL_ASESORIA,TOTAL_TELEFONO,TOTAL_PRESENCIAL,TOTAL_CORREO:Integer;
// Fin HPC_201712_ASO  : Modificar reportes "Asignación clave web"
begin
   if trim(dpfechaInicio1.Text)='' Then
   begin
    MessageDlg('Seleccione fecha inicio', mtInformation, [mbOk], 0);
    exit;
   End;
   if trim(dpfechafin1.Text)='' Then
   begin
    MessageDlg('Seleccione fecha fin', mtInformation, [mbOk], 0);
    exit;
   End;
   xSql := ' '
   +' SELECT D.DPTODES DEPARTAMENTO,  '
   +'SUM(CASE WHEN C.CODORI=1 THEN 1  '
   +'   ELSE 0 END) CHARLA, '
   +'SUM(CASE WHEN C.CODORI=2 THEN 1  '
   +'   ELSE 0 END) ASESORIA, '
   +' SUM(CASE WHEN C.CODORI=3 THEN 1 '
   +'   ELSE 0 END) TELEFONO, '
   +' SUM(CASE WHEN C.CODORI=4 THEN 1 '
   +'   ELSE 0 END) PRESENCIAL,'
   +' SUM(CASE WHEN C.CODORI=5 THEN 1 '
   +'   ELSE 0 END) CORREO '
   +' FROM ASO_CLA_WEB_HIS A,APO201 B,ASO_CLA_WEB_ORI C,APO158 D '
   +' WHERE A.ASOID=B.ASOID AND A.CODORI=C.CODORI AND SUBSTR(B.ZIPID,1,2)=D.DPTOID AND A.CODEST=1'
   +' AND TRUNC(A.FECREG) BETWEEN '+QuotedStr(dpfechaInicio1.Text)+' AND '+QuotedStr(dpfechafin1.Text)
   +' GROUP BY D.DPTODES';
     DM1.cdsQry1.Close;
     DM1.cdsQry1.DataRequest(xSql);
     DM1.cdsQry1.Open;
     grid1.DataSource := DM1.dsQry1;
     With grid1 Do
     Begin
        Selected.Clear;
        Selected.Add('DEPARTAMENTO'#9'30'#9'DEPARTAMENTO');
        Selected.Add('CHARLA'#9'15'#9'CHARLA');
        Selected.Add('ASESORIA'#9'15'#9'ASESORÍA');
        Selected.Add('TELEFONO'#9'15'#9'TELÉFONO');
        Selected.Add('PRESENCIAL'#9'15'#9'PRESENCIAL');
        Selected.Add('CORREO'#9'15'#9'CORREO');
        ApplySelected;
    End;
// Inicio HPC_201712_ASO  : Modificar reportes "Asignación clave web"
    TOTAL_CHARLA:=0;
    TOTAL_ASESORIA:=0;
    TOTAL_TELEFONO:=0;
    TOTAL_PRESENCIAL:=0;
    TOTAL_CORREO:=0;
    DM1.cdsQry1.First;
    while not DM1.cdsQry1.Eof do begin
      TOTAL_CHARLA:=TOTAL_CHARLA+DM1.cdsQry1.FieldByName('CHARLA').AsInteger;
      TOTAL_ASESORIA:=TOTAL_ASESORIA+DM1.cdsQry1.FieldByName('ASESORIA').AsInteger;
      TOTAL_TELEFONO:=TOTAL_TELEFONO+DM1.cdsQry1.FieldByName('TELEFONO').AsInteger;
      TOTAL_PRESENCIAL:=TOTAL_PRESENCIAL+DM1.cdsQry1.FieldByName('PRESENCIAL').AsInteger;
      TOTAL_CORREO:=TOTAL_CORREO+DM1.cdsQry1.FieldByName('CORREO').AsInteger;
      DM1.cdsQry1.Next;
    end;
    grid1.ColumnByName('DEPARTAMENTO').FooterValue := 'Total ';
    grid1.ColumnByName('CHARLA').FooterValue := FloatToStrF(TOTAL_CHARLA, ffNumber, 10, 0);
    grid1.ColumnByName('ASESORIA').FooterValue := FloatToStrF(TOTAL_ASESORIA, ffNumber, 10, 0);
    grid1.ColumnByName('TELEFONO').FooterValue := FloatToStrF(TOTAL_TELEFONO, ffNumber, 10, 0);
    grid1.ColumnByName('PRESENCIAL').FooterValue := FloatToStrF(TOTAL_PRESENCIAL, ffNumber, 10, 0);
    grid1.ColumnByName('CORREO').FooterValue := FloatToStrF(TOTAL_CORREO, ffNumber, 10, 0);
// Fin HPC_201712_ASO  : Modificar reportes "Asignación clave web"
end;

procedure TFResumenWeb.btnBuscar2Click(Sender: TObject);
var xSql:String;
// Inicio HPC_201712_ASO  : Modificar reportes "Asignación clave web"
TOTAL_CHARLA,TOTAL_ASESORIA,TOTAL_TELEFONO,TOTAL_PRESENCIAL,TOTAL_CORREO:Integer;
// Fin HPC_201712_ASO  : Modificar reportes "Asignación clave web"
begin
   if trim(dpfechaInicio2.Text)='' Then
   begin
    MessageDlg('Seleccione fecha inicio', mtInformation, [mbOk], 0);
    exit;
   End;
   if trim(dpfechafin2.Text)='' Then
   begin
    MessageDlg('Seleccione fecha fin', mtInformation, [mbOk], 0);
    exit;
   End;
   xSql:=''
+' SELECT TO_CHAR (A.FECREG, ''Month-YYYY'') PERIODO,'
+' SUM(CASE WHEN C.CODORI=1 THEN 1 '
+'   ELSE 0 END) CHARLA,           '
+' SUM(CASE WHEN C.CODORI=2 THEN 1 '
+'   ELSE 0 END) ASESORIA,         '
+' SUM(CASE WHEN C.CODORI=3 THEN 1 '
+'   ELSE 0 END) TELEFONO,         '
+' SUM(CASE WHEN C.CODORI=4 THEN 1 '
+'   ELSE 0 END) PRESENCIAL,       '
+' SUM(CASE WHEN C.CODORI=5 THEN 1 '
+'   ELSE 0 END) CORREO            '
+' FROM ASO_CLA_WEB_HIS A,APO201 B,ASO_CLA_WEB_ORI C,APO158 D  '
+' WHERE A.ASOID=B.ASOID AND A.CODORI=C.CODORI AND SUBSTR(B.ZIPID,1,2)=D.DPTOID AND A.CODEST=1 '
+' AND TRUNC(A.FECREG) BETWEEN '+QuotedStr(dpfechaInicio2.Text)+' AND '+QuotedStr(dpfechafin2.Text)
+' GROUP BY TO_CHAR (A.FECREG, ''Month-YYYY'')';
     DM1.cdsQry2.Close;
     DM1.cdsQry2.DataRequest(xSql);
     DM1.cdsQry2.Open;
     grid2.DataSource := DM1.dsQry2;
     With grid2 Do
     Begin
        Selected.Clear;
        Selected.Add('PERIODO'#9'30'#9'PERIODO');
        Selected.Add('CHARLA'#9'15'#9'CHARLA');
        Selected.Add('ASESORIA'#9'15'#9'ASESORÍA');
        Selected.Add('TELEFONO'#9'15'#9'TELÉFONO');
        Selected.Add('PRESENCIAL'#9'15'#9'PRESENCIAL');
        Selected.Add('CORREO'#9'15'#9'CORREO');
        ApplySelected;
    End;
// Inicio HPC_201712_ASO  : Modificar reportes "Asignación clave web"
    TOTAL_CHARLA:=0;
    TOTAL_ASESORIA:=0;
    TOTAL_TELEFONO:=0;
    TOTAL_PRESENCIAL:=0;
    TOTAL_CORREO:=0;
    DM1.cdsQry2.First;
    while not DM1.cdsQry2.Eof do begin
      TOTAL_CHARLA:=TOTAL_CHARLA+DM1.cdsQry2.FieldByName('CHARLA').AsInteger;
      TOTAL_ASESORIA:=TOTAL_ASESORIA+DM1.cdsQry2.FieldByName('ASESORIA').AsInteger;
      TOTAL_TELEFONO:=TOTAL_TELEFONO+DM1.cdsQry2.FieldByName('TELEFONO').AsInteger;
      TOTAL_PRESENCIAL:=TOTAL_PRESENCIAL+DM1.cdsQry2.FieldByName('PRESENCIAL').AsInteger;
      TOTAL_CORREO:=TOTAL_CORREO+DM1.cdsQry2.FieldByName('CORREO').AsInteger;
      DM1.cdsQry2.Next;
    end;
    grid2.ColumnByName('PERIODO').FooterValue := 'Total ';
    grid2.ColumnByName('CHARLA').FooterValue := FloatToStrF(TOTAL_CHARLA, ffNumber, 10, 0);
    grid2.ColumnByName('ASESORIA').FooterValue := FloatToStrF(TOTAL_ASESORIA, ffNumber, 10, 0);
    grid2.ColumnByName('TELEFONO').FooterValue := FloatToStrF(TOTAL_TELEFONO, ffNumber, 10, 0);
    grid2.ColumnByName('PRESENCIAL').FooterValue := FloatToStrF(TOTAL_PRESENCIAL, ffNumber, 10, 0);
    grid2.ColumnByName('CORREO').FooterValue := FloatToStrF(TOTAL_CORREO, ffNumber, 10, 0);
// Fin HPC_201712_ASO  : Modificar reportes "Asignación clave web"
end;

procedure TFResumenWeb.btnBuscar3Click(Sender: TObject);
var xSql:String;
begin
if trim(dpfechaInicio3.Text)='' Then
   begin
    MessageDlg('Seleccione fecha inicio', mtInformation, [mbOk], 0);
    exit;
   End;
   if trim(dpfechafin3.Text)='' Then
   begin
    MessageDlg('Seleccione fecha fin', mtInformation, [mbOk], 0);
    exit;
   End;
// Inicio HPC_201712_ASO  : Modificar reportes "Asignación clave web"
   xSql:=''
+' SELECT ROW_NUMBER() OVER(ORDER BY A.FECREG) ORDEN,TO_CHAR (A.FECREG, ''DD/MM/YYYY'') FECHA,A.USUREG,A.ASODNI DNI,'
+' A.NOMASO,C.DESORI ORIGEN,D.DPTODES DPTO,B.ASOTIPID,A.CORREO,ASONOMBRES NOMBRES,ASOAPEPAT,ASOAPEMAT '
+' FROM ASO_CLA_WEB_HIS A,APO201 B,ASO_CLA_WEB_ORI C,APO158 D  '
+' WHERE A.ASOID=B.ASOID AND A.CODORI=C.CODORI AND SUBSTR(B.ZIPID,1,2)=D.DPTOID AND A.CODEST=1 '
+' AND TRUNC(A.FECREG) BETWEEN '+QuotedStr(dpfechaInicio3.Text)+' AND '+QuotedStr(dpfechafin3.Text);
     DM1.cdsQry3.Close;
     DM1.cdsQry3.DataRequest(xSql);
     DM1.cdsQry3.Open;
     grid3.DataSource := DM1.dsQry3;
     With grid3 Do
     Begin
        Selected.Clear;
        Selected.Add('ORDEN'#9'10'#9'ORDEN');
        Selected.Add('FECHA'#9'15'#9'FECHA');
        Selected.Add('USUREG'#9'15'#9'USUARIO');
        Selected.Add('DNI'#9'15'#9'DNI');
        Selected.Add('ASOAPEPAT'#9'20'#9'APELLIDO PATERNO');
        Selected.Add('ASOAPEMAT'#9'20'#9'APELLIDO MATERNO');
        Selected.Add('NOMBRES'#9'20'#9'NOMBRES');
        Selected.Add('ORIGEN'#9'15'#9'ORIGEN');
        Selected.Add('DPTO'#9'30'#9'DPTO');
        Selected.Add('ASOTIPID'#9'10'#9'TIPO DE DOCENTE');
        Selected.Add('CORREO'#9'30'#9'CORREO');
        ApplySelected;
    End;
// Fin HPC_201712_ASO  : Modificar reportes "Asignación clave web"  
end;

procedure TFResumenWeb.btnExportar1Click(Sender: TObject);
begin
  try
  DBGrid1.DataSource:= DM1.dsQry1;
  If (DM1.cdsQry1.Active) and (DM1.cdsQry1.RecordCount > 0) Then
  Begin
    DM1.HojaExcel('Resumen',DM1.dsQry1, DBGrid1);
  End;
  except
  end;
end;

procedure TFResumenWeb.btnExportar2Click(Sender: TObject);
begin
try
DBGrid2.DataSource:= DM1.dsQry2;
If (DM1.cdsQry2.Active) and (DM1.cdsQry2.RecordCount > 0) Then
  Begin
    DM1.HojaExcel('Resumen',DM1.dsQry2, DBGrid2);
  End;
  except
  end;
end;

procedure TFResumenWeb.btnExportar3Click(Sender: TObject);
begin
try
DBGrid3.DataSource:= DM1.dsQry3;
If (DM1.cdsQry3.Active) and (DM1.cdsQry3.RecordCount > 0) Then
  Begin
    DM1.HojaExcel('Resumen',DM1.dsQry3, DBGrid3);
  End;
  except
  end;
end;

procedure TFResumenWeb.FormCreate(Sender: TObject);
begin
PageControl1.TabIndex:=0;
dpFechaInicio1.Date:=DM1.FechaSys;
dpFechaFin1.Date:=DM1.FechaSys;
dpFechaFin1.MinDate:=DM1.FechaSys;

dpFechaInicio2.Date:=DM1.FechaSys;
dpFechaFin2.Date:=DM1.FechaSys;
dpFechaFin2.MinDate:=DM1.FechaSys;

dpFechaInicio3.Date:=DM1.FechaSys;
dpFechaFin3.Date:=DM1.FechaSys;
dpFechaFin3.MinDate:=DM1.FechaSys;
end;

procedure TFResumenWeb.btnSalirClick(Sender: TObject);
begin
  try
    if DM1.cdsQry1.Active then  DM1.cdsQry1.EmptyDataSet;
  except
  end;
  try
  if DM1.cdsQry2.Active then  DM1.cdsQry2.EmptyDataSet;
  except
  end;
  try
  if DM1.cdsQry3.Active then  DM1.cdsQry3.EmptyDataSet;
  except
  end;
  Close;
end;

procedure TFResumenWeb.dpFechaInicio1Change(Sender: TObject);
begin
    dpFechaFin1.MinDate:= dpFechaInicio1.Date;
end;

procedure TFResumenWeb.dpFechaInicio2Change(Sender: TObject);
begin
dpFechaFin2.MinDate:= dpFechaInicio2.Date;
end;

procedure TFResumenWeb.dpFechaInicio3Change(Sender: TObject);
begin
dpFechaFin3.MinDate:= dpFechaInicio3.Date;
end;
// Inicio HPC_201712_ASO  : Modificar reportes "Asignación clave web"
procedure TFResumenWeb.TabEnviosShow(Sender: TObject);
begin
btnBuscar1Click(sender);
end;

procedure TFResumenWeb.TabConsultaShow(Sender: TObject);
begin
btnBuscar2Click(sender);
end;

procedure TFResumenWeb.TabSheet1Show(Sender: TObject);
begin
btnBuscar3Click(sender);
end;
// Fin HPC_201712_ASO  : Modificar reportes "Asignación clave web"
end.
