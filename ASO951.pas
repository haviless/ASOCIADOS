// Inicio Uso Estándares   :	01/08/2011
// Unidad		               :	ASO951.pas
// Formulario		           :	FValRegNue
// Fecha de Creación       :  15/12/1993
// Autor			             :	Equipo de Desarrollo de Sistemas DM
// Objetivo		             :  Validación de Actualización de Registro

// Actualizaciones:

////////////////////////////////////////////////////////////////////////////
// HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Modificaciones por Fallecimiento del asociado
////////////////////////////////////////////////////////////////////////////
// HPC_201119_ASO  // Añade búsqueda por Asociado
////////////////////////////////////////////////////////////////////////////

// Se realiza el pase a producción N° HPP_201109_ASO, a partir del pase HPC_201119_ASO
// DPP_201202_ASO : Se realiza el pase de acuerdo al HPC_201203_ASO
// HPC_201303_ASO :
// SPP_201304_ASO : El pase se realiza de acuerdo a lo indicado en el documento HPC_201303_ASO
// SPP_201402_ASO  : IMPLEMENTACION RENIEC (CAMBIO DE LA VERSION 1.0 A VERSION 2.0)
// SPP_201403_ASO : Se modifica el client CdsCEdu para corregir error al momento de abrir el client.
// SPP_201403_ASO : Se realiza el pase a producción sobre el HPC_201402_ASO.
// HPC_201608_ASO : Se corrige error que se encontro al momento de levantar la tabla de código de prestación
// HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion


unit ASO951;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcButton, fcImgBtn, fcShapeBtn, StdCtrls, wwdbdatetimepicker,
  ExtCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, wwdblook, Db, Mask,
  wwdbedit;

type
  TfValRegNue = class(TForm)
    GroupBox1: TGroupBox;
    dtgNueAso: TwwDBGrid;
    BitSalir: TBitBtn;
    PnFecGen: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DtpFecIni: TwwDBDateTimePicker;
    DtpFecFin: TwwDBDateTimePicker;
    BitMostrar: TBitBtn;
    Panel2: TPanel;
    EdtOfiDes: TEdit;
    Label1: TLabel;
    BitDenegar: TBitBtn;
    BitAprobar: TBitBtn;
    edtBuscar: TEdit;
    Label2: TLabel;
    DBLkOfiDes: TwwDBLookupCombo;
    BitMstApo: TfcShapeBtn;

    rbPorFecha: TRadioButton;
    rbPorAsociado: TRadioButton;
    edtASOCODMOD: TwwDBEdit;
    BitBuscarAso: TButton;
    edtASOAPENOMDNI: TwwDBEdit;
    edtASOID: TwwDBEdit;
// Inicio SPP_201402_ASO  : IMPLEMENTACION RENIEC (CAMBIO DE LA VERSION 1.0 A VERSION 2.0)
    cbTodos: TCheckBox;
// Fin SPP_201402_ASO  : IMPLEMENTACION RENIEC (CAMBIO DE LA VERSION 1.0 A VERSION 2.0)

    procedure BitSalirClick(Sender: TObject);
    procedure DBLkOfiDesChange(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgNueAsoDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgNueAsoDblClick(Sender: TObject);
    procedure BitAprobarClick(Sender: TObject);
    procedure BitDenegarClick(Sender: TObject);
    procedure edtBuscarChange(Sender: TObject);
    procedure edtBuscarKeyPress(Sender: TObject; var Key: Char);
    procedure BitMstApoClick(Sender: TObject);
    procedure BitMostrarKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

    procedure rbPorFechaClick(Sender: TObject);
    procedure rbPorAsociadoClick(Sender: TObject);
    procedure BitBuscarAsoClick(Sender: TObject);
// Inicio SPP_201402_ASO  : IMPLEMENTACION RENIEC (CAMBIO DE LA VERSION 1.0 A VERSION 2.0)
    procedure cbTodosClick(Sender: TObject);
// Fin  SPP_201402_ASO  : IMPLEMENTACION RENIEC (CAMBIO DE LA VERSION 1.0 A VERSION 2.0)

  private
    { Private declarations }
  public
    { Public declarations }
     procedure MstGrid;
     procedure LimpiaMstGrid;
  end;

var
  fValRegNue: TfValRegNue;

implementation

uses ASODM, ASO908, ASO952, ASO900, ASO944, ASO260,
     ASO200;

{$R *.dfm}

procedure TfValRegNue.BitSalirClick(Sender: TObject);
begin
    Close;
end;

procedure TfValRegNue.DBLkOfiDesChange(Sender: TObject);
begin
   If DM1.cdsOfdes.Locate('OFDESID',VarArrayof([DBLkOfiDes.Text]),[]) Then
      Begin
        EdtOfiDes.Text  := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString ;
      End
   Else
      Begin
        if Length(DBLkOfiDes.Text) <> 2 then
           Begin
              Beep;
              EdtOfiDes.Text  :='';
           End;
      End;

end;

procedure TfValRegNue.BitMostrarClick(Sender: TObject);
var xnum:integer;
begin

    XNUM := TRUNC(DtpFecFin.Date-DtpFecIni.DATE);

    If XNUM>30 Then
      Begin
       MessageDlg('El rango de consulta no debe exceder los 30 días... ', mtError,[mbOk], 0 );
       exit;
      End;
    if xnum<0 Then
      Begin
        MessageDlg('El rango de consulta esta mal asignado... ', mtError,[mbOk], 0 );
        exit;
      End;

   MstGrid;
end;

procedure TfValRegNue.FormActivate(Sender: TObject);
begin
  LimpiaMstGrid;
  DtpFecIni.Date:=DM1.FechaSys; DtpFecFin.Date:=DM1.FechaSys;
end;


procedure TfValRegNue.dtgNueAsoDrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 If (Field.FieldName = 'USRVERIFICA') Or (Field.FieldName = 'FHVERIFICA') Or (Field.FieldName = 'DESESTADO') then
    Begin
      dtgNueAso.Canvas.Font.Color := clRed;
      dtgNueAso.DefaultDrawDataCell(rect,Field,State);
    End;

 If (Field.FieldName = 'USUARIO') Or (Field.FieldName = 'FHREGISTRO') Then
    Begin
      dtgNueAso.Canvas.Font.Color := clGreen;
      dtgNueAso.DefaultDrawDataCell(rect,Field,State);
    End;
 // Inicio: SPP_201403_ASO
 // If DM1 CdsCEdu.FieldByName('IDESTADO').AsString='03'   Then
 If DM1.cdsValRegAso.FieldByName('IDESTADO').AsString='03'   Then
 begin
   dtgNueAso.Canvas.Font.Color := clRed;
   dtgNueAso.DefaultDrawDataCell(rect,Field,State);
 end;
// Fin: SPP_201403_ASO
end;


procedure TfValRegNue.dtgNueAsoDblClick(Sender: TObject);
var xSQL: String;
begin
// Inicio: SPP_201403_ASO
  If DM1.cdsValRegAso.RecordCount <= 0 then
  //  if DM1.cdsCEdu.RecordCount <= 0 then
  begin
    MessageDlg('No hay registros', mtInformation, [mbOk],0);
    Exit;
  end;
// Fin: SPP_201403_ASO

  Try
    // Inicio: SPP_201403_ASO
    // xSQL:='SELECT * FROM APO201 WHERE ASOID='+QuotedStr(DM1.cdsCEdu.fieldbyname('ASOID').AsString);
    xSQL:='SELECT '+
		  'ASOID,ASOCODMOD,ASOCODAUX,ASOCODPAGO,ASOAPEPAT,ASOAPEMAT,ASONOMBRES,ASOAPENOM,USEID,UPROID, '+
		  'UPAGOID,ASORESNOM,ASOFRESNOM,RESID,REGPENID,ASOSITID,ASOFACT,ASOTIPID,VIAID,VIANOMBRE,ASONUMDIR, '+
		  'ASOFDPTO,ASODPTO,ZONAID,ZONANOMB,UBIGEOID,DPTOID,PAISID,REFDOM,ASOFECNAC,ASOTELF1,ASOTELF2,TIPDOCCOD, '+
   	      'ASODOCNUM,ASOLIBMIL,ASORUC,ESTCIVID,ASOSEXO,ASOEMAIL,BANCOID,ASONCTA,SITCTA,ASODNI,GRAACID,GRAINSID, '+
		  'PROFID,ASOFMOV,ASOFLUGING,ASODIR,USUARIO,HREG,FREG,ASOLUGEST,FECTEREST,TIEMPOEST,ASOLNACID,ASORESCESE, '+
		  'ASOFRESCESE,FGARANTE,ZIPID,CIUDID,ARCHIVOFTP,CIAID,FLAGVAR,ASOAPNCRE,FLGFSOL,ESTCLF,OBSERVA,USR_CREA, '+
		  'FEC_CREA,USR_BEN,FEC_BEN,CTASER,CARGO,VARIASCUOT,CRENCUOTA,NFUSION,IDIMAGE,FSINLIQ,ASODESCOL,ASODIRCOL, '+
	      'ASOZIPCOL,ASOAPEPATDNI,ASOAPEMATDNI,ASONOMDNI,ASOAPENOMDNI,ASODESLAB,ASODIRLAB,ASODPTLABID,ASOPRVLABID, '+
	      'ASODSTLABID,ASOTELLAB,DPTNACID,PRVNACID,DSTNACID,VIALABID,ZONALABID,FECACT,INDICADOR,CCOSID,PASSWORD, '+
          'CODAFP,DESHABILITADO,VALIDA_CI,TCREACION,REGVERIF,CODMODANT,VALCODMODDNI,ACTARCRENANT,ACTARCREN,REINGRESO, '+
          'AUTDESAPO,FECAUTDESAPO,USUREGAUTDESAPO,OFIREGAUTDESAPO,CODMODAUTDESAPO,CODARCHIVO,GENCODBAR,ENVAUTDES, '+
          'CORENVAUTDES,CODTIPLUG,NUMDIRVIV,NUMMANVIV,NUMLOTVIV,DESINTVIV,DESREFVIV,CODURBVIV,DESURBVIV,NUMETAVIV, '+
          'DESETAVIV,NUMINTVIV,NOMDIRVIV,ANOENV,ENVIO,CODOTRDOCIDE,NUMOTRDOCIDE,CODMOTDESTAPO,AUTDESCUO,FECAUTDESCUO, '+
          'USUREGAUTDESCUO,OFIREGAUTDESCUO,CODMODAUTDESCUO,MDFASODIR,MDFZIPID,MDFCNTREG,MDFUSRMOD,MDFFECMOD,EMICARTA, '+
          'DESMANVIV,CODMOTDESTCUO,FECACTPAD,CENEDUID,FALLECIDO,TIPO_FALL_ID,EN_ACTUALIZ,CODTIPTEL1,CODREFTEL1,CODTIPTEL2, '+
          'CODREFTEL2,CODPENSION,FECREGAUTDESAPO,CODLEYPEN,NUMAUTONP,CODBLOCHAREN,NUMBLOCHAREN,CODDEPINTREN,DESDEPINTREN, '+
          // Inicio: HPC_201608_ASO
          // Se añade el campo código de prestación
          // 'ASOAPECASDNI,INVALIDEZ,TIPO_INVA_ID,FECAUTONP FROM APO201 WHERE ASOID='+QuotedStr(DM1.cdsValRegAso.fieldbyname('ASOID').AsString);
          'ASOAPECASDNI,INVALIDEZ,TIPO_INVA_ID,FECAUTONP, CODPRE FROM APO201 WHERE ASOID='+QuotedStr(DM1.cdsValRegAso.fieldbyname('ASOID').AsString);
          // Fin: HPC_201608_ASO

    // Fin: SPP_201403_ASO
    DM1.cdsAso.Close;    DM1.cdsAso.DataRequest(xSQL);    DM1.cdsAso.Open;

    If (DM1.cdsAso.fieldbyname('ASOTIPID').AsString='NI') AND (DM1.cdsAso.fieldbyname('TCREACION').AsString='01') Then
         xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CE'') '
    Else
       Begin
        //El nivel 03 puede ver todos los tipos de asociado segun requerimeinto
        If  Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03' then xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107'
        else xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'',''CE'') ';
       End;
    DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;

    xSQL:='SELECT * FROM TGE158';
    DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
    DM1.cdsRec.Close;  DM1.cdsRec.DataRequest(xSQL);   DM1.cdsRec.Open;
    xSQL:='SELECT ID,DESCRIP FROM TGE817 ';
    DM1.cdsSexo.Close;  DM1.cdsSexo.DataRequest(xSQL);   DM1.cdsSexo.Open;
    xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107';
    DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;
    xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
    DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;
    // Inicio: SPP_201304_ASO

    xSQL:='SELECT CODLEYPEN, DESLEYPEN FROM ASO_LEY_PEN_MAE ORDER BY CODLEYPEN';
    // Inicio: SPP_201403_ASO
    // DM1.cdsLeyPen.Close; DM1.cdsLeyPen.DataRequest(xSQL);  DM1.cdsLeyPen.Open;
    DM1.cdsCodLeyPen.Close; DM1.cdsCodLeyPen.DataRequest(xSQL);  DM1.cdsCodLeyPen.Open;
    // Fin: SPP_201403_ASO

    // Fin: SPP_201304_ASO

   // Inicio: HPC_201608_ASO
   // Se asigna la tablas de codigos de prestación a un client dataset
   xSQL := 'SELECT CODPRE, DESPRE FROM ASO_COD_PRE_MAE WHERE NVL(FLAACT,''X'') = ''S'' ORDER BY CODPRE';
   DM1.cdsCodPrestacion.Close;
   DM1.cdsCodPrestacion.DataRequest(xSQL);
   DM1.cdsCodPrestacion.Open;
   // Fin: HPC_201608_ASO


   
    xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE SUBSTR(PROV,1,1)=''A'' ';
    DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;
    xSQL:='SELECT UPROID,UPRONOM FROM APO102';
    DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL);  DM1.cdsUPro.Open;
    xSQL:='SELECT UPROID,UPAGOID,UPAGONOM FROM APO103';
    DM1.cdsUPago.Close; DM1.cdsUPago.DataRequest(xSQL); DM1.cdsUPago.Open;

    xSQL:='SELECT UPROID,UPAGOID,USEID,USENOM FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N''';
    DM1.cdsUSE.Close; DM1.cdsUSE.DataRequest(xSQL); DM1.cdsUSE.Open;

    FMantAsociado:= TFMantAsociado.create(self);
    FMantAsociado.lkcDpto.Text := DM1.cdsAso.fieldbyname('ASODPTO').AsString;
    FMantAsociado.lkcProv.Text := DM1.cdsAso.fieldbyname('CIUDID').AsString;
    FMantAsociado.lkcDist.Text := DM1.cdsAso.fieldbyname('ZIPID').AsString;
    FMantAsociado.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
    FMantAsociado.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
    FMantAsociado.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;

    FMantAsociado.lblAsoApeNom.Caption:=DM1.cdsAso.fieldbyname('ASOAPENOM').AsString+' (Dato de Planillas)';
    FMantAsociado.EdtApePatDni.Enabled:=False;
    FMantAsociado.EdtApeMatDni.Enabled:=False;
    FMantAsociado.EdtAsoNomDni.Enabled:=False;
    FMantAsociado.dbeCodPag.Enabled:=False;
    FMantAsociado.dbeLibDni.Enabled:=False;
    FMantAsociado.DbLlTipAso.Enabled:=False;
    FMantAsociado.DbLlRegPen.Enabled:=False;
    FMantAsociado.BitModifica.Enabled:=False;
    FMantAsociado.BitReasignacion.Enabled:=True;
    FMantAsociado.BitSocio.Enabled:=True;
    FMantAsociado.edtanos.Text := DM1.tiempoTranscurrido(dm1.FechaSys,FMantAsociado.dbdtFecNac.Date);

    DM1.xCnd:='VRF';
    If DM1.xCnd='VRF' Then
       Begin
         FMantAsociado.BitMstApo.Enabled:=True;
       End;
    FMantAsociado.ShowModal;

  Finally
    DM1.cdsPadre.Close; DM1.cdsHijo.Close; DM1.cdsCAso.Close; DM1.cdsRec.Close; DM1.cdsTRela.Close; DM1.cdsQry7.Close;
    // Inicio: HPC_201608_ASO
    // Se cierra el clientdataset del código de prestación
    // DM1.cdsSexo.Close; DM1.cdsTAso.Close; DM1.cdsResol.Close; DM1.cdscarta.Close;
    DM1.cdsSexo.Close; DM1.cdsTAso.Close; DM1.cdsResol.Close; DM1.cdscarta.Close; DM1.cdsCodPrestacion.Close;
    // Fin: HPC_201608_ASO
    // Inicio: SPP_201304_ASO

    // Inicio: SPP_201403_ASO
    // DM1.cdsLeyPen.Close;
    DM1.cdsCodLeyPen.Close;
    // Fin: SPP_201403_ASO


    // Fin: SPP_201304_ASO
    FMantAsociado.Free;
  End;

end;

procedure TfValRegNue.BitAprobarClick(Sender: TObject);
begin
  // Inicio: SPP_201403_ASO
  // If Length(Trim(DM1.cdsCEdu.FieldByName('IDESTADO').AsString))=0 Then
  If Length(Trim(DM1.cdsValRegAso.FieldByName('IDESTADO').AsString))=0 Then
  // Fin: SPP_201403_ASO
   Begin
      DM1.xSgr:='APR';
      fMenObs:=Nil;
      fMenObs := tfMenObs.Create(Self) ;
      fMenObs.Caption := 'Aprobar Actualización ';
      fMenObs.Showmodal;
      fMenObs.Free;
   End
Else
   Begin
      // Inicio: SPP_201403_ASO
      // MessageDlg(' Este Registro Se Encuentra '+Trim(DM1.cdsCEdu.FieldByName('DESESTADO').AsString), mtError,[mbOk],0);
      MessageDlg(' Este Registro Se Encuentra '+Trim(DM1.cdsValRegAso.FieldByName('DESESTADO').AsString), mtError,[mbOk],0);
      // Fin: SPP_201403_ASO
      Exit;
   End;

end;

procedure TfValRegNue.BitDenegarClick(Sender: TObject);
begin
   // Inicio: SPP_201403_ASO
   // If Length(Trim(DM1.cdsCEdu.FieldByName('IDESTADO').AsString))=0 Then
   If Length(Trim(DM1.cdsValRegAso.FieldByName('IDESTADO').AsString))=0 Then
   // Fin: SPP_201403_ASO
   Begin
      DM1.xSgr:='DEN';
      fMenObs:=Nil;
      fMenObs := tfMenObs.Create(Self) ;
      fMenObs.Caption := 'Denegar Actualización ';
      fMenObs.Showmodal;
      fMenObs.Free;
   End
Else
   Begin
      // Inicio: SPP_201403_ASO
      // MessageDlg(' Este Registro Se Encuentra '+Trim(DM1.cdsCEdu.FieldByName('DESESTADO').AsString), mtError,[mbOk],0);
      MessageDlg(' Este Registro Se Encuentra '+Trim(DM1.cdsValRegAso.FieldByName('DESESTADO').AsString), mtError,[mbOk],0);
      // Fin: SPP_201403_ASO
      Exit;
   End;

end;


procedure TfValRegNue.MstGrid;
var xSQL:String;
begin
// Se agrega búsqueda por asociado

   if rbPorAsociado.Checked and (edtASOID.Text = '') then
   begin
      MessageDlg('Seleccione un asociado', mtInformation, [mbOk], 0);
      Exit;
   end;

// Inicio SPP_201402_ASO  : IMPLEMENTACION RENIEC (CAMBIO DE LA VERSION 1.0 A VERSION 2.0)
   xSQL:='SELECT A.ASOID, A.ASOAPENOM, A.USUARIO, A.FHREGISTRO, A.OFDESID, A.REASIGNACION, A.DATGENERAL, A.DATSOCIOECO, '
        +'       A.OBSERVACION, A.USRVERIFICA, A.FHVERIFICA, A.IDESTADO, B.DESESTADO, D.OFDESNOM '
        // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        +', A.ITEM, A.ASOAPTSER '
        // Fin HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        +'FROM ASO003 A, ASO004 B, APO201 C, APO110 D '
        +'WHERE A.IDESTADO = B.IDESTADO(+) '
        +'  AND A.ASOID = C.ASOID '
        +'  AND A.OFDESID=D.OFDESID(+) ';
   if rbPorFecha.Checked then
   begin
      if cbTodos.Checked then
      xSQL:= xSQL + '  AND TO_DATE(A.FHREGISTRO) BETWEEN ' + QuotedStr(DtpFecIni.Text) + ' AND ' + QuotedStr(DtpFecFin.Text)
           // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
           //+ ' ORDER BY D.OFDESNOM, A.ASOAPENOM, A.FHREGISTRO DESC'
           + ' ORDER BY A.ITEM DESC'
           // Fin HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      else
      xSQL:= xSQL + '  AND TO_DATE(A.FHREGISTRO) BETWEEN ' + QuotedStr(DtpFecIni.Text) + ' AND ' + QuotedStr(DtpFecFin.Text)
           + ' AND A.OFDESID='+QuotedStr(DBLkOfiDes.Text)
           // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
           //+ ' ORDER BY A.ASOAPENOM, A.FHREGISTRO DESC';
           + ' ORDER BY A.ITEM DESC'
           // Fin HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

   end
   else
   begin
     xSQL:= xSQL + '  AND A.ASOID = ' + QuotedStr(edtASOID.Text)
      // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      //+ ' ORDER BY A.FHREGISTRO DESC';
      + ' ORDER BY A.ITEM DESC'
      // Fin HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   end;
// Fin SPP_201402_ASO  : IMPLEMENTACION RENIEC (CAMBIO DE LA VERSION 1.0 A VERSION 2.0)
   DM1.sAPO201 := 'APO201';

   // Inicio: SPP_201403_ASO
   // DM1.CdsCEdu.Close;
   // DM1.CdsCEdu.DataRequest(xSQL);
   // DM1.CdsCEdu.Open;
   // DM1.CdsCEdu.fieldbyname('REASIGNACION').Alignment:=taCenter	;
   // DM1.CdsCEdu.fieldbyname('DATGENERAL').Alignment:=taCenter	;
   // DM1.CdsCEdu.fieldbyname('DATSOCIOECO').Alignment:=taCenter	;
   DM1.cdsValRegAso.Close;
   DM1.cdsValRegAso.DataRequest(xSQL);
   DM1.cdsValRegAso.Open;
   DM1.cdsValRegAso.fieldbyname('REASIGNACION').Alignment:=taCenter	;
   DM1.cdsValRegAso.fieldbyname('DATGENERAL').Alignment:=taCenter	;
   DM1.cdsValRegAso.fieldbyname('DATSOCIOECO').Alignment:=taCenter	;
   // Fin: SPP_201403_ASO

end;

procedure TfValRegNue.LimpiaMstGrid;
var xSQL:String;
begin
   xSQL:='SELECT ASOID,ASOAPENOM,USUARIO,FHREGISTRO,OFDESID,REASIGNACION,DATGENERAL,DATSOCIOECO,OBSERVACION, '+
         'USRVERIFICA,FHVERIFICA,A.IDESTADO,B.DESESTADO FROM ASO003 A,ASO004 B WHERE A.IDESTADO=B.IDESTADO(+) '+
         'AND TO_DATE(FHREGISTRO) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)+' AND OFDESID='+QuotedStr('@@');
   // Inicio: SPP_201403_ASO
   // DM1.CdsCEdu.Close;
   // DM1.CdsCEdu.DataRequest(xSQL);
   // DM1.CdsCEdu.Open;
   // DM1.CdsCEdu.fieldbyname('REASIGNACION').Alignment:=taCenter	;
   // DM1.CdsCEdu.fieldbyname('DATGENERAL').Alignment:=taCenter	;
   // DM1.CdsCEdu.fieldbyname('DATSOCIOECO').Alignment:=taCenter	;
   DM1.cdsValRegAso.Close;
   DM1.cdsValRegAso.DataRequest(xSQL);
   DM1.cdsValRegAso.Open;
   DM1.cdsValRegAso.fieldbyname('REASIGNACION').Alignment:=taCenter	;
   DM1.cdsValRegAso.fieldbyname('DATGENERAL').Alignment:=taCenter	;
   DM1.cdsValRegAso.fieldbyname('DATSOCIOECO').Alignment:=taCenter	;
   // Fin: SPP_201403_ASO


end;

procedure TfValRegNue.edtBuscarChange(Sender: TObject);
begin
If Length(Trim(edtBuscar.Text))>0 Then
   Begin
     // Inicio: SPP_201403_ASO
     // DM1.cdsCEdu.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);
     DM1.cdsValRegAso.Locate('ASOAPENOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);
     // Fin: SPP_201403_ASO
   End;
end;

procedure TfValRegNue.edtBuscarKeyPress(Sender: TObject; var Key: Char);
begin
If Key=#13 Then
    Begin
      If Length(Trim(edtBuscar.Text))>0 Then
         Begin
          dtgNueAso.SetFocus;
          edtBuscar.Text:='';
         End
       Else
         Begin
           MessageDlg('Debe Digitar Los Apellidos y Nombres, Para Iniciar La Busqueda', mtError,[mbOk], 0 );
           edtBuscar.SetFocus;
         End;
    End;

end;

procedure TfValRegNue.BitMstApoClick(Sender: TObject);
var xSQL:String;
begin
  If dtgNueAso.DataSource.DataSet.RecordCount=0 Then Exit;
  Try
    fRegApor := TfRegApor.create(self);
    Screen.Cursor:=crHourGlass;
    // Inicio: SPP_201403_ASO
    // xSQL:='SELECT * FROM APO201 WHERE ASOID='+QuotedStr(DM1.cdsCEdu.fieldbyname('ASOID').AsString);
    xSQL:='SELECT * FROM APO201 WHERE ASOID='+QuotedStr(DM1.cdsValRegAso.fieldbyname('ASOID').AsString);
    // Fin: SPP_201403_ASO

    DM1.cdsAso.Close; DM1.cdsAso.DataRequest(xSQL); DM1.cdsAso.Open;
    Screen.Cursor:=crDefault;
    fRegApor.Showmodal;
  Finally
    fRegApor.free;
  End;


end;

procedure TfValRegNue.BitMostrarKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;

procedure TfValRegNue.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;

procedure TfValRegNue.rbPorFechaClick(Sender: TObject);
begin
  DtpFecIni.Enabled := true;
  DtpFecFin.Enabled := true;
  Panel2.Enabled := true;
  BitBuscarAso.Enabled := false;
end;

procedure TfValRegNue.rbPorAsociadoClick(Sender: TObject);
begin
  DtpFecIni.Enabled := false;
  DtpFecFin.Enabled := false;
  Panel2.Enabled := false;
  BitBuscarAso.Enabled := true;
end;

procedure TfValRegNue.BitBuscarAsoClick(Sender: TObject);
var
  xSql : String;
begin
  try
    FSeleccionaAso := TFSeleccionaAso.Create(self);
    FSeleccionaAso.ShowModal;
    if FSeleccionaAso.Seleccionado then
    begin
      xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOAPENOMDNI '
        + ' FROM APO201 A'
        + ' WHERE A.ASOID = ' + QuotedStr(FSeleccionaAso.ASOID);
      DM1.cdsAsociado.Close;
      DM1.cdsAsociado.DataRequest(xSql);
      DM1.cdsAsociado.Open;
      edtASOID.Text := DM1.cdsAsociado.FieldByName('ASOID').AsString;
      edtASOCODMOD.Text := DM1.cdsAsociado.FieldByName('ASOCODMOD').AsString;
      edtASOAPENOMDNI.Text := DM1.cdsAsociado.FieldByName('ASOAPENOMDNI').AsString;
      DM1.cdsAsociado.Close;
    end
    else
    begin
      DM1.cdsAsociado.Close;
    end;
  finally
    FSeleccionaAso.Free;
  end;
end;

// Inicio SPP_201402_ASO  : IMPLEMENTACION RENIEC (CAMBIO DE LA VERSION 1.0 A VERSION 2.0)
procedure TfValRegNue.cbTodosClick(Sender: TObject);
begin
  if cbTodos.Checked then
  begin
     DBLkOfiDes.Text:='';
     Panel2.Enabled:=False
  end
  else
  begin
     Panel2.Enabled:=True;
     DBLkOfiDes.Text:=DM1.xOfiDes;
  end;
  LimpiaMstGrid;
end;
// Fin SPP_201402_ASO  : IMPLEMENTACION RENIEC (CAMBIO DE LA VERSION 1.0 A VERSION 2.0)

end.
