unit ASO260B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, Buttons, StdCtrls, Animate, GIFCtrl,
  ExtCtrls, DB, DBClient, wwclient, SIPCLIENT, Types, rxgif, jpeg, Wwdatsrc;

type
  TFMantAsociadoListaReniec = class(TForm)
    pnlReniecList: TPanel;
    gbBusqueda: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    edtApePat: TEdit;
    edtApeMat: TEdit;
    BitBtn4: TBitBtn;
    CDSLISRENIEC: TwwClientDataSet;
    DSLISRENIEC: TwwDataSource;
    dbgListaReniec: TwwDBGrid;
    procedure dbgListaReniecDblClick(Sender: TObject);
    procedure dbgListaReniecDrawDataCell(Sender: TObject;
    const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SearchResult         : PersonDataRecordType;
    Photo, Signature     : TByteDynArray;
    FindByDocumentResult : Int64;
    xEdtApePat         : String;
    xEdtApeMat         : String;
    xEdtAsoNom         : String;
    xdbeLibDni            : String;
    xReniec              : String;
    xgrabo : String;
    procedure SetNombresEditables(bFlag: boolean);
  end;

var
  FMantAsociadoListaReniec : TFMantAsociadoListaReniec;
  SipObj : ServerMainClassSoap;

implementation

uses ASODM;

{$R *.dfm}

//Establece si el panel de nombres y apellidos será editable
procedure TFMantAsociadoListaReniec.SetNombresEditables(bFlag: boolean);
begin
  gbBusqueda.Enabled := bFlag;
end;

procedure TFMantAsociadoListaReniec.BitBtn4Click(Sender: TObject);
var
  dwToken, FindByNameResult: Int64;
  lin: integer;
  arr: ArrayOfPersonDataByName;
begin
  dwToken := 5;
  try
    SipObj.FindByName(dwtoken,DM1.wUsuario,'',TRim(EdtApePat.Text),Trim(EdtApeMat.Text),FindbyNameResult,arr);
    CDSLISRENIEC.EmptyDataSet;
    for lin:=Low(arr) to high(arr) do
    begin
      If trim(xdbeLibDni) = Trim(arr[lin].dcDocument) then
      Begin
        CDSLISRENIEC.Insert;
        CDSLISRENIEC.FieldByName('Nro').AsString     := inttostr(lin);
        CDSLISRENIEC.FieldByName('DNI').AsString     := arr[lin].dcDocument;
        CDSLISRENIEC.FieldByName('APEPAT').AsString  := arr[lin].dcLastName1;
        CDSLISRENIEC.FieldByName('APEMAT').AsString  := arr[lin].dcLastName2;
        CDSLISRENIEC.FieldByName('NOMBRES').AsString := arr[lin].dcFirstName;
        CDSLISRENIEC.FieldByName('STA').AsString     := arr[lin].dcHasImages;
      End;
    end;
  except
    MessageDlg('Datos de busqueda No Consistentes Puede no haber Conexión con RENIEC, Verifique', mtError, [mbOk], 0);
    xReniec := 'N';
    exit;
  End;
end;

procedure TFMantAsociadoListaReniec.dbgListaReniecDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if CDSLISRENIEC.FieldByName('STA').AsString = 'N' Then
  begin
    dbgListaReniec.Canvas.Font.Color := clRed;
    dbgListaReniec.DefaultDrawDataCell(rect,Field,State);
  end;
end;

procedure TFMantAsociadoListaReniec.dbgListaReniecDblClick(Sender: TObject);
var
  XSQL: string;
begin
  //valida que el dni seleccionado sea el mismo que el ingresado como parámetro (por el usuario) 
  If (trim(xdbeLibDni) <> trim(CDSLISRENIEC.FieldByName('DNI').AsString)) Then
  Begin
    MessageDlg('DNI es diferente al dato de Derrama, seleccionó el registro equivocado', mtError, [mbOk], 0);
    exit;
  End;

  //En caso los apellidos difieran pide confirmación para continuar
  If (trim(xEdtApePat) <> trim(CDSLISRENIEC.FieldByName('ApePat').AsString)) or
     (trim(xEdtApeMat) <> trim(CDSLISRENIEC.FieldByName('ApeMat').AsString)) or
     (trim(xEdtAsoNom) <> trim(CDSLISRENIEC.FieldByName('Nombres').AsString)) then
  Begin
    If MessageDlg('Los Nombres/apellidos son diferentes a los datos de Derrama ¿Desea continuar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
      exit;
  End;

  //Solicita confirmación final del usuario
  If MessageDlg('¿Está seguro de calificarlo como Asociado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
  Begin
    self.Close;
    exit;
  End;

  //ACTUALIZA ARCHIVO COMO FALLECIDO
  XSQL:= 'INSERT INTO INF_RENIEC_CAP (DNI,APEPAT,APEMAT,NOMBRE,RESTRICCIONES,USUACT,FECACT,OFIACT,EQUUSU) VALUES ('+
            QuotedStr(CDSLISRENIEC.FieldByName('DNI').AsString)+','+ QuotedStr(CDSLISRENIEC.FieldByName('ApePat').AsString)+','+
            QuotedStr(CDSLISRENIEC.FieldByName('ApeMat').AsString)+','+QuotedStr(CDSLISRENIEC.FieldByName('Nombres').AsString)+','+
            QuotedStr('FALLECIDO') +','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+
            QuotedStr(DM1.wofides)+','+QuotedStr(DM1.wcomputadora)+')';
  DM1.DCOM1.AppServer.EjecutaSql(xsql);

  //Actualiza el dataset global
  DM1.cdsAso.Edit;
  DM1.cdsAso.FieldByName('ASODNI').AsString := CDSLISRENIEC.FieldByName('DNI').AsString;
  DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString := CDSLISRENIEC.FieldByName('ApePat').AsString;
  DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString := CDSLISRENIEC.FieldByName('ApeMat').AsString;
  DM1.cdsAso.FieldByName('ASONOMDNI').AsString := CDSLISRENIEC.FieldByName('Nombres').AsString;
  DM1.cdsAso.FieldByName('ACTARCREN').AsString := 'S';
  xReniec := 'S';
  xgrabo  := 'S';

  self.Close;

  exit;
end;

procedure TFMantAsociadoListaReniec.FormCreate(Sender: TObject);
begin
  xgrabo := 'N';
end;

procedure TFMantAsociadoListaReniec.Button10Click(Sender: TObject);
begin
  self.Close;
end;

procedure TFMantAsociadoListaReniec.FormActivate(Sender: TObject);
begin
  edtApePat.SetFocus;
end;

end.

