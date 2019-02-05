unit ASO202B;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO202B
// Formulario           : fRepAvances
// Fecha de Creación    : 29/04/2015
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Reporte de Avances de Hoja de Ruta
// HPC_201504_ASO       : Este pase crea el reporte de Avances de Hoja de Ruta

// Actualizaciones      :

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdblook, Wwdbdlg, wwdbdatetimepicker,DateUtils,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls,wwExport,ShellAPI, ppEndUsr, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCtrls,
  ppVar, jpeg, ppPrnabl, ppCache, ppParameter,ppViewr,pptypes;

type
  TfRepAvances = class(TForm)
    GroupBox1: TGroupBox;
    Label18: TLabel;
    dtpInicio: TwwDBDateTimePicker;
    Label19: TLabel;
    dtpFin: TwwDBDateTimePicker;
    gbColegios: TGroupBox;
    Label1: TLabel;
    dblcdcoddep: TwwDBLookupComboDlg;
    medesdep: TMaskEdit;
    Label2: TLabel;
    dblcdcodpro: TwwDBLookupComboDlg;
    medespro: TMaskEdit;
    Label3: TLabel;
    dblcdcoddis: TwwDBLookupComboDlg;
    medesdis: TMaskEdit;
    GroupBox3: TGroupBox;
    DBGRESHOJARUTA: TwwDBGrid;
    gbTipoCar: TGroupBox;
    cbAfiliacion: TCheckBox;
    cbNoveles: TCheckBox;
    cbFamiliarizada: TCheckBox;
    cbPrecese: TCheckBox;
    bFiltrar: TBitBtn;
    gbResponsables: TGroupBox;
    dblcdResponsable: TwwDBLookupComboDlg;
    mdesResponsable: TMaskEdit;
    rdbColegios: TRadioButton;
    rdbResponsable: TRadioButton;
    dtgExcel: TwwDBGrid;
    wwIButton3: TwwIButton;
    bExportar: TBitBtn;
    bImprimir: TBitBtn;
    RepResumenColegio: TppReport;
    DBPP1: TppDBPipeline;
    PPD1: TppDesigner;
    bSalir: TBitBtn;
    RepResumenAsesor: TppReport;
    ppParameterList1: TppParameterList;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppShape12: TppShape;
    ppLine23: TppLine;
    ppLabel29: TppLabel;
    ppLine24: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLine25: TppLine;
    ppLabel34: TppLabel;
    ppLine26: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel37: TppLabel;
    ppImage2: TppImage;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    ppLine30: TppLine;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLine31: TppLine;
    ppLabel42: TppLabel;
    ppLine32: TppLine;
    ppLabel43: TppLabel;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppDetailBand2: TppDetailBand;
    ppShape13: TppShape;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLine40: TppLine;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppDBText23: TppDBText;
    ppLine45: TppLine;
    ppDBText24: TppDBText;
    ppLine46: TppLine;
    ppDBText25: TppDBText;
    ppLine47: TppLine;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppLine48: TppLine;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppShape14: TppShape;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    pplblSubtitulo1: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppShape6: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape2: TppShape;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel16: TppLabel;
    ppLine6: TppLine;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel19: TppLabel;
    ppImage1: TppImage;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel44: TppLabel;
    ppLine10: TppLine;
    ppLabel45: TppLabel;
    pplblSubtitulo2: TppLabel;
    ppLabel46: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppDetailBand1: TppDetailBand;
    ppShape7: TppShape;
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
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine49: TppLine;
    ppDBText30: TppDBText;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppDBText31: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppShape15: TppShape;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    PPUSUARIOIMP1: TppLabel;
    ppLabel47: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    PPUSUARIOIMP2: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    procedure dblcdcoddepChange(Sender: TObject);
    procedure dblcdcoddepExit(Sender: TObject);
    procedure dblcdcodproChange(Sender: TObject);
    procedure dblcdcodproExit(Sender: TObject);
    procedure dblcdcoddisChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bFiltrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rdbResponsableClick(Sender: TObject);
    procedure rdbColegiosClick(Sender: TObject);
    procedure dblcdResponsableChange(Sender: TObject);
    procedure bExportarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RepResumenColegioPreviewFormCreate(Sender: TObject);
    procedure RepResumenAsesorPreviewFormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure gridColegios();
    procedure actfootColegios();
    procedure gridResponsable();
    procedure actfootResponsable();
  public
    { Public declarations }
  end;

var
  fRepAvances: TfRepAvances;

implementation

uses ASODM, StdConvs;

{$R *.dfm}

procedure TfRepAvances.dblcdcoddepChange(Sender: TObject);
Var xSql:String;
begin
  if dblcdcoddep.Text <>'' then
  begin
  If Length(Trim(dblcdcoddep.Text)) = 2 Then
  begin
     medesdep.Text := DM1.DevuelveValor('APO158', 'DPTODES', 'DPTOID', dblcdcoddep.Text);
     If Trim(medesdep.Text) <> '' Then
     Begin
        xSql := 'SELECT CIUDID, CIUDDES FROM APO123 WHERE DPTOID = '+QuotedStr(dblcdcoddep.Text)+' ORDER BY CIUDID';
        DM1.cdsProvin.Close;
        DM1.cdsProvin.DataRequest(xSql);
        DM1.cdsProvin.Open;
        dblcdcodpro.Selected.Clear;
        dblcdcodpro.Selected.Add('CIUDID'#9'4'#9'Código'#9#9);
        dblcdcodpro.Selected.Add('CIUDDES'#9'15'#9'Descripción'#9#9);
     End;
    dblcdcodpro.Enabled:=true;
  end;
  end
  else
  begin
        dblcdcoddep.Text := '';
        medesdep.Text    := '';
        dblcdcodpro.Text := '';
        medespro.Text    := '';
        dblcdcoddis.Text := '';
        medesdis.Text    := '';
  End;
End;

procedure TfRepAvances.dblcdcoddepExit(Sender: TObject);
begin
  If Trim(dblcdcoddep.Text) = '' Then
  Begin
     medesdep.Text    := '';
     dblcdcodpro.Enabled:=false;
     dblcdcodpro.Text := '';
     medespro.Text    := '';
     dblcdcoddis.Enabled:=false;
     dblcdcoddis.Text := '';
     medesdis.Text    := '';
  End;
end;

procedure TfRepAvances.dblcdcodproChange(Sender: TObject);
Var xSql:String;
begin
  if dblcdcodpro.Text <>'' then
  begin
  If Length(Trim(dblcdcodpro.Text)) = 4 Then
  Begin
     medespro.Text := DM1.DevuelveValor('APO123', 'CIUDDES', 'CIUDID', dblcdcodpro.Text);
     If Trim(medespro.Text) <> '' Then
     Begin
        xSql := 'SELECT ZIPID, ZIPDES FROM APO122 WHERE CIUDID = '+QuotedStr(dblcdcodpro.Text)+' ORDER BY ZIPID';
        DM1.cdsDist.Close;
        DM1.cdsDist.DataRequest(xSql);
        DM1.cdsDist.Open;
        dblcdcoddis.Selected.Clear;
        dblcdcoddis.Selected.Add('ZIPID'#9'6'#9'Código'#9#9);
        dblcdcoddis.Selected.Add('ZIPDES'#9'25'#9'Descripción'#9#9);
     End;
     dblcdcoddis.Enabled:=true;
  End;
  end
  else
  begin
  dblcdcodpro.Text := '';
  medespro.Text    := '';
  dblcdcoddis.Text := '';
  medesdis.Text    := '';
  end;
end;

procedure TfRepAvances.dblcdcodproExit(Sender: TObject);
begin
  If Trim(dblcdcodpro.Text) = '' Then
  Begin
     medespro.Text    := '';
     dblcdcoddis.Enabled:=false;
     dblcdcoddis.Text := '';
     medesdis.Text    := '';
  End;
end;

procedure TfRepAvances.dblcdcoddisChange(Sender: TObject);
Var xSql: String;
begin
  if dblcdcoddis.Text <>'' then
  begin
  If Length(Trim(dblcdcoddis.Text)) = 6 Then
  Begin
     medesdis.Text := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', dblcdcoddis.Text);
     //--Llena Combo Colegio--//
     xSql :='SELECT ACE.NOMCENEDU ||  '' ('' || NVE.NIVEDU_DES || '')'' NOMCENEDU, '
             + '       ACE.CENEDUID '
             + '  FROM ASO_CEN_EDU ACE, NIV_CEN_EDU NVE '
             + ' WHERE ACE.NIVEDU_ID = NVE.NIVEDU_ID(+) '
             + '   AND ACE.UBIGEO_DIR = ' + QuotedStr(dblcdcoddis.Text)
             + ' ORDER BY NOMCENEDU, NIVEDU_DES';
     DM1.cdsColegio.Close;
     DM1.cdsColegio.DataRequest(xSQL);
     DM1.cdsColegio.Open;
  end;
  end
  else
  begin
   dblcdcoddis.Text := '';
   medesdis.Text    := '';
  end;
end;

procedure TfRepAvances.FormActivate(Sender: TObject);
var xsql:string;
begin
    //--Llena Combo Departamento--//
   xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSql);
   DM1.cdsDpto.Open;
   dblcdcoddep.Selected.Clear;
   dblcdcoddep.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
   dblcdcoddep.Selected.Add('DPTODES'#9'15'#9'Descripción'#9#9);
   cbAfiliacion.Checked    := True;
   cbNoveles.Checked       := True;
   cbFamiliarizada.Checked := True;
   cbPrecese.Checked       := True;
   dtpInicio.Date:=StrToDate('01/'+copy(DateToStr(EndOfTheMonth(Date)),4,7));
   dtpFin.Date:=Date;
   rdbColegios.Checked := True;

   //--Llena Combo Responsable--//
   xSql := ' SELECT DISTINCT O.USERID,T.USERNOM FROM ASO_NIV_USU_OTO O   '
            +'   INNER JOIN TGE006 T ON O.USERID=T.USERID  '
            +'   WHERE O.USERNIV=''N1'' --ASESORES '  ;
   DM1.cdsResponsable.Close;
   DM1.cdsResponsable.DataRequest(xSql);
   DM1.cdsResponsable.Open;
   dblcdResponsable.Selected.Clear;
   dblcdResponsable.Selected.Add('USERID'#9'15'#9'UserId'#9#9);
   dblcdResponsable.Selected.Add('USERNOM'#9'15'#9'Nombre'#9#9);
   dblcdResponsable.Text:=DM1.wUsuario;   
   

end;

procedure TfRepAvances.bFiltrarClick(Sender: TObject);
VAR xsql,xSqlWhere,xSqlWhere0,xSqlWhere2,xSqlWhere3,tipo1,tipo2,tipo3,tipo4,xselect,xgroupby,xdesapo1,xdesapo2:String;
begin

     //Consistencia Fecha
     If dtpInicio.Date > dtpFin.Date Then
     Begin
      ShowMessage('Fecha Inicial no debe ser mayor que que la fecha Final');
      screen.Cursor := crDefault;
      exit;
     End;

     If  (dtpInicio.Date> date) or (dtpFin.Date> date) Then
     Begin
       ShowMessage('Las Fechas No deben ser mayor a la fecha actual');
       screen.Cursor := crDefault;       
       exit;
     End;

     xSqlWhere :=' ';
     xSqlWhere0:=' ';
     If rdbColegios.Checked Then
     Begin
       if dblcdcoddep.Text<>'' then  xSqlWhere0 :=' AND SUBSTR(A.UBICOL,1,2)='+QuotedStr(dblcdcoddep.Text);
       if dblcdcodpro.Text<>'' then  xSqlWhere0 := xSqlWhere0 +' AND SUBSTR(A.UBICOL,1,4)='+QuotedStr(dblcdcodpro.Text);
       if dblcdcoddis.Text<>'' then  xSqlWhere0 := xSqlWhere0 +' AND A.UBICOL='+QuotedStr(dblcdcoddis.Text);
     End;

     If rdbResponsable.Checked Then
     Begin
       if dblcdResponsable.Text<>'' then  xSqlWhere0 := ' AND B.CODUSU='+QuotedStr(dblcdResponsable.Text);
     End;

      If rdbColegios.Checked Then
      Begin
         xSelect :=' SELECT DPTOID DPTOID1,MAX(DPTODES) DPTODES ,CIUDID CIUDID1,MAX(CIUDDES) CIUDDES ,ZIPID ZIPID1 ,MAX(ZIPDES) ZIPDES,CODUSUASI CODUSUAS1,COUNT(1) T ';
         xgroupby:=' GROUP BY DPTOID,CIUDID,ZIPID,CODUSUASI ) S ) ';
      End;

      If rdbResponsable.Checked Then
      Begin
         xSelect :=' SELECT CODUSUASI CODUSUAS1,DPTOID DPTOID1,MAX(DPTODES) DPTODES ,CIUDID CIUDID1,MAX(CIUDDES) CIUDDES ,ZIPID ZIPID1 ,MAX(ZIPDES) ZIPDES,COUNT(1) T ';
         xgroupby:=' GROUP BY CODUSUASI,DPTOID,CIUDID,ZIPID  ) S ) ';
      End;

     xSqlWhere :=' AND SUBSTR(A.UBICOL,1,2)=''''''||DPTOID1||'''''' ';
     xSqlWhere := xSqlWhere+' AND SUBSTR(A.UBICOL,1,4)=''''''||CIUDID1||'''''' ';
     xSqlWhere := xSqlWhere+' AND A.UBICOL=''''''||ZIPID1||'''''' ';
     xSqlWhere := xSqlWhere+' AND A.CODUSUASI=''''''||CODUSUAS1||'''''' ';

     xSqlWhere2 :=' AND SUBSTR(A.UBIGEO_DIR,1,2)=''''''||DPTOID1||'''''' ';
     xSqlWhere2 := xSqlWhere2+' AND SUBSTR(A.UBIGEO_DIR,1,4)=''''''||CIUDID1||'''''' ';
     xSqlWhere2 := xSqlWhere2+' AND A.UBIGEO_DIR=''''''||ZIPID1||'''''' ';

     xSqlWhere3 :=' AND SUBSTR(B.UBIGEO_DIR,1,2)=''''''||DPTOID1||'''''' ';
     xSqlWhere3 := xSqlWhere3+' AND SUBSTR(B.UBIGEO_DIR,1,4)=''''''||CIUDID1||'''''' ';
     xSqlWhere3 := xSqlWhere3+' AND B.UBIGEO_DIR=''''''||ZIPID1||'''''' ';

     if cbAfiliacion.Checked=true    then tipo1:=QuotedStr('1') else tipo1:=QuotedStr('0');
     if cbNoveles.Checked=true       then tipo2:=QuotedStr('2') else tipo2:=QuotedStr('0');
     if cbFamiliarizada.Checked=true then tipo3:=QuotedStr('3') else tipo3:=QuotedStr('0');
     if cbPrecese.Checked=true then  tipo4:=QuotedStr('4')      else tipo4:=QuotedStr('0');

     xSqlWhere := xSqlWhere +' AND A.TIPCAR IN ('''+tipo1+''','''+tipo2+''','''+tipo3+''','''+tipo4+''')';
     xSqlWhere0:= xSqlWhere0+' AND A.TIPCAR IN ('+tipo1+','+tipo2+','+tipo3+','+tipo4+')';
     xSqlWhere0:= xSqlWhere0+' AND B.PERASIHOJ>='''+dtpInicio.Text+''' AND B.PERASIHOJ<='''+dtpFin.Text+''' ';


     If (cbAfiliacion.Checked=true) and (cbNoveles.Checked=false) and  (cbFamiliarizada.Checked=false) and (cbPrecese.Checked=false) then
     begin
       xdesapo1:= ',SF_ASO_CAR_ASE_PREVISIONAL(''5'',''2'','''+xSqlWhere+'''  ) COLEASES';
       xdesapo2:= ',SF_ASO_CAR_ASE_PREVISIONAL(''5'',''1'','''+xSqlWhere+'''  ) ASOASES ';
     end
     Else
     begin
       xdesapo1:= ',SF_ASO_CAR_ASE_PREVISIONAL(''2'',''2'','''+xSqlWhere+'''  ) COLEASES';
       xdesapo2:= ',SF_ASO_CAR_ASE_PREVISIONAL(''2'',''1'','''+xSqlWhere+'''  ) ASOASES ';
     end;

 XSQL:= 'SELECT DPTODES,CIUDDES,ZIPDES,CODUSUAS1,TOTCOLE,TOTASO,'
      + 'COLEASIG,COLEASES,ASOASIG,ASOASES,'
      + 'COLEASIG-COLEASES COLEPEND,ASOASIG-ASOASES ASOPEND,ASOASESNOEXITO,'
      + 'ROUND((COLEASES/TOTCOLE)*100,2) COBERCOLE,ROUND((COLEASES/COLEASIG)*100,2) AVANCOLE,'
      + 'CASE WHEN TOTASO=0 Then 0 Else ROUND((ASOASES/TOTASO)*100,2) end COBERASO,'
      + 'ROUND((ASOASES/ASOASIG)*100,2) AVANASO,ROUND((COLEASIG/TOTCOLE)*100,2) ASIGCOL,'
      + 'CASE WHEN TOTASO=0 THEN 0 ELSE ROUND((ASOASIG/TOTASO)*100,2) END ASIGASO,'
      + 'ROUND(((ASOASIG-ASOASES)/ASOASIG)*100,2)PORASOPEND,ROUND((ASOASESNOEXITO/ASOASIG)*100,2)PORASONOEXIT '
      + 'FROM '
      +'('
      +'SELECT DPTOID1,DPTODES,CIUDID1,CIUDDES,ZIPID1,ZIPDES,CODUSUAS1 '
      +',SF_ASO_CAR_ASE_PREVISIONAL(''3'','''','''+xSqlWhere2+'''  ) TOTCOLE'
      +',SF_ASO_CAR_ASE_PREVISIONAL(''1'',''2'','''+xSqlWhere+'''  ) COLEASIG'
      + xdesapo1
      +',SF_ASO_CAR_ASE_PREVISIONAL(''6'','''','''+xSqlWhere3+'''  ) TOTASO'
      +',SF_ASO_CAR_ASE_PREVISIONAL(''1'',''1'','''+xSqlWhere+'''  ) ASOASIG'
      + xdesapo2
      +',SF_ASO_CAR_ASE_PREVISIONAL(''4'',''1'','''+xSqlWhere+'''  ) ASOASESNOEXITO '
      +' From '
      +' ( '
      + xselect
      +' FROM '
      +'(SELECT PROA.DPTOID DPTOIDA,DISA.CIUDID CIUDIDA,DISA.ZIPID ZIPIDA,'
      +'        DEPC.DPTOID,DEPC.DPTODES, PROC.CIUDID, PROC.CIUDDES,DISC.ZIPID,DISC.ZIPDES,'
      +' A.codgen,A.asoid,A.nomaso,A.dniaso,A.codmod, A.fecnac,A.autdes,'
      +' A.email,A.telaso1,A.telaso2,A.diraso,A.ubiaso,A.cenpobaso,A.cenedu,'
      +' A.dircol,A.ubicol,A.cenpobcol,A.nivcenedu,A.ceneduid,A.sitaso,A.tipaso,'
      +' A.usureg,A.fecreg,A.usumod,A.fecmod,A.estasig,A.fecasi,A.codusuasi,A.tipcar,'
      +' A.tipges,A.percar,A.tipubi,A.estreg '
      +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV A, '
      +' ASO_HOJARUTA_MOV B, '
      +' APO158 DEPA,'
      +' APO123 PROA,'
      +' APO122 DISA,'
      +' APO158 DEPC,'
      +' APO123 PROC,'
      +' APO122 DISC '
      +' WHERE B.CODGEN(+) = A.CODGEN '
      +' AND DEPA.DPTOID(+) = SUBSTR(A.UBICOL, 1, 2) '
      +' AND PROA.CIUDID(+) = SUBSTR(A.UBICOL, 1, 4) '
      +' AND DISA.DPTOID(+) = SUBSTR(A.UBICOL, 1, 2) '
      +' AND DISA.CIUDID(+) = SUBSTR(A.UBICOL, 1, 4) '
      +' AND DISA.ZIPID(+)  = A.UBICOL '
      +' AND DEPC.DPTOID(+) = SUBSTR(A.UBICOL, 1, 2) '
      +' AND PROC.DPTOID(+) = SUBSTR(A.UBICOL, 1, 2) '
      +' AND PROC.CIUDID(+) = SUBSTR(A.UBICOL, 1, 4) '
      +' AND DISC.DPTOID(+) = SUBSTR(A.UBICOL, 1, 2) '
      +' AND DISC.CIUDID(+) = SUBSTR(A.UBICOL, 1, 4) '
      +' AND DISC.ZIPID(+)  = A.UBICOL '
      + xSqlWhere0
      +' AND A.CODUSUASI IS NOT NULL '
      +' )  A '
      +xgroupby;


      Screen.Cursor := crHourGlass;
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(XSQL);
      DM1.cdsQry1.Open;

      If DM1.cdsQry1.RecordCount=0 Then
      Begin
        ShowMessage('No existe data para mostrar...');
        screen.Cursor := crDefault; 
        exit;
      End;


      DBGRESHOJARUTA.DataSource := DM1.dsQry1;

      If rdbColegios.Checked then actfootColegios;
      If rdbResponsable.Checked then actfootResponsable;

      screen.Cursor := crDefault;


end;

procedure TfRepAvances.FormCreate(Sender: TObject);
begin
gridColegios;
end;

procedure TfRepAvances.rdbResponsableClick(Sender: TObject);
begin
 If rdbResponsable.Checked Then
 Begin
   gbColegios.Visible := False;
   gbResponsables.Visible := True;
   gridResponsable;
   dm1.cdsQry1.EmptyDataSet;
   actfootResponsable;
 End;
end;

procedure TfRepAvances.rdbColegiosClick(Sender: TObject);
begin
 If rdbColegios.Checked Then
 Begin
   gbColegios.Visible := True;
   gbResponsables.Visible := False;
   gridColegios;
   dm1.cdsQry1.EmptyDataSet;
   actfootColegios;
 End;

end;

procedure TfRepAvances.gridColegios;
var xsql:String;
begin
   DBGRESHOJARUTA.Selected.Clear;
   DBGRESHOJARUTA.Selected.Add('DPTODES'#9'20'#9'Departamento'#9#9);
   DBGRESHOJARUTA.Selected.Add('CIUDDES'#9'20'#9'Provincia'#9#9);
   DBGRESHOJARUTA.Selected.Add('ZIPDES'#9'20'#9'Distrito'#9#9);
   DBGRESHOJARUTA.Selected.Add('CODUSUAS1'#9'15'#9'Asesor'#9#9);
   DBGRESHOJARUTA.Selected.Add('TOTCOLE'#9'10'#9'Total~Colegio'#9#9);
   DBGRESHOJARUTA.Selected.Add('COLEASIG'#9'10'#9'Colegios~Asignado'#9#9);
   DBGRESHOJARUTA.Selected.Add('COLEASES'#9'10'#9'Colegios~Asesorado'#9#9);
   DBGRESHOJARUTA.Selected.Add('TOTASO'#9'10'#9'Total~Docente'#9#9);   
   DBGRESHOJARUTA.Selected.Add('ASOASIG'#9'10'#9'Docentes~Asignado'#9#9);
   DBGRESHOJARUTA.Selected.Add('ASOASES'#9'10'#9'Docentes~Asesorado'#9#9);
   DBGRESHOJARUTA.Selected.Add('COBERCOLE'#9'10'#9'%~Cobertura~Colegio'#9#9);
   DBGRESHOJARUTA.Selected.Add('AVANCOLE'#9'10'#9'%~Avance~Colegio'#9#9);
   DBGRESHOJARUTA.Selected.Add('COBERASO'#9'10'#9'%~Cobertura~Docente'#9#9);   
   DBGRESHOJARUTA.Selected.Add('AVANASO'#9'10'#9'%~Avance~Docente'#9#9);
   DBGRESHOJARUTA.Selected.Add('ASIGCOL'#9'10'#9'%~Asignado~Colegio'#9#9);
   DBGRESHOJARUTA.Selected.Add('ASIGASO'#9'10'#9'%~Asignado~Docente'#9#9);
   DBGRESHOJARUTA.ApplySelected;
   DBGRESHOJARUTA.DataSource := DM1.dsQry1;
   XSQL:='SELECT '' ''DPTODES,'' ''CIUDDES,'' ''ZIPDES,'' ''CODUSUAS1,0 TOTCOLE,0 COLEASIG,0 COLEASES,0 ASOASIG,0 ASOASES,0 COBERCOLE,0 AVANCOLE,0 AVANASO,0 AVANASO,0 ASIGCOL,0 ASIGASO FROM DUAL ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(XSQL);
   DM1.cdsQry1.Open;
end;

procedure TfRepAvances.gridResponsable;
var xsql:String;
begin
   DBGRESHOJARUTA.Selected.Clear;
   DBGRESHOJARUTA.Selected.Add('CODUSUAS1'#9'15'#9'Asesor'#9#9);
   DBGRESHOJARUTA.Selected.Add('DPTODES'#9'20'#9'Departamento'#9#9);
   DBGRESHOJARUTA.Selected.Add('CIUDDES'#9'20'#9'Provincia'#9#9);
   DBGRESHOJARUTA.Selected.Add('ZIPDES'#9'20'#9'Distrito'#9#9);
   DBGRESHOJARUTA.Selected.Add('COLEASIG'#9'10'#9'Colegios~Asignado'#9#9);
   DBGRESHOJARUTA.Selected.Add('COLEASES'#9'10'#9'Colegios~Asesorado'#9#9);
   DBGRESHOJARUTA.Selected.Add('COLEPEND'#9'10'#9'Colegios~Pendientes'#9#9);
   DBGRESHOJARUTA.Selected.Add('ASOASIG'#9'10'#9'Docentes~Asignado'#9#9);
   DBGRESHOJARUTA.Selected.Add('ASOASES'#9'10'#9'Docentes~Asesorado'#9#9);
   DBGRESHOJARUTA.Selected.Add('ASOPEND'#9'10'#9'Docentes~Pendientes'#9#9);
   DBGRESHOJARUTA.Selected.Add('ASOASESNOEXITO'#9'10'#9'Doc.Contac~No Exitoso'#9#9);
   DBGRESHOJARUTA.Selected.Add('AVANCOLE'#9'10'#9'%~Avance~Colegio'#9#9);
   DBGRESHOJARUTA.Selected.Add('AVANASO'#9'10'#9'%~Avance~Docente'#9#9);
   DBGRESHOJARUTA.Selected.Add('PORASOPEND'#9'10'#9'%~Docente~Pendiente'#9#9);
   DBGRESHOJARUTA.Selected.Add('PORASONOEXIT'#9'10'#9'%~Doc.Contac~No Exitoso'#9#9);
   DBGRESHOJARUTA.ApplySelected;
   DBGRESHOJARUTA.DataSource := DM1.dsQry1;
   XSQL:='SELECT '' ''CODUSUAS1,'' ''DPTODES,'' ''CIUDDES,'' ''ZIPDES,0 TOTCOLE,0 COLEASIG,0 COLEASES,0 ASOASIG,0 ASOASES,0 COBERCOLE,0 AVANCOLE,0 AVANASO,0 AVANASO,0 ASIGCOL,0 ASIGASO FROM DUAL ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(XSQL);
   DM1.cdsQry1.Open;

end;

procedure TfRepAvances.dblcdResponsableChange(Sender: TObject);
begin
      if dblcdResponsable.Text<>'' then
      begin
         If DM1.cdsResponsable.Locate('USERID', VarArrayof([dblcdResponsable.Text]), []) Then
         mdesResponsable.Text:= DM1.cdsResponsable.fieldbyname('USERNOM').AsString;
      end
      else
      begin
         mdesResponsable.Text :='';
      end;
end;

procedure TfRepAvances.bExportarClick(Sender: TObject);
begin


  If DM1.cdsQry1.RecordCount=0 Then
  Begin
    ShowMessage('No existe data para mostrar...');
    screen.Cursor := crDefault;    
    exit;
  End;

   dtgExcel.DataSource:=DM1.dsQry1;
   With dtgExcel, dtgExcel.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Ressumen_Hoja_de_Ruta.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dtgExcel.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
end;

procedure TfRepAvances.bImprimirClick(Sender: TObject);
begin

If DM1.cdsQry1.RecordCount=0 Then
Begin
   ShowMessage('No existe data para mostrar...');
   screen.Cursor := crDefault;
   exit;
End;

 pplblSubtitulo1.Caption:='FECHA DE ASIGNACIÓN DE HOJA DE RUTA, DEL '+dtpInicio.Text+' AL '+dtpFin.Text;
 pplblSubtitulo2.Caption:='FECHA DE ASIGNACIÓN DE HOJA DE RUTA, DEL '+dtpInicio.Text+' AL '+dtpFin.Text;
 If rdbColegios.Checked then
 Begin
   PPUSUARIOIMP1.Caption := DM1.wUsuario;
   RepResumenColegio.Print;
   RepResumenColegio.Stop;
 End;

 If rdbResponsable.Checked then
 Begin
   PPUSUARIOIMP2.Caption := DM1.wUsuario;
   RepResumenAsesor.Print;
   RepResumenAsesor.Stop;
 End;


end;


//Actualiza Footer Colegios
procedure TfRepAvances.actfootColegios;
var  xTOTCOLE,xCOLEASIG,xCOLEASES,xASOASIG,xASOASES,xTOTASO :Currency;
begin
  DM1.cdsQry1.EnableControls;
  DM1.cdsQry1.First;
  xTOTCOLE:=0;
  xCOLEASIG:=0;
  xCOLEASES:=0;
  xASOASIG:=0;
  xASOASES:=0;
  xTOTASO:=0;

  WHILE NOT DM1.cdsQry1.Eof do
  Begin
    xTOTCOLE  := xTOTCOLE  + DM1.cdsQry1.FieldByname('TOTCOLE').AsCurrency;
    xCOLEASIG := xCOLEASIG + DM1.cdsQry1.FieldByname('COLEASIG').AsCurrency;
    xCOLEASES := xCOLEASES + DM1.cdsQry1.FieldByname('COLEASES').AsCurrency;
    xASOASIG  := xASOASIG  + DM1.cdsQry1.FieldByname('ASOASIG').AsCurrency;
    xASOASES  := xASOASES  + DM1.cdsQry1.FieldByname('ASOASES').AsCurrency;
    xTOTASO   := xTOTASO   + DM1.cdsQry1.FieldByname('TOTASO').AsCurrency;
    Dm1.cdsQry1.Next;
  End;
   If (xTOTCOLE+xCOLEASIG+xCOLEASES+xASOASIG+xASOASES+xTOTASO=0) Then
        DBGRESHOJARUTA.ColumnByName('ZIPDES').FooterValue := ''
   Else DBGRESHOJARUTA.ColumnByName('ZIPDES').FooterValue := 'Totales :';
   
   DBGRESHOJARUTA.ColumnByName('TOTCOLE').FooterValue := FormatFloat('####,###',  xTOTCOLE);
   DBGRESHOJARUTA.ColumnByName('COLEASIG').FooterValue := FormatFloat('####,###', xCOLEASIG);
   DBGRESHOJARUTA.ColumnByName('COLEASES').FooterValue := FormatFloat('####,###', xCOLEASES);
   DBGRESHOJARUTA.ColumnByName('ASOASIG').FooterValue := FormatFloat('####,###',  xASOASIG);
   DBGRESHOJARUTA.ColumnByName('ASOASES').FooterValue := FormatFloat('####,###',  xASOASES);
   DBGRESHOJARUTA.ColumnByName('TOTASO').FooterValue := FormatFloat('####,###',  xTOTASO);
end;


//Actualiza Footer Responsables
procedure TfRepAvances.actfootResponsable;
var  xCOLEASIG,xCOLEASES,xCOLEPEND,xASOASIG,xASOASES,xASOPEND,xASOASESNOEXITO : Currency;
begin

  DM1.cdsQry1.EnableControls;
  DM1.cdsQry1.First;
  xCOLEASIG       :=0;
  xCOLEASES       :=0;
  xCOLEPEND       :=0;
  xASOASIG        :=0;
  xASOASES        :=0;
  xASOPEND        :=0;
  xASOASESNOEXITO :=0;

  WHILE NOT DM1.cdsQry1.Eof do
  Begin
     xCOLEASIG  := xCOLEASIG + DM1.cdsQry1.FieldByname('COLEASIG').AsCurrency;
     xCOLEASES  := xCOLEASES + DM1.cdsQry1.FieldByname('COLEASES').AsCurrency;
     xCOLEPEND  := xCOLEPEND + DM1.cdsQry1.FieldByname('COLEPEND').AsCurrency;
     xASOASIG   := xASOASIG  + DM1.cdsQry1.FieldByname('ASOASIG').AsCurrency;
     xASOASES   := xASOASES  + DM1.cdsQry1.FieldByname('ASOASES').AsCurrency;
     xASOPEND   := xASOPEND  + DM1.cdsQry1.FieldByname('ASOPEND').AsCurrency;
     xASOASESNOEXITO  := xASOASESNOEXITO + DM1.cdsQry1.FieldByname('ASOASESNOEXITO').AsCurrency;
     Dm1.cdsQry1.Next;
  End;

   If (xCOLEASIG+xCOLEASES+xCOLEPEND+xASOASIG+xASOASES+xASOPEND+xASOASESNOEXITO=0) Then
        DBGRESHOJARUTA.ColumnByName('ZIPDES').FooterValue := ''
   Else DBGRESHOJARUTA.ColumnByName('ZIPDES').FooterValue := 'Totales :';

   DBGRESHOJARUTA.ColumnByName('COLEASIG').FooterValue := FormatFloat('####,###', xCOLEASIG);
   DBGRESHOJARUTA.ColumnByName('COLEASES').FooterValue := FormatFloat('####,###', xCOLEASES);
   DBGRESHOJARUTA.ColumnByName('COLEPEND').FooterValue := FormatFloat('####,###', xCOLEPEND);
   DBGRESHOJARUTA.ColumnByName('ASOASIG').FooterValue := FormatFloat('####,###',  xASOASIG);
   DBGRESHOJARUTA.ColumnByName('ASOASES').FooterValue := FormatFloat('####,###',  xASOASES);
   DBGRESHOJARUTA.ColumnByName('ASOPEND').FooterValue := FormatFloat('####,###',  xASOPEND);
   DBGRESHOJARUTA.ColumnByName('ASOASESNOEXITO').FooterValue := FormatFloat('####,###',  xASOASESNOEXITO);
end;

procedure TfRepAvances.bSalirClick(Sender: TObject);
begin
close;
end;

procedure TfRepAvances.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TfRepAvances.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Dm1.cdsQry1.Close;
Dm1.cdsQry1.IndexFieldNames:='';
DM1.cdsQry1.Filter:='';
DM1.cdsProvin.Close;
DM1.cdsProvin.IndexFieldNames:='';
DM1.cdsProvin.Filter:='';
DM1.cdsDist.Close;
DM1.cdsDist.IndexFieldNames:='';
DM1.cdsDist.Filter:='';
DM1.cdsColegio.Close;
DM1.cdsColegio.IndexFieldNames:='';
DM1.cdsColegio.Filter:='';
DM1.cdsDpto.Close;
DM1.cdsDpto.IndexFieldNames:='';
DM1.cdsDpto.Filter:='';
DM1.cdsResponsable.Close;
DM1.cdsResponsable.IndexFieldNames:='';
DM1.cdsResponsable.Filter:='';
end;

procedure TfRepAvances.RepResumenColegioPreviewFormCreate(Sender: TObject);
begin
  RepResumenColegio.PreviewForm.WindowState:=WsMaximized;
  TppViewer(RepResumenColegio.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

procedure TfRepAvances.RepResumenAsesorPreviewFormCreate(Sender: TObject);
begin
  RepResumenAsesor.PreviewForm.WindowState:=WsMaximized;
  TppViewer(RepResumenAsesor.PreviewForm.Viewer).ZoomSetting:=zs100Percent;
end;

end.
