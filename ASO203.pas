unit ASO203;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO203
// Formulario           : fActualizarResultado
// Fecha de Creación    : 07/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Grabar resultado de la hoja de ruta.
// Actualizaciones      :
// SPP_201404_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO
// HPC_201407_ASO       : Se comenta la validacion de poder modificar hojas de ruta anteriores.
// SPP_201406_ASO       : Se realiza el pase a producción a partir del HPC_201407_ASO.
// HPC_201503_ASO       : sE ADICIONA Boton de Maestro de Asociados 

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, wwdblook, Wwdbdlg,
  Mask, ExtCtrls, ppParameter, ppStrtch, ppMemo, ppBands, ppClass, ppCtrls,
  jpeg, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppRelatv, ppDB,
//Inicio HPC_201503_ASO
//ppDBPipe, ppDBBDE, ppComm, ppEndUsr;
  ppDBPipe, ppDBBDE, ppComm, ppEndUsr,Msgdlgs;
//Final HPC_201503_ASO

type
  TfActualizarResultado = class(TForm)
    gbResultado: TGroupBox;
    medesAsoId: TMaskEdit;
    medesNombre: TMaskEdit;
    medesFecha: TMaskEdit;
    edReferencia: TMemo;
    edGestion: TMemo;
    Panel1: TPanel;
    dtgResultado: TwwDBGrid;
    dtgAsociadoIButton: TwwIButton;
    GroupBox2: TGroupBox;
    bGrabar: TBitBtn;
    bImprimir: TBitBtn;
    bSalir: TBitBtn;
    ppDesigner1: TppDesigner;
    ppbdReporteResultado: TppBDEPipeline;
    pprReporteResultado: TppReport;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    medesConocimiento: TMaskEdit;
    medesSatisfaccion: TMaskEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    medesResulDes: TMaskEdit;
    ppParameterList1: TppParameterList;
    dblTipoRes: TwwDBLookupCombo;
    dblSatisfaccion: TwwDBLookupCombo;
    dblConocimiento: TwwDBLookupCombo;
    Label5: TLabel;
    ppHeaderBand1: TppHeaderBand;
    ppltitulo: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel22: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppImage1: TppImage;
    ppLabel21: TppLabel;
    ppLabel2: TppLabel;
    pplAsoId: TppLabel;
    pplNombreAso: TppLabel;
    ppLabel18: TppLabel;
    ppLabel32: TppLabel;
    ppLine1: TppLine;
    ppLine18: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine28: TppLine;
    ppLine5: TppLine;
    ppLine11: TppLine;
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppLine20: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLine16: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine21: TppLine;
    ppLine24: TppLine;
    ppLabel5: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine19: TppLine;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppPageStyle1: TppPageStyle;
//Inicio HPC_201503_ASO
    btnMantAso: TButton;
    procedure btnMantAsoClick(Sender: TObject);
//Final HPC_201503_ASO
    procedure FormActivate(Sender: TObject);
    procedure BuscarResultado;
    procedure bSalirClick(Sender: TObject);
    procedure bGrabarClick(Sender: TObject);
    procedure dtgResultadoDblClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure dblTipoResChange(Sender: TObject);
    procedure dblSatisfaccionChange(Sender: TObject);
    procedure dblConocimientoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //Inicio HPC_201503_ASO
    vUsuarioRes : String;
    //Final HPC_201503_ASO    
  end;

var
  fActualizarResultado: TfActualizarResultado;
  Var xCodRes :Integer;
  Var xE :String;

implementation

{$R *.dfm}
//Inicio HPC_201503_ASO
//uses ASODM,ASO202,ASO001, ASO203A, DB;
uses ASODM,ASO202,ASO001, ASO203A, DB, ASO260, ASO900;
//Final HPC_201503_ASO

procedure TfActualizarResultado.FormActivate(Sender: TObject);
Var xSql : String;
Var xMaxPerASigHoj :String;
begin
     //--Llena combo resultado--//
    xSql := ' SELECT D.VALDES01,D.VALDES03,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''RESULTADO'' '  ;
   DM1.cdsResultado.Close;
   DM1.cdsResultado.DataRequest(xSql);
   DM1.cdsResultado.Open;
   dblTipoRes.LookupTable := DM1.cdsResultado;
   dblTipoRes.LookupField := 'VALDES01';
   dblTipoRes.Selected.Clear;
   dblTipoRes.Selected.Add('VALDES01'#9'2'#9'Código'#9#9);
   dblTipoRes.Selected.Add('VALDES03'#9'2'#9'Código'#9#9);
   dblTipoRes.Selected.Add('NOMVAL'#9'60'#9'Descripción'#9#9);

   //--Llena combo nivel satisfaccion--//
   xSql := ' SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''NIVELSATISF'' ORDER BY 1 '  ;
   DM1.cdsNivelSat.Close;
   DM1.cdsNivelSat.DataRequest(xSql);
   DM1.cdsNivelSat.Open;
   dblSatisfaccion.LookupTable := DM1.cdsNivelSat;
   dblSatisfaccion.LookupField := 'VALDES01';
   dblSatisfaccion.Selected.Clear;
   dblSatisfaccion.Selected.Add('VALDES01'#9'2'#9'Código'#9#9);
   dblSatisfaccion.Selected.Add('NOMVAL'#9'15'#9'Descripción'#9#9);

   //--Llena combo nivel de conocimiento--//
   xSql := ' SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''NIVELCONO'' ORDER BY 1'  ;
   DM1.cdsNivelCono.Close;
   DM1.cdsNivelCono.DataRequest(xSql);
   DM1.cdsNivelCono.Open;
   dblConocimiento.LookupTable := DM1.cdsNivelCono;
   dblConocimiento.LookupField := 'VALDES01';
   dblConocimiento.Selected.Clear;
   dblConocimiento.Selected.Add('VALDES01'#9'2'#9'Código'#9#9);
   dblConocimiento.Selected.Add('NOMVAL'#9'15'#9'Descripción'#9#9);
 

   //--Valores Inciales--//
   medesAsoId.Text:= ASO202.xIdAsociado;
   medesNombre.Text:=ASO202.xNomAsociado;
   medesFecha.Text:=FormatDateTime('dd/mm/yyyy',Date);
   BuscarResultado;
   //Inicio: SPP_201406_ASO
   {//--Valida regla de Edicion--//
   xSql:=' SELECT TO_CHAR(MAX(TO_DATE(H.PERASIHOJ,''DD/MM/YYYY'')),''DD/MM/YYYY'') MAXPERASIHOJ FROM ASO_HOJARUTA_MOV H'
         +' WHERE H.CODUSU='+QuotedStr(DM1.wUsuario)+' AND H.PERCAR='+QuotedStr(ASO202.xPeriodoCartera);
   //--llenar la Grilla--//
    DM1.cdsTemp.Close;
    DM1.cdsTemp.DataRequest(xSql);
    DM1.cdsTemp.Open;
    xMaxPerASigHoj:=DM1.cdsTemp.fieldbyname('MAXPERASIHOJ').AsString;

   if xMaxPerASigHoj = ASO202.xPerAsiHoj then
   begin
        gbResultado.Enabled:=true;
        //dtgResultado.Enabled:=true;
   end
   else
   begin
        gbResultado.Enabled:=false;
        //dtgResultado.Enabled:=false;
   end;
    }
   //Fin: SPP_201406_ASO
end;

procedure TfActualizarResultado.dblTipoResChange(Sender: TObject);
begin
    if dblTipoRes.Text <>'' then
    begin
        If DM1.cdsResultado.Locate('VALDES01', VarArrayof([dblTipoRes.Text]), []) Then
                medesResulDes.Text:=DM1.cdsResultado.fieldbyname('NOMVAL').AsString;
                xE:=DM1.cdsResultado.fieldbyname('VALDES03').AsString;
    end
    else
    begin
        medesNombre.Text:='';
        xE:='';
    end;
end;
procedure TfActualizarResultado.dblSatisfaccionChange(Sender: TObject);
begin
     if dblSatisfaccion.Text<>'' then
    begin
         If DM1.cdsNivelSat.Locate('VALDES01', VarArrayof([dblSatisfaccion.Text]), []) Then
                medesSatisfaccion.Text:=DM1.cdsNivelSat.fieldbyname('NOMVAL').AsString;
    end
    else
    begin
        medesSatisfaccion.Text:='';
    end;
end;

procedure TfActualizarResultado.dblConocimientoChange(Sender: TObject);
begin
     if dblConocimiento.Text<>'' then
    begin
         If DM1.cdsNivelCono.Locate('VALDES01', VarArrayof([dblConocimiento.Text]), []) Then
                medesConocimiento.Text:=DM1.cdsNivelCono.fieldbyname('NOMVAL').AsString;
    end
    else
    begin
        medesConocimiento.Text:='';
    end;
end;

procedure TfActualizarResultado.BuscarResultado;
Var xSql :String;
begin
       xSql:=' SELECT ROWNUM,R.CODRES,R.REFASO,R.GESREAASO,R.TIPRES,TRES.NOMVAL RESULTADO,R.NIVSAT,NSAT.NOMVAL SATISF,R.NIVCON,NCON.NOMVAL CONOCI,R.USUREG,R.FECREG,'
             +' R.USUMOD,R.FECMOD,SUBSTR(R.PERCAR,4,10) PERCAR'
             +' FROM ASO_RESULT_ASEPREV_MOV R'
             +' LEFT JOIN ASO_GENERICA_DET TRES ON TRES.CODCAB=''RESULTADO'' AND TRES.VALDES01=R.TIPRES AND TRES.ESTREG=1'
             +' LEFT JOIN ASO_GENERICA_CAB CAB ON CAB.CODCAB=TRES.CODCAB AND CAB.ESTREG=1'
             +' LEFT JOIN ASO_GENERICA_DET NSAT ON NSAT.CODCAB=''NIVELSATISF'' AND NSAT.VALDES01=R.NIVSAT AND NSAT.ESTREG=1'
             +' LEFT JOIN ASO_GENERICA_CAB CAB1 ON CAB1.CODCAB=NSAT.CODCAB AND CAB1.ESTREG=1'
             +' LEFT JOIN ASO_GENERICA_DET NCON ON NCON.CODCAB=''NIVELCONO'' AND NCON.VALDES01=R.NIVCON AND NCON.ESTREG=1'
             +' LEFT JOIN ASO_GENERICA_CAB CAB2 ON CAB2.CODCAB=NCON.CODCAB AND CAB2.ESTREG=1'
             +' WHERE R.ASOID='+QuotedStr(ASO202.xIdAsociado);

       //--llenar la Grilla--//
         DM1.cdsConsultaResult.Close;
         DM1.cdsConsultaResult.DataRequest(xSql);
         DM1.cdsConsultaResult.Open;
         dtgResultado.DataSource := DM1.dsConsultaResult;

         dtgResultado.Selected.Clear; 
         dtgResultado.Selected.Add('ROWNUM'#9'5'#9'Numero'#9#9);
         dtgResultado.Selected.Add('REFASO'#9'10'#9'Referencia de Asociado'#9#9);
         dtgResultado.Selected.Add('GESREAASO'#9'10'#9'Gestion de Referencia'#9#9);
         dtgResultado.Selected.Add('RESULTADO'#9'5'#9'Resultado'#9#9);
         dtgResultado.Selected.Add('SATISF'#9'5'#9'N.Satisfacción'#9#9);
         dtgResultado.Selected.Add('CONOCI'#9'5'#9'N.Conocimiento'#9#9);
         dtgResultado.Selected.Add('PERCAR'#9'10'#9'Periodo de Cartera'#9#9);
         dtgResultado.Selected.Add('USUREG'#9'10'#9'Usuario Registra'#9#9);
         dtgResultado.Selected.Add('FECREG'#9'10'#9'Fecha Registro'#9#9);
         dtgResultado.Selected.Add('USUMOD'#9'10'#9'Usuario Modifica'#9#9);
         dtgResultado.Selected.Add('FECMOD'#9'10'#9'Fecha Modifcación'#9#9);
         dtgResultado.ApplySelected;
end;
procedure TfActualizarResultado.bSalirClick(Sender: TObject);
begin
        Close;
        
        Screen.Cursor := crHourGlass;
        ASO202.fGestionCartera.BuscarHojaRutaDetalle(ASO202.xPerAsiHoj);
        Screen.Cursor := crDefault;
end;

procedure TfActualizarResultado.bGrabarClick(Sender: TObject);
Var xSql :String;
Var xFlgImp :Integer;
Var xEsthoj :Integer;
begin
     //--Validar que haya sido impresa la hoja antes de ser Actualizada sus resultados--//
      xSql:=' SELECT H.FLGIMP FROM ASO_HOJARUTA_MOV H'
      //Inicio HPC_201503_ASO
      //+' WHERE H.CODUSU='+QuotedStr(DM1.wUsuario)+' AND H.ASOID='+QuotedStr(ASO202.xIdAsociado)+' AND H.PERASIHOJ='+QuotedStr(ASO202.xPerAsiHoj)+' AND H.PERCAR='+QuotedStr(ASo202.xPeriodoCartera);
       +' WHERE H.CODUSU='+QuotedStr(vUsuarioRes)+' AND H.ASOID='+QuotedStr(ASO202.xIdAsociado)+' AND H.PERASIHOJ='+QuotedStr(ASO202.xPerAsiHoj)+' AND H.PERCAR='+QuotedStr(ASo202.xPeriodoCartera);
      //Final HPC_201503_ASO

      //--llenar la Grilla--//
       DM1.cdsTemp.Close;
       DM1.cdsTemp.DataRequest(xSql);
       DM1.cdsTemp.Open;
       xFlgImp:=DM1.cdsTemp.fieldbyname('FLGIMP').AsInteger;

       if xFlgImp = 0 then
       begin
           MessageDlg(' Debe Imprimir la Hoja de Ruta para poder ACTUALIZAR LOS RESULTADOS...!!!!', mtError, [mbOk], 0);
           Exit;
       end;
       
     //--Validacion--//
     if dblTipoRes.Text='' then
     begin
        MessageDlg(' Debe llenar el campo RESULTADO...!!!!', mtError, [mbOk], 0);
        Exit;
     end;

       //--Valida que solo se grabe un solo resultado--//
       xSql:=' SELECT H.ESTHOJ FROM ASO_HOJARUTA_MOV H '
       //Inicio HPC_201503_ASO
       //    +' WHERE H.CODUSU='+QuotedStr(DM1.wUsuario)+' AND H.ASOID='+QuotedStr(medesAsoId.Text)+' AND H.PERASIHOJ='+QuotedStr(ASO202.xPerAsiHoj)+' AND H.PERCAR='+QuotedStr(ASO202.xPeriodoCartera);
            +' WHERE H.CODUSU='+QuotedStr(vUsuarioRes)+' AND H.ASOID='+QuotedStr(medesAsoId.Text)+' AND H.PERASIHOJ='+QuotedStr(ASO202.xPerAsiHoj)+' AND H.PERCAR='+QuotedStr(ASO202.xPeriodoCartera);       
       //Final HPC_201503_ASO
        DM1.cdsTemp.Close;
        DM1.cdsTemp.DataRequest(xSql);
        DM1.cdsTemp.Open;
        xEsthoj:=DM1.cdsTemp.fieldbyname('ESTHOJ').AsInteger;

        if xEsthoj = 2 then
        begin
             MessageDlg(' Solo se puede Grabar un Resultado por HOJA de RUTA...!!!!', mtError, [mbOk], 0);
             Exit;
        end;  

     //--Transaccion- Graba resultado de la tabla--//
     xSql := ' INSERT INTO ASO_RESULT_ASEPREV_MOV(CODRES,ASOID,CODUSU,REFASO,GESREAASO,TIPRES,ESTRES,NIVSAT,NIVCON,ESTREG,FECASI,USUREG,FECREG,USUMOD,FECMOD,PERCAR)'
     //Inicio HPC_201503_ASO
     //     +' VALUES ((SELECT NVL(MAX(CODRES),0)+1 FROM ASO_RESULT_ASEPREV_MOV),'+QuotedStr(medesAsoId.Text)+','+ QuotedStr(DM1.wUsuario)+','+QuotedStr(edReferencia.Text)+','+QuotedStr(edGestion.Text)+','+QuotedStr(dblTipoRes.Text)+','+QuotedStr(xE)+','+QuotedStr(dblSatisfaccion.Text)+','+QuotedStr(dblConocimiento.Text)+',1,NULL,'+QuotedStr(DM1.wUsuario)+',SYSDATE,NULL,NULL,'+QuotedStr(ASO202.xPeriodoCartera)+')';
            +' VALUES ((SELECT NVL(MAX(CODRES),0)+1 FROM ASO_RESULT_ASEPREV_MOV),'+QuotedStr(medesAsoId.Text)+','+ QuotedStr(vUsuarioRes)+','+QuotedStr(edReferencia.Text)+','+QuotedStr(edGestion.Text)+','+QuotedStr(dblTipoRes.Text)+','+QuotedStr(xE)+','+QuotedStr(dblSatisfaccion.Text)+','+QuotedStr(dblConocimiento.Text)+',1,NULL,'+QuotedStr(DM1.wUsuario)+',SYSDATE,NULL,NULL,'+QuotedStr(ASO202.xPeriodoCartera)+')';
     //Final HPC_201503_ASO
     DM1.DCOM1.AppServer.EjecutaSql(xSql);

     xSql := ' UPDATE ASO_HOJARUTA_MOV H '
             +' SET H.ESTHOJ=2,'
             +' H.USUMOD='+QuotedStr(DM1.wUsuario)+', '
             +' H.FECMOD=SYSDATE '
     //Inicio HPC_201503_ASO
     //      +' WHERE H.CODUSU='+QuotedStr(DM1.wUsuario)+' AND H.ASOID='+QuotedStr(medesAsoId.Text)+' AND H.PERASIHOJ='+QuotedStr(ASO202.xPerAsiHoj)+' AND H.PERCAR='+QuotedStr(ASO202.xPeriodoCartera);
             +' WHERE H.IDHOJARUTA='+QuotedStr(DM1.cdsConsultaHoja.fieldbyname('IDHOJARUTA').Asstring)+' AND H.CODUSU='+QuotedStr(vUsuarioRes)+' AND H.ASOID='+QuotedStr(medesAsoId.Text)+' AND H.PERASIHOJ='+QuotedStr(ASO202.xPerAsiHoj)+' AND H.PERCAR='+QuotedStr(ASO202.xPeriodoCartera);
     //Final HPC_201503_ASO
     DM1.DCOM1.AppServer.EjecutaSql(xSql);

     //Inicio HPC_201503_ASO
     xSql :='BEGIN  SP_ASO_ACT_EST_HOJA_RUTA('''+DM1.cdsConsultaHoja.fieldbyname('IDHOJARUTA').Asstring+'''); END;';
     Try
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
     Except
       ShowMessage('Error al Actualizar ESTADO de la tabla ASO_HOJARUTA_MOV_CAB ' );
       exit;
     End;
     //Final HPC_201503_ASO

     BuscarResultado;
end;

procedure TfActualizarResultado.dtgResultadoDblClick(Sender: TObject);
begin
    xCodRes:=DM1.cdsConsultaResult.fieldbyname('CODRES').AsInteger;

    Try
            fModificarResultado := TfModificarResultado.create(self);
            fModificarResultado.Showmodal;
     Finally
            fModificarResultado.Free;
     End;
end;

procedure TfActualizarResultado.bImprimirClick(Sender: TObject);
begin
    pplAsoId.Caption:=ASO202.xDniAsociado;
    pplNombreAso.Caption:=ASO202.xNomAsociado;
    ppbdReporteResultado.DataSource:=DM1.dsConsultaResult;
    pprReporteResultado.Print;
    //ppDesigner1.Show;
end;

//Inicio HPC_201503_ASO
procedure TfActualizarResultado.btnMantAsoClick(Sender: TObject);
var xasoid:String;
begin

    dm1.xInsert:='0';
    xSQL:='SELECT dptoid, dptodes, dptoabr FROM TGE158';
    DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
    DM1.cdsRec.Close;  DM1.cdsRec.DataRequest(xSQL);   DM1.cdsRec.Open;
    xSQL:='SELECT ID,DESCRIP FROM TGE817 ';
    DM1.cdsSexo.Close;  DM1.cdsSexo.DataRequest(xSQL);   DM1.cdsSexo.Open;
    xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CE'') ';
    DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;
    xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
    DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;
    xSQL:='SELECT CODLEYPEN, DESLEYPEN FROM ASO_LEY_PEN_MAE ORDER BY CODLEYPEN';
    DM1.cdsCodLeyPen.Close; DM1.cdsCodLeyPen.DataRequest(xSQL); DM1.cdsCodLeyPen.Open;
    xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE CLAUXID=''A'' ';
    DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;
    xSQL:='SELECT UPROID,UPRONOM FROM APO102';
    DM1.cdsUPro.Close;  DM1.cdsUPro.DataRequest(xSQL);  DM1.cdsUPro.Open;
    xSQL := 'SELECT ESTCIVID,ESTCIVDES FROM TGE125 ORDER BY ESTCIVID';
    DM1.cdsUSES.Close; DM1.cdsUSES.DataRequest(xSQL);  DM1.cdsUSES.Open;
    xSQL := 'SELECT useid, usenom, useabre, usetelf, usedir, dirdptoid, dirprovid, dirzipid, dptoid, ciudid, zonaid, uproid, '
           +'upagoid, tipuseid, ccosid, usuario, freg, hreg, codant, flgfusion, cuentaid, flgact, fdeshabilitado, ofdesid, digabc,'
           +'abcid, zonoriope, ambito, codcargo, digmasrep,'
           +'autdescuo, codcargodo, digmasrepdo, codcargoce, digmasrepce, flacar, capend FROM APO101 ';
    DM1.cdsUse.Close; DM1.cdsUSE.DataRequest(xSQL);  DM1.cdsUSE.Open;

   // se controla para que si el Asociado se encuentra en actualización por el módulo de Previsión
   // no pueda ingresar a esta opción, ya que tembién actualiza el Maestro de Asociados
      xAsoId:=ASO202.xIdAsociado
      ;
      xSQL:='SELECT asoid, asocodmod, asocodaux, asocodpago, asoapepat, asoapemat, asonombres, asoapenom, useid, uproid, upagoid, asoresnom,'
           +'       asofresnom, resid, regpenid, asositid, asofact, asotipid, viaid, vianombre, asonumdir, asofdpto, asodpto, zonaid, zonanomb,'
           +'       ubigeoid, dptoid, paisid, refdom, asofecnac, asotelf1, asotelf2, tipdoccod, asodocnum, asolibmil, asoruc, estcivid, asosexo,'
           +'       asoemail, bancoid, asoncta, sitcta, asodni, graacid, grainsid, profid, asofmov, asofluging, asodir, usuario, hreg, freg,'
           +'       asolugest, fecterest, tiempoest, asolnacid, asorescese, asofrescese, fgarante, zipid, ciudid, archivoftp, ciaid, flagvar,'
           +'       asoapncre, flgfsol, estclf, observa, usr_crea, fec_crea, usr_ben, fec_ben, ctaser, cargo, variascuot, crencuota, nfusion,'
           +'       idimage, fsinliq, asodescol, asodircol, asozipcol, asoapepatdni, asoapematdni, asonomdni, asoapenomdni, asodeslab, asodirlab,'
           +'       asodptlabid, asoprvlabid, asodstlabid, asotellab, dptnacid, prvnacid, dstnacid, vialabid, zonalabid, fecact, indicador, ccosid,'
           +'       password, codafp, deshabilitado, valida_ci, tcreacion, regverif, codmodant, valcodmoddni, actarcrenant, actarcren, reingreso,'
           +'       autdesapo, fecautdesapo, usuregautdesapo, ofiregautdesapo, codmodautdesapo, codarchivo, gencodbar, envautdes, corenvautdes,'
           +'       codtiplug, numdirviv, nummanviv, numlotviv, desintviv, desrefviv, codurbviv, desurbviv, numetaviv, desetaviv, numintviv, nomdirviv,'
           +'       anoenv, envio, codotrdocide, numotrdocide, codmotdestapo, autdescuo, fecautdescuo, usuregautdescuo, ofiregautdescuo, codmodautdescuo,'
           +'       mdfasodir, mdfzipid, mdfcntreg, mdfusrmod, mdffecmod, emicarta, desmanviv, codmotdestcuo, fecactpad, ceneduid, fallecido, tipo_fall_id,'
           +'       en_actualiz, codtiptel1, codreftel1, codtiptel2, codreftel2, codpension, fecregautdesapo, codleypen, numautonp, codblocharen, numblocharen,'
           +'       coddepintren, desdepintren, asoapecasdni, invalidez, tipo_inva_id, fecautonp, asoaptser, fecactsit '
           +' FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId));
      DM1.cdsAso.Close;
      DM1.cdsAso.DataRequest(xSQL);
      DM1.cdsAso.Open;

   If not ((DM1.cdsAso.FieldByName('EN_ACTUALIZ').AsString='') OR (DM1.cdsAso.FieldByName('EN_ACTUALIZ').AsString='XXX')) then
   begin
      ErrorMsg('Módulo de Asociados', 'Existe otra opción que puede estar actualizando datos del Asociado'+chr(13)
                +' es posible que el USUARIO : '+DM1.cdsAso.FieldByName('USUARIO').AsString+' lo haya bloqueado '+chr(13)
                +'no se puede ejecutar en simultáneo con esta Opción');
      exit;
   end;

   Try
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


      IF DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S' THEN
      BEGIN
     // Verifico si el Asociado esta con Observación
        xSQL:='SELECT ESTADO,OBSERVACION FROM ASO007 WHERE ASOID='''+xAsoId+''' ORDER BY ITEM DESC ';
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
           xSQL:= 'SELECT asoid, usuario, hreg, idcodigo, asoncta, asoapenom, asodni, fecaut, usraut, motaut, fhaut FROM ASO002 WHERE ASOID='''+xAsoId+''' ';
           DM1.cdsCtasBco.Close;
           DM1.cdsCtasBco.DataRequest(XSQL);
           DM1.cdsCtasBco.Open;
           If Length(Trim(DM1.cdsCtasBco.FieldByName('FECAUT').AsString))= 0 then
           Begin
           // Si no esta autorizado verifico si tiene registro para autorizar
              xSql:= 'SELECT asoid, usuario, hreg, idcodigo, asoncta, asoapenom, asodni FROM ASO001 WHERE ASOID='''+xAsoId+''' ';
              DM1.cdsCtasBco.Close;
              DM1.cdsCtasBco.DataRequest(XSQL);
              DM1.cdsCtasBco.Open;
              If DM1.cdsCtasBco.RecordCount= 0 then
              Begin
              // Si no tiene registro de cabecera para autorizar inserto uno nuevo
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
              // Si no tiene registro detalle para autorizar inserto uno nuevo
                 xSQL:='INSERT INTO ASO002(ASOID,USUARIO,HREG,IDCODIGO,ASONCTA,ASOAPENOM,ASODNI) VALUES ('+QuotedStr(xAsoId)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,''03032005'','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASONCTA').AsString))+','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString))+','+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString))+') ';
                 DM1.DCOM1.AppServer.EjecutaSql(xSQL);
              End;
           End;
        End;

     // Verifico si no es unica la Cuenta de Ahorros
      {  If VrfCtaAhorros(xAsoId)='N'  Then
        Begin
           MessageDlg('La CUENTA DE AHORROS No Es Unica,...Verifique ', mtError, [mbOk], 0);
           Exit;
        End;  }
      END;


      If (DM1.cdsAso.fieldbyname('ASOTIPID').AsString='NI') AND (DM1.cdsAso.fieldbyname('TCREACION').AsString='01') Then
         xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''CE'') '
      Else
      Begin
         //El nivel 02 y 03 pueden ver todo los tipos de asociados
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
      FOtorPre:= TfOtorPre.create(self);

      FMantAsociado.lkcDpto.Text  := Copy(DM1.cdsAso.fieldbyname('ZIPID').AsString,1,2);
      FMantAsociado.lkcProv.Text  := Copy(DM1.cdsAso.fieldbyname('ZIPID').AsString,1,4);
      FMantAsociado.lkcDist.Text  := DM1.cdsAso.fieldbyname('ZIPID').AsString;

      FMantAsociado.edtDpto.Text  :=DM1.CrgDescrip('DPTOID='+QuotedStr(Trim(FMantAsociado.lkcDpto.Text)),'APO158','DPTODES');
      FMantAsociado.edtProv.Text  :=DM1.CrgDescrip('DPTOID||CIUDID='+QuotedStr(Trim(FMantAsociado.lkcProv.Text)),'TGE121','CIUDDES');

      FMantAsociado.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
      FMantAsociado.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
      FMantAsociado.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
      FMantAsociado.edtanos.Text := DM1.tiempoTranscurrido(dm1.FechaSys,FMantAsociado.dbdtFecNac.Date);

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
      DM1.sAPO201 := 'APO201';
      FMantAsociado.ShowModal;
    Finally

     FMantAsociado.Free;
      DM1.cdsPadre.Close; DM1.cdsHijo.Close; DM1.cdsCAso.Close;
      DM1.cdsTRela.Close; DM1.cdsQry7.Close;
      DM1.cdsTAso.Close;


      // si ha entrado al mantenimiento de Asociados, libera forma y
      //libera el registro del Asociado en Maestro de Asociados, para que pueda sea actualizado
         xSQL := 'begin '
                +'  SP_ACT_PROC_ACT_MAE('+quotedstr(xAsoId)+','
                                      +quotedstr('XXX')+', ' + QuotedStr(DM1.wUsuario) + '); '
                +'end; ';
         DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
         End;
end;
//Final HPC_201503_ASO
end.
