// Inicio Uso Estándares:	01/08/2011
// Unidad		            :	ASO260M.pas
// Formulario		        :	FMantAsociadoBuscar
// Fecha de Creación	  :	2009
// Autor			          :	Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Buscar un asociado

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
//HPC_201118_ASO  26/10/2011  DFERNANDEZ Se permitirá desbloquear al usuario JRODRIGUEZ y al mismo usuario que bloqueó
//                                      el registro del asociado

// Se realiza el pase con el N° HPP_201109_ASO, sobre el pase HPC_201119_ASO
// DPP_201202_ASO : Se realiza el pase de acuerdo al HPC_201203_ASO
// HPC_201301_ASO : Cambios por régimen de pensionista 19990
//                  Se permitirá configurar dinámicamente que usuario tiene permiso para liberar bloqueos
// SPP_201303_ASO : El pase a producción se solicita a partir del HPC_201301_ASO
// HPC_201303_ASO :
// SPP_201304_ASO : El pase se realiza de acuerdo a lo indicado en el documento HPC_201303_ASO
// SPP_201402_ASO : 03/02/2014 - Cambio a DBExpress y Socket
// SPP_201402_ASO : Se realiza el pase a producción a partir del HPC_201401_ASO
// SPP_201403_ASO : Se modifica el client cdsLeyPen para corregir error al momento de abrir el client. 
// SPP_201403_ASO : Se realiza el pase a producción sobre el HPC_201402_ASO
// HPC_201501_ASO : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos)
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES
// HPC_201607_ASO : Se añade Qry para controlar los codigos y descripciones de la ley de pension.
// HPC_201609_ASO : Se asigna los codigos de prestación al client "cdsCodPrestacion".
// HPC_201704_ASO : Se implementa el tipo de documento

unit ASO260M;

interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
  jpeg,IniFiles,DateUtils, Msgdlgs;
type
  TFMantAsociadoBuscar = class(TForm)
    GbAsociados: TGroupBox;
    BitMostrar: TBitBtn;
    gbBuscar: TGroupBox;
    edtBuscar: TEdit;
    dtgAsociado: TwwDBGrid;
    BitSalir: TBitBtn;
    dtgAsociadoIButton: TwwIButton;
    rbtDni: TRadioButton;
    rbtCuenta: TRadioButton;
    rbtCodMod: TRadioButton;
    rbtApeNom: TRadioButton;
    bbtnLiberaAsociado: TBitBtn;
    procedure BitMostrarClick(Sender: TObject);
    procedure dtgAsociadoDblClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure dtgAsociadoIButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rbtApeNomClick(Sender: TObject);
    procedure rbtDniClick(Sender: TObject);
    procedure rbtCuentaClick(Sender: TObject);
    procedure rbtCodModClick(Sender: TObject);
    function VrfCtaAhorros(xAsoId:String):String;
    procedure edtBuscarExit(Sender: TObject);
    procedure dtgAsociadoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure bbtnLiberaAsociadoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dtgAsociadoCellChanged(Sender: TObject); 
  private
    { Private declarations }
    procedure LimpiaGrid;
  public
    { Public declarations }
  end;

var
  FMantAsociadoBuscar: TFMantAsociadoBuscar;

implementation

// Inicio HPC_201501_ASO : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos)
uses ASODM, ASO908, ASO936, ASO900, ASO942, ASO903, ASO260, ASO272;
// Fin    HPC_201501_ASO : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos)

{$R *.dfm}



procedure TFMantAsociadoBuscar.BitMostrarClick(Sender: TObject);
var xSQL:String;
begin
  DM1.sAPO201:='APO201';

  If Length(Trim(edtBuscar.Text)) > 0 Then
     Begin

       If rbtApeNom.Checked Then
          xSQL:='SELECT * FROM APO201 WHERE ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       If rbtDni.Checked Then
          xSQL:='SELECT * FROM APO201 WHERE ASODNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       If rbtCuenta.Checked Then
          xSQL:='SELECT * FROM APO201 WHERE ASONCTA LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       If rbtCodMod.Checked Then
          xSQL:='SELECT * FROM APO201 WHERE ASOCODMOD LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       DM1.cdsAso.Close;

       DM1.cdsAso.DataRequest(xSQL);
       DM1.cdsAso.Open;
     End
   Else
      Begin
         MessageDlg('Debe Ingresar Un Criterio Para La Busqueda', mtError, [mbOk], 0);
         edtBuscar.SetFocus;
      End;

end;

Procedure TFMantAsociadoBuscar.dtgAsociadoDblClick(Sender: TObject);
Var
   xAsoId,xSQL:String;
Begin

   // Inicio: HPC_201607_ASO
   xSQL := 'SELECT CODLEYPEN, DESLEYPEN FROM ASO_LEY_PEN_MAE ORDER BY CODLEYPEN';
   DM1.cdsCodLeyPen.Close;
   DM1.cdsCodLeyPen.DataRequest(xSql);
   DM1.cdsCodLeyPen.Open;
   // Fin: HPC_201607_ASO

   // Inicio: HPC_201609_ASO
   // Se asigna la tablas de codigos de prestación a un client dataset
   xSql := 'SELECT CODPRE, DESPRE FROM ASO_COD_PRE_MAE WHERE NVL(FLAACT,''X'') = ''S'' ORDER BY CODPRE';
   DM1.cdsCodPrestacion.Close;
   DM1.cdsCodPrestacion.DataRequest(xSql);
   DM1.cdsCodPrestacion.Open;
   // Fin: HPC_201609_ASO

// Inicio HPC_201501_ASO : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos)
   //DM1.xCnd:='M';
// Fin    HPC_201501_ASO : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos)
   dm1.xInsert:='0';
   If dtgAsociado.DataSource.DataSet.RecordCount > 0 Then
   Begin
      If DM1.xCnd = 'M' Then
      Begin
         // Inicio: SPP_201303_ASO
         // se controla para que si el Asociado se encuentra en actualización por el módulo de Previsión
         // no pueda ingresar a esta opción, ya que tembién actualiza el Maestro de Asociados

         // Inicio SPP_201402_ASO - 18/02/2014 Cambio a DBExpress y Socket
         if not ((DM1.cdsAso.FieldByName('EN_ACTUALIZ').AsString='') OR (DM1.cdsAso.FieldByName('EN_ACTUALIZ').AsString='XXX')) then
         //if DM1.IndicaAsociadoEnAct(DM1.cdsAso.fieldbyname('ASOID').AsString) then
         begin
            {xSQL := 'select USUARIO '
                   +'from APO201 '
                   +'where ASOID='+quotedstr(DM1.cdsAso.fieldbyname('ASOID').AsString);
            DM1.cdsQry.Close;
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;}
            ErrorMsg('Módulo de Asociados', 'Existe otra opción que puede estar actualizando datos del Asociado'+chr(13)
                                +' es posible que el USUARIO : '+DM1.cdsAso.FieldByName('USUARIO').AsString+' lo haya bloqueado '+chr(13)
                                             +'no se puede ejecutar en simultáneo con esta Opción');
            exit;
         end;
         // Fin  SPP_201402_ASO - 18/02/2014 Cambio a DBExpress y Socket

      // Fin: SPP_201303_ASO
         Try
            xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
            xSQL:='SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId));
            DM1.cdsAso.Close;
            DM1.cdsAso.DataRequest(xSQL);
            DM1.cdsAso.Open;

         // revisando si tiene carta de designación.
            xSQL := 'select ASOID, count(*) CUENTA '
                   +' from PVS302 '
                   +' where ASOID = ' + QuotedStr(xAsoId)
                   +' group by ASOID';
            DM1.cdsQry.Close;
            DM1.cdsQry.DataRequest(xSql);
            DM1.cdsQry.Open;
            If DM1.cdsQry.RecordCount > 0 Then
            Begin

               Application.MessageBox(pchar('El Asociado cuenta con '+ chr(13)
                        + DM1.cdsQry.FieldByName('CUENTA').AsString
                        + ' carta(s) de designación'),pchar('Búsqueda de Asociado'),MB_OK+MB_ICONWARNING);
            End;

  // Modificaciones por Fallecimiento del asociado
            IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
            BEGIN
           // Verifico si el Asociado esta con Observación
              xSQL:='SELECT ESTADO,OBSERVACION FROM ASO007 WHERE ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString +''' ORDER BY ITEM DESC ';
              DM1.cdsQry.CLOSE;
              DM1.cdsQry.DataRequest(XSQL);
              DM1.cdsQry.Open;
              If (DM1.cdsQry.RecordCount>0) and (TRIM(DM1.cdsQry.FieldByName('ESTADO').AsString)='I') Then
              Begin
                 MessageDlg('El Asociado tiene la siguiente Observación por levantar :'+#13+Trim(DM1.cdsQry.FieldByName('OBSERVACION').AsString) , mtError, [mbOk], 0);
                 Exit;
              End;
              DM1.cdsQry.Close;
              DM1.cdsQry.IndexFieldNames:='';
           // Verifico si Nesecita Autorizacion de la Cta de Ahorro
              xSQL:='SELECT CODIGO FROM CUENTAS_PER WHERE CODIGO='+QuotedStr(Copy(Trim(DM1.cdsAso.FieldByName('ASONCTA').AsString),1,4));
              DM1.cdsCtasBco.Close;
              DM1.cdsCtasBco.DataRequest(xSQL);
              DM1.cdsCtasBco.Open;
              If DM1.cdsCtasBco.RecordCount > 0 Then
              Begin
              // VERIFICO SI YA ESTA AUTORIZADO
                 xSQL:= 'SELECT * FROM ASO002 WHERE ASOID='''+xAsoId+''' ';
                 DM1.cdsCtasBco.Close;
                 DM1.cdsCtasBco.DataRequest(XSQL);
                 DM1.cdsCtasBco.Open;
                 If Length(Trim(DM1.cdsCtasBco.FieldByName('FECAUT').AsString))= 0 then
                 Begin
                 // Si no esta autorizado verifico si tiene registro para autorizar
                    xSql:= 'SELECT * FROM ASO001 WHERE ASOID='''+xAsoId+''' ';
                    DM1.cdsCtasBco.Close;
                    DM1.cdsCtasBco.DataRequest(XSQL);
                    DM1.cdsCtasBco.Open;
                    If DM1.cdsCtasBco.RecordCount= 0 then
                    Begin
                    // Si no tiene registro de cabecera para autorizar inserto uno nuevo
                       xSQL:='INSERT INTO ASO001(ASOID,USUARIO,HREG,IDCODIGO,ASONCTA,ASOAPENOM,ASODNI) VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,''03032005'','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASONCTA').AsString))+','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString))+','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString))+') ';
                       DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                    End;
                    // INICIO HPC_201513_ASO
                    //MessageDlg('SE NECESITA AUTORIZACION DE LA CUENTA', mtError, [mbOk], 0);
                    // FIN HPC_201513_ASO
                    DM1.cdsCtasBco.Close;
                    xSQL:='SELECT ASOID,ASONCTA FROM ASO002 WHERE ASOID='+QuotedStr(xAsoId)+' AND ASONCTA='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASONCTA').AsString));
                    DM1.cdsTCredito.Close;
                    DM1.cdsTCredito.DataRequest(xSQL);
                    DM1.cdsTCredito.Open;
                    If DM1.cdsTCredito.RecordCount=0 Then
                    Begin
                    // Si no tiene registro detalle para autorizar inserto uno nuevo
                       xSQL:='INSERT INTO ASO002(ASOID,USUARIO,HREG,IDCODIGO,ASONCTA,ASOAPENOM,ASODNI) VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,''03032005'','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASONCTA').AsString))+','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString))+','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString))+') ';
                       DM1.DCOM1.AppServer.EjecutaSql(xSQL);
                    End;
                    // INICIO HPC_201513_ASO
                    xSQL := 'SELECT DB2ADMIN.SF_ASO_AUTORIZA_CTA_TELEAHORRO(' + QuotedStr(xAsoId) + ', ' + QuotedStr(DM1.wUsuario) + ') RESULTADO FROM DUAL ';
                    DM1.cdsQry.Close;
                    DM1.cdsQry.DataRequest(xSQL);
                    DM1.cdsQry.Open;
                    if DM1.cdsQry.fieldbyname('RESULTADO').AsString = 'N' then
                       MessageDlg('SE NECESITA AUTORIZACION DE LA CUENTA', mtError, [mbOk], 0);
                    // FIN HPC_201513_ASO
                 End;
              End;
           // Verifico si no es unica la Cuenta de Ahorros
              If VrfCtaAhorros(xAsoId)='N'  Then
              Begin
                 MessageDlg('La CUENTA DE AHORROS No Es Unica,...Verifique ', mtError, [mbOk], 0);
                 Exit;
              End;
            END;

         // Inicio  SPP_201402_ASO - 18/02/2014 Cambio a DBExpress y Socket
            {xSQL:='SELECT * FROM TGE158';
            DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
            DM1.cdsRec.Close;   DM1.cdsRec.DataRequest(xSQL);    DM1.cdsRec.Open;
            xSQL:='SELECT ID,DESCRIP FROM TGE817 ';
            DM1.cdsSexo.Close;
            DM1.cdsSexo.DataRequest(xSQL);
            DM1.cdsSexo.Open;}
         // Fin  SPP_201402_ASO - 18/02/2014 Cambio a DBExpress y Socket

            If (DM1.cdsAso.fieldbyname('ASOTIPID').AsString='NI') AND (DM1.cdsAso.fieldbyname('TCREACION').AsString='01') Then
               xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CE'') '
            Else
            Begin
            // El nivel 03 puede ver todos los tipos de asociado segun requerimeinto
        { If  ((Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03') or (DM1.wUsuario = 'VARAMBURU') or
        (DM1.wUsuario = 'JSOTO') or (DM1.wUsuario = 'FCOZAR')) then xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107'}
        //El nivel 02 y 03 pueden ver todo los tipos de asociados (segun requerimiento de RODRIGUEZ
               If ( ((Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03') or (Copy(DM1.CrgArea(DM1.wUsuario),6,2)='02')) and (DM1.wofides='01') ) then
                  xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107'
               else
               Begin
                // Si el Cliente endiferente de DO y CE solo podra ver en mismo tipo de docente
                  if (dm1.cdsAso.FieldByName('ASOTIPID').AsString <> 'DO') and
                          (dm1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE') Then
                     xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN ('+QuotedStr(Trim(dm1.cdsAso.FieldByName('ASOTIPID').AsString)) +') '
                  else xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'',''CE'') ';
               End;
            End;
            DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;


         // Inicio  SPP_201402_ASO - 18/02/2014 Cambio a DBExpress y Socket
            {xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
            DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;
            // Inicio: SPP_201303_ASO
            xSQL:='SELECT CODLEYPEN, DESLEYPEN FROM ASO_LEY_PEN_MAE ORDER BY CODLEYPEN';
            DM1.cdsLeyPen.Close; DM1.cdsLeyPen.DataRequest(xSQL);  DM1.cdsLeyPen.Open;
            // Fin: SPP_201303_ASO
            xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE CLAUXID=''A'' ';
            DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;
            xSQL:='SELECT UPROID,UPRONOM FROM APO102';
            DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL);  DM1.cdsUPro.Open;
            xSQL:='SELECT UPROID,UPAGOID,UPAGONOM FROM APO103';
            DM1.cdsUPago.Close; DM1.cdsUPago.DataRequest(xSQL); DM1.cdsUPago.Open;
            //Cambio pase HPP_00024_ASO - 23/09/2008
            xSQL:='SELECT UPROID,UPAGOID,USEID,USENOM FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N''';
            DM1.cdsUSE.Close; DM1.cdsUSE.DataRequest(xSQL); DM1.cdsUSE.Open;}
         // Fin  SPP_201402_ASO - 18/02/2014 Cambio a DBExpress y Socket


  // Modificaciones por Fallecimiento del asociado
            IF DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S' THEN
            BEGIN
              MessageDlg('El Asociado ha Fallecido', mtInformation, [mbOk], 0);
            END;

         // marca el registro del Asociado en Maestro de Asociados, para que no pueda sea actualizado por otro lado
            xSQL := 'begin '
                   +'  SP_ACT_PROC_ACT_MAE('+quotedstr(xAsoId)+','
                                         +quotedstr(DM1.wModulo)+', ' + QuotedStr(DM1.wUsuario) + '); '
                   +'end; ';
            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

            FMantAsociado:= TFMantAsociado.create(self);
//Inicio HPC_201704_ASO
//Se implementa el tipo de documento
            FMantAsociado.dblTipDoc.Enabled:=False;
            FMantAsociado.dblTipDoc.Text   := dm1.cdsAso.Fieldbyname('TIPDOCCOD').AsString;
            FMantAsociado.edtnumdoc.Text   := DM1.cdsAso.fieldbyname('ASODOCNUM').AsString;
//Final HPC_201704_ASO
            // Inicio SPP_201402_ASO  : 03/02/2014 - Cambio a DBExpress y Socket
            {FMantAsociado.lkcDpto.Text  := DM1.cdsAso.fieldbyname('ASODPTO').AsString;
            FMantAsociado.lkcProv.Text  := DM1.cdsAso.fieldbyname('CIUDID').AsString;
            FMantAsociado.lkcDist.Text  := DM1.cdsAso.fieldbyname('ZIPID').AsString;}

            FMantAsociado.lkcDpto.Text  := Copy(DM1.cdsAso.fieldbyname('ZIPID').AsString,1,2);
            FMantAsociado.lkcProv.Text  := Copy(DM1.cdsAso.fieldbyname('ZIPID').AsString,1,4);
            FMantAsociado.lkcDist.Text  := DM1.cdsAso.fieldbyname('ZIPID').AsString;

            FMantAsociado.edtDpto.Text  :=DM1.CrgDescrip('DPTOID='+QuotedStr(Trim(FMantAsociado.lkcDpto.Text)),'APO158','DPTODES');
            FMantAsociado.edtProv.Text  :=DM1.CrgDescrip('DPTOID||CIUDID='+QuotedStr(Trim(FMantAsociado.lkcProv.Text)),'TGE121','CIUDDES');
            // Inicio: HPC_201607_ASO
            // Se añade descripción de distrito domiciliario
            FMantAsociado.edtDist.Text  :=DM1.CrgDescrip('ZIPID='+QuotedStr(Trim(FMantAsociado.lkcDist.Text)),'APO122','ZIPDES');
            // Fin: HPC_201607_ASO

            // Fin SPP_201402_ASO  : 03/02/2014 - Cambio a DBExpress y Socket
            FMantAsociado.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
            FMantAsociado.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
            FMantAsociado.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
            FMantAsociado.edtanos.Text := DM1.tiempoTranscurrido(dm1.FechaSys,FMantAsociado.dbdtFecNac.Date);

            // Inicio: HPC_201609_ASO
            // Se asigna descripción para la ley de pensión y de prestación.
            FMantAsociado.edtCodLeyPen.Text :=  DM1.CrgDescrip('CODLEYPEN = '+QuotedStr(Trim(FMantAsociado.dblcdCodLeyPen.Text)),'ASO_LEY_PEN_MAE','DESLEYPEN');
            FMantAsociado.edtdesprestacion.Text := DM1.CrgDescrip('CODPRE = '+QuotedStr(Trim(FMantAsociado.dblcdCodPrestacion.Text)),'ASO_COD_PRE_MAE','DESPRE');
            // Fin: HPC_201609_ASO

            DM1.xSgr:='CTR';
            
            DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');

            If DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId)),'SRB000','ESTDEP')='02' Then
               FMantAsociado.pnlPrefente.Visible:=True
            Else
               FMantAsociado.pnlPrefente.Visible:=False;

            FMantAsociado.lblAsoApeNom.Caption:=DM1.cdsAso.fieldbyname('ASOAPENOM').AsString+' (Dato de Planillas)';
            If DM1.xOfiDes>'01' Then
            Begin
               If DM1.cdsAso.fieldbyname('ASOTIPID').AsString='CE' Then
               Begin
                  FMantAsociado.DbLlRegPen.Enabled:=False;
               End;
            End;
            FMantAsociado.Caption := 'Mantenimiento de Asociado';
            FMantAsociado.ShowModal;
         Finally
         // Inicio   SPP_201402_ASO - 18/02/2014 Cambio a DBExpress y Socket
            FMantAsociado.Free;
            DM1.cdsPadre.Close; DM1.cdsHijo.Close; DM1.cdsCAso.Close;
            //DM1.cdsRec.Close;
            //DM1.cdsSexo.Close;
            DM1.cdsTRela.Close; DM1.cdsQry7.Close;
            DM1.cdsTAso.Close;
            //DM1.cdsResol.Close;
            //DM1.cdscarta.Close;
            // DM1.cdsLeyPen.Close; SPP_201403_ASO

         // Fin    SPP_201402_ASO - 18/02/2014 Cambio a DBExpress y Socket

         // si ha entrado al mantenimiento de Asociados, libera forma y
         //    libera el registro del Asociado en Maestro de Asociados, para que pueda sea actualizado
            xSQL := 'begin '
                   +'  SP_ACT_PROC_ACT_MAE('+quotedstr(xAsoId)+','
                                         +quotedstr('XXX')+', ' + QuotedStr(DM1.wUsuario) + '); '
                   +'end; ';

            DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

         End;
      End
      Else
      // Inicio HPC_201501_ASO : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos)
         If DM1.xCnd='X' Then
         Begin
            If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<>'03' Then Exit;
            Try
               fAuditoria := TfAuditoria.create(Self);
               xSQL:='SELECT TABLA,GRUPO,CAMPO,COMPONENTE,CAMPODES,NVL(MARCAR,''X'') MARCAR FROM SIS001 WHERE CAMPO NOT IN (''TITULO'',''BOTON'') AND TABLA=''Detalle'' ORDER BY CAMPODES';
               DM1.cdsEgrCaja.Close; DM1.cdsEgrCaja.DataRequest(xSQL);  DM1.cdsEgrCaja.Open;
               fAuditoria.lblAsoApeNom.Caption:=DM1.cdsAso.fieldbyname('ASOAPENOMDNI').AsString;
               fAuditoria.ShowModal;
            Finally
               fAuditoria.Free;
            End;
         End
         Else
         Begin
            If DM1.xCnd = 'C' Then
            Begin
               try
                 fMasDatos := TfMasDatos.Create(self);
                 fMasDatos.xsAsoId:= DM1.cdsAso.FieldByName('ASOID').AsString;
                 fMasDatos.ShowModal;
               Finally
                 fMasDatos.Free;
               End;
            end
            else
            begin
                DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');
                DM1.LimpiaDatos;
                DM1.CrgDatos;
                FOtorPre.Botones(True);
                FOtorPre.lblMtoPre.Caption:=FormatFloat('###,###.#0',FOtorPre.SaldoSrb(DM1.cdsAso.FieldByName('ASOID').AsString));
                FOtorPre.dtgPrestamos.SetFocus;
                Close;
            end;
         End;
      // Fin   HPC_201501_ASO : Información de Contactabilidad (Direcciones, teléfonos y correos electrónicos)
   End;
   BitMostrar.OnClick(BitMostrar);
end;

procedure TFMantAsociadoBuscar.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFMantAsociadoBuscar.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;

end;

procedure TFMantAsociadoBuscar.FormActivate(Sender: TObject);
// Inicio: SPP_201303_ASO
var
  xSql: string;
// Fin: SPP_201303_ASO
begin
   DM1.sAso_where:='';
   If DM1.xSgr='1' Then
   Begin
      LimpiaGrid;
   End;

  // Inicio: SPP_201303_ASO
  xSql := 'SELECT A.TABLA, A.GRUPO, A.CAMPO, A.COMPONENTE, A.CAMPODES'
    + ' FROM SIS001 A'
    + ' WHERE A.COMPONENTE IS NOT NULL'
    + '     AND A.GRUPO = ''K018'''
    + '     AND A.TABLA = ''Menu'''
    + '     AND EXISTS (SELECT S.USERID'
    + '         FROM SIS000 S'
    + '         WHERE S.USERID = ' + QuotedStr(DM1.wUsuario)
    + '         AND A.TABLA = S.TABLA'
    + '         AND A.COMPONENTE = S.COMPONENTE)';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount > 0 Then
    bbtnLiberaAsociado.Visible := True
  else
    bbtnLiberaAsociado.Visible := False;
   {if (DM1.wUsuario='DB2ADMIN') or (DM1.wUsuario='JRODRIGUEZ') or (DM1.wUsuario='VARAMBURU') or (DM1.wUsuario='JSOTO')
    or (DM1.wUsuario='SMENDOZA') or (DM1.wUsuario='RYUCRA') or (DM1.wUsuario='KISMINIO') then
      bbtnLiberaAsociado.Visible := True;}
  // Fin: SPP_201303_ASO
end;

procedure TFMantAsociadoBuscar.dtgAsociadoIButtonClick(Sender: TObject);
var
   xSQL:String;
begin
    xSQL:='SELECT * FROM TGE158';
    DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
    DM1.cdsRec.Close;  DM1.cdsRec.DataRequest(xSQL);   DM1.cdsRec.Open;

    xSQL:='SELECT ID,DESCRIP FROM TGE817 ';
    DM1.cdsSexo.Close;  DM1.cdsSexo.DataRequest(xSQL);   DM1.cdsSexo.Open;

    //xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CE'',''DO'') ';
    //Solo se debe insertar Asociados Cesantes, segun Requerimiento
    xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CE'') ';
    DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;

    xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
    DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;

    // Inicio: SPP_201303_ASO
    xSQL:='SELECT CODLEYPEN, DESLEYPEN FROM ASO_LEY_PEN_MAE ORDER BY CODLEYPEN';
    // Inicio: SPP_201403_ASO
    // DM1.cdsLeyPen.Close; DM1.cdsLeyPen.DataRequest(xSQL);  DM1.cdsLeyPen.Open;
    DM1.cdsCodLeyPen.Close; DM1.cdsCodLeyPen.DataRequest(xSQL); DM1.cdsCodLeyPen.Open;
    // Fin: SPP_201403_ASO
    // Fin: SPP_201303_ASO

    xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE CLAUXID=''A'' ';
    DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;

    xSQL:='SELECT UPROID,UPRONOM FROM APO102';
    DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL);  DM1.cdsUPro.Open;

    XSQL:='SELECT * FROM APO201 WHERE ASOID=''AAAAAAAAAA'' ';
    DM1.cdsAso.Close; DM1.cdsAso.DataRequest(XSQL); DM1.cdsAso.Open;
    DM1.cdsAso.Insert;

  Try
    DM1.xInsert:='1';
    FMantAsociado:= TFMantAsociado.create(self);
    FMantAsociado.lblAsoApeNom.Caption   := 'Ingreso de Nuevo Asociado';
    FMantAsociado.gbIdentidadAso.Enabled := True;
    FMantAsociado.gbLaboralAso.Enabled   := True;
    FMantAsociado.BitModifica.Enabled := False;
    FMantAsociado.BitGrabar.Enabled:=True;
    //FMantAsociado.BitCancelar.Enabled:=True;
    FMantAsociado.pnlCodMod.Enabled  :=True;
    FMantAsociado.pnlResoluciones.Enabled := True;
    //FMantAsociado2.pnlCtaTeleAhorro.Enabled:= True;
    FMantAsociado.Showmodal;
  Finally
     FMantAsociado.Free;
  End;

end;

procedure TFMantAsociadoBuscar.FormCreate(Sender: TObject);
begin
 DM1.BlqComponentes(Self);

// Inicio Inicio SPP_201402_ASO    : Cambio del Logo en Reportes
 //DM1.cdsPadre.Close;
// Fin  SPP_201402_ASO    : Cambio del Logo en Reportes
 DM1.cdsHijo.Close;
 DM1.cdsCAso.Close;

 gbbuscar.Width:=430;
 gbbuscar.Height :=40;
 edtBuscar.Width:=407;
 edtBuscar.Height := 28;
 DM1.cdsAso.Close;
 DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOCODMOD='+QuotedStr('@#$!*@/#&^'));
 DM1.cdsAso.Open;
end;

procedure TFMantAsociadoBuscar.rbtApeNomClick(Sender: TObject);
begin
LimpiaGrid;
FMantAsociadoBuscar.gbbuscar.Width:=430; FMantAsociadoBuscar.gbbuscar.Height :=40;
FMantAsociadoBuscar.edtBuscar.Width:=407; FMantAsociadoBuscar.edtBuscar.Height := 28;
GbAsociados.Caption:='Buscar Por '+rbtApeNom.Caption;  edtBuscar.SetFocus;
end;

procedure TFMantAsociadoBuscar.rbtDniClick(Sender: TObject);
begin
LimpiaGrid;
FMantAsociadoBuscar.gbbuscar.Width:=137; FMantAsociadoBuscar.gbbuscar.Height :=40;
FMantAsociadoBuscar.edtBuscar.Width:=114; FMantAsociadoBuscar.edtBuscar.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtDni.Caption;  edtBuscar.SetFocus;
end;

procedure TFMantAsociadoBuscar.rbtCuentaClick(Sender: TObject);
begin
LimpiaGrid;
FMantAsociadoBuscar.gbbuscar.Width:=137; FMantAsociadoBuscar.gbbuscar.Height :=40;
FMantAsociadoBuscar.edtBuscar.Width:=114; FMantAsociadoBuscar.edtBuscar.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtCuenta.Caption;  edtBuscar.SetFocus;
end;

procedure TFMantAsociadoBuscar.rbtCodModClick(Sender: TObject);
begin
LimpiaGrid;
FMantAsociadoBuscar.gbbuscar.Width:=137; FMantAsociadoBuscar.gbbuscar.Height :=40;
FMantAsociadoBuscar.edtBuscar.Width:=114; FMantAsociadoBuscar.edtBuscar.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtCodMod.Caption;  edtBuscar.SetFocus;
end;

procedure TFMantAsociadoBuscar.LimpiaGrid;
begin
  FMantAsociadoBuscar.edtBuscar.Text:=''; DM1.cdsAso.Close;  DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOCODMOD='+QuotedStr('@#$!*@/#&^'));   DM1.cdsAso.Open;
end;

function TFMantAsociadoBuscar.VrfCtaAhorros(xAsoId: String): String;
var xSQL:String;
begin
   xSQL:='SELECT ASOID,ASONCTA FROM APO207 WHERE ASOID='+QuotedStr(xAsoId)+' AND SITCTA=''A''  ';
   DM1.cdsCtasBco.Close; DM1.cdsCtasBco.DataRequest(xSQL); DM1.cdsCtasBco.Open;
   If DM1.cdsCtasBco.RecordCount > 1 Then   Result:='N'  Else   Result:='S' ;
   DM1.cdsCtasBco.Close;
end;

procedure TFMantAsociadoBuscar.edtBuscarExit(Sender: TObject);
begin
   If Length(Trim(edtBuscar.Text))<> 0 Then
      BitMostrarClick(self);
end;


procedure TFMantAsociadoBuscar.dtgAsociadoDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
   if DM1.cdsAso.FieldByName('AsoTipId').AsString='CE' then
     begin
       If Field.DisplayName = 'Tipo' Then
         Begin
          dtgAsociado.Canvas.Font.Color := clRed;
          dtgAsociado.DefaultDrawDataCell(Rect, Field, State);
         End;
     end;
end;

procedure TFMantAsociadoBuscar.FormShow(Sender: TObject);
begin
   if (DM1.cdsAso.State=dsInsert) or (DM1.cdsAso.State=dsEdit) then
      DM1.cdsAso.CancelUpdates;
end;

// si ha entrado al mantenimiento de Asociados, libera forma y
// libera el registro del Asociado en Maestro de Asociados, para que pueda sea actualizado
procedure TFMantAsociadoBuscar.bbtnLiberaAsociadoClick(Sender: TObject);
var
   xSQL, xCodReg, xAsoId : String;
begin
   if DM1.IndicaAsociadoEnAct(DM1.cdsAso.fieldbyname('ASOID').AsString) then
   begin
      xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
      xCodReg:=DM1.CodReg;
      DM1.Registro_Aud(xAsoId,'0',xCodReg);
      xSQL := 'begin '
             +'  SP_ACT_PROC_ACT_MAE('+quotedstr(xAsoId)+','
                                         +quotedstr('XXX')+', ' + QuotedStr(DM1.wUsuario) + '); '
             +'end; ';
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      DM1.Registro_Aud(xAsoId,'1',xCodReg);
      BitMostrarClick(self);
      ShowMessage('El Asociado ha sido Liberado para que pueda ser actualizado.');
   end;
end;

procedure TFMantAsociadoBuscar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   If DM1.xCnd='M' Then
   Begin
      DM1.xCnd := 'S';
      Close;
   End
   Else
   Begin
      If DM1.xCnd='X' Then
      Begin
         Close;
      End
      Else
      Begin
         If DM1.xCnd='D' Then
         Begin
            Close;
         End
         Else
         Begin
            DM1.LimpiaDatos;
            DM1.cdsAso.Close;
            Close;
         End;
      End;
   End;
end;

procedure TFMantAsociadoBuscar.dtgAsociadoCellChanged(Sender: TObject);
// Inicio: SPP_201303_ASO
var
  xSql: string;
// Fin: SPP_201303_ASO
begin
// Inicio SPP_201402_ASO  - Cambio a DBExpress y Socket
  {xSql := 'SELECT A.TABLA, A.GRUPO, A.CAMPO, A.COMPONENTE, A.CAMPODES'
    + ' FROM SIS001 A'
    + ' WHERE A.COMPONENTE IS NOT NULL'
    + '     AND UPPER(A.GRUPO) = ''K018'''
    + '     AND UPPER(A.TABLA) = ''MENU'''
    + '     AND EXISTS (SELECT S.USERID'
    + '         FROM SIS000 S'
    + '         WHERE S.USERID = ' + QuotedStr(DM1.wUsuario)
    + '         AND A.TABLA = S.TABLA'
    + '         AND A.COMPONENTE = S.COMPONENTE)';
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;}

  // Se Cambia por nuevo ClientDataSet
  DM1.cdsUsuarioBloq.First;

  // Inicio: SPP_201304_ASO
  //Los usuarios autorizados puede desbloquear y también el propio usuario que bloqueó el registro
  if (DM1.cdsUsuarioBloq.RecordCount > 0) or
     ((DM1.cdsAso.FieldByName('EN_ACTUALIZ').AsString='') or (DM1.cdsAso.FieldByName('EN_ACTUALIZ').AsString<>'XXX'))
     and(DM1.cdsAso.FieldByName('USUARIO').AsString = DM1.wUsuario)
  then
     bbtnLiberaAsociado.Visible := True
  else
     bbtnLiberaAsociado.Visible := False;
  // Fin: SPP_201304_ASO
   {if (DM1.wUsuario='DB2ADMIN') or (DM1.wUsuario='JRODRIGUEZ') or (DM1.wUsuario='VARAMBURU') or (DM1.wUsuario='JSOTO')
    or (DM1.wUsuario='SMENDOZA') or (DM1.wUsuario='RYUCRA') or (DM1.wUsuario='KISMINIO') then
  begin
    bbtnLiberaAsociado.Visible := True;
  end
  else
  begin
    if ((DM1.cdsAso.FieldByName('EN_ACTUALIZ').AsString = '')
      or (DM1.cdsAso.FieldByName('EN_ACTUALIZ').AsString <> 'XXX'))
      and (DM1.cdsAso.FieldByName('USUARIO').AsString = DM1.wUsuario) then
      bbtnLiberaAsociado.Visible := True
    else
      bbtnLiberaAsociado.Visible := False;
  end;}
  // Fin: SPP_201303_ASO
// Fin  SPP_201402_ASO  - Cambio a DBExpress y Socket
end;

end.
