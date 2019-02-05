unit ASO260L;

// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO260L.pas
// Formulario              :  FNuevoAsociadoBuscar
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Búsqueda de Nuevos Asociados

// Actualizaciones:
// HPP_00024_ASO - 23/09/2008
// HPP_201003_ASO Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// HPC_201121_ASO
// DPP_201201_ASO     : Se realiza el pase a partir del doc. HPC_201121_ASO
// DPP_201202_ASO : Se realiza el pase de acuerdo al HPC_201203_ASO
// HPC_201602_ASO : Se controla que muestre alerta cuando el deprtamento del colegio es
//                  diferente al departamento de la Ugel. 
// HPC_201609_ASO : Se asigna los codigos de prestación al client "cdsCodPrestacion". 
// HPC_201704_ASO : Se implementa el tipo de documento
interface

uses
 Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
  jpeg,IniFiles,DateUtils;
type
  TFNuevoAsociadoBuscar = class(TForm)
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
    procedure rbtApeNomKeyPress(Sender: TObject; var Key: Char);
    procedure rbtDniKeyPress(Sender: TObject; var Key: Char);
    procedure rbtCuentaKeyPress(Sender: TObject; var Key: Char);
    procedure rbtCodModKeyPress(Sender: TObject; var Key: Char);
    procedure edtBuscarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LimpiaGrid;
    procedure CambiarTituloPanel;
  public
    { Public declarations }
    procedure SetTitulo(sTitulo: String);
    procedure SetCond(sCond: String);
  end;

var
  FNuevoAsociadoBuscar: TFNuevoAsociadoBuscar;

implementation

uses ASODM, ASO908, ASO936, ASO900, ASO942, ASO903, ASO260;

{$R *.dfm}

procedure TFNuevoAsociadoBuscar.BitMostrarClick(Sender: TObject);
var xSQL:String;
begin
  If Length(Trim(edtBuscar.Text)) > 0 Then
  Begin
    If rbtApeNom.Checked Then
       xSQL:='SELECT * FROM ASO_NUE_CLI WHERE ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

    If rbtDni.Checked Then
       xSQL:='SELECT * FROM ASO_NUE_CLI WHERE ASODNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

    If rbtCuenta.Checked Then
       xSQL:='SELECT * FROM ASO_NUE_CLI WHERE ASONCTA LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

    If rbtCodMod.Checked Then
       xSQL:='SELECT * FROM ASO_NUE_CLI WHERE ASOCODMOD LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

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

Procedure TFNuevoAsociadoBuscar.dtgAsociadoDblClick(Sender: TObject);
Var
  xAsoId, xSQL: String;
Begin
  //Obtiene los departamentos del Perú
  xSQL:='SELECT * FROM TGE158';
  DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
  DM1.cdsRec.Close;  DM1.cdsRec.DataRequest(xSQL);   DM1.cdsRec.Open;

  //Obtiene la lista de sexos
  xSQL:='SELECT ID, DESCRIP FROM TGE817';
  DM1.cdsSexo.Close;  DM1.cdsSexo.DataRequest(xSQL);   DM1.cdsSexo.Open;

  //Solo se debe insertar Asociados Cesantes, segun Requerimiento
  xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE FLG_NUE=''S'' ';
  DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;

  xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
  DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;

  xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP, PROVDES FROM TGE201 WHERE CLAUXID=''A'' ';
  DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;

  xSQL:='SELECT UPROID,UPRONOM FROM APO102';
  DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL);  DM1.cdsUPro.Open;

  xSQL:='SELECT ESTCIVID,ESTCIVDES FROM TGE125 ORDER BY ESTCIVID';
  DM1.cdsUSES.Close;  DM1.cdsUSES.DataRequest(xSQL);  DM1.cdsUSES.Open;

  // Inicio: HPC_201609_ASO
  // Se asigna la tablas de codigos de prestación y código de ley de pensión a un client dataset
  xSQL := 'SELECT CODPRE, DESPRE FROM ASO_COD_PRE_MAE WHERE NVL(FLAACT,''X'') = ''S'' ORDER BY CODPRE';
  DM1.cdsCodPrestacion.Close;
  DM1.cdsCodPrestacion.DataRequest(xSql);
  DM1.cdsCodPrestacion.Open;
  xSQL := 'SELECT CODLEYPEN, DESLEYPEN FROM ASO_LEY_PEN_MAE WHERE CODLEYPEN <> ''99'' ORDER BY CODLEYPEN';
  DM1.cdsCodLeyPen.Close;
  DM1.cdsCodLeyPen.DataRequest(xSql);
  DM1.cdsCodLeyPen.Open;
  // Fin: HPC_201609_ASO

  DM1.xCnd := 'M';
  DM1.xInsert := '0';

  If dtgAsociado.DataSource.DataSet.RecordCount > 0 Then
  Begin
    If DM1.xCnd <> 'AUT' Then
    begin
         if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='AP' then
         begin
            ShowMessage('Cliente fue Autorizado. Consultar en el Maestro de Asociados');
            Exit;
         end;
         if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='RE' then
         begin
            ShowMessage('Cliente fue Rechazado. Verificar...');
            Exit;
         end;
         if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='N3' then
         begin
            ShowMessage('Cliente fue enviado para Autorización de usuario con Nivel 3');
            Exit;
         end;
     end;

     If (DM1.xCnd = 'M') or (DM1.xCnd='AUT') Then
     Begin
     Try
        DM1.sAso_where:='SOLICITUD='''+DM1.cdsAso.fieldbyname('SOLICITUD').AsString+''' AND ';
        xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
        xSQL:='SELECT * FROM ASO_NUE_CLI WHERE '+DM1.sAso_where+' ASOID='+QuotedStr(Trim(xAsoId));
        DM1.cdsAso.Close;
        DM1.cdsAso.DataRequest(xSQL);
        DM1.cdsAso.Open;

        //Verifico si el Asociado esta con Observación
        xSQL:='SELECT ESTADO,OBSERVACION FROM ASO007 WHERE ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString +''' ORDER BY ITEM DESC ';
        DM1.cdsQry.CLOSE;
        DM1.cdsQry.DataRequest(XSQL);
        DM1.cdsQry.Open;
        If (DM1.cdsQry.RecordCount>0) and (TRIM(DM1.cdsQry.FieldByName('ESTADO').AsString)='I') Then
        Begin
           MessageDlg('El Asociado tiene la siguiente Observación por levantar :'+#13+Trim(DM1.cdsQry.FieldByName('OBSERVACION').AsString) , mtError, [mbOk], 0);
           Exit;
        End;

        //Verifico si no es unica la Cuenta de Ahorros
        If VrfCtaAhorros(xAsoId)='N'  Then
        Begin
          MessageDlg('La CUENTA DE AHORROS No Es Unica,...Verifique ', mtError, [mbOk], 0);
          Exit;
        End;

        xSQL:='SELECT * FROM TGE158';
        DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
        DM1.cdsRec.Close;  DM1.cdsRec.DataRequest(xSQL);   DM1.cdsRec.Open;
        xSQL:='SELECT ID,DESCRIP FROM TGE817 ';
        DM1.cdsSexo.Close;  DM1.cdsSexo.DataRequest(xSQL);   DM1.cdsSexo.Open;
        If (DM1.cdsAso.fieldbyname('ASOTIPID').AsString='NI') AND (DM1.cdsAso.fieldbyname('TCREACION').AsString='01') Then
           xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CE'') '
        Else
        Begin
           //El nivel 02 y 03 pueden ver todo los tipos de asociados (segun requerimiento)
           If  ( ((Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03') or (Copy(DM1.CrgArea(DM1.wUsuario),6,2)='02')) and (DM1.wofides='01') ) then
              xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE FLG_NUE=''S'' '
           else
           Begin
                  //Si el Cliente endiferente de DO y CE solo podra ver en mismo tipo de docente
                     xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE FLG_NUE=''S'' ';
           End;
        End;

        DM1.cdsTAso.Close; DM1.cdsTAso.DataRequest(xSQL); DM1.cdsTAso.Open;
        xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
        DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL); DM1.cdsResol.Open;
        xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE CLAUXID=''A'' ';
        DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL); DM1.cdscarta.Open;
        xSQL:='SELECT UPROID,UPRONOM FROM APO102';
        DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL); DM1.cdsUPro.Open;
        xSQL:='SELECT UPROID,UPAGOID,UPAGONOM FROM APO103';
        DM1.cdsUPago.Close; DM1.cdsUPago.DataRequest(xSQL); DM1.cdsUPago.Open;

        // Inicio: HPC_201602_ASO
        // Se añade el campo departamento
        // xSQL:='SELECT UPROID,UPAGOID,USEID,USENOM FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N''';
        xSQL:='SELECT DPTOID, UPROID,UPAGOID,USEID,USENOM FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N''';
        // Fin: HPC_201602_ASO
        DM1.cdsUSE.Close; DM1.cdsUSE.DataRequest(xSQL); DM1.cdsUSE.Open;

     // Inicio: DPP_201201_ASO
     // provincia DNI
        DM1.cdsHijo.Close;
        DM1.cdsHijo.DataRequest('SELECT CIUDID AS PROVID, CIUDDES AS PROVDES'
                               +'  FROM APO123');
        DM1.cdsHijo.Open;

     // provincia colegio
        DM1.cdsTRela.Close;
        DM1.cdsTRela.DataRequest('SELECT CIUDID AS PROVID, CIUDDES AS PROVDES'
                                +'  FROM APO123');
        DM1.cdsTRela.Open;

     // distrito DNI
        DM1.cdsQry7.Close;
        DM1.cdsQry7.DataRequest('SELECT ZIPID, ZIPDES '
                               +'FROM APO122 ');
        DM1.cdsQry7.Open;

     // distrito colegio
        DM1.cdsSAso.Close;
        DM1.cdsSAso.DataRequest('SELECT ZIPID, ZIPDES '
                               +'FROM APO122 ');
        DM1.cdsSAso.Open;
     // Fin: DPP_201201_ASO

        FMantAsociado := TFMantAsociado.Create(self);
//Inicio HPC_201704_ASO
//Se implementa el tipo de documento
        FMantAsociado.dblTipDoc.Enabled:=False;
        FMantAsociado.dblTipDoc.Text   := dm1.cdsAso.Fieldbyname('TIPDOCCOD').AsString;
        FMantAsociado.edtnumdoc.Text   := DM1.cdsAso.fieldbyname('ASODOCNUM').AsString;
//Final HPC_201704_ASO
        FMantAsociado.lkcDpto.Text  := DM1.cdsAso.fieldbyname('ASODPTO').AsString;
        FMantAsociado.lkcProv.Text  := DM1.cdsAso.fieldbyname('CIUDID').AsString;
        FMantAsociado.lkcDist.Text  := DM1.cdsAso.fieldbyname('ZIPID').AsString;
        FMantAsociado.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
        FMantAsociado.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
        FMantAsociado.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
        FMantAsociado.edtanos.Text := DM1.tiempoTranscurrido(dm1.FechaSys, FMantAsociado.dbdtFecNac.Date);

        // Inicio: HPC_201609_ASO
        // Se asigna descripción para la ley de pensión y de prestación.
        FMantAsociado.edtCodLeyPen.Text :=  DM1.CrgDescrip('CODLEYPEN = '+QuotedStr(Trim(FMantAsociado.dblcdCodLeyPen.Text)),'ASO_LEY_PEN_MAE','DESLEYPEN');
        FMantAsociado.edtdesprestacion.Text := DM1.CrgDescrip('CODPRE = '+QuotedStr(Trim(FMantAsociado.dblcdCodPrestacion.Text)),'ASO_COD_PRE_MAE','DESPRE');
        // Fin: HPC_201609_ASO

        If DM1.xCnd='AUT' Then
        begin
//Inicio HPC_201704_ASO
//Se implementa el tipo de documento
           FMantAsociado.dblTipDoc.Enabled:=False;
//Final HPC_201704_ASO
           FMantAsociado.bitAutoriza.Visible:=False;
           FMantAsociado.bitRechaza.Visible :=False;
           FMantAsociado.bbtnN1.Visible     :=False;
           FMantAsociado.lblEstado.Visible:=True;
           FMantAsociado.pnlEstado.Visible:=True;
           if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='AP' then
           begin
              FMantAsociado.lblEstado.Caption := 'AUTORIZADO';
           end;
           if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='RE' then
           begin
              FMantAsociado.lblEstado.Caption:='RECHAZADO';
           end;
           if DM1.cdsAso.FieldByname('EST_AUT_CLI').AsString='NU' then
           begin
              FMantAsociado.bitAutoriza.Visible:=True;
              FMantAsociado.bitRechaza.Visible :=True;
              FMantAsociado.bbtnN1.Visible     :=True;
              FMantAsociado.lblEstado.Visible  :=False;
              FMantAsociado.pnlEstado.Visible  :=False;
           end;

           FMantAsociado.BitReasignacion.Visible:=False;
           FMantAsociado.BitResol.Visible       :=False;
           FMantAsociado.BitCuentas.Visible     :=False;
           FMantAsociado.BitSocio.Visible       :=False;
           FMantAsociado.BitModifica.Visible    :=False;
           FMantAsociado.BitGrabar.Visible      :=False;
           FMantAsociado.BitVerifica.Visible    :=False;
           FMantAsociado.BitPrest.Visible       :=False;
           FMantAsociado.BitMstApo.Visible      :=False;
           FMantAsociado.BitAutDes.Visible      :=False;

           FMantAsociado.btnActualizaReniec.Visible:=False;
        end
        else
        begin
           FMantAsociado.bitAutoriza.Visible:=False;
           FMantAsociado.bitRechaza.Visible :=False;
           FMantAsociado.bbtnN1.Visible     :=False;

           FMantAsociado.BitReasignacion.Visible:=True;
           FMantAsociado.BitResol.Visible       :=True;
           FMantAsociado.BitCuentas.Visible     :=True;
           FMantAsociado.BitSocio.Visible       :=True;
           FMantAsociado.BitModifica.Visible    :=True;
           FMantAsociado.BitGrabar.Visible      :=True;

           If DM1.xOfiDes>'01' Then
           begin
              FMantAsociado.BitVerifica.Visible       :=False;
              FMantAsociado.btnActualizaReniec.Visible:=False;
           end;

           FMantAsociado.BitPrest.Visible       :=True;
           FMantAsociado.BitMstApo.Visible      :=True;
           FMantAsociado.BitAutDes.Visible      :=True;

        end;

        if DM1.wofides<>'01' then
        begin
           FMantAsociado.btnActualizaReniec.Visible:=False;
        end;

       //INICIO: DPP_201202_ASO
       //SE QUITA LA CARGA DE IMAGENES POR FTP
       {
        DM1.xSgr:='CTR';
        try
          FOtorPre:= TfOtorPre.create(self);
          FOtorPre.CargaFoto(DM1.RecuperaDatos('ASO_NUE_CLI', 'ASOID',Trim(DM1.cdsAso.FieldByName('ASOID').AsString),'IDIMAGE'));
          FOtorPre.CargaFirma(DM1.RecuperaDatos('ASO_NUE_CLI', 'ASOID',Trim(DM1.cdsAso.FieldByName('ASOID').AsString),'IDIMAGE'));
        finally
          FOtorPre.Free;
          FOtorPre:=nil;
        end;
        }
         DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');
        //FINAL: DPP_201202_ASO
        If DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId)),'SRB000','ESTDEP')='02' Then
          FMantAsociado.pnlPrefente.Visible := true
        Else
          FMantAsociado.pnlPrefente.Visible := false;

        FMantAsociado.lblAsoApeNom.Caption:=DM1.cdsAso.fieldbyname('ASOAPENOM').AsString+' (Dato de Planillas)';
        If DM1.xOfiDes > '01' Then
        Begin
          If DM1.cdsAso.fieldbyname('ASOTIPID').AsString='CE' Then
          Begin
            FMantAsociado.DbLlRegPen.Enabled:=False;
          End;
        End;
        FMantAsociado.SetTabla('ASO_NUE_CLI');
        FMantAsociado.ShowModal;
     Finally
        DM1.cdsPadre.Close; DM1.cdsHijo.Close; DM1.cdsCAso.Close; DM1.cdsRec.Close; DM1.cdsTRela.Close; DM1.cdsQry7.Close;
        DM1.cdsSexo.Close; DM1.cdsTAso.Close; DM1.cdsResol.Close; DM1.cdscarta.Close;
        FMantAsociado.Free;
     End;

     End
     Else If DM1.xCnd='X' Then
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
             //INICIO: DPP_201202_ASO
             //SE QUITA LA CARGA DE IMAGENES POR FTP
             {FOtorPre.CargaFoto(DM1.cdsAso.FieldByName('IDIMAGE').AsString);
             FOtorPre.CargaFirma(DM1.cdsAso.FieldByName('IDIMAGE').AsString);}
              DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');
            //FINAL: DPP_201202_ASO

             DM1.LimpiaDatos;
             DM1.CrgDatos;
             FOtorPre.Botones(True);
             FOtorPre.lblMtoPre.Caption:=FormatFloat('###,###.#0',FOtorPre.SaldoSrb(DM1.cdsAso.FieldByName('ASOID').AsString));
             FOtorPre.dtgPrestamos.SetFocus;
             Close;
          End;
  End;
  BitMostrar.OnClick(BitMostrar);
end;

procedure TFNuevoAsociadoBuscar.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFNuevoAsociadoBuscar.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DialogKey, VK_TAB, 0);
  end;
end;

procedure TFNuevoAsociadoBuscar.FormActivate(Sender: TObject);
begin
  If DM1.xSgr='1' Then
  Begin
    LimpiaGrid;
  End
end;

procedure TFNuevoAsociadoBuscar.dtgAsociadoIButtonClick(Sender: TObject);
var
   xSQL: string;
begin
// Obtiene los departamentos del Perú
   xSQL:='SELECT * FROM TGE158';
   DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
   DM1.cdsRec.Close;  DM1.cdsRec.DataRequest(xSQL);   DM1.cdsRec.Open;

// Obtiene la lista de sexos
   xSQL:='SELECT ID, DESCRIP FROM TGE817';
   DM1.cdsSexo.Close;  DM1.cdsSexo.DataRequest(xSQL);   DM1.cdsSexo.Open;

// Se obtienen los tipos de asociado
// Solo se debe insertar Asociados Cesantes, segun Requerimiento
   xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE FLG_NUE=''S'' ';
   DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;

// Se cargan los regímenes de pensión
   xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
   DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;

// Carga las AFPs
   xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP, PROVDES FROM TGE201 WHERE CLAUXID=''A'' ';
   DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;

// Carga las unidades de proceso
   xSQL:='SELECT UPROID,UPRONOM FROM APO102';
   DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL);  DM1.cdsUPro.Open;

// Carga los estados civil
   xSQL:='SELECT ESTCIVID,ESTCIVDES FROM TGE125 ORDER BY ESTCIVID';
   DM1.cdsUSES.Close;  DM1.cdsUSES.DataRequest(xSQL);  DM1.cdsUSES.Open;

// Uses
   xSQL:='SELECT UPROID,UPAGOID,USEID,USENOM FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N'' ';
   DM1.cdsUSE.Close;
   DM1.cdsUSE.DataRequest(xSQL);
   DM1.cdsUSE.Open;

   // Inicio: HPC_201609_ASO
   // Se asigna la tablas de codigos de prestación y código de ley de pensión a un client dataset
   xSQL := 'SELECT CODPRE, DESPRE FROM ASO_COD_PRE_MAE WHERE NVL(FLAACT,''X'') = ''S'' ORDER BY CODPRE';
   DM1.cdsCodPrestacion.Close;
   DM1.cdsCodPrestacion.DataRequest(xSql);
   DM1.cdsCodPrestacion.Open;

   xSQL := 'SELECT CODLEYPEN, DESLEYPEN FROM ASO_LEY_PEN_MAE WHERE CODLEYPEN <> ''99'' ORDER BY CODLEYPEN';
   DM1.cdsCodLeyPen.Close;
   DM1.cdsCodLeyPen.DataRequest(xSql);
   DM1.cdsCodLeyPen.Open;
   // Fin: HPC_201609_ASO

   Try
      DM1.xCnd := 'M';
      DM1.xInsert := '1';
      FMantAsociado := TFMantAsociado.create(self);
//Inicio HPC_201704_ASO
//Se implementa el tipo de documento
      FMantAsociado.dblTipDoc.Enabled := True;
      FMantAsociado.SetTabla('ASO_NUE_CLI');
      FMantAsociado.dblTipDoc.Text := DM1.CrgDescrip('FLGDNI=''S''','TGE159','TIPDOCCOD');
//Final HPC_201704_ASO
      FMantAsociado.Caption := 'Nuevo Asociado';
      FMantAsociado.Showmodal;
   Finally
      FMantAsociado.Free;
   End;
end;

procedure TFNuevoAsociadoBuscar.FormCreate(Sender: TObject);
begin
  DM1.BlqComponentes(Self);
  gbbuscar.Width := 430;
  gbbuscar.Height := 40;
  edtBuscar.Width := 407;
  edtBuscar.Height := 28;
  DM1.cdsAso.Close;
  DM1.cdsAso.DataRequest('SELECT * FROM ASO_NUE_CLI WHERE ASOCODMOD = ' + QuotedStr('@#$!*@/#&^'));
  DM1.cdsAso.Open;
end;

procedure TFNuevoAsociadoBuscar.rbtApeNomClick(Sender: TObject);
begin
  LimpiaGrid;
  FNuevoAsociadoBuscar.gbbuscar.Width:=430; FNuevoAsociadoBuscar.gbbuscar.Height:=44;
  FNuevoAsociadoBuscar.edtBuscar.Width:=407; FNuevoAsociadoBuscar.edtBuscar.Height:=24;
  CambiarTituloPanel;
end;

procedure TFNuevoAsociadoBuscar.rbtDniClick(Sender: TObject);
begin
  LimpiaGrid;
  FNuevoAsociadoBuscar.gbbuscar.Width:=137; FNuevoAsociadoBuscar.gbbuscar.Height  :=44;
  FNuevoAsociadoBuscar.edtBuscar.Width:=114; FNuevoAsociadoBuscar.edtBuscar.Height:=24;
  CambiarTituloPanel;
end;

procedure TFNuevoAsociadoBuscar.rbtCuentaClick(Sender: TObject);
begin
  LimpiaGrid;
  FNuevoAsociadoBuscar.gbbuscar.Width:=137; FNuevoAsociadoBuscar.gbbuscar.Height  :=44;
  FNuevoAsociadoBuscar.edtBuscar.Width:=114; FNuevoAsociadoBuscar.edtBuscar.Height:=24;
  CambiarTituloPanel;
end;

procedure TFNuevoAsociadoBuscar.rbtCodModClick(Sender: TObject);
begin
  LimpiaGrid;
  FNuevoAsociadoBuscar.gbbuscar.Width:=137; FNuevoAsociadoBuscar.gbbuscar.Height  :=44;
  FNuevoAsociadoBuscar.edtBuscar.Width:=114; FNuevoAsociadoBuscar.edtBuscar.Height:=24;
  CambiarTituloPanel;
end;

procedure TFNuevoAsociadoBuscar.LimpiaGrid;
begin
  FNuevoAsociadoBuscar.edtBuscar.Text:=''; DM1.cdsAso.Close;
  DM1.cdsAso.DataRequest('SELECT * FROM ASO_NUE_CLI WHERE ASOCODMOD='+QuotedStr('@#$!*@/#&^'));
  DM1.cdsAso.Open;
end;

function TFNuevoAsociadoBuscar.VrfCtaAhorros(xAsoId: String): String;
var xSQL:String;
begin
   xSQL:='SELECT ASOID,ASONCTA FROM APO207 WHERE ASOID='+QuotedStr(xAsoId)+' AND SITCTA = ''A''';
   DM1.cdsCtasBco.Close; DM1.cdsCtasBco.DataRequest(xSQL); DM1.cdsCtasBco.Open;
   If DM1.cdsCtasBco.RecordCount > 1 Then   Result:='N'  Else   Result:='S' ;

   DM1.cdsCtasBco.Close;
end;

procedure TFNuevoAsociadoBuscar.edtBuscarExit(Sender: TObject);
begin
  If Length(Trim(edtBuscar.Text))<> 0 Then BitMostrarClick(self);
end;

procedure TFNuevoAsociadoBuscar.dtgAsociadoDrawDataCell(Sender: TObject;
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

   if DM1.cdsAso.FieldByName('EST_AUT_CLI').AsString='AP' then
     begin
       If Field.DisplayName = 'Estado' Then
         Begin
          dtgAsociado.Canvas.Font.Color := clGreen;
          dtgAsociado.DefaultDrawDataCell(Rect, Field, State);
         End;
     end;
   if DM1.cdsAso.FieldByName('EST_AUT_CLI').AsString='RE' then
     begin
       If Field.DisplayName = 'Estado' Then
         Begin
          dtgAsociado.Canvas.Font.Color := clRed;
          dtgAsociado.DefaultDrawDataCell(Rect, Field, State);
         End;
     end;
end;

procedure TFNuevoAsociadoBuscar.SetTitulo(sTitulo: String);
begin
  self.Caption := sTitulo;
end;

procedure TFNuevoAsociadoBuscar.rbtApeNomKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
    edtBuscar.SetFocus;
end;

procedure TFNuevoAsociadoBuscar.rbtDniKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = chr(13) then
    edtBuscar.SetFocus;
end;

procedure TFNuevoAsociadoBuscar.rbtCuentaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
    edtBuscar.SetFocus;
end;

procedure TFNuevoAsociadoBuscar.rbtCodModKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = chr(13) then
    edtBuscar.SetFocus;
end;

procedure TFNuevoAsociadoBuscar.edtBuscarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = word(13) then
    BitMostrar.Click;
end;

procedure TFNuevoAsociadoBuscar.CambiarTituloPanel;
begin
  if rbtApeNom.Checked then
    GbAsociados.Caption := 'Buscar Por ' + rbtApeNom.Caption
  else if rbtDni.Checked then
    GbAsociados.Caption := 'Buscar Por ' + rbtDni.Caption
  else if rbtCuenta.Checked then
    GbAsociados.Caption := 'Buscar Por ' + rbtCuenta.Caption
  else if rbtCodMod.Checked then
    GbAsociados.Caption := 'Buscar Por ' + rbtCodMod.Caption;
end;

procedure TFNuevoAsociadoBuscar.SetCond(sCond: String);
begin
  DM1.xCnd := sCond;
end;

procedure TFNuevoAsociadoBuscar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   If DM1.xCnd='M' Then
   Begin
      DM1.xCnd := 'S';
      Close;
   End
   Else
   begin
      If DM1.xCnd='X' Then
      Begin
         Close;
      End
      Else
      begin
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
      end;
   end;
end;

end.

