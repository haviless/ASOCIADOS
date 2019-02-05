// Unidad                    : ASO150.pas
// Formulario                : Factblqonp
// Fecha de Creación         : 2013
// Autor                     : Equipo de Desarrollo de Sistemas DM
// Objetivo                  : Envío y Recepción masiva de datos ONP

// Actualizaciones:
// HPC_201312_ASO            : 12/11/2013 Envío y Recepción masiva de datos ONP
// SPP_201313_ASO            : Se realiza el pase a producción a partir del HPC_201312_ASO

unit ASO150;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, db, Spin, ExtCtrls;

type
  TFactblqonp = class(TForm)
    dbgcabecera: TwwDBGrid;
    dbginconsistenciasIButton: TwwIButton;
    btnplantilla: TBitBtn;
    btnactualizar: TBitBtn;
    btncerrar: TBitBtn;
    btnimprimir: TBitBtn;
    btneliminar: TBitBtn;
    btnVerDetalle: TBitBtn;
    btnCargarTexto: TBitBtn;
    procedure wwDBGrid1IButtonClick(Sender: TObject);
    procedure dbgcabeceraDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btneliminarClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure btnplantillaClick(Sender: TObject);
    procedure btnactualizarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVerDetalleClick(Sender: TObject);
    procedure dbginconsistenciasIButtonClick(Sender: TObject);
    procedure btnCargarTextoClick(Sender: TObject);
    procedure btnprocesarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure mostrarcabeceras;
  end;

var
  Factblqonp: TFactblqonp;

implementation

uses ASODM, ASO976, ASO161, ASO154, ASO151, ASO155;

{$R *.dfm}

procedure TFactblqonp.wwDBGrid1IButtonClick(Sender: TObject);
begin
  Try
    fimptexto := Tfimptexto.Create(Self);
    fimptexto.ShowModal;
  Finally
    fimptexto.Free;
  End;
end;

procedure TFactblqonp.dbgcabeceraDblClick(Sender: TObject);
begin
  mostrarcabeceras;
end;

procedure TFactblqonp.mostrarcabeceras;
Var xsSql, xsllave:String;
begin

  If DM1.xSgr = 'I' Then                     xsllave := DM1.xNumero
  Else If DM1.cdsCreditos.Active = True Then xsllave := DM1.cdsCreditos.FieldByName('NUMERO').AsString;

  xsSql := 'SELECT A.NUMERO, '
         +'       A.NOMARC, '
         +'       A.PERIODO, '
         +'       A.USUARIO, '
         +'       A.FECHOR, '
         +'       A.FECHOR_ACT, '
         +'       A.FECHOR_CHE, '
         +'       A.CANREG, '
         +'       A.DPTOID, '
         +'       A.FLAG_CARGA, '
         +'       A.FECHOR_CARGA, '
         +'       A.CANREG_CARGA, '
         +'       A.USUARIO_CARGA, '
         +'       A.DESCAM, '
         +'       A.FLAG_TRANSF, '
         +'       A.FECHOR_TRANSF, '
         +'       A.CANREG_TRANSF, '
         +'       A.USUARIO_TRANSF, '
         +'       A.FLAG_ACTONP, '
         +'       A.FECHOR_ACTONP, '
         +'       A.CANREG_ACTONP, '
         +'       A.USUARIO_ACTONP '
         +'  FROM ASO_PAD_DES_CAB A, APO158 B '
         +'  WHERE (ESTADO IS NULL OR ESTADO <> ''A'') '
         +'        AND A.DPTOID = B.DPTOID(+) '
         +'        AND TIPOCARGA = ''' + DM1.sTipoCarga + ''''
         +'  ORDER BY NUMERO ';

  DM1.cdsCreditos.Close;
  DM1.cdsCreditos.DataRequest(xsSql);
  DM1.cdsCreditos.Open;
  dbgcabecera.Refresh;
  dbgCabecera.Selected.Clear;
  dbgCabecera.Selected.Add('NUMERO'#9'10'#9'Número'#9#9);
  dbgCabecera.Selected.Add('NOMARC'#9'25'#9'Descripción'#9#9);
  dbgCabecera.Selected.Add('PERIODO'#9'6'#9'Periodo'#9#9);
  dbgCabecera.Selected.Add('FECHOR'#9'19'#9'Fecha y hora~del proceso'#9#9);
  dbgCabecera.Selected.Add('CANREG'#9'6'#9'Registros~Procesados'#9#9);
  dbgCabecera.Selected.Add('FECHOR_CARGA'#9'19'#9'Fecha y hora~de la carga'#9#9);
  dbgCabecera.Selected.Add('CANREG_CARGA'#9'6'#9'Registros~Cargados'#9#9);
  dbgCabecera.Selected.Add('FECHOR_TRANSF'#9'19'#9'Fecha y hora~de la transf.'#9#9);
  dbgCabecera.Selected.Add('CANREG_TRANSF'#9'6'#9'Registros~Transferidos'#9#9);
  dbgCabecera.Selected.Add('FLAG_ACTONP'#9'3'#9'Flag.Act.~B.D.'#9#9);
  dbgCabecera.Selected.Add('FECHOR_ACTONP'#9'19'#9'Fecha y hora~de act. B.D.'#9#9);
  dbgCabecera.Selected.Add('CANREG_ACTONP'#9'6'#9'Registros~Actualizados'#9#9);
  dbgCabecera.Selected.Add('USUARIO'#9'12'#9'Usuario que~genera'#9#9);
  dbgCabecera.ApplySelected;
  TNumericField(DM1.cdsCreditos.FieldByName('CANREG')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsCreditos.FieldByName('CANREG_CARGA')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsCreditos.FieldByName('CANREG_TRANSF')).DisplayFormat := '##,##0';
  TNumericField(DM1.cdsCreditos.FieldByName('CANREG_ACTONP')).DisplayFormat := '##,##0';
  DM1.cdsCreditos.Locate('NUMERO', xsllave, []);

end;

procedure TFactblqonp.FormActivate(Sender: TObject);
begin
  mostrarcabeceras;
end;

procedure TFactblqonp.btneliminarClick(Sender: TObject);
Var xsSql:String;
begin

  If DM1.cdsCreditos.FieldByName('NUMERO').AsString = '' Then
  Begin
     MessageDlg('No existen registros...', mtInformation, [mbOk], 0);
     screen.Cursor := crDefault;
     Exit;
  End;

  If DM1.cdsCreditos.FieldByName('FLAG_ACTONP').AsString = 'S' Then
  Begin
     MessageDlg('Información no puede ser eliminada, ya fue actualizada', mtInformation, [mbOk], 0);
     screen.Cursor := crDefault;
     Exit
  End;

  If DM1.cdsCreditos.FieldByName('FLAG_CARGA').AsString = 'S' Then
  Begin
     MessageDlg('Información ya tiene carga de ONP', mtInformation, [mbOk], 0);
     screen.Cursor := crDefault;
  End;

  If MessageDlg('¿ Esta seguro de eliminar el registro ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
  Begin
     xsSql := 'UPDATE ASO_PAD_DES_CAB SET ESTADO = ''A'' WHERE NUMERO = '+QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
     DM1.DCOM1.AppServer.EjecutaSQL(xsSql);

     mostrarcabeceras;
  End;
end;

procedure TFactblqonp.btncerrarClick(Sender: TObject);
begin
 Factblqonp.Close;
end;

procedure TFactblqonp.btnplantillaClick(Sender: TObject);
begin

  If DM1.cdsCreditos.FieldByName('NUMERO').AsString = '' Then
  Begin
     MessageDlg('No existen registros...', mtInformation, [mbOk], 0);
     screen.Cursor := crDefault;
     Exit;
  End;

  If DM1.cdsCreditos.FieldByName('FLAG_ACTONP').AsString = 'S' Then
  Begin
     MessageDlg('Información no puede ser transferida, ya fue actualizada', mtInformation, [mbOk], 0);
     screen.Cursor := crDefault;
     Exit
  End;

  If Trim(DM1.cdsCreditos.FieldByName('FLAG_CARGA').AsString) <> 'S' Then
  Begin
    MessageDlg('Información no cargada...', mtInformation, [mbOk], 0);
    Exit;
  End;

  If Trim(DM1.cdsCreditos.FieldByName('DESCAM').AsString) <> '' Then
  Begin
    MessageDlg('Información ya transferida...', mtInformation, [mbOk], 0);
  End;

  Try
    Fproinfmig := TFproinfmig.Create(Self);
    Fproinfmig.ShowModal;
  Finally
    Fproinfmig.Free;
  End;
end;



procedure TFactblqonp.btnactualizarClick(Sender: TObject);
Var xsSql:String;
begin

  If DM1.cdsCreditos.FieldByName('NUMERO').AsString = '' Then
  Begin
     MessageDlg('No existen registros...', mtInformation, [mbOk], 0);
     screen.Cursor := crDefault;
     Exit;
  End;

  If Trim(DM1.cdsCreditos.FieldByName('FLAG_ACTONP').AsString) = 'S' Then
  Begin
    MessageDlg('Información ya actualizada.', mtInformation, [mbOk], 0);
  End;

  xsSql := 'SELECT COUNT(*) CANTIDAD '
        + ' FROM ASO_ONP_DES_DET WHERE NUMERO = '+QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
        + ' AND ENV_ASODNI IS NOT NULL';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xsSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.FieldByName('CANTIDAD').AsInteger = 0 Then
  Begin
    MessageDlg('No existe información para actualizar vaya primero a plantilla', mtInformation, [mbOk], 0);
  End;

  If Trim(DM1.cdsCreditos.FieldByName('DESCAM').AsString) = '' Then
  Begin
    MessageDlg('Información no ha sido transferida, vaya a Transferir', mtInformation, [mbOk], 0);
    Exit;
  End;
  Try
    FDetMigONP := TFDetMigONP.create(Self);
    FDetMigONP.ShowModal;
  Finally
    FDetMigONP.Free;
  End;

end;


procedure TFactblqonp.btnimprimirClick(Sender: TObject);
begin

  If DM1.cdsCreditos.FieldByName('NUMERO').AsString = '' Then
  Begin
     MessageDlg('No existen registros...', mtInformation, [mbOk], 0);
     screen.Cursor := crDefault;
     Exit;
  End;

  Try
    FestONP:= TFestONP.create(self);
    FestONP.Showmodal;
  Finally
    FestONP.free;
  End;
end;

procedure TFactblqonp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
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
end;

procedure TFactblqonp.btnVerDetalleClick(Sender: TObject);
begin

  If DM1.cdsCreditos.FieldByName('NUMERO').AsString = '' Then
  Begin
     MessageDlg('No existen registros...', mtInformation, [mbOk], 0);
     screen.Cursor := crDefault;
     Exit;
  End;

  Try
    DM1.sFormaPara := 'MOSTRAR';

    Fgenenvioonp := TFgenenvioonp.Create(Self);
    Fgenenvioonp.ShowModal;
  Finally
    Fgenenvioonp.Free;
  End;
  mostrarcabeceras;
end;

procedure TFactblqonp.dbginconsistenciasIButtonClick(Sender: TObject);
begin
 Try
    DM1.sFormaPara := 'CARGAR';

    Fgenenvioonp := TFgenenvioonp.Create(Self);
    Fgenenvioonp.ShowModal;
  Finally
    Fgenenvioonp.Free;
  End;
  mostrarcabeceras;
end;

procedure TFactblqonp.btnCargarTextoClick(Sender: TObject);
begin
 Try
    fimptexto := Tfimptexto.Create(Self);
    fimptexto.ShowModal;
Finally
    fimptexto.Free;
  End;
    mostrarcabeceras;
end;

procedure TFactblqonp.btnprocesarClick(Sender: TObject);
begin
 Try

    If DM1.cdsCreditos.FieldByName('NUMERO').AsString = '' Then
    Begin
       MessageDlg('No existen registros...', mtInformation, [mbOk], 0);
       screen.Cursor := crDefault;
       Exit;
    End;

    If DM1.cdsCreditos.FieldByName('FLAG_ACTONP').AsString = 'S' Then
    Begin
       MessageDlg('Información no puede ser cargada, ya fue actualizada', mtInformation, [mbOk], 0);
       screen.Cursor := crDefault;
       Exit
    End;

    If DM1.cdsCreditos.FieldByName('FLAG_CARGA').AsString = 'S' Then
    Begin
      MessageDlg('Archivo de texto ya cargado...', mtInformation, [mbOk], 0);
      screen.Cursor := crDefault;
    End;

    fimptexto := Tfimptexto.Create(Self);
    fimptexto.ShowModal;
Finally
    fimptexto.Free;
  End;
    mostrarcabeceras;
end;

end.

