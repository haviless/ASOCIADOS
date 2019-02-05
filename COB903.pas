unit COB903;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, ExtCtrls, ppParameter, ppModule,
  daDataModule, ppEndUsr;

type
  TfCronoPag = class(TForm)
    gBPagos: TGroupBox;
    dtgPagos: TwwDBGrid;
    BitSalir: TBitBtn;
    ppDBEstCta: TppDBPipeline;
    GroupBox2: TGroupBox;
    BitPrint: TBitBtn;
    ChkFoto: TCheckBox;
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdtDesUse: TEdit;
    EdtFecDes: TEdit;
    EdtCodMod: TEdit;
    EdtNomGen: TEdit;
    EdtFecPre: TEdit;
    EdtCreDid: TEdit;
    EdtDesTip: TEdit;
    Panel2: TPanel;
    EdtMonto: TEdit;
    EdtNumCuo: TEdit;
    EdtMoneda: TEdit;
    lblEstado: TLabel;
    DbOfides: TppDBPipeline;
    RepOfides: TppReport;
    ppHeaderBand29: TppHeaderBand;
    lblPerEnc: TppLabel;
    ppLabel599: TppLabel;
    ppLabel600: TppLabel;
    ppLabel601: TppLabel;
    ppLabel602: TppLabel;
    ppLabel603: TppLabel;
    ppSystemVariable56: TppSystemVariable;
    ppSystemVariable57: TppSystemVariable;
    ppSystemVariable58: TppSystemVariable;
    ppLabel604: TppLabel;
    ppLabel605: TppLabel;
    ppLabel606: TppLabel;
    ppDBText251: TppDBText;
    ppDBText252: TppDBText;
    ppDetailBand31: TppDetailBand;
    ppShape8: TppShape;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText255: TppDBText;
    ppDBText257: TppDBText;
    ppDBText258: TppDBText;
    ppDBText259: TppDBText;
    ppLabel590: TppLabel;
    ppLabel591: TppLabel;
    ppLabel592: TppLabel;
    ppLabel593: TppLabel;
    ppDBText256: TppDBText;
    ppDBText249: TppDBText;
    ppDBText250: TppDBText;
    ppLabel594: TppLabel;
    ppLabel595: TppLabel;
    ppFooterBand24: TppFooterBand;
    ppSummaryBand29: TppSummaryBand;
    ppShape9: TppShape;
    ppLabel610: TppLabel;
    ppLabel613: TppLabel;
    ppDBCalc217: TppDBCalc;
    lblUse: TppLabel;
    lblProc: TppLabel;
    lblTipAso: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppShape1: TppShape;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppREstCta: TppReport;
    //Inicio: HPP_200911_ASO por DFERNANDEZ
    ppParameterList1: TppParameterList;
    ppDesigner1: TppDesigner;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLabel21: TppLabel;
    ppLblCodMod: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    pplblTipCre: TppLabel;
    pplblNomGen: TppLabel;
    pplblNumPre: TppLabel;
    ppLabel25: TppLabel;
    pplblFecPre: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    pplblUse: TppLabel;
    pplblMonto: TppLabel;
    ppLabel28: TppLabel;
    pplblNumCuo: TppLabel;
    ppLabel29: TppLabel;
    pplblTipCli: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppShpImg: TppShape;
    ppImage1: TppImage;
    ppLabel20: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLblInt: TppLabel;
    ppLblFlat: TppLabel;
    ppLine5: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLblCuenta: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLblOriOto: TppLabel;
    pplblRotulo: TppLabel;
    pplblRot02: TppLabel;
    ppLblTipDes: TppLabel;
    ppLblEstado: TppLabel;
    ppLblCuotas: TppLabel;
    ppLabel76: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel58: TppLabel;
    ppLabel71: TppLabel;
    ppLabel70: TppLabel;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    pplblTipCliOtorg: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine6: TppLine;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel2: TppLabel;
    lblSalTot: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLblCuoVen: TppLabel;
    pplblCuoPen: TppLabel;
    ppLabel32: TppLabel;
    pplblMonPag: TppLabel;
    ppLNota1: TppLabel;
    ppLine7: TppLine;
    ppLabel43: TppLabel;
    ppLabel46: TppLabel;
    ppLabel45: TppLabel;
    ppLabel44: TppLabel;
    ppLblUser: TppLabel;
    ppDBCalc6: TppDBCalc;
    ppLblApro: TppLabel;
    ppLNota2: TppLabel;
    ppLabel33: TppLabel;
    lblVen: TppLabel;
    lblPen: TppLabel;
    lblTot: TppLabel;
    ppLabel69: TppLabel;
    ppLabel75: TppLabel;
    ppLabel74: TppLabel;
    ppLabel73: TppLabel;
    ppLabel72: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLblCuoDif: TppLabel;
    lblDif: TppLabel;
    ppLblDesg: TppLabel;
    ppLabel82: TppLabel;
    ppLabel81: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppDBText11: TppDBText;
    ppDBCalc7: TppDBCalc;
    //Fin: HPP_200911_ASO por DFERNANDEZ
    procedure BitSalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgPagosDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure BitPrintClick(Sender: TObject);
  private
    { Private declarations }
    function vrfMarca(xDataSet:tDataSet):String;

  public
    { Public declarations }
     procedure LimpiaFlgvar(xAsoId,xCreDid:String);
     procedure GrabaFlgvar(xAsoId,xCreDid,xCreCuota:String);

  end;

var
  fCronoPag: TfCronoPag;

implementation

uses  ASODM, ASO900, ASO908, ASO260;

{$R *.dfm}

procedure TfCronoPag.BitSalirClick(Sender: TObject);
Var xCredid: String;
begin
 Close;
end;

procedure TfCronoPag.FormCreate(Sender: TObject);
begin
 dtgPagos.SetControlType('FLAGVAR',fctCheckBox, 'S;N');
end;

procedure TfCronoPag.GrabaFlgvar(xAsoId, xCreDid, xCreCuota: String);
begin

DM1.cdsQry3.Close;
DM1.cdsQry3.DataRequest('SELECT ASOID,CREDID,CRECUOTA,FLAGVAR FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' AND CRECUOTA='+QuotedStr(Trim(xCreCuota))+' AND FLAGVAR=''S'' ');
DM1.cdsQry3.Open;
If DM1.cdsQry3.RecordCount=1 Then
   Begin
    DM1.cdsQry3.Edit;
    DM1.cdsQry3.FieldByName('FLAGVAR').AsString:=' ';
    DM1.cdsQry3.ApplyUpdates(0);
   End;
DM1.cdsQry3.Close;
end;

procedure TfCronoPag.LimpiaFlgvar(xAsoId, xCreDid: String);
Var xCreCuota:String;
begin
DM1.cdsQry2.Close;
DM1.cdsQry2.DataRequest('SELECT ASOID,CREDID,CRECUOTA,FLAGVAR FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' AND FLAGVAR=''S'' ') ;
DM1.cdsQry2.Open;
If DM1.cdsQry2.RecordCount > 0 Then
   Begin
      DM1.cdsQry2.First;
      While Not DM1.cdsQry2.Eof Do
      Begin
         xCreCuota:=DM1.cdsQry2.FieldByName('CRECUOTA').AsString;
         GrabaFlgvar(xAsoId, xCreDid, xCreCuota);
         DM1.cdsQry2.Next;
      End;
   End;
DM1.cdsQry2.Close;

end;

procedure TfCronoPag.FormActivate(Sender: TObject);
// Inicio: DPP_201208_ASO
Var
   xCrecapital,xCremtoint,xCremtoflat,xCremtocob,xCremto, xCreSegDes :Currency ;
   xAsoId,xCreDid:String;
// Fin: DPP_201208_ASO
begin
// Inicio: DPP_201208_ASO
   xAsoId:=DM1.cdsCuotas.FieldByName('ASOID').AsString;
   xCredId:=DM1.cdsCuotas.FieldByName('CREDID').AsString;
   xCremtoint:=0;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest('SELECT SUM(CRECAPITAL) AS CRECAPITAL, SUM(CREMTOINT) AS CREMTOINT, SUM(CREMTOFLAT) AS CREMTOFLAT, '
                         +'       SUM(NVL(MONCOBDESGRAV,0)) AS MONCOBDESGRAV, '
                         +'       SUM(CREMTOCOB)  AS CREMTOCOB,  SUM(CREMTO)    AS CREMTO '
                         +'  FROM CRE302 '
                         +' WHERE ASOID='+QuotedStr(Trim(xAsoId))
                         +'   AND CREDID='+QuotedStr(Trim(xCreDid))
                         +' Group By ASOID,CREDID');
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
      xCrecapital:= DM1.cdsQry.fieldbyname('CRECAPITAL').AsCurrency;
      xCremtoint := DM1.cdsQry.fieldbyname('CREMTOINT').AsCurrency;
      xCremtoflat:= DM1.cdsQry.fieldbyname('CREMTOFLAT').AsCurrency;
      xCreSegDes:= DM1.cdsQry.fieldbyname('MONCOBDESGRAV').AsCurrency;
      xCremtocob := DM1.cdsQry.fieldbyname('CREMTOCOB').AsCurrency;
      xCremto    := DM1.cdsQry.fieldbyname('CREMTO').AsCurrency;
   End
   Else
   Begin
      xCrecapital:= 0 ; xCremtoint := 0 ; xCremtoflat:= 0 ; xCremtocob := 0 ; xCremto    := 0 ;
   End;

   DM1.cdsQry.Close;

   dtgPagos.ColumnByName('CREFVEN').FooterValue :='Total';
   dtgPagos.ColumnByName('CRECAPITAL').FooterValue := FloatToStrF(xCrecapital,ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTOINT').FooterValue := FloatToStrF(xCremtoint,ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTOFLAT').FooterValue := FloatToStrF(xCremtoflat,ffNumber, 10, 2);
   dtgPagos.ColumnByName('MONCOBDESGRAV').FooterValue := FloatToStrF(xCreSegDes,ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTOCOB').FooterValue := FloatToStrF(xCremtocob,ffNumber, 10, 2);
   dtgPagos.ColumnByName('CREMTO').FooterValue := FloatToStrF(xCremto,ffNumber, 10, 2);
// Fin: DPP_201208_ASO
end;

function TfCronoPag.vrfMarca(xDataSet: tDataSet): String;
var xMarca:String;
begin
xMarca:='N';
xDataSet.First;
While Not xDataSet.Eof Do
Begin
   If xDataSet.FieldByName('FLAGVAR').AsString='S' Then
      Begin
        xMarca:='S';
        Result:=xMarca;
      End;
      xDataSet.Next;
End;
Result:=xMarca;
end;

procedure TfCronoPag.dtgPagosDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if (DM1.cdsCuotas.FieldByName('CREESTID').AsString='21') Or
     (DM1.cdsCuotas.FieldByName('CREESTID').AsString='23') Or
     (DM1.cdsCuotas.FieldByName('CREESTID').AsString='26') or
     (DM1.cdsCuotas.FieldByName('CREESTID').AsString='24') Then
     begin
        dtgPagos.Canvas.Font.Color := clGreen;
        dtgPagos.DefaultDrawDataCell(rect,Field,State);
      end;

  if (DM1.cdsCuotas.FieldByName('CREESTID').AsString='12') Or
     (DM1.cdsCuotas.FieldByName('CREESTID').AsString='22') Or
     (DM1.cdsCuotas.FieldByName('CREESTID').AsString='29') Then
     begin
        dtgPagos.Canvas.Font.Color := $00FF5BFF;
        dtgPagos.DefaultDrawDataCell(rect,Field,State);
      end;

  If (DM1.cdsCuotas.FieldByName('CREESTID').AsString='13') Or
     (DM1.cdsCuotas.FieldByName('CREESTID').AsString='04') Then
     begin
        dtgPagos.Canvas.Font.Color := clRed;
        dtgPagos.DefaultDrawDataCell(rect,Field,State);
      end;


end;

procedure TfCronoPag.BitPrintClick(Sender: TObject);
var xAsoId,xCredId,xfVenc,xfCalc :String;
    xSalDif, xSalAnt, xSalVen:Currency;
    xCuoDif, xCuoPen, xCuoVen:Integer;
    xRegistro: TBookmark;
begin
  If dtgPagos.DataSource.DataSet.RecordCount = 0 Then   Exit;
  xRegistro:=DM1.cdsCuotas.GetBookmark;
  DM1.xSgr:='REP';
  xAsoId:=DM1.cdsCuotas.FieldByName('ASOID').AsString;
  xCredId:=DM1.cdsCuotas.FieldByName('CREDID').AsString;
  lblSalTot.Caption:= FormatFloat('###,###.00',DM1.SaldoActual(xAsoId,xCreDid,'1'));
  ppLblCodMod.Caption:=DM1.cdsAso.FieldByName('ASOCODMOD').AsString;
  If Length(Trim(DM1.cdsSolicitud.FieldByName('FLGREFI').AsString))>0 Then
     //Inicio: HPP_200910 Modificado por Daniel Fernández
     pplblTipCre.Caption:=Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString)+'-'+DM1.RecuperaDatos('CRE110','TIPCREID',DM1.cdsSolicitud.FieldByName('TIPCREID').AsString,'TIPCREDES')+'    [REFINANCIADO]'
     //Fin: HPP_200910
  Else
     pplblTipCre.Caption:=Trim(DM1.cdsSolicitud.FieldByName('TIPCREID').AsString)+'-'+DM1.RecuperaDatos('CRE110','TIPCREID',DM1.cdsSolicitud.FieldByName('TIPCREID').AsString,'TIPCREDES')+'    [NORMAL]';

  ppLblEstado.Caption := Trim(lblEstado.Caption);
  pplblNomGen.Caption:=DM1.cdsAso.FieldByName('ASOAPENOMDNI').AsString;
  ppLblCuenta.Caption :=DM1.cdsAso.FieldByName('ASONCTA').AsString+' - ['+DM1.cdsAso.FieldByName('SITCTA').AsString+']';
  //Inicio: HPP_200910 Modificado por Daniel Fernández
  pplblNumPre.Caption:=DM1.cdsSolicitud.FieldByName('CREDID').AsString;
  //Fin: HPP_200910
  pplblFecPre.Caption:=DM1.cdsSolicitud.FieldByName('CREFOTORG').AsString;
  ppLblOriOto.Caption :=Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString,1,2)+' -  '+DM1.CrgDescrip('OFDESID='+QuotedStr(Trim(Copy(DM1.cdsSolicitud.FieldByName('CREDID').AsString,1,2))),'APO110','OFDESNOM');
  pplblUse.Caption:= Trim(EdtDesUse.Text);
  pplblMonto.Caption:= FormatFloat('###,###.#0',DM1.cdsSolicitud.FieldByName('CREMTOOTOR').AsFloat);
  pplblNumCuo.Caption:=FormatFloat('###,###',DM1.cdsSolicitud.FieldByName('CRENUMCUO').AsFloat);
  ppLblInt.Caption := FormatFloat('##0.#0',DM1.cdsSolicitud.FieldByName('CREINTERES').AsFloat);
  ppLblFlat.Caption := FormatFloat('##0.#0',DM1.cdsSolicitud.FieldByName('CREDFLAT').AsFloat);

//Inicio: DPP_201206_CRE
  ppLblDesg.Caption:= FormatFloat('##0.##0',DM1.cdsSolicitud.FieldByName('TASFONDES').AsFloat);
//Fin: DPP_201206_CRE

//Inicio: HPP_200911_ASO - SAR-2009-0481 15/06/2009 - DAD-DF-2009-0035 DANIEL FERNANDEZ 15/06/2009
  pplblTipCliOtorg.Caption := DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString + ' - ' + DM1.RecuperaDatos('APO107','ASOTIPID',DM1.cdsSolicitud.FieldByName('ASOTIPID').AsString,'ASOTIPDES');
//Fin: HPP_200911_ASO

  pplblTipCli.Caption:=DM1.cdsAso.fieldbyname('ASOTIPID').AsString+' - '+DM1.RecuperaDatos('APO107','ASOTIPID',DM1.cdsAso.fieldbyname('ASOTIPID').AsString,'ASOTIPDES');
  ppLblTipDes.Caption :=Trim(DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString)+'-'+DM1.RecuperaDatos('CRE104','TIPDESEID',DM1.cdsSolicitud.FieldByName('TIPDESEID').AsString,'TIPDESEABR');
  DM1.cdsCuotas.First;
  xSalAnt:=0 ; xSalVen:=0; xCuoVen := 0 ; xCuoPen := 0 ;
  xSalDif:=0;  xCuoDif := 0;
  xfCalc  := Trim(Copy(DateToStr(DM1.FechaSys),7,4)+Copy(DateToStr(DM1.FechaSys),4,2));
  While Not DM1.cdsCuotas.Eof Do
  Begin
    If (DM1.cdsCuotas.fieldbyname('CREESTID').AsString='02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString='11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString='27') Then
    Begin
        xfVenc:= Trim(DM1.cdsCuotas.fieldbyname('CREANO').AsString + DM1.cdsCuotas.fieldbyname('CREMES').AsString);
        If (xfVenc > xfCalc) And (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString=DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString) Then
           Begin
            // Inicio DPP_201208_ASO
            // incluye monto de Desgravamen
                xSalAnt := xSalAnt + (DM1.cdsCuotas.fieldbyname('CREAMORT').AsCurrency
                                     +DM1.cdsCuotas.fieldbyname('CREFLAT').AsCurrency
                                     +DM1.cdsCuotas.fieldbyname('MONPACDESGRAV').AsCurrency )
                                   - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency;
            // Fin DPP_201208_ASO
                xCuoPen := xCuoPen + 1 ;
           End
        Else If DM1.cdsCuotas.fieldbyname('CREFVEN').AsString=DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString Then
            Begin
                xSalVen := xSalVen + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
                xCuoVen := xCuoVen + 1;
            End;
        End;
        If (DM1.cdsCuotas.fieldbyname('CREFVEN').AsString<>DM1.cdsCuotas.fieldbyname('CREFVENINI').AsString ) AND ( (DM1.cdsCuotas.fieldbyname('CREESTID').AsString='02') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString='11') Or (DM1.cdsCuotas.fieldbyname('CREESTID').AsString='27') ) Then
        Begin
          xSalDif := xSalDif + (DM1.cdsCuotas.fieldbyname('CREMTO').AsCurrency - DM1.cdsCuotas.fieldbyname('CREMTOCOB').AsCurrency);
          xCuoDif := xCuoDif + 1;
        End;
     DM1.cdsCuotas.Next;
  End;

  lblVen.Caption:='('+FormatFloat('###,##0',xCuoVen)+')';
  lblPen.Caption:='('+FormatFloat('###,##0',xCuoPen)+')';
  lblDif.Caption:='('+FormatFloat('###,##0',xCuoDif)+')';
  lblTot.Caption:='('+FormatFloat('###,##0',xCuoVen+xCuoPen+xCuoDif)+')';
  If DM1.cdsSolicitud.FieldByName('FORPAGOID').AsString = '18' Then ppLNota2.Caption := 'POR EL "BANCO DE LA NACION"' Else ppLNota2.Caption := 'POR "PLANILLA DE HABERES"';
  ppLblCuoVen.Caption:=FormatFloat('###,###.00',xSalVen);
  ppLblCuoDif.Caption:=FormatFloat('###,###.00',xSalDif);
  pplblCuoPen.Caption:=FormatFloat('###,###.00',xSalAnt);
  pplblMonPag.Caption:=FormatFloat('###,###.00',xSalVen+xSalAnt+xSalDif);

  DM1.cdsAbonoCuotas.Close;
  DM1.cdsAbonoCuotas.DataRequest('SELECT COUNT(ASOID) AS CUOPEN FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' AND CREESTID IN (''02'',''11'',''27'') ');
  DM1.cdsAbonoCuotas.Open;
  ppLblCuotas.Caption:='( '+lblTot.Caption+'-Cuotas Por Pagar )';
  DM1.cdsAbonoCuotas.Close;

  DM1.cdsAsoX.Close;
  //Inicio: HPP_200910 Modificado por Daniel Fernández
  DM1.cdsAsoX.DataRequest('SELECT ASOID,CREDID,CRECUOTA,CREFVEN,CREMTO,CASE WHEN CREFVEN<>CREFVENINI THEN ''(D)'' ELSE NULL END AS REPRO ,  '+
                                      'CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREAMORT,0)   ELSE NVL(CRECAPITAL,0)  END AS AMORT, '+
                                      'CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREINTERES,0) ELSE NVL(CREMTOINT,0)   END AS INTER, '+
//Inicio: DPP_201208_ASO
                                      'CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(MONPACDESGRAV,0) ELSE NVL(MONCOBDESGRAV,0) END AS FONDES, '+
//Fin: DPP_201208_ASO
                                      'CASE WHEN NVL(CREMTOCOB,0)=0 THEN NVL(CREFLAT,0)    ELSE NVL(CREMTOFLAT,0)  END AS GASTO, '+
                                      'NVL(CREMTOCOB,0) CREMTOCOB,NVL(CREMTOEXC,0)-NVL(CREAPLEXC,0) CREMTOEXC,CREESTADO '+
                                      'FROM CRE302 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND CREDID='+QuotedStr(Trim(xCreDid))+' ORDER BY CREDID,CRECUOTA');
  //Fin: HPP_200910
  DM1.cdsAsoX.Open;
  ppLblTitulo.Caption:='CRONOGRAMA DE PAGOS N°: '+pplblNumPre.Caption+'  al: '+DateToStr(DM1.FechaSys);
  If ChkFoto.Checked = True Then
     Begin
       ppShpImg.Visible := True;
       ppImage1.Visible := True;
       ppImage1.Picture:= FMantAsociado.ImagAso.Picture;
     End
  Else
     Begin
       ppShpImg.Visible := False;
       ppImage1.Visible := False;
     End;
  ppLblUser.Caption:='Impreso por   : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)),'TGE006','USERNOM');
  ppLblApro.Caption:='Otorgado por  : '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.cdsSolicitud.FieldByName('USUARIO').AsString)),'TGE006','USERNOM');

  ppREstCta.Print;
  ppREstCta.Cancel;
  DM1.cdsAsoX.Close;
  DM1.cdsCuotas.GotoBookmark(xRegistro);
  dtgPagos.SetFocus;
end;

end.

