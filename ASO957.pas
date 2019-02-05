unit ASO957;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Buttons, Db;

type
  TfMstPrest = class(TForm)
    Panel1: TPanel;
    dtgPrestamos: TwwDBGrid;
    BitSalir: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure dtgPrestamosDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgPrestamosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMstPrest: TfMstPrest;

implementation

uses ASODM, COB903;

{$R *.dfm}

procedure TfMstPrest.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfMstPrest.dtgPrestamosDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='21') Or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='23') Or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='26') or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='24') Then
     begin
        dtgPrestamos.Canvas.Font.Color := clGreen;
        dtgPrestamos.DefaultDrawDataCell(rect,Field,State);
      end;

  if (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='12') Or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='22') Or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='29') Then
     begin
        dtgPrestamos.Canvas.Font.Color := $00FF5BFF;
        dtgPrestamos.DefaultDrawDataCell(rect,Field,State);
      end;

  If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='13') Or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='04')  Then
     begin
        dtgPrestamos.Canvas.Font.Color := clRed;
        dtgPrestamos.DefaultDrawDataCell(rect,Field,State);
      end;

end;

procedure TfMstPrest.dtgPrestamosDblClick(Sender: TObject);
var
   xAsoId,xCreDid,xCreEstid,xSQL:String;
begin
   If dtgPrestamos.DataSource.DataSet.RecordCount=0 Then Exit;
   fCronoPag:=Nil;
   fCronoPag:= TfCronoPag.create(self);
   xAsoId  := DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
   xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString;
   xCreEstid:=DM1.cdsSolicitud.fieldbyname('CREESTID').AsString;
   If (xCreEstid='04') Or (xCreEstid='13') Then
   Begin
      MessageDlg('PRESTAMO : '+DM1.cdsSolicitud.fieldbyname('CREESTADO').AsString+#13+#13+'FECHA : '+DM1.cdsSolicitud.fieldbyname('CREFANUL').AsString+#13+#13+'MOTIVO : '+DM1.cdsSolicitud.fieldbyname('CREMENOBS').AsString+#13+#13+'Anulado Por : '+DM1.cdsSolicitud.fieldbyname('USERANUL').AsString , mtError, [mbOk], 0);
   End;
   DM1.CargaCronograma(xAsoId,xCreDid);
   fCronoPag.Showmodal;
   fCronoPag.free;
end;

end.
