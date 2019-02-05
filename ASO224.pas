// Inicio Uso Estándares     : 01/08/2011
// Unidad		            : ASO224.pas
// Formulario		        : FPadronConteo
// Fecha de Creación	     : 28/02/2012
// Autor			         : Daniel Fernández
// Objetivo		          : Realizar el conteo de DNIs de un padrón

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO            : 28/02/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201309_ASO            : La tabla ASO_PAD_DET_HIS se usa para un padrón cerrado, sino ASO_PAD_DET
// SPP_201310_ASO            : Se realiza el pase a producción a partir del HPC_201309_ASO
// HPC_201310_ASO            : 05/07/2013 Se cambio el tamaño del formulario con la propiedad "Height"
// SPP_201311_ASO            : Se realiza el pase a producción a partir del HPC_201310_ASO

unit ASO224;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, DB;

type
  TFPadronConteo = class(TForm)
    dbgPadrones: TwwDBGrid;
    btnSalir: TBitBtn;
    btnEliminarDNI8: TBitBtn;
    btnVerRegistro: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure dbgPadronesDblClick(Sender: TObject);
    procedure btnVerRegistroClick(Sender: TObject);
    procedure btnEliminarDNI8Click(Sender: TObject);
    procedure dbgPadronesTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure dbgPadronesCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
  private
    { Private declarations }
  public
    { Public declarations }
    CODPAD: string;
    procedure CargarDatos;
  end;

var
  FPadronConteo: TFPadronConteo;

implementation

uses ASODM, ASO219;

{$R *.dfm}

procedure TFPadronConteo.FormActivate(Sender: TObject);
begin
  if DM1.cdsPadrones.FieldByName('CODEST').AsString = 'D' then
    btnEliminarDNI8.Enabled := true
  else
    btnEliminarDNI8.Enabled := false;
  CargarDatos;
end;

procedure TFPadronConteo.CargarDatos;
var
  xSql: string;
  fila_actual: integer;
begin
  Screen.Cursor := crHourGlass;
  if not DM1.cdsQry1.IsEmpty then
    fila_actual := DM1.cdsQry1.RecNo
  else
    fila_actual := 0;

  // Inicio: SPP_201310_ASO  
  xSql := 'SELECT'
    + '    P.CODPAD, P.CODITEM, P.CODEST, P.ASOAPENOM, P.ASODNI, P.ASOCODMOD, P.ASOTIPID,'
    + '    CASE WHEN LENGTH(P.ASODNI) <> 8 THEN P.ASODNI ELSE NULL END ASODNIERR,'
    + '    CASE WHEN LENGTH(P.ASODNI) <> 8 THEN LENGTH(P.ASODNI) ELSE NULL END LENASODNI,'
    + '    CASE WHEN P.ASOCODMOD IN (SELECT P2.ASOCODMOD FROM ASO_PAD_DET P2 WHERE P2.CODPAD = ' + QuotedStr(CODPAD) + ' AND P.ASOCODMOD = P2.ASOCODMOD GROUP BY P2.ASOCODMOD HAVING COUNT(1) > 1 AND MIN(P2.ASODNI) <> MAX(P2.ASODNI)) THEN ''REPETIDO'' ELSE '''' END CODMODREP'
    + ' FROM ' + DM1.sTablaPadron + ' P'
    + ' WHERE'
    + '    P.CODPAD = ' + QuotedStr(CODPAD)
    + '    AND (LENGTH(P.ASODNI) <> 8'
    + '       OR P.ASOCODMOD IN (SELECT P2.ASOCODMOD FROM ASO_PAD_DET P2 WHERE P2.CODPAD = ' + QuotedStr(CODPAD) + ' AND P.ASOCODMOD = P2.ASOCODMOD GROUP BY P2.ASOCODMOD HAVING COUNT(1) > 1 AND MIN(P2.ASODNI) <> MAX(P2.ASODNI))'
    + '    )';
  // Fin: SPP_201310_ASO 
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  
  dbgPadrones.Refresh;
  dbgPadrones.Selected.Clear;
  dbgPadrones.Selected.Add('CODITEM'#9'7'#9'Código'#9#9);
  dbgPadrones.Selected.Add('ASOAPENOM'#9'50'#9'Apellidos y nombres'#9#9);
  dbgPadrones.Selected.Add('CODEST'#9'6'#9'Estado'#9#9);
  dbgPadrones.Selected.Add('ASODNI'#9'12'#9'DNI'#9#9);
  dbgPadrones.Selected.Add('ASOCODMOD'#9'11'#9'Código~modular'#9#9);
  dbgPadrones.Selected.Add('ASOTIPID'#9'4'#9'Tipo~Aso'#9#9);
  dbgPadrones.Selected.Add('ASODNIERR'#9'12'#9'DNI~errado'#9#9);
  dbgPadrones.Selected.Add('LENASODNI'#9'8'#9'Longitud~DNI'#9#9);
  dbgPadrones.Selected.Add('CODMODREP'#9'12'#9'Cod.mod.~repetido'#9#9);
  dbgPadrones.ApplySelected;
  
  dbgPadrones.ColumnByName('CODITEM').FooterValue := IntToStr(DM1.cdsQry1.RecordCount);
  dbgPadrones.ColumnByName('ASOAPENOM').FooterValue := 'Registros';
  dbgPadrones.RefreshDisplay;
  
  DM1.cdsQry1.MoveBy(fila_actual - 1);
  Screen.Cursor := crDefault;
end;

procedure TFPadronConteo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry1.IndexFieldNames := '';
  DM1.cdsQry1.Close;
end;

procedure TFPadronConteo.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadronConteo.dbgPadronesDblClick(Sender: TObject);
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
      CargarDatos;
  Finally
    FPadronRegistro.Free;
  End;
end;

procedure TFPadronConteo.btnVerRegistroClick(Sender: TObject);
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
      CargarDatos;
  Finally
    FPadronRegistro.Free;
  End;
end;

procedure TFPadronConteo.btnEliminarDNI8Click(Sender: TObject);
var
  xSql: string;
begin
  If MessageDlg('¿Está seguro de eliminar los registros cuyo DNI no tiene 8 dígitos?', mtConfirmation,[mbYes,mbNo],0) <> mrYes then Exit;
  
  Screen.Cursor := crHourGlass;
  xSql := 'UPDATE ASO_PAD_DET '
    + 'SET CODEST = ''E'','
    + ' ACTUALIZA = ''N'','
    + ' FECMOD = SYSDATE,'
    + ' USUMOD = ' + QuotedStr(DM1.wUsuario)
    + 'WHERE CODPAD = ' + QuotedStr(CODPAD)
    + '  AND LENGTH(ASODNI) <> 8'
    + '  AND CODEST = ''P''';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);

  //Clasifica los registros de acuerdo a la duplicidad de DNIs
  xSql := 'UPDATE ASO_PAD_DET D'
    + '    SET D.TIPDNI = ''M'''
    + '    WHERE'
    + '      D.CODPAD = ' + QuotedStr(CODPAD)
    + '      AND D.ASODNI IN (SELECT A.ASODNI'
    + '        FROM ASO_PAD_DET A'
    + '        WHERE A.CODPAD = ' + QuotedStr(CODPAD)
    + '          AND A.ASODNI = D.ASODNI'
    + '        GROUP BY A.ASODNI'
    + '        HAVING COUNT(1) > 2)';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  xSql := 'UPDATE ASO_PAD_DET D'
    + '    SET D.TIPDNI = ''D'''
    + '    WHERE'
    + '      D.CODPAD = ' + QuotedStr(CODPAD)
    + '      AND D.ASODNI IN (SELECT A.ASODNI'
    + '        FROM ASO_PAD_DET A'
    + '        WHERE A.CODPAD = ' + QuotedStr(CODPAD)
    + '           AND A.ASODNI = D.ASODNI'
    + '        GROUP BY A.ASODNI'
    + '        HAVING COUNT(1) = 2)';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  xSql := 'UPDATE ASO_PAD_DET D'
    + '    SET D.TIPDNI = ''U'''
    + '    WHERE'
    + '       D.CODPAD = ' + QuotedStr(CODPAD)
    + '       AND D.ASODNI IN (SELECT A.ASODNI'
    + '        FROM ASO_PAD_DET A'
    + '        WHERE A.CODPAD = ' + QuotedStr(CODPAD)
    + '           AND A.ASODNI = D.ASODNI'
    + '        GROUP BY A.ASODNI'
    + '        HAVING COUNT(1) = 1)';
  DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  
  CargarDatos;
  Screen.Cursor := crDefault;
  
  ShowMessage('Operación concluida exitosamente');
end;

procedure TFPadronConteo.dbgPadronesTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  DM1.cdsQry1.IndexFieldNames := AFieldName;
end;

procedure TFPadronConteo.dbgPadronesCalcCellColors(Sender: TObject;
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
    IF DM1.cdsQry1.FieldByName('CODEST').AsString = 'A' THEN
    BEGIN
      AFont.Color := clWhite;
      ABrush.Color := clSkyBlue;
    END
    ELSE IF DM1.cdsQry1.FieldByName('CODEST').AsString = 'E' THEN
    BEGIN
       AFont.Color :=  clBlack; //clWhite;
       ABrush.Color := $00E9D2FF;
    END;
  End;
end;

end.

