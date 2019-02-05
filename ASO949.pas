unit ASO949;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Buttons, ComCtrls, ppDB, ppDBPipe, ppBands,
  ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppStrtch, ppSubRpt, ExtCtrls;

type
  TfRepDet = class(TForm)
    grbRepfPago: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    LblUsuarios: TLabel;
    DtpFecIni: TDateTimePicker;
    DtpFecFin: TDateTimePicker;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    DBLUsuarios: TwwDBLookupCombo;
    RepUser: TppReport;
    ppHeaderBand32: TppHeaderBand;
    Titulo: TppLabel;
    ppLabel681: TppLabel;
    ppLabel683: TppLabel;
    ppLabel684: TppLabel;
    ppLabel685: TppLabel;
    ppSystemVariable65: TppSystemVariable;
    ppSystemVariable66: TppSystemVariable;
    ppSystemVariable67: TppSystemVariable;
    ppLabel686: TppLabel;
    ppLabel687: TppLabel;
    ppLabel688: TppLabel;
    ppLine169: TppLine;
    ppLabel677: TppLabel;
    ppDBText276: TppDBText;
    ppDetailBand34: TppDetailBand;
    ppDBText278: TppDBText;
    ppDBText280: TppDBText;
    ppDBText281: TppDBText;
    ppDBText282: TppDBText;
    ppDBText287: TppDBText;
    ppDBText288: TppDBText;
    ppDBText289: TppDBText;
    ppDBText285: TppDBText;
    ppDBText286: TppDBText;
    ppDBText291: TppDBText;
    ppDBText279: TppDBText;
    ppFooterBand27: TppFooterBand;
    ppSummaryBand32: TppSummaryBand;
    ppLabel679: TppLabel;
    ppDBCalc223: TppDBCalc;
    ppLine167: TppLine;
    ppLine168: TppLine;
    ppGroup41: TppGroup;
    ppGroupHeaderBand41: TppGroupHeaderBand;
    ppDBText277: TppDBText;
    ppLabel676: TppLabel;
    ppLabel673: TppLabel;
    ppLabel674: TppLabel;
    ppLabel675: TppLabel;
    ppGroupFooterBand41: TppGroupFooterBand;
    ppDBCalc222: TppDBCalc;
    ppLabel678: TppLabel;
    ppLine166: TppLine;
    ppGroup42: TppGroup;
    ppGroupHeaderBand42: TppGroupHeaderBand;
    ppLabel660: TppLabel;
    ppLabel661: TppLabel;
    ppLabel662: TppLabel;
    ppLabel663: TppLabel;
    ppLabel664: TppLabel;
    ppLabel665: TppLabel;
    ppLabel666: TppLabel;
    ppLabel667: TppLabel;
    ppLabel668: TppLabel;
    ppLabel669: TppLabel;
    ppLabel670: TppLabel;
    ppLabel671: TppLabel;
    ppLabel672: TppLabel;
    ppLine164: TppLine;
    ppLine165: TppLine;
    ppLabel689: TppLabel;
    ppGroupFooterBand42: TppGroupFooterBand;
    DbRepUser: TppDBPipeline;
    ppLine1: TppLine;
    DbRepCta: TppDBPipeline;
    RepCta: TppReport;
    ppHeaderBand20: TppHeaderBand;
    ppLabel405: TppLabel;
    ppLabel407: TppLabel;
    ppLabel408: TppLabel;
    ppLabel409: TppLabel;
    ppSystemVariable32: TppSystemVariable;
    ppSystemVariable33: TppSystemVariable;
    ppSystemVariable34: TppSystemVariable;
    ppLabel410: TppLabel;
    ppLabel411: TppLabel;
    ppLabel412: TppLabel;
    ppLine108: TppLine;
    ppLabel416: TppLabel;
    ppLabel417: TppLabel;
    ppLabel418: TppLabel;
    ppLabel424: TppLabel;
    ppDetailBand22: TppDetailBand;
    ppDBText188: TppDBText;
    ppDBText187: TppDBText;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
    ppFooterBand15: TppFooterBand;
    ppSummaryBand20: TppSummaryBand;
    ppLabel403: TppLabel;
    ppLabel414: TppLabel;
    ppLabel415: TppLabel;
    ppDBCalc173: TppDBCalc;
    TitCta: TppLabel;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    lblUser: TppLabel;
    ppLabel2: TppLabel;
    DbRepRes: TppDBPipeline;
    RepRes: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine5: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    TitRes: TppLabel;
    ppLabel16: TppLabel;
    lblUsrRes: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    Panel1: TPanel;
    EdtUser: TEdit;
    ppLabel629: TppLabel;
    ppLabel18: TppLabel;
    ppLabel4: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure DBLUsuariosChange(Sender: TObject);
    procedure ppLabel22Print(Sender: TObject);
  private
    xtotgen:Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRepDet: TfRepDet;

implementation

uses ASODM;

{$R *.dfm}

procedure TfRepDet.FormActivate(Sender: TObject);
var xSQL:String;
begin
    DtpFecIni.Date := DM1.FechaSys;
    DtpFecFin.Date := DM1.FechaSys;
end;

procedure TfRepDet.BitPrintClick(Sender: TObject);
var xSql:String;
    xCant:Double;
begin

   xtotgen := 0;

   Screen.Cursor:=crHourGlass;

   xSQL:='SELECT TO_DATE(REGISTRO_AUD) FECHA,USUARIO_AUD,REGISTRO_AUD,SECUENCIA,CODREG,MODULOID,ASOID,ASOCODMOD,ASOAPENOMDNI, '+
         'ASOCODPAGO,ASODNI,ASOTIPID,USEID,UPROID,UPAGOID,A.REGPENID,B.REGPENABR,ASOFECNAC,ASOSEXO,0.5 REG  '+
         'FROM APO201_LOG A,APO105 B WHERE TO_DATE(REGISTRO_AUD) BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '+
         'AND A.REGPENID=B.REGPENID(+) AND MODULOID=''ASO'' AND USUARIO_AUD='+QuotedStr(Trim(DBLUsuarios.Text))+' AND SECUENCIA<2 ORDER BY USUARIO_AUD,REGISTRO_AUD,SECUENCIA';

         DM1.cdsSolicitud.Close;
         DM1.cdsSolicitud.DataRequest(xSQL);
         DM1.cdsSolicitud.Open;

         xSql := 'SELECT ASOID FROM APO201_LOG WHERE TO_DATE(REGISTRO_AUD) BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '
         +' AND MODULOID=''ASO'' AND USUARIO_AUD = '+QuotedStr(DBLUsuarios.Text)+' GROUP BY ASOID';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         ppLabel23.Caption := IntToStr(DM1.cdsQry.RecordCount);

         xSQL:='SELECT ASONCTA,ASOAPENOM,SITCTA,HREG FROM APO207 WHERE FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND USUARIO='+QuotedStr(Trim(DBLUsuarios.Text));
         DM1.cdsCreditos.Close;
         DM1.cdsCreditos.DataRequest(xSQL);
         DM1.cdsCreditos.Open;

   xSQL:='SELECT A.ASOCODMOD,B.ASOAPENOMDNI,C.TIPRESABRE,ASONRES,ASOFRES,A.HREG FROM APO205 A,APO201 B,APO104 C '+
         'WHERE A.FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') AND A.USUARIO='+QuotedStr(Trim(DBLUsuarios.Text))+' AND A.ASOID=B.ASOID AND A.RESID=C.TIPRESID ';
         DM1.cdsCuotas.Close;
         DM1.cdsCuotas.DataRequest(xSQL);
         DM1.cdsCuotas.Open;



   If DM1.cdsSolicitud.RecordCount > 0 Then
      Begin
         Titulo.Caption:='ACTUALIZACIONES REALIZADAS AL MAESTRO DE ASOCIADOS DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
         lblUser.Caption:=Trim(DBLUsuarios.Text);
         lblUsrRes.Caption:=lblUser.Caption;

         xSQL := 'SELECT ASOID FROM APO201_LOG'
         +' WHERE TO_DATE(REGISTRO_AUD) = '+QuotedStr(ppDBText277.Text)
         +' AND USUARIO_AUD = '+QuotedStr(DBLUsuarios.Text)+' GROUP BY ASOID';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         ppLabel22.Caption := IntToStr(DM1.cdsQry.RecordCount);
         RepUser.Print;
         RepUser.Cancel;
      End
   Else
      Begin
         MessageDlg('No EXISTEN Cambios Realizado En El MAESTRO DE ASOCIADOS Para Este Rango !!!!', mtError, [mbOk], 0);
      End;

   If DM1.cdsCreditos.RecordCount > 0 Then
      Begin
         TitCta.Caption:='MANTENIMIENTO DE CUENTA DE AHORROS DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
         RepCta.Print;
         RepCta.Cancel;
      End
   Else
      Begin
         MessageDlg('No EXISTEN Cambios Realizado En El MAESTRO DE CUENTAS DE AHORROS Para Este Rango !!!!', mtError, [mbOk], 0);
      End;

   If DM1.cdsCuotas.RecordCount > 0 Then
      Begin
         TitRes.Caption:='MANTENIMIENTO DE RESOLUCIONES DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
         RepRes.Print;
         RepRes.Cancel;
      End
    Else
      Begin
         MessageDlg('No EXISTEN Cambios Realizado En El MAESTRO DE RESOLUCIONES Para Este Rango !!!!', mtError, [mbOk], 0);
      End;


   Screen.Cursor:=crDefault;
   DM1.cdsSolicitud.Close;
   DM1.cdsCreditos.Close;
   DM1.cdsCuotas.Close;
end;

procedure TfRepDet.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfRepDet.DBLUsuariosChange(Sender: TObject);
begin
EdtUser.Text:=DM1.CrgDescrip('USERID='+QuotedStr(Trim(DBLUsuarios.Text)),'TGE006','USERNOM');
end;

procedure TfRepDet.ppLabel22Print(Sender: TObject);
Var xSql :String;
begin
  xSql := 'SELECT ASOID FROM APO201_LOG'
  +' WHERE TO_DATE(REGISTRO_AUD) = '+QuotedStr(ppDBText277.Text)
  +' AND USUARIO_AUD = '+QuotedStr(DBLUsuarios.Text)+' GROUP BY ASOID';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  ppLabel22.Caption := IntToStr(DM1.cdsQry.RecordCount);
end;



end.
