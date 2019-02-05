// Inicio Uso Estándares     : 01/08/2011
// Unidad		            : ASO220.pas
// Formulario		        : FPadronEstadisticas
// Fecha de Creación	     : 28/02/2012
// Autor			         : Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Consultar las estadísticas de avance de un padrón

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO            : 28/02/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201309_ASO            : La tabla ASO_PAD_DET_HIS se usa para un padrón cerrado, sino ASO_PAD_DET
// SPP_201310_ASO            : Se realiza el pase a producción a partir del HPC_201309_ASO

unit ASO220;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons,
  DB, DBGrids;

type
  TFPadronResumen = class(TForm)
    dbgPadrones: TwwDBGrid;
    btnSalir: TBitBtn;
    btnaExcel: TBitBtn;
    dtgData: TDBGrid;
    procedure FormActivate(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnaExcelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    CODPAD: string;
  end;

var
  FPadronResumen: TFPadronResumen;

implementation

uses ASODM;

{$R *.dfm}

procedure TFPadronResumen.FormActivate(Sender: TObject);
var
  xSql: string;
  CantReg, CantDni, DNIAcep, DNIEli, DNIPen, RegAct, RegNoAct: integer;
begin
  Screen.Cursor := crHourGlass;
  
  // Inicio: SPP_201310_ASO
  xSql := 'SELECT X.TIPDNI, X.COD_EMPRESA CODREGION, X.EMPRESA REGION, X.TIPODNI, X.CANTREG, X.CANTDNI, X.DNIACEP, NVL(Y.DNIELI,0) DNIELI, X.CANTDNI - X.DNIACEP - NVL(Y.DNIELI,0) DNIPEN,'
    + ' X.DNIACT, X.DNINOACT'
    + ' FROM'
    + '     (SELECT P.TIPDNI, P.COD_EMPRESA, MAX(P.EMPRESA) EMPRESA, CASE P.TIPDNI WHEN ''U'' THEN ''Unicos'' WHEN ''D'' THEN ''Duplicados'' WHEN ''M'' THEN ''Multiplicados'' END TIPODNI,'
    + '          COUNT(1) CANTREG,'
    + '          COUNT(DISTINCT P.ASODNI) CANTDNI,'
    + '          SUM(CASE P.CODEST WHEN ''A'' THEN 1 ELSE 0 END) DNIACEP,'
    + '          SUM(CASE P.ACTUALIZA WHEN ''S'' THEN 1 ELSE 0 END) DNIACT,'
    + '          COUNT(DISTINCT P.ASODNI) - SUM(CASE P.ACTUALIZA WHEN ''S'' THEN 1 ELSE 0 END) DNINOACT'
    + '     FROM ' + DM1.sTablaPadron + ' P'
    + '     WHERE P.CODPAD = ' + QuotedStr(CODPAD)
    + '     GROUP BY P.TIPDNI, P.COD_EMPRESA) X'
    + '         LEFT JOIN'
    + '     (SELECT Y.TIPDNI, Y.COD_EMPRESA, COUNT(DISTINCT Y.ASODNI) DNIELI'
    + '     FROM (SELECT X.TIPDNI, X.ASODNI, X.COD_EMPRESA'
    + '             FROM ' + DM1.sTablaPadron + ' X'
    + '             WHERE X.CODPAD = ' + QuotedStr(CODPAD)
    + '             GROUP BY X.TIPDNI, X.ASODNI, X.COD_EMPRESA'
    + '             HAVING MIN(X.CODEST) = ''E'' AND MIN(X.CODEST) = MAX(X.CODEST)) Y'
    + '     GROUP BY Y.TIPDNI, Y.COD_EMPRESA) Y ON'
    + '     X.TIPDNI = Y.TIPDNI'
    + '     AND X.COD_EMPRESA = Y.COD_EMPRESA'
    + '     ORDER BY CASE X.TIPDNI WHEN ''U'' THEN 10 WHEN ''D'' THEN 20 ELSE 30 END, X.EMPRESA';
  // Fin: SPP_201310_ASO
  
  DM1.cdsQry20.Close;
  DM1.cdsQry20.DataRequest(xSql);
  DM1.cdsQry20.Open;

  DM1.cdsQry20.First;
  CantReg := 0;
  CantDni := 0;
  DNIAcep := 0;
  DNIEli := 0;
  DNIPen := 0;
  RegAct := 0;
  RegNoAct := 0;
  while not DM1.cdsQry20.Eof do
  begin
    CantReg := CantReg + DM1.cdsQry20.FieldByName('CANTREG').AsInteger;
    CantDni := CantDni + DM1.cdsQry20.FieldByName('CANTDNI').AsInteger;
    DNIAcep := DNIAcep + DM1.cdsQry20.FieldByName('DNIACEP').AsInteger;
    DNIEli := DNIEli + DM1.cdsQry20.FieldByName('DNIELI').AsInteger;
    DNIPen := DNIPen + DM1.cdsQry20.FieldByName('DNIPEN').AsInteger;
    RegAct := RegAct + DM1.cdsQry20.FieldByName('DNIACT').AsInteger;
    RegNoAct := RegNoAct + DM1.cdsQry20.FieldByName('DNINOACT').AsInteger;
    DM1.cdsQry20.Next;
  end;
  
  dbgPadrones.Refresh;
  dbgPadrones.Selected.Clear;
  dbgPadrones.Selected.Add('TIPODNI'#9'15'#9'Tipo DNI'#9#9);
  dbgPadrones.Selected.Add('CODREGION'#9'9'#9'Cod.Región'#9#9);
  dbgPadrones.Selected.Add('REGION'#9'20'#9'Región'#9#9);
  dbgPadrones.Selected.Add('CANTREG'#9'8'#9'Cantidad~Registros'#9#9);
  dbgPadrones.Selected.Add('CANTDNI'#9'8'#9'Cantidad~DNI'#9#9);
  dbgPadrones.Selected.Add('DNIACEP'#9'8'#9'DNI~Aceptados'#9#9);
  dbgPadrones.Selected.Add('DNIELI'#9'8'#9'DNI~Eliminados'#9#9);
  dbgPadrones.Selected.Add('DNIPEN'#9'8'#9'DNI~Pendientes'#9#9);
  dbgPadrones.Selected.Add('DNIACT'#9'8'#9'DNI~actualizables'#9#9);
  dbgPadrones.Selected.Add('DNINOACT'#9'8'#9'DNI No~actualizables'#9#9);
  dbgPadrones.ApplySelected;
  
  TNumericField(DM1.cdsQry20.FieldByName('CANTREG')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsQry20.FieldByName('CANTDNI')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsQry20.FieldByName('DNIACEP')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsQry20.FieldByName('DNIELI')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsQry20.FieldByName('DNIPEN')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsQry20.FieldByName('DNIACT')).DisplayFormat:='###,##0';
  TNumericField(DM1.cdsQry20.FieldByName('DNINOACT')).DisplayFormat:='###,##0';

  dbgPadrones.ColumnByName('TIPODNI').FooterValue := IntToStr(DM1.cdsQry20.RecordCount) + ' Registros';
  dbgPadrones.ColumnByName('CANTREG').FooterValue := FormatFloat('###,##0',CantReg);
  dbgPadrones.ColumnByName('CANTDNI').FooterValue := FormatFloat('###,##0',CantDni);
  dbgPadrones.ColumnByName('DNIACEP').FooterValue := FormatFloat('###,##0',DNIAcep);
  dbgPadrones.ColumnByName('DNIELI').FooterValue := FormatFloat('###,##0',DNIEli);
  dbgPadrones.ColumnByName('DNIPEN').FooterValue := FormatFloat('###,##0',DNIPen);
  dbgPadrones.ColumnByName('DNIACT').FooterValue := FormatFloat('###,##0',RegAct);
  dbgPadrones.ColumnByName('DNINOACT').FooterValue := FormatFloat('###,##0',RegNoAct);
  dbgPadrones.RefreshDisplay;
  
  Screen.Cursor := crDefault;
end;

procedure TFPadronResumen.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry20.Close;
end;

procedure TFPadronResumen.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadronResumen.btnaExcelClick(Sender: TObject);
begin
  DM1.HojaExcel('Resumen', DM1.dsQry20, dtgData);
end;

end.

