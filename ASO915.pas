unit ASO915;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, wwdblook, Buttons, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,  DB, DBClient,
  ppBands, ppCache, ppCtrls, ppPrnabl, ppVar, ppEndUsr, ppParameter,
  ExtCtrls;

type
  TfRepBolDep = class(TForm)
    grbRepfPago: TGroupBox;
    DtpFecIni: TDateTimePicker;
    Label2: TLabel;
    DtpFecFin: TDateTimePicker;
    Label1: TLabel;
    BitPrint: TBitBtn;
    BitSalir: TBitBtn;
    ppDBRefPago: TppDBPipeline;
    ppRepfPago: TppReport;
    DBLUsuarios: TwwDBLookupCombo;
    LblUsuarios: TLabel;
    ppd1: TppDesigner;
    ppParameterList1: TppParameterList;
    Bevel1: TBevel;
    Bevel2: TBevel;
    bbtnBanco: TBitBtn;
    Bevel3: TBevel;
    Bevel4: TBevel;
    bbtnDevol: TBitBtn;
    pprBanco: TppReport;
    ppParameterList2: TppParameterList;
    pprDev: TppReport;
    ppParameterList3: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
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
    ppLblOFDes: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText41: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel111: TppLabel;
    ppDBText52: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLine5: TppLine;
    ppDBCalc3: TppDBCalc;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel90: TppLabel;
    ppDBText43: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppDBText9: TppDBText;
    ppLabel23: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc5: TppDBCalc;
    ppLine7: TppLine;
    ppLabel1: TppLabel;
    ppLabel27: TppLabel;
    ppLine8: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppLabel32: TppLabel;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppDBText37: TppDBText;
    ppLabel2: TppLabel;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBCalc13: TppDBCalc;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine4: TppLine;
    ppDBCalc14: TppDBCalc;
    ppLabel6: TppLabel;
    ppLabel24: TppLabel;
    ppDBText42: TppDBText;
    ppLabel63: TppLabel;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLabel67: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppDBText40: TppDBText;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel3: TppLabel;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppDBCalc15: TppDBCalc;
    ppLine21: TppLine;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLine22: TppLine;
    ppDBCalc16: TppDBCalc;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel33: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    pplTit1: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    pplTit2: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText49: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLine3: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine6: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel108: TppLabel;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel51: TppLabel;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBCalc7: TppDBCalc;
    ppLine11: TppLine;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine12: TppLine;
    ppDBCalc8: TppDBCalc;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppLabel104: TppLabel;
    ppLabel107: TppLabel;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel95: TppLabel;
    ppDBText44: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppDBCalc17: TppDBCalc;
    ppLine23: TppLine;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLine24: TppLine;
    ppDBCalc18: TppDBCalc;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel105: TppLabel;
    ppDBText48: TppDBText;
    ppLabel106: TppLabel;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppDBText45: TppDBText;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel109: TppLabel;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppDBCalc19: TppDBCalc;
    ppLine25: TppLine;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLine26: TppLine;
    ppDBCalc20: TppDBCalc;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel39: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    pplblTit1: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    pplblTit3: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText50: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc9: TppDBCalc;
    ppLine13: TppLine;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLine14: TppLine;
    ppDBCalc10: TppDBCalc;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel62: TppLabel;
    ppDBText34: TppDBText;
    ppLabel110: TppLabel;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBCalc11: TppDBCalc;
    ppLine17: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine18: TppLine;
    ppDBCalc12: TppDBCalc;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bbtnBancoClick(Sender: TObject);
    procedure bbtnDevolClick(Sender: TObject);
  private
    { Private declarations }

    function CountReg(xSQL:String):Integer;
  public
    { Public declarations }
  end;

var
  fRepBolDep: TfRepBolDep;

implementation

uses ASODM;

{$R *.dfm}

procedure TfRepBolDep.BitSalirClick(Sender: TObject);
begin
    If Copy(DM1.CrgArea(DM1.wUsuario),1,3)='SIS' Then DM1.cdsCtasBco.Close;

  Close;
end;


procedure TfRepBolDep.FormActivate(Sender: TObject);
begin
   DtpFecIni.Date := DM1.FechaSys;
   DtpFecFin.Date := DM1.FechaSys;
   LblUsuarios.Visible := True;
   DBLUsuarios.Visible := True;
   DM1.cdsCtasBco.Close;
   DM1.cdsCtasBco.DataRequest('SELECT USERID FROM USERTABLE WHERE ORIGEN='''+dm1.xOfiDes+''' ORDER BY USERID');
   DM1.cdsCtasBco.Open;
end;

procedure TfRepBolDep.BitPrintClick(Sender: TObject);
var
   xSql, xUsers : String;
begin
   xUsers:='';
   if DBLUsuarios.Text='' then
   begin
     DM1.cdsCtasBco.First;
     xUsers:='';
     While not DM1.cdsCtasBco.Eof do
     begin
        if xUsers='' then
           xUsers:=' '''+DM1.cdsCtasBco.FieldByname('USERID').AsString+''''
        else
           xUsers:=xUsers+', '''+DM1.cdsCtasBco.FieldByname('USERID').AsString+'''';
        DM1.cdsCtasBco.Next;
     end;
   end
   else
     xUsers:=QuotedStr(DBLUsuarios.Text);

   xUsers:=' and USUARIO IN ( '+xUsers+' ) ';

   DM1.cdsFPago.Close;
   xSql:='SELECT USUARIO, CRE310.BANCOID, BANCONOM, CCBCOID, CREFPAG, FREG, USEID, ASOCODMOD, ASOAPENOM, CREDOCPAG, CREDID, '
        +  'SUM(NVL(CREMTOCOB,0)) AS CREMTOCOB, SUM(NVL(CREAMORT,0)) AS CREAMORT, SUM(NVL(CREINTERES,0)) AS CREINTERES, '
        +  'SUM(NVL(CREFLAT,0)) AS CREFLAT, SUM(NVL(CREMTOEXC,0)) AS CREMTOEXC, '
        +  'CASE WHEN TO_CHAR(CREFPAG,''YYYYMM'')=TO_CHAR(FREG,''YYYYMM'') '
        +       'THEN ''A.- Fechas De Documento y Registro del Mismo Mes '' '
        +       'ELSE ''B.- Fechas De Documento y Registro de  Meses Diferentes'' '
        +  'END AS FILTRA '
        +'FROM CRE310, TGE105 '
        +'WHERE FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '
        +  'AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '
        +  xUsers+' AND FORPAGID='+QuotedStr(Trim('03'))+' AND CREESTID<>''13'' '
        +  'AND CRE310.BANCOID=TGE105.BANCOID '
        +'GROUP BY USUARIO, CRE310.BANCOID, BANCONOM, CCBCOID, '
        +  'CASE WHEN TO_CHAR(CREFPAG,''YYYYMM'')=TO_CHAR(FREG,''YYYYMM'') THEN ''A.- Fechas De Documento y Registro del Mismo Mes '' ELSE  ''B.- Fechas De Documento y Registro de  Meses Diferentes'' END, '
        +  'FREG, CREFPAG, USEID, CREDID, ASOCODMOD, ASOAPENOM, CREDOCPAG '
        +'ORDER BY USUARIO, CRE310.BANCOID, CCBCOID, FILTRA, FREG, USEID, CREDID';
   DM1.cdsFPago.DataRequest(xSql);
   DM1.cdsFPago.Open;
   ppLblTitulo.Caption := 'REGISTRO DE BOLETAS DE DEPOSITOS DE BANCOS DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
   ppLblOFDes.Caption  := 'OFICINA DESCONCENTRADA: '+DM1.CrgDescrip('OFDESID='+QuotedStr(Trim(DM1.xOfiDes)),'APO110','OFDESNOM');
   ppRepfPago.DataPipeline:=ppDBRefPago;
   ppRepfPago.Print;
   ppRepfPago.Cancel;
   ppRepfPago.DataPipeline:=nil;
   DM1.cdsFPago.Close;
end;

procedure TfRepBolDep.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

function TfRepBolDep.CountReg(xSQL: String): Integer;
Var xCount:Integer;
begin
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSQL);
  DM1.cdsQry.Open;
  xCount:=DM1.cdsQry.RecordCount;
  DM1.cdsQry.Close;
  Result:=xCount;
end;

procedure TfRepBolDep.bbtnBancoClick(Sender: TObject);
var
   xSql, xUsers : String;
begin
   xUsers:='';
     DM1.cdsCtasBco.First;
     xUsers:='';
     While not DM1.cdsCtasBco.Eof do
     begin
        if xUsers='' then
           xUsers:=' '''+DM1.cdsCtasBco.FieldByname('USERID').AsString+''''
        else
           xUsers:=xUsers+', '''+DM1.cdsCtasBco.FieldByname('USERID').AsString+'''';
        DM1.cdsCtasBco.Next;
     end;

   xUsers:=' and USUARIO IN ( '+xUsers+' ) ';

   DM1.cdsFPago.Close;
   xSql:='SELECT CRE310.BANCOID, BANCONOM, CCBCOID, CREFPAG, FREG, USEID, ASOCODMOD, ASOAPENOM, CREDOCPAG, CREDID, '
        +  'SUM(NVL(CREMTOCOB,0)) AS CREMTOCOB, SUM(NVL(CREAMORT,0)) AS CREAMORT, SUM(NVL(CREINTERES,0)) AS CREINTERES, '
        +  'SUM(NVL(CREFLAT,0)) AS CREFLAT, SUM(NVL(CREMTOEXC,0)) AS CREMTOEXC, '
        +  'CASE WHEN TO_CHAR(CREFPAG,''YYYYMM'')=TO_CHAR(FREG,''YYYYMM'') '
        +       'THEN ''A.- Fechas De Documento y Registro del Mismo Mes '' '
        +       'ELSE ''B.- Fechas De Documento y Registro de  Meses Diferentes'' '
        +  'END AS FILTRA '
        +'FROM CRE310, TGE105 '
        +'WHERE FREG BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '
        +  'AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '
        +  xUsers+' AND FORPAGID='+QuotedStr(Trim('03'))+' AND CREESTID<>''13'' '
        +  'AND CRE310.BANCOID=TGE105.BANCOID '
        +'GROUP BY CRE310.BANCOID, BANCONOM, CCBCOID, '
        +  'CASE WHEN TO_CHAR(CREFPAG,''YYYYMM'')=TO_CHAR(FREG,''YYYYMM'') THEN ''A.- Fechas De Documento y Registro del Mismo Mes '' ELSE  ''B.- Fechas De Documento y Registro de  Meses Diferentes'' END, '
        +  'FREG, CREFPAG, USEID, CREDID, ASOCODMOD, ASOAPENOM, CREDOCPAG '
        +'ORDER BY CRE310.BANCOID, CCBCOID, FILTRA, FREG, USEID, CREDID';
   DM1.cdsFPago.DataRequest(xSql);
   DM1.cdsFPago.Open;
   pplTit1.Caption := 'REGISTRO DE BOLETAS DE DEPOSITOS DE BANCOS DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
   pplTit2.Caption  := 'OFICINA DESCONCENTRADA: '+DM1.CrgDescrip('OFDESID='+QuotedStr(Trim(DM1.xOfiDes)),'APO110','OFDESNOM');
   pprBanco.DataPipeline:=ppDBRefPago;
   pprBanco.Print;
   pprBanco.Cancel;
   pprBanco.DataPipeline:=nil;

  DM1.cdsFPago.Close;

end;

procedure TfRepBolDep.bbtnDevolClick(Sender: TObject);
var
   xSql, xUsers : String;
begin
   xUsers:='';
   if DBLUsuarios.Text='' then
   begin
     DM1.cdsCtasBco.First;
     xUsers:='';
     While not DM1.cdsCtasBco.Eof do
     begin
        if xUsers='' then
           xUsers:=' '''+DM1.cdsCtasBco.FieldByname('USERID').AsString+''''
        else
           xUsers:=xUsers+', '''+DM1.cdsCtasBco.FieldByname('USERID').AsString+'''';
        DM1.cdsCtasBco.Next;
     end;
   end
   else
      xUsers:=QuotedStr(DBLUsuarios.Text);

   xUsers:=' and USUARIO IN ( '+xUsers+' ) ';

   DM1.cdsFPago.Close;
   xSql:='SELECT USUARIO, CRE310.BANCOID, BANCONOM, CCBCOID, FREG, CREFPAG, USEID, ASOCODMOD, ASOAPENOM, CREDOCPAG, CREDID, '
        +  'SUM(NVL(CREMTOCOB,0)) AS CREMTOCOB, SUM(NVL(CREAMORT,0)) AS CREAMORT, SUM(NVL(CREINTERES,0)) AS CREINTERES, '
        +  'SUM(NVL(CREFLAT,0)) AS CREFLAT, SUM(NVL(CREMTOEXC,0)) AS CREMTOEXC '
        +'FROM CRE310, TGE105 '
        +'WHERE FREG  BETWEEN To_Date('+QuotedStr(DateToStr(DtpFecIni.Date))+',''dd/mm/yyyy'') '
        +  'AND To_Date('+QuotedStr(DateToStr(DtpFecFin.Date))+',''dd/mm/yyyy'') '
        +  xUsers+' AND FORPAGID='+QuotedStr(Trim('03'))+' '
        +  'AND CREESTID=''13'' '
        +  'AND CRE310.BANCOID=TGE105.BANCOID '
        +'GROUP BY USUARIO, CRE310.BANCOID, BANCONOM, CCBCOID, FREG, USEID, CREDID, CREFPAG, ASOCODMOD, ASOAPENOM, CREDOCPAG '
        +'ORDER BY USUARIO, CRE310.BANCOID, CCBCOID, FREG, USEID, CREDID';
   DM1.cdsFPago.DataRequest(xSql);
   DM1.cdsFPago.Open;
   ppLblTit1.Caption := 'REGISTROS DE DEPOSITOS EN BANCO ANULADOS EN EL SISTEMA DEL '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
   pplblTit3.Caption  := 'OFICINA DESCONCENTRADA: '+DM1.CrgDescrip('OFDESID='+QuotedStr(Trim(DM1.xOfiDes)),'APO110','OFDESNOM');
   pprDev.DataPipeline:=ppDBRefPago;
   pprDev.Print;
   pprDev.Cancel;
   pprDev.DataPipeline:=nil;

  DM1.cdsFPago.Close;
end;

end.


