// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO958B.pas
// Formulario              :  FAutoriza
// Fecha de Creación       :  01/08/2011
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Autorización de Asociados
// Actualizaciones         :
// SPP_201402_ASO          : Redimencionar solo formulario no se podia accede a los botones
// SPP_201402_ASO          : Se realiza el pase a producción a partir del HPC_201401_ASO


unit ASO958B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask, wwdbedit, ExtCtrls;

type
  TFAutoriza = class(TForm)
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    BitSalir: TBitBtn;
    BitGrabar: TBitBtn;
    Panel1: TPanel;
    dbmObs1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
    iLen1, iLen2 : Integer;
  public
    { Public declarations }
  end;

var
  FAutoriza: TFAutoriza;

implementation

uses ASODM, ASO958C, ASO260;

{$R *.dfm}

procedure TFAutoriza.FormActivate(Sender: TObject);
var
   xSQL, xEL : String;
begin
   xSQL:='select USERID, USERNOM from TGE006 WHERE USERID='''+DM1.wUsuario+'''';
   DM1.cdsQry.Close;
   DM1.cdsQry.Datarequest( xSQL );
   DM1.cdsQry.Open;

   if FMantAsociado.DbLlSexo.Text='M' then xEL:='el Sr. ' else xEL:='la Sra. ';

   iLen1:=length(trim(DM1.cdsAso.FieldByname('OBS_AUT_CLI_UGE').AsString))-5;
   iLen2:=length(trim(DM1.cdsAso.FieldByname('OBS_AUT_CLI_PAD').AsString))-5;


   DM1.cdsAso.Edit;
   DM1.cdsAso.FieldByname('OBS_AUT_CLI').AsString:=
     'Yo, '+ DM1.cdsQry.FieldByname('USERNOM').AsString+' he constatado que '+xEL+
     DM1.cdsAso.FieldByname('ASOAPENOMDNI').AsString+' con D.N.I. '+
     DM1.cdsAso.FieldByname('ASODNI').AsString+', actualmente labora en la Ugel '+
     FMantAsociado.dbeUses.text+'. Fecha '+DateToStr(date);

   if (trim(DM1.cdsAso.FieldByname('OBS_AUT_CLI_UGE').AsString)='') or
      (trim(DM1.cdsAso.FieldByname('OBS_AUT_CLI_UGE').AsString)=
      'Dejo constancia que he verificado en la Ugel : '+FMantAsociado.dbeUses.text+', con el Sr(a) : .....') then
   begin
      DM1.cdsAso.FieldByname('OBS_AUT_CLI_UGE').AsString:=
      'Dejo constancia que he verificado en la Ugel : '+FMantAsociado.dbeUses.text+', con el Sr(a) : .....';
      iLen1:=length(trim(DM1.cdsAso.FieldByname('OBS_AUT_CLI_UGE').AsString));
   end;

   if (trim(DM1.cdsAso.FieldByname('OBS_AUT_CLI_PAD').AsString)='') or
      (trim(DM1.cdsAso.FieldByname('OBS_AUT_CLI_PAD').AsString)=
      'He constatado a '+xEL+DM1.cdsAso.FieldByname('ASOAPENOMDNI').AsString+', en los padrones existentes en .....') then
   begin
      DM1.cdsAso.FieldByname('OBS_AUT_CLI_PAD').AsString:=
      'He constatado a '+xEL+DM1.cdsAso.FieldByname('ASOAPENOMDNI').AsString+', en los padrones existentes en .....';
      iLen2:=length(trim(DM1.cdsAso.FieldByname('OBS_AUT_CLI_PAD').AsString));
   end;

   if (trim(DM1.cdsAso.FieldByname('OBS_AUT_CLI_OTR').AsString)='') or
      (trim(DM1.cdsAso.FieldByname('OBS_AUT_CLI_OTR').AsString)='...')then
   begin
      DM1.cdsAso.FieldByname('OBS_AUT_CLI_OTR').AsString:='...'
   end;

end;

procedure TFAutoriza.BitGrabarClick(Sender: TObject);
var
   xSQL : String;
begin
   if length(trim(DM1.cdsAso.FieldByname('obs_aut_cli_uge').AsString))<iLen1+5 then
   begin
      ShowMessage('Debe Ingresar Verificación de Ugel');
      Exit;
   end;
   if length(trim(DM1.cdsAso.FieldByname('obs_aut_cli_pad').AsString))<iLen2+5 then
   begin
      ShowMessage('Debe Ingresar Verificación de Padron');
      Exit;
   end;

  try
   xSQL:='UPDATE ASO_NUE_CLI '
        +'   SET USU_AUT_CLI     ='''+DM1.wUsuario+''', FEC_AUT_CLI=SYSDATE, '
        +       'obs_aut_cli     ='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli').AsString )+', '
        +       'obs_aut_cli_uge ='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli_uge').AsString )+', '
        +       'obs_aut_cli_pad ='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli_pad').AsString )+', '
        +       'obs_aut_cli_otr ='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli_otr').AsString )+' '
        +'WHERE SOLICITUD        ='+QuotedStr( DM1.cdsAso.FieldByname('SOLICITUD').AsString )
        + ' and ASOID            ='+QuotedStr( DM1.cdsAso.FieldByname('ASOID').AsString )
        + ' and EST_AUT_CLI=''N3''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;


    FConfirma := TFConfirma.create(self);
    FConfirma.Showmodal;
  Finally
    FConfirma.Close;
    FConfirma.free;
    Close;
  End;

   Exit;

   If MessageDlg('AUTORIZACION DE NUEVO CLIENTE. ¿ ESTA SEGURO ?' ,mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

   xSQL:='SELECT * FROM APO201 WHERE ASODNI='+QuotedStr( Trim(DM1.cdsAso.FieldByname('ASODNI').AsString) );
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>0 then
   begin
      ShowMessage('Existe Asociado con DNI '+DM1.cdsAso.FieldByname('ASODNI').AsString+'. Verificar...');
      Exit;
   end;

   xSQL:='SELECT ASOID FROM ASO_NUE_CLI '
        +'WHERE SOLICITUD='+QuotedStr( DM1.cdsAso.FieldByname('SOLICITUD').AsString )
        + ' and EST_AUT_CLI=''N3''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount<=0 then
   begin
      ShowMessage('NO Existe Asociado Nuevo para Autorizar, con DNI '+DM1.cdsAso.FieldByname('ASODNI').AsString+'. Verificar...');
      Exit;
   end;

   xSQL:='Insert into APO201( '
        +   'ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, '
        +   'ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, '
        +   'ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, '
        +   'ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, '
        +   'ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, '
        +   'BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, '
        +   'ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, '
        +   'ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, '
        +   'ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, '
        +   'CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, '
        +   'ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, '
        +   'ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, '
        +   'PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, '
        +   'CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, '
        +   'ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, '
        +   'OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO, GENCODBAR, ENVAUTDES, CORENVAUTDES, '
        +   'CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, '
        +   'DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, ANOENV, ENVIO, CODOTRDOCIDE, '
        +   'NUMOTRDOCIDE, CODMOTDESTAPO, AUTDESCUO, FECAUTDESCUO, USUREGAUTDESCUO, '
        +   'OFIREGAUTDESCUO, CODMODAUTDESCUO, MDFASODIR, MDFZIPID, MDFCNTREG, MDFUSRMOD, '
        //JCARBONEL - HPP_200904_ASO SE AGREGA CAMPO CENEDUID PARA PASAR DE ASO_NUE_CLI AL APO201
        +   'MDFFECMOD, EMICARTA, DESMANVIV, CODMOTDESTCUO, FECACTPAD, CENEDUID ) '
        +'Select '
        +   'ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, '
        +   'ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, '
        +   'ASOTIPID, ASOFACT, ';

   if DM1.cdsAso.FieldByname('ASOTIPID').AsString='VO' then
      xSQL:=xSQL+quotedstr('DO')+' ASOTIPID, '
   else
      xSQL:=xSQL+' ASOTIPID, ';

   xSQL:=xSQL
        +   'VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, '
        +   'ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, '
        +   'ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, '
        +   'BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, '
        +   'ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, '
        +   'ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, '
        +   'ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, '
        +   'CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, '
        +   'ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, '
        +   'ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, '
        +   'PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, '
        +   'CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, '
        +   'ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, '
        +   'OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO, GENCODBAR, ENVAUTDES, CORENVAUTDES, '
        +   'CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, '
        +   'DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, ANOENV, ENVIO, CODOTRDOCIDE, '
        +   'NUMOTRDOCIDE, CODMOTDESTAPO, AUTDESCUO, FECAUTDESCUO, USUREGAUTDESCUO, '
        +   'OFIREGAUTDESCUO, CODMODAUTDESCUO, MDFASODIR, MDFZIPID, MDFCNTREG, MDFUSRMOD, '
        //JCARBONEL - HPP_200904_ASO SE AGREGA CAMPO CENEDUID PARA PASAR DE ASO_NUE_CLI AL APO201
        +   'MDFFECMOD, EMICARTA, DESMANVIV, CODMOTDESTCUO, FECACTPAD, CENEDUID '
        +'From ASO_NUE_CLI '
        +'Where SOLICITUD='+QuotedStr( DM1.cdsAso.FieldByname('SOLICITUD').AsString )
        + ' and ASOID='    +QuotedStr( DM1.cdsAso.FieldByname('ASOID').AsString )
        + ' and EST_AUT_CLI=''N3''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;

   xSQL:='UPDATE ASO_NUE_CLI '
        +'   SET EST_AUT_CLI     =''AP'', USU_AUT_CLI='''+DM1.wUsuario+''', FEC_AUT_CLI=SYSDATE, '
        +       'obs_aut_cli     ='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli').AsString )+', '
        +       'obs_aut_cli_uge ='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli_uge').AsString )+', '
        +       'obs_aut_cli_pad ='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli_pad').AsString )+', '
        +       'obs_aut_cli_otr ='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli_otr').AsString )+' '
        +'WHERE SOLICITUD        ='+QuotedStr( DM1.cdsAso.FieldByname('SOLICITUD').AsString )
        + ' and ASOID            ='+QuotedStr( DM1.cdsAso.FieldByname('ASOID').AsString )
        + ' and EST_AUT_CLI=''N3''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;

   xSQL:='INSERT INTO ASO_RESOLUCIONES( ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, '
        +  'ASORESCESE, ASOFRESCESE, RESVIG, CORRELATIVO, USUARIO, FREG, HREG, LIQUIDADO, '
        +  'NUMLIQ, FECLIQ, REINGRESO, ANULADO, OBSANU, USUANU, FECANU, NUMEXPLIQ,FECEXPLIQ ) '
        +  'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, ASORESCESE, '
        +  'ASOFRESCESE, RESVIG, CORRELATIVO, USUARIO, FREG, HREG, LIQUIDADO, NUMLIQ, '
        +  'FECLIQ, REINGRESO, ANULADO, OBSANU, USUANU, FECANU, NUMEXPLIQ, FECEXPLIQ '
        +'FROM ASO_RESOLUCIONES_NUE '
        +'WHERE SOLICITUD='+QuotedStr( DM1.cdsAso.FieldByname('SOLICITUD').AsString );
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;

   FMantAsociado.bbtnN1.Enabled:=False;
   FMantAsociado.bitAutoriza.Enabled:=False;
   FMantAsociado.bitRechaza.Enabled:=False;
   FMantAsociado.ActivaSalir;

   ShowMessage('Autorizado');

end;

procedure TFAutoriza.BitSalirClick(Sender: TObject);
begin
   Close;
end;

end.
