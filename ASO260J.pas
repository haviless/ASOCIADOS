unit ASO260J;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, Grids, Wwdbigrd,
  Wwdbgrid, ExtCtrls, db;

type
  TFMantAsociadoDatosValidar = class(TForm)
    pnlDatosAValidar: TPanel;
    dbgValida: TwwDBGrid;
    fcShapeBtn1: TfcShapeBtn;
    procedure Button4Click(Sender: TObject);
    procedure fcShapeBtn1Click(Sender: TObject);
    procedure dbgValidaDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dbgValidaDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xReniec: string;
    xsinvalidar: integer;
    xvalido: string;
    bPintarCamposValidados: boolean;
    procedure EnlazarDatos(pDSVALIDA: TDataSource);
  end;

var
  FMantAsociadoDatosValidar: TFMantAsociadoDatosValidar;

implementation

uses ASODM;

{$R *.dfm}

procedure TFMantAsociadoDatosValidar.EnlazarDatos(pDSVALIDA: TDataSource);
begin
  dbgValida.DataSource := pDSVALIDA;
  dbgValida.Selected.clear;
  dbgValida.Selected.Add('Descripcion'#9'20'#9'Descripcion');
  dbgValida.Selected.Add('Flag'#9'1'#9'Flag');
  dbgValida.ApplySelected;
end;

procedure TFMantAsociadoDatosValidar.fcShapeBtn1Click(Sender: TObject);
var
  xfeccaduca: tdate;
  Xsql, Xdatovalidado: string;
begin
  If(DM1.cdsAso.fieldbyname('ACTARCREN').AsString <>'S') and (xReniec='S') then
  Begin
    MessageDlg('Falta Capturar Datos de RENIEC', mtError, [mbOk], 0);
    Exit;
  End;

  if MessageDlg('Desea Validar La Información de Asociado?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    //Primero DESACTIVO VALIDACUONES ANTERIORES
    
    dbgValida.DataSource.DataSet.First;
    While NOT dbgValida.DataSource.DataSet.Eof do
    Begin
      If dbgValida.DataSource.DataSet.FieldByName('FLAG').AsString = '1' then
      Begin
        XSQL := 'UPDATE VAL_DAT_ASO SET STATUS = '''' WHERE ASOID = '''+DM1.cdsAso.FieldByName('ASOID').AsString+''' AND' +
          ' CAMPO = ''' + dbgValida.DataSource.DataSet.FieldByName('CAMPO').AsString + '''';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
      dbgValida.DataSource.DataSet.Next;
    End;

    //Inserto Los Datos Validados
    dbgValida.DataSource.DataSet.First;
    While NOT dbgValida.DataSource.DataSet.Eof do
    Begin
      If dbgValida.DataSource.DataSet.FieldByName('FLAG').AsString = '1' then
      Begin
        xfeccaduca:= dm1.FechaSys+dbgValida.DataSource.DataSet.FieldByName('TIEMPO').AsInteger;
        Xdatovalidado := DM1.cdsAso.FieldByName(dbgValida.DataSource.DataSet.FieldByName('CAMPO').AsString).Asstring ;
        XSQL := 'INSERT INTO VAL_DAT_ASO (ASOID,FECVAL,USUVAL,EQUUSU,OFIUSU,CAMPO,DATVAL,FECCAD,OBJETO,STATUS) VALUES ('+
        QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+',SYSDATE,'+
        QuotedStr(DM1.wUsuario)+','+
        QuotedStr(DM1.wcomputadora)+','+
        QuotedStr(DM1.wofides)+','+
        QuotedStr(dbgValida.DataSource.DataSet.FieldByName('CAMPO').AsString)+','+
        QuotedStr(Xdatovalidado)+','+
        QuotedStr(DateToStr(xfeccaduca))+','+
        QuotedStr(dbgValida.DataSource.DataSet.FieldByName('OBJETO').AsString)+','+
        QuotedStr('S')+')';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        xsinvalidar:=xsinvalidar-1;
      End;
      dbgValida.DataSource.DataSet.Next;
    End;

    bPintarCamposValidados := true;

    If xsinvalidar = 0 then
      xvalido := 'S'
    else
      xvalido := 'N';
    dbgValida.DataSource.DataSet.First;
    While not dbgValida.DataSource.DataSet.Eof do
    Begin
      dbgValida.DataSource.DataSet.Edit;
      dbgValida.DataSource.DataSet.FieldByName('FLAG').AsString := '';
      dbgValida.DataSource.DataSet.Next;
    End;
    dbgValida.DataSource.DataSet.First;

    self.Close;
  End;
end;

procedure TFMantAsociadoDatosValidar.Button4Click(Sender: TObject);
begin
  self.Close;
end;

procedure TFMantAsociadoDatosValidar.dbgValidaDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if dbgValida.DataSource.DataSet.FieldByName('FLAG').AsString ='1'  then
  Begin
    dbgValida.Canvas.Brush.Color := $00FFFF80;
    dbgValida.DefaultDrawDataCell(Rect, Field, State);
  End
  Else if dbgValida.DataSource.DataSet.FieldByName('VALIDADO').AsString ='1'  then
  Begin
    dbgValida.Canvas.Brush.Color := $0097FF97;
    dbgValida.DefaultDrawDataCell(Rect, Field, State);
  End
end;

procedure TFMantAsociadoDatosValidar.dbgValidaDblClick(Sender: TObject);
begin
  if (dbgValida.DataSource.DataSet.FieldByName('VALIDADO').AsString = '1')
    AND (dbgValida.DataSource.DataSet.FieldByName('FLAG').AsString <> '1')  Then
  Begin
    If MessageDlg('VALIDACION AUN NO CADUCA..., DESEA VALIDAR NUEVAMENTE', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
      exit;
  End;

  dbgValida.DataSource.DataSet.Edit;
  if dbgValida.DataSource.DataSet.FieldByName('FLAG').AsString = '1' Then
    dbgValida.DataSource.DataSet.FieldByName('FLAG').AsString := '0'
  Else
    dbgValida.DataSource.DataSet.FieldByName('FLAG').AsString := '1';
end;

procedure TFMantAsociadoDatosValidar.FormCreate(Sender: TObject);
begin
  xvalido := 'N';
  bPintarCamposValidados := false;
end;

end.

