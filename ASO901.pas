// Inicio Uso Estándares   :	01/08/2011
// Unidad		          :	ASO901.pas
// Formulario		      :	fSeleccion
// Fecha de Creación       :    
// Autor			       :	Equipo de Desarrollo de Sistemas DM
// Objetivo		        :    Busqueda y seleccion de asociados

// Actualizaciones:
// HPC_201303_ASO       : Se agrega el dataset de ley de pensión
// SPP_201304_ASO       : El pase se realiza de acuerdo a lo indicado en el documento HPC_201303_ASO
// SPP_201403_ASO       : Se modifica el client cdsLeyPen para corregir error al momento de abrir el client.
// SPP_201403_ASO       : Se realiza el pase a producción sobre el HPC_201402_ASO.

unit ASO901;

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
  TfSeleccion = class(TForm)
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
  private
    { Private declarations }
    procedure LimpiaGrid;
  public
    { Public declarations }
  end;

var
  fSeleccion: TfSeleccion;

implementation

uses ASODM, ASO908, ASO936, ASO900, ASO942, ASO903, ASO260;

{$R *.dfm}

procedure TfSeleccion.BitMostrarClick(Sender: TObject);
var xSQL:String;
begin
  DM1.sAPO201:='APO201';

  If Length(Trim(edtBuscar.Text)) > 0 Then
     Begin

       If rbtApeNom.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       If rbtDni.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASODNI LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       If rbtCuenta.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASONCTA LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

       If rbtCodMod.Checked Then xSQL:='SELECT * FROM APO201 WHERE ASOCODMOD LIKE '+QuotedStr(Trim(edtBuscar.Text)+'%');

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

Procedure TfSeleccion.dtgAsociadoDblClick(Sender: TObject);
Var xAsoId,xSQL:String;
Begin
   // Para seleccionar el asociado en el mantenimiento de tipo de asociado
   If dtgAsociado.DataSource.DataSet.RecordCount = 0 Then
      Exit;

   If DM1.xSgr = 'X' Then
   Begin
// Modificaciones por Fallecimiento del asociado
// Para no modificar el tipo de asociados fallecidos
      IF DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S' THEN
      BEGIN
        MessageDlg('No se puede cambiar el tipo a asociados fallecidos', mtError, [mbOk], 0);
        Close;
        Exit;
      END;
      DM1.xSgr := 'S';
      Close;
      Exit;
   End;
  // Fin de agregacion de lineas de codigo

  dm1.xInsert:='0';
  If dtgAsociado.DataSource.DataSet.RecordCount > 0 Then
  Begin
    If DM1.xCnd = 'M' Then
    Begin
      Try
        xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
        xSQL:='SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId));
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
        DM1.cdsQry.Close;
        DM1.cdsQry.IndexFieldNames:='';
        //Verifico si Nesecita Autorizacion de la Cta de Ahorro
        xSQL:='SELECT CODIGO FROM CUENTAS_PER WHERE CODIGO='+QuotedStr(Copy(Trim(DM1.cdsAso.FieldByName('ASONCTA').AsString),1,4));
        DM1.cdsCtasBco.Close;
        DM1.cdsCtasBco.DataRequest(xSQL);
        DM1.cdsCtasBco.Open;
        If DM1.cdsCtasBco.RecordCount > 0 Then
        Begin
          //VERIFICO SI YA ESTA AUTORIZADO
          xSQL:= 'SELECT * FROM ASO002 WHERE ASOID='''+xAsoId+''' ';
          DM1.cdsCtasBco.Close;
          DM1.cdsCtasBco.DataRequest(XSQL);
          DM1.cdsCtasBco.Open;
          If Length(Trim(DM1.cdsCtasBco.FieldByName('FECAUT').AsString))= 0 then
          Begin
          //Si no esta autorizado verifico si tiene registro para autorizar
          xSql:= 'SELECT * FROM ASO001 WHERE ASOID='''+xAsoId+''' ';
          DM1.cdsCtasBco.Close;
          DM1.cdsCtasBco.DataRequest(XSQL);
          DM1.cdsCtasBco.Open;
          If DM1.cdsCtasBco.RecordCount= 0 then
          Begin
            //Si no tiene registro de cabecera para autorizar inserto uno nuevo
            xSQL:='INSERT INTO ASO001(ASOID,USUARIO,HREG,IDCODIGO,ASONCTA,ASOAPENOM,ASODNI) VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,''03032005'','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASONCTA').AsString))+','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString))+','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString))+') ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
          End;
          MessageDlg('SE NECESITA AUTORIZACION DE LA CUENTA', mtError, [mbOk], 0);
          DM1.cdsCtasBco.Close;
          xSQL:='SELECT ASOID,ASONCTA FROM ASO002 WHERE ASOID='+QuotedStr(xAsoId)+' AND ASONCTA='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASONCTA').AsString));
          DM1.cdsTCredito.Close;
          DM1.cdsTCredito.DataRequest(xSQL);
          DM1.cdsTCredito.Open;
          If DM1.cdsTCredito.RecordCount=0 Then
          Begin
            //Si no tiene registro detalle para autorizar inserto uno nuevo
            xSQL:='INSERT INTO ASO002(ASOID,USUARIO,HREG,IDCODIGO,ASONCTA,ASOAPENOM,ASODNI) VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,''03032005'','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASONCTA').AsString))+','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString))+','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString))+') ';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
          End;
        End;
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
        //El nivel 03 puede ver todos los tipos de asociado segun requerimeinto
        { If  ((Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03') or (DM1.wUsuario = 'VARAMBURU') or
        (DM1.wUsuario = 'JSOTO') or (DM1.wUsuario = 'FCOZAR')) then xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107'}
        //El nivel 02 y 03 pueden ver todo los tipos de asociados (segun requerimiento de RODRIGUEZ
        If  ( ((Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03') or (Copy(DM1.CrgArea(DM1.wUsuario),6,2)='02')) and (DM1.wofides='01') ) then
          xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107'
        else
        Begin
                        //Si el Cliente endiferente de DO y CE solo podra ver en mismo tipo de docente
                        if (dm1.cdsAso.FieldByName('ASOTIPID').AsString <> 'DO') and
                           (dm1.cdsAso.FieldByName('ASOTIPID').AsString <> 'CE') Then
                         xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN ('+QuotedStr(Trim(dm1.cdsAso.FieldByName('ASOTIPID').AsString)) +') '
                        else xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'',''CE'') ';
                      End;
                  End;
                DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;
                xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
                DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;
                // Inicio: SPP_201304_ASO
                xSQL:='SELECT CODLEYPEN, DESLEYPEN FROM ASO_LEY_PEN_MAE ORDER BY CODLEYPEN';
                // Inicio: SPP_201403_ASO
                //DM1.cdsLeyPen.Close; DM1.cdsLeyPen.DataRequest(xSQL);  DM1.cdsLeyPen.Open;
                DM1.cdsCodLeyPen.Close; DM1.cdsCodLeyPen.DataRequest(xSQL); DM1.cdsCodLeyPen.Open;
                // Fin: SPP_201403_ASO

                // Fin: SPP_201304_ASO
                xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE CLAUXID=''A'' ';
                DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;
                xSQL:='SELECT UPROID,UPRONOM FROM APO102';
                DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL);  DM1.cdsUPro.Open;
                xSQL:='SELECT UPROID,UPAGOID,UPAGONOM FROM APO103';
                DM1.cdsUPago.Close; DM1.cdsUPago.DataRequest(xSQL); DM1.cdsUPago.Open;
                xSQL:='SELECT UPROID,UPAGOID,USEID,USENOM FROM APO101 WHERE NVL(FDESHABILITADO,''S'') =''N''';
                DM1.cdsUSE.Close; DM1.cdsUSE.DataRequest(xSQL); DM1.cdsUSE.Open;

                FMantAsociado := TFMantAsociado.create(self);
                FMantAsociado.lkcDpto.Text  := DM1.cdsAso.fieldbyname('ASODPTO').AsString;
                FMantAsociado.lkcProv.Text  := DM1.cdsAso.fieldbyname('CIUDID').AsString;
                FMantAsociado.lkcDist.Text  := DM1.cdsAso.fieldbyname('ZIPID').AsString;
                FMantAsociado.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
                FMantAsociado.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
                FMantAsociado.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
                FMantAsociado.edtanos.Text := DM1.tiempoTranscurrido(dm1.FechaSys,FMantAsociado.dbdtFecNac.Date);

                DM1.xSgr:='CTR';
                DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');

                If DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId)),'SRB000','ESTDEP')='02' Then
                   FMantAsociado.pnlPrefente.Visible:=True
                Else FMantAsociado.pnlPrefente.Visible:=False;

                FMantAsociado.lblAsoApeNom.Caption:=DM1.cdsAso.fieldbyname('ASOAPENOM').AsString+' (Dato de Planillas)';
                If DM1.xOfiDes>'01' Then
                   Begin
                      If DM1.cdsAso.fieldbyname('ASOTIPID').AsString='CE' Then
                         Begin
                           FMantAsociado.DbLlRegPen.Enabled:=False;
                         End;
                   End;
                FMantAsociado.ShowModal;

            Finally
              DM1.cdsPadre.Close; DM1.cdsHijo.Close; DM1.cdsCAso.Close; DM1.cdsRec.Close; DM1.cdsTRela.Close; DM1.cdsQry7.Close;
              DM1.cdsSexo.Close; DM1.cdsTAso.Close; DM1.cdsResol.Close; DM1.cdscarta.Close;
              // Inicio: SPP_201304_ASO
              // Inicio: SPP_201403_ASO
              // DM1.cdsLeyPen.Close;
              DM1.cdsCodLeyPen.Close;
              // Fin: SPP_201403_ASO
              // Fin: SPP_201304_ASO
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
           DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');
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

procedure TfSeleccion.BitSalirClick(Sender: TObject);
begin
   If DM1.xSgr = 'X' Then
   Begin
      Close;
      Exit;
   End;

 If DM1.xCnd='M' Then
    Begin
      DM1.xCnd := 'S';
      Close;
    End
 Else If DM1.xCnd='X' Then
    Begin
      Close;
    End
 Else If DM1.xCnd='D' Then
    Begin
      Close;
    End
 Else
    Begin
      DM1.LimpiaDatos;
      DM1.cdsAso.Close;
      Close;
      if FOtorPre <> nil then
      begin
        FOtorPre.EdtCodMod.Text := '';
        FOtorPre.EdtCodMod.SetFocus;
      end;
    End;
end;

procedure TfSeleccion.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;

end;

procedure TfSeleccion.FormActivate(Sender: TObject);
begin
DM1.sAso_where:='';
If DM1.xSgr='1' Then
   Begin
      LimpiaGrid;
   End

end;

procedure TfSeleccion.dtgAsociadoIButtonClick(Sender: TObject);
var xSQL:String;
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
    FMantAsociado.pnlCodMod.Enabled  :=True;
    FMantAsociado.pnlResoluciones.Enabled := True;
    FMantAsociado.Showmodal;
  Finally
    FMantAsociado.Free;
  End;

end;

procedure TfSeleccion.FormCreate(Sender: TObject);
begin
 DM1.BlqComponentes(Self);
 DM1.cdsPadre.Close;
 DM1.cdsHijo.Close;
 DM1.cdsCAso.Close;
end;

procedure TfSeleccion.rbtApeNomClick(Sender: TObject);
begin
LimpiaGrid;
fSeleccion.gbbuscar.Width:=430; fSeleccion.gbbuscar.Height :=40;
fSeleccion.edtBuscar.Width:=407; fSeleccion.edtBuscar.Height := 28;
GbAsociados.Caption:='Buscar Por '+rbtApeNom.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccion.rbtDniClick(Sender: TObject);
begin
LimpiaGrid;
fSeleccion.gbbuscar.Width:=137; fSeleccion.gbbuscar.Height :=40;
fSeleccion.edtBuscar.Width:=114; fSeleccion.edtBuscar.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtDni.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccion.rbtCuentaClick(Sender: TObject);
begin
LimpiaGrid;
fSeleccion.gbbuscar.Width:=137; fSeleccion.gbbuscar.Height :=40;
fSeleccion.edtBuscar.Width:=114; fSeleccion.edtBuscar.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtCuenta.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccion.rbtCodModClick(Sender: TObject);
begin
LimpiaGrid;
fSeleccion.gbbuscar.Width:=137; fSeleccion.gbbuscar.Height :=40;
fSeleccion.edtBuscar.Width:=114; fSeleccion.edtBuscar.Height := 24;
GbAsociados.Caption:='Buscar Por '+rbtCodMod.Caption;  edtBuscar.SetFocus;
end;

procedure TfSeleccion.LimpiaGrid;
begin
  fSeleccion.edtBuscar.Text:=''; DM1.cdsAso.Close;  DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOCODMOD='+QuotedStr('@#$!*@/#&^'));   DM1.cdsAso.Open;
end;

function TfSeleccion.VrfCtaAhorros(xAsoId: String): String;
var xSQL:String;
begin
   xSQL:='SELECT ASOID,ASONCTA FROM APO207 WHERE ASOID='+QuotedStr(xAsoId)+' AND SITCTA=''A''  ';
   DM1.cdsCtasBco.Close; DM1.cdsCtasBco.DataRequest(xSQL); DM1.cdsCtasBco.Open;
   If DM1.cdsCtasBco.RecordCount > 1 Then   Result:='N'  Else   Result:='S' ;
   DM1.cdsCtasBco.Close;
end;

procedure TfSeleccion.edtBuscarExit(Sender: TObject);
begin
If Length(Trim(edtBuscar.Text))<> 0 Then BitMostrarClick(self);
end;


procedure TfSeleccion.dtgAsociadoDrawDataCell(Sender: TObject;
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

end.

