unit ASO937;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
  jpeg,IniFiles,DateUtils;

type
  TfResNomb = class(TForm)
    grpResoluciones: TGroupBox;
    grpDatos: TGroupBox;
    DbLlTipRes: TwwDBLookupCombo;
    Panel10: TPanel;
    edtDesRes: TEdit;
    Label10: TLabel;
    dbeNroRes: TwwDBEdit;
    dbDtpFecRes: TwwDBDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    z2bbtnAcepta: TfcShapeBtn;
    dtgResoluciones: TwwDBGrid;
    procedure DbLlTipResChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure z2bbtnAceptaClick(Sender: TObject);
    procedure dtgResolucionesDrawDataCell(Sender: TObject;
      const Rect: TRect; Field: TField; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fResNomb: TfResNomb;

implementation

uses ASODM;

{$R *.dfm}

procedure TfResNomb.DbLlTipResChange(Sender: TObject);
begin
   If DM1.cdsRecursos.Locate('TIPRESID',DbLlTipRes.Text,[]) then
      Begin
        edtDesRes.Text := DM1.cdsRecursos.FieldByName('TIPRESDES').asstring;
      End
   Else
      Begin
        if Length(DbLlTipRes.Text) <> 2 then
           Begin
              Beep;
              edtDesRes.Text  :='';
           End;
      End

end;

procedure TfResNomb.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

procedure TfResNomb.z2bbtnAceptaClick(Sender: TObject);
var xSQL,xAsoId:String;
begin

If Length(Trim(edtDesRes.Text))=0 Then
   Begin
      MessageDlg(' Debe Seleccionar Un Tipo De Resolución', mtError,[mbOk],0);
      Exit;
   End;

If Length(Trim(dbeNroRes.Text))=0 Then
   Begin
      MessageDlg(' Debe Ingresar El Numero De Resolución ', mtError,[mbOk],0);
      Exit;
   End;

If Length(Trim(dbDtpFecRes.Text))=0 Then
   Begin
      MessageDlg(' Debe Ingresar La Fecha De La Resolución ', mtError,[mbOk],0);
      Exit;
   End;

xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
xSQL:='UPDATE APO205 SET RESFVIG=''N'' WHERE ASOID='+QuotedStr(xAsoId);
DM1.DCOM1.AppServer.EjecutaSql(xSQL);
xSQL:='INSERT INTO APO205(ASOID,ASOCODMOD,ASOCODAUX,ASONRES,ASOFRES,RESID,RESFVIG,FREG,HREG,USUARIO) '+
      'VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.cdsAso.fieldbyname('ASOCODMOD').AsString)+','+QuotedStr(DM1.cdsAso.fieldbyname('ASOCODAUX').AsString)+','+QuotedStr(dbeNroRes.Text)+','+QuotedStr(DateToStr(dbDtpFecRes.Date))+','+QuotedStr(DbLlTipRes.Text)+',''S'','+QuotedStr(DateToStr(DM1.FechaSys))+',SYSDATE,'+QuotedStr(DM1.wUsuario)+')';
DM1.DCOM1.AppServer.EjecutaSql(xSQL);

DM1.cdsAso.Edit;
If DbLlTipRes.Text = '01' Then
   Begin
   
    DM1.cdsAso.FieldByName('ASORESNOM').AsString    :=dbeNroRes.Text;
    DM1.cdsAso.FieldByName('ASOFRESNOM').AsDateTime :=dbDtpFecRes.Date;
    xSQL:='UPDATE APO201 SET ASORESNOM='+QuotedStr(dbeNroRes.Text)+',ASOFRESNOM='+QuotedStr(DateToStr(dbDtpFecRes.Date))+',ASOTIPID=''DO'',ASOSITID=''AC'' WHERE ASOID='+QuotedStr(xAsoId);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
If DbLlTipRes.Text = '04' Then
   Begin
    DM1.cdsAso.FieldByName('ASORESCESE').AsString    :=dbeNroRes.Text;
    DM1.cdsAso.FieldByName('ASOFRESCESE').AsDateTime :=dbDtpFecRes.Date;
    xSQL:='UPDATE APO201 SET ASORESCESE='+QuotedStr(dbeNroRes.Text)+',ASOFRESCESE='+QuotedStr(DateToStr(dbDtpFecRes.Date))+',ASOTIPID=''CE'',ASOSITID=''CE'' WHERE ASOID='+QuotedStr(xAsoId);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;

xSQL:='SELECT ASOID,ASOCODMOD,ASONRES,ASOFRES,RESID,B.TIPRESDES TIPRESDES,RESFVIG,A.USUARIO,A.FREG,A.HREG FROM APO205 A,APO104 B '+
      'WHERE ASOID='+QuotedStr(xAsoId)+' AND A.RESID=B.TIPRESID  ORDER BY HREG DESC';
DM1.cdsGradoA.Close;
DM1.cdsGradoA.DataRequest(xSQL);
DM1.cdsGradoA.Open;
If DM1.cdsGradoA.RecordCount > 1 Then DM1.cdsGradoA.First;
{DM1.cdsAso.Close;
DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId)));
DM1.cdsAso.Open;}
If DM1.xCnd<>'M' Then DM1.CrgDatos;
DbLlTipRes.Text:='';  dbeNroRes.Text:=''; dbDtpFecRes.Date:=0; If DM1.cdsGradoA.RecordCount > 1 Then DM1.cdsGradoA.First;


end;

procedure TfResNomb.dtgResolucionesDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  If DM1.cdsGradoA.FieldByName('RESFVIG').AsString='S' Then
     begin
        dtgResoluciones.Canvas.Font.Color := clRed;
        dtgResoluciones.DefaultDrawDataCell(rect,Field,State);
      end;

end;

end.
