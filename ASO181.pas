// Inicio Uso Estándares : 01/08/2011
// Unidad                : Asociados
// Formulario            : FCambioTipoAsociado
// Fecha de Creación     : 27/01/2016
// Autor                 : Juver De la Cruz
// Objetivo              : Cambio de Tipo de Asociado
// Actualizaciones:
// HPC_201601_ASO : AMPLIAR ALCANCE DE LIQUIDACIONES ANTIGUAS

unit ASO181;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, wwdblook, Wwdbdlg, ExtCtrls, Buttons, DB,
  Wwdatsrc, DBClient, wwclient, Grids, Wwdbigrd, Wwdbgrid;

type
  TFCambioTipoAsociado = class(TForm)
    Panel3: TPanel;
    btnSalir: TBitBtn;
    Panel4: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    edtTipoAsociadoMaestro: TMaskEdit;
    cbTipoAsociadoMaestro: TwwDBLookupComboDlg;
    Panel2: TPanel;
    Label2: TLabel;
    edtTipoAsociadoPadron: TMaskEdit;
    cbTipoAsociadoPadron: TwwDBLookupComboDlg;
    btnFiltroTipo: TBitBtn;
    lblCantRegistros: TLabel;
    dbgUniverso: TwwDBGrid;
    btnBuscarAsociado: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalirClick(Sender: TObject);
    procedure cbTipoAsociadoMaestroExit(Sender: TObject);
    procedure btnFiltroTipoClick(Sender: TObject);
    procedure cbTipoAsociadoPadronExit(Sender: TObject);
    procedure btnBuscarAsociadoClick(Sender: TObject);
    procedure dbgUniversoDblClick(Sender: TObject);
  private
    { Private declarations }
     xxCdsQryTipoAsociadoMaestro : TwwClientDataSet;
      xxDsQryTipoAsociadoMaestro : TwwDataSource;
     xxCdsQryTipoAsociadoPadron : TwwClientDataSet;
      xxDsQryTipoAsociadoPadron : TwwDataSource;
     xxCdsQryUniverso : TwwClientDataSet;
      xxDsQryUniverso : TwwDataSource;
  public
    { Public declarations }
  end;

var
  FCambioTipoAsociado: TFCambioTipoAsociado;

implementation

uses ASODM, ASO901, ASO180, ASO211;

{$R *.dfm}

(******************************************************************************)
procedure TFCambioTipoAsociado.btnSalirClick(Sender: TObject);
begin
  Close;
end;

(******************************************************************************)
procedure TFCambioTipoAsociado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

(******************************************************************************)
procedure TFCambioTipoAsociado.FormShow(Sender: TObject);
var xsSQL : String;
begin
   DM1.FG_CONECTA_CDS(xxCdsQryUniverso, xxDsQryUniverso);
   DM1.FG_CONECTA_CDS(xxCdsQryTipoAsociadoMaestro, xxDsQryTipoAsociadoMaestro);
   DM1.FG_CONECTA_CDS(xxCdsQryTipoAsociadoPadron, xxDsQryTipoAsociadoPadron);

   xsSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''AD'',''CE'',''CO'',''DO'',''OT'') ORDER BY ASOTIPID';
   With xxCdsQryTipoAsociadoPadron, cbTipoAsociadoPadron do begin
     Close;
     DataRequest(xsSQL);
     Open;
     cbTipoAsociadoPadron.LookupTable := xxCdsQryTipoAsociadoPadron;
     LookupField := 'ASOTIPID';
     Selected.Clear;
     Selected.Add('ASOTIPID'#9'2'#9'Código'#9#9);
     Selected.Add('ASOTIPDES'#9'25'#9'Descripción'#9#9);
     Filtered := false;
     Filter := 'ASOTIPID  IN (''XX'')';
     Filtered := true;
   end;

   xsSQL := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''AD'',''CE'',''CO'',''DO'',''OT'') ORDER BY ASOTIPID';
   With xxCdsQryTipoAsociadoMaestro, cbTipoAsociadoMaestro do begin
     Close;
     DataRequest(xsSQL);
     Open;
     cbTipoAsociadoMaestro.LookupTable := xxCdsQryTipoAsociadoMaestro;
     LookupField := 'ASOTIPID';
     Selected.Clear;
     Selected.Add('ASOTIPID'#9'2'#9'Código'#9#9);
     Selected.Add('ASOTIPDES'#9'25'#9'Descripción'#9#9);
   end;
end;

(******************************************************************************)
procedure TFCambioTipoAsociado.cbTipoAsociadoMaestroExit(Sender: TObject);
var xsSQL : String;
begin
   xxCdsQryTipoAsociadoPadron.Filtered := false;
   cbTipoAsociadoPadron.Text := '';
   edtTipoAsociadoPadron.Text := '';
   If xxCdsQryTipoAsociadoMaestro.Locate('ASOTIPID', cbTipoAsociadoMaestro.Text, []) Then
      begin
        edtTipoAsociadoMaestro.Text := xxCdsQryTipoAsociadoMaestro.FieldByName('ASOTIPDES').AsString;
        if cbTipoAsociadoMaestro.Text = 'AD' then
           xxCdsQryTipoAsociadoPadron.Filter := 'ASOTIPID  IN (''CE'',''DO'',''OT'')'
        else if cbTipoAsociadoMaestro.Text = 'CE' then
           xxCdsQryTipoAsociadoPadron.Filter := 'ASOTIPID  IN (''CO'',''DO'',''OT'')'
        else if cbTipoAsociadoMaestro.Text = 'CO' then
           xxCdsQryTipoAsociadoPadron.Filter := 'ASOTIPID  IN (''CE'',''DO'',''OT'')'
        else if cbTipoAsociadoMaestro.Text = 'DO' then
           xxCdsQryTipoAsociadoPadron.Filter := 'ASOTIPID  IN (''AD'',''CE'',''CO'',''OT'')'
        else if cbTipoAsociadoMaestro.Text = 'OT' then
           xxCdsQryTipoAsociadoPadron.Filter := 'ASOTIPID  IN (''AD'',''CE'',''CO'',''DO'')';
      end
   else begin
      edtTipoAsociadoMaestro.Text := '';
      xxCdsQryTipoAsociadoPadron.Filter := 'ASOTIPID  IN (''XX'')';
   end;
   xxCdsQryTipoAsociadoPadron.Filtered := true;
end;

(******************************************************************************)
procedure TFCambioTipoAsociado.btnFiltroTipoClick(Sender: TObject);
var xsSQL : String;
begin
    if (cbTipoAsociadoMaestro.Text = '') then begin
      MessageDlg('Seleccione el Tipo de Asociado del Maestro', mtError, [mbOk], 0);
      exit;
    end;
    if (cbTipoAsociadoPadron.Text = '') then begin
      MessageDlg('Seleccione el Tipo de Asociado del Padron', mtError, [mbOk], 0);
      exit;
    end;
    try
      Screen.Cursor := crHourGlass;
      lblCantRegistros.caption := '0 Registros';
      xsSQL := 'BEGIN DB2ADMIN.SP_ASO_CREA_LISTA_CAMBIO_ASO(' + QuotedStr(cbTipoAsociadoMaestro.Text)+ ', ' + QuotedStr(cbTipoAsociadoPadron.Text)+ '); END;';
      DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
      xsSQL := 'SELECT ROWNUM NRO, '
             + '       ASOID, ASODNI, ASOCODMOD, ASOAPENOM, ASOTIPIDMAE, ASOTIPIDPAD, APOREG, '
             + '       FALLECIDO, LIQUIDADO, PENONP, INGNET, CREVIG, ULTPERAPO, MAXPERASOTIPIDPAD, '
             + '       CANPERASOTIPIDPAD, SALCRE, NUMLIQ, MTOCCI, REGPENABR, '
             + '       PERCTAIND_N_0, MTOCAPACUCTAIND_N_0, PERCTAIND_N_1, MTOCAPACUCTAIND_N_1, '
             + '       PERCTAIND_N_2, MTOCAPACUCTAIND_N_2 '
             + '  FROM (SELECT ASOID, ASODNI, ASOCODMOD, ASOAPENOM, ASOTIPIDMAE, ASOTIPIDPAD, APOREG, '
             + '               FALLECIDO, LIQUIDADO, PENONP, ROUND(INGNET,2) INGNET, CREVIG, ULTPERAPO, MAXPERASOTIPIDPAD, '
             + '               CANPERASOTIPIDPAD, ROUND(SALCRE,2) SALCRE, NUMLIQ, ROUND(MTOCCI,2) MTOCCI, REGPENABR, '
             + '               PERCTAIND_N_0, ROUND(MTOCAPACUCTAIND_N_0,2) MTOCAPACUCTAIND_N_0, '
             + '               PERCTAIND_N_1, ROUND(MTOCAPACUCTAIND_N_1,2) MTOCAPACUCTAIND_N_1, '
             + '               PERCTAIND_N_2, ROUND(MTOCAPACUCTAIND_N_2,2) MTOCAPACUCTAIND_N_2 '
             + '          FROM ASO_CAMBIO_ASOCIADO_GTT '
             + '         WHERE ASOTIPIDMAE = ' + QuotedStr(cbTipoAsociadoMaestro.Text)
             + '         ORDER BY ASOAPENOM) ';
      xxCdsQryUniverso.Close;
      xxCdsQryUniverso.DataRequest(xsSQL);
      xxCdsQryUniverso.Open;
      dbgUniverso.DataSource := xxDsQryUniverso;
      With dbgUniverso, xxCdsQryUniverso Do Begin
         Selected.Clear;
         Selected.Add('NRO'#9'5'#9'N°');
         Selected.Add('ASODNI'#9'10'#9'D.N.I.');
         Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular');
         Selected.Add('ASOAPENOM'#9'10'#9'Apellidos~y Nombres');
         Selected.Add('ASOTIPIDMAE'#9'10'#9'Maestro'#9'F'#9'Tipo de Asociado');
         Selected.Add('ASOTIPIDPAD'#9'10'#9'Padrón'#9'F'#9'Tipo de Asociado');
         Selected.Add('CANPERASOTIPIDPAD'#9'10'#9'Cant. Periodos'#9'F'#9'Tipo de Asociado en Padrón');
         Selected.Add('MAXPERASOTIPIDPAD'#9'10'#9'Máx.Periodo'#9'F'#9'Tipo de Asociado en Padrón');
         Selected.Add('CREVIG'#9'10'#9'Crédito~Vigente');
         Selected.Add('LIQUIDADO'#9'10'#9'Liquidado'#9'F'#9'Liquidación');
         Selected.Add('NUMLIQ'#9'10'#9'Número'#9'F'#9'Liquidación');
         Selected.Add('APOREG'#9'10'#9'Aportante~Regular');
         Selected.Add('FALLECIDO'#9'10'#9'Fallecido');
         Selected.Add('PENONP'#9'10'#9'Pensionista~ONP');
         Selected.Add('INGNET'#9'10'#9'Ingreso~Neto');
         Selected.Add('REGPENABR'#9'10'#9'Régimen~Pensiones');
         Selected.Add('SALCRE'#9'10'#9'Saldo~Crédito');
         Selected.Add('MTOCCI'#9'10'#9'C.C.I.');
         Selected.Add('ULTPERAPO'#9'10'#9'Último Periodo~de Aportación');
         Selected.Add('PERCTAIND_N_0'#9'10'#9'Último Periodo'#9'F'#9'Cuenta Individual');
         Selected.Add('MTOCAPACUCTAIND_N_0'#9'10'#9'Último Capital Acumulado'#9'F'#9'Cuenta Individual');
         Selected.Add('PERCTAIND_N_1'#9'10'#9'Penultimo Periodo'#9'F'#9'Cuenta Individual');
         Selected.Add('MTOCAPACUCTAIND_N_1'#9'10'#9'Penultimo Capital Acumulado'#9'F'#9'Cuenta Individual');
         Selected.Add('PERCTAIND_N_2'#9'10'#9'Antepenultimo Periodo'#9'F'#9'Cuenta Individual');
         Selected.Add('MTOCAPACUCTAIND_N_2'#9'10'#9'Antepenultimo Capital Acumulado'#9'F'#9'Cuenta Individual');

         fieldbyname('ASODNI').Alignment := taCenter;
         fieldbyname('ASOCODMOD').Alignment := taCenter;
         fieldbyname('ASOTIPIDMAE').Alignment := taCenter;
         fieldbyname('ASOTIPIDPAD').Alignment := taCenter;
         fieldbyname('MAXPERASOTIPIDPAD').Alignment := taCenter;
         fieldbyname('CREVIG').Alignment := taCenter;
         fieldbyname('LIQUIDADO').Alignment := taCenter;
         fieldbyname('APOREG').Alignment := taCenter;
         fieldbyname('FALLECIDO').Alignment := taCenter;
         fieldbyname('PENONP').Alignment := taCenter;
         fieldbyname('ULTPERAPO').Alignment := taCenter;
         fieldbyname('PERCTAIND_N_0').Alignment := taCenter;
         fieldbyname('PERCTAIND_N_1').Alignment := taCenter;
         fieldbyname('PERCTAIND_N_2').Alignment := taCenter;
         
         ApplySelected;
      End;
      lblCantRegistros.caption := inttostr(xxCdsQryUniverso.Recordcount) + ' Registros';
    finally
      Screen.Cursor := crDefault;
    end;
end;

(******************************************************************************)
procedure TFCambioTipoAsociado.cbTipoAsociadoPadronExit(Sender: TObject);
begin
   If xxCdsQryTipoAsociadoPadron.Locate('ASOTIPID', cbTipoAsociadoPadron.Text, []) Then
      edtTipoAsociadoPadron.Text := xxCdsQryTipoAsociadoPadron.FieldByName('ASOTIPDES').AsString
   else
      edtTipoAsociadoPadron.Text := '';
end;

(******************************************************************************)
procedure TFCambioTipoAsociado.btnBuscarAsociadoClick(Sender: TObject);
var xsSQL : String;
begin
    DM1.xSgr := 'X';
    Try
       fSeleccion                     := TfSeleccion.create(self);
       fSeleccion.gbbuscar.Width      := 430;
       fSeleccion.gbbuscar.Height     := 40;
       fSeleccion.edtBuscar.Width     := 407;
       fSeleccion.edtBuscar.Height    := 28;
       fSeleccion.GbAsociados.Caption := 'Buscar Por ' +
       fSeleccion.rbtApeNom.Caption;
       xsSQL := 'SELECT ASOCODMOD, ASOAPENOMDNI, UPROID, UPAGOID, '
              + '       USEID, ASOAPENOM, ASOTIPID, '
              + '       ASOID, ASOCODAUX, ASORESCESE, ASOFRESCESE '
              + '  FROM APO201 '
              + ' WHERE 1 = 2 ';
       DM1.cdsAso.Close;
       DM1.cdsAso.DataRequest(xsSQL);
       DM1.cdsAso.Open;
       fSeleccion.Showmodal;
    Finally
       fSeleccion.free;
    End;
    If DM1.xSgr = 'S' Then Begin
       Try
          xsSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''XX'') ';
          DM1.cdsTAso.Close;
          DM1.cdsTAso.DataRequest(xsSQL);
          DM1.cdsTAso.Open;
          Fcamtipaso := TFcamtipaso.create(self);
          Fcamtipaso.Showmodal;
       Finally
          Fcamtipaso.free;
       End;
    End;
end;

(******************************************************************************)
procedure TFCambioTipoAsociado.dbgUniversoDblClick(Sender: TObject);
var xsSQL : String;
begin
  if xxCdsQryUniverso.Recordcount <= 0 then exit;
  if (xxCdsQryUniverso.FieldByName('ASOTIPIDMAE').AsString = 'CE')
     and (xxCdsQryUniverso.FieldByName('ASOTIPIDPAD').AsString = 'DO') then begin
      Try
        xsSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOAPENOMDNI, '
               + '       A.ASOTIPID, A.USEID, A.UPROID, A.ASODNI, A.ASONCTA, T.ASOTIPDES, '
               + '       A.ASORESNOM, A.ASOFRESNOM, A.ASORESCESE, A.ASOFRESCESE'
               + '  FROM APO201 A INNER JOIN APO107 T ON A.ASOTIPID = T.ASOTIPID'
               + ' WHERE A.ASOID = ' + QuotedStr(xxCdsQryUniverso.FieldByName('ASOID').AsString);
        DM1.cdsAsociado.Close;
        DM1.cdsAsociado.DataRequest(xsSql);
        DM1.cdsAsociado.Open;
        FReingresoCesantes := TFReingresoCesantes.Create(self);
        FReingresoCesantes.BitBuscar.Enabled := False;
        FReingresoCesantes.ShowModal;
      Finally
        FReingresoCesantes.Free;
      End;
  end else begin
         xsSQL := 'SELECT ASOCODMOD, ASOAPENOMDNI, UPROID, UPAGOID, '
                + '       USEID, ASOAPENOM, ASOTIPID, '
                + '       ASOID, ASOCODAUX, ASORESCESE, ASOFRESCESE, '
                + '       ASORESNOM, ASOFRESNOM'
                + '  FROM APO201 '
                + ' WHERE ASOID = ' + QuotedStr(xxCdsQryUniverso.FieldByName('ASOID').AsString);
         DM1.cdsAso.Close;
         DM1.cdsAso.DataRequest(xsSQL);
         DM1.cdsAso.Open;
         DM1.xSgr := 'S';
         Try
            Fcamtipaso := TFcamtipaso.create(self);
            Fcamtipaso.btnModificarClick(nil);
            Fcamtipaso.dblcdtipaso.Text := cbTipoAsociadoPadron.Text;
            Fcamtipaso.dblcdtipasoExit(nil);
            Fcamtipaso.Showmodal;
         Finally
            Fcamtipaso.free;
         End;
  end;
end;
(******************************************************************************)
end.
