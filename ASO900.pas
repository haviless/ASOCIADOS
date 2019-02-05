// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO900.pas
// Formulario              :  FOtorPre
// Fecha de Creación       :  01/08/2011
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Otorgamiento de Créditos
// Actualizaciones         :
// SPP_201402_ASO          : Se modifica el procedimiento "borrafotos". Se incluye la eliminación de los archivos de fotos en la carpeta "C:\SolExes"
// SPP_201402_ASO          : Se realiza el pase a producción a partir del HPC_201401_ASO

unit ASO900;

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
  TFOtorPre = class(TForm)
    grpDatos: TGroupBox;
    bFoto: TBevel;
    bFirma: TBevel;
    EdtCodMod: TEdit;
    BitBuscar: TButton;
    grpPrest: TGroupBox;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet5: TTabSheet;
    dtgPrestamos: TwwDBGrid;
    gpbOtorPre: TGroupBox;
    dbseAnoTalon: TwwDBSpinEdit;
    dbseMesTalon: TwwDBSpinEdit;
    dbeUTalonPago: TwwDBEdit;
    dbeCuotaInicial: TwwDBEdit;
    dbeMtoOto: TwwDBEdit;
    DBLkuCTipDes: TwwDBLookupCombo;
    DBLkCDAgencias: TwwDBLookupComboDlg;
    DBLCTipCob: TwwDBLookupCombo;
    z2bbtnSalir: TfcShapeBtn;
    dtgNotaAbono: TwwDBGrid;
    dblTipCre: TwwDBLookupCombo;
    dbsNumCuotas: TwwDBSpinEdit;
    IdFTP1: TIdFTP;
    ImagAso: TImage;
    GroupBox1: TGroupBox;
    dbeNtaAbn: TwwDBEdit;
    GroupBox2: TGroupBox;
    dbeCuotas: TwwDBEdit;
    GroupBox3: TGroupBox;
    dbeMtoDesem: TwwDBEdit;
    ppR1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDetailBand1: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText27: TppDBText;
    ppMemo1: TppMemo;
    ppMemo2: TppMemo;
    ppFooterBand1: TppFooterBand;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppPageStyle1: TppPageStyle;
    dbp1: TppDBPipeline;
    ppLbelFecIni: TppLabel;
    ppLbelFecFin: TppLabel;
    BitAsociado: TBitBtn;
    Panel1: TPanel;
    EdtDesCre: TEdit;
    Panel2: TPanel;
    EdtInteres: TwwDBEdit;
    edtFlat: TwwDBEdit;
    EdtMonMin: TwwDBEdit;
    EdtCuoMin: TwwDBEdit;
    EdtMonMax: TwwDBEdit;
    EdtCuoMax: TwwDBEdit;
    ppLblPeiodo: TppLabel;
    ppLblCuoIni: TppLabel;
    GroupBox4: TGroupBox;
    dbeCapPagoReal: TwwDBEdit;
    dbeMonDisp: TwwDBEdit;
    Panel3: TPanel;
    EdtLugPro: TEdit;
    edtUProceso: TEdit;
    EdtUPago: TEdit;
    edtDesPago: TEdit;
    EdtCodUse: TEdit;
    edtDesUse: TEdit;
    EdtTipAso: TEdit;
    edtSituacion: TEdit;
    dbeDNI: TwwDBEdit;
    dbeCtaAhorro: TwwDBEdit;
    dbeSitCta: TwwDBEdit;
    GroupBox5: TGroupBox;
    dbeApeNom: TwwDBEdit;
    Panel4: TPanel;
    edtOfDes: TEdit;
    Panel5: TPanel;
    dbdtpFechaSol: TwwDBDateTimePicker;
    lblFrmDesc: TppLabel;
    ImaFirma: TImage;
    lblPreferente: TLabel;
    lblMtoPre: TLabel;
    TabSheet2: TTabSheet;
    grpSrb000: TGroupBox;
    LblUsuarios: TLabel;
    DBLUsuarios: TwwDBLookupCombo;
    Panel6: TPanel;
    EdtUsrRes: TwwDBEdit;
    BitPrint: TBitBtn;
    Panel7: TPanel;
    EdtTipDes: TEdit;
    Panel8: TPanel;
    EdtTipCob: TEdit;
    Panel9: TPanel;
    EdtCodAgen: TEdit;
    EdtDepGir: TEdit;
    ppdEgreso: TppDBPipeline;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel19: TppLabel;
    ppLbl01: TppLabel;
    ppLbl02: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel18: TppLabel;
    pplDocumento: TppLabel;
    pplMontosol: TppLabel;
    pplCrefotorg: TppLabel;
    pplCredid: TppLabel;
    pplAsoapenom: TppLabel;
    pplAsodni: TppLabel;
    pplAsocodmod: TppLabel;
    pplUsuario: TppLabel;
    pplNumLet: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    pplDocumento2: TppLabel;
    pplMontosol2: TppLabel;
    pplCrefotorg2: TppLabel;
    pplCredid2: TppLabel;
    pplAsoapenom2: TppLabel;
    pplAsodni2: TppLabel;
    pplAsocodmod2: TppLabel;
    pplUsuario2: TppLabel;
    pplNumLet2: TppLabel;
    pplblObs01: TppLabel;
    pplblObs02: TppLabel;
    ppFooterBand2: TppFooterBand;
    pplFecha: TppLabel;
    pplFecha2: TppLabel;
    pnlCalificacion: TPanel;
    Img01: TImage;
    Img02: TImage;
    Img03: TImage;
    Img04: TImage;
    ppLblDesEfe02: TppLabel;
    ppLblDesEfe00: TppLabel;
    ppLblDesEfe01: TppLabel;
    ppDBText16: TppDBText;
    z2bbtnImprime: TfcShapeBtn;
    Z2sbtnParametros: TfcShapeBtn;
    z2bbtnCrono: TfcShapeBtn;
    z2bbtnNota: TfcShapeBtn;
    fcSpeExt: TfcShapeBtn;
    z2bbtnNuevo: TfcShapeBtn;
    z2bbtnAcepta: TfcShapeBtn;
    z2bbtnModifica: TfcShapeBtn;
    dbsModCuo: TwwDBSpinEdit;
    z2bbtnCancelar: TfcShapeBtn;
    z2bbtnAnula: TfcShapeBtn;
    edtLiquidado: TEdit;
    BitMstApo: TfcShapeBtn;
    procedure z2bbtnSalirClick(Sender: TObject);
    procedure BitBuscarClick(Sender: TObject);
    procedure EdtCodModKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure z2bbtnNuevoClick(Sender: TObject);
    procedure dblTipCreChange(Sender: TObject);
    procedure Botones(xParametro:Boolean);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdtCodModExit(Sender: TObject);
    procedure dbeMtoOtoExit(Sender: TObject);
    procedure dbeNtaAbnExit(Sender: TObject);
    procedure dbeCuotaInicialExit(Sender: TObject);
    procedure dbeCapPagoRealExit(Sender: TObject);
    procedure dbeMtoDesemExit(Sender: TObject);
    procedure dbeCuotasExit(Sender: TObject);
    procedure EdtDesCreExit(Sender: TObject);
    procedure dbeUTalonPagoExit(Sender: TObject);
    procedure dbsNumCuotasExit(Sender: TObject);
    procedure dbeUTalonPagoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeMtoOtoKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCuotaInicialKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCapPagoRealKeyPress(Sender: TObject; var Key: Char);
    procedure DBLkuCTipDesChange(Sender: TObject);
    procedure DBLCTipCobChange(Sender: TObject);
    procedure DBLkCDAgenciasChange(Sender: TObject);
    procedure z2bbtnAceptaClick(Sender: TObject);
    procedure z2bbtnNotaClick(Sender: TObject);
    procedure DBLCTipCobExit(Sender: TObject);
    procedure z2bbtnCancelarClick(Sender: TObject);
    procedure z2bbtnImprimeClick(Sender: TObject);
    procedure z2bbtnAnulaClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure dtgPrestamosDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BitAsociadoClick(Sender: TObject);
    procedure fcSpeExtClick(Sender: TObject);
    procedure EdtCodModChange(Sender: TObject);
    procedure z2bbtnCronoClick(Sender: TObject);
    procedure z2bbtnModificaClick(Sender: TObject);
    procedure ImaFirmaClick(Sender: TObject);
    procedure ImagAsoClick(Sender: TObject);
    procedure DBLUsuariosChange(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
    procedure Img04Click(Sender: TObject);
    procedure Img03Click(Sender: TObject);
    procedure Img02Click(Sender: TObject);
    procedure Img01Click(Sender: TObject);
    procedure pnlCalificacionClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dtgPrestamosKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitMstApoClick(Sender: TObject);
   function CalculaEdad(FechaNacimiento:string):integer;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    xMontAbn:Currency; xNroCuoAbn:Integer;
    function GrbCorrelativo(xCondicion,xTipos:String):String;
    function GrbCorrelatAbn(xConsulta:String):String;
    function GrbCorrelatPagare(xLocaliza:String):String;
    procedure GrabaPrestamo();
    function Busca301(xAsoId:String ): Char;


    procedure AnulaCuoAct(xAsoId, xCreDid, xCreCuota, xCnd : String);
    procedure AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado, xCnd : String ; tCremtoCob: Currency );
    function AbonoCuotas(xAsoId:String): Currency;
    procedure GrabaEfectivo(xAsoId:String);
    function ValdaAsociado(xAsoid,xTipAso,xFrmDes:String):Char;
    function ValidaActualizacion():Char;
    procedure CargaAso(xMst,xMensaje:String);
    function CalSalCob(xAsoid,xPeriodo:String):Currency;
    function MesesDesde(cadena:string):integer;
    function AsoClfCan(xAsoid:String):Char;
    function AsoClfPen(xAsoid,xPeriodo:String):Char;
    procedure MstClfAso(xClfAso:String);
    procedure BorraFotos();
  public
    xCreditoId,xNroAbono,xNroPagare,xClfAso:String;
    xMonMax,xMonMin:Currency;

    { Public declarations }
    procedure CrgPrestamos();
    procedure LimPrestamos();
    procedure LimPiaOtor();
    function FormatoNumeros(xTexto:String):String;
    //Inicio: DPP_201202_ASO
    //Se quita la carga de imagen por FTP
    {procedure CargaFoto(IdFoto:String);
    procedure CargaFirma(IdFoto:String);}
    //Final: DPP_201202_ASO
    procedure AnulaPrestamo(xAsoId, xCreDid, xNroNabo, xFecPre, xCnd : String);
    procedure AnulaAct(xAsoId, xCreDid, xCnd : String);
    function SaldoSrb(xAsoid:String):Currency;
    function Busca302(xAsoId, xCreDid : String ): String;
    function Busca310(xAsoId, xCreDid : String ): String;
  end;

var
  FOtorPre: TFOtorPre;

implementation

uses ASO901, ASODM , ASO908, ASO944, ASO948, COB903, ASO260;
//  DateUtils;

{$R *.dfm}

procedure TFOtorPre.z2bbtnSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFOtorPre.BitBuscarClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex:=0;
  lblPreferente.Visible:=False;
  lblMtoPre.Visible:=False;
  pnlCalificacion.Visible:=False;
  DM1.xSgr:='1';
  DM1.xCnd:='C';
  BorraFotos;
  ImagAso.Visible := False;
  ImaFirma.Visible := False;
  DM1.LimpiaDatos;
  LimPrestamos;
  Botones(False);
  fSeleccion:= TfSeleccion.create(self);
  fSeleccion.gbbuscar.Width:=430; fSeleccion.gbbuscar.Height :=40;
  fSeleccion.edtBuscar.Width:=407; fSeleccion.edtBuscar.Height := 28; 
  fSeleccion.Showmodal;
  fSeleccion.free;
  If Length(Trim(dbeApeNom.Text)) > 0 Then
    // Botones(True)
  Else
     Begin
       Botones(False);
       z2bbtnSalir.Enabled := True ;
     End;

end;

procedure TFOtorPre.LimPrestamos;
begin
  DM1.cdsSolicitud.Close;
  DM1.cdsSolicitud.DataRequest('SELECT SubStr(a.Credid,11,5) As Numero,b.TIPCREDES,a.* FROM CRE301 a,CRE110 B WHERE A.TIPCREID=B.TIPCREID AND A.ASOID ='+QuotedStr('!@#$%^&*+/*')+' Order By a.CREFOTORG ');
  DM1.cdsSolicitud.Open;
end;

procedure TFOtorPre.CrgPrestamos;
Var xAsoId,xImagen:String;
begin
  xClfAso:='';
  LimPrestamos;
  xAsoId:=Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
  DM1.cdsSolicitud.Close;
  DM1.cdsSolicitud.DataRequest('SELECT SubStr(a.Credid,11,5) as Numero,b.TIPCREDES,a.* FROM CRE301 a,CRE110 b Where a.TIPCREID=b.TIPCREID AND a.ASOID ='+QuotedStr(Trim(xAsoId))+' Order By a.CREFOTORG ');
  DM1.cdsSolicitud.Open;
  If DM1.cdsSolicitud.RecordCount > 0 Then DM1.cdsSolicitud.Last;
  TNumericField(DM1.cdsSolicitud.fieldbyname('CREMTOOTOR')).DisplayFormat:='###,###.#0';
  TNumericField(DM1.cdsSolicitud.fieldbyname('CRESDOACT')).DisplayFormat:='###,###.#0';
  //Retirado por DFernandez - 18/02/2009 - HPP_200904_ASO
  (*If Trim(EdtTipAso.Text)='DO' Then
  Begin
  xAsoId:=Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
  xClfAso:=AsoClfPen(xAsoId,Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2))+AsoClfCan(xAsoId);
  pnlCalificacion.Visible:=True;
    Case StrtoInt(DM1.RecuperaDatos('CLF000','IDCLF',Trim(xClfAso),'IMAGE')) Of
       1:Begin Img01.Visible:=True; Img02.Visible:=False; Img03.Visible:=False; Img04.Visible:=False; End;
       2:Begin Img01.Visible:=False; Img02.Visible:=True; Img03.Visible:=False; Img04.Visible:=False; End;
       3:Begin Img01.Visible:=False; Img02.Visible:=False; Img03.Visible:=True; Img04.Visible:=False; End;
       4:Begin Img01.Visible:=False; Img02.Visible:=False; Img03.Visible:=False; Img04.Visible:=True; End;
     End;
  End;*)
end;

procedure TFOtorPre.EdtCodModKeyPress(Sender: TObject; var Key: Char);
Var xCondicion:String;
begin
If Length(Trim(EdtCodMod.Text))=0 Then
Else
Begin
If Key = #13 then
     Begin
       BorraFotos;
       If Length(Trim(EdtCodMod.Text))>10 Then
          Begin
             MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
             EdtCodMod.Text:='';
             Exit;
          End;

       EdtCodMod.Text:=Format('%.10d',[StrToInt(EdtCodMod.Text)]);
       DM1.cdsAso.Close;
       DM1.cdsAso.DataRequest('Select * From APO201 Where ASOCODMOD LIKE '+QuotedStr(Trim(EdtCodMod.Text)+'%'));
       DM1.cdsAso.Open;
       If DM1.cdsAso.RecordCount = 1 Then
          Begin
             //Inicio: DPP_201202_ASO
             //Se quita la carga de imagen por FTP
             //CargaFoto(DM1.cdsAso.FieldByName('IDIMAGE').AsString);
               DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');
             //Final: DPP_201202_ASO
             DM1.LimpiaDatos;
             DM1.CrgDatos;
          End
       Else
          If DM1.cdsAso.RecordCount > 1 Then
             Begin
                DM1.xSgr:='0';
                DM1.LimpiaDatos;
                fSeleccion:= TfSeleccion.create(self);
                fSeleccion.BitMostrar.Enabled := False;
                fSeleccion.edtBuscar.Text := EdtCodMod.Text;
                fSeleccion.edtBuscar.ReadOnly := True;
                fSeleccion.rbtDni.Enabled:=False; fSeleccion.rbtCuenta.Enabled:=False; fSeleccion.rbtCodMod.Enabled:=False; fSeleccion.rbtApeNom.Enabled:=False;
                fSeleccion.Showmodal;
                fSeleccion.free;
             End
          Else
             Begin
               DM1.LimpiaDatos;
               LimPrestamos;
               MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
             End;

     End;
End;
end;

procedure TFOtorPre.FormActivate(Sender: TObject);
begin
dbdtpFechaSol.Date := DM1.FechaSys;
EdtCodMod.SetFocus;
DM1.xArea:='CRE';
end;

procedure TFOtorPre.z2bbtnNuevoClick(Sender: TObject);
var xAsoId,xSQL,xAnoOpe:String;
begin
  xAsoId  := DM1.cdsAso.fieldbyname('ASOID').AsString;
  If Trim(DM1.cdsAso.fieldbyname('ASOTIPID').AsString)='DO' Then
     Begin
        xSQL:='SELECT TRANSMES||''/''||TRANSANO PERIODO,FORPAGOABR FRMPAG,TRANSMTO MONTO, '+
              'TRANSFOPE,USUARIO,USEID||'' - ''||USEABR USES,HREG FROM APO301 '+
              'WHERE ASOID='+QuotedStr(xAsoId)+' AND TRANSINTID=''APO'' ';
        DM1.cdsCuotas.Close; DM1.cdsCuotas.DataRequest(xSQL); DM1.cdsCuotas.Open;
        If DM1.cdsCuotas.RecordCount=0 Then
           Begin
              MessageDlg(' No Puede Aprobar Creditos a ASOCIADOS ACTIVOS Que No Tienen Aportes Registrados', mtError, [mbOk], 0);
              DM1.cdsCuotas.Close;
              Exit;
           End;
           DM1.cdsCuotas.Close;
     End;


  If (Trim(DM1.cdsAso.fieldbyname('ASOTIPID').AsString)='CE') And (Trim(DM1.cdsAso.fieldbyname('REGPENID').AsString)='02') Then
   Begin
      MessageDlg(' No Puede Aprobar Creditos a Cesantes con Regimen De Pensión 19990 ', mtError, [mbOk], 0);
      Exit;
   End;

  If Trim(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ASOID').AsString)),'PVS301','PVSTIPBEN'))='02' Then
   Begin
      MessageDlg(' No Puede Aprobar Creditos a Asociados FALLECIDOS ', mtError, [mbOk], 0);
      Exit;
   End;

  If Trim(EdtTipAso.Text)='DO' Then
     Begin
      MstClfAso(xClfAso);
     End;
   If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
       Exit;
      End;


   If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='SIS') Then
   Else
      Begin
         If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='CRE')  Then
         Else
             Begin
               MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
               Exit;
             End;
      End;


  If Length(Trim(dbeApeNom.Text))=0 Then
     Begin
        MessageDlg('Debe Seleccionar Un Asociado...!', mtError, [mbOk], 0);
        Exit;
     End;


  If Length(Trim(DM1.CrgDescrip('USEID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('USEID').AsString))+' AND UPROID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPROID').AsString))+' AND UPAGOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('UPAGOID').AsString)) ,'APO101','USENOM'))) = 0 Then
     Begin
        MessageDlg('Codigo De Use No Catalogado...!', mtError, [mbOk], 0);
        Exit;
     End;

  If Length(Trim(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId))+' AND FECOBSR IS NOT NULL AND FECAPRO IS NULL' ,'OBS000','MTOOBSR'))) > 0 Then
     Begin
        MessageDlg('Observado : '#13+#13+DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId))+' AND FECOBSR IS NOT NULL AND FECAPRO IS NULL' ,'OBS000','MTOOBSR'), mtError, [mbOk], 0);
        Exit;
     End;

 //Control
 If ValidaActualizacion()='N' Then
    Begin
       Exit;
    End;


  dbsNumCuotas.Value := 1;
  If StrToInt(Copy(DateToStr(DM1.FechaSys),4,2))=1 Then
     Begin
        dbseAnoTalon.Value := StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)) - 1 ;
        dbseMesTalon.Value:=12;
     End
  Else
     Begin
        dbseAnoTalon.Value :=StrToInt(Copy(DateToStr(DM1.FechaSys),7,4));
        dbseMesTalon.Value:= StrToInt(Copy(DateToStr(DM1.FechaSys),4,2))-1;
     End;

  dbeUTalonPago.Text:='0.00'; dbeMtoOto.Text:='0.00';dbeCuotaInicial.Text:='0.00';dbeCapPagoReal.Text:='0.00';
  dbeNtaAbn.Text:='0.00'; dbeMtoDesem.Text:='0.00' ; dbeCuotas.Text := '0.00' ; dbsNumCuotas.Text :=''; dbeMonDisp.Text :='0.00';
  xAnoOpe:=Copy(DateToStr(DM1.FechaSys),7,4);
  xSQL:='SELECT a.TIPCREID,a.TIPCREDES,a.TIP_DES,a.ACTIVO,a.POR_INT,a.POR_FLT,a.CUO_MIN,a.CUO_MAX,a.MON_MIN,a.MON_MAX,b.CREDID,a.CUO_ABN FROM CRE110 a,CRE206 b WHERE a.TIPCREID=SubStr(b.CREDID,7,2)  and SubStr(b.CREDID,1,2)='+QuotedStr(Trim(DM1.xOfiDes))+' AND b.TIPO=''1'' AND b.CORREANO='+QuotedStr(Trim(xAnoOpe))+' And a.Activo=''S'' AND a.ASOTIPID='+QuotedStr(Trim(EdtTipAso.Text))+' ORDER BY A.TIPCREID';
  DM1.cdsTipCre.Close;
  DM1.cdsTipCre.DataRequest(xSQL) ;
  DM1.cdsTipCre.Open;
  DM1.cdsTransCre.Close;
  DM1.cdsTransCre.DataRequest('SELECT * From COB101 WHERE FLGDCT=''S'' AND ACTIVO=''S'' ');
  DM1.cdsTransCre.Open;
  DM1.cdsTipDesem.Close;
  DM1.cdsTipDesem.DataRequest('SELECT *  FROM CRE104  WHERE FLGLISTA=''S'' AND ACTIVO=''S'' ORDER BY TIPDESEID');
  DM1.cdsTipDesem.Open;
  DM1.cdsAgencias.Close;
  DM1.cdsAgencias.DataRequest('Select a.AGENBCOID,a.AGENBCODES,a.DPTOID,b.DPTODES from cob102 a, apo158 b Where a.DPTOID=b.DPTOID Order By a.DPTOID,a.AGENBCODES');
  DM1.cdsAgencias.Open;
  z2sbtnParametros.Enabled := False ;
  z2bbtnNuevo.Enabled := False ;
  BitMstApo.Enabled := False ;
  z2bbtnAnula.Enabled := False ;
  z2bbtnModifica.Enabled := False;
  fcSpeExt.Enabled := False;
  z2bbtnImprime.Enabled := False ;
  z2bbtnCrono.Enabled := False ;
  z2bbtnNota.Enabled := False ;
  z2bbtnAcepta.Enabled := True;
  z2bbtnCancelar.Enabled := True;
  z2bbtnSalir.Enabled := False;
  grpDatos.Enabled:=False;
  gpbOtorPre.Enabled:=True;
  dblTipCre.SetFocus;


end;

procedure TFOtorPre.dblTipCreChange(Sender: TObject);
begin
   If DM1.cdsTipCre.Locate('TIPCREID',VarArrayof([dblTipCre.Text]),[]) Then
      Begin
        EdtDesCre.Text  := DM1.cdsTipCre.fieldbyname('TIPCREDES').AsString;
        EdtInteres.Text := DM1.cdsTipCre.fieldbyname('POR_INT').AsString;
        EdtFlat.Text := DM1.cdsTipCre.fieldbyname('POR_FLT').AsString;
        EdtMonMin.Text := DM1.cdsTipCre.fieldbyname('MON_MIN').AsString;
        EdtCuoMin.Text := DM1.cdsTipCre.fieldbyname('CUO_MIN').AsString;
        EdtMonMax.Text := DM1.cdsTipCre.fieldbyname('MON_MAX').AsString;
        EdtCuoMax.Text := DM1.cdsTipCre.fieldbyname('CUO_MAX').AsString;
        dbsNumCuotas.MinValue :=DM1.cdsTipCre.fieldbyname('CUO_MIN').AsInteger;
        dbsNumCuotas.MaxValue :=DM1.cdsTipCre.fieldbyname('CUO_MAX').AsInteger;
        EdtInteres.Text:=FormatoNumeros(EdtInteres.Text);
        EdtFlat.Text:=FormatoNumeros(EdtFlat.Text);
        EdtMonMin.Text:=FormatoNumeros(EdtMonMin.Text);
        EdtMonMax.Text:=FormatoNumeros(EdtMonMax.Text);
        If Trim(dblTipCre.Text)='50' Then
           Begin
             dbeCuotaInicial.Enabled:=True;
           End
        Else
           Begin
             dbeCuotaInicial.Text:='0.00';
             dbeCuotaInicial.Enabled:=False;
           End;
      End
   Else
      Begin
        if Length(dblTipCre.Text) <> 2 then
           Begin
              Beep;
              EdtDesCre.Text  :='';
              EdtInteres.Text := '0.00';
              EdtFlat.Text := '0.00';
              EdtMonMin.Text := '0.00';
              EdtCuoMin.Text := '0';
              EdtMonMax.Text := '0.00';
              EdtCuoMax.Text := '0';
           End;
      End

end;

procedure TFOtorPre.Botones(xParametro: Boolean);
begin
Z2sbtnParametros.Enabled := xParametro ;
z2bbtnNuevo.Enabled := xParametro ;
BitMstApo.Enabled := xParametro ;
z2bbtnAcepta.Enabled := False ;
z2bbtnCancelar.Enabled := False ;
z2bbtnAnula.Enabled := xParametro ;
z2bbtnModifica.Enabled := xParametro ;
z2bbtnImprime.Enabled := xParametro ;
z2bbtnCrono.Enabled := xParametro ;
z2bbtnSalir.Enabled := xParametro ;
z2bbtnNota.Enabled := xParametro ;
fcSpeExt.Enabled := xParametro;
end;

procedure TFOtorPre.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;


end;

procedure TFOtorPre.EdtCodModExit(Sender: TObject);
begin
If Length(Trim(EdtCodMod.Text))=0 Then
Else
   Begin
       PageControl1.ActivePageIndex:=0;
       BorraFotos;
       ImagAso.Visible := False;
       ImaFirma.Visible := False;
       pnlCalificacion.Visible:=False;
       If Length(Trim(EdtCodMod.Text))>10 Then
          Begin
             MessageDlg('Codigo Modular No Puede Tener Mas De 10 Caracteres...!', mtError, [mbOk], 0);
             EdtCodMod.Text:='';
             EdtCodMod.SetFocus;
             Exit;
          End;
       EdtCodMod.Text:=Format('%.10d',[StrToInt(EdtCodMod.Text)]);
       DM1.cdsAso.Close;
       DM1.cdsAso.DataRequest('Select * From APO201 Where ASOCODMOD LIKE '+QuotedStr(Trim(EdtCodMod.Text)+'%'));
       DM1.cdsAso.Open;
       If DM1.cdsAso.RecordCount = 1 Then
          Begin
             //Inicio: DPP_201202_ASO
             //Se quita la carga de imagen por FTP
             {CargaFoto(DM1.cdsAso.FieldByName('IDIMAGE').AsString);
             CargaFirma(DM1.cdsAso.FieldByName('IDIMAGE').AsString);}
              DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');
             //Final: DPP_201202_ASO
             
             DM1.LimpiaDatos;
             DM1.CrgDatos;
             Botones(True);
             lblMtoPre.Caption:=FormatFloat('###,###.#0',SaldoSrb(DM1.cdsAso.FieldByName('ASOID').AsString));
             dtgPrestamos.SetFocus;
          End
       Else
          If DM1.cdsAso.RecordCount > 1 Then
             Begin
                DM1.xSgr:='0';
                DM1.LimpiaDatos;
                fSeleccion:= TfSeleccion.create(self);
                fSeleccion.BitMostrar.Enabled := False;
                fSeleccion.edtBuscar.Text := EdtCodMod.Text;
                fSeleccion.edtBuscar.ReadOnly := True;
                fSeleccion.rbtDni.Enabled:=False; fSeleccion.rbtCuenta.Enabled:=False; fSeleccion.rbtCodMod.Enabled:=False; fSeleccion.rbtApeNom.Enabled:=False;
                fSeleccion.Showmodal;
                fSeleccion.free;
                Botones(True);
                lblMtoPre.Caption:=FormatFloat('###,###.#0',SaldoSrb(DM1.cdsAso.FieldByName('ASOID').AsString));
                dtgPrestamos.SetFocus;
             End
          Else
             Begin
               DM1.LimpiaDatos;
               LimPrestamos;
               MessageDlg('Codigo Modular No Existe...!', mtError, [mbOk], 0);
               EdtCodMod.SetFocus;
             End;
   End;
end;

function TFOtorPre.FormatoNumeros(xTexto: String): String;
begin
   Try
      Result:=FormatFloat('###,###.#0',DM1.Valores(xTexto));
   Except
   End;
end;

procedure TFOtorPre.dbeMtoOtoExit(Sender: TObject);
Var xMonDes , xMonDep : Currency;
    xAsoId,xfCalc:String;
begin
If Length(Trim(EdtDesCre.Text))=0 Then
   Begin
     MessageDlg(' Seleccione Un Tipo De Credito Catalogado ', mtError,[mbOk],0);
     Exit;
   End;

If DM1.Valores(dbeMtoOto.Text)=0 Then
Else
   Begin
   xNroCuoAbn:=0;   xMonDep:= 0 ;
   dbeMtoOto.Text:=FormatoNumeros(dbeMtoOto.Text);
   xAsoId  := DM1.cdsAso.FieldByname('ASOID').AsString;
   xfCalc  := Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
   If DM1.RecuperaDatos('SRB000','ASOID',xAsoId,'ESTDEP')='02' Then
       If SaldoSrb(xAsoId) > 0 Then
          xMonDep:=DM1.Valores(lblMtoPre.Caption);




   If DM1.TipDes((dblTipCre.Text))='P' Then
      Begin
       dbeNtaAbn.Text := FormatFloat('###,###.#0',DM1.CalSaldo(xAsoid,xfCalc));
       xMontAbn:=0;
       dtgNotaAbono.ColumnByName('CREFVEN').FooterValue :='Total : ';
       xMontAbn:=AbonoCuotas(DM1.cdsAso.fieldbyname('ASOID').AsString);
       dtgNotaAbono.ColumnByName('ABONO').FooterValue :=FormatFloat('###,###.#0',xMontAbn);
       xNroCuoAbn:=DM1.cdsAbonoCreditos.RecordCount;
      End
   Else
      Begin
        dbeNtaAbn.Text := FormatFloat('###,###.#0',0);
        xNroCuoAbn:=0;
      end;


    If xNroCuoAbn>StrToInt(DM1.CrgDescrip('TIPCREID='+QuotedStr(Trim(dblTipCre.Text)),'CRE110','CUO_ABN')) Then
       Begin
          MessageDlg(' Verifique : '+#13+' Número De Cuotas Para Abono :  '+IntToStr(xNroCuoAbn)+#13+' Número Parametrizado :  '+DM1.CrgDescrip('TIPCREID='+QuotedStr(Trim(dblTipCre.Text)),'CRE110','CUO_ABN'), mtError,[mbOk],0);
          z2bbtnCancelar.OnClick(z2bbtnCancelar);
          Exit;
       End;


     xMonDes:=DM1.Valores(dbeMtoOto.Text)-(DM1.Valores(dbeNtaAbn.Text)+xMonDep);
     dbeMtoDesem.Text :=FormatFloat('###,###.#0',xMonDes);


      If dbeCuotaInicial.Enabled Then
         dbeCuotaInicial.SetFocus
      Else
         dbsNumCuotas.SetFocus;
   End;
end;

procedure TFOtorPre.dbeNtaAbnExit(Sender: TObject);
begin
   dbeNtaAbn.Text:=FormatoNumeros(dbeNtaAbn.Text);
end;

procedure TFOtorPre.dbeCuotaInicialExit(Sender: TObject);
begin
   dbeCuotaInicial.Text:=FormatoNumeros(dbeCuotaInicial.Text);
end;

procedure TFOtorPre.dbeCapPagoRealExit(Sender: TObject);
begin
   dbeCapPagoReal.Text:=FormatoNumeros(dbeCapPagoReal.Text);
   dbeMonDisp.Text:=FormatoNumeros(FloatToStr(DM1.Valores(dbeCapPagoReal.Text)*42/100));
   dbeMtoOto.SetFocus;

end;

procedure TFOtorPre.dbeMtoDesemExit(Sender: TObject);
begin
   dbeMtoDesem.Text:=FormatoNumeros(dbeMtoDesem.Text);
end;

procedure TFOtorPre.dbeCuotasExit(Sender: TObject);
begin
   dbeCuotas.Text:=FormatoNumeros(dbeCuotas.Text);
end;



procedure TFOtorPre.EdtDesCreExit(Sender: TObject);
begin
 dbseAnoTalon.SetFocus;
end;

procedure TFOtorPre.dbeUTalonPagoExit(Sender: TObject);
begin
If DM1.Valores(dbeUTalonPago.Text)=0 Then
   //dbeUTalonPago.SetFocus
Else
   Begin
     dbeUTalonPago.Text:=FormatoNumeros(dbeUTalonPago.Text);
     dbeCapPagoReal.SetFocus;
   End;
end;

procedure TFOtorPre.dbsNumCuotasExit(Sender: TObject);
begin
 dbeCuotas.Text :=FormatFloat('###,###.#0',DM1.CalculaCuota(DM1.Valores(EdtInteres.Text),DM1.Valores(EdtFlat.Text),(DM1.Valores(dbeMtoOto.Text)-DM1.Valores(dbeCuotaInicial.Text)),StrToInt(FloatToStr(dbsNumCuotas.Value))));
 DBLkuCTipDes.SetFocus;


end;

procedure TFOtorPre.dbeUTalonPagoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TFOtorPre.dbeMtoOtoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TFOtorPre.dbeCuotaInicialKeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TFOtorPre.dbeCapPagoRealKeyPress(Sender: TObject; var Key: Char);
begin
  If Key In [' ','A'..'Z','a'..'z','°','|','!','"','#','$','%','&','/','(',')','=','?','\','¡','¿','@','¨','´','*','+','~','~','[',']','{','}','^','`','<','>',';',',',':','''','-','_'] Then
     Key :=#0;

end;

procedure TFOtorPre.DBLkuCTipDesChange(Sender: TObject);
begin
   If DM1.cdsTipDesem.Locate('TIPDESEID',VarArrayof([DBLkuCTipDes.Text]),[]) Then
      Begin
        EdtTipDes.Text  := DM1.cdsTipDesem.fieldbyname('TIPDESEABR').AsString ;
        If Trim(DBLkuCTipDes.Text) ='05' Then
           DBLkCDAgencias.Enabled := True
        Else
           Begin
              DBLkCDAgencias.Text := ''; EdtCodAgen.Text := ''; EdtDepGir.Text := '';
              DBLkCDAgencias.Enabled := False;
           End;
      End
   Else
      Begin
        if Length(DBLkuCTipDes.Text) <> 2 then
           Begin
              Beep;
              EdtTipDes.Text  :='';
              DBLkCDAgencias.Enabled := True;
           End;
      End

end;

procedure TFOtorPre.DBLCTipCobChange(Sender: TObject);
begin
   If DM1.cdsTransCre.Locate('FORPAGOID',VarArrayof([DBLCTipCob.Text]),[]) Then
        EdtTipCob.Text  := DM1.cdsTransCre.fieldbyname('FORPAGODES').AsString
   Else
      Begin
        if Length(DBLCTipCob.Text) <> 2 then
           Begin
              Beep;
              EdtTipCob.Text  :='';
           End;
      End

end;

//Inicio: DPP_201202_ASO
//Se quita la carga de imagen por FTP
{procedure TFOtorPre.CargaFoto(IdFoto: String);
var RemoteTxt, LocalTxt,xFtp:String;
    IniFile : TIniFile;
begin

 ImagAso.Visible := True; DM1.xFto:='N';
 IniFile:=TIniFile.Create('C:\SOLExes\SOLConf.ini'); xFtp:=IniFile.ReadString('FOTOS','FTP','');
 IDFTP1.Host := xFtp; IDFTP1.Port := 21; IDFTP1.ReadTimeout := 5000; IDFTP1.UserName := 'imagen'; IDFTP1.Password := 'imagen';
 Try
 IDFTP1.Connect;
 If Trim(IdFoto) <> '' then
     Begin
        Try
          RemoteTxt := '/data02/imagen/jpeg/JPEG'+copy(IdFoto,1,1)+'/'+IdFoto+'.jpg';
          LocalTxt  :=  'C:\SolExes\'+IdFoto+'.jpg';
          DeleteFile('C:\SolExes\'+IdFoto+'.jpg');
          IdFTP1.Get(RemoteTxt, LocalTxt, False);
          If DM1.xSgr='REP' Then
            fCronoPag.ppImage1.Picture.LoadFromFile(LocalTxt)
          Else If  DM1.xSgr='IDE' Then
             fIdentAso.ImagAso.Picture.LoadFromFile(LocalTxt)
          Else If  DM1.xSgr='CTR' Then
             FMantAsociado.ImagAso.Picture.LoadFromFile(LocalTxt)
          Else If  DM1.xSgr='SLC' Then
           //  fMstCre.ImagAso.Picture.LoadFromFile(LocalTxt)
          Else
            ImagAso.Picture.LoadFromFile(LocalTxt);


           ImagAso.Enabled:=True;  DM1.xFto:='S';
           SysUtils.deletefile(LocalTxt);
           BorraFotos;
        Except
          RemoteTxt := '/data02/imagen/jpeg/SINFOTO.jpg';
          LocalTxt  :=  'C:\SolExes\SINFOTO.Jpg';
          IdFTP1.Get(RemoteTxt, LocalTxt, False);
           If DM1.xSgr='REP' Then
              fCronoPag.ppImage1.Picture.LoadFromFile(LocalTxt)
           Else If  DM1.xSgr='IDE' Then
             fIdentAso.ImagAso.Picture.LoadFromFile(LocalTxt)
           Else If  DM1.xSgr='CTR' Then
             FMantAsociado.ImagAso.Picture.LoadFromFile(LocalTxt)
          Else If  DM1.xSgr='SLC' Then
            // fMstCre.ImagAso.Picture.LoadFromFile(LocalTxt)
           Else
              ImagAso.Picture.LoadFromFile(LocalTxt);

            ImagAso.Enabled:=False; DM1.xFto:='N';
            SysUtils.deletefile(LocalTxt);
            BorraFotos;

        End ;
     End
 Else
     Begin
         Try
           RemoteTxt := '/data02/imagen/jpeg/SINFOTO.jpg';
           LocalTxt  :=  'C:\SolExes\SINFOTO.Jpg';
           IdFTP1.Get(RemoteTxt, LocalTxt, False);
           If DM1.xSgr='REP' Then
              fCronoPag.ppImage1.Picture.LoadFromFile(LocalTxt)
           Else If  DM1.xSgr='IDE' Then
             fIdentAso.ImagAso.Picture.LoadFromFile(LocalTxt)
           Else If  DM1.xSgr='CTR' Then
             FMantAsociado.ImagAso.Picture.LoadFromFile(LocalTxt)
           Else If  DM1.xSgr='SLC' Then
            // fMstCre.ImagAso.Picture.LoadFromFile(LocalTxt)
           Else
              ImagAso.Picture.LoadFromFile(LocalTxt);

            ImagAso.Enabled:=False; DM1.xFto:='N';
            SysUtils.deletefile(LocalTxt);
            BorraFotos;
         Except


         End ;
     End;

 Except
     MessageDlg('Error al Intentar Conectar Al Servidor De Fotos (RS/6000) ...!', mtError, [mbOk], 0);
 End;
 idFTP1.Disconnect;



end;}
//FINAL: DPP_201202_ASO


procedure TFOtorPre.DBLkCDAgenciasChange(Sender: TObject);
begin
   If DM1.cdsAgencias.Locate('AGENBCODES',VarArrayof([DBLkCDAgencias.text]),[]) Then
      Begin
        EdtCodAgen.Text  := DM1.cdsAgencias.fieldbyname('AGENBCOID').AsString ;
        EdtDepGir.Text   := DM1.cdsAgencias.fieldbyname('DPTOID').AsString+'-'+DM1.cdsAgencias.fieldbyname('DPTODES').AsString ;
      End
   Else
      Begin
        if Length(DBLkCDAgencias.Text) =0 then
           Begin
              Beep;
              EdtCodAgen.Text  :='';
              EdtDepGir.Text   :='';
           End;
      End

end;

procedure TFOtorPre.z2bbtnAceptaClick(Sender: TObject);
Var xAplicar,xSaldo,xCuota:Currency;
    xAsoId,xCreDid,xfecCalculo,xTipPre,xfVenc,xTipos,xCondicion,xConsulta,xLocaliza,xTipFDes,xC_Abn,xPeriodo,xSQL:String;
    Year, Month, Day : Word;
    xEstAnt,xEstDes,xFecIni,xFecFin,xTipCre:String;
    xInteres,xFlat,xMonto,xCuoIni:Real;
    xFecPre,xFecDes : tDateTime;
    xNumCuo, Boton, xEdad :Integer;
begin
 xAsoId:= Trim(DM1.cdsAso.fieldbyname('ASOID').AsString);
 If (Trim(DM1.cdsAso.fieldbyname('ASOTIPID').AsString)='CE') And (Trim(DM1.cdsAso.fieldbyname('REGPENID').AsString)='02') Then
   Begin
      MessageDlg(' No Puede Aprobar Creditos a Cesantes con Regimen De Pensión 19990 ', mtError, [mbOk], 0);
      Exit;
   End;

 If DM1.xCnd='MF' Then
    Begin
      xCreDid:=Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString);
      xTipCre:=Copy(xCreDid,7,2);
      xNumCuo:=StrToInt(dbsModCuo.Text);
      xInteres:=DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat;  xFlat:=DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat; xMonto:=DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat; xCuoIni:=DM1.cdsSolicitud.FieldByName('CUOTAINI').AsFloat; xFecPre :=DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime;  xFecDes :=DM1.cdsSolicitud.FieldByName('CREFDES').AsDateTime;
      If (DM1.SaldoTotal(xAsoId, xCreDid) <> (DM1.CalculaCuota(xInteres,xFlat,xMonto-xCuoIni,DM1.cdsSolicitud.fieldbyname('CRENUMCUO').AsInteger)*DM1.cdsSolicitud.fieldbyname('CRENUMCUO').AsInteger)) Then
          Begin
            MessageDlg('El Saldo Total Del Cronograma De Pagos Ha Cambiado , Verifique..!', mtError, [mbOk], 0);
            z2bbtnAcepta.Enabled:=False;   z2bbtnCancelar.Enabled:=False;   dbsModCuo.Visible:= False;
            Z2sbtnParametros.Enabled:=True;  z2bbtnCrono.Enabled:=True;  z2bbtnNota.Enabled:=True;  fcSpeExt.Enabled:=True;  z2bbtnNuevo.Enabled:=True;  z2bbtnModifica.Enabled:=True;  z2bbtnAnula.Enabled:=True;  z2bbtnImprime.Enabled:=True; BitMstApo.Enabled:=True;
            Exit;
          End;
      Boton := Application.MessageBox ('Seguro De Cambiar El Numero De Cuotas Del Prestamo ','Creditos',MB_YESNO+MB_ICONQUESTION);
      If Boton = ID_YES Then
        Begin
        If Trim(DM1.RecuperaDatos('CRE110','TIPCREID',xTipCre,'PER_GRA'))>'0' Then
           Begin
              xFecIni:=Copy(DM1.IniFinCrono(DM1.FechaSys,xNumCuo,'S',xTipCre),1,8);
              xFecFin:=Copy(DM1.IniFinCrono(DM1.FechaSys,xNumCuo,'S',xTipCre),9,8);
           End
        Else
           Begin
               xFecIni:=Copy(DM1.IniFinCrono(DM1.FechaSys,xNumCuo,'N',xTipCre),1,8);
               xFecFin:=Copy(DM1.IniFinCrono(DM1.FechaSys,xNumCuo,'N',xTipCre),9,8);
            End;

         xSQL:='UPDATE CRE301 SET CREFINIPAG='+QuotedStr(xFecIni)+',CREFFINPAG='+QuotedStr(xFecFin)+',CRENUMCUO='+IntToStr(xNumCuo)+',CRECUOTA='+FloattoStr(DM1.CalculaCuota(xInteres,xFlat,xMonto-xCuoIni,xNumCuo))+', CRESDOACT='+FloatToStr(DM1.CalculaCuota(xInteres,xFlat,xMonto-xCuoIni,xNumCuo)*xNumCuo)+' WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid) ;
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         xSQL:='DELETE FROM CRE302 WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid) ;
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         DM1.GnrCronograma(xAsoid ,xCreDid ,xInteres ,xFlat ,xMonto-xCuoIni ,xFecDes ,xNumCuo);
         DM1.CrgDatos;
         MessageDlg('El Cambio De Numero De Cuotas Fue Exitoso..!', mtInformation, [mbOk], 0);
         z2bbtnAcepta.Enabled:=False;   z2bbtnCancelar.Enabled:=False;   dbsModCuo.Visible:= False;
         Z2sbtnParametros.Enabled:=True;  z2bbtnCrono.Enabled:=True;  z2bbtnNota.Enabled:=True;  fcSpeExt.Enabled:=True;  z2bbtnNuevo.Enabled:=True;  z2bbtnModifica.Enabled:=True;  z2bbtnAnula.Enabled:=True;  z2bbtnImprime.Enabled:=True;  BitMstApo.Enabled:=True;
         Exit;
        End
      Else
        Begin
         Exit;
        End;

    End;

 If StrToInt(Copy(DateToStr(DM1.FechaSys),4,2))=12 Then
     Begin
        xPeriodo:=IntToStr(StrToInt(Copy(DateToStr(DM1.FechaSys),7,4))+1)+'01';
     End
 Else
     Begin
        xPeriodo:= IntToStr(StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)))+Format('%.2d',[StrToInt(Copy(DateToStr(DM1.FechaSys),4,2))+1]);
     End;


  If Length(Trim(EdtDesCre.Text))=0 Then
         Begin
           MessageDlg(' Seleccione Un Tipo De Credito Catalogado ', mtError,[mbOk],0);
           Exit;
         End;

  If (DM1.TipDes(Trim(dblTipCre.Text))='P') Then
     Begin
        If Busca301(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString))='N' Then
           Begin
             MessageDlg('Existe Prestamos Aprobados y No Calendarizados...!', mtError, [mbOk], 0);
             Exit;
           End;
     End;


    If DM1.Valores(dbeMtoOto.Text)=0 Then
           Begin
             MessageDlg(' El Monto Otorgado No Puede Ser Cero ', mtError,[mbOk],0);
             Exit;
           End;

    If Length(Trim(dbsNumCuotas.Text))=0 Then
           Begin
             MessageDlg(' El Numero De Cuotas No Puede Ser un Campo Vacio ', mtError,[mbOk],0);
             Exit;
           End;


    If DM1.Valores(dbeUTalonPago.Text)=0 Then
           Begin
             MessageDlg(' El Monto De El Ultimo Talon De Pago No Puede Ser Cero ', mtError,[mbOk],0);
             Exit;
           End;

    If DM1.Valores(dbeCapPagoReal.Text)=0 Then
           Begin
             MessageDlg(' El Monto De La Capacidad De Pago No Puede Ser Cero ', mtError,[mbOk],0);
             Exit;
           End;

    If DM1.Valores(dbeUTalonPago.Text)<DM1.Valores(dbeCapPagoReal.Text) Then
           Begin
             MessageDlg(' Debe Ingresar La Capacidad de Pago Real  (Monto De El Ultimo Talón Menos Descuentos)  ', mtError,[mbOk],0);
             Exit;
           End;


    If (DM1.Valores(dbeMtoOto.Text)< DM1.Valores(EdtMonMin.Text)) Or (DM1.Valores(dbeMtoOto.Text)> DM1.Valores(EdtMonMax.Text))  Then
         Begin
           MessageDlg(' Monto Solicitado No Catalogado En Los Parametros ', mtError,[mbOk],0);
           Exit;
         End;

      If DM1.Valores(dbeMtoDesem.Text) <= 0  Then
         Begin
           MessageDlg(' Monto Solicitado No Puede Ser Menor Al Saldo ', mtError,[mbOk],0);
           Exit;
         End;

      If DM1.Valores(dbeNtaAbn.Text) < 0  Then
         Begin
           MessageDlg(' Monto Calculado Para El Abono Es Negativo, Verifique Cronograma De Pagos , Consulte Con Sistemas ', mtError,[mbOk],0);
           Exit;
         End;


      If (CalSalCob(xAsoId,xPeriodo)+DM1.Valores(dbeCuotas.Text))>DM1.Valores(dbeMonDisp.Text) Then
         Begin;
           MessageDlg(' La Capacidad De Pago Disponible No Cubre El Monto Total Por Descontar '+#13+#13+' Por Cobrar : S/. '+FormatFloat('###,###.#0',(CalSalCob(xAsoId,xPeriodo)+DM1.Valores(dbeCuotas.Text)))+#13+#13+' Disponibilidad : S/. '+FormatFloat('###,###.#0',DM1.Valores(dbeMonDisp.Text)) , mtError,[mbOk],0);
           Exit;
         End;

      If Length(Trim(EdtTipDes.Text))=0 Then
         Begin
           MessageDlg(' Seleccione Una Forma De Desembolso Catalogada ', mtError,[mbOk],0);
           Exit;
         End;


      If Length(Trim(EdtTipCob.Text))=0 Then
         Begin
           MessageDlg(' Seleccione Una Forma De Cobranza Catalogada ', mtError,[mbOk],0);
           Exit;
         End;

      If Trim(DBLkuCTipDes.Text)='05' Then
        If Length(Trim(DBLkCDAgencias.Text))=0 Then
           Begin
             MessageDlg(' Seleccione Un Lugar De Giro Catalogado ', mtError,[mbOk],0);
             Exit;
           End;

       If Trim(DM1.RecuperaDatos('CRE110','TIPCREID',Trim(dblTipCre.Text),'PER_GRA'))='0' Then
          Begin
           If (DM1.TipDes(Trim(dblTipCre.Text))='S')  AND (Trim(DBLkuCTipDes.Text)='04') Then
               Begin
                 MessageDlg(' No Se Puede Desembolsar En Efectivo Un Servicio ', mtError,[mbOk],0);
                 Exit;
               End;
          End;

       If DM1.TipDes(Trim(dblTipCre.Text))<>DM1.RecuperaDatos('CRE104','TIPDESEID',Trim(DBLkuCTipDes.Text),'TIP_DES') Then
          Begin
            MessageDlg('El Tipo De Desembolso No Esta Catalagado Para Este Tipo De Prestamo..<<< VERIFIQUE >>> ', mtError,[mbOk],0);
            Exit;
          End;

       If DM1.Valores(dbeCuotas.Text)<=0 Then
          Begin
            MessageDlg(' El Monto De La Cuota No Puede Ser Cero ó Menor Que Cero ', mtError,[mbOk],0);
            Exit;
          End;


      If ValdaAsociado(DM1.cdsAso.fieldbyname('ASOID').AsString, DM1.cdsAso.fieldbyname('ASOTIPID').AsString, Trim(DBLkuCTipDes.Text))='N' Then Exit;


      If Trim(DM1.RecuperaDatos('CRE110','TIPCREID',Trim(dblTipCre.Text),'ASOTIPID'))='CE' Then
         Begin
            xEdad:=StrToInt(FloatToStrF(Yearspan(DM1.FechaSys,DM1.cdsAso.fieldbyname('ASOFECNAC').AsDateTime),ffFixed,3,0));
            If xEdad > 73 Then
               Begin
                 MessageDlg(' Verifique, Asociado Excede El Limite De Edad ', mtError,[mbOk],0);
                 Exit;
               End;
          End;

      If Trim(EdtTipAso.Text)='DO' Then
         Begin
         If DM1.Valores(dbeMtoOto.Text) > DM1.Valores(DM1.CrgDescrip('IDCLF='+QuotedStr(Trim(xClfAso)),'CLF000','MTOCLF'))  Then
            Begin
               MessageDlg('Monto Otorgado Es Mayor Que Monto Catalogado Segun Su Evaluación de Record Crediticio..!'+#13+#13+'Cualquier Duda ó Consulta, Comunicarse Con El Equipo De Creditos (Sede Central)  ', mtInformation,[mbOk],0);
               Exit;
            End;
          End;

      If SaldoSrb(DM1.cdsAso.FieldByName('ASOID').AsString) > 0 Then
         Begin
            If Copy(DM1.CrgArea(DM1.wUsuario),6,2)<'02' Then
               Begin
                 z2bbtnCancelar.OnClick(z2bbtnCancelar);
                 MessageDlg('Usuario No Autorizado A Otorgar Creditos Preferentes..! ', mtError,[mbOk],0);
                 Exit;
               End;
            If Length(Trim(DBLUsuarios.Text))=0 Then
               Begin
                 PageControl1.OnChange(PageControl1);
                 PageControl1.ActivePageIndex:=2;
                 MessageDlg('Verifique, No Se Asigno Responsable ..! ', mtError,[mbOk],0);
                 Exit;
               End;

         End;

If MessageDlg('¿ Esta Seguro De Grabar El Nuevo Prestamo ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
   Begin
   If DM1.Valores(dbeMtoOto.Text)<=DM1.Valores(dbeNtaAbn.Text) Then
      Begin
        MessageDlg(' Monto Solicitado No Puede Ser Menor Al Saldo Pendiente', mtError,[mbOk], 0 );
        Exit;
      End
   Else
      Begin
        xAsoId  := DM1.cdsAso.fieldbyname('ASOID').AsString;
        xfecCalculo  := Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
        xAplicar:= DM1.Valores(dbeNtaAbn.Text);
        If DM1.TipDes(dblTipCre.Text)='P' Then
           xSaldo := DM1.CalSaldo(xAsoid,xfecCalculo)
        Else  xSaldo := 0 ;
        If xSaldo <> xAplicar Then
           Begin
             MessageDlg(' Verifique El Saldo Se Ha Modificado ', mtError,[mbOk], 0);
             Exit;
           End
        Else
           Begin
              Screen.Cursor:=crHourGlass;
              DM1.xGrabaExc:='N';
              DecodeDate(DM1.FechaSys, Year, Month, Day);
              xTipos:=Trim(DM1.xOfiDes)+Trim(IntToStr(Year))+Trim(dblTipCre.Text);
              xCondicion:='CREAREA='+QuotedStr('CRE')+' And CORREANO='+QuotedStr(Trim(IntToStr(Year)))+' And SubStr(CREDID,1,8)='+QuotedStr(xTipos)+' And TIPO='+QuotedStr('1') ;
              xCreditoId:=GrbCorrelativo(xCondicion,xTipos);
              If Length(Trim(xCreditoId))=0 Then
              Begin
                Screen.Cursor:=crDefault;
                MessageDlg(' <<<  A T E N C I O N  >>>   NO SE GENERO CORRELATIVO COMUNIQUESE CON SISTEMAS !!!!!  ', mtError,[mbOk],0);
                Exit;
              End;
              xLocaliza:='CREAREA='+QuotedStr('CRE')+' AND CORREANO='+QuotedStr(Trim(IntToStr(Year)))+' AND TIPO='+QuotedStr('3');
              xNroPagare:=GrbCorrelatPagare(xLocaliza);
              If xAplicar=0 Then

                 Begin
                    xNroAbono:='';
                    GrabaPrestamo;
                 End
              Else
                 Begin
                    xConsulta:='CREAREA='+QuotedStr('CRE')+' AND CORREANO='+QuotedStr(Trim(IntToStr(Year)))+' AND TIPO='+QuotedStr('2');
                    xNroAbono:=GrbCorrelatAbn(xConsulta);


                    DM1.cdsParam.Close;
                    DM1.cdsParam.DataRequest('SELECT ASOID, ASOCODMOD, ASOCODPAGO, TIPCREID, TMONID, CREANO, CREMES, CRESALDO,' +
                                   'CRECUOTA,CREMTO, CREAMORT, CREINTERES, CREFLAT, CREFVEN, CREFPAG, USEID, UPROID, DPTOID,   ' +
                                   'UPAGOID, BANCOID, CCBCOID, NROOPE, FOPERAC, TCAMBIO, CREMTOCOB, CREMONLOC, CREMONEXT,      ' +
                                   'USUARIO, FREG, HREG, FORPAGOID, CREFDEV, CREFRECL, ASOAPENOM, AGENBCOID, CRECAPITAL,       ' +
                                   'CREMTOINT, CREMTOFLAT, CRENEWID, FNABONO, CREDID, CRETCALID, TIPDESEID, TMONABR,           ' +
                                   'CRETCALABR, TIPDESABR, TIPCREABR, FORPAGOABR, CIAID, CREESTID, CREESTADO,FLGINT,                  ' +
                                   'CREMTOGADM, ASOCODAUX, NRONABO, CIUDID, FLGPAG,CREDIDNABO, CREMTOEXC, AREAID,CREDOCPAG     ' +
                                   'FROM CRE302 Where ASOID ='+QuotedStr(Trim(xAsoId))+' And  CREESTID IN (''02'',''11'',''27'') Order By CREDID,CRECUOTA') ;
                    DM1.cdsParam.Open;

                    DM1.cdsDLabo.Close;
                    DM1.cdsDLabo.DataRequest('SELECT CIAID,ASOID,ASOCODMOD,ASOCODAUX,USEID,TIPCREID,CREDID,CRECUOTA, ' +
                                                     'CREMONLOC,CREMONEXT,CREMTOCOB,CREFPAG,TMONID,CREAMORT,CREINTERES,FOPERAC,   ' +
                                                     'CREFLAT,TCAMBIO,USUARIO,FREG,UPROID,DPTOID,UPAGOID,BANCOID,CCBCOID,NROOPE,   ' +
                                                     'ASOAPENOM,CIUDID,CREOBS,CREANO,CREMES,AREAID,FORPAGABR,TRANSINTID,CREDOCPAG,  ' +
                                                     'FORPAGID,CREESTID,CREESTADO,NRONABO,CREESTANT,CREESTANTDES,CREMTOCUO,CREMTOEXC,HREG,PERCONTA,CNTANOMM,TIPOCONT   ' +
                                                     'FROM CRE310 Where ASOID ='+QuotedStr(Trim(xAsoId)));

                    DM1.cdsDLabo.Open;
                    xCuota:=0;
                    DM1.cdsParam.First;
                    While Not DM1.cdsParam.Eof do
                    Begin
                       If xAplicar>0 Then
                          Begin
                            xTipPre:=DM1.TipDes(Trim(DM1.cdsParam.fieldbyname('TIPCREID').AsString));
                            If xTipPre='S' Then
                               xC_Abn:=DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoid))+' AND CREDID='+QuotedStr(Trim(DM1.cdsParam.fieldbyname('CREDID').AsString)),'CRE301','C_ABN');
                            If Length(Trim(xC_Abn))>0 Then xTipPre:='P';
                            If xTipPre<>'P' Then
                            Else
                               Begin
                                 xfVenc:= Trim(DM1.cdsParam.fieldbyname('CREANO').AsString + DM1.cdsParam.fieldbyname('CREMES').AsString);
                                 xEstAnt:=Trim(DM1.cdsParam.fieldbyname('CREESTID').AsString);
                                 xEstDes:=Trim(DM1.cdsParam.fieldbyname('CREESTADO').AsString);
                                 If xfVenc > xFecCalCulo Then // ANTICIPADA
                                    Begin
                                      xCuota:= (DM1.cdsParam.fieldbyname('CREAMORT').AsCurrency + DM1.cdsParam.fieldbyname('CREFLAT').AsCurrency)-DM1.cdsParam.fieldbyname('CREMTOCOB').AsCurrency;
                                      If xCuota > xAplicar Then
                                         Begin
                                         End
                                      Else
                                         Begin
                                         End;
                                    End
                                 Else
                                    Begin
                                      xCuota:= (DM1.cdsParam.fieldbyname('CREMTO').AsCurrency - DM1.cdsParam.fieldbyname('CREMTOCOB').AsCurrency);
                                      If xCuota > xAplicar Then
                                         Begin
                                         End
                                      Else
                                         Begin
                                         End;

                                    End;
                               End;
                          End;
                          xAplicar:=xAplicar - xCuota ;
                          DM1.cdsParam.Next;
                    End;
                    DM1.cdsParam.ApplyUpdates(0) ; DM1.cdsDLabo.ApplyUpdates(0);
                    DM1.cdsParam.Close;  DM1.cdsDLabo.Close;
                    GrabaPrestamo;
                    DM1.ActSaldoPrest(xAsoId);
                 End;

              CrgPrestamos;
              //agregado 18/02/09
              If Trim(EdtTipAso.Text)='DO' Then
              Begin
              xAsoId:=Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
              xClfAso:=AsoClfPen(xAsoId,Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2))+AsoClfCan(xAsoId);
              pnlCalificacion.Visible:=True;
                Case StrtoInt(DM1.RecuperaDatos('CLF000','IDCLF',Trim(xClfAso),'IMAGE')) Of
                   1:Begin Img01.Visible:=True; Img02.Visible:=False; Img03.Visible:=False; Img04.Visible:=False; End;
                   2:Begin Img01.Visible:=False; Img02.Visible:=True; Img03.Visible:=False; Img04.Visible:=False; End;
                   3:Begin Img01.Visible:=False; Img02.Visible:=False; Img03.Visible:=True; Img04.Visible:=False; End;
                   4:Begin Img01.Visible:=False; Img02.Visible:=False; Img03.Visible:=False; Img04.Visible:=True; End;
                 End;
              End;
              //agregado
              DM1.cdsAbonoCreditos.Close;
              Screen.Cursor:=crDefault;
              dtgNotaAbono.Visible:=False;
              PageControl1.ActivePageIndex:=0;
              MessageDlg('Prestamos Se Grabo Con Exito    ...Sistemas !!!!! ', mtInformation,[mbOk],0);

           End;
      End;
      z2sbtnParametros.Enabled := True ;
      z2bbtnNuevo.Enabled := True ;
      z2bbtnAnula.Enabled := True ;
      z2bbtnModifica.Enabled := True;
      fcSpeExt.Enabled := True;
      z2bbtnImprime.Enabled := True ;
      z2bbtnCrono.Enabled := True ;
      z2bbtnNota.Enabled := True ;
      z2bbtnAcepta.Enabled := False;
      z2bbtnCancelar.Enabled := False;
      z2bbtnSalir.Enabled := True;
      BitMstApo.Enabled := True;
      LimPiaOtor;
   End;
end;

procedure TFOtorPre.LimPiaOtor;
begin
dbeUTalonPago.Text:=''; dbeMtoOto.Text:='';dbeCuotaInicial.Text:='';dbeCapPagoReal.Text:='';
dbeNtaAbn.Text:=''; dbeMtoDesem.Text:='' ; dblTipCre.Text := '' ; DBLkuCTipDes.Text:=''; DBLkCDAgencias.Text := '';
DBLCTipCob.Text := ''; EdtTipDes.Text := ''; EdtTipCob.Text := ''; dbeCuotas.Text := '' ; dbsNumCuotas.Text := ''; dbseAnoTalon.Text:=''; dbseMesTalon.Text:='';
EdtDesCre.Text  :=''; EdtInteres.Text := ''; EdtFlat.Text := ''; EdtMonMin.Text := ''; EdtCuoMin.Text := '';
EdtMonMax.Text := ''; EdtCuoMax.Text := ''; DBLkCDAgencias.Text := ''; EdtCodAgen.Text := ''; EdtDepGir.Text := ''; dbeMonDisp.Text :='';
z2bbtnNuevo.SetFocus;
grpDatos.Enabled:=True;
grpPrest.Enabled:=True;
gpbOtorPre.Enabled:=False;
end;

procedure TFOtorPre.z2bbtnNotaClick(Sender: TObject);
var xSQL,xTipPre,xAsoId,xCreDid:String;
begin
   If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
       Exit;
      End;


   If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='SIS') Then
   Else
      Begin
         If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='CRE') Then
         Else
             Begin
               MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
               Exit;
             End;
      End;
  xAsoId  := DM1.cdsSolicitud.fieldbyname('ASOID').AsString ;
  xCreDid := DM1.cdsSolicitud.fieldbyname('CREDID').AsString ;
  xTipPre:=DM1.TipDes(Trim(DM1.cdsSolicitud.fieldbyname('TIPCREID').AsString));
  If xTipPre='S' Then
     Begin
     If MessageDlg('¿Esta Seguro De Cambiar El Estado De SERVICIO POR DINERARIO?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
        Begin
          xSQL:='UPDATE CRE301 SET C_ABN=''S'' WHERE ASOID ='+QuotedStr(Trim(xAsoId))+' And CREDID='+QuotedStr(Trim(xCreDid));
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        End;
     End
  Else
        MessageDlg(' PRESTAMO ES DINERARIO SERA CONSIDERADO EN EL ABONO', mtInformation ,[mbOk],0);

End;

procedure TFOtorPre.DBLCTipCobExit(Sender: TObject);
begin
  z2bbtnAcepta.SetFocus;
end;

procedure TFOtorPre.z2bbtnCancelarClick(Sender: TObject);
begin
 If DM1.xCnd='MF' Then  dbsModCuo.Visible:=False;
  z2sbtnParametros.Enabled := True ;
  z2bbtnNuevo.Enabled := True ;
  z2bbtnAnula.Enabled := True ;
  BitMstApo.Enabled := True ;
  z2bbtnModifica.Enabled := True;
  fcSpeExt.Enabled := True;
  z2bbtnImprime.Enabled := True ;
  z2bbtnSalir.Enabled := True;
  z2bbtnCrono.Enabled := True ;
  z2bbtnNota.Enabled := True ;
  z2bbtnAcepta.Enabled := False;
  z2bbtnCancelar.Enabled := False;
  DM1.cdsAbonoCreditos.Close;
  dtgNotaAbono.Visible:=False;
  PageControl1.ActivePageIndex:=0;
  LimPiaOtor;
end;

function TFOtorPre.GrbCorrelatAbn(xConsulta: String): String;
Var xCorAbn:Integer;
    xResAbn:String;
begin
DM1.cdsCarta.Close;
DM1.cdsCarta.DataRequest('SELECT CREAREA,CORREANO,NRONABO,TIPO FROM CRE206 WHERE '+xConsulta);
DM1.cdsCarta.Open;
If DM1.cdsCarta.RecordCount=1 Then
   Begin
     xCorAbn:=StrToInt(DM1.cdsCarta.fieldbyname('NRONABO').AsString) + 1;
     xResAbn:=Format('%.10d',[xCorAbn]);
     DM1.cdsCarta.Edit;
     DM1.cdsCarta.fieldbyname('NRONABO').AsString:=xResAbn;
     DM1.cdsCarta.ApplyUpdates(0);
     Result:=xResAbn;
   End;
DM1.cdsCarta.Close;


end;

function TFOtorPre.GrbCorrelativo(xCondicion, xTipos: String): String;
var xCorrelativo:Integer;
    xCreDid,xSQL:String;
begin
xSQL:='SELECT CREAREA,CORREANO,CREDID,TIPO FROM CRE206 WHERE '+xCondicion;
DM1.cdsCarta.Close; DM1.cdsCarta.DataRequest(xSQL); DM1.cdsCarta.Open;
If DM1.cdsCarta.RecordCount=1 Then
   Begin
     xCorrelativo:=StrToInt(Copy(DM1.cdsCarta.fieldbyname('CREDID').AsString,9,7)) + 1;
     xCreDid:=xTipos+Format('%.7d',[xCorrelativo]);
     DM1.cdsCarta.Edit;  DM1.cdsCarta.fieldbyname('CREDID').AsString:=xCreDid; DM1.cdsCarta.ApplyUpdates(0);
     DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL);  DM1.cdsQry.Open;
     If Trim(xCreDid)>Trim(DM1.cdsQry.fieldbyname('CREDID').AsString) Then xCredid:='';
     DM1.cdsQry.Close;
     Result:=xCredid;
   End;
DM1.cdsCarta.Close;
end;

function TFOtorPre.GrbCorrelatPagare(xLocaliza: String): String;
Var xCorPag:Integer;
    xResPag:String;
begin
DM1.cdsCarta.Close;
DM1.cdsCarta.DataRequest('SELECT CREAREA,CORREANO,NROPAGARE,TIPO FROM CRE206 WHERE '+xLocaliza);
DM1.cdsCarta.Open;
If DM1.cdsCarta.RecordCount=1 Then
   Begin
     xCorPag:=StrToInt(DM1.cdsCarta.fieldbyname('NROPAGARE').AsString) + 1;
     xResPag:='00000'+Format('%.15d',[xCorPag]);
     DM1.cdsCarta.Edit;
     DM1.cdsCarta.fieldbyname('NROPAGARE').AsString:=xResPag;
     DM1.cdsCarta.ApplyUpdates(0);
     Result:=xResPag;
   End;
DM1.cdsCarta.Close;
end;

procedure TFOtorPre.GrabaPrestamo;
Var xAsoId,xPeriodo,xSQL,xPft :String;
    Year, Month, Day : Word;
begin
xAsoId  := DM1.cdsAso.fieldbyname('ASOID').AsString;
If StrToInt(Copy(DateToStr(DM1.FechaSys),4,2))=12 Then
     Begin
        xPeriodo:=IntToStr(StrToInt(Copy(DateToStr(DM1.FechaSys),7,4))+1)+'01';
     End
Else
     Begin
        xPeriodo:= IntToStr(StrToInt(Copy(DateToStr(DM1.FechaSys),7,4)))+Format('%.2d',[StrToInt(Copy(DateToStr(DM1.FechaSys),4,2))+1]);
     End;

DM1.cdsCreditos.Close;
DM1.cdsCreditos.DataRequest('SELECT TIPCREID,ASOID,ASOCODMOD,ASOCODAUX,ASOCODPAGO,ASOAPENOM,USEID,'+
                                  'CREFOTORG,CREMTOSOL,CREMTOOTOR,CREMTOGIR,CREMTONABO,CRECAPPGO,'+
                                  'CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,CRELUGGIRO,AGENBANCOID,'+
                                  'CREESTID,DPTOGIRO,LISTAABR,CUOTAINI,NRONABO,CRECAPLIQ, '+
                                  'CREESTADO,CREMTOPAG,CRESDOACT,CREMTOTAL,CRESALDOT,BANCOID,    '+
                                  'CRENUMCTA,FORPAGOID,TIPCREDES,CREANOMES,CRETCALID,TIPDESEID,  '+
                                  'USUARIO,LISTAID,ASOTIPID,ASODNI,OFDESID,CALIFICAID,APRUEBAID, '+
                                  'CUOTAINI,TMONID,UPAGOID,UPROID,DPTOID,FREG,HREG,TMONABR,CREDID,        '+
                                  'NROPAGARE,CREFINIPAG,CREFFINPAG,NROAUTDES,CREFDES,CREMTODEP,CIAID,CRESUMCUO FROM CRE301 WHERE ASOID ='+QuotedStr(Trim(xAsoId)));
DM1.cdsCreditos.Open;
DM1.cdsCreditos.Insert;
DM1.cdsCreditos.fieldbyname('TIPCREID').AsString := Trim(dblTipCre.Text) ;
DM1.cdsCreditos.fieldbyname('ASOID').AsString := xAsoid;
DM1.cdsCreditos.fieldbyname('CIAID').AsString := '02';
DM1.cdsCreditos.fieldbyname('ASOCODMOD').AsString := DM1.cdsAso.fieldbyname('ASOCODMOD').AsString;
DM1.cdsCreditos.fieldbyname('ASOCODAUX').AsString := DM1.cdsAso.fieldbyname('ASOCODAUX').AsString;
DM1.cdsCreditos.fieldbyname('ASOCODPAGO').AsString := DM1.cdsAso.fieldbyname('ASOCODPAGO').AsString;
DM1.cdsCreditos.fieldbyname('ASOAPENOM').AsString := DM1.cdsAso.fieldbyname('ASOAPENOMDNI').AsString;
DM1.cdsCreditos.fieldbyname('USEID').AsString := DM1.cdsAso.fieldbyname('USEID').AsString;
DM1.cdsCreditos.fieldbyname('NRONABO').AsString := xNroAbono;
DM1.cdsCreditos.fieldbyname('CREFOTORG').AsDateTime:=DM1.FechaSys;
DM1.cdsCreditos.fieldbyname('CREMTOSOL').AsFloat :=  DM1.Valores(dbeMtoOto.Text) ;
DM1.cdsCreditos.fieldbyname('CREMTOOTOR').AsFloat := DM1.Valores(dbeMtoOto.Text) ;
DM1.cdsCreditos.fieldbyname('CREMTOGIR').AsFloat :=  DM1.Valores(dbeMtoDesem.Text);
If SaldoSrb(DM1.cdsAso.FieldByName('ASOID').AsString) > 0 Then
   DM1.cdsCreditos.fieldbyname('CREMTODEP').AsFloat :=  DM1.Valores(lblMtoPre.Caption);
DM1.cdsCreditos.fieldbyname('CREMTONABO').AsFloat := DM1.Valores(dbeNtaAbn.Text);
DM1.cdsCreditos.fieldbyname('CRECAPPGO').AsFloat := DM1.Valores(dbeUTalonPago.Text) ;
DM1.cdsCreditos.fieldbyname('CRECAPLIQ').AsFloat := DM1.Valores(dbeCapPagoReal.Text) ;
DM1.cdsCreditos.fieldbyname('CREINTERES').AsFloat := DM1.Valores(EdtInteres.Text);
DM1.cdsCreditos.fieldbyname('CREDFLAT').AsFloat := DM1.Valores(edtFlat.Text);
DM1.cdsCreditos.fieldbyname('CRECUOTA').AsFloat := DM1.Valores(dbeCuotas.Text);
DM1.cdsCreditos.fieldbyname('CRENUMCUO').AsInteger := StrToInt(FloatToStr(dbsNumCuotas.Value));
DM1.cdsCreditos.fieldbyname('CRELUGGIRO').AsString := Trim(DBLkCDAgencias.Text) ;
DM1.cdsCreditos.fieldbyname('AGENBANCOID').AsString := Trim(EdtCodAgen.Text) ;
DM1.cdsCreditos.fieldbyname('CUOTAINI').AsFloat := DM1.Valores(dbeCuotaInicial.Text) ;
DM1.cdsCreditos.fieldbyname('DPTOGIRO').AsString := Copy(Trim(EdtDepGir.Text),1,2) ;
{
If (Trim(DBLkuCTipDes.Text)='02') Or (Trim(DBLkuCTipDes.Text)='03') Or (Trim(DBLkuCTipDes.Text)='04')  Then // Efectivo ó Bazar
   Begin
      DM1.cdsCreditos.fieldbyname('CREESTID').AsString := '02';
      DM1.cdsCreditos.fieldbyname('CREESTADO').AsString := 'POR COBRAR';
      DM1.cdsCreditos.fieldbyname('CREFDES').AsDateTime:=DM1.FechaSys;
   End
Else
   Begin
      DM1.cdsCreditos.fieldbyname('CREESTID').AsString := '01';
      DM1.cdsCreditos.fieldbyname('CREESTADO').AsString := 'APROBADO';
   End;
}
DM1.cdsCreditos.fieldbyname('CREESTID').AsString := '01';
DM1.cdsCreditos.fieldbyname('CREESTADO').AsString := 'APROBADO';
If (Trim(DBLkuCTipDes.Text)='02') Or (Trim(DBLkuCTipDes.Text)='03') Or (Trim(DBLkuCTipDes.Text)='04') Or (Trim(DBLkuCTipDes.Text)='13') Then
     DM1.cdsCreditos.fieldbyname('CREFDES').AsDateTime:=DM1.FechaSys;


DM1.cdsCreditos.fieldbyname('CREMTOPAG').AsFloat  := 0;
DM1.cdsCreditos.fieldbyname('CRESDOACT').AsFloat  := DM1.Valores(dbeCuotas.Text)*StrToInt(FloatToStr(dbsNumCuotas.Value)) ;
DM1.cdsCreditos.fieldbyname('CREMTOTAL').AsFloat  := DM1.Valores(dbeMtoOto.Text);
DM1.cdsCreditos.fieldbyname('CRESALDOT').AsFloat  := 0;
If Trim(DBLCTipCob.Text)='18' Then
   DM1.cdsCreditos.fieldbyname('BANCOID').AsString := '04'
Else DM1.cdsCreditos.fieldbyname('BANCOID').AsString := '';


DM1.cdsCreditos.fieldbyname('CRENUMCTA').AsString := DM1.cdsAso.Fieldbyname('ASONCTA').AsString;
DM1.cdsCreditos.fieldbyname('FORPAGOID').AsString := Trim(DBLCTipCob.Text);
DM1.cdsCreditos.fieldbyname('TIPCREDES').AsString := Trim(EdtDesCre.Text) ;
DecodeDate(DM1.FechaSys, Year, Month, Day);
DM1.cdsCreditos.fieldbyname('CREANOMES').AsString := Trim(IntToStr(Year))+Format('%.2d',[Month]);
DM1.cdsCreditos.fieldbyname('CRETCALID').AsString := '01';
DM1.cdsCreditos.fieldbyname('TIPDESEID').AsString := Trim(DBLkuCTipDes.Text) ;
DM1.cdsCreditos.fieldbyname('USUARIO').AsString := DM1.wUsuario;
DM1.cdsCreditos.fieldbyname('ASOTIPID').AsString := DM1.cdsAso.fieldbyname('ASOTIPID').AsString;
DM1.cdsCreditos.fieldbyname('ASODNI').AsString :=   DM1.cdsAso.fieldbyname('ASODNI').AsString;
DM1.cdsCreditos.fieldbyname('OFDESID').AsString := DM1.xOfiDes;
DM1.cdsCreditos.fieldbyname('CALIFICAID').AsString := DM1.wUsuario;
DM1.cdsCreditos.fieldbyname('APRUEBAID').AsString := DM1.wUsuario;
DM1.cdsCreditos.fieldbyname('TMONID').AsString := 'N';
DM1.cdsCreditos.fieldbyname('CUOTAINI').AsFloat :=  DM1.Valores(dbeCuotaInicial.Text) ;
DM1.cdsCreditos.fieldbyname('UPAGOID').AsString := DM1.cdsAso.fieldbyname('UPAGOID').AsString;
DM1.cdsCreditos.fieldbyname('UPROID').AsString := DM1.cdsAso.fieldbyname('UPROID').AsString;
DM1.cdsCreditos.fieldbyname('DPTOID').AsString := DM1.cdsAso.fieldbyname('DPTOID').AsString;
DM1.cdsCreditos.fieldbyname('FREG').AsDateTime  := DM1.FechaSys;
DM1.cdsCreditos.fieldbyname('HREG').AsString  := DateToStr(DM1.FechaSys)+COPY(TimeToStr(time),1,9);
DM1.cdsCreditos.fieldbyname('TMONABR').AsString  := 'S/.';
DM1.cdsCreditos.fieldbyname('CREDID').AsString := xCreditoId;
DM1.cdsCreditos.fieldbyname('NROPAGARE').AsString := xNroPagare;
DM1.cdsCreditos.fieldbyname('CRESUMCUO').AsFloat := (CalSalCob(xAsoid, xPeriodo)+DM1.Valores(dbeCuotas.Text));

If Trim(DM1.RecuperaDatos('CRE110','TIPCREID',Trim(dblTipCre.Text),'PER_GRA'))>'0' Then
  Begin
    DM1.cdsCreditos.fieldbyname('CREFINIPAG').AsString := Copy(DM1.IniFinCrono(DM1.FechaSys,StrToInt(FloatToStr(dbsNumCuotas.Value)),'S',dblTipCre.Text),1,8);
    DM1.cdsCreditos.fieldbyname('CREFFINPAG').AsString := Copy(DM1.IniFinCrono(DM1.FechaSys,StrToInt(FloatToStr(dbsNumCuotas.Value)),'S',dblTipCre.Text),9,8);
  End
Else
  Begin
    DM1.cdsCreditos.fieldbyname('CREFINIPAG').AsString := Copy(DM1.IniFinCrono(DM1.FechaSys,StrToInt(FloatToStr(dbsNumCuotas.Value)),'N',dblTipCre.Text),1,8);
    DM1.cdsCreditos.fieldbyname('CREFFINPAG').AsString := Copy(DM1.IniFinCrono(DM1.FechaSys,StrToInt(FloatToStr(dbsNumCuotas.Value)),'N',dblTipCre.Text),9,8);
  End;
DM1.cdsCreditos.fieldbyname('NROAUTDES').AsString := xCreditoId;
DM1.cdsCreditos.ApplyUpdates(0);
DM1.cdsCreditos.Close;
If SaldoSrb(xAsoId) > 0 Then
   Begin
      If Trim(DBLkuCTipDes.Text)<>'02' Then
          xPft:=',NROTRAN='+QuotedStr(DM1.NroSrb('SRB000'));

      xSQL:='UPDATE SRB000 SET CREDID='+QuotedStr(xCreditoId)+',CREFOTORG='+QuotedStr(DateToStr(DM1.FechaSys))+', '+
            'DESEFE='+FloatToStr(DM1.Valores(dbeMtoDesem.Text))+',USRCRE='+QuotedStr(DM1.wUsuario)+',USRASIG='+QuotedStr(DBLUsuarios.Text)+xPft+' WHERE ASOID='+QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      lblPreferente.Font.Color:=clGreen;
      lblMtoPre.Font.Color:=clGreen;
      lblMtoPre.Caption:='0';
   End;

If (Trim(DBLkuCTipDes.Text)='02') Or (Trim(DBLkuCTipDes.Text)='03') Or (Trim(DBLkuCTipDes.Text)='04')  Then // Efectivo ó Bazar ó Preferente
   Begin
      //DM1.GnrCronograma(xAsoid ,xCreditoId ,DM1.Valores(EdtInteres.Text),DM1.Valores(edtFlat.Text),(DM1.Valores(dbeMtoOto.Text)-(DM1.Valores(dbeCuotaInicial.Text))),DM1.FechaSys,StrToInt(FloatToStr(dbsNumCuotas.Value)));
      If Trim(DBLkuCTipDes.Text)='04' Then // Graba En Caja Efectivo
         Begin
            GrabaEfectivo(xAsoId);
         End;
   End;

end;


procedure TFOtorPre.z2bbtnImprimeClick(Sender: TObject);
var xAsoId,xCredId,xFecPre,xCad,xSQL:String;
    xSaldo:Currency;
begin
   If dtgPrestamos.DataSource.DataSet.RecordCount =0 Then  Exit;
   xAsoId:=DM1.cdsSolicitud.FieldByName('ASOID').AsString;
   xCredId:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;
   xFecPre:=DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
   If Trim(DM1.RecuperaDatos('CRE110','TIPCREID',Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString),'PER_GRA'))>'0' Then
       Begin
         ppLblPeiodo.Visible:=True;
         ppLblPeiodo.Caption:='Con : '+DM1.RecuperaDatos('CRE110','TIPCREID',Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString),'PER_GRA')+' Meses De Periodo De Gracia';
       End
   Else
       Begin
         ppLblPeiodo.Visible:=False;
         ppLblPeiodo.Caption:='';
       End;

  If DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString='04' Then
     Begin
        ppLblDesEfe00.Visible:=True; ppLblDesEfe01.Visible:=True; ppLblDesEfe02.Visible:=True;
     End
  Else
     Begin
        ppLblDesEfe00.Visible:=False; ppLblDesEfe01.Visible:=False; ppLblDesEfe02.Visible:=False;
     End;

   lblFrmDesc.Caption :='<<< Forma Descuento  :  '+DM1.RecuperaDatos('COB101','FORPAGOID',Trim(DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString),'FORPAGODES')+' >>>';
   DM1.cdsListaCred.Close;
   xSQL:='SELECT A.ASOID,A.ASOCODMOD,A.ASOCODAUX,D.ASOAPENOMDNI ASOAPENOM,A.ASODNI,D.ASODIR,  ' +
                                      'A.CREDID,SUBSTR(A.CREDID,9,7) AS NUMCRED,A.ASOCODPAGO,A.USEID,E.USENOM,' +
                                      'A.UPROID,A.CREFOTORG,A.CREMTOOTOR,A.CREMTOGIR,A.CREINTERES,A.CREDFLAT,A.CRECUOTA,' +
                                      'A.CRENUMCUO,A.CRENUMCTA,A.CREMTONABO,A.CREFFINPAG,A.CREFINIPAG,A.TIPCREID, '+
                                      'B.TIPCREDES, A.TIPDESEID,F.TIPDESEABR,A.USUARIO,A.NRONABO,A.CUOTAINI,A.CRESDOACT ' +
                                     'FROM ' +
                                      '(SELECT ASOID,ASOCODMOD,ASOCODAUX,ASOCODPAGO,CREDID,USEID,UPROID,UPAGOID,CREFOTORG, '+
                                      'ASODNI,CREMTOOTOR,CREMTOGIR,CREINTERES,CREDFLAT,CRECUOTA,CRENUMCUO,CRENUMCTA,CREMTONABO, CREFFINPAG,'+
                                      'CREFINIPAG,TIPCREID,TIPDESEID,NRONABO,USUARIO,NVL(CUOTAINI,0) CUOTAINI,CRESDOACT FROM CRE301 ' +
                                      'WHERE ASOID='''+xAsoId+''') A, CRE110 B, APO201 D, APO101 E, CRE104 F  '+
                                      'WHERE (A.ASOID=D.ASOID ) AND (A.CREDID ='''+xCredId+''') AND '+
                                      '(A.TIPCREID = B.TIPCREID) AND (A.UPROID  = E.UPROID AND A.USEID  = E.USEID  AND A.UPAGOID = E.UPAGOID ) AND'+
                                      '(A.TIPDESEID  = F.TIPDESEID)';
   DM1.cdsListaCred.DataRequest(xSQL);
   DM1.cdsListaCred.Open;
   If DM1.cdsListaCred.FieldByName('CUOTAINI').AsFloat>0 Then
      ppLblCuoIni.Caption := 'Cuo.Inicial S/. : '+FormatFloat('###,###.#0',DM1.cdsListaCred.FieldByName('CUOTAINI').AsFloat)
   Else ppLblCuoIni.Caption := '';

   xSQL:='SELECT A.TIPCREID,B.TIPCREDES, A.CREDID,SUM(A.CREMTOCOB) AS SALDO FROM CRE310 A,CRE110 B WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND  FORPAGID=''15'' and CREFPAG =To_Date('+QuotedStr(Trim(xFecPre))+',''DD/MM/YYYY'') AND A.NRONABO='+QuotedStr(Trim(DM1.cdsListaCred.FieldByName('NRONABO').AsString))+' AND A.TIPCREID=B.TIPCREID Group By A.TIPCREID,B.TIPCREDES, A.CREDID Order By A.CREDID';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSQL);
   DM1.cdsQry1.Open;
   DM1.cdsQry1.First;
   ppMemo1.Lines.Text:='';
   xSaldo:=0;
   While Not DM1.cdsQry1.Eof Do
      Begin
         xSaldo:=xSaldo + DM1.cdsQry1.FieldByName('SALDO').AsFloat ;
         xCad:=Copy(DM1.cdsQry1.FieldByName('CREDID').AsString,9,7)+'-'+Copy(DM1.cdsQry1.FieldByName('CREDID').AsString,3,4)+'  '+DM1.StrSpace(Copy(DM1.cdsQry1.FieldByName('TIPCREDES').AsString,1,20),20)+'   S/. '+DM1.StrSpace(FormatFloat('###,###.00',DM1.cdsQry1.FieldByName('SALDO').AsFloat),15);
         ppMemo1.Lines.Add(xCad);
         DM1.cdsQry1.Next;
      End;
   ppMemo1.Lines.Add('');ppMemo1.Lines.Add('');
   ppMemo1.Lines.Add('Total                                S/. '+DM1.StrSpace(FormatFloat('###,###.00',xSaldo),15));
   DM1.cdsQry1.Close;
   ppLbelFecIni.Caption :=Copy(Trim(DM1.cdsListaCred.FieldByName('CREFINIPAG').AsString),7,2)+'/'+Copy(Trim(DM1.cdsListaCred.FieldByName('CREFINIPAG').AsString),5,2)+'/'+Copy(Trim(DM1.cdsListaCred.FieldByName('CREFINIPAG').AsString),1,4);
   ppLbelFecFin.Caption:=Copy(Trim(DM1.cdsListaCred.FieldByName('CREFFINPAG').AsString),7,2)+'/'+Copy(Trim(DM1.cdsListaCred.FieldByName('CREFFINPAG').AsString),5,2)+'/'+Copy(Trim(DM1.cdsListaCred.FieldByName('CREFFINPAG').AsString),1,4);
   ppr1.Print;
   ppr1.Cancel;
   DM1.cdsListaCred.Close;

end;

procedure TFOtorPre.z2bbtnAnulaClick(Sender: TObject);
var xAsoId,xCreDid:String;
begin
If dtgPrestamos.DataSource.DataSet.RecordCount = 0 Then Exit;
xAsoId:= DM1.cdsSolicitud.fieldbyname('ASOID').AsString;
xCreDid:= DM1.cdsSolicitud.fieldbyname('CREDID').AsString;

   If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
       Exit;
      End;


 If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='SIS') Then
 Else
    Begin
       If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='CRE') Then
       Else
           Begin
             MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
             Exit;
           End;
    End;
 If DM1.cdsSolicitud.FieldByName('CREESTID').AsString='21' Then
    Begin
      MessageDlg('PRESTAMO Ya Fue Cancelado!', mtError,[mbOk],0);
      Exit
    End;

 If DM1.cdsSolicitud.FieldByName('CREESTID').AsString='13' Then
    Begin
      MessageDlg('Ya Fue Anulado!', mtError,[mbOk],0);
      Exit
    End;

 If DM1.cdsSolicitud.FieldByName('CREESTID').AsString='04' Then
    Begin
      MessageDlg('Ya Fue Extornado!', mtError,[mbOk],0);
      Exit
    End;

 If DM1.cdsSolicitud.FieldByName('FLGCAJA').AsString='S' Then
    Begin
      MessageDlg('No Se Puede Anular Fue Pagado En Caja!', mtError,[mbOk],0);
      Exit
    End;

 If DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid)),'CRE301','FLGCAJA')='S' Then
    Begin
      MessageDlg('No Se Puede Anular Fue Pagado En Caja (Preferente)!', mtError,[mbOk],0);
      Exit;
    End;


 If Length(Trim(DM1.CrgDescrip('ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid)),'SRB000','USRCAJ')))>0 Then
    Begin
      MessageDlg('No Se Puede Anular Fue Pagado En Caja (Preferente)!', mtError,[mbOk],0);
      Exit;
    End;

 If Length(Trim(DM1.cdsSolicitud.FieldByName('NROFICIO').AsString)) > 0 Then
    Begin
      MessageDlg('No Se Puede Anular Tiene Numero De Oficio!', mtError,[mbOk],0);
      Exit
    End;
 If Busca310(xAsoId, xCreDid)='S' Then
    Begin
      MessageDlg('No Se Puede Anular Tiene Pagos Efectuados!', mtError,[mbOk],0);
      Exit
    End;


    If MessageDlg('¿ Esta Seguro De Anular Este Prestamo ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
       Begin
          DM1.xSgr:='ANU';
       End;

end;

function TFOtorPre.Busca310(xAsoId, xCreDid: String): String;
begin
DM1.cdsQry4.Close;
DM1.cdsQry4.DataRequest('SELECT ASOID,CREDID,CREESTID FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' AND CREESTID<>''13'' ');
DM1.cdsQry4.Open;
If DM1.cdsQry4.RecordCount > 0 Then
   Result:='S'
Else
   Result:='N';

 DM1.cdsQry4.Close;



end;

procedure TFOtorPre.AnulaAct(xAsoId, xCreDid, xCnd: String);
var xSQL:String;
begin
DM1.cdsCreditoCab.Close;
DM1.cdsCreditoCab.DataRequest('SELECT ASOID,CREDID,CREESTID,CREESTADO,CRESDOACT,CREMENOBS,CREFANUL,USERANUL FROM CRE301 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))) ;
DM1.cdsCreditoCab.Open;
If DM1.cdsCreditoCab.RecordCount = 1 Then
   Begin
     DM1.cdsCreditoCab.Edit;
     If xCnd='ANU' Then
        Begin
          DM1.cdsCreditoCab.FieldByName('CREESTID').AsString := '13';
          DM1.cdsCreditoCab.FieldByName('CREESTADO').AsString := 'ANULADO';
        End
     Else
        Begin
          DM1.cdsCreditoCab.FieldByName('CREESTID').AsString := '04';
          DM1.cdsCreditoCab.FieldByName('CREESTADO').AsString := 'EXTORNADO';
        End;
        DM1.cdsCreditoCab.FieldByName('CRESDOACT').AsFloat := 0 ;

        DM1.cdsCreditoCab.FieldByName('USERANUL').AsString := DM1.wUsuario;
        DM1.cdsCreditoCab.FieldByName('CREFANUL').AsDateTime := DM1.FechaSys;
        DM1.cdsCreditoCab.ApplyUpdates(0);
   End;
DM1.cdsCreditoCab.Close;
DM1.cdsCreditoCab.DataRequest('SELECT ASOID,CREDID,CREESTID,CREESTADO,CRESDOACT FROM CRE303 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))) ;
DM1.cdsCreditoCab.Open;
If DM1.cdsCreditoCab.RecordCount = 1 Then
   Begin
     DM1.cdsCreditoCab.Edit;
     DM1.cdsCreditoCab.FieldByName('CREESTID').AsString := '13';
     DM1.cdsCreditoCab.FieldByName('CREESTADO').AsString := 'ANULADO';
     DM1.cdsCreditoCab.FieldByName('CRESDOACT').AsFloat := 0 ;
     DM1.cdsCreditoCab.ApplyUpdates(0);
   End;
DM1.cdsCreditoCab.Close;

DM1.cdsCreditoCab.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREESTADO FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))) ;
DM1.cdsCreditoCab.Open;
If DM1.cdsCreditoCab.RecordCount > 0 Then
   Begin
     DM1.cdsCreditoCab.First;
     While Not DM1.cdsCreditoCab.Eof Do
     Begin
        AnulaCuoAct(DM1.cdsCreditoCab.FieldByName('ASOID').AsString, DM1.cdsCreditoCab.FieldByName('CREDID').AsString, DM1.cdsCreditoCab.FieldByName('CRECUOTA').AsString,xCnd);
        DM1.cdsCreditoCab.Next;
     End;
   End;

If xCnd='ANU' Then
 Begin
  DM1.cdsCreditoCab.Close;
  DM1.cdsCreditoCab.DataRequest('SELECT ASOID,CREDID,ANULADO,DOCUMENTO FROM DESEFE WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid)));
  DM1.cdsCreditoCab.Open;
  If DM1.cdsCreditoCab.RecordCount = 1 Then
     Begin
       DM1.cdsCreditoCab.Edit;
       DM1.cdsCreditoCab.FieldByName('ANULADO').AsString := 'S';
       DM1.cdsCreditoCab.FieldByName('DOCUMENTO').AsString := 'XXXXXX';
       DM1.cdsCreditoCab.ApplyUpdates(0);
       MessageDlg('Prestamo Anulado En Caja....!', mtInformation, [mbOk], 0);
     End;
     DM1.cdsCreditoCab.Close;
 End;
end;

procedure TFOtorPre.AnulaCuoAct(xAsoId, xCreDid, xCreCuota, xCnd: String);
begin
DM1.cdsCuotas.Close;
DM1.cdsCuotas.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREESTID,CREESTADO FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' AND CRECUOTA='+QuotedStr(Trim(xCreCuota)) );
DM1.cdsCuotas.Open;
If DM1.cdsCuotas.RecordCount = 1 Then
   Begin
        DM1.cdsCuotas.Edit;
        If xCnd='ANU' Then
           Begin
              DM1.cdsCuotas.FieldByName('CREESTID').AsString := '13';
              DM1.cdsCuotas.FieldByName('CREESTADO').AsString := 'ANULADO';
           End
        Else
           Begin
              DM1.cdsCuotas.FieldByName('CREESTID').AsString := '04';
              DM1.cdsCuotas.FieldByName('CREESTADO').AsString := 'EXTORNADO';
           End;

        DM1.cdsCuotas.ApplyUpdates(0);
   end;
DM1.cdsCuotas.Close;
end;

procedure TFOtorPre.AnulaPrestamo(xAsoId, xCreDid, xNroNabo, xFecPre, xCnd: String);
var tAsoid, tCreDid, tCreCuota, tEstado: String; tCremtoCob: Currency ;
begin
DM1.cdsQry3.Close;
DM1.cdsQry3.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREFPAG,CREMTOCOB,FORPAGID,CREESTID,CREESTADO,CREESTANT,CREESTANTDES FROM CRE310 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND NRONABO='+QuotedStr(Trim(xNroNabo))+' AND FORPAGID=''15''  AND CREESTID<>''13'' AND  CREFPAG =To_Date('+QuotedStr(Trim(xFecPre))+',''dd/mm/yyyy'') Order By CREDID,CRECUOTA ') ;
DM1.cdsQry3.Open;
If DM1.cdsQry3.RecordCount > 0 Then
   Begin
     DM1.cdsQry3.First;
     While Not DM1.cdsQry3.Eof Do
     Begin
        tAsoid:=DM1.cdsQry3.FieldByName('ASOID').AsString; tCreDid:=DM1.cdsQry3.FieldByName('CREDID').AsString; tCreCuota:=DM1.cdsQry3.FieldByName('CRECUOTA').AsString;  tCremtoCob:=DM1.cdsQry3.FieldByName('CREMTOCOB').AsFloat;  tEstado:=Trim(DM1.cdsQry3.FieldByName('CREESTANT').AsString)+Trim(DM1.cdsQry3.FieldByName('CREESTANTDES').AsString);
        AnulCuota(tAsoid,tCreDid,tCreCuota,tEstado,xCnd,tCremtoCob);
        DM1.cdsQry3.Next;
     End;
     DM1.cdsQry3.First;
     While Not DM1.cdsQry3.Eof Do
     Begin
        DM1.cdsQry3.Edit;
        DM1.cdsQry3.FieldByName('CREESTID').AsString:='13';
        DM1.cdsQry3.FieldByName('CREESTADO').AsString:='ANULADO';
        DM1.cdsQry3.Next;
     End;
     DM1.cdsQry3.ApplyUpdates(0);

   End;

DM1.cdsQry3.Close;

end;

procedure TFOtorPre.AnulCuota(tAsoid, tCreDid, tCreCuota, tEstado, xCnd: String;  tCremtoCob: Currency);
begin
DM1.cdsCreditoCab.Close;
DM1.cdsCreditoCab.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREMTOCOB,CREMONLOC, '  +
                                  'CREMONEXT,CRECAPITAL,CREMTOINT,CREMTOFLAT,FORPAGOABR, '  +
                                  'CREESTID,CREESTADO,NRONABO,FLGPAG,CREDIDNABO,CRESALDO, ' +
                                  'FNABONO,TCAMBIO,CREMTO FROM CRE302 ' +
                                  'WHERE ASOID='+QuotedStr(Trim(tAsoId))+' AND CREDID='+QuotedStr(Trim(tCreDid))+' AND CRECUOTA='+QuotedStr(Trim(tCreCuota))) ;
DM1.cdsCreditoCab.Open;
If DM1.cdsCreditoCab.RecordCount > 0 Then
   Begin
      DM1.cdsCreditoCab.Edit;
      DM1.cdsCreditoCab.FieldByName('CREMTOCOB').AsFloat:= DM1.cdsCreditoCab.FieldByName('CREMTOCOB').AsFloat-tCremtoCob;
      If DM1.cdsCreditoCab.FieldByName('CREMTOCOB').AsFloat > 0 Then
         Begin
           DM1.cdsCreditoCab.FieldByName('CREMONLOC').AsFloat:= DM1.cdsCreditoCab.FieldByName('CREMTOCOB').AsFloat;
           if DM1.cdsCreditoCab.FieldByName('TCAMBIO').AsFloat>0 then
              DM1.cdsCreditoCab.FieldByName('CREMONEXT').AsFloat:= (DM1.cdsCreditoCab.FieldByName('CREMTOCOB').AsFloat / DM1.cdsCreditoCab.FieldByName('TCAMBIO').AsFloat)
           else
              DM1.cdsCreditoCab.FieldByName('CREMONEXT').AsFloat:= 0;
         End
      Else
         Begin
           DM1.cdsCreditoCab.FieldByName('CREMONLOC').AsFloat:= 0;
           DM1.cdsCreditoCab.FieldByName('CREMONEXT').AsFloat:= 0;
           DM1.cdsCreditoCab.FieldByName('TCAMBIO').AsFloat:=   0;
         End;

      DM1.cdsCreditoCab.FieldByName('CREESTID').AsString :=Copy(tEstado,1,2);
      DM1.cdsCreditoCab.FieldByName('CREESTADO').AsString :=Copy(tEstado,3,25);
      DM1.cdsCreditoCab.FieldByName('NRONABO').AsString :='';
      DM1.cdsCreditoCab.FieldByName('CRECAPITAL').AsFloat :=0;
      DM1.cdsCreditoCab.FieldByName('CREMTOINT').AsFloat :=0;
      DM1.cdsCreditoCab.FieldByName('CREMTOFLAT').AsFloat :=0;
      DM1.cdsCreditoCab.FieldByName('FLGPAG').AsString :='';
      DM1.cdsCreditoCab.FieldByName('CREDIDNABO').AsString :='';
      DM1.cdsCreditoCab.FieldByName('FNABONO').AsString :='';
      DM1.cdsCreditoCab.FieldByName('CRESALDO').AsFloat := (DM1.cdsCreditoCab.FieldByName('CREMTO').AsFloat-DM1.cdsCreditoCab.FieldByName('CREMTOCOB').AsFloat);
      DM1.cdsCreditoCab.ApplyUpdates(0);
   End;
DM1.cdsCreditoCab.Close;


end;

function TFOtorPre.AbonoCuotas(xAsoId: String): Currency;
var xfecCalculo,xSQL:String;
    xSalAbn:Currency;
begin
xfecCalculo:= Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
DM1.cdsAbonoCreditos.Close;
xSQL:='SELECT SUBSTR(A.CREDID,11,7) AS NUMPRE,SUBSTR(A.CREDID,3,4) AS ANOPRE, '+
      'SUBSTR(A.CREDID,7,2) AS TIPPRE,SUBSTR(A.CREDID,1,2) AS ORIOTO, '+
      'A.CRECUOTA,CREFVEN,  '+
      'CASE WHEN CREANO||CREMES>'+QuotedStr(Trim(xfecCalculo))+' THEN (NVL(CREAMORT,0)+NVL(CREFLAT,0))-NVL(CREMTOCOB,0) '+
      'ELSE NVL(CREMTO,0)-NVL(CREMTOCOB,0)  END AS ABONO, '+
      'A.CREESTADO FROM CRE302 A,CRE110 B,CRE301 C '+
      'WHERE A.ASOID='+QuotedStr(Trim(xAsoId))+' AND A.ASOID=C.ASOID AND A.CREDID=C.CREDID AND A.TIPCREID=B.TIPCREID AND '+
      '(B.TIP_DES=''P'' OR C_ABN=''S'' )  AND A.CREESTID IN (''02'',''11'',''27'') '+
      'ORDER BY A.CREDID,A.CRECUOTA ';

DM1.cdsAbonoCreditos.DataRequest(xSQL);
DM1.cdsAbonoCreditos.Open;
TNumericField(DM1.cdsAbonoCreditos.fieldbyname('ABONO')).DisplayFormat:='###,###.#0';
If DM1.cdsAbonoCreditos.RecordCount > 0 Then
   Begin
      dtgNotaAbono.Visible:=True;
      xSalAbn:=0;
      DM1.cdsAbonoCreditos.First;
      WHILE NOT DM1.cdsAbonoCreditos.Eof DO
      Begin
        xSalAbn := xSalAbn + DM1.cdsAbonoCreditos.FieldByName('ABONO').AsCurrency;
        DM1.cdsAbonoCreditos.Next;
      End;
      Result:=xSalAbn;
   End
Else
   Begin
     dtgNotaAbono.Visible:=False;
     Result:=0;
   End;
end;

procedure TFOtorPre.PageControl1Change(Sender: TObject);
begin

If dtgNotaAbono.Visible = True Then
   Begin
    dtgNotaAbono.ColumnByName('CREFVEN').FooterValue :='Total : ';
    dtgNotaAbono.ColumnByName('ABONO').FooterValue :=FormatFloat('###,###.#0',xMontAbn);
   End;

If SaldoSrb(DM1.cdsAso.FieldByName('ASOID').AsString) > 0 Then
   Begin
      EdtUsrRes.Text:='';
      DM1.cdsRegCxP.Close;
      DM1.cdsRegCxP.DataRequest('SELECT USERID,USERNOM FROM USERTABLE WHERE USROPE=''S'' ORDER BY USERID');
      DM1.cdsRegCxP.Open;
      grpSrb000.Enabled:=True;
   End
Else
   Begin
       grpSrb000.Enabled:=False;
   End;
end;

procedure TFOtorPre.GrabaEfectivo(xAsoId: String);
begin
DM1.cdsCreditoCab.Close;
DM1.cdsCreditoCab.DataRequest('SELECT ASOID,ASOCODMOD,ASOCODAUX,CREDID,ASOTIPID,ASOCODPAGO,  ' +
                                    'ASOAPENOM,UPROID,USEID,UPAGOID,CODDEP,CODOFI,      ' +
                                    'MONTOSOL,MONTODOL,TIPCAMB,ASODNI,CREFOTORG,ANULADO ' +
                                    'FROM DESEFE WHERE ASOID ='+QuotedStr(Trim(xAsoId)));
DM1.cdsCreditoCab.Open;
DM1.cdsCreditoCab.Insert;
DM1.cdsCreditoCab.FieldByName('ASOID').AsString :=xAsoId;
DM1.cdsCreditoCab.FieldByName('ASOCODMOD').AsString := DM1.cdsAso.fieldbyname('ASOCODMOD').AsString;
DM1.cdsCreditoCab.FieldByName('ASOCODAUX').AsString := DM1.cdsAso.fieldbyname('ASOCODAUX').AsString;
DM1.cdsCreditoCab.FieldByName('ASOCODPAGO').AsString := DM1.cdsAso.fieldbyname('ASOCODPAGO').AsString;
DM1.cdsCreditoCab.FieldByName('CREDID').AsString :=xCreditoId;
DM1.cdsCreditoCab.fieldbyname('ASOTIPID').AsString := DM1.cdsAso.fieldbyname('ASOTIPID').AsString;
DM1.cdsCreditoCab.fieldbyname('ASODNI').AsString :=   DM1.cdsAso.fieldbyname('ASODNI').AsString;
DM1.cdsCreditoCab.FieldByName('ASOAPENOM').AsString := DM1.cdsAso.fieldbyname('ASOAPENOMDNI').AsString;
DM1.cdsCreditoCab.FieldByName('UPROID').AsString := DM1.cdsAso.fieldbyname('UPROID').AsString;
DM1.cdsCreditoCab.FieldByName('USEID').AsString := DM1.cdsAso.fieldbyname('USEID').AsString;
DM1.cdsCreditoCab.FieldByName('UPAGOID').AsString :=DM1.cdsAso.fieldbyname('UPAGOID').AsString;
DM1.cdsCreditoCab.FieldByName('CODDEP').AsString := DM1.cdsAso.fieldbyname('DPTOID').AsString;
DM1.cdsCreditoCab.FieldByName('CODOFI').AsString := DM1.xOfiDes;
DM1.cdsCreditoCab.FieldByName('MONTOSOL').asFloat := DM1.Valores(dbeMtoDesem.Text);
DM1.cdsCreditoCab.FieldByName('MONTODOL').asFloat := DM1.Valores(dbeMtoDesem.Text)/StrToCurr(DM1.RecuperarTipoCambio(DM1.FechaSys));
DM1.cdsCreditoCab.FieldByName('TIPCAMB').asFloat := StrToCurr(DM1.RecuperarTipoCambio(DM1.FechaSys));
DM1.cdsCreditoCab.FieldByName('ANULADO').asString := 'N';
DM1.cdsCreditoCab.fieldbyname('CREFOTORG').AsDateTime :=DM1.FechaSys;
DM1.cdsCreditoCab.ApplyUpdates(0);
DM1.cdsCreditoCab.Close;

end;

procedure TFOtorPre.dtgPrestamosDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='21') Or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='23') Or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='26') or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='24') Then
     begin
        dtgPrestamos.Canvas.Font.Color := clGreen;
        dtgPrestamos.DefaultDrawDataCell(rect,Field,State);
      end;

  if (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='12') Or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='22') Or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='29') Then
     begin
        dtgPrestamos.Canvas.Font.Color := $00FF5BFF;
        dtgPrestamos.DefaultDrawDataCell(rect,Field,State);
      end;

  If (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='13') Or
     (DM1.cdsSolicitud.FieldByName('CREESTID').AsString='04')  Then
     begin
        dtgPrestamos.Canvas.Font.Color := clRed;
        dtgPrestamos.DefaultDrawDataCell(rect,Field,State);
      end;

end;

function TFOtorPre.ValdaAsociado(xAsoid, xTipAso, xFrmDes: String): Char;
var xSQL:String;
begin
xSQL:='SELECT ASOCODPAGO,ASODNI,ASORESNOM,ASOFRESNOM,ASOFECNAC,ASOSEXO,ASONCTA,SITCTA,ASORESCESE,ASOFRESCESE,ASODIR FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId));
DM1.cdsAsociados.Close;
DM1.cdsAsociados.DataRequest(xSQL);
DM1.cdsAsociados.Open;
If DM1.cdsAsociados.RecordCount=1 Then
   Begin
      If Length(Trim(DM1.cdsAsociados.FieldByName('ASOCODPAGO').AsString))=0 Then
         Begin MessageDlg(' Falta Codigo De Pago !!! ', mtError,[mbOk],0); Result := 'N' ; Exit ;  End;


      If xTipAso='DO' Then
         Begin
            If Length(Trim(DM1.cdsAsociados.FieldByName('ASORESNOM').AsString))=0 Then
               Begin MessageDlg(' Falta Resolución De Nombramiento !!! ', mtError,[mbOk],0); Result := 'N' ; Exit ;  End;
            If Length(Trim(DM1.cdsAsociados.FieldByName('ASOFRESNOM').AsString))=0 Then
               Begin MessageDlg(' Falta Fecha De Nombramiento !!! ', mtError,[mbOk],0); Result := 'N' ; Exit ;  End;
         End;


      If xFrmDes='06' Then
         Begin
            If Length(Trim(DM1.cdsAsociados.FieldByName('ASONCTA').AsString))=0 Then
               Begin MessageDlg(' Falta Cuenta De Teleahorro !!! ', mtError,[mbOk],0); Result := 'N' ; Exit ;  End;
            If Length(Trim(DM1.cdsAsociados.FieldByName('SITCTA').AsString))=0 Then
               Begin MessageDlg(' Falta Situación De La Cuenta !!! ', mtError,[mbOk],0); Result := 'N' ; Exit ;  End;
         End;

      If Trim(DBLCTipCob.Text)='18' Then
         Begin
            If Length(Trim(DM1.cdsAsociados.FieldByName('ASONCTA').AsString))=0 Then
               Begin MessageDlg(' Falta Cuenta De Teleahorro !!! ', mtError,[mbOk],0); Result := 'N' ; Exit ;  End;
            If Length(Trim(DM1.cdsAsociados.FieldByName('SITCTA').AsString))=0 Then
               Begin MessageDlg(' Falta Situación De La Cuenta !!! ', mtError,[mbOk],0); Result := 'N' ; Exit ;  End;
         End;

      If xTipAso='CE' Then
         Begin
            If Length(Trim(DM1.cdsAsociados.FieldByName('ASORESCESE').AsString))=0 Then
               Begin MessageDlg(' Falta Resolución De Cese !!! ', mtError,[mbOk],0); Result := 'N' ; Exit ;  End;
            If Length(Trim(DM1.cdsAsociados.FieldByName('ASOFRESCESE').AsString))=0 Then
               Begin MessageDlg(' Falta Fecha De Cese !!! ', mtError,[mbOk],0); Result := 'N' ; Exit ;  End;
         End;

      Result:='S';
   End;
DM1.cdsAsociados.Close;
end;

procedure TFOtorPre.BitAsociadoClick(Sender: TObject);
var xSQL,xAsoId:String;
begin
   If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
       Exit;
      End;

  Try
    Botones(False);
    If Length(Trim(dbeApeNom.Text))=0 Then
     Begin
        MessageDlg('Debe Seleccionar Un Asociado...!', mtError, [mbOk], 0);
        Exit;
     End;
    xSQL:='SELECT * FROM TGE158';
    DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
    DM1.cdsRec.Close;  DM1.cdsRec.DataRequest(xSQL);   DM1.cdsRec.Open;
    xSQL:='SELECT ID,DESCRIP FROM TGE817 ';
    DM1.cdsSexo.Close;  DM1.cdsSexo.DataRequest(xSQL);   DM1.cdsSexo.Open;
    xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107';
    DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;
    xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
    DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;
    xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE SUBSTR(PROV,1,1)=''A'' ';
    DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;
    FMantAsociado:= TFMantAsociado.create(self);

    FMantAsociado.lkcDpto.Text := DM1.cdsAso.fieldbyname('ASODPTO').AsString;

    //FMantAsociado.lkcDpto.Text := DM1.cdsAso.fieldbyname('DPTOID').AsString;

    FMantAsociado.lkcProv.Text := DM1.cdsAso.fieldbyname('CIUDID').AsString;
    FMantAsociado.lkcDist.Text := DM1.cdsAso.fieldbyname('ZIPID').AsString;
    FMantAsociado.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
    FMantAsociado.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
    FMantAsociado.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
    FMantAsociado.ImagAso.Picture:=ImagAso.Picture;   FMantAsociado.ImaFirma.Picture:=ImaFirma.Picture;
    FMantAsociado.lblAsoApeNom.Caption:=DM1.cdsAso.fieldbyname('ASOAPENOM').AsString+' (Dato de Planillas)';


    FMantAsociado.EdtApePatDni.Enabled:=False;
    FMantAsociado.EdtApeMatDni.Enabled:=False;
    FMantAsociado.EdtAsoNomDni.Enabled:=False;
    FMantAsociado.dbeCodPag.Enabled:=False;
    FMantAsociado.dbeLibDni.Enabled:=False;
    FMantAsociado.DbLlTipAso.Enabled:=False;
    FMantAsociado.DbLlRegPen.Enabled:=False;

    FMantAsociado.ShowModal;
  Finally
    DM1.cdsPadre.Close; DM1.cdsHijo.Close; DM1.cdsCAso.Close; DM1.cdsRec.Close; DM1.cdsTRela.Close; DM1.cdsQry7.Close;
    DM1.cdsSexo.Close; DM1.cdsTAso.Close; DM1.cdsResol.Close; DM1.cdscarta.Close;
    FMantAsociado.Free;
    Botones(True);

  End;

end;

function TFOtorPre.ValidaActualizacion(): Char;
var xMst,xMensaje:String;
begin
If Length(Trim(DM1.cdsAso.fieldbyname('ASOSEXO').AsString))=0 Then
   Begin
     xMensaje:='Debe Ingresar El Sexo Del Asociado...!';
     xMst:='S1';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;
   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;

If Length(Trim(DM1.cdsAso.fieldbyname('ASOFECNAC').AsString))=0 Then
   Begin
     xMensaje:='Debe Ingresar La Fecha De Nacimiento Del Asociado...!';
     xMst:='S1';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;
   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;


If Length(Trim(DM1.cdsAso.fieldbyname('ASODNI').AsString))=0 Then
   Begin
     xMensaje:='Debe Ingresar El D.N.I. Del Asociado...!';
     xMst:='S1';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;
   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;

If Length(Trim(DM1.cdsAso.fieldbyname('ASOTELF1').AsString))=0 Then
   Begin
     xMensaje:='Debe Ingresar El Telefono Del Asociado...!';
     xMst:='S1';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;

   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;


If Length(Trim(DM1.cdsAso.fieldbyname('ASODIR').AsString))=0 Then
   Begin
     xMensaje:='Debe Ingresar La Dirección Donde Recide El Asociado...!';
     xMst:='S1';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;
   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;


If Length(Trim(DM1.cdsAso.fieldbyname('ASODPTO').AsString))=0 Then
   Begin
     xMensaje:='Debe Seleccionar El Departamento Donde Reside El Asociado...!';
     xMst:='S1';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;

   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;

If Length(Trim(DM1.cdsAso.fieldbyname('CIUDID').AsString))=0 Then
   Begin
     xMensaje:='Debe Seleccionar La Provincia Donde Reside El Asociado...!';
     xMst:='S1';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;

   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;

If Length(Trim(DM1.cdsAso.fieldbyname('ZIPID').AsString))=0 Then
   Begin
     xMensaje:='Debe Seleccionar El Distrito Donde Reside El Asociado...!';
     xMst:='S1';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;

   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;

If Trim(EdtTipAso.Text)='DO' Then
Begin
If Length(Trim(DM1.cdsAso.fieldbyname('ASODESLAB').AsString))=0 Then
   Begin
     xMensaje:='Debe Ingresar El Colegio Del Asociado...!';
     xMst:='S2';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;

   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;


If Length(Trim(DM1.cdsAso.fieldbyname('ASODIRLAB').AsString))=0 Then
   Begin
     xmensaje:='Debe Ingresar La Dirección Donde Labora El Asociado...!';
     xMst:='S2';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;

   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;

If Length(Trim(DM1.cdsAso.fieldbyname('ASODPTLABID').AsString))=0 Then
   Begin
     xMensaje:='Debe Ingresar El Departamento Donde Labora El Asociado...!';
     xMst:='S2';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;

   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;

If Length(Trim(DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString))=0 Then
   Begin
     xMensaje:='Debe Ingresar La Provincia Donde Labora El Asociado...!';
     xMst:='S2';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;
   End
Else
   Begin
     xMst:='N';
     result:='S';
   End;

If Length(Trim(DM1.cdsAso.fieldbyname('ASODSTLABID').AsString))=0 Then
   Begin
     xMensaje:='Debe Ingresar El Distrito Donde Labora El Asociado...!';
     xMst:='S2';
     CargaAso(xMst, xMensaje);
     result:='N';
     Exit;
   End;
End
Else
   Begin
     xMst:='N';
     result:='S';
   End;


end;

procedure TFOtorPre.CargaAso(xMst, xMensaje: String);
var xSQL:String;
begin

If Copy(xMst,1,1)='S' Then
    Begin
      MessageDlg(xMensaje, mtError, [mbOk], 0);
      xSQL:='SELECT * FROM TGE158';
      DM1.cdsPadre.Close; DM1.cdsPadre.DataRequest(xSQL);  DM1.cdsPadre.Open;
      DM1.cdsRec.Close;  DM1.cdsRec.DataRequest(xSQL);   DM1.cdsRec.Open;
      xSQL:='SELECT ID,DESCRIP FROM TGE817 ';
      DM1.cdsSexo.Close;  DM1.cdsSexo.DataRequest(xSQL);   DM1.cdsSexo.Open;
      xSQL:='SELECT ASOTIPID,ASOTIPDES FROM APO107';
      DM1.cdsTAso.Close;  DM1.cdsTAso.DataRequest(xSQL);   DM1.cdsTAso.Open;
      xSQL:='SELECT REGPENID,REGPENDES FROM APO105';
      DM1.cdsResol.Close; DM1.cdsResol.DataRequest(xSQL);  DM1.cdsResol.Open;
      xSQL:='SELECT SUBSTR(PROV,4,2) IDAFP,PROVDES FROM TGE201 WHERE SUBSTR(PROV,1,1)=''A'' ';
      DM1.cdscarta.Close; DM1.cdscarta.DataRequest(xSQL);  DM1.cdscarta.Open;
      FMantAsociado:= TFMantAsociado.Create(Self);
      If xMst='S1' Then
         Begin
         End
      Else
         Begin
         End;
      DM1.xSgr:='N';
      FMantAsociado.lkcDpto.Text := DM1.cdsAso.fieldbyname('DPTOID').AsString;
      FMantAsociado.lkcProv.Text := DM1.cdsAso.fieldbyname('CIUDID').AsString;
      FMantAsociado.lkcDist.Text := DM1.cdsAso.fieldbyname('ZIPID').AsString;
      FMantAsociado.lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
      FMantAsociado.lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
      FMantAsociado.lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
      FMantAsociado.ShowModal; FMantAsociado.Free;
    End
end;

function TFOtorPre.Busca301(xAsoId: String): Char;
begin
DM1.cdsQry6.Close;
DM1.cdsQry6.DataRequest('SELECT ASOID,CREDID,CREESTID FROM CRE301 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREESTID=''01'' AND  TIPDESEID<>''03'' ');
DM1.cdsQry6.Open;
If DM1.cdsQry6.RecordCount > 0 Then
   Result:='N'
Else
   Result:='S';
DM1.cdsQry6.Close;
end;

procedure TFOtorPre.fcSpeExtClick(Sender: TObject);
Var xAsoId,xCreDid,xNroNabo,xFecPre:String;
begin

   If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
       Exit;
      End;

 If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='SIS') Then
 Else
    Begin
       If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='CRE') Then
       Else
           Begin
             MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
             Exit;
           End;
    End;

 xAsoId:=DM1.cdsSolicitud.FieldByName('ASOID').AsString;
 xCredId:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;
 xNroNabo:=DM1.cdsSolicitud.FieldByName('NRONABO').AsString;
 xFecPre:=DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
 If DM1.cdsSolicitud.FieldByName('CREESTID').AsString='21' Then
    Begin
      MessageDlg('PRESTAMO Ya Fue Cancelado!', mtError,[mbOk],0);
      Exit
    End;

 If DM1.cdsSolicitud.FieldByName('CREESTID').AsString='13' Then
    Begin
      MessageDlg('Ya Fue Anulado!', mtError,[mbOk],0);
      Exit
    End;

 If DM1.cdsSolicitud.FieldByName('CREESTID').AsString='04' Then
    Begin
      MessageDlg('Ya Fue Extornado!', mtError,[mbOk],0);
      Exit
    End;

 If Busca310(xAsoId, xCreDid)='S' Then
    Begin
      MessageDlg('No Se Puede Extornar Tiene Pagos Efectuados!', mtError,[mbOk],0);
      Exit
    End;
    If MessageDlg('¿ Esta Seguro De Extornar Este Prestamo ?',mtconfirmation,[mbYes,mbNo],0)=mrYes then
       Begin
          DM1.xSgr:='EXT';
       End;

end;

// Inicio: SPP_201402_ASO
procedure TFOtorPre.BorraFotos;
Var search: TSearchRec;
    nFiles: integer;
begin
   // nFiles:=FindFirst('C:\SOLEXES\*.JPG', faAnyFile,  search );
   // while nFiles=0 do
   // begin
   //      SysUtils.DeleteFile('C:\SOLEXES\'+ Search.Name);
   //      nFiles:=FindNext( Search );
   // end;
   // FindClose(Search);
   nFiles:=FindFirst('C:\SOLEXES\*.JPG', faAnyFile,  search );
   while nFiles=0 do
   begin
      SysUtils.DeleteFile('C:\SOLEXES\'+ Search.Name);
      nFiles:=FindNext( Search );
   end;
   FindClose(Search);
   nFiles:=FindFirst('C:\SOLEXES\*.TIF', faAnyFile,  search );
   while nFiles=0 do
   begin
      SysUtils.DeleteFile('C:\SOLEXES\'+ Search.Name);
      nFiles:=FindNext( Search );
   end;
   FindClose(Search);
end;
// Fin: SPP_201402_ASO



procedure TFOtorPre.EdtCodModChange(Sender: TObject);
begin
  BorraFotos;
  If DM1.xSgr<>'1' Then
     Begin
        ImagAso.Visible := False;
        ImaFirma.Visible := False;
     End;
end;

procedure TFOtorPre.z2bbtnCronoClick(Sender: TObject);
var  xAsoId,xCreDid,xSQL : String;
     xInteres,xFlat,xMonto,xCuoIni:Real;
     xNumCuo, Boton :Integer;
     xFecPre,xFecDes : tDateTime;
begin

If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
    Begin
      MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
      Exit;
    End;


If Copy(DM1.CrgArea(DM1.wUsuario),6,2)>'01' Then
Else
  Begin
     MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
     Exit;
  End;

If Length(Trim(DM1.cdsSolicitud.FieldByName('CREFDES').AsString))=0 Then
   Begin
      MessageDlg('Prestamo sin Fecha De Desembolso , No Generara Cronograma De Pagos !!! ', mtError, [mbOk], 0);
      Exit;
   End;
Boton := Application.MessageBox ('Seguro De Generar El Cronograma De Pagos ','Sistema De Creditos',MB_YESNO+MB_ICONQUESTION);
If Boton = ID_YES Then
   Begin
     xAsoId:=DM1.cdsSolicitud.FieldByName('ASOID').AsString;  xCreDid:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;  xInteres:=DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat;  xFlat:=DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat; xMonto:=DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat; xCuoIni:=DM1.cdsSolicitud.FieldByName('CUOTAINI').AsFloat; xNumCuo:=DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsInteger; xFecPre :=DM1.cdsSolicitud.FieldByName('CREFOTORG').AsDateTime;  xFecDes :=DM1.cdsSolicitud.FieldByName('CREFDES').AsDateTime;
     If Busca302(xAsoId, xCreDid)='N' Then
        Begin
           DM1.GnrCronograma(xAsoid ,xCreDid ,xInteres ,xFlat ,xMonto-xCuoIni ,xFecDes ,xNumCuo);
           xSQL:='UPDATE CRE301 SET CREESTID=''02'',CREESTADO=''POR COBRAR'',CRECUOTA='+FloattoStr(DM1.CalculaCuota(xInteres,xFlat,xMonto-xCuoIni,xNumCuo))+', CRESDOACT='+FloatToStr(DM1.CalculaCuota(xInteres,xFlat,xMonto-xCuoIni,xNumCuo)*xNumCuo)+' WHERE ASOID='+QuotedStr(xAsoId)+' AND CREDID='+QuotedStr(xCreDid) ;
           DM1.DCOM1.AppServer.EjecutaSql(xSQL);
           DM1.CrgDatos;
           MessageDlg('Cronograma De Pagos se Genero Con Exito...!', mtInformation, [mbOk], 0);
        End
     Else
           MessageDlg('Imposible, Cronograma De Pagos Ya Fue Generado ...!', mtError, [mbOk], 0);

   End;





end;

function TFOtorPre.CalSalCob(xAsoid, xPeriodo: String): Currency;
var xSQL:String;
begin
If DM1.TipDes((dblTipCre.Text))='P' Then
   xSQL:='SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0)) SALDO FROM CRE302 A,CRE110 B,CRE301 C WHERE A.ASOID='+QuotedStr(Trim(xAsoid))+' AND  A.CREANO||A.CREMES='+QuotedStr(Trim(xPeriodo))+' AND A.CREESTID IN (''02'',''11'',''27'') AND SUBSTR(A.CREDID,7,2)=B.TIPCREID AND B.TIP_DES=''S'' AND C.ASOID=A.ASOID AND  C.CREDID=A.CREDID AND NVL(C.C_ABN,''X'')<>''S'' '
Else
   xSQL:='SELECT SUM(NVL(CREMTO,0)-NVL(CREMTOCOB,0)) SALDO FROM CRE302 A,CRE110 B,CRE301 C WHERE A.ASOID='+QuotedStr(Trim(xAsoid))+' AND  A.CREANO||A.CREMES='+QuotedStr(Trim(xPeriodo))+' AND A.CREESTID IN (''02'',''11'',''27'') AND SUBSTR(A.CREDID,7,2)=B.TIPCREID AND (B.TIP_DES=''P'' OR B.TIP_DES=''S'') AND C.ASOID=A.ASOID AND  C.CREDID=A.CREDID AND NVL(C.C_ABN,''X'')<>''S'' ';
DM1.cdsQry7.Close;
DM1.cdsQry7.DataRequest(xSQL);
DM1.cdsQry7.Open;
If DM1.cdsQry7.RecordCount > 0 Then
   Result:= DM1.cdsQry7.FieldByName('SALDO').AsCurrency
Else
   Result:= 0 ;
DM1.cdsQry7.Close;
end;

procedure TFOtorPre.z2bbtnModificaClick(Sender: TObject);
begin
   If Length(Copy(DM1.CrgArea(DM1.wUsuario),6,2))=0 Then
      Begin
       MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
       Exit;
      End;
   If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='SIS') Then
   Else
      Begin
         If (Copy(DM1.CrgArea(DM1.wUsuario),1,3)='CRE') AND (Copy(DM1.CrgArea(DM1.wUsuario),6,2)>'01') Then
         Else
             Begin
               MessageDlg('Usuario No Autorizado A Esta Opción....!', mtError, [mbOk], 0);
               Exit;
             End;
      End;

  If Trim(DM1.cdsSolicitud.fieldbyname('CREESTID').AsString)<>'02' Then
     Begin
       MessageDlg('El Estado Del Prestamo Debe Ser  POR COBRAR , Verifique..!', mtError, [mbOk], 0);
       Exit;
      End;
  DM1.xCnd:='MF';
  dbsModCuo.MinValue := StrToFloat(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString),7,2)),'CRE110','CUO_MIN'));
  dbsModCuo.Value := dbsModCuo.MinValue ;
  dbsModCuo.MaxValue := StrToFloat(DM1.CrgDescrip('TIPCREID='+QuotedStr(Copy(Trim(DM1.cdsSolicitud.fieldbyname('CREDID').AsString),7,2)),'CRE110','CUO_MAX'));
  Z2sbtnParametros.Enabled:=False;   z2bbtnCrono.Enabled:=False;   z2bbtnNota.Enabled:=False;  fcSpeExt.Enabled:=False;  z2bbtnNuevo.Enabled:=False;   z2bbtnModifica.Enabled:=False;   z2bbtnAnula.Enabled:=False;   z2bbtnImprime.Enabled:=False; BitMstApo.Enabled:=False;
  z2bbtnAcepta.Enabled:=True;  z2bbtnCancelar.Enabled:=True;  dbsModCuo.Visible:=True;
end;

procedure TFOtorPre.ImaFirmaClick(Sender: TObject);
begin
  If Length(Trim(dbeApeNom.Text))=0 Then
     Begin
       MessageDlg('Debe Seleccionar Un Asociado ...!', mtError, [mbOk], 0);
       Exit;
     End
  Else
     Begin
      DM1.xSgr:='IDE';
     End;

end;

procedure TFOtorPre.ImagAsoClick(Sender: TObject);
begin
  If Length(Trim(dbeApeNom.Text))=0 Then
     Begin
       MessageDlg('Debe Seleccionar Un Asociado ...!', mtError, [mbOk], 0);
       Exit;
     End
  Else
     Begin
      DM1.xSgr:='IDE';
     End;

end;

//Inicio: DPP_201202_ASO
//Se quita la carga de imagen por FTP
{procedure TFOtorPre.CargaFirma(IdFoto: String);
Var RemoteTxt, LocalTxt, xFtp:String;
    IniFile : TIniFile;
begin
 ImaFirma.Visible := True; DM1.xFma:='N';
 IniFile:=TIniFile.Create('C:\SOLExes\SOLConf.ini'); xFtp:=IniFile.ReadString('FOTOS','FTP','');
 IDFTP1.Host := xFtp; IDFTP1.Port := 21; IDFTP1.ReadTimeout := 5000; IDFTP1.UserName := 'imagen'; IDFTP1.Password := 'imagen';
 Try
 IDFTP1.Connect;
 If Trim(IdFoto) <> '' then
     Begin
        Try
          RemoteTxt := '/data04/imagen/FPEG'+copy(IdFoto,1,1)+'/'+IdFoto+'.jpg';
          LocalTxt  :=  'C:\SolExes\'+IdFoto+'.jpg';
          IdFTP1.Get(RemoteTxt, LocalTxt, False);
          If DM1.xSgr='REP' Then fCronoPag.ppImage1.Picture.LoadFromFile(LocalTxt)
          Else If  DM1.xSgr='IDE' Then fIdentAso.ImaFirma.Picture.LoadFromFile(LocalTxt)
          Else If  DM1.xSgr='CTR' Then FMantAsociado.ImaFirma.Picture.LoadFromFile(LocalTxt)
         // Else If  DM1.xSgr='SLC' Then fMstCre.ImaFirma.Picture.LoadFromFile(LocalTxt)
          Else
            Begin
               ImaFirma.Picture.LoadFromFile(LocalTxt);
            End;
          deletefile(LocalTxt);
          ImaFirma.Enabled:=True; DM1.xFma:='S';
          BorraFotos;
        Except
          RemoteTxt := '/data04/imagen/SINFIRMA.jpg';
          LocalTxt  :=  'C:\SolExes\SINFIRMA.Jpg';
          IdFTP1.Get(RemoteTxt, LocalTxt, False);
          If  DM1.xSgr='IDE' Then fIdentAso.ImaFirma.Picture.LoadFromFile(LocalTxt)
          Else If  DM1.xSgr='CTR' Then FMantAsociado.ImaFirma.Picture.LoadFromFile(LocalTxt)
          //Else If  DM1.xSgr='SLC' Then fMstCre.ImaFirma.Picture.LoadFromFile(LocalTxt)
          Else
            Begin
                ImaFirma.Picture.LoadFromFile(LocalTxt);
            End;
          ImaFirma.Enabled:=False;  DM1.xFma:='N';
        End ;
     End
 Else
     Begin
         Try
           RemoteTxt := '/data04/imagen/SINFIRMA.jpg';
           LocalTxt  :=  'C:\SolExes\SINFIRMA.Jpg';
           IdFTP1.Get(RemoteTxt, LocalTxt, False);
           If DM1.xSgr='REP' Then
             fCronoPag.ppImage1.Picture.LoadFromFile(LocalTxt)
           Else If  DM1.xSgr='IDE' Then
             fIdentAso.ImaFirma.Picture.LoadFromFile(LocalTxt)
           Else If  DM1.xSgr='CTR' Then
             fMantAsociado.ImaFirma.Picture.LoadFromFile(LocalTxt)
           Else If  DM1.xSgr='SLC' Then
          //   fMstCre.ImaFirma.Picture.LoadFromFile(LocalTxt)
           Else
             Begin
               ImaFirma.Picture.LoadFromFile(LocalTxt);
             End;

           deletefile(LocalTxt);
           BorraFotos;
           ImaFirma.Enabled:=False;  DM1.xFma:='N';
         Except
         End ;
     End;
 Except
    MessageDlg('Error al Intentar Conectar Al Servidor De Fotos (RS/6000) ...!', mtError, [mbOk], 0);
 End;
 idFTP1.Disconnect;




end;}
//Final: DPP_201202_ASO


function TFOtorPre.SaldoSrb(xAsoid: String): Currency;
var xSQL:String;
begin
  xSQL:='SELECT ASOID,MONDEPO,DOCDEPO,CREDID,ESTDEP FROM SRB000 WHERE ASOID='+QuotedStr(xAsoId)+' AND ESTDEP<>''13'' ';
  DM1.cdsCNTCaja.Close;
  DM1.cdsCNTCaja.DataRequest(xSQL);
  DM1.cdsCNTCaja.Open;
  If DM1.cdsCNTCaja.RecordCount > 0 Then
     Begin
        If Length(Trim(DM1.cdsCNTCaja.FieldByName('CREDID').AsString)) > 0 Then
           Begin
              lblPreferente.Font.Color:=clGreen;
              lblMtoPre.Font.Color:=clGreen;
              Result:=0
           End
        Else
           Begin
              lblPreferente.Font.Color:=clRed;
              lblMtoPre.Font.Color:=clRed;
              Result:=DM1.cdsCNTCaja.FieldByName('MONDEPO').AsCurrency;
           End;
           lblPreferente.Visible:=True;
           lblMtoPre.Visible:=True;
     End
  Else
     Begin
       lblPreferente.Visible:=False;
       lblMtoPre.Visible:=False;
     End;
  DM1.cdsCNTCaja.Close;

end;

function TFOtorPre.MesesDesde(cadena: string): integer;
var
  fecha_aux:TDateTime;
  ano,mes,dia:word;
  ano_act,mes_act,dia_act:word;
begin
 fecha_aux:=strtodate(cadena);
  decodedate(fecha_aux,ano,mes,dia);
  decodedate(date,ano_act,mes_act,dia_act);
  if (ano_act=ano) then // Estamos en el mismo año
    if mes_act=mes then
      result:=0
    else result:=mes_act - mes;
  if (ano_act <> ano) then
    if mes_act < mes then
      result := (mes_act+12 - mes) * ((ano_act-ano)*12)
    else if mes_act=mes then
             result := (ano_act-ano)*12
    else if mes_act > mes then
             result:=(mes_act-mes) + ((ano_act-ano)*12);

end;

procedure TFOtorPre.DBLUsuariosChange(Sender: TObject);
begin
   If DM1.cdsRegCxP.Locate('USERID',VarArrayof([DBLUsuarios.Text]),[]) Then
      Begin
        EdtUsrRes.Text  := DM1.cdsRegCxP.fieldbyname('USERNOM').AsString ;
      End
   Else
      Begin
        Beep;
        EdtUsrRes.Text  :='';
      End


end;

procedure TFOtorPre.BitPrintClick(Sender: TObject);
var xAsoId,xSQL:String;
    xTot:Real;
begin
xAsoId:=Trim(DM1.cdsAso.FieldByName('ASOID').AsString);
xSQL:='SELECT * FROM SRB000 WHERE ASOID='+QuotedStr(xAsoId)+' AND NROTRAN IS NOT NULL AND NVL(DEPDEV,0)=0';
DM1.cdsAbonoCreditos.Close;
DM1.cdsAbonoCreditos.DataRequest(xSQL);
DM1.cdsAbonoCreditos.Open;
If DM1.cdsAbonoCreditos.RecordCount > 0 Then
   Begin

    pplDocumento.Caption  := 'Comprobante de Egreso No  '+trim(DM1.cdsAbonoCreditos.FieldByName('NROTRAN').AsString);
    pplMontosol.Caption   := 'Recibi de DERRAMA MAGISTERIAL la suma de S/.  '+trim(FormatFloat('###,###,###.#0',DM1.cdsAbonoCreditos.FieldByName('MONDEPO').AsFloat));
    pplCredid.Caption     := trim(DM1.cdsAbonoCreditos.FieldByName('CREDID').AsString);
    pplCrefotorg.Caption  := trim(DM1.cdsAbonoCreditos.FieldByName('CREFOTORG').AsString);
    pplAsoapenom.Caption  := trim(DM1.cdsAbonoCreditos.FieldByName('ASOAPENOM').AsString);
    pplAsodni.Caption     := ': '+DM1.cdsAbonoCreditos.FieldByName('ASODNI').AsString;
    pplAsocodmod.Caption  := ': '+DM1.cdsAbonoCreditos.FieldByName('ASOCODMOD').AsString;
    pplUsuario.Caption    := trim(DM1.cdsAbonoCreditos.FieldByName('USRASIG').AsString);
    pplblObs01.Caption :='atravéz del Banco Continental, por el';


    pplFecha.Caption      := 'Jesùs Marìa, '+FormatDateTime('d "de" mmmm "del" yyyy',now)+' - '+TimeToStr(Time);
    ppLbl01.Caption       := 'Fec.Trans : ' +DM1.cdsAbonoCreditos.FieldByName('CREFOTORG').AsString ;//+' - '+DM1.cdsBco.FieldByName('HORPAGO').AsString;
    xTot                  := Int(DM1.cdsAbonoCreditos.FieldByName('MONDEPO').AsFloat);
    pplNumLet.Caption     := '('+trim(DM1.xIntToLletras(StrToInt(FloatToStr(xTot)),DM1.cdsAbonoCreditos.FieldByName('MONDEPO').AsFloat))+')';

    pplDocumento2.Caption  :=   pplDocumento.Caption;
    pplMontosol2.Caption   :=   pplMontosol.Caption ;
    pplCredid2.Caption     :=   pplCredid.Caption ;
    pplCrefotorg2.Caption  :=   pplCrefotorg.Caption;
    pplAsoapenom2.Caption  :=   pplAsoapenom.Caption;
    pplAsodni2.Caption     :=   pplAsodni.Caption;
    pplAsocodmod2.Caption  :=   pplAsocodmod.Caption;
    pplUsuario2.Caption    :=   pplUsuario.Caption;
    pplFecha2.Caption      :=   pplFecha.Caption;
    ppLbl02.Caption        :=   ppLbl01.Caption;
    pplNumLet2.Caption     :=   pplNumLet.Caption;
    pplblObs02.Caption := pplblObs01.Caption;
    ppReport1.Print;
    ppReport1.Stop;

   End
Else
   Begin
      MessageDlg('NO EXISTE COMPROBANTE DE EGRESO', mtError, [mbOk], 0);
      Exit;
   End;
DM1.cdsAbonoCreditos.Close;
end;

function TFOtorPre.AsoClfCan(xAsoid: String): Char;
var xSQL:String;
    xDias:Integer;
begin
DM1.cdsAsoX.Close;
xSQL:='SELECT A.ASOID,A.CREDID,A.CRECUOTA,A.CREFPAG CREFPAG,CREFVEN,B.CREESTID,A.CREMTO,A.CREMTOCOB '+
      'FROM CRE302 A,CRE301 B '+
      'WHERE A.ASOID='+QuotedStr(xAsoId)+' AND A.ASOID=B.ASOID AND B.CREDID=A.CREDID AND CREFOTORG>''31/12/1999'' AND B.CREESTID NOT IN (''13'',''02'',''04'') '+
      'ORDER BY ASOID,CREDID,CRECUOTA';
DM1.cdsAsoX.DataRequest(xSQL);
DM1.cdsAsoX.Open;
If DM1.cdsAsoX.RecordCount > 0 Then
   Begin
       xDias:=0;
       DM1.cdsAsoX.First;
       While Not DM1.cdsAsoX.Eof Do
       Begin
          If DM1.cdsAsoX.FieldByName('CREFPAG').AsDateTime > DM1.cdsAsoX.FieldByName('CREFVEN').AsDateTime  Then
              xDias:=xDias + DaysBetween(DM1.cdsAsoX.FieldByName('CREFPAG').AsDateTime,DM1.cdsAsoX.FieldByName('CREFVEN').AsDateTime);

          DM1.cdsAsoX.Next;
       End;
       If xDias<31 Then Result:='1'
       Else If (xDias>30) AND (xDias<181) Then Result:='2'
       Else If (xDias >180) AND (xDias<361) Then  Result:='3'
       Else If xDias >360 Then  Result:='4';
   End
Else
   Begin
       Result:='1';
   End;
DM1.cdsAsoX.Close;
end;

function TFOtorPre.AsoClfPen(xAsoid, xPeriodo: String): Char;
var xSQL:String;
    xCuotas:Integer;
begin
DM1.cdsAsoX.Close;
xSQL:='SELECT A.ASOID,A.CREDID,A.CRECUOTA,A.CREFPAG CREFPAG,CREFVEN,B.CREESTID,A.CREMTO,A.CREMTOCOB '+
      'FROM CRE302 A,CRE301 B '+
      'WHERE A.ASOID='+QuotedStr(xAsoId)+' AND A.ASOID=B.ASOID AND B.CREDID=A.CREDID AND B.CREESTID=''02'' AND TO_CHAR(CREFVEN,''YYYYMM'')<'+QuotedStr(xPeriodo)+' AND A.CREESTID IN (''02'',''27'',''11'') AND CREFOTORG>''31/12/1999'' '+
      'ORDER BY ASOID,CREDID,CRECUOTA';
DM1.cdsAsoX.DataRequest(xSQL);
DM1.cdsAsoX.Open;
If DM1.cdsAsoX.RecordCount > 0 Then
   Begin
       xCuotas:=0;
       DM1.cdsAsoX.First;
       While Not DM1.cdsAsoX.Eof Do
       Begin
          xCuotas:=xCuotas + 1 ;
          DM1.cdsAsoX.Next;
       End;
       If xCuotas=0 Then Result:='A'
       Else If (xCuotas>0) AND (xCuotas<3) Then Result:='B'
       Else If (xCuotas>2) AND (xCuotas<5) Then  Result:='C'
       Else If (xCuotas>4) AND (xCuotas<7) Then  Result:='D'
       Else If xCuotas>6 Then Result:='E';
   End
Else
   Begin
       Result:='A';
   End;
DM1.cdsAsoX.Close;
end;

procedure TFOtorPre.Img04Click(Sender: TObject);
begin
MstClfAso(xClfAso);
end;

procedure TFOtorPre.Img03Click(Sender: TObject);
begin
MstClfAso(xClfAso);
end;

procedure TFOtorPre.Img02Click(Sender: TObject);
begin
MstClfAso(xClfAso);
end;

procedure TFOtorPre.Img01Click(Sender: TObject);
begin
MstClfAso(xClfAso);
end;


procedure TFOtorPre.pnlCalificacionClick(Sender: TObject);
begin
MstClfAso(xClfAso);
end;

procedure TFOtorPre.MstClfAso(xClfAso: String);
begin
end;

function TFOtorPre.Busca302(xAsoId, xCreDid: String): String;
begin
DM1.cdsCEdu.Close;
DM1.cdsCEdu.DataRequest('SELECT ASOID,CREDID,CRECUOTA FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))) ;
DM1.cdsCEdu.Open;
If DM1.cdsCEdu.RecordCount > 0 Then
   Result:='S'
Else
   Result:='N';

DM1.cdsCEdu.Close;


end;

procedure TFOtorPre.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_F8 then
     Begin
       z2bbtnImprime.OnClick(z2bbtnImprime);
     End;

end;

procedure TFOtorPre.dtgPrestamosKeyPress(Sender: TObject; var Key: Char);
begin
   If Key=#13 Then
      dtgPrestamos.OnDblClick(dtgPrestamos)

end;

procedure TFOtorPre.FormCreate(Sender: TObject);
begin
//DM1.BlqComponentes(Self);
end;

procedure TFOtorPre.BitMstApoClick(Sender: TObject);
begin
  Try
    fRegApor := TfRegApor.create(self);
    fRegApor.Showmodal;
  Finally
    fRegApor.free;
  End;

end;


function TFOtorPre.CalculaEdad(FechaNacimiento: string): integer;
var
    iTemp,iTemp2,Nada:word;
    xFecha,yFecha:TDate;
begin
    yFecha:=DM1.FechaSys;
    xFecha:=StrToDate(FechaNacimiento);
    DecodeDate(yFecha,itemp,Nada,Nada);
    DecodeDate(xFecha,itemp2,Nada,Nada);
     if FormatDateTime('mmdd',yFecha) <
        FormatDateTime('mmdd',xFecha) then Result:=iTemp-iTemp2-1
                                     else Result:=iTemp-iTemp2;
end;

procedure TFOtorPre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsAgencias.Close;
   Action := caFree;
end;

end.

