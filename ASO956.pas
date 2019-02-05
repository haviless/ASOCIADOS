unit ASO956;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdbedit, ExtCtrls, DB, DBClient,
  wwclient, Grids, Wwdbigrd, Wwdbgrid, ppDB, ppParameter, ppMemo, jpeg,
  ppCtrls, ppVar, ppBands, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppClass,
  ppCache, ppProd, ppComm, ppRelatv, ppDBPipe, ppDBBDE;

type
  TfMstCre = class(TForm)
    GroupBox1: TGroupBox;
    BitSalir: TBitBtn;
    pnlDatos: TPanel;
    dbeIngPla: TwwDBEdit;
    dbeDesNac: TwwDBEdit;
    GroupBox4: TGroupBox;
    dbeMonCal: TwwDBEdit;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    dbeMonDisp: TwwDBEdit;
    bitGrabar: TBitBtn;
    ppBDEPInfCre: TppBDEPipeline;
    ppInfCre: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape2: TppShape;
    ppShape1: TppShape;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBASODNI: TppDBText;
    ppDBASOAPENOM: TppDBText;
    ppDBASORESNOM: TppDBText;
    ppDBASOFRESNOM: TppDBText;
    ppDBASORESCESE: TppDBText;
    ppDBASOFRESCESE: TppDBText;
    lblAsotipdes: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    lblDes_1: TppLabel;
    lblmonto_1: TppLabel;
    lblFor_1: TppLabel;
    lblDes_2: TppLabel;
    lblmonto_2: TppLabel;
    lblFor_2: TppLabel;
    lblDes_3: TppLabel;
    lblmonto_3: TppLabel;
    lblFor_3: TppLabel;
    lblDes_4: TppLabel;
    lblmonto_4: TppLabel;
    lblFor_4: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel42: TppLabel;
    ppDBASOCODMOD: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    lblUPago: TppLabel;
    lblUse: TppLabel;
    lblAsoncta: TppLabel;
    lblRegPen: TppLabel;
    ppLabel63: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel11: TppLabel;
    lbl0201: TppLabel;
    ppSRInfCre: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppLabel19: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText12: TppDBText;
    ppLabel29: TppLabel;
    ppDBText13: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel33: TppLabel;
    ppDBText17: TppDBText;
    ppLabel38: TppLabel;
    ppDBText9: TppDBText;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppDBText3: TppDBText;
    ppLabel62: TppLabel;
    pplblsindeuda: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppDBText29: TppDBText;
    ppLabel106: TppLabel;
    ppLabel107: TppLabel;
    ppDBText30: TppDBText;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    lblRecCre: TppLabel;
    lblInfRecCre: TppLabel;
    lblMonRecCre: TppLabel;
    lbl0301: TppLabel;
    ppLabel10: TppLabel;
    lblCalGen: TppLabel;
    ppLabel16: TppLabel;
    sbDeuFin: TppSubReport;
    ppChildReport2: TppChildReport;
    ppDetailBand3: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppShape7: TppShape;
    ppShape24: TppShape;
    ppSummaryBand2: TppSummaryBand;
    ppLabel17: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    SRMensaje: TppSubReport;
    SRMensajes: TppChildReport;
    ppDetailBand4: TppDetailBand;
    ppDBText28: TppDBText;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppSummaryBand3: TppSummaryBand;
    ppShape6: TppShape;
    ppLabel37: TppLabel;
    ppLabel32: TppLabel;
    ppLabel36: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    lblCreCapLiq: TppLabel;
    lblMonDesBol: TppLabel;
    lblCapEnd: TppLabel;
    lbl42: TppLabel;
    ppLabel49: TppLabel;
    lblUsuario: TppLabel;
    ppLabel50: TppLabel;
    ppLabel2: TppLabel;
    ppLabel12: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    pplblOficina: TppLabel;
    ppShape23: TppShape;
    ppShape3: TppShape;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel98: TppLabel;
    ppLabel99: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLabel103: TppLabel;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppLabel80: TppLabel;
    ppLabel108: TppLabel;
    ppLabel109: TppLabel;
    ppLabel110: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppImage3: TppImage;
    ppLabel48: TppLabel;
    ppLabel64: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppMemo1: TppMemo;
    ppDetailBand1: TppDetailBand;
    ppParameterList1: TppParameterList;
    ppBDEPCre: TppBDEPipeline;
    cdsEntidad: TClientDataSet;
    ppBDEPDeuFin: TppBDEPipeline;
    ppBDEPSBS: TppBDEPipeline;
    cdsMensajes: TClientDataSet;
    dsMensajes: TDataSource;
    dsEntidad: TDataSource;
    ppBDEPMensajes: TppBDEPipeline;
    ppBDEPMensajesppField1: TppField;
    ppLine1: TppLine;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    lblVerif: TppLabel;
    Panel2: TPanel;
    rdbPcal: TRadioButton;
    rdbRech: TRadioButton;
    BtnImprime: TBitBtn;
    rdbNoeval: TRadioButton;
    ppLabel3: TppLabel;
    ppLabel13: TppLabel;
    ppDBText31: TppDBText;
    procedure BitSalirClick(Sender: TObject);
    procedure dbeIngPlaExit(Sender: TObject);
    procedure dbeDesNacExit(Sender: TObject);
    procedure dbeIngPlaKeyPress(Sender: TObject; var Key: Char);
    procedure dbeDesNacKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bitGrabarClick(Sender: TObject);
    procedure BtnImprimeClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    procedure invicre;
    procedure visicre;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMstCre: TfMstCre;

implementation

uses ASO900, ASODM , ASO908, AS0958;

{$R *.dfm}

procedure TfMstCre.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfMstCre.dbeIngPlaExit(Sender: TObject);
begin
dbeIngPla.Text:=FOtorPre.FormatoNumeros(dbeIngPla.Text);
end;

procedure TfMstCre.dbeDesNacExit(Sender: TObject);
begin
dbeDesNac.Text:=FOtorPre.FormatoNumeros(dbeDesNac.Text);
dbeMonCal.Text:=FOtorPre.FormatoNumeros(FloatToStr((DM1.Valores(dbeIngPla.Text)-DM1.Valores(dbeDesNac.Text))));
dbeMonDisp.Text:=FOtorPre.FormatoNumeros(FloatToStr(DM1.Valores(dbeMonCal.Text)*42/100));
bitGrabar.Enabled := True;
bitGrabar.SetFocus;
end;

procedure TfMstCre.dbeIngPlaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfMstCre.dbeDesNacKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TfMstCre.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

procedure TfMstCre.bitGrabarClick(Sender: TObject);
Var xSql, xCorrelativo:String;
Begin
  If DM1.Valores(dbeIngPla.Text) = 0 Then
  Begin
    MessageDlg('No se ingreso el Ingreso neto planilla!', mtConfirmation, [mbYes], 0);
    dbeIngPla.SetFocus;
  End
  Else
  Begin
    If MessageDlg('¿ Seguro De Grabar ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
    Begin
      xSql := 'SELECT MAX(LPAD(CORRELATIVO+1,2,''0'')) CORRELATIVO FROM CRE322 WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xCorrelativo := DM1.cdsQry.FieldByName('CORRELATIVO').AsString;
      If xCorrelativo = '' Then xCorrelativo := '01';
      xSql := 'INSERT INTO CRE322 (ASOID, USUREG, FECREG, CRECAPLIQ, MONDESBOL, CORRELATIVO)'
      +' VALUES ('+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','+QuotedStr(DM1.wUsuario)+', SYSDATE, '
      +FloatToStr(DM1.Valores(dbeIngPla.Text))+','+FloatToStr(DM1.Valores(dbeDesNac.Text))+','+QuotedStr(xCorrelativo)+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      MessageDlg('Se Grabo con Exito!', mtInformation, [mbYes], 0);
      BtnImprime.Enabled := True;
      bitGrabar.Enabled := False;
      BtnImprime.SetFocus;
    End;
  End;
End;


procedure TfMstCre.BtnImprimeClick(Sender: TObject);
Var xSql,xAno, xMes,xClfAso,xAsoId :String;
  xAnomes_1, xAnomes_2, xAnomes_3, xAnomes_4:String;
  xAnon, xMesn : Integer;
  xMontot : Real;
  xCuoVen, xCuoNoVen : Integer;
  linea1, linea2 :integer;
  texto :String;
begin
  xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;
  xClfAso:=  DM1.AsoClfPen(DM1.cdsAso.fieldByName('ASOID').AsString,Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2))+DM1.AsoClfCan(DM1.cdsAso.fieldByName('ASOID').AsString);
  xSql := 'SELECT * FROM CLF000 where IDCLF = '+QuotedStr(xClfAso);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  lblRecCre.Caption    := DM1.cdsQry.FieldByName('IDCLF').AsString;
  lblMonRecCre.Caption := FloatToStrF(DM1.cdsQry.FieldByName('MTOCLF').AsFloat, ffNumber, 15,2);
  lblInfRecCre.Caption := DM1.cdsQry.FieldByName('DESCLF').AsString;
  xSql := 'SELECT ASOID, CALNORULTMES, CALCPPULTMES, CALDEFULTMES, CALDUDULTMES, CALPERULTMES, CALNORULTMESANT,'
  +' CALCPPULTMESANT, CALDEFULTMESANT, CALDUDULTMESANT, CALPERULTMESANT, CALNORULTMESANT1,'
  +' CALCPPULTMESANT1, CALDEFULTMESANT1, CALDUDULTMESANT1, CALPERULTMESANT1, TOTDEUENT1,'
  +' TOTDEUENT2, TOTDEUENT3, TOTDEUENT4, TOTDEUENT5, TOTDEUENT6, TOTDEUENT7, TOTDEUENT8, TOTDEUENT9,'
  +' TOTDEUENT10, TOTDEUENT11, TOTDEUENT12, TOTDEUENT13, DIRASO1, DIRASO2, DIRASO3, TELASO1,'
  +' TELASO2, CALGEN, SUBSTR(MENOBS,1, LENGTH(TRIM(MENOBS))) MENOBS, SUBSTR(MENRECSBS,1, LENGTH(TRIM(MENOBS))) MENRECSBS,'
  +' SUBSTR(MENRECMOR,1, LENGTH(TRIM(MENOBS))) MENRECMOR, SUBSTR(MENRECPRO,1, LENGTH(TRIM(MENOBS))) MENRECPRO,'
  +' SUBSTR(MENRECADV,1, LENGTH(TRIM(MENOBS))) MENRECADV FROM COB_DEU_ASO_ENT WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
  DM1.cdsCuotas.Close;
  DM1.cdsCuotas.DataRequest(xSql);
  DM1.cdsCuotas.Open;
  cdsEntidad.EmptyDataSet;
  If DM1.cdsCuotas.FieldByName('TOTDEUENT1').AsFloat  <> 0 Then
  Begin
    cdsEntidad.Append;
    cdsEntidad.FieldByName('ENTIDAD').AsString := 'BCP';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT1').AsFloat;
    cdsEntidad.Post;
  End;
  If DM1.cdsCuotas.FieldByName('TOTDEUENT2').AsFloat  <> 0 Then
  Begin
    cdsEntidad.Append; cdsEntidad.FieldByName('ENTIDAD').AsString := 'INTERBANK';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT2').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT3').AsFloat  <> 0 Then
  Begin
    cdsEntidad.Append;
    cdsEntidad.FieldByName('ENTIDAD').AsString := 'BWS';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT3').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT4').AsFloat  <> 0 Then
  Begin
    cdsEntidad.Append;
    cdsEntidad.FieldByName('ENTIDAD').AsString := 'BBVA';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT4').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT5').AsFloat  <> 0 Then
  Begin
    cdsEntidad.Append; cdsEntidad.FieldByName('ENTIDAD').AsString := 'CITIBANK';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT5').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT6').AsFloat  <> 0 Then
  Begin
    cdsEntidad.Append; cdsEntidad.FieldByName('ENTIDAD').AsString := 'BIF';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT6').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT7').AsFloat  <> 0 Then
  Begin
    cdsEntidad.Append;
    cdsEntidad.FieldByName('ENTIDAD').AsString := 'BANCO DEL TRABAJO';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT7').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT8').AsFloat  <> 0 Then
  Begin
    cdsEntidad.Append; cdsEntidad.FieldByName('ENTIDAD').AsString := 'CORDILLERA-RIPLEY';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT8').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT9').AsFloat  <> 0 Then
  Begin
    cdsEntidad.Append; cdsEntidad.FieldByName('ENTIDAD').AsString := 'CMR-SAGA';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT9').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT10').AsFloat <> 0 Then
  Begin
    cdsEntidad.Append; cdsEntidad.FieldByName('ENTIDAD').AsString := 'SUDAMERICANO';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT10').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT11').AsFloat <> 0 Then
  Begin
    cdsEntidad.Append; cdsEntidad.FieldByName('ENTIDAD').AsString := 'MIBANCO';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT11').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT12').AsFloat <> 0 Then
  Begin
    cdsEntidad.Append;
    cdsEntidad.FieldByName('ENTIDAD').AsString := 'BANCO DE LA NACION';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT12').AsFloat;
    cdsEntidad.Post;
  End;

  If DM1.cdsCuotas.FieldByName('TOTDEUENT13').AsFloat <> 0 Then
  Begin
    cdsEntidad.Append;
    cdsEntidad.FieldByName('ENTIDAD').AsString := 'OTROS';
    cdsEntidad.FieldByName('MONTO').AsFloat := DM1.cdsCuotas.FieldByName('TOTDEUENT13').AsFloat;
    cdsEntidad.Post;
  End;

  If cdsEntidad.RecordCount = 0 Then
  Begin
    cdsEntidad.Append;
    cdsEntidad.FieldByName('ENTIDAD').AsString := 'NO SE REPORTO DEUDAS';
    cdsEntidad.FieldByName('MONTO').AsFloat   := 0;
    cdsEntidad.Post;
  End;

  cdsMensajes.EmptyDataSet;
  If Trim(DM1.cdsCuotas.FieldByName('MENOBS').AsString)    <> '' Then
  Begin
    cdsMensajes.Append; cdsMensajes.FieldByName('MENSAJE').AsString := 'OBS: '+DM1.cdsCuotas.FieldByName('MENOBS').AsString;
    cdsMensajes.Post;
  End;

  If Trim(DM1.cdsCuotas.FieldByName('MENRECSBS').AsString) <> '' Then
  Begin
    cdsMensajes.Append; cdsMensajes.FieldByName('MENSAJE').AsString := 'REC: '+DM1.cdsCuotas.FieldByName('MENRECSBS').AsString;
    cdsMensajes.Post;
  End;

  If Trim(DM1.cdsCuotas.FieldByName('MENRECMOR').AsString) <> '' Then
  Begin
     cdsMensajes.Append; cdsMensajes.FieldByName('MENSAJE').AsString := 'MOR: '+DM1.cdsCuotas.FieldByName('MENRECMOR').AsString;
     cdsMensajes.Post;
  End;

  If Trim(DM1.cdsCuotas.FieldByName('MENRECPRO').AsString) <> '' Then
  Begin
    cdsMensajes.Append; cdsMensajes.FieldByName('MENSAJE').AsString := 'PRO: '+DM1.cdsCuotas.FieldByName('MENRECPRO').AsString;
    cdsMensajes.Post;
  End;

  If Trim(DM1.cdsCuotas.FieldByName('MENRECADV').AsString) <> '' Then
  Begin
    cdsMensajes.Append; cdsMensajes.FieldByName('MENSAJE').AsString := 'ADV: '+DM1.cdsCuotas.FieldByName('MENRECADV').AsString;
    cdsMensajes.Post;
  End;

  If cdsMensajes.RecordCount = 0 Then
  Begin
    cdsMensajes.Append; cdsMensajes.FieldByName('MENSAJE').AsString := 'NO SE ENCONTRO NINGUN TIPO DE OBSERVACION';
    cdsMensajes.Post;
  End;
  If DM1.cdsCuotas.FieldByName('CALGEN').AsString='A' Then
     lblCalGen.Caption := DM1.cdsCuotas.FieldByName('CALGEN').AsString+' - APROBADO'
  Else If DM1.cdsCuotas.FieldByName('CALGEN').AsString='R' Then
     lblCalGen.Caption := DM1.cdsCuotas.FieldByName('CALGEN').AsString+' - RECHAZADO'
  Else If DM1.cdsCuotas.FieldByName('CALGEN').AsString='O' Then
     lblCalGen.Caption := DM1.cdsCuotas.FieldByName('CALGEN').AsString+' - OBSERVADO'
  Else
     lblCalGen.Caption := DM1.cdsCuotas.FieldByName('CALGEN').AsString+' - NO EVALUADO';


  xSql := 'SELECT * FROM APO105 WHERE REGPENID = '+QuotedStr(DM1.cdsAso.FieldByName('REGPENID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  lblRegPen.Caption := DM1.cdsQry.FieldByName('REGPENDES').AsString;
  lblUsuario.Caption:= DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  lblAsoncta.Caption := DM1.cdsAso.FieldByName('ASONCTA').AsString+'-'+DM1.cdsAso.FieldByName('SITCTA').AsString;
  xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)
  +' AND UPAGOID = '+QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  lblUPago.Caption := DM1.cdsQry.FieldByName('UPAGONOM').AsString;
  xSql := 'SELECT USENOM FROM APO101 WHERE UPROID = '+QuotedStr(DM1.cdsAso.FieldByName('UPROID').AsString)
  +' AND UPAGOID = '+QuotedStr(DM1.cdsAso.FieldByName('UPAGOID').AsString)+' AND USEID = '+QuotedStr(DM1.cdsAso.FieldByName('USEID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  lblUse.Caption := DM1.cdsQry.FieldByName('USENOM').AsString;
  xSql := 'SELECT A.* FROM CRE322 A, (SELECT ASOID, MAX(CORRELATIVO) CORRELATIVO FROM CRE322 WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
  +' GROUP BY ASOID) B WHERE A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
  +' AND A.CORRELATIVO = B.CORRELATIVO';
  DM1.cdsTGarantia.Close;
  DM1.cdsTGarantia.DataRequest(xSql);
  DM1.cdsTGarantia.Open;
  DM1.xSgr := 'INCR';
  ppImage1.picture:= fMatAso.ImagAso.picture;
  ppImage2.picture:= fMatAso.ImaFirma.Picture;
  If DM1.cdsTGarantia.RecordCount = 0 Then
  Begin
    MessageDlg('No existe información ingresada de la boleta del asociado', mtConfirmation, [mbYes], 0);
    Exit;
  End;
  lblCreCapLiq.Caption := FloatToStrF(DM1.cdsTGarantia.FieldByName('CRECAPLIQ').AsFloat, ffNumber, 15,2);
  lblMonDesBol.Caption := FloatToStrF(DM1.cdsTGarantia.FieldByName('MONDESBOL').AsFloat, ffNumber, 15,2);
  lblCapEnd.Caption := FloatToStrF(DM1.cdsTGarantia.FieldByName('CRECAPLIQ').AsFloat-DM1.cdsTGarantia.FieldByName('MONDESBOL').AsFloat, ffNumber, 15,2);
  lbl42.Caption     := FloatToStrF((DM1.cdsTGarantia.FieldByName('CRECAPLIQ').AsFloat-DM1.cdsTGarantia.FieldByName('MONDESBOL').AsFloat)*0.42, ffNumber, 15,2);
  //Aportes
  xAnon := StrToInt(Copy(DateToStr(DM1.FechaSys), 7,4));
  xMesn := strtoint(Copy(DateToStr(DM1.FechaSys), 4,2));
  //Ano mes 1
  If xMesn = 1 Then xAnomes_1 := DM1.strzero(IntToStr(xAnon-1), 4)+'12' Else xAnomes_1 := DM1.strzero(IntToStr(xAnon), 4)+DM1.strzero(IntToStr(xMesn-1), 2);
  lblDes_1.Caption   := DM1.DesMes(StrToInt(Copy(xAnomes_1,5,2)),'N')+' - '+Copy(xAnomes_1,1,4);
  lblmonto_1.Caption := '0.00';
  xSql := 'SELECT * FROM APO301 WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
  +' AND TRANSANO||TRANSMES = '+QuotedStr(xAnomes_1);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount > 0 Then
  Begin
    lblmonto_1.Caption := FloatToStrF(DM1.cdsQry.FieldByName('TRANSMTO').AsFloat+DM1.cdsQry.FieldByName('TRANSMTODEV').AsFloat, ffNumber, 15,2);
    lblFor_1.Caption   := DM1.cdsQry.FieldByName('FORPAGOABR').AsString;
  End;
  //Ano mes 2
  xAnon := StrToInt(Copy(xAnomes_1, 1,4));
  xMesn := strtoint(Copy(xAnomes_1, 5,2));
  If xMesn = 1 Then xAnomes_2 := DM1.strzero(IntToStr(xAnon-1), 4)+'12' Else xAnomes_2 := DM1.strzero(IntToStr(xAnon), 4)+DM1.strzero(IntToStr(xMesn-1), 2);
  lblDes_2.Caption   := DM1.DesMes(StrToInt(Copy(xAnomes_2,5,2)),'N')+' - '+Copy(xAnomes_2,1,4);
  lblmonto_2.Caption := '0.00';
  xSql := 'SELECT * FROM APO301 WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
  +' AND TRANSANO||TRANSMES = '+QuotedStr(xAnomes_2);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount > 0 Then
  Begin
    lblmonto_2.Caption := FloatToStrF(DM1.cdsQry.FieldByName('TRANSMTO').AsFloat+DM1.cdsQry.FieldByName('TRANSMTODEV').AsFloat, ffNumber, 15,2);
    lblFor_2.Caption   := DM1.cdsQry.FieldByName('FORPAGOABR').AsString;
  End;
  //Ano mes 3
  xAnon := StrToInt(Copy(xAnomes_2, 1,4));
  xMesn := strtoint(Copy(xAnomes_2, 5,2));
  If xMesn = 1 Then xAnomes_3 := DM1.strzero(IntToStr(xAnon-1), 4)+'12' Else xAnomes_3 := DM1.strzero(IntToStr(xAnon), 4)+DM1.strzero(IntToStr(xMesn-1), 2);
  lblDes_3.Caption   := DM1.DesMes(StrToInt(Copy(xAnomes_3,5,2)),'N')+' - '+Copy(xAnomes_3,1,4);
  lblmonto_3.Caption := '0.00';
  xSql := 'SELECT * FROM APO301 WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
  +' AND TRANSANO||TRANSMES = '+QuotedStr(xAnomes_3);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount > 0 Then
  Begin
    lblmonto_3.Caption := FloatToStrF(DM1.cdsQry.FieldByName('TRANSMTO').AsFloat+DM1.cdsQry.FieldByName('TRANSMTODEV').AsFloat, ffNumber, 15,2);
    lblFor_3.Caption   := DM1.cdsQry.FieldByName('FORPAGOABR').AsString;
  End;
  //Ano mes 4
  xAnon := StrToInt(Copy(xAnomes_3, 1,4));
  xMesn := strtoint(Copy(xAnomes_3, 5,2));
  If xMesn = 1 Then xAnomes_4 := DM1.strzero(IntToStr(xAnon-1), 4)+'12' Else xAnomes_4 := DM1.strzero(IntToStr(xAnon), 4)+DM1.strzero(IntToStr(xMesn-1), 2);
  lblDes_4.Caption   := DM1.DesMes(StrToInt(Copy(xAnomes_4,5,2)),'N')+' - '+Copy(xAnomes_4,1,4);
  lblmonto_4.Caption := '0.00';
  xSql := 'SELECT * FROM APO301 WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
  +' AND TRANSANO||TRANSMES = '+QuotedStr(xAnomes_4);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount > 0 Then
  Begin
    lblmonto_4.Caption := FloatToStrF(DM1.cdsQry.FieldByName('TRANSMTO').AsFloat+DM1.cdsQry.FieldByName('TRANSMTODEV').AsFloat, ffNumber, 15,2);
    lblFor_4.Caption   := DM1.cdsQry.FieldByName('FORPAGOABR').AsString;
  End;
  //Creditos
  xSql := 'SELECT C.TIPCREDES, A.CREMTOOTOR, B.CREMTO,  A.CREFOTORG, A.CRENUMCUO, TO_DATE(A.CREFINIPAG, ''YYYYMMDD'') CREFINIPAG,'
  +' TO_DATE(A.CREFFINPAG, ''YYYYMMDD'') CREFFINPAG, D.DEUVEN, D.CUOVEN, E.DEUPEN, E.CUOPEN,'
  +' SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0)) DEUDATOT, SUM(DECODE(A.CREESTID, ''02'', 1, ''11'', 1, ''27'', 1, 0 )) CUOPORCOB'
  +' FROM CRE301 A, CRE302 B, CRE110 C, ( SELECT A.ASOID, A.CREDID, COUNT(*) CUOVEN, SUM(NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0)) DEUVEN'
  +' FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID'
  +' AND B.CREESTID IN (''02'', ''11'', ''27'') AND TO_CHAR(B.CREFVEN, ''YYYYMM'') <= TO_CHAR(SYSDATE, ''YYYYMM'')'
  +' GROUP BY A.ASOID, A.CREDID ) D,'
  +' (SELECT  A.ASOID, A.CREDID, COUNT(*) CUOPEN,  SUM(NVL(B.CREMTO,0)-NVL(B.CREMTOCOB,0)) DEUPEN'
  +' FROM CRE301 A, CRE302 B WHERE A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
  +' AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID AND B.CREESTID IN (''02'', ''11'', ''27'') AND TO_CHAR(B.CREFVEN, ''YYYYMM'') > TO_CHAR(SYSDATE, ''YYYYMM'')'
  +' GROUP BY A.ASOID, A.CREDID ) E'
  +' WHERE A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND A.CREESTID NOT IN (''13'', ''04'') AND A.ASOID = B.ASOID AND A.CREDID = B.CREDID'
  +' AND B.CREESTID IN (''02'', ''11'', ''27'') AND A.TIPCREID = C.TIPCREID AND A.ASOID = D.ASOID(+) AND A.CREDID = D.CREDID(+)'
  +' AND A.ASOID = E.ASOID(+) AND A.CREDID = E.CREDID(+) GROUP BY C.TIPCREDES, A.CREMTOOTOR, B.CREMTO, A.CREFOTORG, A.CRENUMCUO, TO_DATE(A.CREFINIPAG, ''YYYYMMDD''), TO_DATE(A.CREFFINPAG, ''YYYYMMDD''),'
  +' D.DEUVEN, D.CUOVEN, E.DEUPEN, E.CUOPEN ORDER BY A.CREFOTORG';
  DM1.cdsCreditos.Close;
  DM1.cdsCreditos.DataRequest(xSql);
  DM1.cdsCreditos.Open;
  If DM1.cdsCreditos.RecordCount = 0 Then
  Begin
     invicre;
     pplblsindeuda.Visible := True;
     DM1.cdsCreditos.Insert;
     DM1.cdsCreditos.FieldByName('TIPCREDES').AsString := 'SIN CREDITOS PENDIENTES';
  End
  Else
  Begin
    pplblsindeuda.Visible := False;
    visicre;
  End;
  texto := 'Falta el/(los) dato(s) : ';
  If (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'DO') AND (DM1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE') Then texto := texto + 'Asociado no valido/';
  If lblAsoncta.Caption = '-'   Then texto := texto + 'Nº Cuenta BN/'
  Else
  Begin
    If DM1.cdsAso.FieldByName('SITCTA').AsString <> 'A' Then
    Begin
      xSql := 'SELECT SITCTADES FROM COB103 WHERE SITCTAID = '+QuotedStr(DM1.cdsAso.FieldByName('SITCTA').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      texto := texto + 'La cuenta se encuentra '+DM1.cdsQry.FieldByname('SITCTADES').AsString+'/';
    End;
  End;
  If (DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE') AND (DM1.cdsAso.FieldByName('REGPENID').AsString <> '01')
     Then texto := texto + 'Asociado no pertenece a la Ley 20530/';
  If DM1.cdsAso.fieldbyname('ASOFECNAC').AsString <> '' Then
  Begin
    If DM1.CalculaEdad(DM1.cdsAso.fieldbyname('ASOFECNAC').AsString) > 70 Then
       texto := texto + 'Asociado es mayor a 70 años/';
  End
  Else texto := texto + 'Fecha de Nacimiento/';
  If fMatAso.ImagAso.Enabled= False Then texto := texto + 'Sin foto/';
  If fMatAso.ImaFirma.Enabled= False Then texto := texto + 'Sin firma/';
  If ppDBASODNI.Caption = ''    Then texto := texto + 'Dni/';
  If ppDBASOCODMOD.Caption = '' Then texto := texto + 'Cod.Mod./';
  If ppDBASOAPENOM.Caption = '' Then texto := texto + ' Apellido(s) y Nombre(s)/';
  If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'DO'      Then lblAsotipdes.Caption := 'ASOCIADO DOCENTE'
  Else If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE' Then lblAsotipdes.Caption := 'ASOCIADO CESANTE'
  Else If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'AD' Then lblAsotipdes.Caption := 'ADMINISTRATIVO'
  Else If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'NI' Then lblAsotipdes.Caption := 'NO IDENTIFICADO'
  Else If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CO' Then lblAsotipdes.Caption := 'CONTRATADO'
  Else If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'OT' Then lblAsotipdes.Caption := 'OTROS';
  If DM1.cdsAso.FieldByName('ASOTIPID').AsString = 'CE' Then
  Begin
     ppDBASORESCESE.Visible := True;
     ppDBASOFRESCESE.Visible := True;
  End
  Else
  Begin
     ppDBASORESCESE.Visible := False;
     ppDBASOFRESCESE.Visible := False;
  End;
  If DM1.cdsAso.FieldByName('ASOCODPAGO').AsString = '' Then texto := texto + 'Código de Pago/';
  If lblUse.Caption = ''        Then texto := texto + ' Unidad de Gestión/';
  If lblUPago.Caption = ''      Then texto := texto + 'Unidad de Pago/';
  If DM1.cdsAso.FieldByName('UPROID').AsString = '' Then texto := texto + 'Unidad de Proceso/';
  If lblRegPen.Caption = ''     Then texto := texto + 'Regimen de Pension/';
  If DM1.cdsAso.FieldByName('ASODIR').AsString = '' Then  texto := texto + 'Dirección domiciliaria/';
  If DM1.cdsAso.FieldByName('ASODIRLAB').AsString = '' Then texto := texto + 'Dirección de colegio/';
  If DM1.cdsAso.FieldByName('ASOTELF1').AsString = '' Then texto := texto + 'Telefono de Domicilio/';
  If Length(texto) > 80 Then
     Begin
       ppMemo1.Lines.Add(Copy(texto,1,110));
       ppMemo1.Lines.Add(Copy(texto,111,110));
       ppMemo1.Lines.Add(Copy(texto,221,110));
     End
  Else
     Begin //Fecha de ultima actualización y verificación siempre que tenga sus datos completos
        if DM1.xofides <> '01' then
           ppMemo1.Lines.Add(texto)
        else
          Begin
           xSql:= 'SELECT REGISTRO_AUD FROM APO201_LOG WHERE ASOID='''+xAsoId+''' AND SECUENCIA=''1'' ORDER BY CODREG DESC';
           DM1.cdsReclamo.Close;
           DM1.cdsReclamo.DataRequest(XsQL);
           DM1.cdsReclamo.Open;
           If DM1.cdsReclamo.RecordCount > 0 then
              Begin
                ppMemo1.Lines.ADD('Ultima Fecha de Actualización: '+dm1.cdsReclamo.FieldByName('REGISTRO_AUD').AsString);
              End
           Else
              Begin
               ppMemo1.Lines.ADD('REGISTRO DE ASOCIADO NO ACTUALIZADO');
              End;

           XSQL := 'SELECT FECVAL FROM VAL_DAT_ASO WHERE ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString+''' order by fecval desc ';
           DM1.cdsReclamo.Close;
           DM1.cdsReclamo.DataRequest(XSQL);
           DM1.cdsReclamo.Open;
           If DM1.cdsReclamo.RecordCount > 0 then
             Begin
              ppMemo1.Lines.ADD('Ultima Fecha de Validación: '+dm1.cdsReclamo.FieldByName('FECVAL').AsString);
             End
           Else
             Begin
               ppMemo1.Lines.ADD('REGISTRO DE ASOCIADO NO VALIDADO');
              End;

           DM1.cdsReclamo.Close;
           DM1.cdsReclamo.IndexFieldNames:='';
          End;
     End;

   If texto = 'Falta el/(los) dato(s) : ' Then ppMemo1.Visible := False Else ppMemo1.Visible := True;
  // Aportes
  lbl0201.Caption := 'Faltan el(los) siguiente(s) aporte(s) : ';
  If lblmonto_2.Caption = '0.00' Then lbl0201.Caption := lbl0201.Caption + lblDes_2.Caption;
  If lblmonto_3.Caption = '0.00' Then lbl0201.Caption := lbl0201.Caption + ' - ' + lblDes_3.Caption;
  If lblmonto_4.Caption = '0.00' Then lbl0201.Caption := lbl0201.Caption + ' - ' + lblDes_4.Caption ;
  If lbl0201.Caption = 'Faltan el(los) siguiente(s) aporte(s) : ' Then lbl0201.Visible := False Else lbl0201.Visible := True;
  // Creditos
  DM1.cdsCreditos.First;
  xCuoVen   := 0;
  xCuoNoVen := 0;
  While Not DM1.cdsCreditos.Eof Do
  Begin
    xCuoVen   := xCuoVen   + DM1.cdsCreditos.FieldByName('CUOVEN').AsInteger;
    xCuoNoVen := xCuoNoVen + DM1.cdsCreditos.FieldByName('CUOPEN').AsInteger;
    DM1.cdsCreditos.Next;
  End;
  lbl0301.Caption := 'Cuotas vencidas : '+IntToStr(xCuoVen)+' / Cuotas no vencidas : '+IntToStr(xCuoNoVen);
  xSql := 'SELECT OFDESNOM FROM APO110 WHERE OFDESID IN (SELECT ORIGEN FROM USERTABLE WHERE USERID = '+QuotedStr(DM1.wUsuario)+')';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  pplblOficina.Caption := DM1.cdsQry.FieldByName('OFDESNOM').AsString;
  If DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId)),'SRB000','ESTDEP')='02' Then
     Begin
        If rdbPcal.Checked Then lblVerif.Caption:=rdbPcal.Caption+' (PREFERENTE)';
        If rdbRech.Checked Then lblVerif.Caption:=rdbRech.Caption+' (PREFERENTE)';
        If rdbNoeval.Checked Then lblVerif.Caption:=rdbNoeval.Caption+' (PREFERENTE)';
     End
  Else
     Begin
        If rdbPcal.Checked Then lblVerif.Caption:=rdbPcal.Caption;
        If rdbRech.Checked Then lblVerif.Caption:=rdbRech.Caption;
        If rdbNoeval.Checked Then lblVerif.Caption:=rdbNoeval.Caption;
     End;

  ppInfCre.Print;
  ppInfCre.Stop;
End;

procedure TfMstCre.invicre;
begin
  ppLabel19.visible := False;  ppLabel38.visible := False;  ppLabel28.visible := False;
  ppLabel30.visible := False;  ppLabel52.visible := False;  ppLabel55.visible := False;
  ppLabel53.visible := False;  ppLabel54.visible := False;  ppLabel56.visible := False;
  ppDBText9.visible := False;  ppDBText16.visible := False; ppDBText12.visible := False;
  ppDBText14.visible := False; ppDBText14.visible := False; //ppLabel1.visible := False;
  ppLabel27.visible := False;  ppLabel29.visible := False;  ppLabel60.visible := False;
  ppLabel33.visible := False;  ppLabel57.visible := False;  ppLabel62.visible := False;
  ppLabel58.visible := False;  ppLabel61.visible := False;  ppLabel59.visible := False;
  ppDBText10.visible := False; ppLabel26.Visible := False;  ppDBText13.visible := False;
  ppDBText3.visible := False;  ppDBText17.visible := False; ppLabel31.Visible := False;
  lbl0301.Visible := False;    ppLabel104.Visible := False; ppLabel109.Visible:= False;
  ppLabel110.Visible := False;  ppDBCalc1.Visible  := False; ppLabel106.Visible  := False;
  ppLabel105.Visible := False; ppLabel107.Visible  := False;
  ppLine1.Visible  := False;
  ppDetailBand2.Height := 0.1;
  ppShape11.Height := 0.1;
  ppShape12.Height := 0.1;
end;

procedure TfMstCre.visicre;
begin
  ppLabel19.visible := True;   ppLabel38.visible := True;   ppLabel28.visible := True;
  ppLabel30.visible := True;   ppLabel52.visible := True;   ppLabel55.visible := True;
  ppLabel53.visible := True;   ppLabel54.visible := True;   ppLabel56.visible := True;
  ppDBText9.visible := True;   ppDBText16.visible := True;  ppDBText12.visible := True;
  ppDBText14.visible := True;  ppDBText14.visible := True; // ppLabel1.visible := True;
  ppLabel27.visible := True;   ppLabel29.visible := True;   ppLabel60.visible := True;
  ppLabel33.visible := True;   ppLabel57.visible := True;   ppLabel62.visible := True;
  ppLabel58.visible := True;   ppLabel61.visible := True;   ppLabel59.visible := True;
  ppDBText10.visible := True;  ppLabel26.Visible := True;   ppDBText13.visible := True;
  ppDBText3.visible := True;   ppDBText17.visible := True;  ppLabel31.Visible := True;
  lbl0301.Visible := True;     ppLabel104.Visible := True;  ppLabel109.Visible:= True;
  ppLabel110.Visible := True;  ppDBCalc1.Visible  := True;  ppLabel106.Visible  := True;
  ppLabel105.Visible := True;  ppLabel107.Visible  := True;
  ppLine1.Visible  := True;
  ppDetailBand2.Height := 0.7396;
  ppShape11.Height := 0.7396;
  ppShape12.Height := 0.7396;
  ppLabel19.top := 0;  ppLabel52.top := 0;  ppDBText9.top := 0;  ppLabel104.top := 0;  ppLabel105.top := 0;
  ppDBText29.top := 0; ppLabel26.top := 0;  ppLabel57.top := 0;  ppDBText10.top := 0;  ppLabel27.top := 0.1458;
  ppLabel62.top := 0.1458; ppDBText11.top := 0.1458; ppLabel38.top := 0.1458; ppLabel55.top := 0.1458; ppDBText16.top := 0.1458;
  ppLabel106.top := 0.1458; ppLabel107.top := 0.1458; ppDBText30.top := 0.1458; ppLabel28.top := 0.2917; ppLabel53.top := 0.2917;
  ppDBText12.top := 0.2917; ppLabel29.top := 0.2917; ppLabel58.top := 0.2917; ppDBText13.top := 0.2917; ppLabel30.top := 0.4375;
  ppLabel54.top := 0.4375; ppDBText14.top := 0.4375; ppLabel60.top := 0.4375; ppLabel61.top := 0.4375; ppDBText3.top := 0.4375;
  ppLabel31.top := 0.5833; ppLabel56.top := 0.5833; ppDBText15.top := 0.5833; ppLabel33.top := 0.5833; ppLabel59.top := 0.5833;
  ppDBText17.top := 0.5833;
end;

procedure TfMstCre.FormActivate(Sender: TObject);
begin
dbeIngPla.SetFocus;
BtnImprime.Enabled := False;
bitGrabar.Enabled := False;
end;

end.




