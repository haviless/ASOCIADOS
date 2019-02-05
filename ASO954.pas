unit ASO954;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, Buttons, ExtCtrls, Db;

type
  TfCtrlReg = class(TForm)
    Panel1: TPanel;
    BitSalir: TBitBtn;
    dtgAsoMan: TwwDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    EdtBuscar: TEdit;
    BitMostrar: TBitBtn;
    BitGrabar: TBitBtn;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblCodMod: TLabel;
    lblAsoApeNom: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    lblTipAso: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    lblDni: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblCtaAhorros: TLabel;
    rdbActivo: TRadioButton;
    rdbInactivo: TRadioButton;
    mObservacion: TMemo;
    dtgDetReg: TwwDBGrid;
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Modificaciones por Fallecimiento del asociado
    lblFallecido: TLabel;
// Fin: HPP_201003_ASO
    procedure BitSalirClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgAsoManDblClick(Sender: TObject);
    procedure dtgAsoManRowChanged(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitGrabarClick(Sender: TObject);
    procedure dtgDetRegDblClick(Sender: TObject);
    procedure dtgDetRegDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    { Private declarations }
    procedure LimpiaGrid;
    procedure Limpia;
    procedure CargaDatos;
    procedure CargaObst;
    function AsignaNroItem(xAsoId:String):String;
    function MaxNroItem(xAsoId:String):String;
  public
    { Public declarations }
  end;

var
  fCtrlReg: TfCtrlReg;

implementation

uses ASODM;

{$R *.dfm}

procedure TfCtrlReg.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfCtrlReg.BitMostrarClick(Sender: TObject);
var xSQL:String;
begin
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Modificaciones por Fallecimiento del asociado
   xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,USEID,UPROID,ASONCTA,SITCTA,ASOTIPID,ASODNI,ASOSEXO,DESHABILITADO,FALLECIDO FROM APO201 '+
         'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(EdtBuscar.Text)+'%')+' AND (DESHABILITADO IS NULL OR DESHABILITADO=''S'') ORDER BY ASOAPENOM ';
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSQL);
   DM1.cdsAso.Open;
   If DM1.cdsAso.RecordCount > 0 Then
      CargaDatos
   Else 
      Limpia;
   dtgAsoMan.DataSource:=DM1.dsAso;
// fin: HPP_201003_ASO
end;

procedure TfCtrlReg.LimpiaGrid;
var xSQL:String;
begin
xSQL:='SELECT ASOID,ASOCODMOD,ASOAPENOM,USEID,UPROID,ASONCTA,SITCTA,ASOTIPID,ASODNI FROM APO201 WHERE ASOID='+QuotedStr('!@#$%^&*#@');
DM1.cdsAso.Close;
DM1.cdsAso.DataRequest(xSQL);
DM1.cdsAso.Open;
dtgAsoMan.DataSource:=DM1.dsAso;
xSQL:='SELECT B.DESCRI ESTADO,OBSERVACION,USUREG,FREG,ITEM FROM ASO007 A,TGE199 B WHERE A.ASOID='+QuotedStr('!@#$$%^&&*')+' AND A.ESTADO=B.ESTADO(+) ORDER BY FREG DESC';
DM1.cdsAsociados.Close;
DM1.cdsAsociados.DataRequest(xSQL);
DM1.cdsAsociados.Open;
mObservacion.Text:=''; lblCodMod.Caption:=''; lblAsoApeNom.Caption:=''; lblTipAso.Caption:=''; lblDni.Caption:=''; lblCtaAhorros.Caption:='';
end;

procedure TfCtrlReg.FormActivate(Sender: TObject);
begin
LimpiaGrid;
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Modificaciones por Fallecimiento del asociado
  lblFallecido.Caption := '';
// Fin: HPP_201003_ASO
end;

procedure TfCtrlReg.dtgAsoManDblClick(Sender: TObject);
begin
 If dtgAsoMan.DataSource.DataSet.RecordCount=0 Then Exit;
  CargaDatos;
end;

procedure TfCtrlReg.CargaDatos;

begin
  lblCodMod.Caption:=DM1.cdsAso.fieldByname('ASOCODMOD').AsString;
  lblAsoApeNom.Caption:=DM1.cdsAso.fieldByname('ASOAPENOM').AsString;
  lblTipAso.Caption:=DM1.cdsAso.fieldByname('ASOTIPID').AsString+'-'+DM1.CrgDescrip('ASOTIPID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOTIPID').AsString)),'APO107','ASOTIPDES');
  lblDni.Caption:=DM1.cdsAso.fieldByname('ASODNI').AsString;
  lblCtaAhorros.Caption:=DM1.cdsAso.fieldByname('ASONCTA').AsString+'  ('+DM1.cdsAso.fieldByname('SITCTA').AsString+')';
  CargaObst;

// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Modificaciones por Fallecimiento del asociado
  //SE MUESTRA LA ETIQUETA DE FALLECIDO Y SE DESHABILITAN LOS CONTROLES INNECESARIOS
   IF DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S' THEN
   BEGIN
      IF DM1.cdsAso.FieldByName('ASOSEXO').AsString = 'M' THEN
         lblFallecido.Caption := 'FALLECIDO'
      ELSE
         lblFallecido.Caption := 'FALLECIDA';
      Panel4.Enabled := false;
      mObservacion.Text := '';
      BitGrabar.Enabled := false;
   END
   ELSE
   BEGIN
      lblFallecido.Caption := '';
      Panel4.Enabled := true;
      BitGrabar.Enabled := true;
   END;
// Fin: HPP_201003_ASO
end;

procedure TfCtrlReg.dtgAsoManRowChanged(Sender: TObject);
begin
  CargaDatos;
end;

procedure TfCtrlReg.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfCtrlReg.BitGrabarClick(Sender: TObject);
var xSQL,xEstado,xItem:String;
begin
If Length(Trim(lblAsoApeNom.Caption))=0 Then
   Begin
      MessageDlg(' No Selecciono Un ASOCIADO ', mtError, [mbOk], 0);
      Exit;
   End;

If Length(Trim(mObservacion.Text))=0 Then
   Begin
      MessageDlg(' Debe Ingresar El MOTIVO  ', mtError, [mbOk], 0);
      Exit;
   End;

If rdbActivo.Checked Then xEstado:='A'; If rdbInactivo.Checked Then xEstado:='I'; xItem:=AsignaNroItem(DM1.cdsAso.fieldByname('ASOID').AsString);
xSQL:='INSERT INTO ASO007(ITEM,ASOID, ASOAPENOM, ASODNI, ASONCTA, SITCTA, ASOCODMOD, ASOTIPID, ESTADO, OBSERVACION, USUREG, FREG ) VALUES '+
      '('+QuotedStr(xItem)+','+QuotedStr(DM1.cdsAso.fieldByname('ASOID').AsString)+','+QuotedStr(DM1.cdsAso.fieldByname('ASOAPENOM').AsString)+','+QuotedStr(DM1.cdsAso.fieldByname('ASODNI').AsString)+','+QuotedStr(DM1.cdsAso.fieldByname('ASONCTA').AsString)+','+QuotedStr(DM1.cdsAso.fieldByname('SITCTA').AsString)+','+QuotedStr(DM1.cdsAso.fieldByname('ASOCODMOD').AsString)+','+QuotedStr(DM1.cdsAso.fieldByname('ASOTIPID').AsString)+','+QuotedStr(xEstado)+','+QuotedStr(StrUpper(pChar(mObservacion.Text)))+','+QuotedStr(DM1.wUsuario)+',SYSDATE)';
DM1.DCOM1.AppServer.EjecutaSql(xSQL);
mObservacion.Text:='';
CargaObst;
end;

procedure TfCtrlReg.CargaObst;
var xSQL:String;
begin
  xSQL:='SELECT B.DESCRI ESTADO,OBSERVACION,USUREG,FREG,ITEM FROM ASO007 A,TGE199 B WHERE A.ASOID='+QuotedStr(DM1.cdsAso.fieldByname('ASOID').AsString)+' AND A.ESTADO=B.ESTADO(+) ORDER BY ITEM DESC';
  DM1.cdsAsociados.Close;
  DM1.cdsAsociados.DataRequest(xSQL);
  DM1.cdsAsociados.Open;

end;

procedure TfCtrlReg.dtgDetRegDblClick(Sender: TObject);
begin
If dtgDetReg.DataSource.DataSet.RecordCount=0 Then Exit;
ShowMessage('Observación :  '+DM1.cdsAsociados.FieldByName('OBSERVACION').AsString);
end;

function TfCtrlReg.AsignaNroItem(xAsoId: String): String;
var xSQL:String;
    xNumero:Integer;
begin
   xSQL:='SELECT ASOID,ITEM FROM ASO007 WHERE ASOID='+QuotedStr(xAsoId)+' ORDER BY ITEM';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
      Begin
         DM1.cdsQry.First; xNumero := 0;
         While Not DM1.cdsQry.Eof Do
         Begin
            xNumero := xNumero + 1;
            If xNumero<>DM1.cdsQry.FieldByName('ITEM').AsInteger Then
               Begin
                  Result:=Format('%.3d',[xNumero]);
                  Exit;
               End;
            DM1.cdsQry.Next;
         End;
         If DM1.cdsQry.Eof Then
            Begin
               Result:=Format('%.3d',[xNumero+1]);
               Exit;
            End;
      End
   Else
      Result := '001';

   DM1.cdsQry.Close;




end;

function TfCtrlReg.MaxNroItem(xAsoId: String): String;
var xSQL:String;
begin
   xSQL:='SELECT MAX(ITEM) ITEM FROM ASO007 WHERE ASOID='+QuotedStr(xAsoId);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
      Begin
         Result:=DM1.cdsQry.FieldByName('ITEM').AsString;
      End
   Else
      Result:='000';

   DM1.cdsQry.Close;
end;

procedure TfCtrlReg.dtgDetRegDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  If (DM1.cdsAsociados.FieldByName('ITEM').AsString=MaxNroItem(DM1.cdsAso.fieldByname('ASOID').AsString)) AND (DM1.cdsAsociados.FieldByName('ESTADO').AsString='Activo' )  Then
     begin
        dtgDetReg.Canvas.Font.Color := clGreen;
        dtgDetReg.DefaultDrawDataCell(rect,Field,State);
      end;
  If (DM1.cdsAsociados.FieldByName('ITEM').AsString=MaxNroItem(DM1.cdsAso.fieldByname('ASOID').AsString)) AND (DM1.cdsAsociados.FieldByName('ESTADO').AsString='Inactivo' )  Then
     begin
        dtgDetReg.Canvas.Font.Color := clRed;
        dtgDetReg.DefaultDrawDataCell(rect,Field,State);
      end;

end;

procedure TfCtrlReg.Limpia;
begin
mObservacion.Text:=''; lblCodMod.Caption:=''; lblAsoApeNom.Caption:=''; lblTipAso.Caption:=''; lblDni.Caption:=''; lblCtaAhorros.Caption:='';
end;

end.
