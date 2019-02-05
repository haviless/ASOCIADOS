// Inicio Uso Estándares  : 01/08/2011
// Unidad		         : ASO216B.pas
// Formulario		  : fProgPadron
// Fecha de Creación      : 12/05/2015
// Autor	          : Eduardo Alva
// Objetivo		  : Registrar Programación de Actualización de Padrones
// HPC_201505_ASO         : Mejoras a la actualización de padrones

unit ASO216B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DB;

type
  TfProgPadron = class(TForm)
    btnSalir: TBitBtn;
    pnlConAct: TPanel;
    lblCodigo: TLabel;
    Label1: TLabel;
    lblCodPad: TLabel;
    DtpFecPro: TDateTimePicker;
    btnGrabar: TBitBtn;
    btnAnular: TBitBtn;
    chkUni: TCheckBox;
    chkGen: TCheckBox;
    chkMul: TCheckBox;
    Shape1: TShape;
    lblEstGen: TLabel;
    mInfPro: TMemo;
    lblTipAct: TLabel;
    procedure btnSalirClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnAnularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProgPadron: TfProgPadron;

implementation

uses ASODM;

{$R *.dfm}

procedure TfProgPadron.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfProgPadron.btnGrabarClick(Sender: TObject);
var xSQL:String;
    xRegistro: TBookmark;
begin
If (Not chkUni.Checked) And (Not chkGen.Checked) And (Not chkMul.Checked) Then
   Begin
      MessageDlg('Debe marcar al menos tipo de actualización!!!', mtError, [mbOk], 0);
      Exit;
   End;
   xRegistro:=DM1.cdsTipSer.GetBookmark;
   DM1.cdsTipSer.Edit;
   DM1.cdsTipSer.FieldByName('CODPAD').AsString:=lblCodPad.Caption;
   If chkMul.Checked Then DM1.cdsTipSer.FieldByName('ACTREGMUL').AsString:='P' Else DM1.cdsTipSer.FieldByName('ACTREGMUL').AsString:='';
   If chkUni.Checked Then DM1.cdsTipSer.FieldByName('ACTREGUNI').AsString:='P' Else DM1.cdsTipSer.FieldByName('ACTREGUNI').AsString:='';
   If chkGen.Checked Then DM1.cdsTipSer.FieldByName('ACTREGGEN').AsString:='P' Else DM1.cdsTipSer.FieldByName('ACTREGGEN').AsString:='';
   DM1.cdsTipSer.Post;

   If DM1.xNuevo='S' Then
      Begin
         xSQL:='INSERT INTO ASO_PRO_ACT_PAD(CODPAD,FECACTPAD,USUACTPAD,ESTACTREG,FECHORREG,ACTREGMUL,ACTREGUNI,ACTREGGEN) '+
               'VALUES ('+QuotedStr(lblCodPad.Caption)+','+QuotedStr(DateToStr(DtpFecPro.Date))+','+QuotedStr(DM1.wUsuario)+',''P'',SYSDATE,'+QuotedStr(DM1.cdsTipSer.FieldByName('ACTREGMUL').AsString)+','+QuotedStr(DM1.cdsTipSer.FieldByName('ACTREGUNI').AsString)+','+QuotedStr(DM1.cdsTipSer.FieldByName('ACTREGGEN').AsString)+')';
      End
   Else
      Begin
         xSQL:='UPDATE ASO_PRO_ACT_PAD SET FECACTPAD='+QuotedStr(DateToStr(DtpFecPro.Date))+',USUACTPAD='+QuotedStr(DM1.wUsuario)+',FECHORREG=SYSDATE, '+
               'ACTREGMUL='+QuotedStr(DM1.cdsTipSer.FieldByName('ACTREGMUL').AsString)+',ACTREGUNI='+QuotedStr(DM1.cdsTipSer.FieldByName('ACTREGUNI').AsString)+',ACTREGGEN='+QuotedStr(DM1.cdsTipSer.FieldByName('ACTREGGEN').AsString)+' WHERE CODPAD='+QuotedStr(lblCodPad.Caption);
      End;
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSQL:='SELECT CODPAD,FECACTPAD,USUACTPAD,ACTREGMUL,ACTREGUNI, '+
            'ACTREGGEN,ESTACTREG,USUANUACT,FECANUACT,FECINIACT, '+
            'FECFINACT,FECHORREG FROM ASO_PRO_ACT_PAD ORDER BY CODPAD,FECHORREG DESC';
      DM1.cdsTipSer.Close;
      DM1.cdsTipSer.DataRequest(xSQL);
      DM1.cdsTipSer.Open;
      DM1.cdsTipSer.GotoBookmark(xRegistro);
      Close;
end;

procedure TfProgPadron.btnAnularClick(Sender: TObject);
var Boton:Integer;
    xSQL:String;
    xRegistro: TBookmark;
begin
  xSQL:='SELECT CODPAD FROM ASO_PRO_ACT_PAD WHERE CODPAD='+QuotedStr(lblCodPad.Caption);
  If DM1.CountReg(xSQL)=0 Then
     Begin
        Exit;
     End;
  If DM1.cdsTipSer.FieldByName('ESTACTREG').AsString<>'P' Then
     Begin
        MessageDlg('Registro No Está Pendiente!!!', mtError, [mbOk], 0);
        Exit;
     End;
  Boton := Application.MessageBox ('Está Seguro de Anular Programación Automática?','Asociados',MB_YESNO+MB_ICONQUESTION);
  If Boton = ID_YES Then
  Begin
     xRegistro:=DM1.cdsTipSer.GetBookmark;
     xSQL:='UPDATE ASO_PRO_ACT_PAD SET ESTACTREG=''A'',USUANUACT='+QuotedStr(DM1.wUsuario)+',FECANUACT=SYSDATE '+
           'WHERE CODPAD='+QuotedStr(lblCodPad.Caption)+' AND ESTACTREG=''P'' ';
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);
     xSQL:='SELECT CODPAD,FECACTPAD,USUACTPAD,ACTREGMUL,ACTREGUNI, '+
           'ACTREGGEN,ESTACTREG,USUANUACT,FECANUACT,FECINIACT, '+
           'FECFINACT,FECHORREG FROM ASO_PRO_ACT_PAD ORDER BY CODPAD,FECHORREG DESC';
     DM1.cdsTipSer.Close;
     DM1.cdsTipSer.DataRequest(xSQL);
     DM1.cdsTipSer.Open;
     DM1.cdsTipSer.GotoBookmark(xRegistro);
     Close;
  End;
end;

end.


