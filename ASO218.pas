// Inicio Uso Estándares  : 01/08/2011
// Unidad		         : ASO218.pas
// Formulario		     : FPadronMultiplicados
// Fecha de Creación	  : 28/02/2012
// Autor			      : Equipo de Desarrollo de Sistemas DM
// Objetivo		       : Consultar los registros con DNI multiplicado, de 3 a mas 

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO   : 28/02/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO   : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201305_ASO   : Se agrega búsqueda por número de cuenta de ahorros
// SPP_201306_ASO   : Se realiza el pase a producción a partir del HPC_201305_ASO
// HPC_201309_ASO   : La tabla ASO_PAD_DET_HIS se usa para un padrón cerrado, sino ASO_PAD_DET
// SPP_201310_ASO   : Se realiza el pase a producción a partir del HPC_201309_ASO
// HPC_201405_ASO   : Mantenimiento de padron general 
// SPP_201405_ASO   : Pase a producción a apartir del HPC_201405_ASO   
// HPC_201408_ASO   : Mejorar el tiempo de procesamiento
// SPP_201409_ASO   : Se realiza el pase a producción a partir del HPC_201408_ASO
// HPC_201505_ASO   : Criterios de aceptación de registros duplicados,multiplicados y no duplicados para actualización.

unit ASO218;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, Mask, wwdblook,
  Wwdbdlg, DB;

type
  TFPadronMultiplicados = class(TForm)
    grpTipoRegistro: TGroupBox;
    dblcdEstado: TwwDBLookupComboDlg;
    edtEstado: TMaskEdit;
    btnMostrar: TBitBtn;
    btnSalir: TBitBtn;
    dbgPadron: TwwDBGrid;
    btnVerRegistro: TBitBtn;
    grpBuscarAsociado: TGroupBox;
    rbtApeNom: TRadioButton;
    rbtDni: TRadioButton;
    edtBuscar: TEdit;
    rbtCodMod: TRadioButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    dblcddptoid: TwwDBLookupComboDlg;
    dblcdasotipid: TwwDBLookupComboDlg;
    edtdptodes: TMaskEdit;
    edtasotipdes: TMaskEdit;
    btnVerPorDni: TBitBtn;
    btnReemplazarTexto: TBitBtn;
    btnVerErrores: TBitBtn;
    Label2: TLabel;
    Label4: TLabel;
    dblcdInconsistencia: TwwDBLookupComboDlg;
    edtInconsistencia: TMaskEdit;
    chkASOIDNOTNULL: TCheckBox;
    btnEliminar: TBitBtn;
    rbtCuentaAhorros: TRadioButton; //SPP_201306_ASO
    //Inicio: SPP_201405_ASO
    btnProcesar: TBitBtn;
    //Inicio: SPP_201409_ASO
    lbl: TLabel;
    lblTotalRegPen: TLabel;
    Label5: TLabel;
    //Fin: SPP_201409_ASO
    //Fin: SPP_201405_ASO
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnMostrarClick(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure rbTodosEstadosClick(Sender: TObject);
    procedure rbEstadoClick(Sender: TObject);
    procedure dblcdEstadoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblcddptoidChange(Sender: TObject);
    procedure dblcdasotipidChange(Sender: TObject);
    procedure btnVerRegistroClick(Sender: TObject);
    procedure dbgPadronDblClick(Sender: TObject);
    procedure dbgPadronCalcCellColors(Sender: TObject; Field: TField;
      State: TGridDrawState; Highlight: Boolean; AFont: TFont;
      ABrush: TBrush);
    procedure rbtApeNomClick(Sender: TObject);
    procedure rbtDniClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
    procedure btnVerPorDniClick(Sender: TObject);
    procedure btnReemplazarTextoClick(Sender: TObject);
    procedure btnVerErroresClick(Sender: TObject);
    procedure dblcdInconsistenciaChange(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure rbtCuentaAhorrosClick(Sender: TObject); //SPP_201306_ASO
    //Inicio: SPP_201405_ASO
    procedure btnProcesarClick(Sender: TObject);
    //fin: SPP_201405_ASO
  private
    { Private declarations }
  public
    { Public declarations }
    CODPAD: string;
  end;

var
  FPadronMultiplicados: TFPadronMultiplicados;

implementation

uses ASODM, ASO219, ASO223, ASO229, ASO231;

{$R *.dfm}

procedure TFPadronMultiplicados.FormCreate(Sender: TObject);
var
  xSql: string;
begin
  xSql := 'SELECT CODEST, DESEST FROM ASO_PAD_EST_TRAB_MAE ORDER BY DESEST';
//Inicio: SPP_201405_ASO
  DM1.cdsTemp2.Close;
  DM1.cdsTemp2.DataRequest(xSql);
  DM1.cdsTemp2.Open;
//Fin: SPP_201405_ASO  
  dblcdEstado.Selected.Clear;
  dblcdEstado.Selected.Add('CODEST'#9'2'#9'Código'#9#9);
  dblcdEstado.Selected.Add('DESEST'#9'15'#9'Estado'#9#9);
  
  dblcdEstado.Text := 'P';
  
  rbEstadoClick(self);
  
  //Inconsistencias
  xSql := 'SELECT CODTIPREG, DESTIPREG FROM ASO_PAD_TIP_LOG ORDER BY CODTIPREG';
  DM1.cdsInconsistencia.Close;
  DM1.cdsInconsistencia.DataRequest(xSql);
  DM1.cdsInconsistencia.Open;
  
  dblcdInconsistencia.Selected.Clear;
  dblcdInconsistencia.Selected.Add('CODTIPREG'#9'3'#9'Código'#9#9);
  dblcdInconsistencia.Selected.Add('DESTIPREG'#9'60'#9'Inconsistencia'#9#9);
  
  xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'', ''CE'', ''CO'', ''VO'')'
    + ' UNION ALL SELECT ''99'' ASOTIPID, ''OTROS'' ASOTIPDES FROM DUAL';
  DM1.cdsTAso.Close;
  DM1.cdsTAso.DataRequest(xSql);
  DM1.cdsTAso.Open;
  dblcdasotipid.Selected.Clear;
  dblcdasotipid.Selected.Add('ASOTIPID'#9'3'#9'Código'#9#9);
  dblcdasotipid.Selected.Add('ASOTIPDES'#9'17'#9'Descripción'#9#9);
  
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
    + ' P.USUMOD, P.ASOAPENOM, '''' ACTUALIZA, '' '' DESEST'
    + ' FROM ASO_PAD_DET P'
    + ' WHERE 1 = 2';

  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;

  dbgPadron.Refresh;
  dbgPadron.Selected.Clear;
  dbgPadron.Selected.Add('CODITEM'#9'8'#9'ID'#9#9);
  dbgPadron.Selected.Add('DESEST'#9'10'#9'Estado'#9#9);
  dbgPadron.Selected.Add('ACTUALIZA'#9'10'#9'Actualizable'#9#9);
  dbgPadron.Selected.Add('ASODNI'#9'10'#9'DNI'#9#9);
  dbgPadron.Selected.Add('ASOAPEPAT'#9'20'#9'Apellido Paterno'#9#9);
  dbgPadron.Selected.Add('ASOAPEMAT'#9'20'#9'Apellido Materno'#9#9);
  dbgPadron.Selected.Add('ASONOMBRES'#9'20'#9'Nombres'#9#9);
  dbgPadron.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso.'#9#9);
  dbgPadron.Selected.Add('SITACT'#9'6'#9'Sit.Act.'#9#9);
  dbgPadron.Selected.Add('CARGO'#9'7'#9'Cargo'#9#9);
  dbgPadron.Selected.Add('EMPRESA'#9'12'#9'Región'#9#9);
  dbgPadron.Selected.Add('TIPSER'#9'6'#9'Cod.Ser.'#9#9);
  dbgPadron.Selected.Add('DESC_SERVIDOR'#9'15'#9'Desc.Servidor'#9#9);
  dbgPadron.Selected.Add('CARLAB'#9'6'#9'Cod.Cargo.'#9#9);
  dbgPadron.Selected.Add('DES_CARGO'#9'15'#9'Desc.Cargo'#9#9);
  dbgPadron.Selected.Add('HABER'#9'10'#9'Ing. Bruto'#9#9);
  dbgPadron.ApplySelected;
  
  edtBuscar.Width := 300;
  edtBuscar.Height := 28;

  if DM1.cdsPadrones.FieldByName('CODEST').AsString <> 'P' then
  begin
    Exit;
  end;
end;

procedure TFPadronMultiplicados.FormActivate(Sender: TObject);
var
  xSql: string;
begin
  // Inicio: SPP_201310_ASO
  xSql := 'SELECT DISTINCT COD_EMPRESA, EMPRESA FROM ' + DM1.sTablaPadron + ' WHERE CODPAD = ' + QuotedStr(CODPAD) + ' ORDER BY EMPRESA';
  // Fin: SPP_201310_ASO
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  //Inicio: SPP_201409_ASO
  dblcddptoid.LookupTable := DM1.cdsDpto;
  dblcddptoid.LookupField := 'COD_EMPRESA';
  //Fin: SPP_201409_ASO
  dblcddptoid.Selected.Clear;
  dblcddptoid.Selected.Add('COD_EMPRESA'#9'3'#9'Código'#9#9);
  dblcddptoid.Selected.Add('EMPRESA'#9'17'#9'Descripción'#9#9);
  
  Self.Caption := Self.Caption + ' ' + CODPAD;  
end;

procedure TFPadronMultiplicados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry1.Close;
//Inicio: SPP_201405_ASO
  DM1.cdsTemp2.Close;
//Fin: SPP_201405_ASO
  DM1.cdsDpto.Close;
  DM1.cdsTAso.Close;
end;

// Inicio HPC_201505_ASO
procedure TFPadronMultiplicados.btnMostrarClick(Sender: TObject);
var
  xSql, xSql2: string;
begin
  Screen.Cursor := crHourGlass;
  //Inicio: SPP_201409_ASO
  //Total de Registros pendientes
    xSql := 'SELECT COUNT(*) CONT FROM ASO_PAD_DET D WHERE D.CODPAD='+QuotedStr(CODPAD)+' AND D.TIPDNI=''M'' AND D.CODEST=''P''';

  DM1.cdsTemp.Close;
  DM1.cdsTemp.DataRequest(xSql);
  DM1.cdsTemp.Open;
  lblTotalRegPen.Caption:=DM1.cdsTemp.FieldByName('CONT').AsString;

  // Inicio: SPP_201310_ASO
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
    + ' P.USUMOD, P.ASOAPENOM, P.ACTUALIZA, E.DESEST,'
    + ' CASE WHEN P.CODITEM IN (SELECT L.CODITEM FROM ' + DM1.sTablaLogPadron + ' L WHERE L.CODPAD = P.CODPAD AND L.CODITEM = P.CODITEM AND L.CODTIPREG = ' + QuotedStr(dblcdInconsistencia.Text) + ') THEN ''S'' ELSE ''N'' END INCONSISTENCIA'
    + ' FROM ' + DM1.sTablaPadron + ' P'
    + '   INNER JOIN'
    + ' ASO_PAD_EST_TRAB_MAE E ON'
    + ' P.CODEST = E.CODEST'
    + ' WHERE P.CODPAD = ' + QuotedStr(CODPAD)
    + '   AND P.TIPDNI IN (''D'',''M'') ';
  xSql2 := 'SELECT P.ASODNI'
    + ' FROM ' + DM1.sTablaPadron + ' P'
    + '   INNER JOIN'
    + ' ASO_PAD_EST_TRAB_MAE E ON'
    + ' P.CODEST = E.CODEST'
    + ' WHERE P.CODPAD = ' + QuotedStr(CODPAD)
    + '   AND P.TIPDNI IN (''D'',''M'') AND ROWNUM <=100';
  // Fin: SPP_201310_ASO
  if chkASOIDNOTNULL.Checked then
  begin
    xSql := xSql + '   AND P.ASOID IS NOT NULL';
    xSql2 := xSql2 + '   AND P.ASOID IS NOT NULL';
  end;
  if edtEstado.Text <> '' then
  begin
    xSql := xSql + '   AND P.CODEST = ' + QuotedStr(dblcdEstado.Text);
    xSql2 := xSql2 + '   AND P.CODEST = ' + QuotedStr(dblcdEstado.Text);
  end;
  if edtdptodes.Text <> '' then
  begin
    xSql := xSql + '   AND P.COD_EMPRESA = ' + QuotedStr(dblcddptoid.Text);
    xSql2 := xSql2 + '   AND P.COD_EMPRESA = ' + QuotedStr(dblcddptoid.Text);
  end;
  if edtasotipdes.Text <> '' then
  begin
    xSql := xSql + '   AND P.ASOTIPID = ' + QuotedStr(dblcdasotipid.Text);
    xSql2 := xSql2 + '   AND P.ASOTIPID = ' + QuotedStr(dblcdasotipid.Text);
  end;
  if Trim(edtBuscar.Text) <> '' then
  begin
    // Inicio: SPP_201306_ASO
    if rbtApeNom.Checked then
    begin
      xSql := xSql + '   AND P.ASOAPENOM LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      xSql2 := xSql2 + '   AND P.ASOAPENOM LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
    end
    else if rbtDni.Checked then
    begin
      xSql := xSql + '   AND P.ASODNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      xSql2 := xSql2 + '   AND P.ASODNI LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
    end
    else if rbtCodMod.Checked then
    begin
      xSql := xSql + '   AND P.ASOCODMOD LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      xSql2 := xSql2 + '   AND P.ASOCODMOD LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
    end
    else if rbtCuentaAhorros.Checked then
    begin
      xSql := xSql + '   AND P.ASONCTA LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%');
      xSql2 := xSql2 + '   AND P.ASONCTA LIKE ' + QuotedStr(Trim(edtBuscar.Text) + '%')
    end;
    // Fin: SPP_201306_ASO
  end;
  if edtInconsistencia.Text <> '' then
  begin
    // Inicio: SPP_201310_ASO
    xSql := xSql + '   AND P.CODITEM IN (SELECT L.CODITEM FROM ' + DM1.sTablaLogPadron + ' L WHERE L.CODPAD = P.CODPAD AND L.CODITEM = P.CODITEM AND L.CODTIPREG = ' + QuotedStr(dblcdInconsistencia.Text) + ')';
    xSql2 := xSql2 + '   AND P.CODITEM IN (SELECT L.CODITEM FROM ' + DM1.sTablaLogPadron + ' L WHERE L.CODPAD = P.CODPAD AND L.CODITEM = P.CODITEM AND L.CODTIPREG = ' + QuotedStr(dblcdInconsistencia.Text) + ')';
    // Fin: SPP_201310_ASO
  end;
  xSql := xSql + ' ORDER BY P.ASODNI, P.HABER DESC';
  xSql2 := xSql2 + ' GROUP BY P.ASODNI';
  
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest('SELECT CODPAD,CODITEM,CODEST,ASOCODMOD,SECUENCIAL,ASODNI,ASOAPEPAT, '+
                          'ASOAPEMAT,ASONOMBRES,PLANILLA,FISCAL,SITUACION,COD_EMPRESA, '+
                          'EMPRESA,USEID,USENOM,TIPSER,DESC_SERVIDOR,ASOCODPAGO,NOMBRE_IE, '+
                          'CARLAB,DES_CARGO,COD_REGLAB,REGLAB,ASONCTA,HABER,DESCUENTO,LIQUIDO, '+
                          'CARGO,ASOTIPID,REGPENID,SITACT,UPROID,UPAGOID,CODMOD,NIVEDU_ID,FECREG, '+
                          'USUREG,FECMOD,USUMOD,ASOAPENOM,ACTUALIZA,DESEST,INCONSISTENCIA FROM ('+ xSql +  ')WHERE ROWNUM <=100');
  DM1.cdsQry1.Open;

  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest('SELECT ASODNI FROM ('+ xSql2 +  ')WHERE ROWNUM <=100');
  DM1.cdsQry.Open;
  //Fin: SPP_201409_ASO
  dbgPadron.Refresh;
  dbgPadron.Selected.Clear;
  dbgPadron.Selected.Add('CODITEM'#9'8'#9'ID'#9#9);
  dbgPadron.Selected.Add('DESEST'#9'10'#9'Estado'#9#9);
  dbgPadron.Selected.Add('ACTUALIZA'#9'10'#9'Actualizable'#9#9);
  dbgPadron.Selected.Add('ASODNI'#9'10'#9'DNI'#9#9);
  dbgPadron.Selected.Add('ASOAPEPAT'#9'20'#9'Apellido Paterno'#9#9);
  dbgPadron.Selected.Add('ASOAPEMAT'#9'20'#9'Apellido Materno'#9#9);
  dbgPadron.Selected.Add('ASONOMBRES'#9'20'#9'Nombres'#9#9);
  dbgPadron.Selected.Add('ASOTIPID'#9'8'#9'Tipo Aso.'#9#9);
  dbgPadron.Selected.Add('SITACT'#9'6'#9'Sit.Act.'#9#9);
  dbgPadron.Selected.Add('CARGO'#9'7'#9'Cargo'#9#9);
  dbgPadron.Selected.Add('EMPRESA'#9'12'#9'Región'#9#9);
  dbgPadron.Selected.Add('TIPSER'#9'6'#9'Cod.Ser.'#9#9);
  dbgPadron.Selected.Add('DESC_SERVIDOR'#9'15'#9'Desc.Servidor'#9#9);
  dbgPadron.Selected.Add('CARLAB'#9'6'#9'Cod.Cargo.'#9#9);
  dbgPadron.Selected.Add('DES_CARGO'#9'15'#9'Desc.Cargo'#9#9);
  dbgPadron.Selected.Add('HABER'#9'10'#9'Ing. Bruto'#9#9);
  dbgPadron.ApplySelected;
  
  TNumericField(DM1.cdsQry1.FieldByName('HABER')).DisplayFormat:='###,##0.00';
  
  dbgPadron.ColumnByName('CODITEM').FooterValue := IntToStr(DM1.cdsQry1.RecordCount);
  dbgPadron.ColumnByName('DESEST').FooterValue := 'Registros';
  dbgPadron.ColumnByName('ASODNI').FooterValue := IntToStr(DM1.cdsQry.RecordCount);
  dbgPadron.ColumnByName('ASOAPEPAT').FooterValue := 'DNIs';
  dbgPadron.RefreshDisplay;

  DM1.cdsQry.Close;
  
  Screen.Cursor := crDefault;
end;
// Fin HPC_201505_ASO

procedure TFPadronMultiplicados.btnSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadronMultiplicados.rbTodosEstadosClick(Sender: TObject);
begin
  dblcdEstado.Text := '';
  dblcdEstado.Enabled := false;
  edtEstado.Text := '';
  edtEstado.Enabled := false;
end;

procedure TFPadronMultiplicados.rbEstadoClick(Sender: TObject);
begin
  dblcdEstado.Enabled := true;
  edtEstado.Enabled := true;
end;

//Inicio: SPP_201405_ASO
procedure TFPadronMultiplicados.dblcdEstadoChange(Sender: TObject);
begin
  If DM1.cdsTemp2.Locate('CODEST',VarArrayof([dblcdEstado.text]),[]) Then
  begin
    edtEstado.Text := DM1.cdsTemp2.FieldByName('DESEST').AsString;
  end
  else
  begin
    edtEstado.Text := '';
  end;
end;
//Fin: SPP_201405_ASO
procedure TFPadronMultiplicados.dblcddptoidChange(Sender: TObject);
begin
  If DM1.cdsDpto.Locate('COD_EMPRESA',VarArrayof([dblcddptoid.text]),[]) Then
  begin
    edtdptodes.Text := DM1.cdsDpto.FieldByName('EMPRESA').AsString;
  end
  else
  begin
    edtdptodes.Text := '';
  end;
end;

procedure TFPadronMultiplicados.dblcdasotipidChange(Sender: TObject);
begin
  If DM1.cdsTAso.Locate('ASOTIPID',VarArrayof([dblcdasotipid.text]),[]) Then
  begin
    edtasotipdes.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').AsString;
  end
  else
  begin
    edtasotipdes.Text := '';
  end;
end;

procedure TFPadronMultiplicados.btnVerRegistroClick(Sender: TObject);
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

procedure TFPadronMultiplicados.dbgPadronDblClick(Sender: TObject);
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

procedure TFPadronMultiplicados.dbgPadronCalcCellColors(
  Sender: TObject; Field: TField; State: TGridDrawState;
  Highlight: Boolean; AFont: TFont; ABrush: TBrush);
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
      AFont.Color := clWhite;
      ABrush.Color := clRed;
    END;
  End;
end;

procedure TFPadronMultiplicados.rbtApeNomClick(Sender: TObject);
begin
edtBuscar.Width:=300; edtBuscar.Height := 28;
edtBuscar.SetFocus;
edtBuscar.Text := '';
end;

procedure TFPadronMultiplicados.rbtDniClick(Sender: TObject);
begin
edtBuscar.Width:=114; edtBuscar.Height := 24;
edtBuscar.SetFocus;
edtBuscar.Text := '';
end;

procedure TFPadronMultiplicados.rbtCodModClick(Sender: TObject);
begin
edtBuscar.Width:=114; edtBuscar.Height := 24;
edtBuscar.SetFocus;
edtBuscar.Text := '';
end;

procedure TFPadronMultiplicados.btnVerPorDniClick(Sender: TObject);
begin
  if DM1.cdsQry1.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FPadronRegsPorDNI := TFPadronRegsPorDNI.Create(Self);
    FPadronRegsPorDNI.CODPAD := DM1.cdsQry1.FieldByName('CODPAD').AsString;
    FPadronRegsPorDNI.ASODNI := DM1.cdsQry1.FieldByName('ASODNI').AsString;
    FPadronRegsPorDNI.ShowModal;
  Finally
    FPadronRegsPorDNI.Free;
  End;
end;

procedure TFPadronMultiplicados.btnReemplazarTextoClick(Sender: TObject);
var
  xSql, BUSCAR, REEMPLAZAR, CAMPO: string;
begin
  // Inicio: SPP_201310_ASO
  If DM1.cdsPadrones.FieldByName('CODEST').AsString = 'C' Then
  Begin
    MessageDlg('El padrón ya fue Cerrado', mtInformation, [mbOk], 0);
    Exit;
  End;
  // Fin: SPP_201310_ASO
  if DM1.cdsQry1.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FPadronReempTexto := TFPadronReempTexto.Create(Self);
    FPadronReempTexto.ShowModal;
    if FPadronReempTexto.GRABAR then
    begin
      BUSCAR := FPadronReempTexto.BUSCAR;
      REEMPLAZAR := FPadronReempTexto.REEMPLAZAR;
      CAMPO := FPadronReempTexto.CAMPO;

      If MessageDlg('¿Desea reemplazar el texto ' + BUSCAR + ' por ' + REEMPLAZAR + '?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then
      begin
        Exit;
      end;
      
      DM1.DCOM1.AppServer.SOLStartTransaction;
      DM1.cdsQry1.First;
      while not DM1.cdsQry1.Eof do
      begin
        if DM1.cdsQry1.FieldByName(CAMPO).AsString = BUSCAR then
        begin
          xSql := 'UPDATE ASO_PAD_DET'
            + ' SET ' + CAMPO + ' = ' + QuotedStr(REEMPLAZAR)
            + ' WHERE CODPAD = ' + QuotedStr(CODPAD)
            + '   AND CODITEM = ' + DM1.cdsQry1.FieldByName('CODITEM').AsString;
          DM1.DCOM1.AppServer.EjecutaSQL(xSql);
        end;
        
        DM1.cdsQry1.Next;
      end;
      
      DM1.DCOM1.AppServer.SOLCommit;
      btnMostrarClick(Self);
    end
  Except
    DM1.DCOM1.AppServer.SOLRollBack;
    ShowMessage('No se pudo grabar el registro, intente nuevamente');
    Screen.Cursor := crDefault;
    FPadronReempTexto.Free;
  End;
end;

procedure TFPadronMultiplicados.btnVerErroresClick(Sender: TObject);
begin
  if DM1.cdsQry1.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FPadronErrores := TFPadronErrores.Create(Self);
    FPadronErrores.CODPAD := DM1.cdsQry1.FieldByName('CODPAD').AsString;
    FPadronErrores.CODITEM := DM1.cdsQry1.FieldByName('CODITEM').AsInteger;
    FPadronErrores.ShowModal;
  Finally
    FPadronErrores.Free;
  End;
end;

procedure TFPadronMultiplicados.dblcdInconsistenciaChange(Sender: TObject);
begin
  If DM1.cdsInconsistencia.Locate('CODTIPREG',VarArrayof([dblcdInconsistencia.Text]),[]) Then
  begin
    edtInconsistencia.Text := DM1.cdsInconsistencia.FieldByName('DESTIPREG').AsString;
  end
  else
  begin
    edtInconsistencia.Text := '';
  end;
end;

procedure TFPadronMultiplicados.btnEliminarClick(Sender: TObject);
var
  xSql: string;
begin
  // Inicio: SPP_201310_ASO
  If DM1.cdsPadrones.FieldByName('CODEST').AsString = 'C' Then
  Begin
    MessageDlg('El padrón ya fue Cerrado', mtInformation, [mbOk], 0);
    Exit;
  End;
  // Fin: SPP_201310_ASO
  If MessageDlg('¿Está seguro de eliminar todos los registros con el DNI ' + DM1.cdsQry1.FieldByName('ASODNI').AsString + '?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then
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
      + ' WHERE CODPAD = ' + QuotedStr(DM1.cdsQry1.FieldByName('CODPAD').AsString)
      + '   AND ASODNI = ' + QuotedStr(DM1.cdsQry1.FieldByName('ASODNI').AsString);
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);
  Except
    ShowMessage('No se pudo actualizar el estado del registro, por favor intente nuevamente');
    Screen.Cursor := crDefault;
    Exit;
  End;
  Screen.Cursor := crDefault;
  
  btnMostrarClick(self);
  ShowMessage('Operación concluida exitosamente');
end;

procedure TFPadronMultiplicados.rbtCuentaAhorrosClick(Sender: TObject);
begin
// Inicio: SPP_201306_ASO
edtBuscar.Width:=114; edtBuscar.Height := 24;
edtBuscar.SetFocus;
edtBuscar.Text := '';
// Fin: SPP_201306_ASO
end;

//Inicio: SPP_201405_ASO
procedure TFPadronMultiplicados.btnProcesarClick(Sender: TObject);
// Inicio HPC_201505_ASO
var xSQL,xMensaje: String;
// Fin HPC_201505_ASO
begin
      //Inicio: SPP_201409_ASO
      If DM1.cdsPadrones.FieldByName('CODEST').AsString = 'C' Then
      Begin
        MessageDlg('El padrón ya fue Cerrado', mtInformation, [mbOk], 0);
        Exit;
      End;

  // Inicio HPC_201505_ASO

    xSQL:='SELECT CODPAD,NVL(ACTREGMUL,''N'') ACTREGMUL FROM ASO_PRO_ACT_PAD '+
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
           If DM1.cdsQry.FieldByName('ACTREGMUL').AsString='P' Then xMensaje:='PENDIENTE';
           If DM1.cdsQry.FieldByName('ACTREGMUL').AsString='I' Then xMensaje:='INICIADA';
       End;
       DM1.cdsQry.Close;
    If Length(Trim(xMensaje))>0 Then
       Begin
           MessageDlg('Actualización de Multiplicados Programada Se Encuentra : '+xMensaje+' !!!', mtError, [mbOk], 0);
           Exit;
       End;


      If MessageDlg('¿Está seguro de procesar los multiplicados del padrón?', mtconfirmation,[mbYes,mbNo],0) <> mrYes then
      begin
          Exit;
      end;

      Try
      Screen.Cursor := crHourGlass;
    //Procedimiento de validación del padrón
    {
    xSql := 'BEGIN'
      + '    DB2ADMIN.SP_ASO_PROCESA_MULTIPLI_PAD(' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString) + ','+QuotedStr(DM1.wUsuario)+'); '
      + 'END;';
      }
    xSQL := 'BEGIN'
      + '    DB2ADMIN.SP_ASO_PROCESA_MULTIPLICADOS(' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString) + ','+QuotedStr(DM1.wUsuario)+'); '
      + 'END;';
    DM1.DCOM1.AppServer.EjecutaSQL(xSql);

  // Fin HPC_201505_ASO


//Fin: SPP_201409_ASO
    MessageDlg('Operación concluida exitosamente', mtInformation, [mbOk], 0);
    btnMostrarClick(sender);
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
//fin: SPP_201405_ASO
end.

