unit ASO160;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls,db;

type
  TFactbloaso = class(TForm)
    dbgcabecera: TwwDBGrid;
    dbginconsistenciasIButton: TwwIButton;
    btneliminar: TBitBtn;
    btncerrar: TBitBtn;
    btnplantilla: TBitBtn;
    btndepuracion: TBitBtn;
    btnactualizar: TBitBtn;
    btnimprimir: TBitBtn;
    procedure wwDBGrid1IButtonClick(Sender: TObject);
    procedure dbginconsistenciasIButtonClick(Sender: TObject);
    procedure dbgcabeceraDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btnplantillaClick(Sender: TObject);
    procedure btndepuracionClick(Sender: TObject);
    procedure btnactualizarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
// inicio HPC_201102_ASO
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
// fin HPC_201102_ASO
  private
  public
    procedure actualizacabecera;
    { Public declarations }
  end;

var
  Factbloaso: TFactbloaso;

implementation

uses ASODM, ASO976, ASO164, ASO162, ASO161, ASO165;


{$R *.dfm}

procedure TFactbloaso.wwDBGrid1IButtonClick(Sender: TObject);
begin
  Try
    fimptexto := Tfimptexto.Create(Self);
    fimptexto.ShowModal;
  Finally
    fimptexto.Free;
  End;
end;

procedure TFactbloaso.dbginconsistenciasIButtonClick(Sender: TObject);
begin
 Try
    fimptexto := Tfimptexto.Create(Self);
    fimptexto.ShowModal;
  Finally
    fimptexto.Free;
  End;
  actualizacabecera;
end;


procedure TFactbloaso.dbgcabeceraDblClick(Sender: TObject);
begin
  actualizacabecera;
end;

procedure TFactbloaso.actualizacabecera;
Var xSql, xllave:String;
begin

  If DM1.xSgr = 'I' Then                     xllave := DM1.xNumero
  Else If DM1.cdsCreditos.Active = True Then xllave := DM1.cdsCreditos.FieldByName('NUMERO').AsString;

  // HPP_200906_ASO
  xSql := 'SELECT A.NUMERO, A.NOMARC, A.PERIODO, A.USUARIO, A.FECHOR,A.FECHOR_ACT,A.FECHOR_CHE, A.CANREG, A.DPTOID,'
         +'       B.DPTODES, A.FLAACT, A.DESCAM, A.ASOTIPID, A.FLACHE'
         +'  FROM ASO_PAD_DES_CAB A, APO158 B WHERE A.DPTOID = B.DPTOID ORDER BY NUMERO';

  DM1.cdsCreditos.Close;
  DM1.cdsCreditos.DataRequest(xSql);
  DM1.cdsCreditos.Open;
  dbgcabecera.Refresh;
  dbgCabecera.Selected.Clear;
  dbgCabecera.Selected.Add('NUMERO'#9'10'#9'Identificación~del padrón'#9#9);
  dbgCabecera.Selected.Add('NOMARC'#9'32'#9'Nombre del~archivo'#9#9);
  dbgCabecera.Selected.Add('PERIODO'#9'6'#9'Año y mes~del padrón'#9#9);
  dbgCabecera.Selected.Add('USUARIO'#9'12'#9'Usuario que~procesa'#9#9);
  dbgCabecera.Selected.Add('FECHOR'#9'19'#9'Fecha y hora~del proceso'#9#9);
  dbgCabecera.Selected.Add('CANREG'#9'6'#9'registros~migrados'#9#9);
  dbgCabecera.Selected.Add('DPTODES'#9'3'#9'Departamento'#9#9);
  dbgCabecera.Selected.Add('FLACHE'#9'3'#9'Flag~chequeo'#9#9);
  dbgCabecera.Selected.Add('FLAACT'#9'3'#9'Flag~actualizado'#9#9);
  dbgCabecera.Selected.Add('ASOTIPID'#9'2'#9'Tipo de~asociado'#9#9);
  dbgCabecera.ApplySelected;
  TNumericField(DM1.cdsCreditos.FieldByName('CANREG')).DisplayFormat := '##,##0';
  DM1.cdsCreditos.Locate('NUMERO', xllave, []);

end;

procedure TFactbloaso.FormActivate(Sender: TObject);
begin
  actualizacabecera;
end;

procedure TFactbloaso.btneliminarClick(Sender: TObject);
Var xSql:String;
begin
  If DM1.cdsCreditos.FieldByName('FLAACT').AsString <> 'S' Then
  Begin
    If MessageDlg('¿ Esta seguro de eliminar el padrón ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
    Begin
      xSql := 'DELETE FROM ASO_PAD_DES_CAB WHERE NUMERO = '+QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      xSql := 'DELETE FROM ASO_PAD_DES_DET WHERE NUMERO = '+QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      actualizacabecera;
    End;
  End
  Else MessageDlg('Información no puede ser eliminada, ya fue actualizada', mtInformation, [mbOk], 0);
end;

procedure TFactbloaso.btncerrarClick(Sender: TObject);
begin
 Factbloaso.Close;
end;

procedure TFactbloaso.btnplantillaClick(Sender: TObject);
begin

  If Trim(DM1.cdsCreditos.FieldByName('FLAACT').AsString) = 'S' Then
  Begin
    MessageDlg('Información ya actualizada', mtInformation, [mbOk], 0);
    Exit;
  End;

  If Trim(DM1.cdsCreditos.FieldByName('DESCAM').AsString) <> '' Then
  Begin
    MessageDlg('Información ya transferida vaya a depuración', mtInformation, [mbOk], 0);
    Exit;
  End;

  Try
    Fproinfmig := TFproinfmig.Create(Self);
    Fproinfmig.ShowModal;
  Finally
    Fproinfmig.Free;
  End;
end;

procedure TFactbloaso.btndepuracionClick(Sender: TObject);
begin
  If Trim(DM1.cdsCreditos.FieldByName('FLAACT').AsString) = 'S' Then
  Begin
    MessageDlg('Información ya actualizada. No es posible la depuración', mtInformation, [mbOk], 0);
    Exit;
  End;

   If Trim(DM1.cdsCreditos.FieldByName('DESCAM').AsString) = '' Then
  Begin
    MessageDlg('Información no ha sido transferida, vaya a Plantilla', mtInformation, [mbOk], 0);
    Exit;
  End;
  Try
    fdeparcmig := Tfdeparcmig.create(Self);
    fdeparcmig.ShowModal;
  Finally
    fdeparcmig.Free;
  End;
end;


procedure TFactbloaso.btnactualizarClick(Sender: TObject);
Var xSql:String;
begin
  xSql := 'SELECT COUNT(*) CANTIDAD FROM ASO_PAD_DES_DET WHERE NUMERO = '+QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
  +' AND ASOID IS NOT NULL';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('CANTIDAD').AsInteger = 0 Then
  Begin
    MessageDlg('No existe información para actualizar vaya primero a depuración', mtInformation, [mbOk], 0);
    Exit;
  End;
  Try
    FDetMig := TFDetMig.create(Self);
    FDetMig.ShowModal;
  Finally
    FDetMig.Free;
  End;
end;


procedure TFactbloaso.btnimprimirClick(Sender: TObject);
begin
  Try
    Festpadr:= TFestpadr.create(self);
    Festpadr.Showmodal;
  Finally
    Festpadr.free;
  End;
end;

procedure TFactbloaso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// inicio HPC_201102_ASO
   DM1.cdsAso.Close;
   DM1.cdsCreditos.Close;
   DM1.cdsCuotas.Close;
   DM1.cdsDpto.Close;
   DM1.cdsListaCred.Close;
   DM1.cdsQry.Close;
   DM1.cdsQry1.Close;
   DM1.cdsQry2.Close;
   DM1.cdsQry3.Close;
   DM1.cdsQry8.Close;
   DM1.cdsQry20.Close;
   DM1.cdsQry21.Close;
   DM1.cdsQry22.Close;
   DM1.cdsReporte.Close;
   DM1.cdsSobrino.Close;
   DM1.cdsTAso.Close;
   DM1.cdsUSE.Close;
   DM1.cdsUSES.Close;
   DM1.cdsQry4.Close;
   Action := caFree;
// fin HPC_201102_ASO
end;

end.
