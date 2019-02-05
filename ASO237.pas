// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO237.pas
// Formulario              :  fAutDesONP
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Permitir la Autorización de descuento ONP

// HPC_201315_ASO          : Registro del número de autorización ONP e impresión de carta.
// SPP_201401_ASO          : Se realiza el pase a producción a partir del HPC_201315_ASO.
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES

unit ASO237;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, DB, ExtCtrls,
  ppBands, ppCtrls, ppStrtch, ppMemo, ppPrnabl, ppClass, ppCache, ppComm,
  // INICIO HPC_201513_ASO
  ppRelatv, ppProd, ppReport, DBGrids;
  // FIN HPC_201513_ASO

type
  TfAutDesONP = class(TForm)
    BtnSalir: TBitBtn;
    gbAutDesONP: TGroupBox;
    dtgAutONP: TwwDBGrid;
    Label1: TLabel;
    edtBuscar: TEdit;
    dtgAutONPIButton: TwwIButton;
    pnlActDesONP: TPanel;
    Label2: TLabel;
    edtDNI: TEdit;
    Shape1: TShape;
    Shape2: TShape;
    BtnExit: TBitBtn;
    BtnGrabar: TBitBtn;
    Shape3: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lblDNI: TLabel;
    lblCodPension: TLabel;
    lblApeNombres: TLabel;
    Label7: TLabel;
    lblTipAso: TLabel;
    Label9: TLabel;
    lblNumAut: TLabel;
    Shape4: TShape;
    Label8: TLabel;
    Label10: TLabel;
    lblUgel: TLabel;
    lblDepartamento: TLabel;
    ppCartaONP: TppReport;
    ppHeaderBand10: TppHeaderBand;
    ppDetailBand10: TppDetailBand;
    ppShape154: TppShape;
    ppMemo9: TppMemo;
    ppLabel255: TppLabel;
    lblAsoOnp: TppLabel;
    lblDniOnp: TppLabel;
    ppLabel280: TppLabel;
    ppLabel273: TppLabel;
    ppLabel279: TppLabel;
    ppShape155: TppShape;
    ppShape156: TppShape;
    ppShape157: TppShape;
    ppShape158: TppShape;
    ppShape159: TppShape;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppShape160: TppShape;
    lblNumCarOnp: TppLabel;
    lblFecCarOnp: TppLabel;
    lblCodPenOnp: TppLabel;
    ppFooterBand10: TppFooterBand;
    ppSummaryBand5: TppSummaryBand;
    BtnImprimir: TBitBtn;
    // INICIO HPC_201513_ASO
    btnExportar: TBitBtn;
    dtgData: TDBGrid;
    // FIN HPC_201513_ASO
    procedure BtnSalirClick(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure BtnExitClick(Sender: TObject);
    procedure BtnGrabarClick(Sender: TObject);
    procedure dtgAutONPIButtonClick(Sender: TObject);
    procedure dtgAutONPDblClick(Sender: TObject);
    procedure edtDNIKeyPress(Sender: TObject; var Key: Char);
    procedure BtnImprimirClick(Sender: TObject);
    // INICIO HPC_201513_ASO
    procedure FormResize(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    // FIN HPC_201513_ASO
  private
    { Private declarations }
    Function GrbCorrelativoONP: String;
    Procedure LimpiaEtiquetas;
    Function MaxFecOto(xDNI:String):String;
  public
    { Public declarations }
  end;

var
  fAutDesONP: TfAutDesONP;

implementation

uses ASODM;

{$R *.dfm}

procedure TfAutDesONP.BtnSalirClick(Sender: TObject);
begin
   close;
end;

procedure TfAutDesONP.edtBuscarChange(Sender: TObject);
begin
   DM1.cdsAutDesONP.Locate('ASODNI', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey])
end;

procedure TfAutDesONP.edtBuscarKeyPress(Sender: TObject; var Key: Char);
var xSQL:String;
begin
   If Key=#13 Then
   Begin
      dtgAutONP.SetFocus;
      edtBuscar.Text:='';
   End;

end;

function TfAutDesONP.GrbCorrelativoONP: String;
var xSQL:String;
begin
xSQL:='SELECT NVL(MAX(SUBSTR(NUMAUTONP,1,6)),0)+1 NROAUTONP FROM APO201 WHERE NUMAUTONP IS NOT NULL';
DM1.cdsCorrONP.Close;
DM1.cdsCorrONP.DataRequest(xSQL);
DM1.cdsCorrONP.Open;
Result:= Format('%.6d', [DM1.cdsCorrONP.FieldByName('NROAUTONP').AsInteger]);
end;

procedure TfAutDesONP.BtnExitClick(Sender: TObject);
begin
pnlActDesONP.Visible:=False;
dtgAutONP.Enabled:=True;
end;

procedure TfAutDesONP.BtnGrabarClick(Sender: TObject);
var Boton:Integer;
    xSQL:String;
begin

If Length(Trim(lblDNI.Caption))<>8 Then
   Begin
       MessageDlg('Verifique, Asociado No Tiene DNI o El Dato Es Inconsistente!!!', mtConfirmation, [mbOk], 0);
       Exit;
   End;
Boton := Application.MessageBox ('¿Esta Seguro de Generar el Número de Autorización ONP?','Mantenimiento de Asociados',MB_YESNO+MB_ICONQUESTION);
If Boton = ID_YES Then
   Begin
        lblNumAut.Caption:=GrbCorrelativoONP;
        // INICIO HPC_201513_ASO
        xSQL:='UPDATE APO201 '
            + '   SET NUMAUTONP = ' + QuotedStr(lblNumAut.Caption)
            + '      ,FECAUTONP = SYSDATE '
            + '      ,USUAUTONP = ' + QuotedStr(DM1.wUsuario)
            + '      ,ORIOPEONP = (SELECT OFDESID FROM TGE006 WHERE USERID = ' + QuotedStr(DM1.wUsuario) + ') '
            + ' WHERE ASODNI = '+QuotedStr(lblDNI.Caption);
        // FIN HPC_201513_ASO
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        // INICIO HPC_201513_ASO
        (*
        xSQL:='SELECT ASOID,ASOAPENOMDNI,ASODNI,ASOTIPID,CODPENSION, '+
              'NUMAUTONP,TO_DATE(FECAUTONP) FECAUTONP,A.UPROID,A.UPAGOID,A.USEID,USENOM,DPTODES '+
              'FROM APO201 A,APO101 B,APO158 C WHERE ASOTIPID=''CE'' AND REGPENID=''02'' '+
              'AND NUMAUTONP IS NOT NULL AND A.UPROID=B.UPROID(+) '+
              'AND A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+) '+
              'AND B.DPTOID=C.DPTOID(+) ORDER BY NUMAUTONP ';
        *)
        xSQL:='SELECT ASOID, '
            + '       ASOAPENOMDNI, '
            + '       ASODNI, '
            + '       ASOTIPID, '
            + '       CODPENSION, '
            + '       NUMAUTONP, '
            + '       TO_DATE(FECAUTONP) FECAUTONP, '
            + '       A.UPROID, '
            + '       A.UPAGOID, '
            + '       A.USEID, '
            + '       USENOM, '
            + '       DPTODES, '
            + '       A.USUAUTONP, '
            + '       D.OFDESNOM '
            + '  FROM APO201 A, '
            + '       APO101 B, '
            + '       APO158 C, '
            + '       APO110 D  '
            + ' WHERE ASOTIPID = ''CE'' '
            + '   AND REGPENID = ''02'' '
            + '   AND NUMAUTONP IS NOT NULL '
            + '   AND A.UPROID = B.UPROID(+) '
            + '   AND A.UPAGOID = B.UPAGOID(+) '
            + '   AND A.USEID = B.USEID(+) '
            + '   AND B.DPTOID = C.DPTOID(+) '
            + '   AND A.ORIOPEONP = D.OFDESID(+) '
            + ' ORDER BY NUMAUTONP';
        // FIN HPC_201513_ASO
        DM1.cdsAutDesONP.Close;
        DM1.cdsAutDesONP.DataRequest(xSQL);
        DM1.cdsAutDesONP.Open;
        dtgAutONP.Enabled:=True;
        edtDNI.Enabled:=False;
        BtnGrabar.Enabled:=False;
        pnlActDesONP.Visible:=False;
        DM1.cdsAutDesONP.Last;
        dtgAutONP.SetFocus;
   End;


end;

procedure TfAutDesONP.dtgAutONPIButtonClick(Sender: TObject);
begin
LimpiaEtiquetas;
pnlActDesONP.Visible:=True;
BtnGrabar.Enabled:=True;
edtDNI.Enabled:=True;   
edtDNI.SetFocus;
end;

procedure TfAutDesONP.dtgAutONPDblClick(Sender: TObject);
begin
edtDNI.Text:='';
lblDNI.Caption:=DM1.cdsAutDesONP.fieldByname('ASODNI').AsString;
lblCodPension.Caption:=DM1.cdsAutDesONP.fieldByname('CODPENSION').AsString;
lblApeNombres.Caption:=DM1.cdsAutDesONP.fieldByname('ASOAPENOMDNI').AsString;
lblTipAso.Caption:=DM1.cdsAutDesONP.fieldByname('ASOTIPID').AsString;
lblNumAut.Caption:=DM1.cdsAutDesONP.fieldByname('NUMAUTONP').AsString;
If Length(Trim(lblNumAut.Caption)) > 0 Then BtnGrabar.Enabled:=False;
lblUgel.Caption:=DM1.cdsAutDesONP.fieldByname('USENOM').AsString;
lblDepartamento.Caption:=DM1.cdsAutDesONP.fieldByname('DPTODES').AsString;
pnlActDesONP.Visible:=True;
edtDNI.Enabled:=False;
dtgAutONP.Enabled:=False;
end;

procedure TfAutDesONP.LimpiaEtiquetas;
begin
lblDNI.Caption:='';
lblCodPension.Caption:='';
lblApeNombres.Caption:='';
lblTipAso.Caption:='';
lblNumAut.Caption:='';
lblUgel.Caption:='';
lblDepartamento.Caption:='';
end;

procedure TfAutDesONP.edtDNIKeyPress(Sender: TObject; var Key: Char);
var xSQL:String;
begin
   If Key=#13 Then
   Begin
       // INICIO HPC_201513_ASO
       (*
       xSQL:='SELECT ASOID,ASOAPENOMDNI,ASODNI,ASOTIPID,CODPENSION, '+
             'NUMAUTONP,A.UPROID,A.UPAGOID,A.USEID,USENOM,DPTODES '+
             'FROM APO201 A,APO101 B,APO158 C WHERE ASODNI='+QuotedStr(edtDNI.Text)+' AND ASOTIPID=''CE'' AND REGPENID=''02'' '+
             'AND A.UPROID=B.UPROID(+) '+
             'AND A.UPAGOID=B.UPAGOID(+) AND A.USEID=B.USEID(+) '+
             'AND B.DPTOID=C.DPTOID(+) ORDER BY NUMAUTONP ';
       *)
       xSQL:='SELECT ASOID, '
           + '       ASOAPENOMDNI, '
           + '       ASODNI, '
           + '       ASOTIPID, '
           + '       CODPENSION, '
           + '       NUMAUTONP, '
           + '       TO_DATE(FECAUTONP) FECAUTONP, '
           + '       A.UPROID, '
           + '       A.UPAGOID, '
           + '       A.USEID, '
           + '       USENOM, '
           + '       DPTODES '
           + '  FROM APO201 A, '
           + '       APO101 B, '
           + '       APO158 C '
           + ' WHERE ASODNI = '+QuotedStr(edtDNI.Text)
           + '   AND ASOTIPID = ''CE'' '
           + '   AND REGPENID = ''02'' '
           + '   AND A.UPROID = B.UPROID(+) '
           + '   AND A.UPAGOID = B.UPAGOID(+) '
           + '   AND A.USEID = B.USEID(+) '
           + '   AND B.DPTOID = C.DPTOID(+) '
           + ' ORDER BY NUMAUTONP ';
       // FIN HPC_201513_ASO
       DM1.cdsAutDesReg.Close;
       DM1.cdsAutDesReg.DataRequest(xSQL);
       DM1.cdsAutDesReg.Open;
       If DM1.cdsAutDesReg.RecordCount > 0 Then
          Begin
            lblDNI.Caption:=DM1.cdsAutDesReg.fieldByname('ASODNI').AsString;
            lblCodPension.Caption:=DM1.cdsAutDesReg.fieldByname('CODPENSION').AsString;
            lblApeNombres.Caption:=DM1.cdsAutDesReg.fieldByname('ASOAPENOMDNI').AsString;
            lblTipAso.Caption:=DM1.cdsAutDesReg.fieldByname('ASOTIPID').AsString;
            lblNumAut.Caption:=DM1.cdsAutDesReg.fieldByname('NUMAUTONP').AsString;
            If Length(Trim(lblNumAut.Caption)) > 0 Then BtnGrabar.Enabled:=False Else BtnGrabar.Enabled:=True;
            lblUgel.Caption:=DM1.cdsAutDesReg.fieldByname('USENOM').AsString;
            lblDepartamento.Caption:=DM1.cdsAutDesReg.fieldByname('DPTODES').AsString;
          End
       Else
          MessageDlg('DNI no existe o pertenece a un regimen de pensión distinto a ONP o No Es Cesante', mtError, [mbOk], 0);
   End;
end;

procedure TfAutDesONP.BtnImprimirClick(Sender: TObject);
var xSQL:String;
    xFecAut:String;
begin
If DM1.cdsAutDesONP.RecordCount > 0 Then
   Begin
       lblAsoOnp.Caption:=DM1.cdsAutDesONP.FieldByName('ASOAPENOMDNI').AsString;
       lblDniOnp.Caption:=DM1.cdsAutDesONP.FieldByName('ASODNI').AsString;
       lblNumCarOnp.Caption:=DM1.cdsAutDesONP.FieldByName('NUMAUTONP').AsString;
       xFecAut:=DM1.cdsAutDesONP.FieldByName('FECAUTONP').AsString;
       If Length(Trim(xFecAut))=0 Then
          Begin
             xFecAut:=MaxFecOto(lblDniOnp.Caption);
             xSQL:='UPDATE APO201 SET FECAUTONP='+QuotedStr(xFecAut)+' WHERE ASODNI='+QuotedStr(lblDniOnp.Caption);
             DM1.DCOM1.AppServer.EjecutaSql(xSQL);
          End;
       lblNumCarOnp.Caption:=DM1.cdsAutDesONP.FieldByName('NUMAUTONP').AsString;
       lblFecCarOnp.Caption:=xFecAut;
       lblCodPenOnp.Caption:=DM1.cdsAutDesONP.FieldByName('CODPENSION').AsString;
       ppCartaONP.Print;
       ppCartaONP.Stop;
   End;
end;

function TfAutDesONP.MaxFecOto(xDNI: String): String;
var xSQL:String;
begin
   xSQL:='SELECT NVL(MAX(CREFOTORG),TO_DATE(SYSDATE)) CREFOTORG FROM CRE301 WHERE ASODNI='+QuotedStr(xDNI)+' AND CREESTID NOT IN (''04'',''13'') ';
   DM1.cdsAutDesReg.Close;
   DM1.cdsAutDesReg.DataRequest(xSQL);
   DM1.cdsAutDesReg.Open;
   If DM1.cdsAutDesReg.RecordCount=1 Then Result:= DM1.cdsAutDesReg.FieldByName('CREFOTORG').AsString;
   DM1.cdsAutDesReg.Close;
end;

// INICIO HPC_201513_ASO
(******************************************************************************)
procedure TfAutDesONP.FormResize(Sender: TObject);
begin
  pnlActDesONP.Left := round((self.Width - pnlActDesONP.Width)/2);
  pnlActDesONP.Top := dtgAutONP.Top + 100;
end;

(******************************************************************************)
procedure TfAutDesONP.btnExportarClick(Sender: TObject);
begin
  If DM1.cdsAutDesONP.RecordCount > 0 Then Begin
    try
      Screen.Cursor:=crHourGlass;
      dtgData.DataSource := DM1.dsAutDesONP;
      DM1.HojaExcel('Autorizacion de Descuento',DM1.dsAutDesONP, dtgData);
      Screen.Cursor:=crDefault;
    except
    	on Ex: Exception do
    			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
    end;
  End;
  Screen.Cursor:=crDefault;
end;
(******************************************************************************)
// FIN HPC_201513_ASO
end.
