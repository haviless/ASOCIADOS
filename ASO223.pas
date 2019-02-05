// Inicio Uso Estándares     : 01/08/2011
// Unidad		            : ASO223.pas
// Formulario		        : FPadronRegsPorDNI
// Fecha de Creación	     : 28/02/2012
// Autor			         : Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Comparar los registros de un padrón que tienen el mismo DNI

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO            : 28/02/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO

unit ASO223;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB;

type
  TFPadronRegsPorDNI = class(TForm)
    dbgPadron: TwwDBGrid;
    btnSalir: TBitBtn;
    btnVerRegistro: TBitBtn;
    btnVerErrores: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure dbgPadronDblClick(Sender: TObject);
    procedure btnVerRegistroClick(Sender: TObject);
    procedure dbgPadronCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure btnVerErroresClick(Sender: TObject);
  private
    { Private declarations }
    procedure CargarDatos;
  public
    { Public declarations }
    CODPAD, ASODNI: string;
  end;

var
  FPadronRegsPorDNI: TFPadronRegsPorDNI;

implementation

uses ASODM, ASO219, ASO231;

{$R *.dfm}

procedure TFPadronRegsPorDNI.FormActivate(Sender: TObject);
begin
  CargarDatos;
end;

procedure TFPadronRegsPorDNI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsListaCreA.Close;
end;

procedure TFPadronRegsPorDNI.CargarDatos;
var
  xSql: string;
begin
  xSql := 'SELECT '
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
    + ' P.USUMOD, P.ASOAPENOM, P.TIPDNI, E.DESEST, R.REGPENDES'
    + ' FROM ASO_PAD_DET P INNER JOIN ASO_PAD_EST_TRAB_MAE E ON P.CODEST = E.CODEST'
    + '   INNER JOIN'
    + ' APO105 R ON'
    + ' P.REGPENID = R.REGPENID'
    + ' WHERE P.CODPAD = ' + QuotedStr(CODPAD)
    + ' AND P.ASODNI = ' + QuotedStr(ASODNI)
    + ' ORDER BY P.HABER DESC';
  DM1.cdsListaCreA.Close;
  DM1.cdsListaCreA.DataRequest(xSql);
  DM1.cdsListaCreA.Open;

  dbgPadron.Refresh;
  dbgPadron.Selected.Clear;
  dbgPadron.Selected.Add('CODITEM'#9'8'#9'ID'#9#9);
  dbgPadron.Selected.Add('DESEST'#9'10'#9'Estado'#9#9);
  dbgPadron.Selected.Add('ASODNI'#9'10'#9'DNI'#9#9);
  dbgPadron.Selected.Add('TIPDNI'#9'10'#9'Cant.DNI'#9#9);
  dbgPadron.Selected.Add('ASOAPEPAT'#9'20'#9'Apellido Paterno'#9#9);
  dbgPadron.Selected.Add('ASOAPEMAT'#9'20'#9'Apellido Materno'#9#9);
  dbgPadron.Selected.Add('ASONOMBRES'#9'20'#9'Nombres'#9#9);
  dbgPadron.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso.'#9#9);
  dbgPadron.Selected.Add('PLANILLA'#9'8'#9'Planilla'#9#9);
  dbgPadron.Selected.Add('REGPENDES'#9'8'#9'Tipo Régim.'#9#9);
  dbgPadron.Selected.Add('SITACT'#9'10'#9'Sit.Act.'#9#9);
  dbgPadron.Selected.Add('EMPRESA'#9'15'#9'Región'#9#9);
  dbgPadron.Selected.Add('UPROID'#9'5'#9'U.Proc.'#9#9);
  dbgPadron.Selected.Add('UPAGOID'#9'5'#9'U.Pago'#9#9);
  dbgPadron.Selected.Add('USEID'#9'5'#9'Ugel'#9#9);
  dbgPadron.Selected.Add('TIPSER'#9'6'#9'Cod.Ser.'#9#9);
  dbgPadron.Selected.Add('DESC_SERVIDOR'#9'15'#9'Desc.Servidor'#9#9);
  dbgPadron.Selected.Add('ASOCODPAGO'#9'8'#9'Cód.Pago'#9#9);
  dbgPadron.Selected.Add('NOMBRE_IE'#9'20'#9'Instit.Educativa'#9#9);
  dbgPadron.Selected.Add('CARLAB'#9'6'#9'Cargo Lab'#9#9);
  dbgPadron.Selected.Add('DES_CARGO'#9'15'#9'Desc. Cargo'#9#9);
  dbgPadron.Selected.Add('HABER'#9'10'#9'Ing. Bruto'#9#9);
  dbgPadron.ApplySelected;
  
  TNumericField(DM1.cdsListaCreA.FieldByName('HABER')).DisplayFormat:='###,##0.00';
  
  dbgPadron.ColumnByName('CODITEM').FooterValue := IntToStr(DM1.cdsListaCreA.RecordCount);
  dbgPadron.ColumnByName('DESEST').FooterValue := 'Registros';
  dbgPadron.RefreshDisplay;
end;

procedure TFPadronRegsPorDNI.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadronRegsPorDNI.dbgPadronDblClick(Sender: TObject);
begin
  if DM1.cdsListaCreA.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;

  Try
    FPadronRegistro := TFPadronRegistro.Create(Self);
    FPadronRegistro.CODPAD := DM1.cdsListaCreA.FieldByName('CODPAD').AsString;
    FPadronRegistro.CODITEM := DM1.cdsListaCreA.FieldByName('CODITEM').AsInteger;
    FPadronRegistro.ShowModal;
    if FPadronRegistro.MODIFICADO then
      CargarDatos;
  Finally
    FPadronRegistro.Free;
  End;
end;

procedure TFPadronRegsPorDNI.btnVerRegistroClick(Sender: TObject);
begin
  if DM1.cdsListaCreA.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FPadronRegistro := TFPadronRegistro.Create(Self);
    FPadronRegistro.CODPAD := DM1.cdsListaCreA.FieldByName('CODPAD').AsString;
    FPadronRegistro.CODITEM := DM1.cdsListaCreA.FieldByName('CODITEM').AsInteger;
    FPadronRegistro.ShowModal;
    if FPadronRegistro.MODIFICADO then
      CargarDatos;
  Finally
    FPadronRegistro.Free;
  End;
end;

procedure TFPadronRegsPorDNI.dbgPadronCalcCellColors(Sender: TObject;
  Field: TField; State: TGridDrawState; Highlight: Boolean; AFont: TFont;
  ABrush: TBrush);
begin
  If Highlight Then
  Begin
    AFont.Color := clWhite;
    ABrush.Color := clBackground;
  End
  Else
  Begin
    IF DM1.cdsListaCreA.FieldByName('CODEST').AsString = 'A' THEN
    BEGIN
      AFont.Color := clWhite;
      ABrush.Color := clSkyBlue;
    END
    ELSE IF DM1.cdsListaCreA.FieldByName('CODEST').AsString = 'E' THEN
    BEGIN
      AFont.Color := clWhite;
      ABrush.Color := clRed;
    END;
  End;
end;

procedure TFPadronRegsPorDNI.btnVerErroresClick(Sender: TObject);
begin
  if DM1.cdsListaCreA.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FPadronErrores := TFPadronErrores.Create(Self);
    FPadronErrores.CODPAD := DM1.cdsListaCreA.FieldByName('CODPAD').AsString;
    FPadronErrores.CODITEM := DM1.cdsListaCreA.FieldByName('CODITEM').AsInteger;
    FPadronErrores.ShowModal;
  Finally
    FPadronErrores.Free;
  End;
end;

end.

