// Inicio Uso Estándares : 01/08/2011
// Unidad                : ASO260A.pas
// Formulario            : FMantAsociadoObservacion
// Fecha de Creación     : 01/08/2011
// Autor                 : Equipo de Desarrollo de Sistemas DM
// Objetivo              : Registro y visualización de observaciones ingresadas por el equipo de Previsión Social
//                         en el modulo de Asociados.
// HPC_201602_ASO : Se muestra el grid de mostrar observaciones del asociado.
//                  El usuario solicita que se puedan mostrar mas datos de la tabla de observaciones.
unit ASO260A;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdblook, Buttons, StdCtrls, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls;

type
  TFMantAsociadoObservacion = class(TForm)
    pnlObservacion: TPanel;
    dbgObservacion: TwwDBGrid;
    wwDBGrid2IButton: TwwIButton;
    pnlObsConsulta: TPanel;
    memObsConsulta: TMemo;
    Button8: TButton;
    edtObsConsulta: TEdit;
    pnlIngObs: TPanel;
    Label39: TLabel;
    memObsAso: TMemo;
    btnGrabaObs: TBitBtn;
    Button7: TButton;
    lkcTipObs: TwwDBLookupCombo;
    Panel16: TPanel;
    edtObs: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure dbgObservacionDblClick(Sender: TObject);
    procedure wwDBGrid2IButtonClick(Sender: TObject);
    procedure btnGrabaObsClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure lkcTipObsChange(Sender: TObject);
    procedure lkcTipObsExit(Sender: TObject);
    procedure Button5Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMantAsociadoObservacion: TFMantAsociadoObservacion;

implementation

uses ASODM;

{$R *.dfm}

procedure TFMantAsociadoObservacion.FormCreate(Sender: TObject);
var
  xsql: string;
begin
  // Inicio: HPC_201602_ASO 
  // Se añade al grid de mostrar datos de observaciones, los siguientes datos
  // Procedencia, Caracter, comentario, ususario, fecha.
  // xsql := 'SELECT * FROM OBSERVACION_ASOCIADO WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString) + ' ORDER BY FECHA DESC';
  xsql := 'SELECT A.ASOID, A.CODOBS, C.OFDESNOM PROCEDENCIA, B.DESOBS OBSERVA, CASE WHEN B.RECOBS = ''S'' THEN ''RESTRICTIVO'' ELSE ''NO RESTRICTIVO'' END RECOBS,'
  +' A.OBSERVA COMENTARIO, A.USUARIO, A.FECHA, A.EQUUSU, A.OFIUSU FROM OBSERVACION_ASOCIADO A,  ASO_TIP_OBS_MAN B, APO110 C'
  +' WHERE A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND  A.CODOBS = B.CODOBS AND A.OFIUSU = C.OFDESID';
  DM1.cdsMGrupo.Close;
  DM1.cdsMGrupo.DataRequest(xsql);
  DM1.cdsMGrupo.Open;
  dbgObservacion.DataSource := DM1.dsMGrupo;
  dbgObservacion.Selected.clear;
  dbgObservacion.Selected.Add('PROCEDENCIA'#9'15'#9'Procedencia');
  dbgObservacion.Selected.Add('OBSERVA'#9'30'#9'Observación'#9'F');
  dbgObservacion.Selected.Add('CARACTER'#9'17'#9'Carácter'#9'F');
  dbgObservacion.Selected.Add('COMENTARIO'#9'46'#9'Comentario'#9'F');
  dbgObservacion.Selected.Add('USUARIO'#9'15'#9'Usuario'#9'F');
  dbgObservacion.Selected.Add('FECHA'#9'22'#9'Fecha');
  dbgObservacion.ApplySelected;
  // Fin: HPC_201602_ASO 
end;

procedure TFMantAsociadoObservacion.Button5Click(Sender: TObject);
begin
   memObsAso.Text := '';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.IndexFieldNames := '';
   DM1.cdsQry8.Close;
   DM1.cdsQry8.IndexFieldNames := '';
   self.Close;
end;

procedure TFMantAsociadoObservacion.dbgObservacionDblClick(
  Sender: TObject);
var
  XSQL: string;
begin
  // Inicio: HPC_201602_ASO 
  // Se añaden campos para que sean mostrados en el grid.
  // XSQL := 'SELECT * FROM ASO_TIP_OBS_MAN WHERE CODOBS='''+DM1.cdsMGrupo.FieldByName('CODOBS').AsString+''' ' ;
  xsql := 'SELECT A.ASOID, A.CODOBS, C.OFDESNOM PROCEDENCIA, B.DESOBS OBSERVA, CASE WHEN B.RECOBS = ''S'' THEN ''RESTRICTIVO'' ELSE ''NO RESTRICTIVO'' END RECOBS,'
  +' A.OBSERVA COMENTARIO, A.USUARIO, A.FECHA, A.EQUUSU, A.OFIUSU FROM OBSERVACION_ASOCIADO A,  ASO_TIP_OBS_MAN B, APO110 C'
  +' WHERE A.ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND  A.CODOBS = B.CODOBS AND A.OFIUSU = C.OFDESID';
  DM1.cdsQry8.Close;
  DM1.cdsQry8.DataRequest(XSQL);
  DM1.cdsQry8.Open;
  If DM1.cdsQry8.RecordCount > 0 then
    edtObsConsulta.Text := DM1.cdsQry8.FieldByName('OBSERVA').AsString
  ELSE
    edtObsConsulta.Text := 'No existe en tabla';
  
  pnlObsConsulta.Visible := True;
  pnlObsConsulta.Left := 80;
  pnlObsConsulta.Top := 20;
  memObsConsulta.Text := DM1.cdsMGrupo.FieldByName('COMENTARIO').AsString ;
  // Fin: HPC_201602_ASO 
end;

procedure TFMantAsociadoObservacion.wwDBGrid2IButtonClick(Sender: TObject);
var
  XSQL: string;
begin
  XSQL := 'SELECT * FROM ASO_TIP_OBS_MAN';
  DM1.cdsQry8.Close;
  DM1.cdsQry8.DataRequest(XSQL);
  DM1.cdsQry8.Open;

  DM1.cdsMGrupo.Insert;
  DM1.cdsMGrupo.FieldByName('ASOID').AsString := DM1.cdsAso.FieldByName('ASOID').AsString;
  DM1.cdsMGrupo.FieldByName('FECHA').AsString := DM1.FechaHora;
  DM1.cdsMGrupo.FieldByName('EQUUSU').AsString := DM1.wcomputadora;
  DM1.cdsMGrupo.FieldByName('OFIUSU').AsString := DM1.xOfiDes;

  pnlIngObs.Top := 13;
  pnlIngObs.Left:= 70;
  pnlIngObs.Visible:= True;
  edtObs.Text := '';
  edtObsConsulta.Text := '';
  lkcTipObs.SetFocus;
end;

procedure TFMantAsociadoObservacion.btnGrabaObsClick(Sender: TObject);
var xsqL: string;
begin
  if Length(trim(lkcTipObs.Text)) = 0 then
  Begin
    MessageDlg('Debe ingresar Tipo de Observación', mtInformation,[mbOk],0);
    lkcTipObs.SetFocus;
    exit;
  End;

  if MessageDlg('Desea Observación sobre el Asociado?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Begin
    DM1.cdsMGrupo.FieldByName('OBSERVA').AsString := UpperCase(trim(memObsAso.Text));
    DM1.cdsMGrupo.FieldByName('CODOBS').AsString :=  DM1.cdsQry8.FieldByName('CODOBS').AsString;
    DM1.cdsMGrupo.FieldByName('RECOBS').AsString :=  DM1.cdsQry8.FieldByName('RECOBS').AsString;
    xsql := 'INSERT INTO OBSERVACION_ASOCIADO (ASOID,USUARIO,FECHA,EQUUSU,OFIUSU,CODOBS,RECOBS,OBSERVA) VALUES('+
            QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+','+
            QuotedStr(DM1.wUsuario)+',SYSDATE,'+
            QuotedStr(DM1.wcomputadora)+','+
            QuotedStr(DM1.xOfiDes)+','+
            QuotedStr(DM1.cdsQry8.FieldByName('CODOBS').AsString)+','+
            QuotedStr(DM1.cdsQry8.FieldByName('RECOBS').AsString)+','+
            QuotedStr(UpperCase(trim(memObsAso.Text)))+')';
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    memObsAso.Lines.Text := '';
    MessageDlg('Grabación de Observación Exitosa...', mtError, [mbOk], 0);
    pnlIngObs.Visible := False;
  End;
end;

procedure TFMantAsociadoObservacion.Button8Click(Sender: TObject);
begin
  memObsConsulta.Text := '';
  pnlObsConsulta.Visible := False;
end;

procedure TFMantAsociadoObservacion.Button7Click(Sender: TObject);
begin
  DM1.cdsMGrupo.Delete;
  pnlIngObs.Visible := False;
end;

procedure TFMantAsociadoObservacion.lkcTipObsChange(Sender: TObject);
begin
  edtObs.Text := DM1.cdsQry8.FieldByName('DESOBS').AsString;
end;

procedure TFMantAsociadoObservacion.lkcTipObsExit(Sender: TObject);
begin
  if Length(trim(lkcTipObs.Text))=0 then
    edtObs.Text := '' else
  edtObs.Text := DM1.cdsQry8.FieldByName('DESOBS').AsString;
end;

procedure TFMantAsociadoObservacion.Button5Exit(Sender: TObject);
begin
  memObsAso.Text := '';
  DM1.cdsMGrupo.Close;
  DM1.cdsMGrupo.IndexFieldNames := '';

  DM1.cdsQry8.Close;
  DM1.cdsQry8.IndexFieldNames := '';
end;

procedure TFMantAsociadoObservacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   memObsAso.Text := '';
   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.IndexFieldNames := '';

   DM1.cdsQry8.Close;
   DM1.cdsQry8.IndexFieldNames := '';
end;

end.

