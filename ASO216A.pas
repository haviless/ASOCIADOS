// Inicio Uso Estándares  : 01/08/2011
// Unidad		  : ASO216A.pas
// Formulario		  : fProgAct
// Fecha de Creación	  : 11/05/2015
// Autor		  : Eduardo Alva
// Objetivo		  : Programación de Actualización de Padrones
// HPC_201505_ASO         : Mejoras a la actualización de padrones

unit ASO216A;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Db;

type
  TfProgAct = class(TForm)
    btnSalir: TBitBtn;
    dbgProActPad: TwwDBGrid;
    dbgProActPadIButton: TwwIButton;
    Shape2: TShape;
    lblleyest: TLabel;
    Label1: TLabel;
    procedure btnSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgProActPadIButtonClick(Sender: TObject);
    procedure dbgProActPadDblClick(Sender: TObject);
    procedure dbgProActPadDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProgAct: TfProgAct;

implementation

uses ASODM, ASO216B;

{$R *.dfm}

procedure TfProgAct.btnSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfProgAct.FormActivate(Sender: TObject);
begin
    dbgProActPad.Refresh;
    dbgProActPad.Selected.Clear;
    dbgProActPad.Selected.Add('CODPAD'#9'8'#9'Código'#9#9);
    dbgProActPad.Selected.Add('FECACTPAD'#9'10'#9'Fecha~Actualización'#9#9);
    dbgProActPad.Selected.Add('USUACTPAD'#9'20'#9'Programado~Por'#9#9);
    dbgProActPad.Selected.Add('ACTREGMUL'#9'1'#9'Actualizar~Multiplicados'#9#9);
    dbgProActPad.Selected.Add('ACTREGUNI'#9'1'#9'Actualizar~Unicos'#9#9);
    dbgProActPad.Selected.Add('ACTREGGEN'#9'1'#9'Actualizar~Maestro '#9#9);
    dbgProActPad.Selected.Add('ESTACTREG'#9'1'#9'Estado~Actualización'#9#9);
    dbgProActPad.Selected.Add('FECINIACT'#9'22'#9'Inicio~Actualización'#9#9);
    dbgProActPad.Selected.Add('FECFINACT'#9'22'#9'Fin~Actualización'#9#9);
    dbgProActPad.Selected.Add('FECHORREG'#9'22'#9'Fecha y Hora~Registro'#9#9);
    dbgProActPad.ApplySelected;

end;

procedure TfProgAct.dbgProActPadIButtonClick(Sender: TObject);
var xSQL:String;
begin
    DM1.xNuevo:='S';
    xSQL:='SELECT CODPAD FROM ASO_PRO_ACT_PAD '+
          'WHERE CODPAD='+QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)+' AND '+
          'ESTACTREG=''T'' ';
    If DM1.CountReg(xSQL)>0 Then
       Begin
           MessageDlg('Actualización Automatica Ya Fue Terminada!!!   '+'Padrón: '+DM1.cdsPadrones.FieldByName('CODPAD').AsString, mtError, [mbOk], 0);
           Exit;
       End;

    xSQL:='SELECT CODPAD FROM ASO_PRO_ACT_PAD '+
          'WHERE CODPAD='+QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)+' AND '+
          'ESTACTREG IN (''P'',''I'') ';
    If DM1.CountReg(xSQL)>0 Then
       Begin
           MessageDlg('Actualización Automatica Ya Fue Programada/Iniciada!!!   '+'Padrón: '+DM1.cdsPadrones.FieldByName('CODPAD').AsString, mtError, [mbOk], 0);
           Exit;
       End;
    Try
      fProgPadron:= TfProgPadron.create(self);
      fProgPadron.lblCodPad.Caption:=DM1.cdsPadrones.FieldByName('CODPAD').AsString;
      fProgPadron.DtpFecPro.Date:=DM1.FechaSys;
      fProgPadron.DtpFecPro.MinDate:=DM1.FechaSys;
      fProgPadron.Showmodal;
    Finally
      fProgPadron.free;
    End;

end;

procedure TfProgAct.dbgProActPadDblClick(Sender: TObject);
begin
    DM1.xNuevo:='N';
    If dbgProActPad.DataSource.DataSet.RecordCount=0 Then Exit;

    If DM1.cdsTipSer.FieldByName('ESTACTREG').AsString='A' Then
       Begin
           MessageDlg('Actualización Automatica Fue Anulada!!!', mtError, [mbOk], 0);
           Exit;
       End;

    If DM1.cdsTipSer.FieldByName('ESTACTREG').AsString='I' Then
       Begin
           MessageDlg('Actualización Automatica Ya Fue Iniciada!!!', mtError, [mbOk], 0);
           Exit;
       End;

    If DM1.cdsTipSer.FieldByName('ESTACTREG').AsString='T' Then
       Begin
           MessageDlg('Actualización Automatica Ya Fue Terminada!!!', mtError, [mbOk], 0);
           Exit;
       End;

    Try
      fProgPadron:= TfProgPadron.create(self);
      fProgPadron.lblCodPad.Caption:=DM1.cdsTipSer.FieldByName('CODPAD').AsString;
      fProgPadron.DtpFecPro.Date:=DM1.cdsTipSer.FieldByName('FECACTPAD').AsDateTime;
      fProgPadron.DtpFecPro.MinDate:=DM1.FechaSys;
      If DM1.cdsTipSer.RecordCount > 0 Then
         Begin
             If DM1.cdsTipSer.FieldByName('ESTACTREG').AsString='A' Then fProgPadron.lblEstGen.Caption:='ANULADO';
             If DM1.cdsTipSer.FieldByName('ESTACTREG').AsString='P' Then fProgPadron.lblEstGen.Caption:='PROGRAMADO';
             If DM1.cdsTipSer.FieldByName('ESTACTREG').AsString='I' Then fProgPadron.lblEstGen.Caption:='INICIADO';
             If DM1.cdsTipSer.FieldByName('ESTACTREG').AsString='T' Then fProgPadron.lblEstGen.Caption:='TERMINADO'; fProgPadron.lblEstGen.Visible:=True;
             If DM1.cdsTipSer.FieldByName('ACTREGMUL').AsString<>'' Then  fProgPadron.chkMul.Checked:=True Else fProgPadron.chkMul.Checked:=False;
             If DM1.cdsTipSer.FieldByName('ACTREGUNI').AsString<>'' Then  fProgPadron.chkUni.Checked:=True Else fProgPadron.chkUni.Checked:=False;
             If DM1.cdsTipSer.FieldByName('ACTREGGEN').AsString<>'' Then  fProgPadron.chkGen.Checked:=True Else fProgPadron.chkGen.Checked:=False;
         End;
      fProgPadron.Showmodal;
    Finally
      fProgPadron.free;
    End;
end;

procedure TfProgAct.dbgProActPadDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  If DM1.cdsTipSer.FieldByName('ESTACTREG').AsString='A' Then
     begin
        dbgProActPad.Canvas.Font.Color := clRed;
        dbgProActPad.DefaultDrawDataCell(rect,Field,State);
      end;

end;

end.
