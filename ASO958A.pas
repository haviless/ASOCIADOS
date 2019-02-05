unit ASO958A;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFautorizaDescuento = class(TForm)
    Btnaporte: TBitBtn;
    BtnCuota: TBitBtn;
    procedure BtnaporteClick(Sender: TObject);
    procedure BtnCuotaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FautorizaDescuento: TFautorizaDescuento;

implementation

uses ASODM, ASO964;

{$R *.dfm}

procedure TFautorizaDescuento.BtnaporteClick(Sender: TObject);
Var xCodReg, xAsoId,xsql:String;
  Boton:Integer;
begin
  xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
  If DM1.cdsAso.fieldbyname('ASOTIPID').AsString='CE' Then
  Begin
    MessageDlg('Solo disponible para asociados activos.!!!', mtError,[mbOk],0);
    Exit;
  End;

  DM1.xautdes:='A';
  If DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId), DM1.sAPO201 ,'AUTDESAPO')='S' Then
  Begin
    Try
      Fautdes:= TFautdes.create(self);
      Fautdes.Caption:='Desautoriza el descuento de Aportes';
      Fautdes.Showmodal;
    Finally
      Fautdes.free;
    End;
  End
  Else
  Begin
    Boton := Application.MessageBox ('¿Autoriza descuento de aportes?','Autorización de descuento de aportes',MB_YESNO+MB_ICONQUESTION);
    If Boton = ID_YES Then
    Begin
      Screen.Cursor:=crHourGlass;
      xCodReg := DM1.CodReg;
      DM1.Registro_Aud(xAsoId,'0',xCodReg);
      xSQL:='UPDATE '+DM1.sAPO201+' SET AUTDESAPO='+QuotedStr('S')+',FECAUTDESAPO=SYSDATE,USUREGAUTDESAPO='+QuotedStr(DM1.wUsuario)+',OFIREGAUTDESAPO='+QuotedStr(DM1.xOfiDes)+',CODMODAUTDESAPO=''ASO'' WHERE ASOID='+QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      DM1.Registro_Aud(xAsoId,'1',xCodReg);
      MessageDlg('El registro ha sido actualizado !!!', mtConfirmation,[mbOk],0);
      Screen.Cursor:=crDefault;
    End;
  End;
end;


procedure TFautorizaDescuento.BtnCuotaClick(Sender: TObject);
Var xCodReg, xAsoId,xsql:String;
  Boton:Integer;
begin
  xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
  DM1.xautdes:='C';

  If DM1.CrgDescrip('ASOID='+QuotedStr(xAsoId), DM1.sAPO201,'AUTDESCUO')='S' Then
  Begin
    Try
      Fautdes:= TFautdes.create(self);
      Fautdes.Caption:='Desautoriza el descuento de Cuotas';
      Fautdes.Showmodal;
    Finally
      Fautdes.free;
    End;
  End
  Else
  Begin
    Boton := Application.MessageBox ('¿Autoriza descuento de Cuotas?','Autorización de descuento de Cuotas',MB_YESNO+MB_ICONQUESTION);
    If Boton = ID_YES Then
    Begin
      Screen.Cursor:=crHourGlass;
      xCodReg := DM1.CodReg;
      DM1.Registro_Aud(xAsoId,'0',xCodReg);
      xSQL:='UPDATE '+DM1.sAPO201+' SET AUTDESCUO='+QuotedStr('S')+',FECAUTDESCUO=SYSDATE,USUREGAUTDESCUO='+QuotedStr(DM1.wUsuario)+',OFIREGAUTDESCUO='+QuotedStr(DM1.xOfiDes)+',CODMODAUTDESCUO=''ASO'' WHERE ASOID='+QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      DM1.Registro_Aud(xAsoId,'1',xCodReg);
      MessageDlg('El registro ha sido actualizado !!!', mtConfirmation,[mbOk],0);
      Screen.Cursor:=crDefault;
    End;
  End;
end;


procedure TFautorizaDescuento.FormCreate(Sender: TObject);
var xsql:string;
begin

  {XSQL:='Select NVL(AUTDESCUO,''N'')AUTDESCUO From Apo101 Where Uproid='''+Dm1.cdsAso.FieldByName('Uproid').AsString+''' And '+
          'Upagoid='''+Dm1.cdsAso.FieldByName('Upagoid').AsString+''' And Useid='''+Dm1.cdsAso.FieldByName('Useid').AsString+''' ';

   XSQL:='SELECT NVL(B.TIPDESCUO,''N'')AUTDESCUO FROM COB_CON_DET A,COB_CON_CAB B Where A.Uproid='''+Dm1.cdsAso.FieldByName('Uproid').AsString+''' And '+
         'A.Upagoid='''+Dm1.cdsAso.FieldByName('Upagoid').AsString+''' And A.Useid='''+Dm1.cdsAso.FieldByName('Useid').AsString+''' AND '+
         'A.IDECON=B.IDECON ';
   Dm1.cdsInt.Close;
   Dm1.cdsInt.DataRequest(XSQL);
   Dm1.cdsInt.Open;

   If Dm1.cdsInt.FieldByName('AUTDESCUO').AsString='N' Then
        BtnCuota.Enabled:= False
   Else BtnCuota.Enabled:= True;}

   Dm1.cdsInt.Close;
   Dm1.cdsInt.IndexFieldNames:='';

end;

procedure TFautorizaDescuento.FormActivate(Sender: TObject);
begin
   Btnaporte.Enabled:=True;
   if DM1.cdsAso.FieldByname('ASOTIPID').AsString='CO' then
      Btnaporte.Enabled:=False;
   if DM1.cdsAso.FieldByname('ASOTIPID').AsString='CE' then
      Btnaporte.Enabled:=False;
end;

end.
