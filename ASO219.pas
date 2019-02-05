// Inicio Uso Estándares:	01/08/2011
// Unidad		            :	ASO219.pas
// Formulario		        :	FPadronRegistro
// Fecha de Creación	  :	28/02/2012
// Autor			          :	Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Comparar los datos originales y modificados de un registro del padrón

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO    : 28/02/2012  DFERNANDEZ Se crea el formulario
// HPC_201211_ASO    : Se agregan las columnas que muestran los descuentos desagregados
// SPP_201301_ASO    : El pase a producción se realiza sobre la base del HPC_201301_ASO
// HPC_201309_ASO    : La tabla ASO_PAD_DET_HIS se usa para un padrón cerrado, sino ASO_PAD_DET
// SPP_201310_ASO    : Se realiza el pase a producción a partir del HPC_201309_ASO
// HPC_201408_ASO    : Levantar el error al ir al maestro de asociados. 
// SPP_201409_ASO    : Se realiza el pase a producción a partir del HPC_201408_ASO

unit ASO219;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, wwdblook, Wwdbdlg, wwdbedit;

type
  TFPadronRegistro = class(TForm)
    grpDatosOriginales: TGroupBox;
    grpDatosModificados: TGroupBox;
    Label1: TLabel;
    edtCODITEM1: TwwDBEdit;
    btnSalir: TBitBtn;
    Label2: TLabel;
    edtCODITEM2: TwwDBEdit;
    Label3: TLabel;
    edtASOCODMOD1: TwwDBEdit;
    edtASOCODMOD2: TwwDBEdit;
    Label4: TLabel;
    btnModificar: TBitBtn;
    btnGrabar: TBitBtn;
    Label5: TLabel;
    edtSECUENCIAL1: TwwDBEdit;
    edtASODNI1: TwwDBEdit;
    Label6: TLabel;
    edtPATERNO1: TwwDBEdit;
    edtMATERNO1: TwwDBEdit;
    edtNOMBRES1: TwwDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtPLANILLA1: TwwDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    edtFISCAL1: TwwDBEdit;
    Label12: TLabel;
    edtSITUACION1: TwwDBEdit;
    Label13: TLabel;
    edtCOD_EMPRESA1: TwwDBEdit;
    edtEMPRESA1: TwwDBEdit;
    Label14: TLabel;
    edtCOD_OFICINA1: TwwDBEdit;
    edtOFICINA1: TwwDBEdit;
    Label15: TLabel;
    edtCOD_SERVIDOR1: TwwDBEdit;
    edtDESC_SERVIDOR1: TwwDBEdit;
    Label16: TLabel;
    edtCOD_IE1: TwwDBEdit;
    edtNOMBRE_IE1: TwwDBEdit;
    Label17: TLabel;
    edtCOD_CARGO1: TwwDBEdit;
    edtDES_CARGO1: TwwDBEdit;
    Label18: TLabel;
    edtCOD_REGLAB1: TwwDBEdit;
    edtREGLAB1: TwwDBEdit;
    Label19: TLabel;
    edtCTA_AHORROS1: TwwDBEdit;
    Label20: TLabel;
    edtHABER1: TwwDBEdit;
    edtDESCUENTO1: TwwDBEdit;
    edtLIQUIDO1: TwwDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    edtSECUENCIAL2: TwwDBEdit;
    edtASODNI2: TwwDBEdit;
    edtASOAPEPAT2: TwwDBEdit;
    edtASOAPEMAT2: TwwDBEdit;
    edtASONOMBRES2: TwwDBEdit;
    edtFISCAL2: TwwDBEdit;
    edtSITUACION2: TwwDBEdit;
    edtCOD_EMPRESA2: TwwDBEdit;
    edtEMPRESA2: TwwDBEdit;
    edtUSENOM2: TwwDBEdit;
    edtDESC_SERVIDOR2: TwwDBEdit;
    edtNOMBRE_IE2: TwwDBEdit;
    edtDES_CARGO2: TwwDBEdit;
    edtCOD_REGLAB2: TwwDBEdit;
    edtREGLAB2: TwwDBEdit;
    edtASONCTA2: TwwDBEdit;
    edtHABER2: TwwDBEdit;
    edtDESCUENTO2: TwwDBEdit;
    edtLIQUIDO2: TwwDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    edtDESPLANILLA2: TwwDBEdit;
    edtDESFISCAL2: TwwDBEdit;
    edtDESSITUACION2: TwwDBEdit;
    dblcdPLANILLA2: TwwDBLookupComboDlg;
    dblcdREGPENID2: TwwDBLookupComboDlg;
    dblcdSITACT2: TwwDBLookupComboDlg;
    edtASOTIPID2: TwwDBEdit;
    dblcdUSEID2: TwwDBLookupComboDlg;
    edtCARGO2: TwwDBEdit;
    dblcdTIPSER2: TwwDBLookupComboDlg;
    dblcdCARLAB2: TwwDBLookupComboDlg;
    edtASOCODPAGO2: TwwDBEdit;
    edtUPROID2: TwwDBEdit;
    edtUPAGOID2: TwwDBEdit;
    edtCODMOD2: TwwDBEdit;
    edtNIVEDU_ID2: TwwDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    edtEstado2: TwwDBEdit;
    dblcdCODEST2: TwwDBLookupComboDlg;
    btnAceptar: TBitBtn;
    btnEliminar: TBitBtn;
    btnReabrir: TBitBtn;
    btnRestaurar: TBitBtn;
    Label45: TLabel;
    Label46: TLabel;
    edtACTUALIZA: TwwDBEdit;
    SpdBActMas: TSpeedButton;
    edtASOID2: TwwDBEdit;
    Label47: TLabel;
    edtNUEVO: TwwDBEdit;
    btnDetDcto: TBitBtn;
    procedure btnSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnModificarClick(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure dblcdPLANILLA2Change(Sender: TObject);
    procedure dblcdREGPENID2Change(Sender: TObject);
    procedure dblcdSITACT2Change(Sender: TObject);
    procedure dblcdTIPSER2Change(Sender: TObject);
    procedure dblcdCARLAB2Change(Sender: TObject);
    procedure edtASOCODPAGO2Change(Sender: TObject);
    procedure dblcdUSEID2Change(Sender: TObject);
    procedure edtCOD_EMPRESA2Change(Sender: TObject);
    procedure dblcdCODEST2Change(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure edtSECUENCIAL2Change(Sender: TObject);
    procedure btnReabrirClick(Sender: TObject);
    procedure btnRestaurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpdBActMasClick(Sender: TObject);
    procedure btnDetDctoClick(Sender: TObject);
  private
    { Private declarations }
    procedure ObtenerUProID;
    procedure CargarRegistroModificado;
  public
    { Public declarations }
    CODPAD: string;
    CODITEM: integer;
    MODIFICADO: boolean;
    sTablaPadron: string; //SPP_201310_ASO
  end;

var
  FPadronRegistro: TFPadronRegistro;

implementation

// Inicio: SPP_201301_ASO
uses ASODM, DB, ASO260M, ASO232;
// Fin: SPP_201301_ASO

{$R *.dfm}


procedure TFPadronRegistro.FormCreate(Sender: TObject);
begin
  MODIFICADO := false;
end;

procedure TFPadronRegistro.FormActivate(Sender: TObject);
var
  xSql: string;
begin
  // Inicio: SPP_201310_ASO
  xSql := 'SELECT CODEST FROM ASO_PAD_CAB WHERE CODPAD = ' + QuotedStr(CODPAD);
  DM1.cdsEstCiv.Close;
  DM1.cdsEstCiv.DataRequest(xSql);
  DM1.cdsEstCiv.Open;
  if DM1.cdsPadrones.FieldByName('CODEST').AsString = 'D' then
    sTablaPadron := 'ASO_PAD_DET'
  else if DM1.cdsPadrones.FieldByName('CODEST').AsString = 'P' then
    sTablaPadron := 'ASO_PAD_DET'
  else
    sTablaPadron := 'ASO_PAD_DET_HIS';
  // Fin: SPP_201310_ASO
  xSql := 'SELECT CODEST, DESEST FROM ASO_PAD_EST_TRAB_MAE ORDER BY CODEST';
  DM1.cdsEstCiv.Close;
  DM1.cdsEstCiv.DataRequest(xSql);
  DM1.cdsEstCiv.Open;
  dblcdCODEST2.Selected.Clear;
  dblcdCODEST2.Selected.Add('CODEST'#9'1'#9'Código'#9#9);
  dblcdCODEST2.Selected.Add('DESEST'#9'20'#9'Descripción'#9#9);
  
  xSql := 'SELECT 1 PLANILLA, ''ACTIVOS'' DESPLANILLA FROM DUAL UNION ALL '
    + 'SELECT 2 PLANILLA, ''CESANTES'' DESPLANILLA FROM DUAL';
  DM1.cdsPlanilla.Close;
  DM1.cdsPlanilla.DataRequest(xSql);
  DM1.cdsPlanilla.Open;
  dblcdPLANILLA2.Selected.Clear;
  dblcdPLANILLA2.Selected.Add('PLANILLA'#9'3'#9'Código'#9#9);
  dblcdPLANILLA2.Selected.Add('DESPLANILLA'#9'10'#9'Descripción'#9#9);
  
  xSql := 'SELECT REGPENID, REGPENDES FROM APO105 ORDER BY REGPENID';
  DM1.cdsRegPen.Close;
  DM1.cdsRegPen.DataRequest(xSql);
  DM1.cdsRegPen.Open;
  dblcdREGPENID2.Selected.Clear;
  dblcdREGPENID2.Selected.Add('REGPENID'#9'3'#9'Código'#9#9);
  dblcdREGPENID2.Selected.Add('REGPENDES'#9'10'#9'Descripción'#9#9);
  
  xSql := 'SELECT COD_SIT, DES_SIT FROM ASO_PAD_SIT_ASO WHERE COD_MAE = ''02'' AND COD_SIT IS NOT NULL ORDER BY COD_SIT';
  DM1.cdsSitLab.Close;
  DM1.cdsSitLab.DataRequest(xSql);
  DM1.cdsSitLab.Open;
  dblcdSITACT2.Selected.Clear;
  dblcdSITACT2.Selected.Add('COD_SIT'#9'3'#9'Código'#9#9);
  dblcdSITACT2.Selected.Add('DES_SIT'#9'10'#9'Descripción'#9#9);
  
  xSql := 'SELECT USEID, USENOM FROM APO101 ORDER BY USEID';
  DM1.cdsUgelPadron.Close;
  DM1.cdsUgelPadron.DataRequest(xSql);
  DM1.cdsUgelPadron.Open;
  dblcdUSEID2.Selected.Clear;
  dblcdUSEID2.Selected.Add('USEID'#9'3'#9'Código'#9#9);
  dblcdUSEID2.Selected.Add('USENOM'#9'10'#9'Descripción'#9#9);

  xSql := 'SELECT COD_SIT, DES_SIT FROM ASO_PAD_SIT_ASO WHERE COD_MAE = ''01'' AND COD_SIT IS NOT NULL';
  DM1.cdsTipSer.Close;
  DM1.cdsTipSer.DataRequest(xSql);
  DM1.cdsTipSer.Open;
  dblcdTIPSER2.Selected.Clear;
  dblcdTIPSER2.Selected.Add('COD_SIT'#9'2'#9'Código'#9#9);
  dblcdTIPSER2.Selected.Add('DES_SIT'#9'10'#9'Descripción'#9#9);
  
  xSql := 'SELECT COD_SIT, DES_SIT FROM ASO_PAD_SIT_ASO WHERE COD_MAE = ''03'' AND COD_SIT IS NOT NULL';
  DM1.cdsCarLab.Close;
  DM1.cdsCarLab.DataRequest(xSql);
  DM1.cdsCarLab.Open;
  dblcdCARLAB2.Selected.Clear;
  dblcdCARLAB2.Selected.Add('COD_SIT'#9'4'#9'Código'#9#9);
  dblcdCARLAB2.Selected.Add('DES_SIT'#9'10'#9'Descripción'#9#9);

  // Inicio: SPP_201301_ASO
  xSql := 'SELECT'
    + ' CODPAD,'
    + ' CODITEM,'
    + ' MODULAR,'
    + ' SECUENCIAL,'
    + ' DNI,'
    + ' PATERNO,'
    + ' MATERNO,'
    + ' NOMBRES,'
    + ' PLANILLA,'
    + ' FISCAL,'
    + ' SITUACION,'
    + ' COD_EMPRESA,'
    + ' EMPRESA,'
    + ' COD_OFICINA,'
    + ' OFICINA,'
    + ' COD_SERVIDOR,'
    + ' DESC_SERVIDOR,'
    + ' COD_IE,'
    + ' NOMBRE_IE,'
    + ' COD_CARGO,'
    + ' DES_CARGO,'
    + ' COD_REGLAB,'
    + ' REGLAB,'
    + ' CTA_AHORROS,'
    + ' HABER,'
    + ' DESCUENTO,'
    + ' LIQUIDO,'
    + ' DSCTO01, MTO01,'
    + ' DSCTO02, MTO02, DSCTO03,'
    + ' MTO03, DSCTO04, MTO04,'
    + ' DSCTO05, MTO05, DSCTO06,'
    + ' MTO06, DSCTO07, MTO07,'
    + ' DSCTO08, MTO08, DSCTO09,'
    + ' MTO09, DSCTO10, MTO10,'
    + ' DSCTO11, MTO11, DSCTO12,'
    + ' MTO12, DSCTO13, MTO13,'
    + ' DSCTO14, MTO14, DSCTO15,'
    + ' MTO15, DSCTO16, MTO16,'
    + ' DSCTO17, MTO17, DSCTO18,'
    + ' MTO18, DSCTO19, MTO19,'
    + ' DSCTO20, MTO20'
    + ' FROM ASO_PAD_DES_HIS'
    + ' WHERE CODPAD = ' + QuotedStr(CODPAD) + ' AND CODITEM = ' + IntToStr(CODITEM);
  // Fin: SPP_201301_ASO
  DM1.cdsPadron1.Close;
  DM1.cdsPadron1.DataRequest(xSql);
  DM1.cdsPadron1.Open;

  Self.Caption := 'Comparativo Registro Original vs Modificado, Padrón ' + CODPAD;
  CargarRegistroModificado;
end;

procedure TFPadronRegistro.CargarRegistroModificado;
var
  xSql: string;
begin
  // Inicio: SPP_201310_ASO

  // Inicio: SPP_201301_ASO
  xSql := 'SELECT'
    + ' CODPAD,'
    + ' CODITEM,'
    + ' CODEST,'
    + ' ASOID,'
    + ' ASOCODMOD,'
    + ' SECUENCIAL,'
    + ' ASODNI,'
    + ' TIPDNI,'
    + ' ASOAPEPAT,'
    + ' ASOAPEMAT,'
    + ' ASONOMBRES,'
    + ' PLANILLA,'
    + ' FISCAL,'
    + ' SITUACION,'
    + ' COD_EMPRESA,'
    + ' EMPRESA,'
    + ' USEID,'
    + ' USENOM,'
    + ' TIPSER,'
    + ' DESC_SERVIDOR,'
    + ' ASOCODPAGO,'
    + ' NOMBRE_IE,'
    + ' CARLAB,'
    + ' DES_CARGO,'
    + ' COD_REGLAB,'
    + ' REGLAB,'
    + ' ASONCTA,'
    + ' HABER,'
    + ' DESCUENTO,'
    + ' LIQUIDO,'
    + ' CARGO,'
    + ' ASOTIPID,'
    + ' REGPENID,'
    + ' SITACT,'
    + ' UPROID,'
    + ' UPAGOID,'
    + ' CODMOD,'
    + ' NIVEDU_ID,'
    + ' FECREG,'
    + ' USUREG,'
    + ' FECMOD,'
    + ' USUMOD,'
    + ' ASOAPENOM,'
    + ' CASE ACTUALIZA WHEN ''S'' THEN ''SI'' WHEN ''N'' THEN ''NO'' ELSE '''' END ACTUALIZADES,'
    + ' NUEVO,'
    + ' CASE NUEVO WHEN ''S'' THEN ''SI'' WHEN ''N'' THEN ''NO'' ELSE '''' END NUEVODES,'
    + ' DSCTO01, MTO01,'
    + ' DSCTO02, MTO02, DSCTO03,'
    + ' MTO03, DSCTO04, MTO04,'
    + ' DSCTO05, MTO05, DSCTO06,'
    + ' MTO06, DSCTO07, MTO07,'
    + ' DSCTO08, MTO08, DSCTO09,'
    + ' MTO09, DSCTO10, MTO10,'
    + ' DSCTO11, MTO11, DSCTO12,'
    + ' MTO12, DSCTO13, MTO13,'
    + ' DSCTO14, MTO14, DSCTO15,'
    + ' MTO15, DSCTO16, MTO16,'
    + ' DSCTO17, MTO17, DSCTO18,'
    + ' MTO18, DSCTO19, MTO19,'
    + ' DSCTO20, MTO20'
    + ' FROM ' + sTablaPadron
    + ' WHERE CODPAD = ' + QuotedStr(CODPAD) + ' AND CODITEM = ' + IntToStr(CODITEM);
  // Fin: SPP_201301_ASO
  // Fin: SPP_201310_ASO
  DM1.cdsPadron2.Close;
  DM1.cdsPadron2.DataRequest(xSql);
  DM1.cdsPadron2.Open;
  
  ObtenerUProID;
  
  //Los botones se activan dependiendo del estado del padrón y el registro
  if DM1.cdsPadrones.FieldByName('CODEST').AsString = 'D' then
  begin //padron descargado
    grpDatosModificados.Enabled := false;
    btnModificar.Enabled := true;
    btnGrabar.Enabled := false;
    btnAceptar.Enabled := false;
    btnEliminar.Enabled := true;
    btnReabrir.Enabled := false;
    btnRestaurar.Enabled := true;
  end
  else if DM1.cdsPadrones.FieldByName('CODEST').AsString = 'P' then
  begin //padron en proceso
    if DM1.cdsPadron2.FieldByName('CODEST').AsString = 'P' then
    begin //registro pendiente
      grpDatosModificados.Enabled := false;
      btnModificar.Enabled := true;
      btnGrabar.Enabled := false;
      btnAceptar.Enabled := true;
      btnEliminar.Enabled := true;
      btnReabrir.Enabled := false;
      btnRestaurar.Enabled := true;
    end
    else //registro aceptado o eliminado
    begin
      grpDatosModificados.Enabled := false;
      btnModificar.Enabled := false;
      btnGrabar.Enabled := false;
      btnAceptar.Enabled := false;
      btnEliminar.Enabled := false;
      btnReabrir.Enabled := true;
      btnRestaurar.Enabled := false;
    end;
  end
  else if DM1.cdsPadrones.FieldByName('CODEST').AsString = 'C' then
  begin //padron cerrado
    grpDatosModificados.Enabled := false;
    btnModificar.Enabled := false;
    btnGrabar.Enabled := false;
    btnAceptar.Enabled := false;
    btnEliminar.Enabled := false;
    btnReabrir.Enabled := false;
    btnRestaurar.Enabled := false;
  end;
end;

procedure TFPadronRegistro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsEstCiv.Close;
  DM1.cdsPlanilla.Close;
  DM1.cdsRegPen.Close;
  DM1.cdsSitLab.Close;
  DM1.cdsUgelPadron.Close;
  DM1.cdsTipSer.Close;
  DM1.cdsCEdu.Close;
  DM1.cdsPadron1.Close;
  DM1.cdsPadron2.Close;
  DM1.cdsQry.Close;
end;

procedure TFPadronRegistro.btnModificarClick(Sender: TObject);
begin
  grpDatosModificados.Enabled := true;
  //Se puede modificar el número de DNI si el padrón está recien descargado
  if DM1.cdsPadrones.FieldByName('CODEST').AsString = 'D' then //padrón descargado
    edtASODNI2.ReadOnly := false
  else
    edtASODNI2.ReadOnly := true;
  btnModificar.Enabled := false;
  btnGrabar.Enabled := true;
  edtSECUENCIAL2.SetFocus;
end;

procedure TFPadronRegistro.btnGrabarClick(Sender: TObject);
var
  xSql: string;
  xTipoDni: string;
begin
  if length(edtASOCODMOD2.Text) = 0 then
  begin
    edtASOCODMOD2.SetFocus;
    MessageDlg('Ingrese el código modular', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtCARGO2.Text = '' then
  begin
    edtSECUENCIAL2.SetFocus;
    MessageDlg('Ingrese el código secuencial o de cargo', mtInformation, [mbOk], 0);
    Exit;
  end;
  if length(edtASODNI2.Text) = 0 then
  begin
    edtASODNI2.SetFocus;
    MessageDlg('Ingrese el número de DNI', mtInformation, [mbOk], 0);
    Exit;
  end;
  if length(edtASOAPEPAT2.Text) = 0 then
  begin
    edtASOAPEPAT2.SetFocus;
    MessageDlg('Ingrese el apellido paterno', mtInformation, [mbOk], 0);
    Exit;
  end;
  if length(edtASOAPEMAT2.Text) = 0 then
  begin
    edtASOAPEMAT2.SetFocus;
    MessageDlg('Ingrese el apellido materno', mtInformation, [mbOk], 0);
    Exit;
  end;
  if length(edtASONOMBRES2.Text) = 0 then
  begin
    edtASONOMBRES2.SetFocus;
    MessageDlg('Ingrese los nombres', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtDESPLANILLA2.Text = '' then
  begin
    dblcdPLANILLA2.SetFocus;
    MessageDlg('Seleccione la planilla', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtDESSITUACION2.Text = '' then
  begin
    dblcdSITACT2.SetFocus;
    MessageDlg('Seleccione la situación laboral', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtCOD_EMPRESA2.Text = '' then
  begin
    edtCOD_EMPRESA2.SetFocus;
    MessageDlg('Ingrese el código de región', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtUSENOM2.Text = '' then
  begin
    dblcdUSEID2.SetFocus;
    MessageDlg('Seleccione la Ugel', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtDESC_SERVIDOR2.Text = '' then
  begin
    dblcdTIPSER2.SetFocus;
    MessageDlg('Seleccione el tipo de servidor', mtInformation, [mbOk], 0);
    Exit;
  end;
  if (edtASOCODPAGO2.Text = '')
    and ((edtASOTIPID2.Text = 'DO') or (edtASOTIPID2.Text = 'CO')) then
  begin
    edtASOCODPAGO2.SetFocus;
    MessageDlg('Ingrese el código de la institución educativa', mtInformation, [mbOk], 0);
    Exit;
  end;
  if (length(edtASONCTA2.Text) <> 0) and (length(edtASONCTA2.Text) <> 10) then
  begin
    edtASONCTA2.SetFocus;
    MessageDlg('El número de cuenta es opcional, si es ingresado debe tener 10 dígitos', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  //despues de modificar el DNI se recalcula el valor del campo TIPDNI
  xTipoDni := '';
  xSql := 'SELECT P.CODPAD, P.CODITEM, P.TIPDNI'
    + ' FROM ASO_PAD_DET P'
    + ' WHERE'
    + '     P.CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
    + '     AND P.ASODNI = ' + QuotedStr(Trim(edtASODNI2.Text))
    + '     AND P.CODITEM <> ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString;
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  if DM1.cdsQry.RecordCount = 0 then
    xTipoDni := 'U'
  else if DM1.cdsQry.RecordCount = 1 then
    xTipoDni := 'D'
  else if DM1.cdsQry.RecordCount >= 2 then
    xTipoDni := 'M';
  DM1.cdsQry.Close;
  
  If MessageDlg('¿Está seguro de grabar los datos del padrón?', mtConfirmation,[mbYes,mbNo],0) <> mrYes then
  begin
    Exit;
  end;
  
  DM1.DCOM1.AppServer.SOLStartTransaction;
  try
    xSql := 'UPDATE ASO_PAD_DET'
      + ' SET TIPDNI = ' + QuotedStr(xTipoDni)
      + ' WHERE'
      + '     CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
      + '     AND ASODNI = ' + QuotedStr(Trim(edtASODNI2.Text))
      + '     AND CODITEM <> ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString;
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    
    xSql := 'UPDATE ASO_PAD_DET'
      + ' SET'
      + ' SECUENCIAL = ' + edtSECUENCIAL2.Text + ','
      + ' ASODNI = ' + QuotedStr(edtASODNI2.Text) + ','
      + ' ASOAPEPAT = ' + QuotedStr(edtASOAPEPAT2.Text) + ','
      + ' ASOAPEMAT = ' + QuotedStr(edtASOAPEMAT2.Text) + ','
      + ' ASONOMBRES = ' + QuotedStr(edtASONOMBRES2.Text) + ','
      + ' PLANILLA = ' + dblcdPLANILLA2.Text + ','
      + ' FISCAL = ' + edtFISCAL2.Text + ','
      + ' SITUACION = ' + edtSITUACION2.Text + ','
      + ' COD_EMPRESA = ' + QuotedStr(edtCOD_EMPRESA2.Text) + ','
      + ' EMPRESA = ' + QuotedStr(edtEMPRESA2.Text) + ','
      + ' USEID = ' + QuotedStr(dblcdUSEID2.Text) + ','
      + ' USENOM = ' + QuotedStr(edtUSENOM2.Text) + ','
      + ' TIPSER = ' + QuotedStr(dblcdTIPSER2.Text) + ','
      + ' DESC_SERVIDOR = ' + QuotedStr(edtDESC_SERVIDOR2.Text) + ','
      + ' ASOCODPAGO = ' + QuotedStr(edtASOCODPAGO2.Text) + ','
      + ' NOMBRE_IE = ' + QuotedStr(edtNOMBRE_IE2.Text) + ','
      + ' CARLAB = ' + QuotedStr(dblcdCARLAB2.Text) + ','
      + ' DES_CARGO = ' + QuotedStr(edtDES_CARGO2.Text) + ','
      + ' COD_REGLAB = ' + QuotedStr(edtCOD_REGLAB2.Text) + ','
      + ' REGLAB = ' + QuotedStr(edtREGLAB2.Text) + ','
      + ' ASONCTA = ' + QuotedStr(edtASONCTA2.Text) + ','
      + ' CARGO = ' + QuotedStr(edtCARGO2.Text) + ','
      + ' ASOTIPID = ' + QuotedStr(edtASOTIPID2.Text) + ','
      + ' REGPENID = ' + QuotedStr(dblcdREGPENID2.Text) + ','
      + ' SITACT = ' + QuotedStr(dblcdSITACT2.Text) + ','
      + ' UPROID = ' + QuotedStr(edtUPROID2.Text) + ','
      + ' UPAGOID = ' + QuotedStr(edtUPAGOID2.Text) + ','
      + ' CODMOD = ' + QuotedStr(edtCODMOD2.Text) + ','
      + ' NIVEDU_ID = ' + QuotedStr(edtNIVEDU_ID2.Text) + ','
      + ' FECMOD = SYSDATE,'
      + ' USUMOD = ' + QuotedStr(DM1.wUsuario) + ','
      + ' ASOAPENOM = ' + QuotedStr(edtASOAPEPAT2.Text + ' ' + edtASOAPEMAT2.Text + ' ' + edtASONOMBRES2.Text) + ','
      + ' TIPDNI = ' + QuotedStr(xTipoDni)
      + ' WHERE CODPAD = ' + QuotedStr(CODPAD) + ' AND CODITEM = ' + IntToStr(CODITEM);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    
    xSql := 'BEGIN '
      + '    DB2ADMIN.SP_ASO_VALIDAR_REGISTRO_PADRON(' + QuotedStr(CODPAD) + ', ' + IntToStr(CODITEM) + '); '
      + 'END;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    
    DM1.DCOM1.AppServer.SOLCommit;
  Except
    DM1.DCOM1.AppServer.SOLRollBack;
    ShowMessage('No se pudo grabar el registro, intente nuevamente');
    Screen.Cursor := crDefault;
    Exit;
  End;
  
  grpDatosModificados.Enabled := false;
  btnModificar.Enabled := true;
  btnGrabar.Enabled := false;
  MODIFICADO := true;
  MessageDlg('Información grabada exitosamente', mtInformation, [mbOk], 0);
end;

procedure TFPadronRegistro.dblcdPLANILLA2Change(Sender: TObject);
begin
  If DM1.cdsPlanilla.Active and (dblcdPLANILLA2.Text <> '') and DM1.cdsPlanilla.Locate('PLANILLA',VarArrayof([dblcdPLANILLA2.Text]),[]) Then
  begin
    edtDESPLANILLA2.Text := DM1.cdsPlanilla.FieldByName('DESPLANILLA').AsString;
  end
  else
  begin
    edtDESPLANILLA2.Text := '';
  end;
  ObtenerUProID;
end;

procedure TFPadronRegistro.dblcdREGPENID2Change(Sender: TObject);
begin
  If DM1.cdsRegPen.Active and DM1.cdsRegPen.Locate('REGPENID',VarArrayof([dblcdREGPENID2.Text]),[]) Then
  begin
    edtDESFISCAL2.Text := DM1.cdsRegPen.FieldByName('REGPENDES').AsString;
    edtFISCAL2.Text := IntToStr(StrToInt(dblcdREGPENID2.Text));
  end
  else
  begin
    edtDESFISCAL2.Text := '';
    edtFISCAL2.Text := '';
  end;
end;

procedure TFPadronRegistro.dblcdSITACT2Change(Sender: TObject);
begin
  If DM1.cdsSitLab.Active and DM1.cdsSitLab.Locate('COD_SIT',VarArrayof([dblcdSITACT2.Text]),[]) Then
  begin
    edtDESSITUACION2.Text := DM1.cdsSitLab.FieldByName('DES_SIT').AsString;
    edtSITUACION2.Text := IntToStr(StrToInt(dblcdSITACT2.Text));
  end
  else
  begin
    edtDESSITUACION2.Text := '';
    edtSITUACION2.Text := '';
  end;
end;

procedure TFPadronRegistro.dblcdTIPSER2Change(Sender: TObject);
begin
  If DM1.cdsTipSer.Active and DM1.cdsTipSer.Locate('COD_SIT',VarArrayof([dblcdTIPSER2.Text]),[]) Then
  begin
    edtDESC_SERVIDOR2.Text := DM1.cdsTipSer.FieldByName('DES_SIT').AsString;
    if (dblcdTIPSER2.Text = '01') or (dblcdTIPSER2.Text = '08') then
      edtASOTIPID2.Text := 'DO'
    else if dblcdTIPSER2.Text = '00' then
      edtASOTIPID2.Text := 'CE'
    else if dblcdTIPSER2.Text = '02' then
      edtASOTIPID2.Text := 'CO'
    else
      edtASOTIPID2.Text := '99';
  end
  else
  begin
    edtDESC_SERVIDOR2.Text := '';
    edtASOTIPID2.Text := '99';
  end;
end;

procedure TFPadronRegistro.dblcdCARLAB2Change(Sender: TObject);
begin
  If DM1.cdsCarLab.Active and DM1.cdsCarLab.Locate('COD_SIT',VarArrayof([dblcdCARLAB2.Text]),[]) Then
  begin
    edtDES_CARGO2.Text := DM1.cdsCarLab.FieldByName('DES_SIT').AsString;
  end
  else
  begin
    edtDES_CARGO2.Text := '';
  end;
end;

procedure TFPadronRegistro.edtASOCODPAGO2Change(Sender: TObject);
var
  xSql: string;
begin
  xSql := 'SELECT CODPAGO, CODMOD, NIVEDU_ID, NOMCENEDU FROM ASO_CEN_EDU WHERE CODPAGO = ' + QuotedStr(Trim(edtASOCODPAGO2.Text));
  DM1.cdsCEdu.Close;
  DM1.cdsCEdu.DataRequest(xSql);
  DM1.cdsCEdu.Open;

  if DM1.cdsCEdu.RecordCount > 0 then
  begin
    edtNOMBRE_IE2.Text := DM1.cdsCEdu.FieldByName('NOMCENEDU').AsString;
    edtCODMOD2.Text := DM1.cdsCEdu.FieldByName('CODMOD').AsString;
    edtNIVEDU_ID2.Text := DM1.cdsCEdu.FieldByName('NIVEDU_ID').AsString;
  end
  else
  begin
    edtNOMBRE_IE2.Text := '';
    edtCODMOD2.Text := '';
    edtNIVEDU_ID2.Text := '';
  end;
end;

procedure TFPadronRegistro.dblcdUSEID2Change(Sender: TObject);
begin
  ObtenerUProID;
end;

procedure TFPadronRegistro.ObtenerUProID;
var
  xSql: string;
begin
  if dblcdPLANILLA2.Text = '1' then
  begin
    xSql := 'SELECT UPROID, UPAGOID FROM ASO_UGEL_PLA_MAE WHERE USEID = ' + QuotedStr(Trim(dblcdUSEID2.Text))
      + ' AND CODREGION = ' + QuotedStr(Trim(edtCOD_EMPRESA2.Text))
      + ' AND AC = ''S''';
  end
  else if dblcdPLANILLA2.Text = '2' then
  begin
    xSql := 'SELECT UPROID, UPAGOID FROM ASO_UGEL_PLA_MAE WHERE USEID = ' + QuotedStr(Trim(dblcdUSEID2.Text))
      + ' AND CODREGION = ' + QuotedStr(Trim(edtCOD_EMPRESA2.Text))
      + ' AND CE = ''S''';
  end
  else
  begin
    Exit;
  end;
  //Inicio: SPP_201409_ASO
  DM1.cdsUSES.Close;
  DM1.cdsUSES.DataRequest(xSql);
  DM1.cdsUSES.Open;

  if DM1.cdsUSES.RecordCount > 0 then
  begin
    edtUPROID2.Text := DM1.cdsUSES.FieldByName('UPROID').AsString;
    edtUPAGOID2.Text := DM1.cdsUSES.FieldByName('UPAGOID').AsString;
  end
  else
  begin
    edtUPROID2.Text := '';
    edtUPAGOID2.Text := '';
  end;
  //Fin: SPP_201409_ASO
end;

procedure TFPadronRegistro.edtCOD_EMPRESA2Change(Sender: TObject);
begin
  ObtenerUProID;
end;

procedure TFPadronRegistro.dblcdCODEST2Change(Sender: TObject);
begin
  If DM1.cdsEstCiv.Active and DM1.cdsEstCiv.Locate('CODEST',VarArrayof([dblcdCODEST2.Text]),[]) Then
  begin
    edtEstado2.Text := DM1.cdsEstCiv.FieldByName('DESEST').AsString;
  end
  else
  begin
    edtEstado2.Text := '';
  end;
end;

procedure TFPadronRegistro.btnAceptarClick(Sender: TObject);
var
  xSql: string;
begin
  if length(edtASOCODMOD2.Text) = 0 then
  begin
    MessageDlg('Ingrese el código modular', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtCARGO2.Text = '' then
  begin
    MessageDlg('Ingrese el código secuencial o de cargo', mtInformation, [mbOk], 0);
    Exit;
  end;
  if length(Trim(edtASODNI2.Text)) <> 8 then
  begin
    MessageDlg('El DNI debe tener 8 dígitos', mtInformation, [mbOk], 0);
    Exit;
  end;
  if length(edtASOAPEPAT2.Text) = 0 then
  begin
    MessageDlg('Ingrese el apellido paterno', mtInformation, [mbOk], 0);
    Exit;
  end;
  if length(edtASOAPEMAT2.Text) = 0 then
  begin
    MessageDlg('Ingrese el apellido materno', mtInformation, [mbOk], 0);
    Exit;
  end;
  if length(edtASONOMBRES2.Text) = 0 then
  begin
    MessageDlg('Ingrese los nombres', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtDESPLANILLA2.Text = '' then
  begin
    MessageDlg('Seleccione la planilla', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtDESSITUACION2.Text = '' then
  begin
    MessageDlg('Seleccione la situación laboral', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtCOD_EMPRESA2.Text = '' then
  begin
    MessageDlg('Ingrese el código de región', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtUSENOM2.Text = '' then
  begin
    MessageDlg('Seleccione la Ugel', mtInformation, [mbOk], 0);
    Exit;
  end;
  if edtDESC_SERVIDOR2.Text = '' then
  begin
    MessageDlg('Seleccione el tipo de servidor', mtInformation, [mbOk], 0);
    Exit;
  end;
  if (edtASOCODPAGO2.Text = '')
    and ((edtASOTIPID2.Text = 'DO') or (edtASOTIPID2.Text = 'CO')) then
  begin
    MessageDlg('Ingrese el código de la institución educativa', mtInformation, [mbOk], 0);
    Exit;
  end;
  if (length(edtASONCTA2.Text) <> 0) and (length(edtASONCTA2.Text) <> 10) then
  begin
    MessageDlg('El número de cuenta es opcional, si es ingresado debe tener 10 dígitos', mtInformation, [mbOk], 0);
    Exit;
  end;
  if (DM1.cdsPadron2.FieldByName('ASOID').AsString <> '')
    and ((length(edtUPROID2.Text) = 0) or (length(edtUPAGOID2.Text) = 0)) then
  begin
    MessageDlg('La unidad de proceso y pago son obligatorias', mtInformation, [mbOk], 0);
    Exit;
  end;
  If MessageDlg('¿Está seguro de aceptar los datos de este registro?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then
  begin
    Exit;
  end;
  
  Screen.Cursor := crHourGlass;
  xSql := 'BEGIN '
    + '    DB2ADMIN.SP_ASO_VALIDAR_REGISTRO_PADRON(' + QuotedStr(CODPAD) + ', ' + IntToStr(CODITEM) + '); '
    + 'END;';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  //El registro no debe tener inconsistencias para que pueda ser aprobado
  xSql := 'SELECT L.CODITEM FROM ASO_PAD_LOG L INNER JOIN ASO_PAD_TIP_LOG T ON L.CODTIPREG = T.CODTIPREG'
    + ' WHERE L.CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
    + '   AND L.CODITEM = ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString
    + '   AND T.RESTRICTIVA = ''S''';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  if DM1.cdsQry.RecordCount > 0 then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('El registro tiene inconsistencias, no puede ser aprobado', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  DM1.DCOM1.AppServer.SOLStartTransaction;
  if DM1.cdsPadron2.FieldByName('TIPDNI').AsString = 'D' then
  begin //DNI Duplicado
    try
      xSql := 'UPDATE ASO_PAD_DET'
        + ' SET CODEST = ''A'','
        + ' FECMOD = SYSDATE,'
        + ' USUMOD = ' + QuotedStr(DM1.wUsuario)
        + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
        + '   AND CODITEM = ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString;
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      
      xSql := 'UPDATE ASO_PAD_DET'
        + ' SET CODEST = ''E'','
        + ' ACTUALIZA = ''N'','
        + ' FECMOD = SYSDATE,'
        + ' USUMOD = ' + QuotedStr(DM1.wUsuario)
        + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
        + '   AND ASODNI = ' + QuotedStr(DM1.cdsPadron2.FieldByName('ASODNI').AsString)
        + '   AND CODITEM <> ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString;
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    Except
      DM1.DCOM1.AppServer.SOLRollBack;
      Screen.Cursor := crDefault;
      showmessage('No se pudo actualizar el estado de los registros duplicados, por favor intente nuevamente');
      exit;
    End;
  end
  else if DM1.cdsPadron2.FieldByName('TIPDNI').AsString = 'M' then
  begin //DNI Multiplicado
    try
      xSql := 'UPDATE ASO_PAD_DET'
        + ' SET CODEST = ''A'','
        + ' FECMOD = SYSDATE,'
        + ' USUMOD = ' + QuotedStr(DM1.wUsuario)
        + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
        + '   AND CODITEM = ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString;
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      
      xSql := 'UPDATE ASO_PAD_DET'
        + ' SET CODEST = ''E'','
        + ' ACTUALIZA = ''N'','
        + ' FECMOD = SYSDATE,'
        + ' USUMOD = ' + QuotedStr(DM1.wUsuario)
        + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
        + '   AND ASODNI = ' + QuotedStr(DM1.cdsPadron2.FieldByName('ASODNI').AsString)
        + '   AND CODITEM <> ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString;
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    Except
      DM1.DCOM1.AppServer.SOLRollBack;
      Screen.Cursor := crDefault;
      ShowMessage('No se pudo actualizar el estado de los registros multiplicados, por favor intente nuevamente');
      Exit;
    End;
  end
  else if DM1.cdsPadron2.FieldByName('TIPDNI').AsString = 'U' then
  begin //DNI Unico
    try
      xSql := 'UPDATE ASO_PAD_DET'
        + ' SET CODEST = ''A'','
        + ' FECMOD = SYSDATE,'
        + ' USUMOD = ' + QuotedStr(DM1.wUsuario)
        + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
        + '   AND CODITEM = ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString;
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    Except
      DM1.DCOM1.AppServer.SOLRollBack;
      Screen.Cursor := crDefault;
      ShowMessage('No se pudo actualizar el estado del registro, por favor intente nuevamente');
      Exit;
    End;
  end;
  
  //Modifica el flag ACTUALIZA en caso pueda ser actualizado al maestro de asociados
  xSql := 'UPDATE ASO_PAD_DET D'
    + '  SET D.ACTUALIZA = ''S'''
    + '  WHERE'
    + '    D.CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
    + '    AND D.CODITEM = ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString
    + '    AND D.CODEST = ''A'''
    + '    AND (D.ASOID IS NOT NULL OR D.NUEVO = ''S'')'
    + '    AND NVL(D.ACTUALIZA,''N'') = ''N'''
    + '    AND D.CODITEM NOT IN (SELECT L.CODITEM FROM ASO_PAD_LOG L INNER JOIN ASO_PAD_TIP_LOG T ON L.CODTIPREG = T.CODTIPREG WHERE L.CODPAD = D.CODPAD AND L.CODITEM = D.CODITEM AND T.RESTRICTIVA = ''S'')';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  //Modifica el flag ACTUALIZA
  xSql := 'UPDATE ASO_PAD_DET D'
    + '  SET D.ACTUALIZA = ''N'''
    + '  WHERE'
    + '    D.CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
    + '    AND D.CODITEM = ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString
    + '    AND D.ACTUALIZA IS NULL';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);

  // Inicio: SPP_201301_ASO
  //Copia el registro a la tabla
  xSql := 'INSERT INTO ASO_PAD_HIS('
    + '    CODPAD, CODITEM, ACTUALIZADO, ASOID,ASOCODMOD,'
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
    + '    D.CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
    + '    AND D.CODITEM = ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString
    + '    AND D.ACTUALIZA = ''S'''
    + '    AND D.CODITEM NOT IN (SELECT H.CODITEM FROM ASO_PAD_HIS H WHERE H.CODPAD = D.CODPAD AND H.CODITEM = D.CODITEM)';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  // Fin: SPP_201301_ASO
  
  DM1.DCOM1.AppServer.SOLCommit;
  Screen.Cursor := crDefault;
  CargarRegistroModificado;
  MODIFICADO := true;
  ShowMessage('Operación concluida exitosamente');
end;

procedure TFPadronRegistro.btnEliminarClick(Sender: TObject);
var
  xSql: string;
begin
  If MessageDlg('¿Está seguro de eliminar este registro?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then
  begin
    Exit;
  end;
  
  Screen.Cursor := crHourGlass;
  try
    xSql := 'UPDATE ASO_PAD_DET'
      + ' SET CODEST = ''E'','
      + ' ACTUALIZA = ''N'','
      + ' FECMOD = SYSDATE,'
      + ' USUMOD = ' + QuotedStr(DM1.wUsuario)
      + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
      + '   AND CODITEM = ' + DM1.cdsPadron2.FieldByName('CODITEM').AsString;
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  Except
    ShowMessage('No se pudo actualizar el estado del registro, por favor intente nuevamente');
    Screen.Cursor := crDefault;
    Exit;
  End;
  Screen.Cursor := crDefault;
  
  CargarRegistroModificado;
  MODIFICADO := true;
  ShowMessage('Operación concluida exitosamente');
end;

procedure TFPadronRegistro.edtSECUENCIAL2Change(Sender: TObject);
begin
  edtCARGO2.Text := DM1.StrZero(edtSECUENCIAL2.Text, 6);
end;

procedure TFPadronRegistro.btnReabrirClick(Sender: TObject);
var
  xSql: string;
begin
  If MessageDlg('¿Está seguro de reabrir este registro y retornarlo al estado pendiente?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then
  begin
    Exit;
  end;
  
  Screen.Cursor := crHourGlass;
  Try
    xSql := 'DELETE FROM ASO_PAD_HIS'
      + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
      + '   AND ASODNI = ' + QuotedStr(DM1.cdsPadron2.FieldByName('ASODNI').AsString);
    
    xSql := 'UPDATE ASO_PAD_DET'
      + ' SET CODEST = ''P'','
      + ' ACTUALIZA = NULL,'
      + ' FECMOD = SYSDATE,'
      + ' USUMOD = ' + QuotedStr(DM1.wUsuario)
      + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsPadron2.FieldByName('CODPAD').AsString)
      + '   AND ASODNI = ' + QuotedStr(DM1.cdsPadron2.FieldByName('ASODNI').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  Except
    ShowMessage('No se pudo actualizar el estado del registro, por favor intente nuevamente');
    Screen.Cursor := crDefault;
    exit;
  End;
  CargarRegistroModificado;
  Screen.Cursor := crDefault;
  MODIFICADO := true;
  ShowMessage('Operación concluida exitosamente');
end;

procedure TFPadronRegistro.btnRestaurarClick(Sender: TObject);
var
  xSql: string;
begin
  If MessageDlg('¿Está seguro de restaurar los datos de este registro?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then
  begin
    Exit;
  end;
  
  Screen.Cursor := crHourGlass;
  DM1.DCOM1.AppServer.SOLStartTransaction;
  Try
    xSql := 'DELETE FROM ASO_PAD_DET WHERE CODPAD = ' + QuotedStr(CODPAD) + ' AND CODITEM = ' + DM1.cdsPadron1.FieldByName('CODITEM').AsString;
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    
    DM1.DCOM1.AppServer.SOLCommit;
    
    DM1.DCOM1.AppServer.SOLStartTransaction;
    
    // Inicio: SPP_201301_ASO
    xSql := 'INSERT INTO ASO_PAD_DET(CODPAD, CODITEM, CODEST, ASOCODMOD, SECUENCIAL, ASODNI, ASOAPEPAT, ASOAPEMAT, ASONOMBRES,'
      + '    PLANILLA, FISCAL, SITUACION, COD_EMPRESA, EMPRESA, USEID, USENOM, TIPSER, DESC_SERVIDOR, ASOCODPAGO, NOMBRE_IE,'
      + '    CARLAB, DES_CARGO, COD_REGLAB, REGLAB, ASONCTA, HABER, DESCUENTO, LIQUIDO, FECREG, USUREG,'
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
      + '    DSCTO20, MTO20)'
      + ' SELECT CODPAD, CODITEM, ''P'', MODULAR, SECUENCIAL, DNI, PATERNO, MATERNO, NOMBRES,'
      + '    PLANILLA, FISCAL, SITUACION, COD_EMPRESA, EMPRESA, COD_OFICINA, OFICINA, COD_SERVIDOR, DESC_SERVIDOR, COD_IE, NOMBRE_IE,'
      + '    COD_CARGO, DES_CARGO, COD_REGLAB, REGLAB, CTA_AHORROS, HABER, DESCUENTO, LIQUIDO, SYSDATE, ' + QuotedStr(DM1.wUsuario) + ','
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
      + ' FROM ASO_PAD_DES_HIS'
      + ' WHERE CODPAD = ' + QuotedStr(CODPAD) + ' AND CODITEM = ' + DM1.cdsPadron1.FieldByName('CODITEM').AsString;
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
    // Fin: SPP_201301_ASO
    
    DM1.DCOM1.AppServer.SOLCommit;
  Except
    on E : Exception do
    begin
      DM1.DCOM1.AppServer.SOLRollBack;
      ShowMessage('No se pudo restaurar el estado del registro: ' + E.Message);
      Screen.Cursor := crDefault;
      Exit;
    end;
  End;
  xSql := 'BEGIN DB2ADMIN.SP_ASO_PROCESA_REG_PADRON(' + QuotedStr(CODPAD) + ', ' + DM1.cdsPadron1.FieldByName('CODITEM').AsString + '); END;';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  CargarRegistroModificado;
  MODIFICADO := true;
  Screen.Cursor := crDefault;
  ShowMessage('Operación concluida exitosamente');
end;

procedure TFPadronRegistro.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadronRegistro.SpdBActMasClick(Sender: TObject);
begin
   Try
      DM1.xInsert:='0';
      DM1.xCnd:='M';
      //Inicio: SPP_201409_ASO
      DM1.Abrir_Tablas;
      //Fin: SPP_201409_ASO
      FMantAsociadoBuscar := TFMantAsociadoBuscar.Create(Self);
      FMantAsociadoBuscar.ShowModal;
   Finally
      FMantAsociadoBuscar.Free;
   End;
end;

procedure TFPadronRegistro.btnDetDctoClick(Sender: TObject);
begin
  // Inicio: SPP_201301_ASO
  Try
    FPadronDescuentos := TFPadronDescuentos.Create(Self);
    FPadronDescuentos.ShowModal;
  Finally
    FPadronDescuentos.Free;
  End;
  // Fin: SPP_201301_ASO
end;

end.

