// Inicio Uso Estándares: 01/08/2011
// Unidad               : PRE232C
// Formulario           : FExpedientebeneficio
// Fecha de Creación    : 07/06/2017
// Autor                : Jesús Castillo Pampas
// Objetivo             : Formulario de Expediente de beneficios
// Actualizaciones      :
//HPC_201702_ASO        : Creación del Formulario

//Inicio HPC_201702_ASO
//Creación de formulario para buscar un asociado para consultar los datos del expediente de beneficios

unit PRE232C;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Mask, ExtCtrls, Buttons, Msgdlgs;

type
  TFExpedientebeneficio = class(TForm)
    dbgExpBen: TwwDBGrid;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    rgbusca: TRadioGroup;
    mebusca: TMaskEdit;
    btnBuscar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure rgbuscaClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgExpBenDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExpedientebeneficio: TFExpedientebeneficio;

implementation

uses ASODM, PRE235C;

{$R *.dfm}

procedure TFExpedientebeneficio.FormActivate(Sender: TObject);
Var xSql:String;
begin
        dbgExpBen.Selected.Clear;
        dbgExpBen.Selected.Add('FREG'#9'10'#9'Fecha de~registro'#9#9);
        dbgExpBen.Selected.Add('PVSEXPNRO'#9'11'#9'Número de~Expediente'#9#9);
        dbgExpBen.Selected.Add('PVSESTDES'#9'20'#9'Estado de la~Liquidación'#9#9);
        dbgExpBen.Selected.Add('BENEFDES'#9'20'#9'Tipo de~Beneficio'#9#9);
        dbgExpBen.Selected.Add('ASOID'#9'10'#9'Identificación~del asociado'#9#9);
        dbgExpBen.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
        dbgExpBen.Selected.Add('ASOAPENOMDNI'#9'40'#9'Apellido(s) y~Nombre(s)'#9#9);
        dbgExpBen.Selected.Add('TIPDOCDES'#9'6'#9'Tipo~de doc.'#9#9);
        dbgExpBen.Selected.Add('ASODOCNUM'#9'10'#9'Número de~Documento'#9#9);
        dbgExpBen.Selected.Add('REPRAPENOM'#9'25'#9'Origen del~Expediente'#9#9);
        dbgExpBen.ApplySelected;
        xSql := 'SELECT '
        +' A.ciaid, A.pvsexpnro, A.pvstipben, A.asoid, A.asocodmod, A.asocodaux, A.dptoid_xx, A.ciuid_xx, A.pvsestado, A.pvsfecini_xx, A.pvsresnom_xx, A.pvsfresnm_xx, A.pvsresces_xx, A.pvsfrescs_xx,'
        +' A.pvsfinval_xx, A.pvsfnaci_xx, A.pvsedad_xx, A.pvsffalle_xx, A.pvscausa, A.forpagoid, A.bancoid, A.pvsnrocta_xx, A.pvsimpben_xx, A.pvsapoaa_xx, A.pvsapomm_xx, A.pvsapodd_xx, A.pvssexo_xx,'
        +' A.regpenid_xx, A.pvsultapo, A.pvsliqnro_xx, A.pvsvou_xx, A.pvsfconc_xx, A.pvsconcl_xx, A.usuario, A.freg, A.hreg, A.agenbcoid, A.pvsnom_xx, A.pvsnrochq_xx, A.pvsfliq_xx, A.pvsdnideudo_xx,'
        +' A.reprid, A.bcodptoid_xx, A.pvsncargo_xx, A.pvsnabono_xx, A.asocobben_xx, A.useid_xx, A.upagoid_xx, A.uproid_xx, A.pvscobaso, A.asoapenomdni, A.asoncta, A.pvslbennr, A.pvslfecbe,'
        +' A.asoresnom, A.asofresnom, A.asorescese, A.asofrescese, A.asofecnac, A.tipdoccod, A.asodocnum, A.asodni, A.asofecinv, A.asofecfal, A.ofdesidori, A.disoriexp, A.pvssegui_xx, A.usu_anu,'
        +' A.fec_anu, A.com_anu, A.codotrdocide, A.numotrdocide, A.pvsfecexp, A.usucreexp, A.apenomsol, A.dnisol, A.vinparsol, A.forsolben, A.pvstipret, A.genporweb, A.versede, A.conofide, A.cod_err_dni,'
        +' A.obs_memo_actual, A.tipbenef, A.codcauces, A.deporiexp, A.ofioriexp, A.fecrecexp, A.codcarexp,'
        +' F.TIPDOCDES, D.BENEFDES, C.PVSESTDES, DECODE(E.REPRAPENOM, NULL, ''SEDE CENTRAL'', E.REPRAPENOM) REPRAPENOM, B.AUTDESAPO, B.FECAUTDESAPO'
        +' FROM APO201 B, PVS301 A, PVS102 C, TGE186 D, COB201 E, TGE159 F'
        +' WHERE A.ASOID = '''' AND A.ASOID = B.ASOID And A.PVSESTADO = C.PVSESTDSG AND A.PVSTIPBEN = D.TIPBENEF  AND A.TIPDOCCOD = F.TIPDOCCOD(+)'
        +' AND A.REPRID = E.REPRID(+) And C.PVSDOC = ''E''  ORDER BY A.FREG DESC';
        DM1.cdsExpLiq.Close;
        DM1.cdsExpLiq.DataRequest(xSql);
        DM1.cdsExpLiq.Open;
        rgbusca.ItemIndex := 0;
        mebusca.Width := 300;
        mebusca.SetFocus;
end;
procedure TFExpedientebeneficio.rgbuscaClick(Sender: TObject);
begin
  If rgbusca.ItemIndex = 0 Then
  Begin
    mebusca.Width := 300;
    mebusca.MaxLength := 40;
  End
  Else If rgbusca.ItemIndex = 1 Then
  Begin
   mebusca.Width := 100;
   mebusca.MaxLength := 10;
  End
  Else If rgbusca.ItemIndex = 2 Then
  Begin
   mebusca.Width := 80;
   mebusca.MaxLength := 8;
  End;
  mebusca.SetFocus;
  mebusca.Text := '';
end;

procedure TFExpedientebeneficio.btnBuscarClick(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT '
    +' A.ciaid, A.pvsexpnro, A.pvstipben, A.asoid, A.asocodmod, A.asocodaux, A.dptoid_xx, A.ciuid_xx, A.pvsestado, A.pvsfecini_xx, A.pvsresnom_xx, A.pvsfresnm_xx, A.pvsresces_xx, A.pvsfrescs_xx,'
    +' A.pvsfinval_xx, A.pvsfnaci_xx, A.pvsedad_xx, A.pvsffalle_xx, A.pvscausa, A.forpagoid, A.bancoid, A.pvsnrocta_xx, A.pvsimpben_xx, A.pvsapoaa_xx, A.pvsapomm_xx, A.pvsapodd_xx, A.pvssexo_xx,'
    +' A.regpenid_xx, A.pvsultapo, A.pvsliqnro_xx, A.pvsvou_xx, A.pvsfconc_xx, A.pvsconcl_xx, A.usuario, A.freg, A.hreg, A.agenbcoid, A.pvsnom_xx, A.pvsnrochq_xx, A.pvsfliq_xx, A.pvsdnideudo_xx,'
    +' A.reprid, A.bcodptoid_xx, A.pvsncargo_xx, A.pvsnabono_xx, A.asocobben_xx, A.useid_xx, A.upagoid_xx, A.uproid_xx, A.pvscobaso, A.asoapenomdni, A.asoncta, A.pvslbennr, A.pvslfecbe,'
    +' A.asoresnom, A.asofresnom, A.asorescese, A.asofrescese, A.asofecnac, A.tipdoccod, A.asodocnum, A.asodni, A.asofecinv, A.asofecfal, A.ofdesidori, A.disoriexp, A.pvssegui_xx, A.usu_anu,'
    +' A.fec_anu, A.com_anu, A.codotrdocide, A.numotrdocide, A.pvsfecexp, A.usucreexp, A.apenomsol, A.dnisol, A.vinparsol, A.forsolben, A.pvstipret, A.genporweb, A.versede, A.conofide, A.cod_err_dni,'
    +' A.obs_memo_actual, A.tipbenef, A.codcauces, A.deporiexp, A.ofioriexp, A.fecrecexp, A.codcarexp,'
    +' F.TIPDOCDES, D.BENEFDES, C.PVSESTDES, DECODE(E.REPRAPENOM, NULL, ''SEDE CENTRAL'', E.REPRAPENOM) REPRAPENOM, B.AUTDESAPO, B.FECAUTDESAPO'
    +' FROM APO201 B, PVS301 A, PVS102 C, TGE186 D, COB201 E, TGE159 F';

  If rgbusca.ItemIndex = 0 Then
  Begin
    xSql := xSql +' WHERE A.ASOAPENOMDNI LIKE '+QuotedStr(Trim(mebusca.Text)+'%');
  End;
  If rgbusca.ItemIndex = 1 Then
  Begin
    xSql := xSql +' WHERE A.asocodmod = '+QuotedStr(Trim(mebusca.Text));
  End;
  If rgbusca.ItemIndex = 2 Then
  Begin
    xSql := xSql +' WHERE B.ASODNI = '+QuotedStr(Trim(mebusca.Text));
  End;

    xSql := xSql +' AND ((NVL(GENPORWEB,''N'') = ''S'' AND NVL(CONOFIDE,''N'') = ''S'')  OR (NVL(GENPORWEB,''N'') = ''N''))'
    +' And A.PVSESTADO NOT IN (''04'',''13'') AND A.ASOID = B.ASOID And A.PVSESTADO = C.PVSESTDSG AND A.PVSTIPBEN = D.TIPBENEF  AND A.TIPDOCCOD = F.TIPDOCCOD(+)'
    +' AND A.REPRID = E.REPRID(+) And C.PVSDOC = ''E''  ORDER BY A.FREG DESC';
    Screen.Cursor := crHourGlass;
    DM1.cdsExpLiq.Close;
    DM1.cdsExpLiq.DataRequest(xSql);
    DM1.cdsExpLiq.Open;
    Screen.Cursor := crDefault;
    
end;

procedure TFExpedientebeneficio.BitBtn2Click(Sender: TObject);
begin
FExpedientebeneficio.Close;
end;

procedure TFExpedientebeneficio.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DIALOGKEY, VK_TAB, 0);
    end;
end;
Procedure TFExpedientebeneficio.dbgExpBenDblClick(Sender: TObject);
Var xSql:String;
    xMarcaPRE2 : boolean;
Begin

  If DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '13' Then
  Begin
    MessageDlg(' El expediente se encuentra anulado ', mtError, [mbOk], 0);
    Exit;
  End;
  DM1.xSgr := 'N';

   xMarcaPRE2 := False;
   if DM1.IndicaAsociadoEnAct(DM1.cdsExpLiq.FieldByName('ASOID').AsString) then
   begin
      ErrorMsg('Módulo de Previsión', 'Existe otra opción que puede estar actualizando datos del Asociado'+chr(13)
                                            +'no se puede ejecutar en simultáneo con esta Opción');
      exit;
   end;
// marca el registro del Asociado en Maestro de Asociados, para que no pueda sea actualizado por otro lado
   xSQL := 'begin '
          +'  SP_ACT_PROC_ACT_MAE('+quotedstr(DM1.cdsExpLiq.FieldByName('ASOID').AsString)+','

                                   +quotedstr(DM1.wModulo)+', ' + QuotedStr(DM1.wUsuario) + '); '
          +'end; ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
   xMarcaPRE2 := True;

  If (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '01') Or (DM1.cdsExpLiq.FieldByName('PVSESTADO').AsString = '05') Then
    DM1.actualizapvs301(DM1.cdsExpLiq.FieldByName('ASOID').AsString, DM1.cdsExpLiq.FieldByName('PVSEXPNRO').AsString);
  Try
    FModExpben := TFModExpben.create(Self);
    FModExpben.ShowModal;
  Finally
    FModExpben.Free;
  // libera el registro del Asociado en Maestro de Asociados, para que pueda sea actualizado
    if xMarcaPRE2 then
    begin
       xSQL := 'begin '
              +'  SP_ACT_PROC_ACT_MAE('+quotedstr(DM1.cdsExpLiq.FieldByName('ASOID').AsString)+','
                                       +quotedstr('XXX')+', ' + QuotedStr(DM1.wUsuario) + '); '
              +'end; ';
       DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
    end;
  End;
  If DM1.xSgr = 'G' Then
  Begin
    xSql := 'SELECT '
    +' A.ciaid, A.pvsexpnro, A.pvstipben, A.asoid, A.asocodmod, A.asocodaux, A.dptoid_xx, A.ciuid_xx, A.pvsestado, A.pvsfecini_xx, A.pvsresnom_xx, A.pvsfresnm_xx, A.pvsresces_xx, A.pvsfrescs_xx,'
    +' A.pvsfinval_xx, A.pvsfnaci_xx, A.pvsedad_xx, A.pvsffalle_xx, A.pvscausa, A.forpagoid, A.bancoid, A.pvsnrocta_xx, A.pvsimpben_xx, A.pvsapoaa_xx, A.pvsapomm_xx, A.pvsapodd_xx, A.pvssexo_xx,'
    +' A.regpenid_xx, A.pvsultapo, A.pvsliqnro_xx, A.pvsvou_xx, A.pvsfconc_xx, A.pvsconcl_xx, A.usuario, A.freg, A.hreg, A.agenbcoid, A.pvsnom_xx, A.pvsnrochq_xx, A.pvsfliq_xx, A.pvsdnideudo_xx,'
    +' A.reprid, A.bcodptoid_xx, A.pvsncargo_xx, A.pvsnabono_xx, A.asocobben_xx, A.useid_xx, A.upagoid_xx, A.uproid_xx, A.pvscobaso, A.asoapenomdni, A.asoncta, A.pvslbennr, A.pvslfecbe,'
    +' A.asoresnom, A.asofresnom, A.asorescese, A.asofrescese, A.asofecnac, A.tipdoccod, A.asodocnum, A.asodni, A.asofecinv, A.asofecfal, A.ofdesidori, A.disoriexp, A.pvssegui_xx, A.usu_anu,'
    +' A.fec_anu, A.com_anu, A.codotrdocide, A.numotrdocide, A.pvsfecexp, A.usucreexp, A.apenomsol, A.dnisol, A.vinparsol, A.forsolben, A.pvstipret, A.genporweb, A.versede, A.conofide, A.cod_err_dni,'
    +' A.obs_memo_actual, A.tipbenef, A.codcauces, A.deporiexp, A.ofioriexp, A.fecrecexp, A.codcarexp,'
    +' F.TIPDOCDES, D.BENEFDES, C.PVSESTDES, DECODE(E.REPRAPENOM, NULL, ''SEDE CENTRAL'', E.REPRAPENOM) REPRAPENOM, B.AUTDESAPO, B.FECAUTDESAPO'
    +' FROM APO201 B, PVS301 A, PVS102 C, TGE186 D, COB201 E, TGE159 F'
    +' WHERE A.ASOAPENOMDNI LIKE '+QuotedStr(Trim(mebusca.Text)+'%')
    +' AND A.PVSESTADO NOT IN (''04'',''13'') AND A.ASOID = B.ASOID And A.PVSESTADO = C.PVSESTDSG AND A.PVSTIPBEN = D.TIPBENEF  AND A.TIPDOCCOD = F.TIPDOCCOD(+)'
    +' AND A.REPRID = E.REPRID(+) And C.PVSDOC = ''E''  ORDER BY A.FREG DESC';
    DM1.cdsExpLiq.Close;
    DM1.cdsExpLiq.DataRequest(xSql);
    DM1.cdsExpLiq.Open;
    DM1.cdsExpLiq.GotoBookmark(DM1.bmk);
  End;
End;

End.
//Final HPC_201702_ASO
