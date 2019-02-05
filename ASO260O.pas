// Inicio Uso Estándares : 14/12/2017
// Unidad                : ASO260O.pas
// Formulario            : FMantRegalo
// Fecha de Creación     : 14/12/2017
// Autor                 : Equipo de Desarrollo de Sistemas DM
// HPC_201713_ASO        : Registro de Obsequio para el asociado
// ASO_201808_HPC       : Cambio de regla para entrega de obsequio de PANETONES

unit ASO260O;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, StdCtrls, Buttons,
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
  wwdbdatetimepicker, ppEndUsr, ppParameter, Grids, DBGrids, jpeg, wwdblook,
  ExtCtrls;
//Fin ASO_201808_HPC 

type
  TFReporteEntregaPan = class(TForm)
    gboxFechas: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    dbdtpinicio: TwwDBDateTimePicker;
    dbdtpfinal: TwwDBDateTimePicker;
    btncerrar: TBitBtn;
    btnaexcel: TBitBtn;
    btnimprimir: TBitBtn;

    ppbdepreporte: TppBDEPipeline;
    pprrepres: TppReport;
    ppD: TppDesigner;
    ppParameterList1: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppShape2: TppShape;
    ppLabel2: TppLabel;
    ppShape3: TppShape;
    ppLabel3: TppLabel;
    ppShape4: TppShape;
    ppLabel4: TppLabel;
    ppShape5: TppShape;
    ppLabel5: TppLabel;
    ppShape6: TppShape;
    ppLabel6: TppLabel;
    ppShape7: TppShape;
    ppLabel7: TppLabel;
    ppShape8: TppShape;
    ppLabel8: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText1: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText13: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText14: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    dbgExcel: TDBGrid;
    ppImage1: TppImage;
    ppLabel13: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel14: TppLabel;
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    dblOficina: TwwDBLookupCombo;
    Label5: TLabel;
    Panel1: TPanel;
    edtofides: TEdit;
    Label6: TLabel;
    dblUSUREG: TwwDBLookupCombo;
    procedure FormActivate(Sender: TObject);
    procedure dblOficinaChange(Sender: TObject);
    procedure dblOficinaExit(Sender: TObject);
//Fin ASO_201808_HPC 
    procedure btnimprimirClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btnaexcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sOficinaId : String;
  end;

var
  FReporteEntregaPan: TFReporteEntregaPan;

implementation

uses ASODM;

{$R *.dfm}

procedure TFReporteEntregaPan.btnimprimirClick(Sender: TObject);
var
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
   xSQL,xfecini,xfecfin,xwhere: string;
//Fin ASO_201808_HPC
begin

//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    xwhere:='';
    If trim(dblOficina.Text)<>'00' Then
       xwhere:=xwhere+' AND SUBSTR(A.CODINC,1,2)='''+dblOficina.Text+''' ';

    If trim(dblUSUREG.Text)<>'TODOS' Then
       xwhere:=xwhere+' AND USUREG='''+TRIM(dblUSUREG.Text)+''' ';
//Fin ASO_201808_HPC
    If Length(Trim(dbdtpinicio.Text)) = 0 Then
    Begin
        MessageDlg(' Falta ingresar la Fecha Inicial.', mtError, [mbOk], 0);
        Exit;
    End;

    If Length(Trim(dbdtpfinal.Text)) = 0 Then
    Begin
        MessageDlg(' Falta ingresar la Fecha Final.', mtError, [mbOk], 0);
        Exit;
    End;
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    xfecini := Copy(DateToStr(dbdtpinicio.Date), 7, 4) +
               Copy(DateToStr(dbdtpinicio.Date), 4, 2) +
               Copy(DateToStr(dbdtpinicio.Date),1, 2);

    xfecfin := Copy(DateToStr(dbdtpfinal.Date), 7, 4) +
               Copy(DateToStr(dbdtpfinal.Date), 4, 2) +
               Copy(DateToStr(dbdtpfinal.Date), 1,2);

    if (xfecfin< xfecini) Then
    Begin
        MessageDlg('Ingrese un rango de fecha válido.', mtError,
        [mbOk], 0);
        exit;
    End;

    xfecini := Copy(DateToStr(dbdtpinicio.Date),1, 2) + '/' +
               Copy(DateToStr(dbdtpinicio.Date), 4, 2) + '/' +
               Copy(DateToStr(dbdtpinicio.Date), 7, 4);

    xfecfin := Copy(DateToStr(dbdtpfinal.Date), 1,2) + '/' +
              Copy(DateToStr(dbdtpfinal.Date), 4, 2) + '/' +
              Copy(DateToStr(dbdtpfinal.Date), 7, 4);

    xsql := 'SELECT  ( select x.ofdesnom from APO110 x where x.ofdesid = a.CODOFI ) SEDE_ENTREGA, ' +
             'a.usureg USUARIO_ENTREGA, ' +
             'NVL(TO_CHAR(a.fecent,''DD/MM/YYYY''),TO_CHAR(a.fecreg,''DD/MM/YYYY'')) FECHA_ENTREGA,E.DESINC INCURSIÓN, ' +
             'b.useid USEID, ' +
              '(select x.usenom from APO101 x where x.useid = b.useid and x.uproid = b.uproid and x.upagoid = b.upagoid ) USENOM, ' +
              '(select x.dptodes from APO158 x where x.dptoid = SUBSTR(d.ubigeo_dir,1,2)) DPTOLAB,' +
              '(select x.ciuddes from APO123 x where x.ciudid = SUBSTR(d.ubigeo_dir,1,4)) PROVLAB,' +
              '(select x.zipdes from APO122 x where x.zipid = d.ubigeo_dir)  DISTLAB,' +
              'b.asoapenom NOMGEN,' +
              'b.asodni ASODNI,' +
              'b.asotelf1 || ''/'' || b.asotelf2 TELEFONO_CELULAR,' +
              '(select x.dptodes from APO158 x where x.dptoid = SUBSTR(b.zipid,1,2)) DPTODOM,' +
              '(select x.ciuddes from APO123 x where x.ciudid = SUBSTR(b.zipid,1,4)) PROVDOM,' +
              '(select x.zipdes from APO122 x where x.zipid = b.zipid) DISTDOM ' +
              'FROM   ASO_CAT_REG_MOV a, APO201 b, ASO_CEN_EDU d, ASO_CAT_REG_INC e ' +
              'WHERE EXISTS (SELECT DISTINCT  CAMPANA,CODREG FROM ASO_CAT_REG_DET WHERE ACTIVO=''S'' AND A.CAMPANA=CAMPANA AND A.CODREG=CODREG) '+
              ' AND  b.asoid = a.asoid' +
              ' AND  b.CENEDUID = d.CENEDUID(+)' +
              ' AND  TRUNC(a.fecent,''DD'') >= TO_DATE('''+ xfecini + ''',''DD/MM/YYYY'')' +
              ' AND  TRUNC(a.fecent,''DD'') <= TO_DATE('''+ xfecfin + ''',''DD/MM/YYYY'')'+
              ' AND  A.CODINC=E.CODINC(+) ' +xwhere+
              ' ORDER BY ( select x.ofdesnom from APO110 x where x.ofdesid = a.CODOFI ), a.usureg, nvl(a.fecent,a.fecreg), b.asoapenom ' ;
//Fin  ASO_201808_HPC
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    ppLabel12.Caption := 'Fecha de Registro Del ' +  xfecini + ' Al ' + xfecfin;
    //ppd.ShowModal;
    If (DM1.cdsQry.Active) and (DM1.cdsQry.RecordCount > 0) Then
    Begin
        pprrepres.Print;
    End
    Else
    Begin
      ShowMessage('No existe información para procesar');
      exit;
    end;
//Fin  ASO_201808_HPC    
end;

procedure TFReporteEntregaPan.btncerrarClick(Sender: TObject);
begin
    close;
end;

procedure TFReporteEntregaPan.btnaexcelClick(Sender: TObject);
var
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
   xSQL,xfecini,xfecfin,xwhere: string;
//Fin ASO_201808_HPC
begin
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    xwhere:='';
    If trim(dblOficina.Text)<>'00' Then
       xwhere:=xwhere+' AND SUBSTR(A.CODINC,1,2)='''+dblOficina.Text+''' ';

    If trim(dblUSUREG.Text)<>'TODOS' Then
       xwhere:=xwhere+' AND USUREG='''+TRIM(dblUSUREG.Text)+''' ';
//Fin ASO_201808_HPC
    If Length(Trim(dbdtpinicio.Text)) = 0 Then
    Begin
        MessageDlg(' Falta ingresar la Fecha Inicial.', mtError, [mbOk], 0);
        Exit;
    End;

    If Length(Trim(dbdtpfinal.Text)) = 0 Then
    Begin
        MessageDlg(' Falta ingresar la Fecha Final.', mtError, [mbOk], 0);
        Exit;
    End;
    
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    xfecini := Copy(DateToStr(dbdtpinicio.Date), 7, 4) +
               Copy(DateToStr(dbdtpinicio.Date), 4, 2) +
               Copy(DateToStr(dbdtpinicio.Date),1, 2);

    xfecfin := Copy(DateToStr(dbdtpfinal.Date), 7, 4) +
               Copy(DateToStr(dbdtpfinal.Date), 4, 2) +
               Copy(DateToStr(dbdtpfinal.Date), 1,2);

    if (xfecfin< xfecini) Then
    Begin
        MessageDlg('Ingrese un rango de fecha válido.', mtError,
        [mbOk], 0);
        exit;
    End;

    xfecini := Copy(DateToStr(dbdtpinicio.Date),1, 2) + '/' +
               Copy(DateToStr(dbdtpinicio.Date), 4, 2) + '/' +
               Copy(DateToStr(dbdtpinicio.Date), 7, 4);

    xfecfin := Copy(DateToStr(dbdtpfinal.Date), 1,2) + '/' +
              Copy(DateToStr(dbdtpfinal.Date), 4, 2) + '/' +
              Copy(DateToStr(dbdtpfinal.Date), 7, 4);
    xsql := 'SELECT  ( select x.ofdesnom from APO110 x where x.ofdesid = a.CODOFI ) SEDE_REGISTRA, ' +
             'a.usureg USUARIO_REGISTRA,TO_CHAR(a.fecreg,''DD/MM/YYYY'') FECHA_REGISTRO, ' +
             'NVL(TO_CHAR(a.fecent,''DD/MM/YYYY''),TO_CHAR(a.fecreg,''DD/MM/YYYY'')) FECHA_ENTREGA,E.DESINC SE_ENTREGA, ' +
             'b.useid USEID, ' +
              '(select x.usenom from APO101 x where x.useid = b.useid and x.uproid = b.uproid and x.upagoid = b.upagoid ) USENOM, ' +
              '(select x.dptodes from APO158 x where x.dptoid = SUBSTR(d.ubigeo_dir,1,2)) DPTOLAB,' +
              '(select x.ciuddes from APO123 x where x.ciudid = SUBSTR(d.ubigeo_dir,1,4)) PROVLAB,' +
              '(select x.zipdes from APO122 x where x.zipid = d.ubigeo_dir)  DISTLAB,' +
              'b.asoapenom NOMGEN,' +
              'b.asodni ASODNI,' +
              'b.asotelf1 || ''/'' || b.asotelf2 TELEFONO_CELULAR,' +
              '(select x.dptodes from APO158 x where x.dptoid = SUBSTR(b.zipid,1,2)) DPTODOM,' +
              '(select x.ciuddes from APO123 x where x.ciudid = SUBSTR(b.zipid,1,4)) PROVDOM,' +
              '(select x.zipdes from APO122 x where x.zipid = b.zipid) DISTDOM ' +
              'FROM   ASO_CAT_REG_MOV a, APO201 b, ASO_CEN_EDU d,ASO_CAT_REG_INC e ' +
              'WHERE EXISTS (SELECT DISTINCT  CAMPANA,CODREG FROM ASO_CAT_REG_DET WHERE ACTIVO=''S'' AND A.CAMPANA=CAMPANA AND A.CODREG=CODREG) '+
              ' AND  b.asoid = a.asoid' +
              ' AND  b.CENEDUID = d.CENEDUID(+)' +
              ' AND  TRUNC(a.fecent,''DD'') >= TO_DATE('''+ xfecini + ''',''DD/MM/YYYY'')' +
              ' AND  TRUNC(a.fecent,''DD'') <= TO_DATE('''+ xfecfin + ''',''DD/MM/YYYY'')' +
              ' AND  A.CODINC=E.CODINC(+) ' +xwhere+
              ' ORDER BY ( select x.ofdesnom from APO110 x where x.ofdesid = a.CODOFI ), a.usureg, nvl(a.fecent,a.fecreg), b.asoapenom ' ;
//Fin ASO_201808_HPC

    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;

    dbgExcel.DataSource:= DM1.dsQry;
    If (DM1.cdsQry.Active) and (DM1.cdsQry.RecordCount > 0) Then
    Begin
        DM1.HojaExcel('Listado',DM1.dsQry, dbgExcel);
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    End
    Else
    Begin
      ShowMessage('No existe información para procesar');
      exit;
    end;
end;

procedure TFReporteEntregaPan.FormActivate(Sender: TObject);
var xsql,xsql1:String;
begin

   dbdtpfinal.Date  := dm1.FechaSys;
   dbdtpinicio.Date := dm1.FechaSys;
   xsql:='SELECT DISTINCT A.CODOFI,B.OFDESNOM FROM ASO_CAT_REG_DET A,APO110 B '+
         'WHERE A.ACTIVO=''S'' AND A.CODOFI=B.OFDESID '+
         ' UNION ALL '+
         'SELECT ''00'' CODOFI, '' TODOS'' OFDESNOM FROM DUAL '+
         'ORDER BY OFDESNOM ';
   DM1.cdsOfdes.Close;
   DM1.cdsOfdes.DataRequest(XSQL);
   DM1.cdsOfdes.Open;
   dblOficina.LookupTable := DM1.CdsOfDes;
   dblOficina.Text        := '00';
   dblOficina.Selected.Clear;
   dblOficina.Selected.Add('CODOFI'#9'3'#9'ID'#9'F'#9);
   dblOficina.Selected.Add('OFDESNOM'#9'30'#9'Ofides'#9'F'#9);

   xsql1:='SELECT DISTINCT USUREG FROM ASO_CAT_REG_MOV A '+
          'WHERE EXISTS (SELECT DISTINCT  CAMPANA,CODREG FROM ASO_CAT_REG_DET WHERE ACTIVO=''S'' AND A.CAMPANA=CAMPANA AND A.CODREG=CODREG)'+
          ' UNION ALL '+
          'SELECT '' TODOS'' USUREG FROM DUAL '+
          'ORDER BY USUREG ';
   DM1.cdsTMone.Close;
   DM1.cdsTMone.DataRequest(XSQL1);
   DM1.cdsTMone.Open;
   dblUSUREG.LookupTable := DM1.cdsTMone;
   dblUSUREG.Text        := ' TODOS';
   dblUSUREG.Selected.Clear;
   dblUSUREG.Selected.Add('USUREG'#9'30'#9'Ofides'#9'F'#9);
end;

procedure TFReporteEntregaPan.dblOficinaChange(Sender: TObject);
begin
  edtofides.Text :=DM1.cdsOfdes.fieldbyname('OFDESNOM').asstring;
end;

procedure TFReporteEntregaPan.dblOficinaExit(Sender: TObject);
begin
edtofides.Text :=DM1.cdsOfdes.fieldbyname('OFDESNOM').asstring;
//Fin  ASO_201808_HPC    
end;

end.
