// Inicio Uso Estándares:	01/08/2011
// Unidad		            :	ASO230.pas
// Formulario		        :	FPadronEstadisticas
// Fecha de Creación	  :	28/02/2012
// Autor			          :	Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Permite visualizar las estadísticas de un padrón descargado

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO    : 28/02/2012  DFERNANDEZ Se crea el formulario
// HPC_201211_ASO    : 26/12/2012  DFERNANDEZ Corrección de error de punto flotante
// SPP_201301_ASO    : El pase a producción se realiza sobre la base del HPC_201301_ASO
// HPC_201309_ASO    : La tabla ASO_PAD_DET_HIS se usa para un padrón cerrado, sino ASO_PAD_DET
// SPP_201310_ASO    : Se realiza el pase a producción a partir del HPC_201309_ASO
// SPP_201402_ASO    : Cambio del Logo en Reportes
// SPP_201402_ASO    : Se realiza el pase a producción a partir del HPC_201401_ASO
// HPC_201505_ASO   : Criterios de aceptación de registros duplicados,multiplicados y no duplicados para actualización.
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES

unit ASO230;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ppEndUsr, ppParameter, ppReport, ppStrtch, ppSubRpt, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppComm, ppRelatv,
  ppDB, ppDBPipe, ppDBBDE, DBGrids, Grids, Wwdbigrd, Wwdbgrid, StdCtrls,
// Inicio SPP_201402_ASO    : Cambio del Logo en Reportes
  Buttons, ExtCtrls, CheckLst, Mask, wwdblook, Wwdbdlg, jpeg;
// Fin SPP_201402_ASO    : Cambio del Logo en Reportes

type
  TFPadronEstadisticas = class(TForm)
    rgest: TRadioGroup;
    btnimprime: TBitBtn;
    btnsale: TBitBtn;
    rgtipinc: TRadioGroup;
    dbgprevio: TwwDBGrid;
    btnfiltrar: TBitBtn;
    dtgData: TDBGrid;
    btnaExcel: TBitBtn;
    ppbdereporte: TppBDEPipeline;
    pprregincon: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppShape27: TppShape;
    ppShape29: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppShape24: TppShape;
    ppLabel32: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppShape25: TppShape;
    ppLabel47: TppLabel;
    ppltituloincon: TppLabel;
    ppShape26: TppShape;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppShape28: TppShape;
    ppLabel52: TppLabel;
    ppLabel54: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppDetailBand5: TppDetailBand;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppDBText11: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText22: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine1: TppLine;
    pplimpresopor: TppLabel;
    pprmodificados: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppShape6: TppShape;
    ppLabel23: TppLabel;
    pplnomarc: TppLabel;
    ppLabel25: TppLabel;
    ppShape7: TppShape;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    pplcampomodificado: TppLabel;
    ppLabel24: TppLabel;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel37: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppReport1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    pplnomarc_ne: TppLabel;
    ppLabel68: TppLabel;
    ppltipaso_ne: TppLabel;
    pplanomespad_ne: TppLabel;
    ppLine5: TppLine;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    pprresactpad: TppReport;
    ppTitleBand2: TppTitleBand;
    pplcanregrec: TppLabel;
    pplcanregubi: TppLabel;
    ppLabel94: TppLabel;
    pplcanregnoubi: TppLabel;
    ppLabel124: TppLabel;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    pplanomes: TppLabel;
    pplcanregrecpor: TppLabel;
    pplcanregubipor: TppLabel;
    pplcanregnoubipor: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    pplundgestabar: TppLabel;
    ppLabel42: TppLabel;
    pplcobertura: TppLabel;
    ppLabel44: TppLabel;
    ppLabel48: TppLabel;
    ppLabel53: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel60: TppLabel;
    ppLine3: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine21: TppLine;
    ppDetailBand4: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine20: TppLine;
    ppLine22: TppLine;
    ppFooterBand2: TppFooterBand;
    ppLabel6: TppLabel;
    pplusrproc: TppLabel;
    ppSummaryBand5: TppSummaryBand;
    ppLabel51: TppLabel;
    pplcanregmod_asocodmod: TppLabel;
    pplcanregmod_asocodmod_por: TppLabel;
    ppLabel81: TppLabel;
    pplcanregmod_cargo: TppLabel;
    pplcanregmod_cargo_por: TppLabel;
    ppLabel85: TppLabel;
    pplcanregmod_asocodpago: TppLabel;
    pplcanregmod_asocodpago_por: TppLabel;
    ppLabel89: TppLabel;
    pplcanregmod_useid: TppLabel;
    pplcanregmod_useid_por: TppLabel;
    ppLabel93: TppLabel;
    ppLabel96: TppLabel;
    pplcanregdo: TppLabel;
    ppLabel99: TppLabel;
    ppLabel100: TppLabel;
    ppLabel101: TppLabel;
    pplcanregmod_asoncta: TppLabel;
    pplcanregmod_asoncta_por: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    pplcanregce: TppLabel;
    ppLabel78: TppLabel;
    ppLabel86: TppLabel;
    ppLabel90: TppLabel;
    ppLabel82: TppLabel;
    ppLabel98: TppLabel;
    ppLabel102: TppLabel;
    pplcanregmod: TppLabel;
    pplcanregmod_por: TppLabel;
    pplcanregmodconcre: TppLabel;
    pplcanregmodconcre_por: TppLabel;
    pplcanregmodconaut: TppLabel;
    pplcanregmodconaut_por: TppLabel;
    pplcanregdopor: TppLabel;
    pplcanregcepor: TppLabel;
    ppLabel1: TppLabel;
    pplcanregmod_regpen: TppLabel;
    pplcanregmod_regpen_por: TppLabel;
    ppLabel2: TppLabel;
    pplcanregmod_asoapenom: TppLabel;
    pplcanregmod_asoapenom_por: TppLabel;
    ppLabel3: TppLabel;
    pplcanregmod_colegio: TppLabel;
    pplcanregmod_colegio_por: TppLabel;
    ppLabel12: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel19: TppLabel;
    pplcanregco: TppLabel;
    pplcanregcopor: TppLabel;
    ppLabel26: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    pplcanregmod_carlab: TppLabel;
    pplcanregmod_sitact: TppLabel;
    pplcanregmod_tipser: TppLabel;
    pplcanregmod_carlab_por: TppLabel;
    pplcanregmod_sitact_por: TppLabel;
    pplcanregmod_tipser_por: TppLabel;
    ppParameterList2: TppParameterList;
    ppDesigner1: TppDesigner;
    ppbdInconsistencias: TppBDEPipeline;
    ppbdDetalleUndGes: TppBDEPipeline;
    btnVerErrores: TBitBtn;
    grpInconsistencias: TGroupBox;
    chklstInconsistencias: TCheckListBox;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    dblcddptoid: TwwDBLookupComboDlg;
    edtdptodes: TMaskEdit;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    pplcanregactualiza: TppLabel;
    pplcanregactualizapor: TppLabel;
    pplcanregnoactualiza: TppLabel;
    pplcanregnoactualizapor: TppLabel;
    ppLabel39: TppLabel;
    pplRegionDpto: TppLabel;
    ppLabel40: TppLabel;
    pplTipoAso: TppLabel;
    Label1: TLabel;
    dblcdTipoAso: TwwDBLookupComboDlg;
    edtTipoAso: TMaskEdit;
// Inicio SPP_201402_ASO    : Cambio del Logo en Reportes
    ppImage2: TppImage;
// Inicio HPC_201505_ASO 
    ppLabel11: TppLabel;
    ppLabel41: TppLabel;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
// Fin HPC_201505_ASO 
// Fin SPP_201402_ASO    : Cambio del Logo en Reportes
    procedure btnimprimeClick(Sender: TObject);
    procedure btnsaleClick(Sender: TObject);
    procedure rgestClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure btnaExcelClick(Sender: TObject);
    procedure rgtipincClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVerErroresClick(Sender: TObject);
    procedure dblcddptoidChange(Sender: TObject);
    procedure dblcdTipoAsoChange(Sender: TObject);
    procedure dbgprevioTitleButtonClick(Sender: TObject;
      AFieldName: String);
  private
    { Private declarations }
    Procedure inicializagrid;
  public
    { Public declarations }
    CODPAD: STRING;
  end;

var
  FPadronEstadisticas: TFPadronEstadisticas;

implementation

uses ASODM, ASO163, ASO231;

{$R *.dfm}

procedure TFPadronEstadisticas.btnimprimeClick(Sender: TObject);
Var
   xSql: String;
   xCantTotalInco: integer;
   xCantReg: integer;
   canregrec, canregubi, canregnoubi, canregactualiza, canregnoactualiza: double;
Begin
   If rgest.ItemIndex = 0 Then
   Begin
      if edtTipoAso.Text = '' then
      begin
        MessageDlg('Ingrese el tipo de asociado', mtInformation, [mbOk], 0);
        Exit;
      end;
      
      Screen.Cursor := crHourGlass;
      //Captura las ugeles del padron y luego chequee registro por registro contra el APO201
      xSql := 'SELECT B.USENOM, A.UPROID, A.UPAGOID, A.USEID, 0 CANT_DO, 0 CANT_CE, 0 CANT_CO, 0 CANT_TOT, CANT_PADRON, 0.00 COBERTURA'
        +' FROM (SELECT A.UPROID, A.UPAGOID, A.USEID, SUM(CASE WHEN H.CODITEM IS NULL THEN 0 ELSE 1 END) CANT_PADRON FROM APO101 A LEFT JOIN ASO_PAD_HIS H ON'
        +' A.UPROID = H.UPROID AND A.UPAGOID = H.UPAGOID AND A.USEID = H.USEID';
      if edtTipoAso.Text <> '' then
      begin
        xSql := xSql + ' AND H.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      end;
      xSql := xSql + ' AND H.CODPAD = ' + QuotedStr(CODPAD)
        + ' WHERE NVL(A.FDESHABILITADO,''N'') = ''N''';
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + ' AND A.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      end;
      xSql := xSql + ' GROUP BY A.UPROID, A.UPAGOID, A.USEID) A, APO101 B'
        +' WHERE A.UPROID = B.UPROID AND A.UPAGOID = B.UPAGOID AND A.USEID = B.USEID ORDER BY A.USEID';
      DM1.cdsSobrino.Close;
      DM1.cdsSobrino.DataRequest(xSql);
      DM1.cdsSobrino.Open;
      DM1.cdsSobrino.First;
      While Not DM1.cdsSobrino.Eof Do
      Begin
        xSql := 'SELECT SUM(CAN_DO) CANT_DO, SUM(CAN_CE) CANT_CE, SUM(CAN_CO) CANT_CO, SUM(CAN_TOT) CANT_TOT'
        +' FROM (SELECT CASE WHEN ASOTIPID = ''DO'' THEN 1 ELSE 0 END CAN_DO,'
        +'              CASE WHEN ASOTIPID = ''CE'' THEN 1 ELSE 0 END CAN_CE,'
        +'              CASE WHEN ASOTIPID = ''CO'' THEN 1 ELSE 0 END CAN_CO,'
        +'       CASE WHEN ASOTIPID IN (''DO'',''CE'',''CO'') THEN 1 ELSE 0 END CAN_TOT'
        +'       FROM APO201 WHERE UPROID = '+QuotedStr(DM1.cdsSobrino.FieldByName('UPROID').AsString)
        +'                     AND UPAGOID = '+QuotedStr(DM1.cdsSobrino.FieldByName('UPAGOID').AsString)
        +'                     AND USEID = '+QuotedStr(DM1.cdsSobrino.FieldByName('USEID').AsString)+')';
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest(xSql);
        DM1.cdsQry.Open;
        DM1.cdsSobrino.Edit;
        DM1.cdsSobrino.FieldByName('CANT_DO').AsInteger := DM1.cdsQry.FieldByName('CANT_DO').AsInteger;
        DM1.cdsSobrino.FieldByName('CANT_CE').AsInteger := DM1.cdsQry.FieldByName('CANT_CE').AsInteger;
        DM1.cdsSobrino.FieldByName('CANT_CO').AsInteger := DM1.cdsQry.FieldByName('CANT_CO').AsInteger;
        DM1.cdsSobrino.FieldByName('CANT_TOT').AsInteger := DM1.cdsQry.FieldByName('CANT_TOT').AsInteger;
        //If (DM1.cdsSobrino.FieldByName('CANT_TOT').AsInteger > 0) Then
        //  DM1.cdsSobrino.FieldByName('COBERTURA').AsFloat :=  (DM1.cdsSobrino.FieldByName('CANT_PADRON').AsInteger/DM1.cdsSobrino.FieldByName('CANT_TOT').AsInteger)*100;
        If (dblcdTipoAso.Text = 'DO') And
           (DM1.cdsSobrino.FieldByName('CANT_DO').AsInteger > 0) Then
          DM1.cdsSobrino.FieldByName('COBERTURA').AsFloat :=  (DM1.cdsSobrino.FieldByName('CANT_PADRON').AsInteger/DM1.cdsSobrino.FieldByName('CANT_DO').AsInteger)*100;
        If (dblcdTipoAso.Text = 'CE') And
           (DM1.cdsSobrino.FieldByName('CANT_CE').AsInteger > 0) Then
          DM1.cdsSobrino.FieldByName('COBERTURA').AsFloat :=  (DM1.cdsSobrino.FieldByName('CANT_PADRON').AsInteger/DM1.cdsSobrino.FieldByName('CANT_CE').AsInteger)*100;
        If (dblcdTipoAso.Text = 'CO') And
           (DM1.cdsSobrino.FieldByName('CANT_CO').AsInteger > 0) Then
          DM1.cdsSobrino.FieldByName('COBERTURA').AsFloat :=  (DM1.cdsSobrino.FieldByName('CANT_PADRON').AsInteger/DM1.cdsSobrino.FieldByName('CANT_CO').AsInteger)*100;
        DM1.cdsSobrino.Next;
      End;
      ppbdDetalleUndGes.DataSource := DM1.dsSobrino;
      pplcobertura.Text := dblcdTipoAso.Text;
      pplRegionDpto.Text := edtdptodes.Text;
      pplTipoAso.Text := edtTipoAso.Text;
      
      // INCONSISTENCIAS
      xSql := 'SELECT MAX (B.DESTIPREG) DESCRIPCION, SUM(1) CANT, 0.0 PORC'
      // Inicio: SPP_201310_ASO
        + ' FROM ' + DM1.sTablaLogPadron + ' L, ASO_PAD_TIP_LOG B'
        + ' WHERE'
        + '     L.CODPAD = ' + QuotedStr(CODPAD);
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + ' AND L.CODITEM IN (SELECT D.CODITEM FROM ' + DM1.sTablaPadron + ' D '
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   D.UPROID = USE.UPROID'
         + '   AND D.UPAGOID = USE.UPAGOID'
         + '   AND D.USEID = USE.USEID'
         +' WHERE D.CODPAD = L.CODPAD AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      // Fin: SPP_201310_ASO
        if edtTipoAso.Text <> '' then
        begin
          xSql := xSql + ' AND D.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
        end;
        xSql := xSql + ')';
      end;
      xSql := xSql + '     AND L.CODTIPREG = B.CODTIPREG'
        + ' GROUP BY L.CODTIPREG';
      DM1.cdsQry22.Close;
      DM1.cdsQry22.DataRequest(xSql);
      DM1.cdsQry22.Open;
      xCantTotalInco := 0;
      DM1.cdsQry22.first;
      While Not DM1.cdsQry22.eof Do
      Begin
         xCantTotalInco := xCantTotalInco + DM1.cdsQry22.fieldbyname('CANT').value;
         DM1.cdsQry22.next;
      End;
      DM1.cdsQry22.first;
      While Not DM1.cdsQry22.eof Do
      Begin
         DM1.cdsQry22.edit;
         DM1.cdsQry22.fieldbyname('PORC').value := (DM1.cdsQry22.fieldbyname('CANT').value / xCantTotalInco) * 100;
         DM1.cdsQry22.post;
         DM1.cdsQry22.next;
      End;
      ppbdInconsistencias.DataSource := DM1.dsQry22;
      
      // DOS OPCIONES DE OBTENER LA DATA
      xSql := 'SELECT DISTINCT L.USEID'
         + ' FROM'
         + '   ASO_PAD_HIS L'
         + '     INNER JOIN'
         + '   APO201 A ON'
         + '   L.ASOID = A.ASOID'
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   L.UPROID = USE.UPROID'
         + '   AND L.UPAGOID = USE.UPAGOID'
         + '   AND L.USEID = USE.USEID'
         + ' WHERE L.CODPAD = ' + QuotedStr(CODPAD);
      if edtTipoAso.Text <> '' then
      begin
        xSql := xSql + ' AND L.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      end;
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + '   AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      end;
      xSql := xSql + ' ORDER BY L.USEID';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplundgestabar.Caption := '';
      DM1.cdsQry.First;
      While Not DM1.cdsQry.Eof Do
      Begin
         If pplundgestabar.Caption = '' Then
            pplundgestabar.Caption := DM1.cdsQry.FieldByName('USEID').AsString
         Else
            pplundgestabar.Caption := pplundgestabar.Caption + ', ' + DM1.cdsQry.FieldByName('USEID').AsString;
         DM1.cdsQry.Next;
      End;

      pplusrproc.Caption := DM1.wUsuario;

      {xSQL := 'SELECT DPTOID,DPTODES '
            + '  FROM APO158 '
            + ' WHERE DPTOID = ' + QuotedStr(DM1.cdsCreditos.FieldByName('DPTOID').AsString);
      DM1.cdsDpto.Close;
      DM1.cdsDpto.DataRequest(xSql);
      DM1.cdsDpto.Open;}
      
      pplanomes.Caption := DM1.DesMes(strtoint(Copy(DM1.cdsPadrones.FieldByName('PERIODO').AsString, 5, 2)), 'N') + '-' + Copy(DM1.cdsPadrones.FieldByName('PERIODO').AsString, 1, 4);
      
      //DNIs recibidos
      // Inicio: SPP_201310_ASO
      xSql := 'SELECT COUNT(DISTINCT L.ASODNI) CANREGREC'
        + ' FROM ' + DM1.sTablaPadron + ' L'
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   L.UPROID = USE.UPROID'
         + '   AND L.UPAGOID = USE.UPAGOID'
         + '   AND L.USEID = USE.USEID'
        + ' WHERE L.CODPAD = ' + QuotedStr(CODPAD);
      // Fin: SPP_201310_ASO
      if edtTipoAso.Text <> '' then
      begin
        xSql := xSql + ' AND L.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      end;
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + ' AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      end;
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      canregrec := DM1.cdsQry21.FieldByName('CANREGREC').AsFloat;
      
      //DNIs ubicados en el sistema
      // Inicio: SPP_201310_ASO
      xSql := 'SELECT COUNT(DISTINCT L.ASODNI) UBICADOS'
        + ' FROM ' + DM1.sTablaPadron + ' L'
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   L.UPROID = USE.UPROID'
         + '   AND L.UPAGOID = USE.UPAGOID'
         + '   AND L.USEID = USE.USEID'
        + ' WHERE L.CODPAD = ' + QuotedStr(CODPAD)
        + '   AND L.ASOID IS NOT NULL';
      // Fin: SPP_201310_ASO
      if edtTipoAso.Text <> '' then
      begin
        xSql := xSql + ' AND L.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      end;
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + ' AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      end;
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      canregubi := DM1.cdsQry21.FieldByName('UBICADOS').AsFloat;
      
      //DNIs no ubicados en el sistema
      canregnoubi := canregrec - canregubi;
      
      //DNIs actualizables al sistema
      // Inicio: SPP_201310_ASO
      xSql := 'SELECT COUNT(DISTINCT L.ASODNI) ACTUALIZABLES'
        + ' FROM ' + DM1.sTablaPadron + ' L'
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   L.UPROID = USE.UPROID'
         + '   AND L.UPAGOID = USE.UPAGOID'
         + '   AND L.USEID = USE.USEID'
        + ' WHERE L.CODPAD = ' + QuotedStr(CODPAD)
        + '   AND L.ACTUALIZA = ''S''';
      // Fin: SPP_201310_ASO
      if edtTipoAso.Text <> '' then
      begin
        xSql := xSql + ' AND L.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      end;
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + ' AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      end;
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      canregactualiza := DM1.cdsQry21.FieldByName('ACTUALIZABLES').AsFloat;
      
      //DNIs NO actualizables al sistema
      canregnoactualiza := canregrec - canregactualiza;
      
      pplcanregrec.Caption := FloatToStrF(canregrec, ffNumber, 10, 0);
      pplcanregubi.Caption := FloatToStrF(canregubi, ffNumber, 10, 0);
      pplcanregnoubi.Caption := FloatToStrF(canregnoubi, ffNumber, 10, 0);
      pplcanregactualiza.Caption := FloatToStrF(canregactualiza, ffNumber, 10, 0);
      pplcanregnoactualiza.Caption := FloatToStrF(canregnoactualiza, ffNumber, 10, 0);
      
      xSql := 'SELECT SUM(NVL(CANREGUBI,0)) CANREGUBI, '
         + '       SUM(NVL(CANREGNOUBI,0)) CANREGNOUBI, '
         + '       SUM(NVL(CANREGMOD_ASOCODMOD,0)) CANREGMOD_ASOCODMOD, '
         + '       SUM(NVL(CANREGMOD_CARGO,0)) CANREGMOD_CARGO, '
         + '       SUM(NVL(CANREGMOD_ASOCODPAGO,0)) CANREGMOD_ASOCODPAGO, '
         + '       SUM(NVL(CANREGMOD_ASONCTA,0)) CANREGMOD_ASONCTA,'
         + '       SUM(NVL(CANREGMOD_USEID,0)) CANREGMOD_USEID, '
         + '       SUM(NVL(CANREGMOD_REGPEN,0)) CANREGMOD_REGPEN,'
         + '       SUM(NVL(CANREGMOD_ASOAPENOM,0)) CANREGMOD_ASOAPENOM, '
         + '       SUM(NVL(CANREGMOD_COLEGIO,0)) CANREGMOD_COLEGIO, '
         + '       SUM(NVL(CANREGMOD_CARLAB,0)) CANREGMOD_CARLAB, '
         + '       SUM(NVL(CANREGMOD_TIPSER,0)) CANREGMOD_TIPSER, '
         + '       SUM(NVL(CANREGMOD_SITACT,0)) CANREGMOD_SITACT, '
         + '       SUM(NVL(CANREGMOD,0)) CANREGMOD '
         + '  FROM ( SELECT CASE WHEN ASOID IS NOT NULL THEN 1 ELSE 0 END CANREGUBI, '
         + '                CASE WHEN ASOID IS NULL     THEN 1 ELSE 0 END CANREGNOUBI,'
         + '                CASE WHEN NVL(FLAACTASOCODMOD,''X'')  = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASOCODMOD,'
         + '                CASE WHEN NVL(FLAACTCARGO,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_CARGO,'
         + '                CASE WHEN NVL(FLAACTASOCODPAGO,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASOCODPAGO,'
         + '                CASE WHEN NVL(FLAACTASONCTA,''X'')    = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASONCTA,'
         + '                CASE WHEN NVL(FLAACTUSEID,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_USEID,'
         + '                CASE WHEN NVL(FLAACTREGPEN,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_REGPEN,'
         + '                CASE WHEN NVL(FLAACTASOAPENOM,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASOAPENOM,'
         + '                CASE WHEN NVL(FLAACTCOLEGIO,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_COLEGIO,'
         + '                CASE WHEN NVL(FLAACTCARLAB,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_CARLAB,'
         + '                CASE WHEN NVL(FLAACTTIPSER,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_TIPSER,'
         + '                CASE WHEN NVL(FLAACTSITACT,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_SITACT,'
         + '                CASE WHEN (NVL(FLAACTASOCODMOD,''X'') = ''S'' '
         + '                           OR NVL(FLAACTCARGO,''X'') = ''S'' '
         + '                           OR NVL(FLAACTASOCODPAGO,''X'') = ''S'' '
         + '                           OR NVL(FLAACTASONCTA,''X'') = ''S'' '
         + '                           OR NVL(FLAACTUSEID,''X'') = ''S'' '
         + '                           OR NVL(FLAACTREGPEN,''X'') = ''S'' '
         + '                           OR NVL(FLAACTASOAPENOM,''X'') = ''S'''
         + '                           OR NVL(FLAACTCOLEGIO,''X'') = ''S'''
         + '                           OR NVL(FLAACTCARLAB,''X'') = ''S'''
         + '                           OR NVL(FLAACTTIPSER,''X'') = ''S'''
         + '                           OR NVL(FLAACTSITACT,''X'') = ''S'''
         + '                          )  THEN 1 END CANREGMOD '
         + '           FROM ASO_PAD_HIS L'
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   L.UPROID = USE.UPROID'
         + '   AND L.UPAGOID = USE.UPAGOID'
         + '   AND L.USEID = USE.USEID'
         + '          WHERE L.CODPAD = ' + QuotedStr(CODPAD) ;
      if edtTipoAso.Text <> '' then
      begin
        xSql := xSql + ' AND ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      end;
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + ' AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      end;
       xSql := xSql + ')';
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      pplcanregrecpor.Caption := '100.00';
      // Inicio: SPP_201301_ASO
      if canregrec > 0 then
      begin
        pplcanregubipor.Caption := FloatToStrF((canregubi / canregrec) * 100, ffNumber, 6, 2);
        pplcanregnoubipor.Caption := FloatToStrF((canregnoubi / canregrec) * 100, ffNumber, 6, 2);
        pplcanregactualizapor.Caption := FloatToStrF((canregactualiza / canregrec) * 100, ffNumber, 6, 2);
        pplcanregnoactualizapor.Caption := FloatToStrF((canregnoactualiza / canregrec) * 100, ffNumber, 6, 2);
      end
      else
      begin
        pplcanregubipor.Caption := FloatToStrF(0, ffNumber, 6, 2);
        pplcanregnoubipor.Caption := FloatToStrF(0, ffNumber, 6, 2);
        pplcanregactualizapor.Caption := FloatToStrF(0, ffNumber, 6, 2);
        pplcanregnoactualizapor.Caption := FloatToStrF(0, ffNumber, 6, 2);
      end;
      if canregubi > 0 then
      begin
        pplcanregmod_asocodmod_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_ASOCODMOD').AsFloat / canregubi) * 100, ffNumber, 10, 2);
        pplcanregmod_cargo_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_CARGO').AsFloat / canregubi) * 100, ffNumber, 10, 2);
        pplcanregmod_asocodpago_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_ASOCODPAGO').AsFloat / canregubi) * 100, ffNumber, 10, 2);
        pplcanregmod_useid_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_USEID').AsFloat / canregubi) * 100, ffNumber, 10, 2);
        pplcanregmod_regpen_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_REGPEN').AsFloat / canregubi) * 100, ffNumber, 10, 2);
        pplcanregmod_asoncta_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_ASONCTA').AsFloat / canregubi) * 100, ffNumber, 10, 2);
        pplcanregmod_carlab_por.Caption  := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_CARLAB').AsFloat / canregubi) * 100, ffNumber, 10, 2);
        pplcanregmod_tipser_por.Caption  := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_TIPSER').AsFloat / canregubi) * 100, ffNumber, 10, 2);
        pplcanregmod_sitact_por.Caption  := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_SITACT').AsFloat / canregubi) * 100, ffNumber, 10, 2);
        pplcanregmod_asoapenom_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_ASOAPENOM').AsFloat / canregubi) * 100, ffNumber, 10, 2);
        pplcanregmod_colegio_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_COLEGIO').AsFloat / canregubi) * 100, ffNumber, 10, 2);
      end
      else
      begin
        pplcanregmod_asocodmod_por.Caption := FloatToStrF(0, ffNumber, 10, 2);
        pplcanregmod_cargo_por.Caption := FloatToStrF(0, ffNumber, 10, 2);
        pplcanregmod_asocodpago_por.Caption := FloatToStrF(0, ffNumber, 10, 2);
        pplcanregmod_useid_por.Caption := FloatToStrF(0, ffNumber, 10, 2);
        pplcanregmod_regpen_por.Caption := FloatToStrF(0, ffNumber, 10, 2);
        pplcanregmod_asoncta_por.Caption := FloatToStrF(0, ffNumber, 10, 2);
        pplcanregmod_carlab_por.Caption  := FloatToStrF(0, ffNumber, 10, 2);
        pplcanregmod_tipser_por.Caption  := FloatToStrF(0, ffNumber, 10, 2);
        pplcanregmod_sitact_por.Caption  := FloatToStrF(0, ffNumber, 10, 2);
        pplcanregmod_asoapenom_por.Caption := FloatToStrF(0, ffNumber, 10, 2);
        pplcanregmod_colegio_por.Caption := FloatToStrF(0, ffNumber, 10, 2);
      end;
      pplcanregmod_asocodmod.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_ASOCODMOD').AsFloat, ffNumber, 10, 0);
      pplcanregmod_cargo.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_CARGO').AsFloat, ffNumber, 10, 0);
      pplcanregmod_asocodpago.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_ASOCODPAGO').AsFloat, ffNumber, 10, 0);
      pplcanregmod_useid.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_USEID').AsFloat, ffNumber, 10, 0);
      pplcanregmod_regpen.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_REGPEN').AsFloat, ffNumber, 10, 0);
      pplcanregmod_asoncta.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_ASONCTA').AsFloat, ffNumber, 10, 0);
      pplcanregmod_carlab.Caption  := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_CARLAB').AsFloat, ffNumber, 10, 0);
      pplcanregmod_tipser.Caption  := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_TIPSER').AsFloat, ffNumber, 10, 0);
      pplcanregmod_sitact.Caption  := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_SITACT').AsFloat, ffNumber, 10, 0);
      pplcanregmod_asoapenom.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_ASOAPENOM').AsFloat, ffNumber, 10, 0);
      //pplcanregmod_asoapenom_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_ASOAPENOM').AsFloat / canregubi) * 100, ffNumber, 10, 2);
      pplcanregmod_colegio.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD_COLEGIO').AsFloat, ffNumber, 10, 0);
      //pplcanregmod_colegio_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD_COLEGIO').AsFloat / canregubi) * 100, ffNumber, 10, 2);
      // Fin: SPP_201301_ASO
      
      pplcanregmod.Caption := FloatToStrF(DM1.cdsQry21.FieldByName('CANREGMOD').AsFloat, ffNumber, 10, 0);
      If canregubi > 0 Then
         pplcanregmod_por.Caption := FloatToStrF((DM1.cdsQry21.FieldByName('CANREGMOD').AsFloat / canregubi) * 100, ffNumber, 10, 2)
      Else
         pplcanregmod_por.Caption := '0';
      
      xSql := 'SELECT SUM(NVL(CANREGDOC,0)) CANREGDOC, '
         + '          SUM(NVL(CANREGCES,0)) CANREGCES, '
         + '          SUM(NVL(CANREGCON,0)) CANREGCON '
         + '     FROM (SELECT CASE WHEN A.ASOTIPID = ''DO'' THEN 1 ELSE 0 END CANREGDOC, '
         + '                  CASE WHEN A.ASOTIPID = ''CE'' THEN 1 ELSE 0 END CANREGCES, '
         + '                  CASE WHEN A.ASOTIPID = ''CO'' THEN 1 ELSE 0 END CANREGCON  '
         + '             FROM APO201 A'
         + '            WHERE (A.UPROID, A.UPAGOID, A.USEID) IN (SELECT L.UPROID, L.UPAGOID, L.USEID '
         + '                                                 FROM ASO_PAD_HIS L'
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   L.UPROID = USE.UPROID'
         + '   AND L.UPAGOID = USE.UPAGOID'
         + '   AND L.USEID = USE.USEID'
         + '   WHERE L.CODPAD = ' + QuotedStr(CODPAD);
      if edtTipoAso.Text <> '' then
      begin
        xSql := xSql + ' AND L.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      end;
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + ' AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      end;
      xSql := xSql + ')'
        + '       )';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplcanregdo.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CANREGDOC').AsFloat, ffNumber, 10, 0);
      pplcanregce.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CANREGCES').AsFloat, ffNumber, 10, 0);
      pplcanregco.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CANREGCON').AsFloat, ffNumber, 10, 0);
      
      xCantReg := DM1.cdsQry.FieldByName('CANREGDOC').AsInteger + DM1.cdsQry.FieldByName('CANREGCES').AsInteger + DM1.cdsQry.FieldByName('CANREGCON').AsInteger;
      
      If xCantReg > 0 Then
      Begin
         pplcanregdopor.Caption := FloatToStrF((DM1.cdsQry.FieldByName('CANREGDOC').AsFloat / xCantReg) * 100, ffNumber, 6, 2);
         pplcanregcepor.Caption := FloatToStrF((DM1.cdsQry.FieldByName('CANREGCES').AsFloat / xCantReg) * 100, ffNumber, 6, 2);
         pplcanregcopor.Caption := FloatToStrF((DM1.cdsQry.FieldByName('CANREGCON').AsFloat / xCantReg) * 100, ffNumber, 6, 2);
      End
      Else
      Begin
         pplcanregdopor.Caption := '0.0';
         pplcanregcepor.Caption := '0.0';
         pplcanregcopor.Caption := '0.0';
      End;

      xSql := 'SELECT COUNT(*) CANTIDAD FROM (SELECT ASOID FROM CRE301 WHERE ASOID IN (SELECT L.ASOID FROM ASO_PAD_HIS L'
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   L.UPROID = USE.UPROID'
         + '   AND L.UPAGOID = USE.UPAGOID'
         + '   AND L.USEID = USE.USEID'
         + ' WHERE L.CODPAD = ' + QuotedStr(CODPAD);
      if edtTipoAso.Text <> '' then
      begin
        xSql := xSql + ' AND L.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      end;
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + ' AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      end;
      xSql := xSql + ' AND (NVL(FLAACTASOCODMOD,''X'') = ''S'' OR NVL(FLAACTCARGO,''X'') = ''S'''
        + ' OR NVL(FLAACTASOCODPAGO,''X'') = ''S'' OR NVL(FLAACTUSEID,''X'') = ''S'') GROUP BY ASOID) AND  CREESTID = ''02'' GROUP BY ASOID)';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplcanregmodconcre.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CANTIDAD').AsFloat, ffNumber, 10, 0);

      If canregubi > 0 Then
         pplcanregmodconcre_por.Caption := FloatToStrF((DM1.cdsQry.FieldByName('CANTIDAD').AsFloat / canregubi) * 100, ffNumber, 10, 2)
      Else
         pplcanregmodconcre_por.Caption := '0';

      xSql := 'SELECT COUNT(*) CANTIDAD FROM (SELECT ASOID FROM APO201 WHERE ASOID IN (SELECT ASOID FROM ASO_PAD_HIS L'
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   L.UPROID = USE.UPROID'
         + '   AND L.UPAGOID = USE.UPAGOID'
         + '   AND L.USEID = USE.USEID'
         + ' WHERE L.CODPAD = ' + QuotedStr(CODPAD);
      if edtTipoAso.Text <> '' then
      begin
        xSql := xSql + ' AND L.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      end;
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + ' AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      end;
      xSql := xSql  + ' AND (NVL(FLAACTASOCODMOD,''X'') = ''S'' OR NVL(FLAACTCARGO,''X'') = ''S'''
        + ' OR NVL(FLAACTASOCODPAGO,''X'') = ''S'' OR NVL(FLAACTUSEID,''X'') = ''S'') GROUP BY ASOID)'
        + ' AND NVL(AUTDESAPO,''X'') = ''S'')';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      pplcanregmodconaut.Caption := FloatToStrF(DM1.cdsQry.FieldByName('CANTIDAD').AsFloat, ffNumber, 10, 0);

      If canregubi > 0 Then
         pplcanregmodconaut_por.Caption := FloatToStrF((DM1.cdsQry.FieldByName('CANTIDAD').AsFloat / canregubi) * 100, ffNumber, 10, 2)
      Else
         pplcanregmodconaut_por.Caption := '0';

      Screen.Cursor := crDefault;
      pprresactpad.Print;
   End;

   If rgest.ItemIndex = 1 Then
   Begin
      ppltituloincon.Caption := 'REGISTROS INCONSISTENTES : ' + DM1.cdsPadrones.FieldByName('PERIODO').AsString;
      pprregincon.Print;
   End;

   If rgest.ItemIndex = 2 Then
   Begin
      If DM1.cdsReporte.RecordCount = 0 Then
      Begin
         MessageDlg('No existe información para mostrar', mtError, [mbOk], 0);
         Exit;
      End;
      pplnomarc.Caption := DM1.cdsPadrones.FieldByName('PERIODO').AsString;
      pplcampomodificado.Caption := rgtipinc.Items.Strings[rgtipinc.ItemIndex];
      pprmodificados.Print;
   End;
end;

procedure TFPadronEstadisticas.btnsaleClick(Sender: TObject);
begin
  Close;
end;

procedure TFPadronEstadisticas.rgestClick(Sender: TObject);
begin
   inicializagrid;
   If rgest.ItemIndex = 0 Then
   Begin
      btnfiltrar.Enabled := False;
      btnaExcel.Enabled  := False;
      btnimprime.Enabled := True;
      dbgprevio.Enabled  := False;
      rgtipinc.Visible   := False;
      grpInconsistencias.Visible := false;
      btnVerErrores.Enabled := false;
   End;
  
   If rgest.ItemIndex = 1 Then
   Begin
      btnfiltrar.Enabled := True;
      btnaExcel.Enabled  := False;
      btnimprime.Enabled := False;
      dbgprevio.Enabled  := True;
      rgtipinc.Visible   := False;
      grpInconsistencias.Visible := true;
      grpInconsistencias.Top := 1;
      grpInconsistencias.Left := 291;
      btnVerErrores.Enabled := true;
   End;
  
   If rgest.ItemIndex = 2 Then
   Begin
      btnfiltrar.Enabled := True;
      btnaExcel.Enabled  := False;
      btnimprime.Enabled := False;
      dbgprevio.Enabled  := True;
      rgtipinc.Visible   := True;
      grpInconsistencias.Visible := false;
      btnVerErrores.Enabled := false;
   End;
end;

procedure TFPadronEstadisticas.FormActivate(Sender: TObject);
var
  xSql: string;
begin
  xSql := 'SELECT CODTIPREG, DESTIPREG FROM ASO_PAD_TIP_LOG ORDER BY CODTIPREG';
  DM1.cdsInconsistencia.Close;
  DM1.cdsInconsistencia.DataRequest(xSql);
  DM1.cdsInconsistencia.Open;
  
  chklstInconsistencias.Items.Clear;
  While not DM1.cdsInconsistencia.Eof do
  begin
    chklstInconsistencias.Items.Add(DM1.cdsInconsistencia.FieldByName('CODTIPREG').AsString
      + ' - ' + DM1.cdsInconsistencia.FieldByName('DESTIPREG').AsString);
    
    DM1.cdsInconsistencia.Next;
  end;
  
  xSql := 'SELECT DPTOID, DPTODES FROM TGE158 ORDER BY DPTODES';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcddptoid.Selected.Clear;
  dblcddptoid.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
  dblcddptoid.Selected.Add('DPTODES'#9'17'#9'Descripción'#9#9);
  
  xSql := 'SELECT ASOTIPID, ASOTIPDES FROM APO107 WHERE ASOTIPID IN (''DO'', ''CO'', ''CE'')';
  DM1.cdsTAso.Close;
  DM1.cdsTAso.DataRequest(xSql);
  DM1.cdsTAso.Open;

   If DM1.xSgr = 'I' Then
   Begin
      rgest.ItemIndex    := 1;
      rgtipinc.ItemIndex := -1;
      rgest.Enabled      := False;
      rgtipinc.visible   := False;
   End
   Else
   Begin
      rgtipinc.ItemIndex := 0;
      btnfiltrar.Enabled := False;
      btnaExcel.Enabled  := False;
      btnimprime.Enabled := True;
      dbgprevio.Enabled  := False;
      rgtipinc.visible   := False;
   End;
// Inicio: SPP_201301_ASO
   inicializagrid;
// Fin: SPP_201301_ASO
end;


// Inicio HPC_201505_ASO
procedure TFPadronEstadisticas.btnfiltrarClick(Sender: TObject);
Var
   xSql, xSql2, xSql3: String;
   i: integer;
   // INICIO HPC_201513_ASO
   xsSQLInconsistencia : String;
   // FIN HPC_201513_ASO
Begin
  Screen.Cursor := crHourGlass;
  
  btnaExcel.Enabled := True;
  btnimprime.Enabled := True;
  btnVerErrores.Enabled := false;
  If rgest.ItemIndex = 1 Then
  Begin
      btnVerErrores.Enabled := true;
      // INICIO HPC_201513_ASO
      // Inicio: SPP_201310_ASO
      (*
      xSql := 'SELECT A.CODPAD, A.CODITEM, A.ASODNI, A.ASOCODMOD, A.ASOAPENOM, A.CARGO, A.ASOCODPAGO, A.ASONCTA, A.UPROID, A.UPAGOID, A.USEID, '' '' DESCRIPCION, '' '' DETALLADO'
        + ' FROM ' + DM1.sTablaPadron + ' A'
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   A.UPROID = USE.UPROID'
         + '   AND A.UPAGOID = USE.UPAGOID'
         + '   AND A.USEID = USE.USEID'
        + ' WHERE A.CODPAD = ' + QuotedStr(CODPAD);
      // Fin: SPP_201310_ASO
      if edtTipoAso.Text <> '' then
      begin
        xSql := xSql + ' AND A.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      end;
      if edtdptodes.Text <> '' then
      begin
        xSql := xSql + ' AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      end;
      // Inicio: SPP_201310_ASO
      xSql := xSql + '   AND A.CODITEM IN (SELECT L.CODITEM FROM ' + DM1.sTablaLogPadron + ' L WHERE L.CODPAD = A.CODPAD AND L.CODITEM = A.CODITEM';
      // Fin: SPP_201310_ASO
      xSql2 := '';
      for i:=1 to chklstInconsistencias.Items.Count do
      begin
        if chklstInconsistencias.Checked[i - 1] then
        begin
          if xSql2 = '' then
            xSql2 := xSql2 + '  L.CODTIPREG = ' + QuotedStr(copy(chklstInconsistencias.Items[i - 1],1,3))
          else
            xSql2 := xSql2 + '  OR L.CODTIPREG = ' + QuotedStr(copy(chklstInconsistencias.Items[i - 1],1,3));
        end;
      end;
      if xSql2 <> '' then
        xSql := xSql + ' AND (' + xSql2 + ')';
      xSql := xSql + '   )'
        + ' ORDER BY A.ASODNI, A.ASOAPENOM';

      xSql3:='SELECT X.CODPAD,X.CODITEM,X.ASODNI,ASOCODMOD,ASOAPENOM,CARGO,ASOCODPAGO,ASONCTA,UPROID,UPAGOID,USEID, '+
             'DESCRIPCION,DETALLADO,INCACT ACEPTADO,TIPASOMAE FROM ('+xSql+') X, (SELECT A.ASODNI,''S'' INCACT,B.ASOTIPID TIPASOMAE,CODPAD,CODITEM '+
             'FROM ASO_PAD_HIS A,APO201 B WHERE CODPAD = '+QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)+' AND USUREG=''INCONSIS'' '+
             'AND A.ASODNI=B.ASODNI(+)) Z  WHERE X.CODPAD=Z.CODPAD(+) AND X.CODITEM=Z.CODITEM(+) ';
       *)

      xsSQLInconsistencia := '';
      for i:=1 to chklstInconsistencias.Items.Count do begin
        if chklstInconsistencias.Checked[i - 1] then begin
          if xsSQLInconsistencia <> '' then xsSQLInconsistencia := xsSQLInconsistencia + ' OR ';
          xsSQLInconsistencia := xsSQLInconsistencia + '  CC.CODTIPREG = ' + QuotedStr(copy(chklstInconsistencias.Items[i - 1],1,3))
        end;
      end;
      if xsSQLInconsistencia <> '' then xsSQLInconsistencia := 'AND ('+ xsSQLInconsistencia + ')';

      xSql3:='SELECT X.CODPAD, X.CODITEM, X.ASODNI, ASOCODMOD, ASOAPENOM, '
           + '			 CARGO, ASOCODPAGO, ASONCTA, UPROID, UPAGOID, USEID, '
           + '       DESCRIPCION, DETALLADO, INCACT ACEPTADO, TIPASOMAE, '
           + '       INCONSISTENCIA, ASOTIPID TIPO_ASOCIADO '
           + '	FROM (SELECT A.CODPAD, A.CODITEM, A.ASODNI, A.ASOCODMOD, A.ASOAPENOM, '
           + '							 A.CARGO, A.ASOCODPAGO, A.ASONCTA, A.UPROID, A.UPAGOID, '
           + '							 A.USEID, '' '' DESCRIPCION, '' '' DETALLADO, '
           + '							 SUBSTR(C.INCONSISTENCIA, 1, 200) INCONSISTENCIA, A.ASOTIPID '
           + '					FROM ' + DM1.sTablaPadron + ' A '
           + '							,APO101 USE '
           + '							,(SELECT AA.CODPAD '
           + '											,AA.CODITEM '
           + '											,RTRIM(XMLAGG(XMLELEMENT(AA, CC.CODTIPREG || '' '' || UPPER(CC.DESTIPREG) || '' | '') ORDER BY CC.CODTIPREG).EXTRACT(''//text()''), '' | '') INCONSISTENCIA '
           + '									FROM ' + DM1.sTablaPadron + '     AA '
           + '											,' + DM1.sTablaLogPadron + '  BB '
           + '											,ASO_PAD_TIP_LOG CC '
           + '								 WHERE AA.CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)
           + '									 AND AA.CODPAD = BB.CODPAD '
           + '									 AND AA.CODITEM = BB.CODITEM '
           + '									 AND BB.CODTIPREG = CC.CODTIPREG '
           + xsSQLInconsistencia
           + '								 GROUP BY AA.CODPAD, AA.CODITEM) C '
           + '				 WHERE A.CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString);
      if dblcdTipoAso.Text <> '' then  xSql3 := xSql3 + ' AND A.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
      xSql3 := xSql3
           + '					 AND A.UPROID = USE.UPROID '
           + '					 AND A.UPAGOID = USE.UPAGOID '
           + '					 AND A.USEID = USE.USEID ';
      if dblcddptoid.Text <> '' then  xSql3 := xSql3 + ' AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
      xSql3 := xSql3
           + '					 AND A.CODPAD = C.CODPAD '
           + '					 AND A.CODITEM = C.CODITEM '
           + '				 ORDER BY A.ASODNI, A.ASOAPENOM) X '
           + '			,(SELECT A.ASODNI, ''S'' INCACT, B.ASOTIPID TIPASOMAE, CODPAD, CODITEM '
           + '					FROM ASO_PAD_HIS A '
           + '							,APO201      B '
           + '				 WHERE CODPAD = ' + QuotedStr(DM1.cdsPadrones.FieldByName('CODPAD').AsString)
           + '					 AND USUREG = ''INCONSIS'' '
           + '					 AND A.ASODNI = B.ASODNI(+)) Z '
           + ' WHERE X.CODPAD = Z.CODPAD(+) '
           + '	 AND X.CODITEM = Z.CODITEM(+) ';
      // FIN HPC_201513_ASO

      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql3);
      DM1.cdsReporte.Open;
  End;
  
   If rgest.ItemIndex = 2 Then
   Begin
     If rgtipinc.ItemIndex =  9 Then
     begin
       xSql2 := ' SELECT 0 NUMERO, L.ASODNI, L.ASOCODMOD, L.ASOAPENOM, L.ASONCTA, L.CARGO, L.ASOCODPAGO, L.ASOID, L.UPROID, L.UPAGOID, L.USEID, NULL REGACT, L.ASODESLAB, L.REGPENID, NULL CODAFP, L.CODMOD,'
         + ' L.NIVEDU_ID, L.CARLAB, L.SITACT, L.TIPSER, L.ASOTIPID TIP_ASO_PADRON, A.ASOTIPID TIP_ASO_MAESTRO, L.NUEVO TIPO_VO FROM ASO_PAD_HIS L'
         + '   INNER JOIN APO201 A ON L.ASOID = A.ASOID'
         + ' WHERE L.CODPAD = ' + QuotedStr(CODPAD);
     end
     else
     begin
       xSql2 := ' SELECT 0 NUMERO, L.ASODNI, L.ASOCODMOD, L.ASOAPENOM, L.ASONCTA, L.CARGO, L.ASOCODPAGO, L.ASOID, L.UPROID, L.UPAGOID, L.USEID, NULL REGACT, L.ASODESLAB, L.REGPENID, NULL CODAFP, L.CODMOD,'
         + ' L.NIVEDU_ID, L.CARLAB, L.SITACT, L.TIPSER, L.NUEVO TIPO_VO FROM ASO_PAD_HIS L'
         + '     INNER JOIN'
         + '   APO101 USE ON'
         + '   L.UPROID = USE.UPROID'
         + '   AND L.UPAGOID = USE.UPAGOID'
         + '   AND L.USEID = USE.USEID'
         + ' WHERE L.CODPAD = ' + QuotedStr(CODPAD);
     end;
     if edtTipoAso.Text <> '' then
     begin
       xSql2 := xSql2 + ' AND L.ASOTIPID = ' + QuotedStr(dblcdTipoAso.Text);
     end;
     if edtdptodes.Text <> '' then
     begin
       xSql2 := xSql2 + ' AND USE.DPTOID = ' + QuotedStr(dblcddptoid.Text);
     end;
     If rgtipinc.ItemIndex =  0 Then xSql2 := xSql2 + ' AND NVL(L.FLAACTASOCODMOD,''X'') = ''S''';
     If rgtipinc.ItemIndex =  1 Then xSql2 := xSql2 + ' AND NVL(L.FLAACTCARGO,''X'') = ''S''';
     If rgtipinc.ItemIndex =  2 Then xSql2 := xSql2 + ' AND NVL(L.FLAACTASOCODPAGO,''X'') = ''S''';
     If rgtipinc.ItemIndex =  3 Then xSql2 := xSql2 + ' AND NVL(L.FLAACTUSEID,''X'') = ''S''';
     If rgtipinc.ItemIndex =  4 Then xSql2 := xSql2 + ' AND NVL(L.FLAACTASONCTA,''X'') = ''S''';
     If rgtipinc.ItemIndex =  5 Then xSql2 := xSql2 + ' AND NVL(L.FLAACTREGPEN,''X'') = ''S''';
     If rgtipinc.ItemIndex =  6 Then xSql2 := xSql2 + ' AND NVL(L.FLAACTASODESLAB,''X'') = ''S''';
     If rgtipinc.ItemIndex =  7 Then xSql2 := xSql2 + ' AND NVL(L.FLAACTASOAPENOM,''X'') = ''S''';
     If rgtipinc.ItemIndex =  8 Then xSql2 := xSql2 + ' AND NVL(L.FLAACTCOLEGIO,''X'') = ''S''';
     If rgtipinc.ItemIndex =  9 Then xSql2 := xSql2 + ' AND NVL(L.FLAACTASOTIPID,''X'') = ''S''';
     If rgtipinc.ItemIndex =  10 Then xSql2 := xSql2 + ' AND (NVL(L.FLAACTASOCODMOD,''X'') = ''S'' OR NVL(L.FLAACTCARGO,''X'') = ''S'' OR NVL(L.FLAACTASOCODPAGO,''X'') = ''S'''
                                                    + ' OR NVL(L.FLAACTUSEID,''X'') = ''S'' OR NVL(L.FLAACTASONCTA,''X'') = ''S'' OR NVL(L.FLAACTREGPEN,''X'') = ''S'' OR NVL(L.FLAACTASODESLAB,''X'') = ''S'' '
                                                    + ' OR NVL(L.FLAACTASOAPENOM,''X'') = ''S'' OR NVL(L.FLAACTCOLEGIO,''X'') = ''S'')';

     DM1.cdsReporte.Close;
     DM1.cdsReporte.DataRequest(xSql2);
     DM1.cdsReporte.Open;

   End;

  dbgprevio.ColumnByName('ASOCODMOD').FooterValue := IntToStr(DM1.cdsReporte.RecordCount);
  dbgprevio.ColumnByName('ASOAPENOM').FooterValue := 'Registros';
  dbgprevio.RefreshDisplay;
  
  Screen.Cursor := crDefault;
end;

// Fin HPC_201505_ASO

procedure TFPadronEstadisticas.btnaExcelClick(Sender: TObject);
begin
  DM1.HojaExcel('Estadisticas', DM1.dsReporte, dtgData);
end;

Procedure TFPadronEstadisticas.inicializagrid;
Begin
   DM1.cdsReporte.IndexFieldNames := '';
   If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
End;

procedure TFPadronEstadisticas.rgtipincClick(Sender: TObject);
begin
  inicializagrid;
end;

procedure TFPadronEstadisticas.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
end;

procedure TFPadronEstadisticas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';
   DM1.cdsQry21.Close;
   Action := caFree;
end;

procedure TFPadronEstadisticas.btnVerErroresClick(Sender: TObject);
begin
  if DM1.cdsReporte.RecordCount = 0 then
  begin
    MessageDlg('No se encontraron registros', mtInformation, [mbOk], 0);
    Exit;
  end;
  
  Try
    FPadronErrores := TFPadronErrores.Create(Self);
    FPadronErrores.CODPAD := DM1.cdsReporte.FieldByName('CODPAD').AsString;
    FPadronErrores.CODITEM := DM1.cdsReporte.FieldByName('CODITEM').AsInteger;
    FPadronErrores.ShowModal;
  Finally
    FPadronErrores.Free;
  End;
end;

procedure TFPadronEstadisticas.dblcddptoidChange(Sender: TObject);
begin
  If DM1.cdsDpto.Locate('DPTOID',VarArrayof([dblcddptoid.text]),[]) Then
  begin
    edtdptodes.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
  end
  else
  begin
    edtdptodes.Text := '';
  end;
end;

procedure TFPadronEstadisticas.dblcdTipoAsoChange(Sender: TObject);
begin
  If DM1.cdsTAso.Locate('ASOTIPID',VarArrayof([dblcdTipoAso.Text]),[]) Then
  begin
    edtTipoAso.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').AsString;
  end
  else
  begin
    edtTipoAso.Text := '';
  end;
end;

procedure TFPadronEstadisticas.dbgprevioTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  DM1.cdsReporte.IndexFieldNames := AFieldName;
end;

end.

