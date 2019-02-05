// Inicio Uso Estándares  : 01/08/2011
// Unidad		         : ASO216.pas
// Formulario		     : FPadrones
// Fecha de Creación	  : 28/02/2012
// Autor			      : Daniel Fernández
// Objetivo		       : Administrar los padrones

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO   : 28/02/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO   : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201211_ASO   : Se llama al procedimiento que actualiza la información de ubicabilidad
// SPP_201301_ASO   : El pase a producción se realiza sobre la base del HPC_201301_ASO
// HPC_201306_ASO   : Se modifica la forma de actualizar para evitar error de escritura con el clientdataset
// SPP_201307_ASO   : Se realiza el pase a producción a partir del HPC_201306_ASO
// HPC_201309_ASO   : La tabla ASO_PAD_DET_HIS se usa para un padrón cerrado, sino ASO_PAD_DET 
// SPP_201310_ASO   : Se realiza el pase a producción a partir del HPC_201309_ASO
// HPC_201405_ASO   : Mantenimiento de la cargado de padrones mensuales
// SPP_201405_ASO   : Se realiza el pase a producción a partir del HPC_201405_ASO
// HPC_201406_ASO   : Se actualiza el dptoid para el asociado.		 
// SPP_201406_ASO   : Se realiza el pase a producción a partir del HPC_201406_ASO.
// HPC_201408_ASO   : Mejorar el tiempo procesamiento del padron.
// SPP_201409_ASO   : Se realiza el pase a producción a partir del HPC_201408_ASO
// HPC_201505_ASO   : Criterios de aceptación de registros duplicados,multiplicados y no duplicados para actualización.

unit ASO216;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, wwdblook,
  Wwdbdlg, DB;

type
  TFPadrones = class(TForm)
    grpTipoRegistro: TGroupBox;
    rbTodos: TRadioButton;
    rbEstado: TRadioButton;
    dblcdEstado: TwwDBLookupComboDlg;
    edtEstado: TMaskEdit;
    btnMostrar: TBitBtn;
    btnSalir: TBitBtn;
    dbgPadrones: TwwDBGrid;
// Inicio HPC_201505_ASO  
    {
    btnPadronDuplicados: TBitBtn;
    btnPadronMultiplicados: TBitBtn;
    btnPadronNoDuplicados: TBitBtn;
}
// Fin HPC_201505_ASO  
    btnCerrarPadron: TBitBtn;
    btnResumen: TBitBtn;
    btnEvaluarRequisitos: TBitBtn;
    btnConteoManual: TBitBtn;
    btnRetornarDescargado: TBitBtn;
    btnHistorialPorDni: TBitBtn;
    btnValidar: TBitBtn;
    btnActualizar: TBitBtn;
    btnEstadisticas: TBitBtn;
    btnIdentificar: TBitBtn;
// Inicio: SPP_201307_ASO
    btnReabrir: TBitBtn;
// Inicio HPC_201505_ASO  
    GroupBox1: TGroupBox;
    btnProgramar: TBitBtn;
    btnPadronMultiplicados: TBitBtn;
    btnPadronDuplicados: TBitBtn;
    btnPadronNoDuplicados: TBitBtn;
// Fin HPC_201505_ASO  
// Fin: SPP_201307_ASO
    procedure btnMostrarClick(Sender: TObject);
    procedure rbTodosClick(Sender: TObject);
    procedure rbEstadoClick(Sender: TObject);
    procedure dblcdEstadoChange(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPadronDuplicadosClick(Sender: TObject);
    procedure btnPadronMultiplicadosClick(Sender: TObject);
    procedure btnPadronNoDuplicadosClick(Sender: TObject);
    procedure btnCerrarPadronClick(Sender: TObject);
    procedure btnEvaluarRequisitosClick(Sender: TObject);
    procedure btnResumenClick(Sender: TObject);
    procedure btnConteoManualClick(Sender: TObject);
    procedure dbgPadronesCellChanged(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnRetornarDescargadoClick(Sender: TObject);
    procedure btnHistorialPorDniClick(Sender: TObject);
    procedure btnValidarClick(Sender: TObject);
    procedure btnActualizarClick(Sender: TObject);
    procedure btnEstadisticasClick(Sender: TObject);
    procedure btnIdentificarClick(Sender: TObject);
// Inicio: SPP_201307_ASO
    procedure btnReabrirClick(Sender: TObject);
// Inicio HPC_201505_ASO 
    procedure btnProgramarClick(Sender: TObject);
// Fin HPC_201505_ASO 
// Fin: SPP_201307_ASO
  private
    { Private declarations }
    procedure Validar;
    procedure ActualizarMaestro;
    Procedure Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
    Procedure actasoncta;
    Function CodReg(): String;
  public
    { Public declarations }
    FUNCTION AsignaSolicitud: STRING;
    FUNCTION AsignaAsoid: STRING;
  end;

var
  FPadrones: TFPadrones;

implementation
// Inicio HPC_201505_ASO 
uses ASODM, ASO217, ASO218, ASO220, ASO221, ASO222, ASO224, ASO219, ASO228,
  ASO230, ASO216A;
// Fin HPC_201505_ASO 
{$R *.dfm}


procedure TFPadrones.FormActivate(Sender: TObject);
var
  xSql: string;
begin
  xSql := 'SELECT CODEST, DESEST FROM ASO_PAD_EST_MAE ORDER BY DESEST';
  DM1.cdsEstPadron.Close;
  DM1.cdsEstPadron.DataRequest(xSql);
  DM1.cdsEstPadron.Open;

  dblcdEstado.Selected.Clear;
  dblcdEstado.Selected.Add('CODEST'#9'2'#9'Código'#9#9);
  dblcdEstado.Selected.Add('DESEST'#9'15'#9'Estado'#9#9);

  rbTodosClick(self);

  btnMostrarClick(self);
end;
//Inicio: SPP_201409_ASO
procedure TFPadrones.btnMostrarClick(Sender: TObject);
var
  xSql: string;
begin
//Inicio: SPP_201405_ASO

   //Procedimiento de validación del padrón
    xSql := 'BEGIN'
      + ' DB2ADMIN.SP_ASO_CALCULAAVANCE;'
      + ' END;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);

  if rbTodos.Checked then
  begin
    xSql := '  SELECT C.CODPAD,'
        +' C.CODEST,'
        +' C.PERIODO,'
        +' C.FECREG,'
        +' C.USUREG,'
        +' C.FECINI,'
        +' C.USUINI,'
        +' C.FECCIE,'
        +' C.USUCIE,'
        +' E.DESEST,'
       +'  A.CANREG,'
       +'  A.PORAVA'
        +' FROM ASO_PAD_CAB C'
       +'  INNER JOIN ASO_PAD_EST_MAE E ON C.CODEST = E.CODEST'
       +'  INNER JOIN ASO_PAD_AVANCE A ON  C.CODPAD=A.CODPAD'
       +'  ORDER BY C.CODPAD DESC';
  end
  else
  begin
    xSql := ' SELECT C.CODPAD,'
        +' C.CODEST,'
        +' C.PERIODO,'
        +' C.FECREG,'
        +' C.USUREG,'
        +' C.FECINI,'
        +' C.USUINI,'
        +' C.FECCIE,'
        +' C.USUCIE,'
        +' E.DESEST,'
       +'  A.CANREG,'
       +'  A.PORAVA'
        +' FROM ASO_PAD_CAB C'
       +'  INNER JOIN ASO_PAD_EST_MAE E ON C.CODEST = E.CODEST'
       +'  INNER JOIN ASO_PAD_AVANCE A ON  C.CODPAD=A.CODPAD'
        +' WHERE C.CODEST = ' + QuotedStr(dblcdEstado.Text)
       +' ORDER BY C.CODPAD DESC';

  end;
  
  DM1.cdsPadrones.Close;
  DM1.cdsPadrones.DataRequest(xSql);
  DM1.cdsPadrones.Open;
  
  dbgPadrones.Refresh;
  dbgPadrones.Selected.Clear;
  dbgPadrones.Selected.Add('CODPAD'#9'8'#9'Código'#9#9);
  dbgPadrones.Selected.Add('DESEST'#9'10'#9'Estado'#9#9);
  dbgPadrones.Selected.Add('PERIODO'#9'8'#9'Periodo'#9#9);
  dbgPadrones.Selected.Add('FECREG'#9'10'#9'Fec. Registro'#9#9);
  dbgPadrones.Selected.Add('USUREG'#9'15'#9'Usu. Registro'#9#9);
  dbgPadrones.Selected.Add('FECINI'#9'10'#9'Fec. Inicio'#9#9);
  dbgPadrones.Selected.Add('USUINI'#9'15'#9'Usu. Inicio'#9#9);
  dbgPadrones.Selected.Add('FECCIE'#9'10'#9'Fec. Cierre'#9#9);
  dbgPadrones.Selected.Add('USUCIE'#9'15'#9'Usu.Cierre'#9#9);
  dbgPadrones.Selected.Add('CANREG'#9'6'#9'Cantidad'#9#9);
  dbgPadrones.Selected.Add('PORAVA'#9'6'#9'% Actualizado'#9#9);
  dbgPadrones.ApplySelected;
  
  dbgPadrones.ColumnByName('CODPAD').FooterValue := IntToStr(DM1.cdsPadrones.RecordCount);
  dbgPadrones.ColumnByName('DESEST').FooterValue := 'Registros';
  dbgPadrones.RefreshDisplay;
  //Fin: SPP_201405_ASO
end;
//Fin: SPP_201409_ASO
procedure TFPadrones.rbTodosClick(Sender: TObject);
begin
  dblcdEstado.Text := '';
  dblcdEstado.Enabled := false;
  edtEstado.Text := '';
  edtEstado.Enabled := false;
end;

procedure TFPadrones.rbEstadoClick(Sender: TObject);
begin
  dblcdEstado.Enabled := true;
  edtEstado.Enabled := true;
end;

procedure TFPadrones.dblcdEstadoChange(Sender: TObject);
begin
  If DM1.cdsEstPadron.Locate('CODEST',VarArrayof([dblcdEstado.text]),[]) Then
  begin
    edtEstado.Text := DM1.cdsEstPadron.FieldByName('DESEST').AsString;
  end
  else
  begin
    edtEstado.Text := '';
  end;
end;

procedure TFPadrones.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadrones.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsEstPadron.Close;
  DM1.cdsPadrones.Close;
end;

procedure TFPadrones.btnPadronDuplicadosClick(Sender: TObject);
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;

  Try
    FPadronDuplicados := TFPadronDuplicados.Create(Self);
    FPadronDuplicados.CODPAD := DM1.cdsPadrones.FieldByName('CODPAD').AsString;
    FPadronDuplicados.ShowModal;
  Finally
    FPadronDuplicados.Free;
  End;
end;

procedure TFPadrones.btnPadronMultiplicadosClick(Sender: TObject);
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;

  Try
    FPadronMultiplicados := TFPadronMultiplicados.Create(Self);
    FPadronMultiplicados.CODPAD := DM1.cdsPadrones.FieldByName('CODPAD').AsString;
    FPadronMultiplicados.ShowModal;
  Finally
    FPadronMultiplicados.Free;
  End;
end;

procedure TFPadrones.btnPadronNoDuplicadosClick(Sender: TObject);
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;

  Try
    FPadronNoDuplicados := TFPadronNoDuplicados.Create(Self);
    FPadronNoDuplicados.CODPAD := DM1.cdsPadrones.FieldByName('CODPAD').AsString;
    FPadronNoDuplicados.ShowModal;
  Finally
    FPadronNoDuplicados.Free;
  End;
end;

procedure TFPadrones.btnCerrarPadronClick(Sender: TObject);
var
  xSql: string;
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;
  If DM1.cdsPadrones.FieldByName('CODEST').AsString = 'C' Then
  Begin
    MessageDlg('El padrón ya fue Cerrado', mtInformation, [mbOk], 0);
    Exit;
  End;

  // Inicio: SPP_201310_ASO
  Screen.Cursor := crHourGlass;
  xSql := 'SELECT COUNT(1) PEND FROM ASO_PAD_DET WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString) + ' AND (CODEST = ''P'' OR ACTUALIZA IS NULL)';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  Screen.Cursor := crDefault;
  // Fin: SPP_201310_ASO
  
  if DM1.cdsQry.FieldByName('PEND').AsInteger > 0 then
  begin
// Inicio: SPP_201310_ASO
    //Inicio: SPP_201409_ASO
    MessageDlg('Se encontraron registros pendientes en el padrón.', mtInformation, [mbOk], 0);
    //Exit;
// Fin: SPP_201310_ASO
  end;
  
  If MessageDlg('¿Está seguro de cerrar el padrón?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then Exit;

  // Inicio: SPP_201310_ASO
  Screen.Cursor := crHourGlass;
  Try
    //Procedimiento de validación del padrón
    xSql := 'BEGIN'
      + '    DB2ADMIN.SP_ASO_CIERRA_PAD(' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString) + ','+QuotedStr(DM1.wUsuario)+'); '
      + 'END;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    Screen.Cursor := crDefault;
    MessageDlg('Cierre realizado correctamente', mtInformation, [mbOk], 0);
    btnMostrarClick(Self);
    //Fin: SPP_201409_ASO
  Except on E : Exception do
	begin
    Screen.Cursor := crDefault;
		ShowMessage('Error al cerrar padrón: ' + E.Message);
		Exit;
	end;
  End;
//Inicio: SPP_201409_ASO
{
  Screen.Cursor := crHourGlass;
  xSql := 'INSERT INTO ASO_PAD_DET_HIS (CODPAD, CODITEM, ASOCODMOD,'
    + '   SECUENCIAL, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, PLANILLA, FISCAL, SITUACION, COD_EMPRESA, EMPRESA,'
    + '   USEID, USENOM, TIPSER, DESC_SERVIDOR, ASOCODPAGO, NOMBRE_IE, CARLAB, DES_CARGO, COD_REGLAB,'
    + '   REGLAB, ASONCTA, HABER, DESCUENTO, LIQUIDO, CODEST, ASODNI, ASOTIPID, SITACT,'
    + '   REGPENID, CARGO, UPAGOID, UPROID, NIVEDU_ID, CODMOD, FECREG, USUREG, FECMOD,'
    + '   USUMOD, ASOAPENOM, TIPDNI, ACTUALIZA, ASOID, NUEVO, DSCTO01, MTO01, DSCTO02,'
    + '   MTO02, DSCTO03, MTO03, DSCTO04, MTO04, DSCTO05, MTO05, DSCTO06, MTO06,'
    + '   DSCTO07, MTO07, DSCTO08, MTO08, DSCTO09, MTO09, DSCTO10, MTO10, DSCTO11,'
    + '   MTO11, DSCTO12, MTO12, DSCTO13, MTO13, DSCTO14, MTO14, DSCTO15, MTO15,'
    + '   DSCTO16, MTO16, DSCTO17, MTO17, DSCTO18, MTO18, DSCTO19, MTO19, DSCTO20, MTO20) '
    + 'SELECT CODPAD, CODITEM, ASOCODMOD,'
    + '   SECUENCIAL, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, PLANILLA, FISCAL, SITUACION, COD_EMPRESA, EMPRESA,'
    + '   USEID, USENOM, TIPSER, DESC_SERVIDOR, ASOCODPAGO, NOMBRE_IE, CARLAB, DES_CARGO, COD_REGLAB,'
    + '   REGLAB, ASONCTA, HABER, DESCUENTO, LIQUIDO, CODEST, ASODNI, ASOTIPID, SITACT,'
    + '   REGPENID, CARGO, UPAGOID, UPROID, NIVEDU_ID, CODMOD, FECREG, USUREG, FECMOD,'
    + '   USUMOD, ASOAPENOM, TIPDNI, ACTUALIZA, ASOID, NUEVO, DSCTO01, MTO01, DSCTO02,'
    + '   MTO02, DSCTO03, MTO03, DSCTO04, MTO04, DSCTO05, MTO05, DSCTO06, MTO06,'
    + '   DSCTO07, MTO07, DSCTO08, MTO08, DSCTO09, MTO09, DSCTO10, MTO10, DSCTO11,'
    + '   MTO11, DSCTO12, MTO12, DSCTO13, MTO13, DSCTO14, MTO14, DSCTO15, MTO15,'
    + '   DSCTO16, MTO16, DSCTO17, MTO17, DSCTO18, MTO18, DSCTO19, MTO19, DSCTO20, MTO20 '
    + 'FROM ASO_PAD_DET '
    + 'WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  xSql := 'INSERT INTO ASO_PAD_LOG_HIS (CODPAD, CODITEM, CODSEC, FECREG, USUREG, CODTIPREG, DESLOG) '
    + 'SELECT CODPAD, CODITEM, CODSEC, FECREG, USUREG, CODTIPREG, DESLOG '
    + 'FROM ASO_PAD_LOG '
    + 'WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  xSql := 'DELETE FROM ASO_PAD_LOG WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  xSql := 'DELETE FROM ASO_PAD_DET WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString);
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  // Inicio: SPP_201301_ASO
  xSql := 'BEGIN DB2ADMIN.SP_ASO_PROCESA_UBICAB_PADRON(' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString) + '); END;';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  // Fin: SPP_201301_ASO
  Screen.Cursor := crDefault;
  // Fin: SPP_201310_ASO
  
  btnMostrarClick(Self);
  MessageDlg('Cierre realizado correctamente', mtInformation, [mbOk], 0);
}
//Fin: SPP_201409_ASO
end;

procedure TFPadrones.btnEvaluarRequisitosClick(Sender: TObject);
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FPadronRequisitos := TFPadronRequisitos.Create(Self);
    FPadronRequisitos.CODPAD := DM1.cdsPadrones.FieldByName('CODPAD').AsString;
    FPadronRequisitos.ShowModal;
    if FPadronRequisitos.MODIFICADO then
      btnMostrarClick(Self);
  Finally
    FPadronRequisitos.Free;
  End;
end;

procedure TFPadrones.btnResumenClick(Sender: TObject);
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FPadronResumen := TFPadronResumen.Create(Self);
    FPadronResumen.CODPAD := DM1.cdsPadrones.FieldByName('CODPAD').AsString;
    FPadronResumen.ShowModal;
  Finally
    FPadronResumen.Free;
  End;
end;

procedure TFPadrones.btnConteoManualClick(Sender: TObject);
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;

  Try
    FPadronConteo := TFPadronConteo.Create(Self);
    FPadronConteo.CODPAD := DM1.cdsPadrones.FieldByName('CODPAD').AsString;
    FPadronConteo.ShowModal;
  Finally
    FPadronConteo.Free;
  End;
end;

procedure TFPadrones.dbgPadronesCellChanged(Sender: TObject);
begin
  if DM1.cdsPadrones.FieldByName('CODEST').AsString = 'D' then
  begin //Descargado
    btnPadronMultiplicados.Enabled := false;
    // Inicio HPC_201505_ASO
    //btnPadronDuplicados.Enabled := false;
    // Fin HPC_201505_ASO
    btnPadronNoDuplicados.Enabled := false;
    btnCerrarPadron.Enabled := false;
    btnRetornarDescargado.Enabled := false;
    btnValidar.Enabled := false;
    btnActualizar.Enabled := false;
    btnIdentificar.Enabled := false;
    btnEstadisticas.Enabled := false;
    // Inicio: SPP_201310_ASO
    DM1.sTablaPadron := 'ASO_PAD_DET';
    DM1.sTablaLogPadron := 'ASO_PAD_LOG';
    // Fin: SPP_201310_ASO
  end
  else if DM1.cdsPadrones.FieldByName('CODEST').AsString = 'P' then
  begin //Pendiente
    btnPadronMultiplicados.Enabled := true;
    // Inicio HPC_201505_ASO
    //btnPadronDuplicados.Enabled := true;
    // Fin HPC_201505_ASO
    btnPadronNoDuplicados.Enabled := true;
    btnCerrarPadron.Enabled := true;
    btnRetornarDescargado.Enabled := true;
    btnValidar.Enabled := true;
    btnActualizar.Enabled := true;
    btnIdentificar.Enabled := true;
    btnEstadisticas.Enabled := true;
    // Inicio: SPP_201310_ASO
    DM1.sTablaPadron := 'ASO_PAD_DET';
    DM1.sTablaLogPadron := 'ASO_PAD_LOG';
    // Fin: SPP_201310_ASO
  end
  else //Cerrado
  begin
    btnPadronMultiplicados.Enabled := true;
    // Inicio HPC_201505_ASO
    //btnPadronDuplicados.Enabled := true;
    // Fin HPC_201505_ASO
    btnPadronNoDuplicados.Enabled := true;
    btnCerrarPadron.Enabled := false;
    btnRetornarDescargado.Enabled := false;
    btnValidar.Enabled := false;
    btnActualizar.Enabled := false;
    btnIdentificar.Enabled := false;
    btnEstadisticas.Enabled := true;
    // Inicio: SPP_201310_ASO
    DM1.sTablaPadron := 'ASO_PAD_DET_HIS';
    DM1.sTablaLogPadron := 'ASO_PAD_LOG_HIS';
    // Fin: SPP_201310_ASO
  end;
end;

procedure TFPadrones.btnRetornarDescargadoClick(Sender: TObject);
var
  xSql: string;
begin
  Screen.Cursor := crHourGlass;
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  If DM1.cdsPadrones.FieldByName('CODEST').AsString = 'C' Then
  Begin
    Screen.Cursor := crDefault;
    MessageDlg('El padrón ya fue Cerrado', mtInformation, [mbOk], 0);
    Exit;
  End;
  
  xSql := 'SELECT CODPAD FROM ASO_PAD_HIS'
    + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)
    + '   AND ACTUALIZADO = ''S''';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;  
  if DM1.cdsQry.RecordCount > 0 then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('El padrón tiene registros que actualizaron el maestro de asociados. No puede retornar al estado Descargado.', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  xSql := 'SELECT CODPAD FROM ASO_PAD_CAB'
    + ' WHERE CODPAD <> ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)
    + '   AND PERIODO >= ' + QuotedStr(DM1.cdsPadrones.FieldByName('PERIODO').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;  
  if DM1.cdsQry.RecordCount > 0 then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('Existen padrones descargados que son mas recientes, solo puede retornar a descargado el último padrón trabajado', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  MessageDlg('El padrón retornará al estado Descargado y todos los registros volverán al estado Pendiente y mantendrán los cambios de los datos.', mtInformation, [mbOk], 0);
  If MessageDlg('¿Está seguro de retornar el padrón al estado Descargado?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then
  begin
    screen.Cursor := crDefault;
    Exit;
  end;
  
  Try
    xSql := 'DELETE FROM ASO_PAD_HIS WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    
    xSql := 'DELETE FROM ASO_PAD_LOG WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    
    xSql := 'UPDATE ASO_PAD_DET '
      + ' SET CODEST = ''P'','
      + '   ACTUALIZA = NULL,'
      + '   FECMOD = SYSDATE,'
      + '   USUMOD = ' + QuotedStr(DM1.wUsuario)
      + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    
    xSql := 'UPDATE ASO_PAD_CAB '
      + ' SET CODEST = ''D'''
      + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    
    btnMostrarClick(Self);
   Except
      screen.Cursor := crDefault;
      ShowMessage('No se pudo deshacer la clasificación de DNIs, por favor intente nuevamente');
      exit;
   End;
   screen.Cursor := crDefault;
   ShowMessage('Operación concluida exitosamente');
end;

procedure TFPadrones.btnHistorialPorDniClick(Sender: TObject);
begin
  Try
    FPadronHistorialDNI := TFPadronHistorialDNI.Create(Self);
    FPadronHistorialDNI.ShowModal;
  Finally
    FPadronHistorialDNI.Free;
  End;
end;

procedure TFPadrones.btnValidarClick(Sender: TObject);
begin
  Validar;
end;

procedure TFPadrones.Validar;
var
  xSql: string;
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;
  If DM1.cdsPadrones.FieldByName('CODEST').AsString = 'C' Then
  Begin
    MessageDlg('El padrón ya fue Cerrado', mtInformation, [mbOk], 0);
    Exit;
  End;
  
  If MessageDlg('¿Está seguro de validar el padrón?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then Exit;
  
  Screen.Cursor := crHourGlass;
  
  Try
    //Procedimiento de validación del padrón
    xSql := 'BEGIN'
      + '    DB2ADMIN.SP_ASO_VALIDAR_PADRON(' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString) + '); '
      + 'END;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  Except
    on E: Exception do
    begin
      Screen.Cursor := crDefault;
      ShowMessage('Mensaje: ' + E.Message);
      Exit;
    end;
  End;

  // Inicio: SPP_201301_ASO
  //Copia los registros a la tabla
  xSql := 'INSERT INTO ASO_PAD_HIS('
    + '    CODPAD, CODITEM, ACTUALIZADO, ASOID, ASOCODMOD,'
    + '    ASODNI, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM,'
    + '    UPROID, UPAGOID, USEID, TIPSER, ASOCODPAGO, ASODESLAB,'
    + '    CARLAB, COD_REGLAB, ASONCTA, HABER, DESCUENTO,'
    + '    LIQUIDO, CARGO, ASOTIPID, REGPENID, SITACT, CODREGION,'
    + '    NIVEDU_ID, CODMOD,'
    + '    FLAACTASOCODMOD, FLAACTCARGO, FLAACTASONCTA, FLAACTASOCODPAGO, FLAACTUSEID,'
    + '    FLAACTREGPEN, FLAACTASOAPENOM, FLAACTASODESLAB, FLAACTCOLEGIO,'
    + '    FLAACTASOTIPID, FLAACTSITACT, FLAACTTIPSER, FLAACTCARLAB,'
    + '    FECREG, USUREG, NUEVO,'
    + '    DSCTO01, MTO01,'
    + '    DSCTO02, MTO02, DSCTO03,'
    + '    MTO03, DSCTO04, MTO04,'
    + '    DSCTO05, MTO05, DSCTO06,'
    + '    MTO06, DSCTO07, MTO07,'
    + '    DSCTO08, MTO08, DSCTO09,'
    + '    MTO09, DSCTO10, MTO10,'
    + '    DSCTO11, MTO11, DSCTO12,'
    + '    MTO12, DSCTO13, MTO13,'
    + '    DSCTO14, MTO14, DSCTO15,'
    + '    MTO15, DSCTO16, MTO16,'
    + '    DSCTO17, MTO17, DSCTO18,'
    + '    MTO18, DSCTO19, MTO19,'
    + '    DSCTO20, MTO20) '
    + ' SELECT'
    + '    CODPAD, CODITEM, ''N'', ASOID, ASOCODMOD,'
    + '    ASODNI, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM,'
    + '    UPROID, UPAGOID, USEID, TIPSER, ASOCODPAGO, NOMBRE_IE,'
    + '    CARLAB, COD_REGLAB, ASONCTA, HABER, DESCUENTO,'
    + '    LIQUIDO, CARGO, ASOTIPID, REGPENID, SITACT, COD_EMPRESA,'
    + '    NIVEDU_ID, CODMOD,'
    + '    ''N'', ''N'', ''N'', ''N'', ''N'','
    + '    ''N'', ''N'', ''N'', ''N'','
    + '    ''N'', ''N'', ''N'', ''N'','
    + '    SYSDATE, ' + QuotedStr(DM1.wUsuario) + ', NUEVO,'
    + '    DSCTO01, MTO01,'
    + '    DSCTO02, MTO02, DSCTO03,'
    + '    MTO03, DSCTO04, MTO04,'
    + '    DSCTO05, MTO05, DSCTO06,'
    + '    MTO06, DSCTO07, MTO07,'
    + '    DSCTO08, MTO08, DSCTO09,'
    + '    MTO09, DSCTO10, MTO10,'
    + '    DSCTO11, MTO11, DSCTO12,'
    + '    MTO12, DSCTO13, MTO13,'
    + '    DSCTO14, MTO14, DSCTO15,'
    + '    MTO15, DSCTO16, MTO16,'
    + '    DSCTO17, MTO17, DSCTO18,'
    + '    MTO18, DSCTO19, MTO19,'
    + '    DSCTO20, MTO20'
    + ' FROM ASO_PAD_DET D'
    + ' WHERE'
    + '    D.CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)
    + '    AND D.ACTUALIZA = ''S'''
    + '    AND D.CODITEM NOT IN (SELECT H.CODITEM FROM ASO_PAD_HIS H WHERE H.CODPAD = D.CODPAD AND H.CODITEM = D.CODITEM)';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  // Fin: SPP_201301_ASO

  Screen.Cursor := crDefault;
  
  MessageDlg('Padrón validado correctamente', mtInformation, [mbOk], 0);
end;
//Inicio: SPP_201409_ASO
procedure TFPadrones.btnActualizarClick(Sender: TObject);
// Inicio HPC_201505_ASO
var xSQL,xMensaje: String;
// Fin HPC_201505_ASO
begin
   //ActualizarMaestro;

   if DM1.cdsPadrones.RecordCount = 0 then
begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
end;
  If DM1.cdsPadrones.FieldByName('CODEST').AsString = 'C' Then
  Begin
    MessageDlg('El padrón ya fue Cerrado', mtInformation, [mbOk], 0);
    Exit;
  End;

  // Inicio HPC_201505_ASO

    xSQL:='SELECT CODPAD,NVL(ACTREGGEN,''N'') ACTREGGEN FROM ASO_PRO_ACT_PAD '+
          'WHERE CODPAD='+QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)+' AND '+
          'ESTACTREG NOT IN (''A'',''T'') ';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSQL);
    DM1.cdsQry.Open;
    If DM1.cdsQry.RecordCount>1 Then
       Begin
           MessageDlg('Existen Registros Repetidos Para Este Padrón, Verifique!!!', mtError, [mbOk], 0);
           DM1.cdsQry.Close;
           Exit;
       End;
    xMensaje:='';
    If DM1.cdsQry.RecordCount=1 Then
       Begin
           If DM1.cdsQry.FieldByName('ACTREGGEN').AsString='P' Then xMensaje:='PENDIENTE';
           If DM1.cdsQry.FieldByName('ACTREGGEN').AsString='I' Then xMensaje:='INICIADA';
       End;
       DM1.cdsQry.Close;
    If Length(Trim(xMensaje))>0 Then
       Begin
           MessageDlg('Actualización General Programada Se Encuentra : '+xMensaje+' !!!', mtError, [mbOk], 0);
           Exit;
       End;

  // Fin HPC_201505_ASO

  
  Screen.Cursor := crHourGlass;

  // Inicio: SPP_201301_ASO
  //Obtiene los registros a actualizar
  xSql := 'SELECT   CODPAD '
    + ' FROM ASO_PAD_HIS '
    + ' WHERE'
    + '  CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)
    + '  AND ACTUALIZADO = ''N'''
    + '  AND (NVL(FLAACTASOCODMOD,''X'')    = ''S'' '
    + '      OR NVL(FLAACTCARGO,''X'')      = ''S'' '
    + '      OR NVL(FLAACTASOCODPAGO,''X'') = ''S'' '
    + '      OR NVL(FLAACTUSEID,''X'')      = ''S'' '
    + '      OR NVL(FLAACTASONCTA,''X'')    = ''S'' '
    + '      OR NVL(FLAACTREGPEN,''X'')     = ''S'' '
    + '      OR NVL(FLAACTASODESLAB,''X'')  = ''S'' '
    + '      OR NVL(FLAACTASOAPENOM,''X'')  = ''S'' '
    + '      OR NVL(FLAACTCOLEGIO,''X'')    = ''S'' '
    + '      OR NVL(FLAACTDATSOC,''X'')     = ''S'') AND ROWNUM <=5';
  // Fin: SPP_201301_ASO
  DM1.cdsCuotas.Close;
  DM1.cdsCuotas.DataRequest(xSql);
  DM1.cdsCuotas.Open;
  //valida si existe información por actualizar
  If DM1.cdsCuotas.RecordCount = 0 Then
  Begin
    Screen.Cursor := crDefault;
    DM1.cdsCuotas.Close;
    MessageDlg('No existen registros por actualizar', mtInformation, [mbOk], 0);
    Exit;
  End;
  Screen.Cursor := crDefault;


  If MessageDlg('¿Está seguro de actualizar el maestro de asociados con los registros del padrón marcados para actualización?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then Exit;
  
  Try
      Screen.Cursor := crHourGlass;
    xSql := 'BEGIN'
      + '    DB2ADMIN.SP_ASO_ACTUALIZA_PAD(' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString) + ','+QuotedStr(DM1.wUsuario)+'); '
      + 'END;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);

    MessageDlg('El Maestro de asociados fue actualizado correctamente', mtInformation, [mbOk], 0);
    btnMostrarClick(nil);  
    Screen.Cursor := crDefault;
  Except
    on E: Exception do
    begin
      Screen.Cursor := crDefault;
      ShowMessage('Mensaje: ' + E.Message);
      Exit;
    end;
  End;
end;
//Fin: SPP_201409_ASO

procedure TFPadrones.ActualizarMaestro;
var
  xSql: string;
  xCENEDUID: String;
  xSqlUpdate, xfila, xItem, xAsoId, xCodReg: String;
  xTabla, xSolicitud: String;
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;
  If DM1.cdsPadrones.FieldByName('CODEST').AsString = 'C' Then
  Begin
    MessageDlg('El padrón ya fue Cerrado', mtInformation, [mbOk], 0);
    Exit;
  End;
  
  Screen.Cursor := crHourGlass;

  // Inicio: SPP_201301_ASO
  //Obtiene los registros a actualizar
  xSql := 'SELECT '
    + '  CODPAD, CODITEM, ACTUALIZADO, ASOID, ASOCODMOD,'
    + '  ASODNI, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM,'
    + '  UPROID, UPAGOID, USEID, TIPSER, ASOCODPAGO, ASODESLAB,'
    + '  CARLAB, COD_REGLAB, ASONCTA, HABER, DESCUENTO,'
    + '  LIQUIDO, CARGO, ASOTIPID, REGPENID, SITACT,'
    + '  NIVEDU_ID, CODMOD,'
    + '  FLAACTASOCODMOD, FLAACTCARGO, FLAACTASONCTA, FLAACTASOCODPAGO, FLAACTUSEID,'
    + '  FLAACTREGPEN, FLAACTASOAPENOM, FLAACTASODESLAB, FLAACTCOLEGIO, NUEVO, FLAACTDATSOC '
    + 'FROM ASO_PAD_HIS '
    + 'WHERE'
    + '  CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)
    + '  AND ACTUALIZADO = ''N'''
    + '  AND (NVL(FLAACTASOCODMOD,''X'')    = ''S'' '
    + '      OR NVL(FLAACTCARGO,''X'')      = ''S'' '
    + '      OR NVL(FLAACTASOCODPAGO,''X'') = ''S'' '
    + '      OR NVL(FLAACTUSEID,''X'')      = ''S'' '
    + '      OR NVL(FLAACTASONCTA,''X'')    = ''S'' '
    + '      OR NVL(FLAACTREGPEN,''X'')     = ''S'' '
    + '      OR NVL(FLAACTASODESLAB,''X'')  = ''S'' '
    + '      OR NVL(FLAACTASOAPENOM,''X'')  = ''S'' '
    + '      OR NVL(FLAACTCOLEGIO,''X'')    = ''S'' '
    + '      OR NVL(FLAACTDATSOC,''X'')     = ''S'')';
  // Fin: SPP_201301_ASO
  DM1.cdsCuotas.Close;
  DM1.cdsCuotas.DataRequest(xSql);
  DM1.cdsCuotas.Open;
  //valida si existe información por actualizar
  If DM1.cdsCuotas.RecordCount = 0 Then
  Begin
    Screen.Cursor := crDefault;
    DM1.cdsCuotas.Close;
    MessageDlg('No existen registros por actualizar', mtInformation, [mbOk], 0);
    Exit;
  End;
  Screen.Cursor := crDefault;
  
  If MessageDlg('¿Está seguro de actualizar el maestro de asociados con los registros del padrón marcados para actualización?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then Exit;
  
  Screen.Cursor := crHourGlass;     
  //Se preparan los querys de actualización
  DM1.cdsCuotas.First;
  While Not DM1.cdsCuotas.Eof Do
  Begin
    xSqlUpdate := '';
    xSql := '';
    xfila := 'N';
    If DM1.cdsCuotas.FieldByName('FLAACTASOCODMOD').AsString = 'S' Then
    Begin
       xSqlUpdate := xSqlUpdate + 'ASOCODMOD = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString);
       xfila := 'S';
    End;
    If DM1.cdsCuotas.FieldByName('FLAACTASONCTA').AsString = 'S' Then
    Begin
       If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
       xSqlUpdate := xSqlUpdate + 'ASONCTA = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASONCTA').AsString)+', SITCTA = ''A''';
       xfila := 'S';
    End;
    If DM1.cdsCuotas.FieldByName('FLAACTCARGO').AsString = 'S' Then
    Begin
       If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
       xSqlUpdate := xSqlUpdate + 'CARGO = ' + QuotedStr(DM1.cdsCuotas.FieldByName('CARGO').AsString);
       xfila := 'S';
    End;
    If DM1.cdsCuotas.FieldByName('FLAACTASOCODPAGO').AsString = 'S' Then
    Begin
       If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
       xSqlUpdate := xSqlUpdate + 'ASOCODPAGO = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODPAGO').AsString);
       xfila := 'S';
    End;
    If DM1.cdsCuotas.FieldByName('FLAACTUSEID').AsString = 'S' Then
    Begin
       If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
       xSqlUpdate := xSqlUpdate + 'UPROID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('UPROID').AsString)
          + ', UPAGOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('UPAGOID').AsString)
          + ', USEID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('USEID').AsString);
       xfila := 'S';
    End;
    If DM1.cdsCuotas.FieldByName('FLAACTASOAPENOM').AsString = 'S' Then
    Begin
       If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
       xSqlUpdate := xSqlUpdate + 'ASOAPEPAT = TRIM(' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPEPAT').AsString) + ')'
          + ', ASOAPEMAT = TRIM(' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPEMAT').AsString) + ')'
          + ', ASONOMBRES = TRIM(' + QuotedStr(DM1.cdsCuotas.FieldByName('ASONOMBRES').AsString) + ')'
          + ', ASOAPENOM = TRIM(' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString) + ')';
       xfila := 'S';
    End;
    // Inicio: SPP_201301_ASO
    If DM1.cdsCuotas.FieldByName('FLAACTCOLEGIO').AsString = 'S' Then
    Begin
       XSQL := 'SELECT CENEDUID '
          + '  FROM ASO_CEN_EDU '
          + ' WHERE CODMOD =' + QuotedStr(Trim(DM1.cdsCuotas.FieldByName('CODMOD').AsString))
          + '   AND NIVEDU_ID=' + QuotedStr(Trim(DM1.cdsCuotas.FieldByName('NIVEDU_ID').AsString));
       DM1.cdsQry22.Close;
       DM1.cdsQry22.DataRequest(xSql);
       DM1.cdsQry22.Open;
       if DM1.cdsQry22.RecordCount > 0 then
       begin
         If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
         xCENEDUID := DM1.cdsQry22.FieldByName('CENEDUID').AsString;
         xSqlUpdate := xSqlUpdate + 'CENEDUID = ' + QuotedStr(xCENEDUID);
         xfila := 'S';
       end;
    End;
    // Fin: SPP_201301_ASO
    If DM1.cdsCuotas.FieldByName('FLAACTREGPEN').AsString = 'S' Then
    Begin
       If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
       xSqlUpdate := xSqlUpdate + 'REGPENID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('REGPENID').AsString);
       xfila := 'S';
    End;
    // Inicio: SPP_201301_ASO
    If DM1.cdsCuotas.FieldByName('FLAACTDATSOC').AsString = 'S' Then
    Begin
       xfila := 'S';
    End;
    If xfila = 'S' Then
    Begin
       xAsoid := DM1.cdsCuotas.FieldByName('ASOID').AsString;
       DM1.DCOM1.AppServer.SOLStartTransaction;
       Try
          if DM1.cdsCuotas.FieldByName('NUEVO').AsString = 'S' then
          begin
            xTabla := 'ASO_NUE_CLI';
            if DM1.cdsCuotas.FieldByName('ASOID').AsString = '' then
            begin
              //Inicio: SPP_201405_ASO
              //Consulta si es mismo periodo
              xSql := 'select max(a.periodo)||''01'' periodo_ant from apo206 a where a.asocodmod='+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString);
              DM1.cdsTemp.Close;
              DM1.cdsTemp.DataRequest(xSql);
              DM1.cdsTemp.Open;

              if DM1.cdsCuotas.FieldByName('CODPAD').AsString > DM1.cdsTemp.FieldByName('periodo_ant').AsString then
              begin
              //--Inicio: SPP_201406_ASO
              //Obtiene dtpoid
              xSql := ' SELECT DISTINCT A.DPTOID FROM APO101 A WHERE A.UPROID='+QuotedStr(DM1.cdsCuotas.FieldByName('UPROID').AsString)
                       +' AND A.UPAGOID='+QuotedStr(DM1.cdsCuotas.FieldByName('UPAGOID').AsString)+ ' AND A.USEID='+QuotedStr(DM1.cdsCuotas.FieldByName('USEID').AsString);
              DM1.cdsTemp2.Close;
              DM1.cdsTemp2.DataRequest(xSql);
              DM1.cdsTemp2.Open;

               xSolicitud := AsignaSolicitud;
               xAsoid := AsignaAsoId;
               //Se inserta el nuevo registro del docente
               xSql := 'INSERT INTO ASO_NUE_CLI (SOLICITUD, ASOID, ASODNI, EST_AUT_CLI,'
                + ' USUARIO, FREG, HREG,'
                + ' ASOCODMOD, ASONCTA, SITCTA, CARGO, ASOCODPAGO, UPROID, UPAGOID, USEID,'
                + ' ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM,'
                + ' CENEDUID, REGPENID,DPTOID)'
                + ' VALUES (' + QuotedStr(xSolicitud) + ', ' + QuotedStr(xAsoid) + ', ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASODNI').AsString) + ', ''NU'','
                + QuotedStr(DM1.wUsuario) + ', ' + QuotedStr(DateToStr(DM1.FechaSys)) + ', SYSDATE,'
                + QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString) + ', '
                + QuotedStr(DM1.cdsCuotas.FieldByName('ASONCTA').AsString) + ', ''A'','
                + QuotedStr(DM1.cdsCuotas.FieldByName('CARGO').AsString) + ', '
                + QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODPAGO').AsString) + ', '
                + QuotedStr(DM1.cdsCuotas.FieldByName('UPROID').AsString) + ', '
                + QuotedStr(DM1.cdsCuotas.FieldByName('UPAGOID').AsString) + ', '
                + QuotedStr(DM1.cdsCuotas.FieldByName('USEID').AsString) + ', '
                + QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPEPAT').AsString) + ', '
                + QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPEMAT').AsString) + ', '
                + QuotedStr(DM1.cdsCuotas.FieldByName('ASONOMBRES').AsString) + ', '
                + QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString) + ', '
                + QuotedStr(xCENEDUID) + ', '
                + QuotedStr(DM1.cdsCuotas.FieldByName('REGPENID').AsString) +','
                + QuotedStr(DM1.cdsTemp2.FieldByName('DPTOID').AsString)+ ')';
                DM1.DCOM1.AppServer.EjecutaSQL(xSql);
              end;
              //--Fin: SPP_201406_ASO
              //Fin: SPP_201405_ASO
            end
            else
            begin
              //Se actualiza el nuevo registro del docente
              if xSqlUpdate <> '' then
              begin
                //Inicio: SPP_201405_ASO
                //Consulta si es mismo periodo
                xSql := 'select max(a.periodo)||''01'' periodo_ant from apo206 a where a.asocodmod='+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString);
                DM1.cdsTemp.Close;
                DM1.cdsTemp.DataRequest(xSql);
                DM1.cdsTemp.Open;

                if DM1.cdsCuotas.FieldByName('CODPAD').AsString > DM1.cdsTemp.FieldByName('periodo_ant').AsString then
                begin
                 xSqlUpdate := xSqlUpdate + ', FECACTPAD = SYSDATE';
                 xSql := 'UPDATE ' + xTabla + ' SET ' + xSqlUpdate
                   + ' WHERE ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
                 DM1.DCOM1.AppServer.EjecutaSQL(xSql);
                end;
                //Fin: SPP_201405_ASO
              end;
            end;
          end
          else if xSqlUpdate <> '' then
          begin
              //Inicio: SPP_201405_ASO
              //Consulta si es mismo periodo
              xSql := 'select max(a.periodo)||''01'' periodo_ant from apo206 a where a.asocodmod='+QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString);
              DM1.cdsTemp.Close;
              DM1.cdsTemp.DataRequest(xSql);
              DM1.cdsTemp.Open;

              if DM1.cdsCuotas.FieldByName('CODPAD').AsString > DM1.cdsTemp.FieldByName('periodo_ant').AsString then
              begin
               xTabla := 'APO201';
               xCodReg := CodReg;
               Registro_Aud(xAsoId, '0', xCodReg);
               xSqlUpdate := xSqlUpdate + ', FECACTPAD = SYSDATE';
               xSql := 'UPDATE ' + xTabla + ' SET ' + xSqlUpdate
               + ' WHERE ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
               DM1.DCOM1.AppServer.EjecutaSQL(xSql);
               Registro_Aud(xAsoId, '1', xCodReg);
              end;
              //Fin: SPP_201405_ASO
          end;

          If DM1.cdsCuotas.FieldByName('FLAACTASONCTA').AsString = 'S' Then actasoncta;

          If DM1.cdsCuotas.FieldByName('FLAACTDATSOC').AsString = 'S' Then
          begin
            xSql := 'BEGIN DB2ADMIN.SP_ASO_ACT_DATSOCIO_PAD('
              + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString) + ', '
              + DM1.cdsCuotas.FieldByName('CODITEM').AsString + ', '
              + QuotedStr(DM1.wUsuario) + '); END;';
            {xSql := 'INSERT INTO APO206(ASOID, ITEM, ASOCODMOD, AINGFAM, AINGMAG, FREG, HREG, USUARIO, IDE_PAD, CARLAB, TIPSER, SITACT, PERIODO, CODITEMPAD) '
                + 'SELECT '
                +   QuotedStr(xAsoid) + ', (SELECT LPAD(NVL(MAX(ITEM),0)+1,2,''0'') ITEM FROM APO206 A WHERE A.ASOID = H.ASOID),'
                + '    ASOCODMOD, HABER, LIQUIDO, Trunc(SYSDATE), SYSDATE,' + QuotedStr(DM1.wUsuario) + ','
                + '    H.CODPAD,'
                + '    CARLAB, TIPSER, SITACT,'
                + Quotedstr(DM1.cdsPadrones.FieldByName('PERIODO').AsString) + ','
                + '    H.CODITEM'
                + ' FROM ASO_PAD_HIS H '
                + ' WHERE'
                + '  CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)
                + '  AND CODITEM = ' + DM1.cdsCuotas.FieldByName('CODITEM').AsString
                + '  AND NVL(FLAACTDATSOC,''X'') = ''S'' '
                + '  AND (HABER >= 0 OR LIQUIDO >= 0)';}
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          end;
          
          xSql := 'UPDATE ASO_PAD_HIS SET ACTUALIZADO = ''S'' WHERE CODPAD = ' + QuotedStr(DM1.cdsCuotas.FieldByName('CODPAD').AsString)
             + ' AND CODITEM = ' + DM1.cdsCuotas.FieldByName('CODITEM').AsString;
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
          DM1.DCOM1.AppServer.SolCommit;
       Except
          DM1.DCOM1.AppServer.SOLRollBack;
          //ShowMessage('Sql: ' + xSql);
       End;
    End;
    {
    // Actualiza MONTO_BRUTO, MONTO_LIQUIDO.
    // Siempre Inserta a la tabla APO206
    // permite el descargo de Monto Bruto y Neto en 0
    If (DM1.cdsCuotas.FieldByName('HABER').AsInteger >= 0) Or (DM1.cdsCuotas.FieldByName('LIQUIDO').AsInteger >= 0) Then
    Begin
      xSql := 'SELECT LPAD(MAX(ITEM+1),2,''0'') ITEM FROM APO206 WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('ITEM').AsString = '' Then
        xItem := '01'
      Else
        xItem := DM1.cdsQry.FieldByName('ITEM').AsString;
      if DM1.cdsCuotas.FieldByName('ASOID').AsString = '' then
      xSql := 'INSERT INTO APO206(ASOID, ITEM, ASOCODMOD, AINGFAM, AINGMAG, FREG, HREG, USUARIO, IDE_PAD, CARLAB, TIPSER, SITACT, PERIODO )'
            + ' VALUES ('+QuotedStr(xAsoid)+','
                         +QuotedStr(xItem)+','
                         +QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)+','
                         +FloatToStr(DM1.cdsCuotas.FieldByName('HABER').AsFloat)+','
                         +FloatToStr(DM1.cdsCuotas.FieldByName('LIQUIDO').AsFloat)+','
                         +' Trunc(SYSDATE), SYSDATE,'
                         +QuotedStr(DM1.wUsuario)+','
                         +QuotedStr(Copy(DM1.cdsCuotas.FieldByName('CODPAD').AsString,7,2) + DM1.cdsCuotas.FieldByName('CODITEM').AsString)+','
                         +QuotedStr(DM1.cdsCuotas.FieldByName('CARLAB').AsString)+','
                         +QuotedStr(DM1.cdsCuotas.FieldByName('TIPSER').AsString)+','
                         +QuotedStr(DM1.cdsCuotas.FieldByName('SITACT').AsString)+','
                         +Quotedstr(DM1.cdsPadrones.FieldByName('PERIODO').AsString)+')'
      else
      xSql := 'INSERT INTO APO206(ASOID, ITEM, ASOCODMOD, AINGFAM, AINGMAG, FREG, HREG, USUARIO, IDE_PAD, CARLAB, TIPSER, SITACT, PERIODO )'
            + ' VALUES ('+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','
                         +QuotedStr(xItem)+','
                         +QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)+','
                         +FloatToStr(DM1.cdsCuotas.FieldByName('HABER').AsFloat)+','
                         +FloatToStr(DM1.cdsCuotas.FieldByName('LIQUIDO').AsFloat)+','
                         +' Trunc(SYSDATE), SYSDATE,'
                         +QuotedStr(DM1.wUsuario)+','
                         +QuotedStr(Copy(DM1.cdsCuotas.FieldByName('CODPAD').AsString,7,2) + DM1.cdsCuotas.FieldByName('CODITEM').AsString)+','
                         +QuotedStr(DM1.cdsCuotas.FieldByName('CARLAB').AsString)+','
                         +QuotedStr(DM1.cdsCuotas.FieldByName('TIPSER').AsString)+','
                         +QuotedStr(DM1.cdsCuotas.FieldByName('SITACT').AsString)+','
                         +Quotedstr(DM1.cdsPadrones.FieldByName('PERIODO').AsString)+')';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    End;}
    // Fin: SPP_201301_ASO

    DM1.cdsCuotas.Next;
  End;
  DM1.cdsCuotas.Close;
  DM1.cdsQry22.Close;
  
  Screen.Cursor := crDefault;
  
  MessageDlg('El Maestro de asociados fue actualizado correctamente', mtInformation, [mbOk], 0);
 //Inicio: SPP_201405_ASO
  btnMostrarClick(nil);
 //Fin: SPP_201405_ASO
end;

Procedure TFPadrones.Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
Var
   xSQL: String;
Begin
   // HPP_200906_ASO
   If Length(Trim(xCodReg)) = 0 Then
   Begin
      MessageDlg(' No Se Grabo Log De USUARIO Informe al Equipo De Sistemas ', mtError, [mbOk], 0);
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   xSql := 'INSERT INTO APO201_LOG(ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID,  ASOFACT,  ASOTIPID,'
      + ' VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL,'
      + ' BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID,'
      + ' CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL,'
      + ' ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID,'
      + ' PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO,'
      + ' GENCODBAR, ENVAUTDES, CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, ANOENV, ENVIO, USUARIO_AUD, REGISTRO_AUD,'
      + ' SECUENCIA, CODREG, MODULOID, CODOTRDOCIDE, NUMOTRDOCIDE,CENEDUID)'
      + ' SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID,  ASOFACT,  ASOTIPID,'
      + ' VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL,'
      + ' BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID,'
      + ' CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL,'
      + ' ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID,'
      + ' PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO,'
      + ' GENCODBAR, ENVAUTDES, CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, ANOENV, ENVIO,'
      + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(xSecuencia) + ',' + QuotedStr(xCodReg) + ',''ASO'', CODOTRDOCIDE, NUMOTRDOCIDE,CENEDUID FROM APO201'
      + ' WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   Screen.Cursor := crDefault;
End;

Procedure TFPadrones.actasoncta;
Var
   xMaxItem, xSql: String;
Begin
  // actualiza asoncta
   xSql := 'SELECT * FROM APO201 WHERE ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSql);
   DM1.cdsAso.Open;
   xSql := 'UPDATE APO207 SET SITCTA = ''C'' WHERE ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
   xSql := 'SELECT LPAD(NVL(MAX(ASOITEM)+1,0),3,''0'') ITEM FROM APO207 WHERE ASOID =' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('ITEM').AsString = '000' Then
      xMaxItem := '001'
   Else
      xMaxItem := DM1.cdsQry.FieldByName('ITEM').AsString;
   xSql := 'INSERT INTO APO207 (ASOID, ASOCODMOD, ASOCODAUX,  ASOAPENOM, ASONCTA, ASOITEM, SITCTA, BANCOID, USUARIO, FREG, HREG, MOTCTA)'
      + ' VALUES (' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
      + ',' + QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString)
      + ',' + QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString)
      + ',' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString)
      + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('ASONCTA').AsString)
      + ',' + QuotedStr(xMaxItem)
      + ',''A'',''04'''
      + ',' + QuotedStr(DM1.wUsuario)
      + ', TO_DATE(SYSDATE), SYSDATE'
      + ',' + QuotedStr('ACTUALIZACION SEGUN PADRÓN ENVIADO POR LA UGEL') + ')';
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
End;

Function TFPadrones.CodReg: String;
Var
   xSQL, xResAbn: String;
   xCorAbn: Integer;
Begin
   DM1.cdsListaCred.Close;
   xSQL := 'SELECT CREAREA,CORREANO,TIPO,ASOID FROM CRE206 WHERE CORREANO=' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ' AND CREAREA=''ASO'' AND TIPO=''1''';
   DM1.cdsListaCred.DataRequest(xSQL);
   DM1.cdsListaCred.Open;
   If DM1.cdsListaCred.RecordCount = 1 Then
   Begin
      xCorAbn := StrToInt(DM1.cdsListaCred.fieldbyname('ASOID').AsString) + 1;
      xResAbn := Format('%.10d', [xCorAbn]);
      // Inicio: SPP_201307_ASO
      xSQL := 'UPDATE CRE206 SET ASOID = ' + QuotedStr(xResAbn)
        + ' WHERE CORREANO = ' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ' AND CREAREA = ''ASO'' AND TIPO = ''1''';
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      {DM1.cdsListaCred.Edit;
      DM1.cdsListaCred.fieldbyname('ASOID').AsString := xResAbn;
      DM1.cdsListaCred.ApplyUpdates(0);}
      // Fin: SPP_201307_ASO
      Result := xResAbn;
   End;
   DM1.cdsListaCred.Close;
End;

procedure TFPadrones.btnEstadisticasClick(Sender: TObject);
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FPadronEstadisticas := TFPadronEstadisticas.Create(Self);
    FPadronEstadisticas.CODPAD := DM1.cdsPadrones.FieldByName('CODPAD').AsString;
    FPadronEstadisticas.ShowModal;
  Finally
    FPadronEstadisticas.Free;
  End;
end;

procedure TFPadrones.btnIdentificarClick(Sender: TObject);
var
  xSql: string;
begin
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;
  If DM1.cdsPadrones.FieldByName('CODEST').AsString = 'C' Then
  Begin
    MessageDlg('El padrón ya fue Cerrado', mtInformation, [mbOk], 0);
    Exit;
  End;
  
  If MessageDlg('¿Está seguro de identificar los registros del padrón que serán marcados para ser actualizados?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then Exit;
  
  Screen.Cursor := crHourGlass;
  
  xSql := 'BEGIN'
    + '    DB2ADMIN.SP_ASO_IDENTIFICAR_PADRON(' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString) + '); '
    + 'END;';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  Screen.Cursor := crDefault;
  
  MessageDlg('Se identificaron correctamente los datos a actualizar', mtInformation, [mbOk], 0);
end;

FUNCTION TFPadrones.AsignaSolicitud: STRING;
VAR
   xSQL: STRING;
BEGIN
   xSQL := 'SELECT MAX(SOLICITUD) SOLICITUD FROM ASO_NUE_CLI';
   DM1.cdsAsoX.Close;
   DM1.cdsAsoX.DataRequest(xSQL);
   DM1.cdsAsoX.Open;
   IF Length(Trim(DM1.cdsAsoX.FieldByName('SOLICITUD').AsString)) = 0 THEN
   BEGIN
      Result := '0000000001';
   END
   ELSE
   BEGIN
      Result := Format('%.10d', [DM1.cdsAsoX.FieldByName('SOLICITUD').AsInteger + 1]);
   END;
   DM1.cdsAsoX.Close;
END;

FUNCTION TFPadrones.AsignaAsoid: STRING;
VAR
   xSQL: STRING;
BEGIN
   xSQL := 'select max(asoid) ASOID from ('
      + 'select max(asoid) asoid from apo201 '
      + 'union all '
      + 'select max(asoid) asoid from aso_nue_cli) a';
   DM1.cdsAsoX.Close;
   DM1.cdsAsoX.DataRequest(xSQL);
   DM1.cdsAsoX.Open;
   IF Length(Trim(DM1.cdsAsoX.FieldByName('ASOID').AsString)) = 0 THEN
   BEGIN
      Result := '0000000001';
   END
   ELSE
   BEGIN
      Result := Format('%.10d', [DM1.cdsAsoX.FieldByName('ASOID').AsInteger + 1]);
   END;

   DM1.cdsAsoX.Close;
END;

// Inicio: SPP_201307_ASO
procedure TFPadrones.btnReabrirClick(Sender: TObject);
var
  xSql: string;
begin
  //----------------------------------------------------------------
  //ESTA OPCION NO SE ENCUENTRA EN PRODUCCION
  //FUE CREADA SOLO PARA FINES DE PRUEBAS EN TIEMPO DE DESARROLLO!!!
  //----------------------------------------------------------------
  Screen.Cursor := crHourGlass;
  
  if DM1.cdsPadrones.RecordCount = 0 then
  begin
    screen.Cursor := crDefault;
    MessageDlg('No se encontraron padrones', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  if DM1.cdsPadrones.FieldByName('CODEST').AsString <> 'C' then
  begin
    screen.Cursor := crDefault;
    MessageDlg('El padrón debe estar Cerrado para poder Reabrirlo', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  xSql := 'SELECT CODPAD FROM ASO_PAD_CAB '
    + ' WHERE CODPAD <> ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)
    + '   AND PERIODO >= ' + QuotedStr(DM1.cdsPadrones.FieldByName('PERIODO').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  
  if DM1.cdsQry.RecordCount > 0 then
  begin
    screen.Cursor := crDefault;
    MessageDlg('Existen padrones descargados que son mas recientes, solo puede reabrir el último padrón trabajado', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  MessageDlg('Al reabrir el padrón retornará al estado En Proceso y todos los registros mantendrán su estado y datos modificados.', mtInformation, [mbOk], 0);
  If MessageDlg('¿Está seguro de reabrir el padrón?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then
  begin
    screen.Cursor := crDefault;
    Exit;
  end;
  
  Try
    xSql := 'UPDATE ASO_PAD_CAB '
      + ' SET CODEST = ''P'', FECCIE = NULL, USUCIE = NULL'
      + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   Except
      screen.Cursor := crDefault;
      ShowMessage('No se pudo reabrir el padrón, por favor intente nuevamente');
      exit;
   End;
   screen.Cursor := crDefault;
   ShowMessage('Operación concluida exitosamente');
end;
// Fin: SPP_201307_ASO

// Inicio HPC_201505_ASO
procedure TFPadrones.btnProgramarClick(Sender: TObject);
var xSQL:String;
begin

    If DM1.cdsPadrones.FieldByName('CODEST').AsString <> 'P' Then
    Begin
      MessageDlg('El Padrón No Se Encuentra En Proceso De Actualización', mtInformation, [mbOk], 0);
      Exit;
    End;

    xSQL:='SELECT CODPAD,FECACTPAD,USUACTPAD,ACTREGMUL,ACTREGUNI, '+
          'ACTREGGEN,ESTACTREG,USUANUACT,FECANUACT,FECINIACT, '+
          'FECFINACT,FECHORREG FROM ASO_PRO_ACT_PAD ORDER BY CODPAD,FECHORREG DESC';
    DM1.cdsTipSer.Close;
    DM1.cdsTipSer.DataRequest(xSQL);
    DM1.cdsTipSer.Open;
    Try
      fProgAct:= TfProgAct.create(self);
      fProgAct.Showmodal;
    Finally
      fProgAct.free;
    End;
end;
// Fin HPC_201505_ASO

end.

