unit ASO201;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO201
// Formulario           : fAsignaCartera
// Fecha de Creación    : 07/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Asignacion de Cartera de Prevision Social
// Actualizaciones      :
// SPP_201404_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO
// HPC_201407_ASO       : Se permite Visualizar las carteras anteriores.
// SPP_201406_ASO       : Se realiza el pase a producción a partir del HPC_201407_ASO.
// HPC_201412_ASO       : Se pone a null el tipo de ubicacion cuando se desasigna cartera.
// SPP_201407_ASO       : Se realiza el pase a producción a partir del HPC_201412_ASO.
// HPC_201503_ASO       : Se adicion al filtro  CADAPS y Docentes Habilitados y/o Aportes 
// HPC_201504_ASO       : Se adiciona un filtro para FALLECIDOS

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdblook, Wwdbdlg, Buttons, Wwdbigrd, Grids,
  Wwdbgrid, ExtCtrls, Gauges, CommCtrl, ppParameter, ppBands, ppCtrls,
  jpeg, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppRelatv,
  ppDB, ppDBPipe, ppDBBDE, ppComm, ppEndUsr;

type
  TfAsignaCartera = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    GroupBox3: TGroupBox;
    cbAfiliacion: TCheckBox;
    cbNoveles: TCheckBox;
    cbFamiliarizada: TCheckBox;
    cbPrecese: TCheckBox;
    GroupBox4: TGroupBox;
    Label4: TLabel;                                                                                                  
    dblcdResponsable: TwwDBLookupComboDlg;
    mdesResponsable: TMaskEdit;
    mdesTipoGest: TMaskEdit;
    Label7: TLabel;
    bFiltrar: TBitBtn;
    Panel1: TPanel;
    bSalir: TBitBtn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    rbDomicilio: TRadioButton;
    rbColegio: TRadioButton;
    dblcdcoddep: TwwDBLookupComboDlg;
    medesdep: TMaskEdit;
    dblcdcodpro: TwwDBLookupComboDlg;
    medespro: TMaskEdit;
    dblcdcoddis: TwwDBLookupComboDlg;
    medesdis: TMaskEdit;
    Panel3: TPanel;
    pnlAsigna: TPanel;
    bAsigBloque: TBitBtn;
    bAsigUno: TBitBtn;
    bDesAsigBloque: TBitBtn;
    bDesAsigUno: TBitBtn;
    dblcdColegio: TwwDBLookupComboDlg;
    mdesColegio: TMaskEdit;
    dtgAsignacion: TwwDBGrid;
    dtgAsociadoIButton: TwwIButton;
    lblContador: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lblAfiliacion: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    lblNoveles: TLabel;
    Label15: TLabel;
    lblFamili: TLabel;
    lblPrecese: TLabel;
    Label17: TLabel;
    dblTipoGest: TwwDBLookupCombo;
    lblBuscar: TLabel;
    txtColegioAso: TEdit;
    Label6: TLabel;
    mdesEstadoAsig: TMaskEdit;
    dblEstaAsig: TwwDBLookupCombo;
    BitBtn1: TBitBtn;
    bConsolidado: TBitBtn;
    ppDesigner2: TppDesigner;
    ppbdReporteConsolidado: TppBDEPipeline;
    pprReporteConsolidado: TppReport;
    ppParameterList2: TppParameterList;
    ppHeaderBand2: TppHeaderBand;
    ppLabel40: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel41: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppImage2: TppImage;
    ppLine21: TppLine;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLine39: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine40: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine41: TppLine;
    ppLine42: TppLine;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLine56: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDetailBand2: TppDetailBand;
    ppLine43: TppLine;
    ppLine44: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine50: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine53: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine57: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
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
    ppSummaryBand2: TppSummaryBand;
    ppPageStyle1: TppPageStyle;
  //Inicio HPC_201503_ASO
    chkCADAPS: TCheckBox;
    rdgApoReg: TRadioGroup;
  //Final HPC_201503_ASO
  //Inicio HPC_201504_ASO
    dblcFallecidos: TwwDBLookupCombo;
    lblFallecidos: TLabel;
  //Final HPC_201504_ASO
    procedure FormActivate(Sender: TObject);
    procedure dblcdcoddepChange(Sender: TObject);
    procedure dblcdcoddepExit(Sender: TObject);
    procedure dblcdcodproChange(Sender: TObject);
    procedure dblcdcodproExit(Sender: TObject);
    procedure dblcdcoddisChange(Sender: TObject);
    procedure dblcdResponsableChange(Sender: TObject);
    procedure dblcdColegioChange(Sender: TObject);
    procedure Buscar;   
    procedure bFiltrarClick(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure bAsigBloqueClick(Sender: TObject);
    procedure dblcdResponsableExit(Sender: TObject);
    procedure dblcdColegioExit(Sender: TObject);
    procedure bDesAsigBloqueClick(Sender: TObject);
    procedure bAsigUnoClick(Sender: TObject);
    procedure bDesAsigUnoClick(Sender: TObject);
    procedure rbDomicilioClick(Sender: TObject);
    procedure rbColegioClick(Sender: TObject);
    procedure dblTipoGestChange(Sender: TObject);
    procedure dblTipoGestExit(Sender: TObject);
    procedure dblEstaAsigChange(Sender: TObject);
    procedure dblEstaAsigExit(Sender: TObject);
    procedure txtColegioAsoKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bConsolidadoClick(Sender: TObject);
  //Inicio HPC_201504_ASO
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  //Final HPC_201504_ASO
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fAsignaCartera: TfAsignaCartera;
  Var xflg : Integer;
implementation

uses ASODM, ASO201A, wwclient, DB;

{$R *.dfm}



procedure TfAsignaCartera.FormActivate(Sender: TObject);
Var xSql:String;
begin


 //Inicio HPC_201504_ASO
//--Llena combo Fallecidos--//
   xSql := 'SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''FIRMO'' ORDER BY 1 DESC '  ;
   DM1.cdsQry24.Close;
   DM1.cdsQry24.DataRequest(xSql);
   DM1.cdsQry24.Open;
   dblcFallecidos.LookupTable := DM1.cdsQry24;
   dblcFallecidos.LookupField := 'NOMVAL';
   dblcFallecidos.Selected.Clear;
   dblcFallecidos.Selected.Add('NOMVAL'#9'8'#9'Código'#9#9);
   dblcFallecidos.Text:='NO';
 //Final HPC_201504_ASO


   //--Llena Combo Departamento--//
   xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSql);
   DM1.cdsDpto.Open;
   dblcdcoddep.Selected.Clear;
   dblcdcoddep.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
   dblcdcoddep.Selected.Add('DPTODES'#9'15'#9'Descripción'#9#9);

   //--Llena Combo Tipo de Gestion--//
   xSql := ' SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''TIPOGEST'' '  ;
   DM1.cdsTipoGes.Close;
   DM1.cdsTipoGes.DataRequest(xSql);
   DM1.cdsTipoGes.Open;  
   dblTipoGest.Selected.Clear;
   dblTipoGest.Selected.Add('VALDES01'#9'2'#9'Código'#9#9);
   dblTipoGest.Selected.Add('NOMVAL'#9'15'#9'Descripción'#9#9);

   //--Llena Combo Responsable--//
   xSql := ' SELECT DISTINCT O.USERID,T.USERNOM FROM ASO_NIV_USU_OTO O   '
            +'   INNER JOIN TGE006 T ON O.USERID=T.USERID  '
            +'   WHERE O.USERNIV=''N1'' --ASESORES '  ;
   DM1.cdsResponsable.Close;
   DM1.cdsResponsable.DataRequest(xSql);
   DM1.cdsResponsable.Open;
   dblcdResponsable.Selected.Clear;
   dblcdResponsable.Selected.Add('USERID'#9'2'#9'UserId'#9#9);
   dblcdResponsable.Selected.Add('USERNOM'#9'15'#9'Nombre'#9#9); 

   //--Llena Combo Estado--//
   xSql := ' SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''ESTASIGNACION'' '  ;
   DM1.cdsEstadoAsig.Close;
   DM1.cdsEstadoAsig.DataRequest(xSql);
   DM1.cdsEstadoAsig.Open;
   dblEstaAsig.Clear;
   dblEstaAsig.Selected.Add('VALDES01'#9'2'#9'Código'#9#9);
   dblEstaAsig.Selected.Add('NOMVAL'#9'15'#9'Descripción'#9#9);
   dblEstaAsig.Text:='2';


   //--Valores iniciales--//
    rbDomicilio.Checked :=true;
    rbColegio.Checked:= false;
    dblcdcoddis.Enabled:=false;
    dblcdcodpro.Enabled:=false;
    dblcdColegio.Enabled:=false;
    cbAfiliacion.Checked:=true;
    cbNoveles.Checked:=true;
    cbFamiliarizada.Checked:=true;
    cbPrecese.Checked:=true;
    pnlAsigna.Enabled:=false;
    lblContador.Caption := IntToStr(0) + ' Registros ';
    lblAfiliacion.Caption:=IntToStr(0);
    lblNoveles.Caption:='0';
    lblFamili.Caption:='0';
    lblPrecese.Caption:='0';

end;

procedure TfAsignaCartera.dblcdcoddepChange(Sender: TObject);
Var xSql:String;
begin
  if dblcdcoddep.Text <>'' then
  begin
  If Length(Trim(dblcdcoddep.Text))= 2 Then
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
        dblcdColegio.Text:='';
        mdesColegio.Text :='';
        dblcdColegio.Enabled:=false;
  End;
End;

procedure TfAsignaCartera.dblcdcoddepExit(Sender: TObject);
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

procedure TfAsignaCartera.dblcdcodproChange(Sender: TObject);
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
  dblcdColegio.Text:='' ;
  mdesColegio.Text:='';
  dblcdColegio.Enabled:=false;
  end;
end;

procedure TfAsignaCartera.dblcdcodproExit(Sender: TObject);
begin
  If Trim(dblcdcodpro.Text) = '' Then
  Begin
     medespro.Text    := '';
     dblcdcoddis.Enabled:=false;
     dblcdcoddis.Text := '';
     medesdis.Text    := '';
  End;
end;

procedure TfAsignaCartera.dblcdcoddisChange(Sender: TObject);
Var xSql: String;
begin
  if dblcdcoddis.Text <>'' then
  begin
  If Length(Trim(dblcdcoddis.Text)) = 6 Then
  Begin
   medesdis.Text := DM1.DevuelveValor('APO122', 'ZIPDES', 'ZIPID', dblcdcoddis.Text);

   if rbColegio.Checked=true then
   begin
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
        dblcdColegio.LookupTable := DM1.cdsColegio;
        dblcdColegio.LookupField := 'CENEDUID';
        dblcdColegio.Selected.Clear;
        dblcdColegio.Selected.Add('NOMCENEDU'#9'70'#9'Colegio');
        dblcdColegio.Enabled:=true;
   end;
  end ;
  end
  else
  begin
   dblcdcoddis.Text := '';
   medesdis.Text    := '';
   dblcdColegio.Text := '';
   mdesColegio.Text  := '';
   dblcdColegio.Enabled:=false;
  end;
end;

procedure TfAsignaCartera.dblTipoGestChange(Sender: TObject);
begin
   if dblTipoGest.Text<>'' then
   begin
        If DM1.cdsTipoGes.Locate('VALDES01', VarArrayof([dblTipoGest.Text]), []) Then
        mdesTipoGest.Text :=DM1.cdsTipoGes.fieldbyname('NOMVAL').AsString ;
   end
   else
   begin
        mdesTipoGest.Text :='';
   end;
end;

procedure TfAsignaCartera.dblTipoGestExit(Sender: TObject);
begin
     If Trim(dblTipoGest.Text) = '' Then
     mdesTipoGest.Text    := '';
end;

procedure TfAsignaCartera.dblcdResponsableChange(Sender: TObject);
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

procedure TfAsignaCartera.dblcdResponsableExit(Sender: TObject);
begin
    If Trim(dblcdResponsable.Text) = '' Then
     mdesResponsable.Text    := '';
end;

procedure TfAsignaCartera.dblEstaAsigChange(Sender: TObject);
begin
    if dblEstaAsig.Text<>'' then
        begin
                If DM1.cdsEstadoAsig.Locate('VALDES01', VarArrayof([dblEstaAsig.Text]), []) Then
                mdesEstadoAsig.Text:=DM1.cdsEstadoAsig.fieldbyname('NOMVAL').AsString;
        end
        else
        begin
                mdesEstadoAsig.Text :='';
        end;
end;

procedure TfAsignaCartera.dblEstaAsigExit(Sender: TObject);
begin
      If Trim(dblEstaAsig.Text) = '' Then
     mdesEstadoAsig.Text    := '';
end;

procedure TfAsignaCartera.dblcdColegioChange(Sender: TObject);
begin
      mdesColegio.Text := DM1.cdsColegio.fieldbyname('CENEDUID').AsString;
end;

procedure TfAsignaCartera.dblcdColegioExit(Sender: TObject);
begin
    If Trim(dblcdColegio.Text) = '' Then
     mdesColegio.Text    := '';
end;


procedure TfAsignaCartera.rbDomicilioClick(Sender: TObject);
begin
        dblcdcoddep.Text:='';
        dblcdcodpro.Text:='';
        dblcdcoddis.Text:='';
        dblcdColegio.Text:='';
        dblcdcodpro.Enabled:=false;
        dblcdcoddis.Enabled:=false;
        lblBuscar.Caption:='Buscar Asociado:';
        //Inicio HPC_201503_ASO
        chkCADAPS.Enabled := False;
        chkCADAPS.Checked := False;
        //Final HPC_201503_ASO        
end;

procedure TfAsignaCartera.rbColegioClick(Sender: TObject);
begin
        dblcdcoddep.Text:='';
        dblcdcodpro.Text:='';
        dblcdcoddis.Text:='';
        dblcdColegio.Text:='';
        dblcdcodpro.Enabled:=false;
        dblcdcoddis.Enabled:=false;
        lblBuscar.Caption:='Buscar Colegio:';
        //Inicio HPC_201503_ASO
        chkCADAPS.Enabled := True;
        chkCADAPS.Checked := False;
        //Final HPC_201503_ASO        
end;

procedure TfAsignaCartera.Buscar;
Var xSql: String;
Var xSqlsum: String;
Var xSqlWhere : String;
Var tipo1 :String;
Var tipo2 :String;
Var tipo3 :String;
Var tipo4 :String;
Var tipo5 :String;
Var tipo6 :String;
Var xTipoCar :String;
Var xColegio :String;   
begin
        //Inicio: SPP_201406_ASO
       //Obtener el ultimo periodo generado
        xSql:= ' SELECT DISTINCT MAX(TO_DATE(A.PERCAR,''DD/MM/YYYY'')) PERCAR FROM ASO_GENERA_ASIGNA_CARTERA_MOV A';

        DM1.cdsTemp2.Close;
        DM1.cdsTemp2.DataRequest(xSql);
        DM1.cdsTemp2.Open;

        //Consulta Principal
       xSql:=' SELECT ROWNUM,GAC.CODGEN,GAC.PERCAR,GAC.ASOID,GAC.DNIASO,GAC.CODMOD,GAC.NOMASO,GAC.DIRASO,DEPA.DPTODES DEP_ASO,PROVA.CIUDDES PROV_ASO,'
        +' DISA.ZIPABR DIS_ASO,GAC.CENEDU,GAC.DIRCOL,DEPC.DPTODES DEP_COL,PROVC.CIUDDES PROV_COL,DISC.ZIPABR DIS_COL,GAC.TIPCAR,TCAR.NOMVAL TIPO_CAR,'
      //Inicio HPC_201503_ASO
      {
        +' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,GAC.ESTASIG,EASI.NOMVAL EST_ASIG'
        +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
      }
        +' GAC.TIPGES,TGES.NOMVAL TIPO_GEST,GAC.CODUSUASI,GAC.ESTASIG,EASI.NOMVAL EST_ASIG,ASO.ASOAPTSER '
        +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
        +' INNER JOIN APO201  ASO ON GAC.ASOID=ASO.ASOID '
      //Final HPC_201503_ASO
        +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
        +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
        +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
        +'                                                                                                                               '
        +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
        +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)'
        +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL'
        +'                                                                                                                               '
        +' LEFT JOIN ASO_GENERICA_DET TCAR ON TCAR.CODCAB=''TIPOCART'' AND TCAR.VALDES01=GAC.TIPCAR AND TCAR.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB ON TCAB.CODCAB=TCAR.CODCAB AND TCAB.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET TGES ON TGES.CODCAB=''TIPOGEST'' AND TGES.VALDES01=GAC.TIPGES AND TGES.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB2 ON TCAB2.CODCAB=TGES.CODCAB AND TCAB2.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_DET EASI ON EASI.CODCAB=''ESTASIGNACION'' AND EASI.VALDES01=GAC.ESTASIG AND EASI.ESTREG=1'
        +' LEFT JOIN ASO_GENERICA_CAB TCAB3 ON TCAB3.CODCAB=EASI.CODCAB AND TCAB3.ESTREG=1'
        //Inicio HPC_201504_ASO
        +'  LEFT JOIN (SELECT DNI,'
        +'             RESTRICCIONES,'
        +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK3'
        +'             FROM INF_RENIEC_CAP) R ON R.DRK3 = 1'
        +'                              AND R.DNI = GAC.DNIASO'
        //Final HPC_201504_ASO
        +' WHERE GAC.ESTREG=1 AND GAC.PERCAR='+QuotedStr(DM1.cdsTemp2.FieldByName('PERCAR').AsString);
        //Fin: SPP_201406_ASO
       //--Condicionales--//
       if  rbDomicilio.Checked= true then
       begin
        xSqlWhere :=' ';
        if dblcdcoddep.Text<>'' then
                xSqlWhere :=' AND DEPA.DPTOID='+QuotedStr(dblcdcoddep.Text);
        if dblcdcodpro.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND PROVA.CIUDID='+QuotedStr(dblcdcodpro.Text);
        if dblcdcoddis.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND DISA.ZIPID='+QuotedStr(dblcdcoddis.Text);

       end;

       if rbColegio.Checked=true then
       begin
        xSqlWhere :=' ';
        if dblcdcoddep.Text<>'' then
                xSqlWhere :=' AND DEPC.DPTOID='+dblcdcoddep.Text;
        if dblcdcodpro.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND PROVC.CIUDID='+QuotedStr(dblcdcodpro.Text);
        if dblcdcoddis.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND DISC.ZIPID='+QuotedStr(dblcdcoddis.Text);
        if dblcdColegio.Text<>'' then
                xSqlWhere:= xSqlWhere +' AND GAC.CENEDUID='+QuotedStr(mdesColegio.Text);

         //Inicio HPC_201503_ASO
         //Solo aquellos COLEGIOS que tienen almenos UN ASOCIADO SIN CARTA DE AUTORIZACION DE DESCUENTO
         If chkCADAPS.Checked Then
         Begin
         xSqlWhere:='AND 0<(SELECT COUNT(1) ' // ASOID,AUTDES,DEPC.DPTOID,PROVC.DPTOID,DISC.DPTOID,GAC.CENEDU,GAC.CENEDUID
                    +'FROM ASO_GENERA_ASIGNA_CARTERA_MOV A '
                    +'LEFT JOIN APO158  DEPC ON DEPC.DPTOID=SUBSTR(A.UBICOL,1,2) '
                    +'LEFT JOIN APO123  PROVC ON PROVC.DPTOID=SUBSTR(A.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(A.UBICOL,1,4) '
                    +'LEFT JOIN APO122  DISC ON DISC.DPTOID=SUBSTR(A.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(A.UBICOL,1,4) AND DISC.ZIPID=A.UBICOL '
                    +'WHERE A.CENEDUID=GAC.CENEDUID  AND NVL(AUTDES,''N'')=''N'') ';
         End;
         //Final HPC_201503_ASO

        end;
         //Inicio HPC_201503_ASO
          Case rdgApoReg.ItemIndex Of
           0: xSqlWhere:= xSqlWhere +' ';
           1: xSqlWhere:= xSqlWhere+ ' AND NVL(ASO.ASOAPTSER,''N'')=''S''  ';
           2: xSqlWhere:= xSqlWhere+ ' AND NVL(ASO.ASOAPTSER,''N'')=''N''  ';
          End;
         //Final HPC_201503_ASO

         //Inicio HPC_201504_ASO
         if dblcFallecidos.Text<>'' then
         begin
             if dblcFallecidos.Text='SI' then
                    xSqlWhere:=xSqlWhere+' AND (NVL(ASO.FALLECIDO,''N'')=''S'' OR NVL(UPPER(R.RESTRICCIONES),'' '') LIKE ''FALLE%'')';
             if dblcFallecidos.Text='NO' then
                    xSqlWhere:=xSqlWhere+' AND (NVL(ASO.FALLECIDO,''N'')=''N'' AND NVL(UPPER(R.RESTRICCIONES),'' '') NOT LIKE ''FALLE%'')';
         end;
         //Final HPC_201504_ASO

        if cbAfiliacion.Checked=true then
                tipo1:=QuotedStr('1')
        else
        begin
                tipo1:=QuotedStr('0');
        end;
        if cbNoveles.Checked=true then
                tipo2:=QuotedStr('2')
        else
        begin
                tipo2:=QuotedStr('0');
        end;
        if cbFamiliarizada.Checked=true then
                tipo3:=QuotedStr('3')
        else
        begin
                tipo3:=QuotedStr('0');
        end;
        if cbPrecese.Checked=true then
                tipo4:=QuotedStr('4')
        else
        begin
                tipo4:=QuotedStr('0');
        end;
        
        xSqlWhere:= xSqlWhere +' AND GAC.TIPCAR IN ('+tipo1+','+tipo2+','+tipo3+','+tipo4+')';

        if dblTipoGest.Text<>'' then
                 xSqlWhere:= xSqlWhere +' AND GAC.TIPGES='+QuotedStr(dblTipoGest.Text);
        if dblcdResponsable.Text<>'' then
                 xSqlWhere:= xSqlWhere +' AND GAC.CODUSUASI='+QuotedStr(dblcdResponsable.Text);
        if dblEstaAsig.Text<>'' then
                 xSqlWhere:= xSqlWhere +' AND GAC.ESTASIG='+QuotedStr(dblEstaAsig.Text);

        //caja de texto buscar--//
        xColegio:='%'+txtColegioAso.Text+'%';
        if rbDomicilio.Checked=true then
        begin
                if txtColegioAso.Text<>'' then
                         xSqlWhere:= xSqlWhere +'AND GAC.NOMASO LIKE '+QuotedStr(xColegio);
        end;
        if rbColegio.Checked=true then
        begin
                if txtColegioAso.Text<>'' then
                         xSqlWhere:= xSqlWhere +'AND GAC.CENEDU LIKE '+QuotedStr(xColegio);
        end;
        
       //--llenar la Grilla--//
         xSql:=xSql+xSqlWhere;
         DM1.cdsConsultaCartera.Close;
         DM1.cdsConsultaCartera.DataRequest(xSql);
         DM1.cdsConsultaCartera.Open;
         dtgAsignacion.DataSource := DM1.dsConsultaCartera;
         lblContador.Caption := IntToStr(DM1.cdsConsultaCartera.RecordCount) + ' Registros ';

         dtgAsignacion.Selected.Clear;
         dtgAsignacion.Selected.Add('ROWNUM'#9'5'#9'Numero'#9#9);
         dtgAsignacion.Selected.Add('DNIASO'#9'10'#9'D.N.I.'#9#9);
         dtgAsignacion.Selected.Add('CODMOD'#9'12'#9'Cod.Mod'#9#9);
         dtgAsignacion.Selected.Add('NOMASO'#9'15'#9'Nombre Completo'#9#9);
         dtgAsignacion.Selected.Add('DIRASO'#9'15'#9'Dirección'#9#9);
         dtgAsignacion.Selected.Add('DEP_ASO'#9'15'#9'Departamento'#9#9);
         dtgAsignacion.Selected.Add('PROV_ASO'#9'15'#9'Provincia'#9#9);
         dtgAsignacion.Selected.Add('DIS_ASO'#9'15'#9'Distrito'#9#9);
         dtgAsignacion.Selected.Add('CENEDU'#9'18'#9'Centro Educativo'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('DIRCOL'#9'18'#9'Dirección'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('DEP_COL'#9'15'#9'Departamento'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('PROV_COL'#9'15'#9'Provincia'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('DIS_COL'#9'15'#9'Distrito'#9'F'#9'COLEGIO');
         dtgAsignacion.Selected.Add('TIPO_CAR'#9'12'#9'Cartera'#9#9);
         dtgAsignacion.Selected.Add('TIPO_GEST'#9'12'#9'Gestion'#9#9);
         dtgAsignacion.Selected.Add('CODUSUASI'#9'12'#9'Responsable'#9#9);
         dtgAsignacion.Selected.Add('EST_ASIG'#9'12'#9'Est.Asig'#9#9);
         dtgAsignacion.ApplySelected;

         //--Contador de cartera//
         lblAfiliacion.Caption:=IntToStr(0);
         lblNoveles.Caption:='0';
         lblFamili.Caption:='0';
         lblPrecese.Caption:='0';

         xSqlsum:= ' SELECT distinct'
                +' gac.tipcar,COUNT(GAC.TIPCAR) over (partition by GAC.TIPCAR) CANT'
                +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
      //Inicial HPC_201503_ASO
                +' INNER JOIN APO201  ASO ON GAC.ASOID=ASO.ASOID '
      //Final HPC_201503_ASO
                +' LEFT JOIN APO158 DEPA ON DEPA.DPTOID=SUBSTR(GAC.UBIASO,1,2)'
                +' LEFT JOIN APO123 PROVA ON PROVA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND PROVA.CIUDID=SUBSTR(GAC.UBIASO,1,4)'
                +' LEFT JOIN APO122 DISA ON DISA.DPTOID=SUBSTR(GAC.UBIASO,1,2) AND DISA.CIUDID=SUBSTR(GAC.UBIASO,1,4) AND DISA.ZIPID=GAC.UBIASO'
                +'                                                                                                                               '
                +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)  '
                +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)'
                +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL'
                +'                                                                                                                               '
                +' LEFT JOIN ASO_GENERICA_DET TCAR ON TCAR.CODCAB=''TIPOCART'' AND TCAR.VALDES01=GAC.TIPCAR AND TCAR.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB ON TCAB.CODCAB=TCAR.CODCAB AND TCAB.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_DET TGES ON TGES.CODCAB=''TIPOGEST'' AND TGES.VALDES01=GAC.TIPGES AND TGES.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB2 ON TCAB2.CODCAB=TGES.CODCAB AND TCAB2.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_DET EASI ON EASI.CODCAB=''ESTASIGNACION'' AND EASI.VALDES01=GAC.ESTASIG AND EASI.ESTREG=1'
                +' LEFT JOIN ASO_GENERICA_CAB TCAB3 ON TCAB3.CODCAB=EASI.CODCAB AND TCAB3.ESTREG=1'
               //Inicio HPC_201404_ASO
               // +' WHERE GAC.ESTREG=1';
                +'  LEFT JOIN (SELECT DNI,'
                +'             RESTRICCIONES,'
                +'             ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK3'
                +'             FROM INF_RENIEC_CAP) R ON R.DRK3 = 1'
                +'                              AND R.DNI = GAC.DNIASO'
                +' WHERE GAC.ESTREG=1 AND GAC.PERCAR='+QuotedStr(DM1.cdsTemp2.FieldByName('PERCAR').AsString);
              //Final HPC_201404_ASO

          xSqlsum:=xSqlsum+xSqlWhere+'order by gac.tipcar asc';
          DM1.cdsTemp.Close;
          DM1.cdsTemp.DataRequest(xSqlsum);
          DM1.cdsTemp.Open;

          While Not DM1.cdsTemp.Eof Do
          Begin
            Refresh;
            xTipoCar := DM1.cdsTemp.FieldByName('tipcar').AsString;
            if xTipoCar='1' then
                  lblAfiliacion.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='2' then
                  lblNoveles.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='3' then
                  lblFamili.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;
            if xTipoCar='4' then
                  lblPrecese.Caption:= DM1.cdsTemp.FieldByName('CANT').AsString;

            DM1.cdsTemp.Next;
          End;
end;


procedure TfAsignaCartera.bFiltrarClick(Sender: TObject);
begin
        Screen.Cursor := crHourGlass;
        Buscar;
        Screen.Cursor := crDefault;
        pnlAsigna.Enabled:=true;
end;
     
procedure TfAsignaCartera.bSalirClick(Sender: TObject);
begin
        Close;
end;

procedure TfAsignaCartera.bAsigBloqueClick(Sender: TObject);
Var xCodUsu :String;
Var xCodGen :String;
Var xPerCar :String;
Var xSql :String;
Var Boton : Integer;
begin
        xflg:=1;      //uno
        //--Validacion--//
        If dtgAsignacion.DataSource.DataSet.RecordCount = 0 Then
        Begin
               MessageDlg(' No Existe Datos Para ASIGNACIÓN..!!!!', mtError, [mbOk], 0);
               Exit;
        End;

        Try
                fAsignacionResponsable := TfAsignacionResponsable.create(self);
                fAsignacionResponsable.Showmodal;
        Finally
                fAsignacionResponsable.free;
        End;
end;
     
procedure TfAsignaCartera.bAsigUnoClick(Sender: TObject);
Var xCodUsu :String;
Var xCodGen :String;
Var xPerCar :String;
Var xSql :String;
Var Boton : Integer;
begin

        xflg:=2;      //dos  
        If dtgAsignacion.SelectedList.Count = 0 Then
        Begin
               MessageDlg(' No Existe Datos Seleccionados Para ASIGNACIÓN..!!!!', mtError, [mbOk], 0);
               Exit;
        End;
              
        Try
                fAsignacionResponsable := TfAsignacionResponsable.create(self);
                fAsignacionResponsable.Showmodal;
        Finally
                fAsignacionResponsable.free;
        End;
end;

procedure TfAsignaCartera.bDesAsigBloqueClick(Sender: TObject);
var xCodGen : String;
Var xSQL :String;
begin
        If dtgAsignacion.DataSource.DataSet.RecordCount = 0 Then
        Begin
               MessageDlg(' No Existe Datos Para QUITAR ASIGNACIÓN..!!!!', mtError, [mbOk], 0);
               Exit;
        End;

        Screen.Cursor := crHourGlass;
        DM1.cdsConsultaCartera.First;
        While Not DM1.cdsConsultaCartera.Eof Do
        Begin
            Refresh;
            xCodGen := DM1.cdsConsultaCartera.FieldByName('CODGEN').AsString;

            //Actualiza DesAsignacion
            xSQL := ' UPDATE ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
             +'   SET GAC.ESTASIG=2,'
             +'   GAC.CODUSUASI=NULL,'
             +'   GAC.TIPGES=NULL,'
//Inicio: SPP_201407_ASO
             +'   GAC.TIPUBI=NULL,'
//Fin: SPP_201407_ASO
             +'   GAC.USUMOD='+QuotedStr(DM1.wUsuario)+','
             +'   GAC.FECMOD=SYSDATE'
             +'   WHERE GAC.CODGEN='+xCodGen;
             DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            DM1.cdsConsultaCartera.Next;
         End;
         Screen.Cursor := crDefault;
         Buscar;

end;

procedure TfAsignaCartera.bDesAsigUnoClick(Sender: TObject);
Var  i: Integer;
var xCodGen : String;
Var xSQL :String;
begin
       If dtgAsignacion.SelectedList.Count = 0 Then
        Begin
               MessageDlg(' No Existe Datos Seleccionados Para DESASIGNACIÓN..!!!!', mtError, [mbOk], 0);
               Exit;
        End;

      Screen.Cursor := crHourGlass;
      if dtgAsignacion.SelectedList.Count <> 0 then
      begin
      for i := 0 to dtgAsignacion.SelectedList.Count -1 do
       begin
        dtgAsignacion.datasource.dataset.GotoBookmark(dtgAsignacion.SelectedList.items[i]);
        xCodGen := DM1.cdsConsultaCartera.FieldByName('CODGEN').AsString;

         //Actualiza Usuario a que se asigna Flag de asignacion.
            xSQL := ' UPDATE ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
                    +'   SET GAC.ESTASIG=2,'
                    +'   GAC.CODUSUASI=NULL,'
                    +'   GAC.TIPGES=NULL,'
//Inicio: SPP_201407_ASO
                    +'   GAC.TIPUBI=NULL,'
//Fin: SPP_201407_ASO
                    +'   GAC.USUMOD='+QuotedStr(DM1.wUsuario)+','
                    +'   GAC.FECMOD=SYSDATE'
                    +'   WHERE GAC.CODGEN='+xCodGen;
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      end;
    end;
    Screen.Cursor := crDefault;
    Buscar;
end;    

procedure TfAsignaCartera.txtColegioAsoKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     Buscar;
end;

procedure TfAsignaCartera.bConsolidadoClick(Sender: TObject);
Var xSql :String;
begin
       //Inicio: SPP_201406_ASO
       //Obtener el ultimo periodo generado
        xSql:= ' SELECT DISTINCT MAX(TO_DATE(A.PERCAR,''DD/MM/YYYY'')) PERCAR FROM ASO_GENERA_ASIGNA_CARTERA_MOV A';
        DM1.cdsTemp.Close;
        DM1.cdsTemp.DataRequest(xSql);
        DM1.cdsTemp.Open;
       //Fin: SPP_201406_ASO

    xSql:=' SELECT DISTINCT DEPC.DPTODES,PROVC.CIUDDES,DISC.ZIPDES,'
       +' SUM(CASE WHEN GAC.TIPCAR=1 THEN 1 ELSE 0 END) CART_1,'
       +' SUM(CASE WHEN GAC.TIPCAR=2 THEN 1 ELSE 0 END) CART_2,'
       +' SUM(CASE WHEN GAC.TIPCAR=3 THEN 1 ELSE 0 END) CART_3,'
       +' SUM(CASE WHEN GAC.TIPCAR=4 THEN 1 ELSE 0 END) CART_4,'
       +' SUM(1) TOTAL,                                        '
       +' ROUND(SUM(CASE WHEN GAC.ESTASIG=1 THEN 1 ELSE 0 END)/*CANT_ASIG*/*100/SUM(1)/*TOTAL*/,2)||''%''   PORCEN_ASIGNADOS,'
       +' MAX(GAC.FECASI),                                                                                                  '
       +' SUM(CASE WHEN GAC.ESTASIG=2 THEN 1 ELSE 0 END) CANT_NOASIGNADOS,'
       +' ROUND(SUM(CASE WHEN GAC.ESTASIG=2 THEN 1 ELSE 0 END)/*CANT_NOASIGNADOS*/*100/SUM(1)/*TOTAL*/,2)||''%'' PORCEN_NOASIGNADOS,'
       +' SUM(CASE WHEN XH.ESTHOJ=2 THEN 1 ELSE 0 END) CANT_CERRADAS,                                                              '
       +' ROUND(SUM(CASE WHEN XH.ESTHOJ=2 THEN 1 ELSE 0 END)/*CANT_CERRADAS*/*100/SUM(1)/*TOTAL*/,2)||''%'' PORCEN_CERRADAS,          '
       +' SUM(CASE WHEN GAC.ESTASIG=1 THEN 1 ELSE 0 END)/*CANT_ASIG*/-SUM(CASE WHEN XH.ESTHOJ=2 THEN 1 ELSE 0 END)/*CANT_CERRADAS*/ CANT_PEND,'
       +' ROUND((SUM(CASE WHEN GAC.ESTASIG=1 THEN 1 ELSE 0 END)/*CANT_ASIG*/-SUM(CASE WHEN XH.ESTHOJ=2 THEN 1 ELSE 0 END)/*CANT_CERRADAS*/)*100/SUM(1),2)||''%'' PORCEN_PEND'
       +' FROM ASO_GENERA_ASIGNA_CARTERA_MOV GAC                                                                                                                           '
       +' LEFT JOIN APO158 DEPC ON DEPC.DPTOID=SUBSTR(GAC.UBICOL,1,2)                                                                                   '
       +' LEFT JOIN APO123 PROVC ON PROVC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND PROVC.CIUDID=SUBSTR(GAC.UBICOL,1,4)                                          '
       +' LEFT JOIN APO122 DISC ON DISC.DPTOID=SUBSTR(GAC.UBICOL,1,2) AND DISC.CIUDID=SUBSTR(GAC.UBICOL,1,4) AND DISC.ZIPID=GAC.UBICOL                '
       +' LEFT JOIN (SELECT H.ASOID,MAX(H.CODHOJ) FROM ASO_HOJARUTA_MOV H WHERE H.ESTREG=1 GROUP BY H.ASOID) HG ON HG.ASOID=GAC.ASOID               '
       +' LEFT JOIN ASO_HOJARUTA_MOV XH ON XH.ASOID=HG.ASOID                                                                                          '
       +' where GAC.PERCAR='+QuotedStr(DM1.cdsTemp.FieldByName('PERCAR').AsString)                                                                    
       +' GROUP BY DEPC.DPTODES,PROVC.CIUDDES,DISC.ZIPDES,GAC.UBICOL'
       +' ORDER BY 1,2,3';                                                                               


         //--llenar la Grilla--//
         Screen.Cursor := crHourGlass;
         DM1.cdsTemp.Close;
         DM1.cdsTemp.DataRequest(xSql);
         DM1.cdsTemp.Open;

         //--Reporte--//  
         ppbdReporteConsolidado.DataSource:=DM1.dsTemp;
         pprReporteConsolidado.Print;
         //ppDesigner2.Show;
         Screen.Cursor := crDefault;
end;

//Inicio HPC_201504_ASO
procedure TfAsignaCartera.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 DM1.cdsConsultaCartera.Close;
 DM1.cdsConsulta.IndexFieldNames:='';
 DM1.cdsConsulta.Filter:='';
end;
//Final HPC_201504_ASO

end.
