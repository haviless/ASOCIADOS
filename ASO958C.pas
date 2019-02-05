// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO958C.pas
// Formulario              :  FAutoriza
// Fecha de Creación       :  15/12/1993
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Confirmar la autorización de creación de un asociado

// Actualizaciones:
// HPC_201211_ASO          :  Se registra la información nueva en la base de datos centralizada de ubicabilidad
// HPC_201301_ASO          :  Se corrige error al registrar datos de ubicabilidad
// SPP_201301_ASO          :  El pase a producción se realiza sobre la base del HPC_201301_ASO
// SPP_201303_ASO          :  El pase a producción se solicita a partir del HPC_201301_ASO
// HPC_201303_ASO          :  Se agregan campos nuevos para que al confirmar la autorización se migren a la tabla APO201
// SPP_201304_ASO          :  El pase se realiza de acuerdo a lo indicado en el documento HPC_201303_ASO
// SPP_201402_ASO          : Redimencionar solo formulario no se podia accede a los botones
// SPP_201402_ASO          : Se realiza el pase a producción a partir del HPC_201401_ASO
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES

unit ASO958C;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, ExtCtrls,
  WSUbicabilidad, XSBuiltIns;

type
  TFConfirma = class(TForm)
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    Panel1: TPanel;
    dbmObs1: TDBMemo;
    DBMemo3: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo1: TDBMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfirma: TFConfirma;

implementation

uses ASODM, ASO260;

{$R *.dfm}

procedure TFConfirma.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFConfirma.BitGrabarClick(Sender: TObject);
var
   xSQL : String;
// Inicio: SPP_201301_ASO
  wsUbica: WSUbicabilidadSoap;
  dir: ASO_UBICA_DIR_HIS;
  tel: ASO_UBICA_TELF_HIS;
  email: ASO_UBICA_EMAIL_HIS;
  fecAct: TXSDateTime;
// Fin: SPP_201301_ASO
begin
   if MessageDlg('VALIDAR NUEVO CLIENTE. ¿ ESTA SEGURO ?' ,mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

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

   // Inicio: SPP_201304_ASO
   // INICIO HPC_201513_ASO
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
        +   'MDFFECMOD, EMICARTA, DESMANVIV, CODMOTDESTCUO, FECACTPAD, CODPENSION, CODLEYPEN, CODTIPTEL1, CODREFTEL1, CODTIPTEL2, CODREFTEL2, FECREGAUTDESAPO, CENEDUID) '
        +'Select '
        +   'ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, '
        +   'ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, '
        +   'ASOTIPID, ASOFACT, ';
   // FIN HPC_201513_ASO
   if DM1.cdsAso.FieldByname('ASOTIPID').AsString='VO' then
      xSQL:=xSQL+quotedstr('DO')+' ASOTIPID, '
   else
      xSQL:=xSQL+' ASOTIPID, ';
   // INICIO HPC_201513_ASO
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
        +   'MDFFECMOD, EMICARTA, DESMANVIV, CODMOTDESTCUO, FECACTPAD, CODPENSION, CODLEYPEN, CODTIPTEL1, CODREFTEL1, CODTIPTEL2, CODREFTEL2, FECREGAUTDESAPO, CENEDUID '
        +'From ASO_NUE_CLI '
        +'Where SOLICITUD='+QuotedStr( DM1.cdsAso.FieldByname('SOLICITUD').AsString )
        + ' and ASOID='    +QuotedStr( DM1.cdsAso.FieldByname('ASOID').AsString )
        + ' and EST_AUT_CLI=''N3''';
   // FIN HPC_201513_ASO
   // Fin: SPP_201304_ASO
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;

   xSQL:='Update ASO_NUE_CLI set EST_AUT_CLI=''AP'', USU_AUT_CLI='''+DM1.wUsuario+''', FEC_AUT_CLI=SYSDATE, '
        +       'obs_aut_cli='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli').AsString )+', '
        +       'obs_aut_cli_uge='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli_uge').AsString )+', '
        +       'obs_aut_cli_pad='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli_pad').AsString )+', '
        +       'obs_aut_cli_otr='+QuotedStr( DM1.cdsAso.FieldByname('obs_aut_cli_otr').AsString )+' '
        +'WHERE SOLICITUD='+QuotedStr( DM1.cdsAso.FieldByname('SOLICITUD').AsString )
        + ' and ASOID='    +QuotedStr( DM1.cdsAso.FieldByname('ASOID').AsString )
        + ' and EST_AUT_CLI=''N3''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;

   xSQL:='Insert into ASO_RESOLUCIONES( ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, '
        +  'ASORESCESE, ASOFRESCESE, RESVIG, CORRELATIVO, USUARIO, FREG, HREG, LIQUIDADO, '
        +  'NUMLIQ, FECLIQ, REINGRESO, ANULADO, OBSANU, USUANU, FECANU, NUMEXPLIQ,FECEXPLIQ ) '
        +'SELECT ASOID, ASOCODMOD, ASOCODAUX, ASORESNOM, ASOFRESNOM, ASORESCESE, '
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

   BitGrabar.Enabled:=False;

   // Inicio: SPP_201303_ASO
   wsUbica := nil;
   xSql := 'SELECT ASODIR, DESREFVIV, DPTOID, CIUDID, ZIPID, ASOTELF1, ASOTELF2, '
    + ' CODTIPTEL1, CODTIPTEL2, CODREFTEL1, CODREFTEL2, ASOEMAIL FROM APO201 WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount > 0 then
   begin
     if (Trim(DM1.cdsQry.FieldByName('ASODIR').AsString) <> '') then
     begin
       fecAct := TXSDateTime.Create;
       if wsUbica = nil then wsUbica := GetWSUbicabilidadSoap(false, '');
       dir := ASO_UBICA_DIR_HIS.Create;
       
       dir.ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
       dir.CODPROV := 3; //Previsión
       dir.CODPROC := 3; //Actualización de Datos
       dir.CODTIPDIR := 1; //Domicilio
       if DM1.cdsQry.FieldByName('ZIPID').AsString <> '' then
       begin
         dir.CODDPTO_TRANSACCIONAL := Copy(DM1.cdsQry.FieldByName('ZIPID').AsString,1,2);
         dir.CODPRV_TRANSACCIONAL := Copy(DM1.cdsQry.FieldByName('ZIPID').AsString,1,4);
         dir.CODDIST_TRANSACCIONAL := Copy(DM1.cdsQry.FieldByName('ZIPID').AsString,1,6);
       end;
       fecAct.AsDateTime := DM1.FechaSys();
       dir.FECACT := fecAct;
       dir.ASODIR := DM1.cdsQry.FieldByName('ASODIR').AsString;
       dir.DESREF := DM1.cdsQry.FieldByName('DESREFVIV').AsString;
       dir.USUREG := DM1.wUsuario;
       
       wsUbica.Crear_Ubicabilidad_Direccion(dir);
       dir.Free;
     end;
     
     if (Trim(DM1.cdsQry.FieldByName('ASOTELF1').AsString) <> '') then
     begin
       fecAct := TXSDateTime.Create;
       if wsUbica = nil then wsUbica := GetWSUbicabilidadSoap(false, '');
       tel := ASO_UBICA_TELF_HIS.Create;
       
       tel.ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
       tel.CODPROV := 3; //Previsión
       tel.CODPROC := 3; //Actualización de Datos
       tel.CODTIPTEL_TRANSACCIONAL := DM1.cdsQry.FieldByName('CODTIPTEL1').AsString;
       tel.CODREFTEL_TRANSACCIONAL := DM1.cdsQry.FieldByName('CODREFTEL1').AsString;
       fecAct.AsDateTime := DM1.FechaSys();
       tel.FECACT := fecAct;
       tel.USUREG := DM1.wUsuario;
       tel.ASOTELF := DM1.cdsQry.FieldByName('ASOTELF1').AsString;
       
       wsUbica.Crear_Ubicabilidad_Telefonica(tel);
       
       tel.Free;
     end;
     
     if (Trim(DM1.cdsQry.FieldByName('ASOTELF2').AsString) <> '') then
     begin
       fecAct := TXSDateTime.Create;
       if wsUbica = nil then wsUbica := GetWSUbicabilidadSoap(false, '');
       tel := ASO_UBICA_TELF_HIS.Create;
       
       tel.ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
       tel.CODPROV := 3; //Previsión
       tel.CODPROC := 3; //Actualización de Datos
       tel.CODTIPTEL_TRANSACCIONAL := DM1.cdsQry.FieldByName('CODTIPTEL2').AsString;
       tel.CODREFTEL_TRANSACCIONAL := DM1.cdsQry.FieldByName('CODREFTEL2').AsString;
       fecAct.AsDateTime := DM1.FechaSys();
       tel.FECACT := fecAct;
       tel.USUREG := DM1.wUsuario;
       tel.ASOTELF := DM1.cdsQry.FieldByName('ASOTELF2').AsString;
       
       wsUbica.Crear_Ubicabilidad_Telefonica(tel);
       
       tel.Free;
     end;
     
     if (Trim(DM1.cdsQry.FieldByName('ASOEMAIL').AsString) <> '') then
     begin
       fecAct := TXSDateTime.Create;
       if wsUbica = nil then wsUbica := GetWSUbicabilidadSoap(false, '');
       email := ASO_UBICA_EMAIL_HIS.Create;
       
       email.ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
       email.CODPROV := 3; //Previsión
       email.CODPROC := 3; //Actualización de Datos
       fecAct.AsDateTime := DM1.FechaSys();
       email.FECACT := fecAct;
       email.USUREG := DM1.wUsuario;
       email.ASOEMAIL := DM1.cdsQry.FieldByName('ASOEMAIL').AsString;
       
       wsUbica.Crear_Ubicabilidad_Email(email);
       
       email.Free;
     end;
   end;
   
   xSql := 'SELECT R.DIRECCION, R.LUGDOM FROM INF_RENIEC_CAP R WHERE R.DNI = ' + QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ' AND R.FECACT = (SELECT MAX(R2.FECACT) FROM INF_RENIEC_CAP R2 WHERE R2.DNI = ' + QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount > 0 then
   begin
     if (Trim(DM1.cdsQry.FieldByName('DIRECCION').AsString) <> '') then
     begin
       fecAct := TXSDateTime.Create;
       if wsUbica = nil then wsUbica := GetWSUbicabilidadSoap(false, '');
       dir := ASO_UBICA_DIR_HIS.Create;
       
       dir.ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
       dir.CODPROV := 3; //Previsión
       dir.CODPROC := 9; //Actualización de Datos por Padrones
       dir.CODTIPDIR := 1; //Domicilio
       if DM1.cdsQry.FieldByName('LUGDOM').AsString <> '' then
       begin
         xSql := 'SELECT TRUNC(R.FECACT) FECACT, R.DIRECCION, R.LUGDOM, SUBSTR(R.LUGDOM, 1, INSTR(R.LUGDOM, '','', 1, 1) - 1) DPTO,'
           + ' SUBSTR(R.LUGDOM, INSTR(R.LUGDOM, '','', 1, 1) + 2, INSTR(R.LUGDOM, '','', 1, 2) -  INSTR(R.LUGDOM, '','', 1, 1) - 2) PROV,'
           + ' SUBSTR(R.LUGDOM, INSTR(R.LUGDOM, '','', 1, 2) + 2, INSTR(R.LUGDOM, '','', 1, 3) -  INSTR(R.LUGDOM, '','', 1, 2) - 2) DIST, D.DPTOID'
           + ' FROM INF_RENIEC_CAP R LEFT JOIN TGE158 D ON SUBSTR(R.LUGDOM, 1, INSTR(R.LUGDOM, '','', 1, 1) - 1) = D.DPTODES'
           + ' WHERE R.DNI = ' + QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString)
           + '   AND R.FECACT = (SELECT MAX(R2.FECACT) FROM INF_RENIEC_CAP R2'
           + '                   WHERE R2.DNI = ' + QuotedStr(DM1.cdsAso.FieldByName('ASODNI').AsString) + ')'
           + '   AND ROWNUM = 1';
         DM1.cdsQry24.Close;
         DM1.cdsQry24.DataRequest(xSql);
         DM1.cdsQry24.Open;
         if DM1.cdsQry24.RecordCount > 0 then
         begin
           dir.CODDPTO_TRANSACCIONAL := Copy(DM1.cdsQry24.FieldByName('DPTOID').AsString,1,2);
         end;
         
         //se obtiene el código de la provincia
         xSql := 'SELECT CIUDID FROM TGE121 WHERE DPTOID = ' + QuotedStr(DM1.cdsQry24.FieldByName('DPTOID').AsString)
           + ' AND CIUDDES = ' + QuotedStr(DM1.cdsQry24.FieldByName('PROV').AsString);
         DM1.cdsQry19.Close;
         DM1.cdsQry19.DataRequest(xSql);
         DM1.cdsQry19.Open;
         if (DM1.cdsQry19.RecordCount > 0)
          and (DM1.cdsQry19.FieldByName('CIUDID').AsString <> '') then
          dir.CODPRV_TRANSACCIONAL := dir.CODDPTO_TRANSACCIONAL + DM1.cdsQry19.FieldByName('CIUDID').AsString;
         
         //se obtiene el código del distrito
         xSql := 'SELECT ZIPID FROM TGE122 WHERE DPTOID = ' + QuotedStr(DM1.cdsQry24.FieldByName('DPTOID').AsString)
           + ' AND CIUDID = ' + QuotedStr(DM1.cdsQry19.FieldByName('CIUDID').AsString)
           + ' AND ZIPDES = ' + QuotedStr(DM1.cdsQry24.FieldByName('DIST').AsString);
         DM1.cdsQry19.Close;
         DM1.cdsQry19.DataRequest(xSql);
         DM1.cdsQry19.Open;
         if (DM1.cdsQry19.RecordCount > 0)
          and (DM1.cdsQry19.FieldByName('ZIPID').AsString <> '') then
          dir.CODDIST_TRANSACCIONAL := dir.CODPRV_TRANSACCIONAL + DM1.cdsQry19.FieldByName('ZIPID').AsString;
       end;
       fecAct.AsDateTime := DM1.FechaSys();
       dir.FECACT := fecAct;
       dir.ASODIR := DM1.cdsQry.FieldByName('DIRECCION').AsString;
       dir.DESREF := '';
       dir.USUREG := DM1.wUsuario;
       
       wsUbica.Crear_Ubicabilidad_Direccion(dir);
       dir.Free;
     end;
   end;
   // Fin: SPP_201303_ASO
   
   ShowMessage('Autorizado');
end;

end.
