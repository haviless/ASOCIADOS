unit ASO946;

interface

uses
 { Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Buttons,
  wwdbdatetimepicker, fcButton, fcImgBtn, fcShapeBtn;}
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, fcButton, fcImgBtn,
  fcShapeBtn, ExtCtrls, wwdbdatetimepicker, Db, ppBands, ppVar, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, Buttons, Wwkeycb;

type
  TfCtasPers = class(TForm)
    GroupBox1: TGroupBox;
    dtgCtasPers: TwwDBGrid;
    BitSalir: TBitBtn;
    PnFecGen: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DtpFecIni: TwwDBDateTimePicker;
    DtpFecFin: TwwDBDateTimePicker;
    BitMostrar: TBitBtn;
    ppDBEstPre: TppDBPipeline;
    ppRepEstPre: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    Panel1: TPanel;
    rdbVrfBco: TRadioButton;
    rdbCstOfides: TRadioButton;
    BitPrintAut: TBitBtn;
    DbVerOfi: TppDBPipeline;
    RepVerOfi: TppReport;
    ppHeaderBand30: TppHeaderBand;
    ppLabel611: TppLabel;
    ppLabel612: TppLabel;
    ppLabel614: TppLabel;
    ppLabel615: TppLabel;
    ppSystemVariable59: TppSystemVariable;
    ppSystemVariable60: TppSystemVariable;
    ppSystemVariable61: TppSystemVariable;
    ppLabel616: TppLabel;
    lblTitulo: TppLabel;
    ppLabel626: TppLabel;
    ppDetailBand32: TppDetailBand;
    ppDBText262: TppDBText;
    ppDBText263: TppDBText;
    ppDBText264: TppDBText;
    ppDBText265: TppDBText;
    ppFooterBand25: TppFooterBand;
    ppSummaryBand30: TppSummaryBand;
    ppLabel608: TppLabel;
    ppLabel609: TppLabel;
    ppDBCalc216: TppDBCalc;
    ppLine151: TppLine;
    ppLine150: TppLine;
    ppGroup39: TppGroup;
    ppGroupHeaderBand39: TppGroupHeaderBand;
    ppDBText261: TppDBText;
    ppLine152: TppLine;
    ppLine153: TppLine;
    ppLabel617: TppLabel;
    ppLabel618: TppLabel;
    ppLabel619: TppLabel;
    ppLabel620: TppLabel;
    ppLabel621: TppLabel;
    ppLabel624: TppLabel;
    ppGroupFooterBand39: TppGroupFooterBand;
    ppDBCalc215: TppDBCalc;
    ppLabel596: TppLabel;
    ppLabel597: TppLabel;
    ppLine149: TppLine;
    rdbAutorizados: TRadioButton;
    BitMstApo: TfcShapeBtn;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    pnlSeleccion: TPanel;
    Shape1: TShape;
    Label7: TLabel;
    GbAsociados: TGroupBox;
    BitBtn1: TBitBtn;
    gbBuscar: TGroupBox;
    edtBuscar2: TEdit;
    dtgAsociado: TwwDBGrid;
    BitBtn2: TBitBtn;
    rbtApeNom: TRadioButton;
    rbtDni: TRadioButton;
    rbtCuenta: TRadioButton;
    rbtCodMod: TRadioButton;
    Button1: TButton;
    GroupBox2: TGroupBox;
    EdtCodMod: TEdit;
    BitBuscar: TBitBtn;
    Panel2: TPanel;
    edtApeNom: TEdit;
    pnlBusca: TPanel;
    Shape5: TShape;
    lbBusca: TLabel;
    edtBusca3: TwwIncrementalSearch;
    bbtnClosePnl: TButton;
    procedure FormActivate(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dtgCtasPersDblClick(Sender: TObject);
    procedure dtgCtasPersDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BitPrintAutClick(Sender: TObject);
    procedure BitMstApoClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure rbtApeNomClick(Sender: TObject);
    procedure rbtDniClick(Sender: TObject);
    procedure rbtCuentaClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
    procedure BitBuscarClick(Sender: TObject);
    procedure dtgAsociadoDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure EdtCodModChange(Sender: TObject);
    procedure EdtCodModExit(Sender: TObject);
    procedure dtgCtasPersTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure bbtnClosePnlClick(Sender: TObject);

  private
    { Private declarations }
    procedure LimpiaGrids;
    procedure LimpiaGrids2;

  public
    { Public declarations }
  end;

var
  fCtasPers: TfCtasPers;

implementation

uses ASODM, ASO947, ASO944;

{$R *.dfm}

procedure TfCtasPers.FormActivate(Sender: TObject);
begin
DtpFecIni.Date:=DM1.FechaSys; DtpFecFin.Date:=DM1.FechaSys;
LimpiaGrids;
EdtCodMod.SetFocus;
end;

procedure TfCtasPers.LimpiaGrids;
var xSQL:String;
begin
xSQL:='SELECT A.ASOID,A.USUARIO,A.HREG,A.ASONCTA, B.ASOTIPID, B.SITCTA, A.ASOAPENOM,A.ASODNI,A.FECAUT,A.USRAUT,A.MOTAUT,A.FHAUT FROM ASO002 A,APO201 B '+
      'WHERE A.ASOID=''$%^&$@@'' AND  A.ASONCTA=B.ASONCTA(+) AND TO_DATE(A.HREG) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' ORDER BY ASOAPENOM';

DM1.cdsUSESy.Close;
DM1.cdsUSESy.DataRequest(xSQL);
DM1.cdsUSESy.Open;




end;

procedure TfCtasPers.BitMostrarClick(Sender: TObject);
var xSQL:String;
    XNUM:Integer;
begin

XNUM := TRUNC(DtpFecFin.Date-DtpFecIni.DATE);
If XNUM>30 Then
  Begin
   MessageDlg('El rango de consulta no debe exceder los 30 días... ', mtError,[mbOk], 0 );
   exit;
  End;
if xnum<0 Then
  Begin
   MessageDlg('El rango de consulta esta mal asignado... ', mtError,[mbOk], 0 );
   exit;
  End;

Screen.Cursor:=crHourGlass;
xSQL:='SELECT A.ASOID,A.USUARIO,A.HREG,A.ASONCTA,B.SITCTA, B.ASOTIPID, A.ASOAPENOM,A.ASODNI,A.FECAUT,A.USRAUT,A.MOTAUT,A.FHAUT FROM ASO002 A,APO201 B '+
      'WHERE A.ASONCTA=B.ASONCTA(+) AND TO_DATE(A.HREG) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' ORDER BY ASOAPENOM';
DM1.cdsUSESy.Close;
DM1.cdsUSESy.DataRequest(xSQL);
DM1.cdsUSESy.Open;
Screen.Cursor:=crDefault;

end;

procedure TfCtasPers.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfCtasPers.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

procedure TfCtasPers.dtgCtasPersDblClick(Sender: TObject);
begin
  If dtgCtasPers.DataSource.DataSet.RecordCount=0 Then Exit;
  Try
     fAutCtas:= TfAutCtas.create(self);
     fAutCtas.lblAsoApenom.Caption:=DM1.cdsUSESy.FieldByName('ASOAPENOM').Asstring;
     fAutCtas.lblAsonCta.Caption:=DM1.cdsUSESy.FieldByName('ASONCTA').Asstring;
     fAutCtas.lblUser.Caption:=Trim(DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.cdsUSESy.FieldByName('USUARIO').Asstring)),'TGE006','USERNOM'));
     fAutCtas.lblHreg.Caption:=DM1.cdsUSESy.FieldByName('HREG').Asstring;
     fAutCtas.mMotivo.Text:=DM1.cdsUSESy.FieldByName('MOTAUT').Asstring;
     If Length(Trim(DM1.cdsUSESy.FieldByName('MOTAUT').Asstring))>0 Then
        Begin
           fAutCtas.grpDatos.Enabled:=False;
           fAutCtas.BitGrabar.Enabled:=False;
        End
     Else
        Begin
           fAutCtas.grpDatos.Enabled:=True;
           fAutCtas.BitGrabar.Enabled:=True;
        End;

     fAutCtas.Showmodal;
  Finally
     fAutCtas.free;
  End;

end;

procedure TfCtasPers.dtgCtasPersDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin

  If Length(Trim(DM1.cdsUSESy.FieldByName('USRAUT').AsString))>0 Then
     begin
        dtgCtasPers.Canvas.Font.Color := clGreen;
        dtgCtasPers.DefaultDrawDataCell(rect,Field,State);
      end;
end;

procedure TfCtasPers.BitPrintAutClick(Sender: TObject);
var xSQL:String;
begin

Screen.Cursor:=crHourGlass;
If rdbVrfBco.Checked Then
   Begin
   {
   xSQL:='SELECT ASOAPENOM,ASODNI,ASONCTA,FECAUT FROM ASO002 '+
         'WHERE TO_DATE(HREG) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND FECAUT IS NULL ORDER BY ASONCTA';
   }

   xSQL:='SELECT B.ASOTIPID, A.ASOAPENOM,A.ASODNI,A.ASONCTA,FECAUT FROM ASO002 A, APO201 B WHERE'
   +' A.ASOID = B.ASOID AND TO_DATE(A.HREG) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)
   +' AND FECAUT IS NULL ORDER BY ASONCTA';


   DM1.cdsQry2.Close; DM1.cdsQry2.DataRequest(xSQL); DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount > 0 Then
      Begin
        ppLblTitulo.Caption:='CUENTAS PERSONALES PENDIENTES DE VERIFICACION  DEL : '+DateToStr(DtpFecIni.Date)+' AL '+DateToStr(DtpFecFin.Date);
        ppRepEstPre.Print;
        ppRepEstPre.Cancel;
      End;
   DM1.cdsQry2.Close;
   End
Else If rdbAutorizados.Checked Then
   Begin
   {
   xSQL:='SELECT TO_DATE(A.HREG) HREG,B.OFDESID||''-''||C.OFDESNOM OFDESNOM,ASONCTA,ASOAPENOM,ASODNI,A.USUARIO FROM ASO002 A,TGE006 B,APO110 C WHERE '+
         'TO_DATE(A.HREG) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND A.USUARIO=B.USERID(+) AND B.OFDESID=C.OFDESID(+) AND FECAUT IS NOT NULL ORDER BY B.OFDESID';
    }

    xSQL := 'SELECT TO_DATE(A.HREG) HREG,B.OFDESID||''-''||C.OFDESNOM OFDESNOM,A.ASONCTA,'
    +' A.ASOAPENOM, A.ASODNI, D.ASOTIPID, A.USUARIO FROM ASO002 A,TGE006 B,APO110 C, APO201 D'
    +' WHERE TO_DATE(A.HREG) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)
    +' AND A.ASOID = D.ASOID(+) AND A.USUARIO=B.USERID(+) AND B.OFDESID=C.OFDESID(+) AND FECAUT IS NOT NULL ORDER BY B.OFDESID';

   DM1.cdsQry2.Close; DM1.cdsQry2.DataRequest(xSQL); DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount > 0 Then
      Begin
         lblTitulo.Caption:='CUENTAS VERIFICADAS DEL : '+DateToStr(DtpFecIni.Date)+'  AL  '+ DateToStr(DtpFecFin.Date);
         RepVerOfi.Print;
         RepVerOfi.Cancel;
      End;
   DM1.cdsQry2.Close;

   End
Else
   Begin
   {
   xSQL:='SELECT TO_DATE(A.HREG) HREG,B.OFDESID||''-''||C.OFDESNOM OFDESNOM,ASONCTA,ASOAPENOM,ASODNI,A.USUARIO FROM ASO002 A,TGE006 B,APO110 C WHERE '+
         'TO_DATE(A.HREG) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND A.USUARIO=B.USERID(+) AND B.OFDESID=C.OFDESID(+) AND FECAUT IS NULL ORDER BY B.OFDESID';
   }

   xSql := 'SELECT TO_DATE(A.HREG) HREG,B.OFDESID||''-''||C.OFDESNOM OFDESNOM,A.ASONCTA,'
   +' A.ASOAPENOM, D.ASOTIPID, A.ASODNI,A.USUARIO FROM ASO002 A,TGE006 B,APO110 C, APO201 D'
   +' WHERE TO_DATE(A.HREG) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)
   +' AND A.USUARIO=B.USERID(+) AND B.OFDESID=C.OFDESID(+) AND A.ASOID = D.ASOID AND FECAUT IS NULL ORDER BY B.OFDESID';

   DM1.cdsQry2.Close; DM1.cdsQry2.DataRequest(xSQL); DM1.cdsQry2.Open;
   If DM1.cdsQry2.RecordCount > 0 Then
      Begin
         lblTitulo.Caption:='CUENTAS POR VERIFICAR DEL : '+DateToStr(DtpFecIni.Date)+'  AL  '+ DateToStr(DtpFecFin.Date);
         RepVerOfi.Print;
         RepVerOfi.Cancel;
      End;
   DM1.cdsQry2.Close;
   End;
Screen.Cursor:=crDefault;
end;

procedure TfCtasPers.BitMstApoClick(Sender: TObject);
var xSQL:String;
begin
  If dtgCtasPers.DataSource.DataSet.RecordCount=0 Then Exit;
  Try
    fRegApor := TfRegApor.create(self);
    Screen.Cursor:=crHourGlass;
    xSQL:='SELECT * FROM APO201 WHERE ASOID='+QuotedStr(DM1.cdsUSESy.fieldbyname('ASOID').AsString);
    DM1.cdsAso.Close; DM1.cdsAso.DataRequest(xSQL); DM1.cdsAso.Open;
    Screen.Cursor:=crDefault;
    fRegApor.Showmodal;
  Finally
    fRegApor.free;
  End;

end;

procedure TfCtasPers.BitBtn1Click(Sender: TObject);
var xSQL:String;
begin
  If Length(Trim(edtBuscar2.Text)) > 0 Then
     Begin
       If rbtApeNom.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtBuscar2.Text)+'%');

       If rbtDni.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASODNI LIKE '+QuotedStr(Trim(edtBuscar2.Text)+'%');

       If rbtCuenta.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASONCTA LIKE '+QuotedStr(Trim(edtBuscar2.Text)+'%');

       If rbtCodMod.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASOCODMOD LIKE '+QuotedStr(Trim(edtBuscar2.Text)+'%');

       DM1.cdsAso.Close;
       DM1.cdsAso.DataRequest(xSQL);
       DM1.cdsAso.Open;
     End
   Else
      Begin
         MessageDlg('Debe Ingresar Un Criterio Para La Busqueda', mtError, [mbOk], 0);
         edtBuscar2.SetFocus;
      End;
end;

procedure TfCtasPers.BitBtn2Click(Sender: TObject);
begin
  pnlSeleccion.Visible := False;
  pnlSeleccion.Top:= 10;
  pnlSeleccion.Left:=8;
end;

procedure TfCtasPers.rbtApeNomClick(Sender: TObject);
begin
edtBuscar2.Text:='';
LimpiaGrids2;
gbbuscar.Width:=430;
gbbuscar.Height :=40;
edtBuscar2.Width:=407;
edtBuscar2.Height := 28;
GbAsociados.Caption:='Buscar Por '+rbtApeNom.Caption;
edtBuscar2.SetFocus;
end;

procedure TfCtasPers.rbtDniClick(Sender: TObject);
begin
edtBuscar2.Text:='';
LimpiaGrids2;
gbbuscar.Width:=137;
gbbuscar.Height :=40;
edtBuscar2.Width:=114;
edtBuscar2.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtDni.Caption;
edtBuscar2.SetFocus;
end;

procedure TfCtasPers.rbtCuentaClick(Sender: TObject);
begin
edtBuscar2.Text:='';
LimpiaGrids2;
gbbuscar.Width:=137;
gbbuscar.Height :=40;
edtBuscar2.Width:=114;
edtBuscar2.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtCuenta.Caption;
edtBuscar2.SetFocus;
end;

procedure TfCtasPers.rbtCodModClick(Sender: TObject);
begin
edtBuscar2.Text:='';
LimpiaGrids2;
gbbuscar.Width:=137;
gbbuscar.Height :=40;
edtBuscar2.Width:=114;
edtBuscar2.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtCodMod.Caption;
edtBuscar2.SetFocus;
end;

procedure TfCtasPers.LimpiaGrids2;

begin
 DM1.cdsAso.Close;
 DM1.cdsAso.DataRequest('Select * From APO201 Where ASOID='+QuotedStr('@#$!*@/#&^'));
 DM1.cdsAso.Open;
end;


procedure TfCtasPers.BitBuscarClick(Sender: TObject);
begin
  LimpiaGrids;
  EdtCodMod.Text:='';
  edtApeNom.Text:='';
  pnlSeleccion.Visible := True;
  pnlSeleccion.Top:= 11;
  pnlSeleccion.Left:=54;
  rbtDni.Checked := True;
  rbtDniClick(SELF);
end;

procedure TfCtasPers.dtgAsociadoDblClick(Sender: TObject);
VAR XSQL:STRING;
begin
Screen.Cursor:=crHourGlass;

{xSQL:='SELECT A.ASOID,A.USUARIO,A.HREG,A.ASONCTA,B.SITCTA, B.ASOTIPID, B.ASOCODMOD,A.ASOAPENOM,A.ASODNI,A.FECAUT,A.USRAUT,A.MOTAUT,A.FHAUT FROM ASO002 A,APO201 B '+
      'WHERE A.ASONCTA=B.ASONCTA(+) AND TO_DATE(A.HREG) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' ORDER BY ASOAPENOM';}

xSQL:='SELECT A.ASOID,A.USUARIO,A.HREG,A.ASONCTA,B.SITCTA, B.ASOTIPID,B.ASOCODMOD, A.ASOAPENOM,A.ASODNI,A.FECAUT,A.USRAUT,A.MOTAUT,A.FHAUT FROM ASO002 A,APO201 B '+
      'WHERE A.ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString+''' AND A.ASOID=B.ASOID(+)  ORDER BY ASOAPENOM';

DM1.cdsUSESy.Close;
DM1.cdsUSESy.DataRequest(xSQL);
DM1.cdsUSESy.Open;

EdtCodMod.Text := DM1.cdsUSESy.FieldByname('ASOCODMOD').AsString ;
edtApeNom.Text := DM1.cdsUSESy.FieldByname('ASOAPENOM').AsString ;
Screen.Cursor:=crDefault;
BitBtn2Click(self);
end;

procedure TfCtasPers.Button1Click(Sender: TObject);
begin
  pnlSeleccion.Visible := False;
  pnlSeleccion.Top     := 449;
  pnlSeleccion.Left    :=8;
end;

procedure TfCtasPers.EdtCodModChange(Sender: TObject);
begin
if Length(trim(EdtCodMod.Text))=10 then
  Begin
    edtApeNom.Text :='';
    edtApeNom.Text:='';
  End;
end;

procedure TfCtasPers.EdtCodModExit(Sender: TObject);
begin

   If Length(Trim(EdtCodMod.Text)) = 0 then
      Begin
      // BitBuscarClick(self);
       exit;
      End;

   If Length(Trim(EdtCodMod.Text))>10 Then
      Begin
        MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
        EdtCodMod.Text:='';
        edtApeNom.Text:='';
        Exit;
      End;

   EdtCodMod.Text:=Format('%.10d',[StrToInt(EdtCodMod.Text)]);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest('Select * From APO201 Where ASOCODMOD LIKE '+QuotedStr(Trim(EdtCodMod.Text)+'%'));
   DM1.cdsAso.Open;
   If DM1.cdsAso.RecordCount = 1 Then
       Begin
        dtgAsociadoDblClick(self);
       End
   Else
      If DM1.cdsAso.RecordCount > 1 Then
          Begin
           LimpiaGrids;
           pnlSeleccion.Visible := True;
           pnlSeleccion.Top:= 11;
           pnlSeleccion.Left:=54;
           rbtCodMod.Checked := True;
           rbtCodModClick(SELF);
           edtBuscar2.Text := EdtCodMod.Text;
           BitBtn1Click(SELF);
           End
      Else
          Begin
            MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
         End;

end;

procedure TfCtasPers.dtgCtasPersTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin

    pnlBusca.Left                := 441;
    pnlbusca.Top                 := 128;
   If AFieldName = 'ASOAPENOM' Then
    begin

      Screen.Cursor := crHourGlass;
      edtBusca3.Text := '';
      DM1.cdsUSESy.IndexFieldNames := 'ASOAPENOM';
      edtBusca3.SearchField        := 'ASOAPENOM';
      pnlBusca.Visible             := True;
      lbBusca.Caption              := 'Apellidos y Nombres';
      edtBusca3.SetFocus;
      Screen.Cursor := crDefault;
    end;

  If AFieldName ='ASONCTA' Then
     Begin
      Screen.Cursor := crHourGlass;
      edtBusca3.Text := '';
      DM1.cdsUSESy.IndexFieldNames := 'ASONCTA';
      edtBusca3.SearchField        := 'ASONCTA';
      pnlBusca.Visible             := True;
      lbBusca.Caption              := 'Cta. de Ahorros';
      edtBusca3.SetFocus;
      Screen.Cursor := crDefault;
     End;


end;

procedure TfCtasPers.bbtnClosePnlClick(Sender: TObject);
begin
pnlBusca.Visible := False;
end;

end.
