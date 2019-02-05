unit ASO904;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, Mask, ExtCtrls, StdCtrls, wwdblook,
  Wwdbdlg, wwdbdatetimepicker, Buttons, DBGrids, ppProd, ppClass, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppPrnabl, ppCtrls, ppBands,
  ppCache, ppVar;

type
  TFrepautdesuniges = class(TForm)
    gbseleccion: TGroupBox;
    btnprocesar: TBitBtn;
    dbdtpinicio: TwwDBDateTimePicker;
    dbdtpfinal: TwwDBDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    pnluniprodes: TPanel;
    meunipro: TMaskEdit;
    pnlunipagdes: TPanel;
    meunipag: TMaskEdit;
    pnlunigesdes: TPanel;
    meuniges: TMaskEdit;
    dbgprevio: TwwDBGrid;
    Label6: TLabel;
    dblcddptoid: TwwDBLookupComboDlg;
    pnldepdes: TPanel;
    medep: TMaskEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btnAExcel: TBitBtn;
    btnImprimir: TBitBtn;
    btnSalir: TBitBtn;
    dblcdunipro: TwwDBLookupComboDlg;
    dblcdunipag: TwwDBLookupComboDlg;
    dblcduniges: TwwDBLookupComboDlg;
    dtgData: TDBGrid;
    ppbdereporte: TppBDEPipeline;
    pprreporte: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    pplfechas: TppLabel;
    ppLabel8: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppLabel9: TppLabel;
    ppShape3: TppShape;
    ppLabel10: TppLabel;
    ppShape4: TppShape;
    ppLabel11: TppLabel;
    ppShape5: TppShape;
    ppLabel12: TppLabel;
    ppShape6: TppShape;
    ppLabel13: TppLabel;
    ppShape7: TppShape;
    ppLabel14: TppLabel;
    ppShape8: TppShape;
    ppLabel15: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    pplimpresopor: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    procedure FormActivate(Sender: TObject);
    procedure dblcddptoidChange(Sender: TObject);
    procedure dblcddptoidExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSalirClick(Sender: TObject);
    procedure dblcduniproChange(Sender: TObject);
    procedure dblcduniproExit(Sender: TObject);
    procedure dblcdunipagChange(Sender: TObject);
    procedure dblcdunipagExit(Sender: TObject);
    procedure dblcdunigesExit(Sender: TObject);
    procedure dblcdunigesChange(Sender: TObject);
    procedure btnprocesarClick(Sender: TObject);
    procedure btnAExcelClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure dbdtpfinalExit(Sender: TObject);
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
// Fin: HPP_201003_ASO
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frepautdesuniges: TFrepautdesuniges;

implementation

uses ASODM;

{$R *.dfm}

procedure TFrepautdesuniges.FormActivate(Sender: TObject);
Var xSql:String;
begin
  btnAExcel.Enabled   := False;
  btnImprimir.Enabled := False;
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
  xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTODES';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcddptoid.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
  dblcddptoid.Selected.Add('DPTODES'#9'30'#9'Departamento'#9#9);
  dbdtpinicio.SetFocus;
end;

procedure TFrepautdesuniges.dblcddptoidChange(Sender: TObject);
begin
  If Trim(dblcddptoid.Text) = '' Then medep.Text := '';
  dblcdunipro.Text := '';
  meunipro.Text    := '';
  dblcdunipag.Text := '';
  meunipag.Text    := '';
  dblcduniges.Text := '';
  meuniges.Text    := '';
  dblcdunipro.Enabled := False;
  dblcdunipag.Enabled := False;
  dblcduniges.Enabled := False;
end;

procedure TFrepautdesuniges.dblcddptoidExit(Sender: TObject);
Var xSql:String;
Begin
  If trim(dblcddptoid.Text) = '' Then exit;
  If DM1.cdsDpto.Locate('DPTOID',VarArrayof([dblcddptoid.text]),[]) Then
  Begin
    medep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
    xSql := 'SELECT UPROID, UPRONOM FROM APO102 WHERE DPTOID = '+QuotedStr(dblcddptoid.Text)+' ORDER BY UPRONOM';
    DM1.cdsUPro.Close;
    DM1.cdsUPro.DataRequest(xSql);
    DM1.cdsUPro.Open;
    dblcdunipro.Selected.Clear;
    dblcdunipro.Selected.Add('UPROID'#9'4'#9'Código'#9#9);
    dblcdunipro.Selected.Add('UPRONOM'#9'23'#9'Unidad de proceso'#9#9);
    dblcdunipro.Enabled := True;
    dblcdunipro.SetFocus;
  End
  Else
  Begin
    dblcddptoid.Text := '';
    dblcdunipro.Text := '';
    dblcdunipag.Text := '';
    dblcduniges.Text := '';
    medep.Text       := '';
    meunipro.Text    := '';
    meunipag.Text    := '';
    meuniges.Text    := '';
    MessageDlg('Código errado', mtError, [mbOk], 0);
    dblcddptoid.SetFocus;
  End;
End;

procedure TFrepautdesuniges.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;

procedure TFrepautdesuniges.btnSalirClick(Sender: TObject);
begin
  Frepautdesuniges.Close;
end;

procedure TFrepautdesuniges.dblcduniproChange(Sender: TObject);
begin
  If Trim(dblcdunipro.Text) = '' Then meunipro.Text := '';
  dblcdunipag.Text := '';
  meunipag.Text    := '';
  dblcduniges.Text :='';
  meuniges.Text    := '';
  dblcdunipag.Enabled := False;
  dblcduniges.Enabled := False;
end;

Procedure TFrepautdesuniges.dblcduniproExit(Sender: TObject);
Var xsql:String;
Begin
  If trim(dblcdunipro.Text) = '' Then exit;
  If DM1.cdsUPro.Locate('UPROID',VarArrayof([dblcdunipro.text]),[]) Then
  Begin
    meunipro.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
    xSql := 'SELECT UPROID, UPAGOID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcdunipro.Text)+' ORDER BY UPAGONOM';
    DM1.cdsUPago.Close;
    DM1.cdsUPago.DataRequest(xSql);
    DM1.cdsUPago.Open;
    dblcdunipag.Selected.Clear;
    dblcdunipag.Selected.Add('UPAGOID'#9'4'#9'Código'#9#9);
    dblcdunipag.Selected.Add('UPAGONOM'#9'23'#9'Unidad de pago'#9#9);
    dblcdunipag.Enabled := True;
    dblcdunipag.SetFocus;
  End
  Else
  Begin
    dblcdunipro.Text := '';
    dblcdunipag.Text := '';
    dblcduniges.Text := '';
    meunipro.Text    := '';
    meunipag.Text    := '';
    meuniges.Text    := '';
    MessageDlg('Código errado', mtError, [mbOk], 0);
    dblcdunipro.SetFocus;
  End;
End;


procedure TFrepautdesuniges.dblcdunipagChange(Sender: TObject);
begin
  If Trim(dblcdunipag.Text) = '' Then meunipag.Text := '';
  dblcduniges.Text :='';
  meuniges.Text    := '';
  dblcduniges.Enabled := False;
end;

procedure TFrepautdesuniges.dblcdunipagExit(Sender: TObject);
var xSql:String;
begin
  If trim(dblcdunipag.Text) = '' Then exit;
  If DM1.cdsUPago.Locate('UPROID;UPAGOID',VarArrayof([dblcdunipro.Text,dblcdunipag.text]),[]) Then
  Begin
    meunipag.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
    //Cambio por HPP_00024_ASO - 23/09/2008
    xSql := 'SELECT UPROID, UPAGOID, USEID, USENOM FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N'' AND UPROID = '
    +QuotedStr(dblcdunipro.Text)+' AND UPAGOID = '+QuotedStr(dblcdunipag.Text)+' ORDER BY USENOM';
    DM1.cdsUSE.Close;
    DM1.cdsUSE.DataRequest(xSql);
    DM1.cdsUSE.Open;
    dblcduniges.Selected.Clear;
    dblcduniges.Selected.Add('USEID'#9'4'#9'Código'#9#9);
    dblcduniges.Selected.Add('USENOM'#9'23'#9'Unidad de gestión'#9#9);
    dblcduniges.Enabled := True;
    dblcduniges.SetFocus;    
  End
  Else
  Begin
    dblcdunipag.Text := '';
    dblcduniges.Text := '';
    meunipag.Text    := '';
    meuniges.Text    := '';
    MessageDlg('Código errado', mtError, [mbOk], 0);
    dblcdunipag.SetFocus;
  End;
end;

procedure TFrepautdesuniges.dblcdunigesExit(Sender: TObject);
begin
  If trim(dblcduniges.Text) = '' Then exit;
  If DM1.cdsUSE.Locate('UPROID;UPAGOID;USEID',VarArrayof([dblcdunipro.Text,dblcdunipag.Text,dblcduniges.text]),[]) Then
  Begin
    meuniges.Text := DM1.cdsUSE.FieldByName('USENOM').AsString;
    btnprocesar.SetFocus;
  End
  Else
  Begin
    dblcduniges.Text := '';
    meuniges.Text    := '';
    MessageDlg('Código errado', mtError, [mbOk], 0);
    dblcduniges.SetFocus;
  End;
end;

procedure TFrepautdesuniges.dblcdunigesChange(Sender: TObject);
begin
  If Trim(dblcduniges.Text) = '' Then meuniges.Text := '';
end;

procedure TFrepautdesuniges.btnprocesarClick(Sender: TObject);
Var xSql, xSql1:String;
    xanomesaut, xenvcob319, xapoapo301:String;
begin
  If Trim(dbdtpinicio.Text) = '' Then
  Begin
    MessageDlg('Ingrese fecha inicial', mtError, [mbOk], 0);
    dbdtpinicio.SetFocus;
    Exit;
  End;

  If Trim(dbdtpfinal.Text) = '' Then
  Begin
    MessageDlg('Ingrese fecha final', mtError, [mbOk], 0);
    dbdtpfinal.SetFocus;
    Exit;
  End;

  If MessageDlg('¿ Seguro de procesar ?',mtconfirmation,[mbYes,mbNo],0)= mrYes then
  Begin
    Screen.Cursor := crHourGlass;
// inicio: HPP_201010_ASO (HPC_201005_ASO)
    If Trim(dblcddptoid.Text) <> '' Then xSql1 := ' AND B.DPTOID = '+QuotedStr(dblcddptoid.Text);
    If Trim(dblcdunipro.Text) <> '' Then xSql1 := xSql1 + ' AND A.UPROID = '+QuotedStr(dblcdunipro.Text);
    If Trim(dblcdunipag.Text) <> '' Then xSql1 := xSql1 + ' AND A.UPAGOID = '+QuotedStr(dblcdunipag.Text);
    If Trim(dblcduniges.Text) <> '' Then xSql1 := xSql1 + ' AND A.USEID = '+QuotedStr(dblcduniges.Text);
    xSql := 'SELECT ROWNUM NUMERO, ASOID, ASODNI, ASOAPENOMDNI, '' ''||TO_CHAR(FECAUTDESAPO,''DD/MM/YYYY'') FECAUTDESAPO, USENOM, DPTODES, ENVIO, APORTE FROM ('
{
    +' SELECT A.ASOID, A.ASODNI, A.ASOAPENOMDNI, A.FECAUTDESAPO, B.USENOM, C.DPTODES'
    +' ,''       '' ENVIO, ''       '' APORTE FROM APO201 A, APO101 B, APO158 C WHERE NVL(AUTDESAPO,''X'') = ''S'''
}
    +' SELECT A.ASOID, A.ASODNI, A.ASOAPENOMDNI, A.FECAUTDESAPO, NVL(B.USENOM,''NO IDENTIFICADO'') USENOM,  NVL(C.DPTODES,''NO IDENTIFICADO'') DPTODES'
    +' ,''       '' ENVIO, ''       '' APORTE'
    +' FROM APO201 A, APO101 B, APO158 C '
//    +' WHERE NVL(A.AUTDESAPO,''X'') = ''S'' AND A.ASOTIPID IN (''NI'',''DO'') '
    +' WHERE A.ASOTIPID=''DO'' and NVL(A.AUTDESAPO,''X'') = ''S'' '
    +'   AND NVL(FALLECIDO,''N'') = ''N'' '
// fin: HPP_201010_ASO(HPC_201005_ASO)
    +' AND FECAUTDESAPO >= '+QuotedStr(dbdtpinicio.Text)+' AND FECAUTDESAPO <= '+QuotedStr(dbdtpfinal.Text)
    + xSql1
    +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+)'
    //Cambio por HPP_00024_ASO - 23/09/2008
    +' AND NVL(B.FDESHABILITADO,''S'') =''N'' AND B.DPTOID = C.DPTOID(+) ) ORDER BY ROWNUM';
    DM1.cdsReporte.Close;
    DM1.cdsReporte.DataRequest(xSql);
    DM1.cdsReporte.Open;
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('NUMERO'#9'4'#9'Número'#9#9);
    dbgprevio.Selected.Add('ASOID'#9'4'#9'Identificación'#9#9);
    dbgprevio.Selected.Add('ASODNI'#9'8'#9'DNI'#9#9);
    dbgprevio.Selected.Add('ASOAPENOMDNI'#9'42'#9'Apellidos y Nombre(s)'#9#9);
    dbgprevio.Selected.Add('FECAUTDESAPO'#9'20'#9'Fecha de autori-~zación de aportes'#9#9);
    dbgprevio.Selected.Add('USENOM'#9'25'#9'Descripción~de la UGEL'#9#9);
    dbgprevio.Selected.Add('DPTODES'#9'18'#9'Departamento'#9#9);
// inicio: HPP_201010_ASO (HPC_201005_ASO)
// sólo si el rango de fecha tiene un rango de un año se añadirá el ultimo envio y aporte porque sino demora demasiado
//    if (length(medep.Text)>0) or ((dbdtpfinal.date-dbdtpinicio.date)<=366) then
    if ((dbdtpfinal.date-dbdtpinicio.date)<=366) then
    begin
       dbgprevio.Selected.Add('ENVIO'#9'7'#9'Primer~envio'#9#9);
       dbgprevio.Selected.Add('APORTE'#9'7'#9'Último~aporte'#9#9);
    end;
// fin: HPP_201010_ASO (HPC_201005_ASO)
    dbgprevio.ApplySelected;
    DM1.cdsReporte.First;

// inicio: HPP_201010_ASO (HPC_201005_ASO)
// sólo si el rango de fecha tiene un rango de un año se añadirá el ultimo envio y aporte porque sino demora demasiado
//    if (length(medep.Text)>0) or ((dbdtpfinal.date-dbdtpinicio.date)<=366) then
    if ((dbdtpfinal.date-dbdtpinicio.date)<=366) then
    begin
       While Not DM1.cdsReporte.Eof Do
       Begin
          xanomesaut := Copy(DM1.cdsReporte.FieldByName('FECAUTDESAPO').AsString,8,4)+Copy(DM1.cdsReporte.FieldByName('FECAUTDESAPO').AsString,5,2);
          xSql := 'SELECT MIN(COBANO||''/''||COBMES) ANOMES FROM COB319 WHERE ASOID = '+QuotedStr(DM1.cdsReporte.FieldByName('ASOID').AsString)
                 +' AND NVL(MONAPOENV,0) > 0 AND COBANO||COBMES >= '+QuotedStr(xanomesaut);
          DM1.cdsQry.Close;
          DM1.cdsQry.DataRequest(xSql);
          DM1.cdsQry.Open;
          xenvcob319 := DM1.cdsQry.FieldByName('ANOMES').AsString;
          xSql := 'SELECT MAX(TO_CHAR(FREG,''YYYY/MM'')) ANOMES FROM APO301 WHERE ASOID = '+QuotedStr(DM1.cdsReporte.FieldByName('ASOID').AsString)
                 +' AND APOSEC >= '+QuotedStr(xanomesaut);
          DM1.cdsQry.Close;
          DM1.cdsQry.DataRequest(xSql);
          DM1.cdsQry.Open;
          xapoapo301 := DM1.cdsQry.FieldByName('ANOMES').AsString;
          DM1.cdsReporte.Edit;
          DM1.cdsReporte.FieldByName('ENVIO').AsString  := xenvcob319;
          DM1.cdsReporte.FieldByName('APORTE').AsString := xapoapo301;
          DM1.cdsReporte.Next;
       end;
    end;
// fin: HPP_201010_ASO (HPC_201005_ASO)

    Screen.Cursor := crDefault;
    If DM1.cdsReporte.RecordCount > 0 Then
    Begin
      btnAExcel.Enabled   := True;
      btnImprimir.Enabled := True;
    End;
  End;
End;

procedure TFrepautdesuniges.btnAExcelClick(Sender: TObject);
begin
  DM1.HojaExcel('Detalles',DM1.dsReporte , dtgData);
end;

procedure TFrepautdesuniges.btnImprimirClick(Sender: TObject);
begin
  pplfechas.Caption     := ' DEL '+dbdtpinicio.Text+' AL '+dbdtpfinal.Text;
  pplimpresopor.Caption := 'Impreso por   : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  pprreporte.Print;
end;

procedure TFrepautdesuniges.dbdtpfinalExit(Sender: TObject);
begin
  dblcddptoid.Enabled := True;
  dblcddptoid.SetFocus;
end;

procedure TFrepautdesuniges.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// se cierra cds abiertos en la forma
// se detectó en pruebas integrales
   DM1.cdsDpto.Close;
   DM1.cdsDpto.Filter:='';
   DM1.cdsDpto.Filtered:=False;
   DM1.cdsDpto.IndexFieldNames:='';

   DM1.cdsUPro.Close;
   DM1.cdsUPro.Filter:='';
   DM1.cdsUPro.Filtered:=False;
   DM1.cdsUPro.IndexFieldNames:='';

   DM1.cdsUPago.Close;
   DM1.cdsUPago.Filter:='';
   DM1.cdsUPago.Filtered:=False;
   DM1.cdsUPago.IndexFieldNames:='';

   DM1.cdsUSE.Close;
   DM1.cdsUSE.Filter:='';
   DM1.cdsUSE.Filtered:=False;
   DM1.cdsUSE.IndexFieldNames:='';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';

   DM1.cdsQry.Close;
   DM1.cdsQry.Filter:='';
   DM1.cdsQry.Filtered:=False;
   DM1.cdsQry.IndexFieldNames:='';

   Action := caFree;
// Fin: HPP_201003_ASO
end;

end.
