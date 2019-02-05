unit ASO940;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, Db, ExtCtrls;

type
  TfPerfUsuario = class(TForm)
    grpPerfUsuario: TGroupBox;
    BitSalir: TBitBtn;
    dtgOpcPerfil: TwwDBGrid;
    dtgComPerfil: TwwDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    dtgPerfiles: TwwDBGrid;
    dtgPerfilesIButton: TwwIButton;
    dtgAccesosPerf: TwwDBGrid;
    BitDer: TBitBtn;
    BitIzq: TBitBtn;
    pUsuario: TPanel;
    lblPerfil: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    BitPrint: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure dtgOpcPerfilDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgPerfilesIButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dtgPerfilesDblClick(Sender: TObject);
    procedure dtgPerfilesRowChanged(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitDerClick(Sender: TObject);
    procedure BitIzqClick(Sender: TObject);
    procedure dtgOpcPerfilDblClick(Sender: TObject);
    procedure dtgOpcPerfilRowChanged(Sender: TObject);
  private
    { Private declarations }
    procedure CargaPerfil;
    procedure CargaPrfAccesos;                 
  public
    { Public declarations }
    procedure CargaAccesosPerf(xPerfil:String);
  end;

var
  fPerfUsuario: TfPerfUsuario;

implementation

uses ASODM, ASO941;

{$R *.dfm}

procedure TfPerfUsuario.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfPerfUsuario.CargaPerfil;
var xSQL:String;
begin
lblPerfil.Caption:=DM1.cdsProf.Fieldbyname('PERFIL').AsString;
//CargaAccesos(DM1.cdsUsesX.Fieldbyname('USERID').AsString);
xSQL:='SELECT PERFIL,A.TABLA,A.CAMPO,A.COMPONENTE,CAMPODES FROM SIS003 A,SIS001 B WHERE A.COMPONENTE=B.COMPONENTE AND A.PERFIL='+QuotedStr(DM1.cdsProf.Fieldbyname('PERFIL').AsString);
DM1.cdsTransCre.Close;
DM1.cdsTransCre.DataRequest(xSQL);
DM1.cdsTransCre.Open;


end;

procedure TfPerfUsuario.dtgOpcPerfilDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 if Field.FieldName = 'TABLA' then
    Begin
      dtgOpcPerfil.Canvas.Font.Color := clRed;
      dtgOpcPerfil.DefaultDrawDataCell(rect,Field,State);
    End;

end;

procedure TfPerfUsuario.dtgPerfilesIButtonClick(Sender: TObject);
begin
  Try
    fNuePerfil := TfNuePerfil.create(self);
    fNuePerfil.Showmodal;
  Finally
    fNuePerfil.free;
  End;   
end;

procedure TfPerfUsuario.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

procedure TfPerfUsuario.dtgPerfilesDblClick(Sender: TObject);
begin
CargaPerfil;
end;

procedure TfPerfUsuario.dtgPerfilesRowChanged(Sender: TObject);
begin
CargaPerfil;
end;

procedure TfPerfUsuario.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
var xSQL:String;
begin
  If dtgPerfiles.DataSource.DataSet.RecordCount=0 Then Exit;

  If Key = VK_Delete then
     Begin
            xSQL:='DELETE FROM SIS002 WHERE PERFIL='+QuotedStr(DM1.cdsProf.FieldByName('PERFIL').AsString);
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            xSQL:='SELECT PERFIL,USUARIO,HREG FROM SIS002 ORDER BY PERFIL';
            DM1.cdsProf.Close; DM1.cdsProf.DataRequest(xSQL); DM1.cdsProf.Open;
     End;

end;

procedure TfPerfUsuario.BitDerClick(Sender: TObject);
var xSQL:String;
begin
If dtgComPerfil.DataSource.DataSet.RecordCount=0 Then Exit;
If dtgPerfiles.DataSource.DataSet.RecordCount=0 Then Exit;
xSQL:='INSERT INTO SIS003(PERFIL,TABLA,CAMPO,COMPONENTE) VALUES ('+QuotedStr(DM1.cdsProf.Fieldbyname('PERFIL').AsString)+','+QuotedStr(DM1.cdsCreditos.Fieldbyname('TABLA').AsString)+','+QuotedStr(DM1.cdsCreditos.Fieldbyname('CAMPO').AsString)+','+QuotedStr(DM1.cdsCreditos.Fieldbyname('COMPONENTE').AsString)+')';
DM1.DCOM1.AppServer.EjecutaSql(xSQL);
CargaAccesosPerf(DM1.cdsProf.FieldByName('PERFIL').AsString);

end;

procedure TfPerfUsuario.BitIzqClick(Sender: TObject);
var xSQL:String;
begin
  If dtgAccesosPerf.DataSource.DataSet.RecordCount=0 Then Exit;
     xSQL:='DELETE FROM SIS003 WHERE PERFIL='+QuotedStr(DM1.cdsTransCre.FieldByName('PERFIL').AsString)+' AND CAMPO='+QuotedStr(DM1.cdsTransCre.FieldByName('CAMPO').AsString)+' AND COMPONENTE='+QuotedStr(DM1.cdsTransCre.FieldByName('COMPONENTE').AsString) ;
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     CargaAccesosPerf(DM1.cdsProf.FieldByName('PERFIL').AsString);
end;

procedure TfPerfUsuario.CargaPrfAccesos;
var xSQL:String;
begin
If dtgAccesosPerf.DataSource.DataSet.Active Then
   xSQL:='SELECT TABLA,GRUPO,CAMPO,COMPONENTE,CAMPODES FROM SIS001 A WHERE COMPONENTE IS NOT NULL AND SUBSTR(GRUPO,1,1)='+QuotedStr(Copy(Trim(DM1.cdsPadre.FieldByName('GRUPO').AsString),1,1))+' AND TABLA='+QuotedStr(DM1.cdsPadre.FieldByName('TABLA').AsString)+' '+
         'AND NOT EXISTS (SELECT PERFIL,TABLA,COMPONENTE FROM SIS003 WHERE PERFIL='+QuotedStr(DM1.cdsProf.FieldByName('PERFIL').AsString)+' AND A.TABLA=TABLA AND A.COMPONENTE=COMPONENTE) ORDER BY GRUPO '
Else
    xSQL:='SELECT TABLA,GRUPO,CAMPO,COMPONENTE,CAMPODES FROM SIS001 WHERE COMPONENTE IS NOT NULL AND SUBSTR(GRUPO,1,1)='+QuotedStr(Copy(Trim(DM1.cdsPadre.FieldByName('GRUPO').AsString),1,1))+' AND TABLA='+QuotedStr(DM1.cdsPadre.FieldByName('TABLA').AsString)+' '+
          'ORDER BY GRUPO';



DM1.cdsCreditos.Close; DM1.cdsCreditos.DataRequest(xSQL);  DM1.cdsCreditos.Open;



end;

procedure TfPerfUsuario.dtgOpcPerfilDblClick(Sender: TObject);
begin
CargaPrfAccesos;
end;

procedure TfPerfUsuario.dtgOpcPerfilRowChanged(Sender: TObject);
begin
CargaPrfAccesos;
end;

procedure TfPerfUsuario.CargaAccesosPerf(xPerfil: String);
var xSQL:String;
begin
xSQL:='SELECT A.PERFIL,A.CAMPO CAMPO,A.COMPONENTE COMPONENTE,CAMPODES FROM '+
      'SIS003 A,SIS001 B WHERE A.COMPONENTE=B.COMPONENTE AND A.PERFIL='+QuotedStr(xPerfil)+' ORDER BY CAMPODES';
DM1.cdstransCre.Close; DM1.cdstransCre.DataRequest(xSQL); DM1.cdstransCre.Open;

xSQL:='SELECT A.TABLA,A.CAMPO,A.COMPONENTE,A.CAMPODES,A.GRUPO FROM SIS001 A WHERE A.COMPONENTE IS NOT NULL AND SUBSTR(GRUPO,1,1)='+QuotedStr(Copy(Trim(DM1.cdsPadre.FieldByName('GRUPO').AsString),1,1))+' AND TABLA='+QuotedStr(DM1.cdsPadre.FieldByName('TABLA').AsString)+' AND '+
      'NOT EXISTS (SELECT PERFIL,COMPONENTE FROM SIS003 WHERE PERFIL='+QuotedStr(DM1.cdstransCre.Fieldbyname('PERFIL').AsString)+' AND A.COMPONENTE=COMPONENTE) ORDER BY A.GRUPO';
DM1.cdsCreditos.Close; DM1.cdsCreditos.DataRequest(xSQL);  DM1.cdsCreditos.Open;


end;

end.
