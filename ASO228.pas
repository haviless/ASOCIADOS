// Inicio Uso Estándares     : 01/08/2011
// Unidad		            : ASO228.pas
// Formulario		        : FPadronHistorialDNI
// Fecha de Creación	     : 28/02/2012
// Autor			         : Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Permite visualizar un listado histórico de todas las descargas de los padrones de
//                        determinado asociado

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO            : 28/02/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201305_ASO            : Se agrega búsqueda por número de cuenta de ahorros
// SPP_201306_ASO            : Se realiza el pase a producción a partir del HPC_201305_ASO
// HPC_201309_ASO            : La tabla ASO_PAD_DET_HIS se usa para un padrón cerrado, sino ASO_PAD_DET
// SPP_201310_ASO            : Se realiza el pase a producción a partir del HPC_201309_ASO

unit ASO228;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB;

type
  TFPadronHistorialDNI = class(TForm)
    btnSalir: TBitBtn;
    btnMostrar: TBitBtn;
    grpBuscarAsociado: TGroupBox;
    rbtDni: TRadioButton;
    edtBuscar: TEdit;
    rbtCodMod: TRadioButton;
    dbgRegistros: TwwDBGrid;
    rbtApeNom: TRadioButton;
    GroupBox1: TGroupBox;
    rbtOriginales: TRadioButton;
    rbtModificados: TRadioButton;
    rbtCuentaAhorros: TRadioButton; //SPP_201306_ASO
    procedure rbtDniClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
    procedure btnMostrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure rbtApeNomClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtBuscarExit(Sender: TObject);
    procedure rbtCuentaAhorrosClick(Sender: TObject); //SPP_201306_ASO
  private
    { Private declarations }
  public
    { Public declarations }
    ASODNI: string;
  end;

var
  FPadronHistorialDNI: TFPadronHistorialDNI;

implementation

uses ASODM, ASO219;

{$R *.dfm}


procedure TFPadronHistorialDNI.FormCreate(Sender: TObject);
var
  xSql: string;
begin
  xSql := 'SELECT'
    + ' P.CODPAD, P.CODITEM, P.MODULAR,'
    + ' P.SECUENCIAL, P.DNI, P.PATERNO,'
    + ' P.MATERNO, P.NOMBRES, P.PLANILLA,'
    + ' P.FISCAL, P.SITUACION, P.COD_EMPRESA,'
    + ' P.EMPRESA, P.COD_OFICINA, P.OFICINA,'
    + ' P.COD_SERVIDOR, P.DESC_SERVIDOR, P.COD_IE,'
    + ' P.NOMBRE_IE, P.COD_CARGO, P.DES_CARGO,'
    + ' P.COD_REGLAB, P.REGLAB, P.CTA_AHORROS,'
    + ' P.HABER, P.DESCUENTO, P.LIQUIDO'
    + ' FROM ASO_PAD_DES_HIS P'
    + ' WHERE 1 = 2';
  
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  
  dbgRegistros.Refresh;
  dbgRegistros.Selected.Clear;
  dbgRegistros.Selected.Add('CODPAD'#9'8'#9'Padrón'#9#9);
  dbgRegistros.Selected.Add('CODITEM'#9'8'#9'ID'#9#9);
  dbgRegistros.Selected.Add('DESEST'#9'10'#9'Estado'#9#9);
  dbgRegistros.Selected.Add('ASODNI'#9'10'#9'DNI'#9#9);
  dbgRegistros.Selected.Add('ASOAPEPAT'#9'20'#9'Apellido Paterno'#9#9);
  dbgRegistros.Selected.Add('ASOAPEMAT'#9'20'#9'Apellido Materno'#9#9);
  dbgRegistros.Selected.Add('ASONOMBRES'#9'20'#9'Nombres'#9#9);
  dbgRegistros.Selected.Add('PLANILLA'#9'8'#9'Planilla'#9#9);
  dbgRegistros.Selected.Add('FISCAL'#9'6'#9'Cargo'#9#9);
  dbgRegistros.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso.'#9#9);
  dbgRegistros.Selected.Add('SITACT'#9'10'#9'Sit.Act.'#9#9);
  dbgRegistros.Selected.Add('EMPRESA'#9'15'#9'Región'#9#9);
  dbgRegistros.Selected.Add('USENOM'#9'15'#9'Ugel'#9#9);
  dbgRegistros.Selected.Add('TIPSER'#9'6'#9'Cod.Ser.'#9#9);
  dbgRegistros.Selected.Add('DESC_SERVIDOR'#9'15'#9'Desc.Servidor'#9#9);
  dbgRegistros.Selected.Add('NOMBRE_IE'#9'15'#9'Colegio'#9#9);
  dbgRegistros.Selected.Add('CARLAB'#9'6'#9'Cod.Cargo.'#9#9);
  dbgRegistros.Selected.Add('DES_CARGO'#9'15'#9'Desc.Cargo'#9#9);
  dbgRegistros.Selected.Add('ASONCTA'#9'12'#9'Cuenta Banc.'#9#9);
  dbgRegistros.Selected.Add('HABER'#9'10'#9'Ing. Bruto'#9#9);
  dbgRegistros.ApplySelected;
end;

procedure TFPadronHistorialDNI.FormActivate(Sender: TObject);
begin
  rbtApeNomClick(Self);
end;

procedure TFPadronHistorialDNI.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsQry1.Close;
end;

procedure TFPadronHistorialDNI.rbtApeNomClick(Sender: TObject);
begin
edtBuscar.Width:=430; edtBuscar.Height := 24;
edtBuscar.SetFocus;
edtBuscar.Text := '';
end;

procedure TFPadronHistorialDNI.rbtDniClick(Sender: TObject);
begin
edtBuscar.Width:=114; edtBuscar.Height := 24;
edtBuscar.SetFocus;
edtBuscar.Text := '';
end;

procedure TFPadronHistorialDNI.rbtCodModClick(Sender: TObject);
begin
edtBuscar.Width:=114; edtBuscar.Height := 24;
edtBuscar.SetFocus;
edtBuscar.Text := '';
end;

procedure TFPadronHistorialDNI.btnMostrarClick(Sender: TObject);
var
  xSql: string;
begin
  Screen.Cursor := crHourGlass;
  
  if Length(Trim(edtBuscar.Text)) = 0 then
  begin
    Screen.Cursor := crDefault;
    MessageDlg('Ingrese el apellido, DNI o código modular', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  if rbtModificados.Checked then
  begin
    // Inicio: SPP_201310_ASO
    xSql := 'SELECT'
      + ' P.CODPAD, P.CODITEM, P.CODEST,'
      + ' P.ASOCODMOD, P.SECUENCIAL, P.ASODNI,'
      + ' P.ASOAPEPAT, P.ASOAPEMAT, P.ASONOMBRES,'
      + ' P.PLANILLA, P.FISCAL, P.SITUACION,'
      + ' P.COD_EMPRESA, P.EMPRESA, P.USEID,'
      + ' P.USENOM, P.TIPSER, P.DESC_SERVIDOR,'
      + ' P.ASOCODPAGO, P.NOMBRE_IE, P.CARLAB,'
      + ' P.DES_CARGO, P.COD_REGLAB, P.REGLAB,'
      + ' P.ASONCTA, P.HABER, P.DESCUENTO,'
      + ' P.LIQUIDO, P.CARGO, P.ASOTIPID,'
      + ' P.REGPENID, P.SITACT, P.UPROID,'
      + ' P.UPAGOID, P.CODMOD, P.NIVEDU_ID,'
      + ' P.FECREG, P.USUREG, P.FECMOD,'
      + ' P.USUMOD, P.ASOAPENOM, P.TIPDNI, P.ACTUALIZA, E.DESEST'
      + ' FROM ASO_PAD_DET P'
      + '   INNER JOIN'
      + ' ASO_PAD_EST_TRAB_MAE E ON'
      + ' P.CODEST = E.CODEST'
      + ' WHERE ';
    if Trim(edtBuscar.Text) <> '' then
    begin
      // Inicio: SPP_201306_ASO
      if rbtApeNom.Checked then
        xSql := xSql + '   P.ASOAPENOM LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
      else if rbtDni.Checked then
        xSql := xSql + '   P.ASODNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
      else if rbtCodMod.Checked then
        xSql := xSql + '   P.ASOCODMOD LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
      else if rbtCuentaAhorros.Checked then
        xSql := xSql + '   P.ASONCTA LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      // Fin: SPP_201306_ASO
    end;
    xSql := xSql + ' UNION ALL SELECT'
      + ' P.CODPAD, P.CODITEM, P.CODEST,'
      + ' P.ASOCODMOD, P.SECUENCIAL, P.ASODNI,'
      + ' P.ASOAPEPAT, P.ASOAPEMAT, P.ASONOMBRES,'
      + ' P.PLANILLA, P.FISCAL, P.SITUACION,'
      + ' P.COD_EMPRESA, P.EMPRESA, P.USEID,'
      + ' P.USENOM, P.TIPSER, P.DESC_SERVIDOR,'
      + ' P.ASOCODPAGO, P.NOMBRE_IE, P.CARLAB,'
      + ' P.DES_CARGO, P.COD_REGLAB, P.REGLAB,'
      + ' P.ASONCTA, P.HABER, P.DESCUENTO,'
      + ' P.LIQUIDO, P.CARGO, P.ASOTIPID,'
      + ' P.REGPENID, P.SITACT, P.UPROID,'
      + ' P.UPAGOID, P.CODMOD, P.NIVEDU_ID,'
      + ' P.FECREG, P.USUREG, P.FECMOD,'
      + ' P.USUMOD, P.ASOAPENOM, P.TIPDNI, P.ACTUALIZA, E.DESEST'
      + ' FROM ASO_PAD_DET_HIS P'
      + '   INNER JOIN'
      + ' ASO_PAD_EST_TRAB_MAE E ON'
      + ' P.CODEST = E.CODEST'
      + ' WHERE ';
    if Trim(edtBuscar.Text) <> '' then
    begin
      if rbtApeNom.Checked then
        xSql := xSql + '   P.ASOAPENOM LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
      else if rbtDni.Checked then
        xSql := xSql + '   P.ASODNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
      else if rbtCodMod.Checked then
        xSql := xSql + '   P.ASOCODMOD LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
      else if rbtCuentaAhorros.Checked then
        xSql := xSql + '   P.ASONCTA LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
    end;
    xSql := xSql + ' ORDER BY CODPAD DESC, HABER DESC';
    // Fin: SPP_201310_ASO

    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;
    
    dbgRegistros.Refresh;
    dbgRegistros.Selected.Clear;
    dbgRegistros.Selected.Add('CODPAD'#9'8'#9'Padrón'#9#9);
    dbgRegistros.Selected.Add('CODITEM'#9'8'#9'ID'#9#9);
    dbgRegistros.Selected.Add('DESEST'#9'10'#9'Estado'#9#9);
    dbgRegistros.Selected.Add('ASODNI'#9'10'#9'DNI'#9#9);
    dbgRegistros.Selected.Add('TIPDNI'#9'10'#9'Tipo DNI'#9#9);
    dbgRegistros.Selected.Add('ASOCODMOD'#9'11'#9'Cód.modular'#9#9);
    dbgRegistros.Selected.Add('ASOAPEPAT'#9'20'#9'Apellido Paterno'#9#9);
    dbgRegistros.Selected.Add('ASOAPEMAT'#9'20'#9'Apellido Materno'#9#9);
    dbgRegistros.Selected.Add('ASONOMBRES'#9'20'#9'Nombres'#9#9);
    dbgRegistros.Selected.Add('PLANILLA'#9'8'#9'Planilla'#9#9);
    dbgRegistros.Selected.Add('REGPENID'#9'6'#9'Régimen~Pensión'#9#9);
    dbgRegistros.Selected.Add('CARGO'#9'6'#9'Cód.Cargo'#9#9);
    dbgRegistros.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso.'#9#9);
    dbgRegistros.Selected.Add('SITACT'#9'10'#9'Sit.Act.'#9#9);
    dbgRegistros.Selected.Add('EMPRESA'#9'15'#9'Región'#9#9);
    dbgRegistros.Selected.Add('USEID'#9'5'#9'USEID'#9#9);
    dbgRegistros.Selected.Add('USENOM'#9'15'#9'Ugel'#9#9);
    dbgRegistros.Selected.Add('TIPSER'#9'6'#9'Código~Servidor'#9#9);
    dbgRegistros.Selected.Add('DESC_SERVIDOR'#9'15'#9'Desc.Servidor'#9#9);
    dbgRegistros.Selected.Add('NOMBRE_IE'#9'15'#9'Colegio'#9#9);
    dbgRegistros.Selected.Add('NIVEDU_ID'#9'8'#9'Niv.Edu.'#9#9);
    dbgRegistros.Selected.Add('CODMOD'#9'8'#9'Cód.Mod.IE.'#9#9);
    dbgRegistros.Selected.Add('CARLAB'#9'6'#9'Cargo Lab'#9#9);
    dbgRegistros.Selected.Add('DES_CARGO'#9'15'#9'Desc.Cargo'#9#9);
    dbgRegistros.Selected.Add('ASONCTA'#9'12'#9'Cuenta Banc.'#9#9);
    dbgRegistros.Selected.Add('HABER'#9'10'#9'Ing. Bruto'#9#9);
    dbgRegistros.Selected.Add('DESCUENTO'#9'10'#9'Descuento'#9#9);
    dbgRegistros.Selected.Add('LIQUIDO'#9'10'#9'Ing. Líquido'#9#9);
    dbgRegistros.ApplySelected;
  end
  else
  begin
    xSql := 'SELECT'
      + ' P.CODPAD, P.CODITEM, P.MODULAR,'
      + ' P.SECUENCIAL, P.DNI, P.PATERNO,'
      + ' P.MATERNO, P.NOMBRES, P.PLANILLA,'
      + ' P.FISCAL, P.SITUACION, P.COD_EMPRESA,'
      + ' P.EMPRESA, P.COD_OFICINA, P.OFICINA,'
      + ' P.COD_SERVIDOR, P.DESC_SERVIDOR, P.COD_IE,'
      + ' P.NOMBRE_IE, P.COD_CARGO, P.DES_CARGO,'
      + ' P.COD_REGLAB, P.REGLAB, P.CTA_AHORROS,'
      + ' P.HABER, P.DESCUENTO, P.LIQUIDO'
      + ' FROM ASO_PAD_DES_HIS P'
      + ' WHERE ';
    if Trim(edtBuscar.Text) <> '' then
    begin
      // Inicio: SPP_201306_ASO
      if rbtApeNom.Checked then
        xSql := xSql + '   P.PATERNO || '' '' || P.MATERNO || '' '' || P.NOMBRES LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
      else if rbtDni.Checked then
        xSql := xSql + '   P.DNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
      else if rbtCodMod.Checked then
        xSql := xSql + '   P.MODULAR LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
      else if rbtCuentaAhorros.Checked then
        xSql := xSql + '   P.CTA_AHORROS LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      // Fin: SPP_201306_ASO
    end;
    xSql := xSql + ' ORDER BY P.CODPAD DESC, P.HABER DESC';
    
    DM1.cdsQry1.Close;
    DM1.cdsQry1.DataRequest(xSql);
    DM1.cdsQry1.Open;
    
    dbgRegistros.Refresh;
    dbgRegistros.Selected.Clear;
    dbgRegistros.Selected.Add('CODPAD'#9'8'#9'Padrón'#9#9);
    dbgRegistros.Selected.Add('CODITEM'#9'8'#9'ID'#9#9);
    dbgRegistros.Selected.Add('DNI'#9'10'#9'DNI'#9#9);
    dbgRegistros.Selected.Add('PATERNO'#9'20'#9'Apellido Paterno'#9#9);
    dbgRegistros.Selected.Add('MATERNO'#9'20'#9'Apellido Materno'#9#9);
    dbgRegistros.Selected.Add('NOMBRES'#9'20'#9'Nombres'#9#9);
    dbgRegistros.Selected.Add('MODULAR'#9'10'#9'Modular'#9#9);
    dbgRegistros.Selected.Add('SECUENCIAL'#9'10'#9'Secuencial'#9#9);
    dbgRegistros.Selected.Add('PLANILLA'#9'8'#9'Planilla'#9#9);
    dbgRegistros.Selected.Add('FISCAL'#9'6'#9'Fiscal'#9#9);
    dbgRegistros.Selected.Add('SITUACION'#9'10'#9'Situación'#9#9);
    dbgRegistros.Selected.Add('COD_EMPRESA'#9'10'#9'Cod.Empresa'#9#9);
    dbgRegistros.Selected.Add('EMPRESA'#9'25'#9'Empresa'#9#9);
    dbgRegistros.Selected.Add('COD_OFICINA'#9'10'#9'Cod.Oficina'#9#9);
    dbgRegistros.Selected.Add('OFICINA'#9'25'#9'Oficina'#9#9);
    dbgRegistros.Selected.Add('COD_SERVIDOR'#9'10'#9'Cod.Servidor'#9#9);
    dbgRegistros.Selected.Add('DESC_SERVIDOR'#9'25'#9'Servidor'#9#9);
    dbgRegistros.Selected.Add('COD_IE'#9'10'#9'Cod.I.E.'#9#9);
    dbgRegistros.Selected.Add('NOMBRE_IE'#9'25'#9'Nombre I.E.'#9#9);
    dbgRegistros.Selected.Add('COD_CARGO'#9'6'#9'Cod.Cargo.'#9#9);
    dbgRegistros.Selected.Add('DES_CARGO'#9'15'#9'Desc.Cargo'#9#9);
    dbgRegistros.Selected.Add('COD_REGLAB'#9'6'#9'Cod.Reg.Lab.'#9#9);
    dbgRegistros.Selected.Add('REGLAB'#9'15'#9'Reg.Lab.'#9#9);
    dbgRegistros.Selected.Add('CTA_AHORROS'#9'12'#9'Cta.Ahorros'#9#9);
    dbgRegistros.Selected.Add('HABER'#9'10'#9'Haber'#9#9);
    dbgRegistros.Selected.Add('DESCUENTO'#9'10'#9'Descuento'#9#9);
    dbgRegistros.Selected.Add('LIQUIDO'#9'10'#9'Líquido'#9#9);
    dbgRegistros.ApplySelected;
  end;
  
  TNumericField(DM1.cdsQry1.FieldByName('HABER')).DisplayFormat:='###,##0.00';
  
  dbgRegistros.ColumnByName('CODPAD').FooterValue := IntToStr(DM1.cdsQry1.RecordCount);
  dbgRegistros.ColumnByName('CODITEM').FooterValue := 'Registros';
  dbgRegistros.RefreshDisplay;
  
  Screen.Cursor := crDefault;
end;

procedure TFPadronHistorialDNI.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadronHistorialDNI.dbgRegistrosDblClick(Sender: TObject);
begin
  if DM1.cdsQry1.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;

  Try
    FPadronRegistro := TFPadronRegistro.Create(Self);
    FPadronRegistro.CODPAD := DM1.cdsQry1.FieldByName('CODPAD').AsString;
    FPadronRegistro.CODITEM := DM1.cdsQry1.FieldByName('CODITEM').AsInteger;
    FPadronRegistro.ShowModal;
    if FPadronRegistro.MODIFICADO then
      btnMostrarClick(self);
  Finally
    FPadronRegistro.Free;
  End;
end;

procedure TFPadronHistorialDNI.edtBuscarExit(Sender: TObject);
begin
  If Length(Trim(edtBuscar.Text)) <> 0 Then
    btnMostrarClick(Self);
end;

procedure TFPadronHistorialDNI.rbtCuentaAhorrosClick(Sender: TObject);
begin
// Inicio: SPP_201306_ASO
edtBuscar.Width:=114; edtBuscar.Height := 24;
edtBuscar.SetFocus;
edtBuscar.Text := '';
// Fin: SPP_201306_ASO
end;

end.

