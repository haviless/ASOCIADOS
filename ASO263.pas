// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO263.pas
// Formulario              :  FRepControl
// Fecha de Creación       :  19/08/2016
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Reportes de control
// HPC_201607_ASO : Creación

unit ASO263;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, ExtCtrls, Buttons, DBGrids,
  wwdbdatetimepicker, wwdblook, Wwdbdlg, Mask;

type
  TFRepControl = class(TForm)
    rgprincipal: TRadioGroup;
    dbgreporte: TwwDBGrid;
    BitExporta: TBitBtn;
    Bitsalir: TBitBtn;
    dbgexcel: TDBGrid;
    pnlreporte01: TPanel;
    btnrep01: TBitBtn;
    rgrep01tipfec: TRadioGroup;
    Label1: TLabel;
    dbdiniciorep01: TwwDBDateTimePicker;
    Label2: TLabel;
    dbdfinalrep01: TwwDBDateTimePicker;
    pnlreporte02: TPanel;
    btnrep02: TBitBtn;
    pnlreporte03: TPanel;
    Label5: TLabel;
    btnrep03: TBitBtn;
    dbdtpiniciorep03: TwwDBDateTimePicker;
    Label4: TLabel;
    dblcdcodenv: TwwDBLookupComboDlg;
    metolerancia: TMaskEdit;
    Label7: TLabel;
    stdatos: TStaticText;
    pnlcanreg: TPanel;
    procedure BitExportaClick(Sender: TObject);
    procedure btnrep01Click(Sender: TObject);
    procedure BitsalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rgprincipalClick(Sender: TObject);
    procedure btnrep02Click(Sender: TObject);
    procedure btnrep03Click(Sender: TObject);
    procedure dbdtpiniciorep03Exit(Sender: TObject);
    procedure dblcdcodenvChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rgrep01tipfecClick(Sender: TObject);
    procedure dbdiniciorep01Change(Sender: TObject);
    procedure dbdfinalrep01Change(Sender: TObject);
    procedure dbdtpiniciorep03Change(Sender: TObject);
    procedure metoleranciaChange(Sender: TObject);
  private
  procedure etiquetagrid; 
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRepControl: TFRepControl;

implementation

uses ASODM;

{$R *.dfm}

procedure TFRepControl.BitExportaClick(Sender: TObject);
begin
   If DM1.cdsReporte.RecordCount > 0 Then
   Begin
      Try
         DM1.ExportaGridExcel(dbgreporte, 'REPORTE_0101');
      Except
         On Ex: Exception Do
            Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
      End;
   End
   Else
   Begin
      MessageDlg('No existe información para mostrar.', mtInformation, [mbOk], 0);
      Exit;
   End;
end;

procedure TFRepControl.btnrep01Click(Sender: TObject);
var xSql:String;
begin
   If rgprincipal.ItemIndex = -1  Then
   Begin
      MessageDlg('Debe seleccionar el tipo de a procesar.', mtError, [mbOK], 0);
      rgprincipal.SetFocus;
      Exit;
   End;
   If Trim(dbdiniciorep01.Text) = ''  Then
   Begin
      MessageDlg('Debe ingresar la fecha inicial.', mtError, [mbOK], 0);
      dbdiniciorep01.SetFocus;
      Exit;
   End;
   If Trim(dbdfinalrep01.Text) = ''  Then
   Begin
      MessageDlg('Debe ingresar la fecha final.', mtError, [mbOK], 0);
      dbdfinalrep01.SetFocus;
      Exit;
   End;
   If dbdiniciorep01.Date > dbdfinalrep01.Date Then
   Begin
      MessageDlg('La fecha inicial debe ser igual o menor a la fecha final.', mtError, [mbOK], 0);
      dbdiniciorep01.SetFocus;
      Exit;
   End;
   If dbdfinalrep01.Date > DM1.FechaSys Then
   Begin
     MessageDlg('Fecha no puede ser mayor al día de hoy.', mtError, [mbOK], 0);
     dbdfinalrep01.SetFocus;
     Exit;
   End;
   If dbdiniciorep01.Date > DM1.FechaSys Then
   Begin
     MessageDlg('Fecha no puede ser mayor al día de hoy.', mtError, [mbOk], 0);
     dbdiniciorep01.SetFocus;
     Exit;
   End;
   If (rgprincipal.ItemIndex = 0) And (rgrep01tipfec.ItemIndex = 0) Then
   Begin
     Screen.Cursor := crHourGlass;
      xSql := 'SELECT A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, TO_DATE(A.ASOFECNAC) ASOFECNAC, TO_DATE(A.ASOFRESNOM) ASOFRESNOM, A.ASOTIPID, B.USENOM,'
      +' C.DPTODES DPTODES_UGEL, E.DPTODES DPTODES_IE, F.CIUDDES CIUDDES_IE, G.ZIPDES ZIPDES_IE, H.OFDESNOM, A.ASOAPTSER, A.USUREGAUTDESAPO, TO_DATE(A.FECAUTDESAPO) FECAUTDESAPO,'
      +' TO_DATE(A.FECREGAUTDESAPO) FECREGAUTDESAPO, TO_DATE(A.FECRECCADAPS) FECRECCADAPS, TO_DATE(J.FECVALCADAPS) FECVALCADAPS, J.ASOAPTSER, TO_DATE(M.FECGENENV) FECGENENV,'
      +' TO_DATE(N.FECACTUALIZADO) FECACTUALIZADO, SUM(NVL(I.CRESDOACT,0)) CRESDOACT, MAX(L.DES_SIT) DES_SIT'
      +' FROM APO201 A, APO101 B, APO158 C, ASO_CEN_EDU D, APO158 E, APO123 F, APO122 G, APO110 H, CRE301 I, ASO_VAL_CADAPS J, APO206 K,'
      +' (SELECT COD_SIT, DES_SIT from ASO_PAD_SIT_ASO WHERE COD_MAE = ''01'' AND COD_SIT IS NOT NULL) L, ASO_VAL_CADAPS_CAB M, AUT_DES_APORTES N'
      +' WHERE A.FECRECCADAPS >= '+QuotedStr(dbdiniciorep01.Text)+' AND  A.FECRECCADAPS <= '+QuotedStr(dbdfinalrep01.Text)+' AND A.ASOTIPID = ''DO'''
      +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+) AND B.DPTOID = C.DPTOID(+)'
      +' AND A.CENEDUID = D.CENEDUID(+) AND SUBSTR(D.UBIGEO_DIR,1,2) = E.DPTOID(+) AND SUBSTR(D.UBIGEO_DIR,1,4) = F.CIUDID(+) AND D.UBIGEO_DIR = G.ZIPID(+)'
      +' AND A.OFIREGAUTDESAPO = H.OFDESID(+) AND A.ASOID = I.ASOID(+) AND I.CREESTID(+) = ''02'' AND A.ASOID = J.ASOID(+) AND J.REGVIG(+) = ''S'''
      +' AND A.ASOID = K.ASOID(+) AND K.TIPSER = L.COD_SIT(+) AND J.CODGENENV = M.CODGENENV(+) AND A.ASOID = N.ASOID(+)'
      +' GROUP BY A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, A.ASOFECNAC, A.ASOFRESNOM, A.ASOTIPID, B.USENOM, C.DPTODES, E.DPTODES, F.CIUDDES,'
      +' G.ZIPDES, H.OFDESNOM, A.ASOAPTSER, A.USUREGAUTDESAPO, A.FECAUTDESAPO, A.FECREGAUTDESAPO, A.FECRECCADAPS, J.FECVALCADAPS, J.ASOAPTSER, M.FECGENENV, N.FECACTUALIZADO'
      +' ORDER BY B.USENOM, A.ASOAPENOMDNI';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
     Screen.Cursor := crDefault;
   End;
   If (rgprincipal.ItemIndex = 0) And (rgrep01tipfec.ItemIndex = 1) Then
   Begin
      Screen.Cursor := crHourGlass;
      xSql := 'SELECT A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, TO_DATE(A.ASOFECNAC) ASOFECNAC, TO_DATE(A.ASOFRESNOM) ASOFRESNOM, A.ASOTIPID, B.USENOM,'
      +' C.DPTODES DPTODES_UGEL, E.DPTODES DPTODES_IE, F.CIUDDES CIUDDES_IE, G.ZIPDES ZIPDES_IE, H.OFDESNOM, A.ASOAPTSER, A.USUREGAUTDESAPO, TO_DATE(A.FECAUTDESAPO) FECAUTDESAPO,'
      +' TO_DATE(A.FECREGAUTDESAPO) FECREGAUTDESAPO, TO_DATE(A.FECRECCADAPS) FECRECCADAPS, TO_DATE(J.FECVALCADAPS) FECVALCADAPS, J.ASOAPTSER, TO_DATE(M.FECGENENV) FECGENENV,'
      +' TO_DATE(N.FECACTUALIZADO) FECACTUALIZADO, SUM(NVL(I.CRESDOACT,0)) CRESDOACT, MAX(L.DES_SIT) DES_SIT'
      +' FROM APO201 A, APO101 B, APO158 C, ASO_CEN_EDU D, APO158 E, APO123 F, APO122 G, APO110 H, CRE301 I, ASO_VAL_CADAPS J, APO206 K,'
      +' (SELECT COD_SIT, DES_SIT from ASO_PAD_SIT_ASO WHERE COD_MAE = ''01'' AND COD_SIT IS NOT NULL) L, ASO_VAL_CADAPS_CAB M, AUT_DES_APORTES N'
      +' WHERE A.FECAUTDESAPO >= '+QuotedStr(dbdiniciorep01.Text)+' AND  A.FECAUTDESAPO <= '+QuotedStr(dbdfinalrep01.Text)+' AND A.ASOTIPID = ''DO'''
      +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+) AND B.DPTOID = C.DPTOID(+)'
      +' AND A.CENEDUID = D.CENEDUID(+) AND SUBSTR(D.UBIGEO_DIR,1,2) = E.DPTOID(+) AND SUBSTR(D.UBIGEO_DIR,1,4) = F.CIUDID(+) AND D.UBIGEO_DIR = G.ZIPID(+)'
      +' AND A.OFIREGAUTDESAPO = H.OFDESID(+) AND A.ASOID = I.ASOID(+) AND I.CREESTID(+) = ''02'' AND A.ASOID = J.ASOID(+) AND J.REGVIG(+) = ''S'''
      +' AND A.ASOID = K.ASOID(+) AND K.TIPSER = L.COD_SIT(+) AND J.CODGENENV = M.CODGENENV(+) AND A.ASOID = N.ASOID(+)'
      +' GROUP BY A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, A.ASOFECNAC, A.ASOFRESNOM, A.ASOTIPID, B.USENOM, C.DPTODES, E.DPTODES, F.CIUDDES,'
      +' G.ZIPDES, H.OFDESNOM, A.ASOAPTSER, A.USUREGAUTDESAPO, A.FECAUTDESAPO, A.FECREGAUTDESAPO, A.FECRECCADAPS, J.FECVALCADAPS, J.ASOAPTSER, M.FECGENENV, N.FECACTUALIZADO'
      +' ORDER BY B.USENOM, A.ASOAPENOMDNI';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
     Screen.Cursor := crDefault;
   End;
   If DM1.cdsReporte.RecordCount > 0 Then
   Begin
      etiquetagrid;
      BitExporta.Enabled := True;
      pnlcanreg.Caption := 'Cantidad de registros # '+IntToStr(dm1.cdsReporte.RecordCount);
   End
   Else
   Begin
      pnlcanreg.Caption := '';
      BitExporta.Enabled := False;
      DM1.cdsReporte.Close;
      MessageDlg('No existe información para mostrar.', mtInformation, [mbOk], 0);
      Exit;
   End;
end;

procedure TFRepControl.BitsalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFRepControl.FormActivate(Sender: TObject);
begin
   DM1.cdsReporte.Close;
   rgprincipal.ItemIndex := 0;
   rgrep01tipfec.ItemIndex := 0;
   pnlreporte01.Visible := True;
   pnlreporte02.Visible := False;
   pnlreporte03.Visible := False;
end;

procedure TFRepControl.rgprincipalClick(Sender: TObject);
Var xSql:String;
begin
   BitExporta.Enabled := False;
   DM1.cdsReporte.Close;
   pnlcanreg.Caption := '';
   If rgprincipal.ItemIndex = 0 Then
   Begin
     pnlreporte02.Visible := False;
     pnlreporte03.Visible := False;
     pnlreporte01.Visible := True;
     pnlreporte01.Top := 7;
     pnlreporte01.Left := 345;
   End;
   If rgprincipal.ItemIndex = 1 Then
   Begin
     xSql := 'SELECT CODGENENV, CANREGENV, TO_DATE(FECGENENV,''DD/MM/YYYY'') FECGENENV FROM ASO_VAL_CADAPS_CAB WHERE 1 = 1 ORDER BY CODGENENV';
     DM1.cdsCreditoCab.Close;
     DM1.cdsCreditoCab.DataRequest(xSql);
     DM1.cdsCreditoCab.Open;
     dblcdcodenv.Selected.Clear;
     dblcdcodenv.Selected.Add('CODGENENV'#9'8'#9'Cód.Gen.'#9#9);
     dblcdcodenv.Selected.Add('FECGENENV'#9'10'#9'Fec.Gen.'#9#9);
     dblcdcodenv.Selected.Add('CANREGENV'#9'5'#9'#Reg.'#9#9);
     pnlreporte01.Visible := False;
     pnlreporte03.Visible := False;
     pnlreporte02.Visible := True;
     pnlreporte02.Top := 7;
     pnlreporte02.Left := 345;
   End;
   If rgprincipal.ItemIndex = 2 Then
   Begin
     pnlreporte01.Visible := False;
     pnlreporte02.Visible := False;
     pnlreporte03.Visible := True;
     pnlreporte03.Top := 7;
     pnlreporte03.Left := 345;
   End;
end;

procedure TFRepControl.btnrep02Click(Sender: TObject);
Var xSql:String;
begin
   If trim(dblcdcodenv.Text) = '' Then
   Begin
      MessageDlg('Debe ingresar el lote a procesar.', mtError, [mbOk], 0);
      dblcdcodenv.SetFocus;
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   xSql := 'SELECT MIN(TO_DATE(FECAUTDESAPO,''DD/MM/YYYY'')) FECMIN, MAX(TO_DATE(FECAUTDESAPO,''DD/MM/YYYY'')) FECMAX FROM ASO_VAL_CADAPS WHERE CODGENENV = '+QuotedStr(dblcdcodenv.Text)
   +' AND REGVIG = ''S''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   xSql := 'SELECT A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, A.ASOFECNAC, A.ASOFRESNOM, A.ASOTIPID, B.USENOM, C.DPTODES DPTODES_UGEL, E.DPTODES DPTODES_IE, F.CIUDDES CIUDDES_IE,'
   +' G.ZIPDES ZIPDES_IE, H.OFDESNOM, A.ASOAPTSER, A.USUREGAUTDESAPO, A.FECAUTDESAPO, A.FECREGAUTDESAPO, A.FECRECCADAPS, J.FECVALCADAPS, J.ASOAPTSER, M.FECGENENV,'
   +' N.FECACTUALIZADO, SUM(NVL(I.CRESDOACT,0)) CRESDOACT, MAX(L.DES_SIT) DES_SIT'
   +' FROM APO201 A, APO101 B, APO158 C, ASO_CEN_EDU D, APO158 E, APO123 F, APO122 G, APO110 H, CRE301 I, ASO_VAL_CADAPS J, APO206 K,'
   +' (select COD_SIT, DES_SIT from ASO_PAD_SIT_ASO where COD_MAE = ''01'' and COD_SIT is not null) L, ASO_VAL_CADAPS_CAB M, AUT_DES_APORTES N'
   +' WHERE A.FECAUTDESAPO >= '+QuotedStr(DM1.cdsQry.FieldByName('FECMIN').AsString)+' AND  A.FECAUTDESAPO <= '+QuotedStr(DM1.cdsQry.FieldByName('FECMAX').AsString)+' AND A.ASOTIPID = ''DO'''
   +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+) AND B.DPTOID = C.DPTOID(+) AND A.CENEDUID = D.CENEDUID(+)'
   +' AND SUBSTR(D.UBIGEO_DIR,1,2) = E.DPTOID(+) AND SUBSTR(D.UBIGEO_DIR,1,4) = F.CIUDID(+) AND D.UBIGEO_DIR = G.ZIPID(+) AND A.OFIREGAUTDESAPO = H.OFDESID(+)'
   +' AND A.ASOID = I.ASOID(+) AND I.CREESTID(+) = ''02'' AND A.ASOID = J.ASOID(+) AND J.ASOID IS NULL AND A.ASOID = K.ASOID(+)'
   +' AND K.TIPSER = L.COD_SIT(+) AND J.CODGENENV = M.CODGENENV(+) AND A.ASOID = N.ASOID(+) GROUP BY'
   +' A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, A.ASOFECNAC, A.ASOFRESNOM, A.ASOTIPID, B.USENOM, C.DPTODES, E.DPTODES, F.CIUDDES,'
   +' G.ZIPDES, H.OFDESNOM, A.ASOAPTSER, A.USUREGAUTDESAPO, A.FECAUTDESAPO, A.FECREGAUTDESAPO, A.FECRECCADAPS, J.FECVALCADAPS, J.ASOAPTSER, M.FECGENENV, N.FECACTUALIZADO'
   +' ORDER BY B.USENOM, A.ASOAPENOMDNI';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsReporte.RecordCount > 0 Then
   Begin
      etiquetagrid;
      BitExporta.Enabled := True;
      pnlcanreg.Caption := 'Cantidad de registros # '+IntToStr(dm1.cdsReporte.RecordCount);
   End
   Else
   Begin
      pnlcanreg.Caption := '';
      BitExporta.Enabled := False;
      DM1.cdsReporte.Close;
      MessageDlg('No existe información para mostrar.', mtInformation, [mbOk], 0);
      Exit;
   End;
end;

Procedure TFRepControl.btnrep03Click(Sender: TObject);
Var xSql:String;
Begin

   If DM1.ValidaSiNumero(Trim(metolerancia.Text)) = False Then
   Begin
      MessageDlg('Debe ingresar un valor numérico.', mtError, [mbOK], 0);
      metolerancia.Text := '';
      metolerancia.SetFocus;
      Exit;
   End;

   If Trim(dbdtpiniciorep03.Text) = '' Then
   Begin
     MessageDlg('Debe ingresar la fecha inicial.', mtError, [mbOK], 0);
     dbdtpiniciorep03.SetFocus;
     Exit;
   End;
   If Trim(metolerancia.Text) = '' Then
   Begin
     MessageDlg('Debe ingresar un valor numérico.', mtError, [mbOK], 0);
     metolerancia.SetFocus;
     Exit;
   End;
   If dbdtpiniciorep03.Date > DM1.FechaSys Then
   Begin
     MessageDlg('Fecha no puede ser mayor al día de hoy.', mtError, [mbOK], 0);
     dbdtpiniciorep03.SetFocus;
     Exit;
   End;
   If StrToInt(Trim(metolerancia.Text)) < 0 Then
   Begin
      MessageDlg('Valor no puede ser menor que cero.', mtError, [mbOK], 0);
      metolerancia.SetFocus;
      Exit;
   End;
   If StrToInt(Trim(metolerancia.Text)) > 360 Then
   Begin
      MessageDlg('Valor no puede ser mayor que 360.', mtError, [mbOK], 0);
      metolerancia.SetFocus;
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   xSql := 'SELECT A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, A.ASOFECNAC, A.ASOFRESNOM, A.ASOTIPID, B.USENOM, C.DPTODES DPTODES_UGEL, E.DPTODES DPTODES_IE, F.CIUDDES CIUDDES_IE, G.ZIPDES ZIPDES_IE,'
   +' H.OFDESNOM, A.ASOAPTSER, A.USUREGAUTDESAPO, A.FECAUTDESAPO, A.FECREGAUTDESAPO, A.FECRECCADAPS, J.FECVALCADAPS, J.ASOAPTSER, M.FECGENENV, N.FECACTUALIZADO,'
   +' SUM(NVL(I.CRESDOACT,0)) CRESDOACT, MAX(L.DES_SIT) DES_SIT'
   +' FROM APO201 A, APO101 B, APO158 C, ASO_CEN_EDU D, APO158 E, APO123 F, APO122 G, APO110 H, CRE301 I, ASO_VAL_CADAPS J, APO206 K,'
   +' (SELECT COD_SIT, DES_SIT FROM ASO_PAD_SIT_ASO where COD_MAE = ''01'' and COD_SIT IS NOT NULL) L, ASO_VAL_CADAPS_CAB M, AUT_DES_APORTES N'
   +' WHERE A.FECAUTDESAPO >= '+QuotedStr(dbdtpiniciorep03.Text)+' AND  A.FECAUTDESAPO <= SYSDATE-'+metolerancia.Text+' AND A.ASOTIPID = ''DO'''
   +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+) AND B.DPTOID = C.DPTOID(+)'
   +' AND A.CENEDUID = D.CENEDUID(+) AND SUBSTR(D.UBIGEO_DIR,1,2) = E.DPTOID(+) AND SUBSTR(D.UBIGEO_DIR,1,4) = F.CIUDID(+) AND D.UBIGEO_DIR = G.ZIPID(+)'
   +' AND A.OFIREGAUTDESAPO = H.OFDESID(+) AND A.ASOID = I.ASOID(+) AND I.CREESTID(+) = ''02'' AND A.ASOID = J.ASOID(+) AND J.ASOID IS NULL'
   +' AND A.ASOID = K.ASOID(+) AND K.TIPSER = L.COD_SIT(+) AND J.CODGENENV = M.CODGENENV(+) AND A.ASOID = N.ASOID(+) AND N.ASOID IS NULL'
   +' GROUP BY A.ASODNI, A.ASOCODMOD, A.ASOAPENOMDNI, A.ASOFECNAC, A.ASOFRESNOM, A.ASOTIPID, B.USENOM, C.DPTODES, E.DPTODES, F.CIUDDES,'
   +' G.ZIPDES, H.OFDESNOM, A.ASOAPTSER, A.USUREGAUTDESAPO, A.FECAUTDESAPO, A.FECREGAUTDESAPO, A.FECRECCADAPS, J.FECVALCADAPS, J.ASOAPTSER, M.FECGENENV, N.FECACTUALIZADO'
   +' ORDER BY B.USENOM, A.ASOAPENOMDNI';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   Screen.Cursor := crDefault;
   If DM1.cdsReporte.RecordCount > 0 Then
   Begin
      etiquetagrid;
      BitExporta.Enabled := True;
      pnlcanreg.Caption := 'Cantidad de registros # '+IntToStr(dm1.cdsReporte.RecordCount);
   End
   Else
   Begin
      pnlcanreg.Caption := '';
      BitExporta.Enabled := False;
      DM1.cdsReporte.Close;
      MessageDlg('No existe información para mostrar.', mtInformation, [mbOk], 0);
      Exit;
   End;
End;



procedure TFRepControl.dbdtpiniciorep03Exit(Sender: TObject);
begin
  If dbdfinalrep01.Date > DM1.FechaSys Then
  Begin
     MessageDlg('Fecha no puede ser mayor al día de hoy.', mtError, [mbOk], 0);
     dbdfinalrep01.SetFocus;
     Exit;
  End;
end;

procedure TFRepControl.etiquetagrid;
begin
   dbgreporte.Selected.Clear;
   dbgreporte.Selected.Add('ASODNI'#9'8'#9'DNI'#9#9);
   dbgreporte.Selected.Add('ASOCODMOD'#9'10'#9'CODIGO~MODULAR'#9#9);
   dbgreporte.Selected.Add('ASOAPENOMDNI'#9'45'#9'APELLIDOS Y NOMBRES'#9#9);
   dbgreporte.Selected.Add('ASOFECNAC'#9'10'#9'FECHA DE~NACIMIENTO'#9#9);
   dbgreporte.Selected.Add('ASOFRESNOM'#9'10'#9'FECHA DE~NOMBRAMIENTO'#9#9);
   dbgreporte.Selected.Add('ASOTIPID'#9'2'#9'TIPO DE~ASOCIADO'#9#9);
   dbgreporte.Selected.Add('DES_SIT'#9'25'#9'TIPO~SERVIDOR'#9#9);
   dbgreporte.Selected.Add('USENOM'#9'35'#9'DESCRIPCION UGEL'#9#9);
   dbgreporte.Selected.Add('DPTODES_UGEL'#9'18'#9'DEPARTAMENTO~UGEL'#9#9);
   dbgreporte.Selected.Add('DPTODES_IE'#9'18'#9'DEPARTAMENTO~COLEGIO'#9#9);
   dbgreporte.Selected.Add('CIUDDES_IE'#9'25'#9'PROVINCIA~COLEGIO'#9#9);
   dbgreporte.Selected.Add('ZIPDES_IE'#9'35'#9'DISTRITO~COLEGIO'#9#9);
   dbgreporte.Selected.Add('OFDESNOM'#9'24'#9'OFICINA~CADAPS'#9#9);
   dbgreporte.Selected.Add('CRESDOACT'#9'15'#9'SALDO CREDITO~VIGENTE'#9#9);
   dbgreporte.Selected.Add('USUREGAUTDESAPO'#9'18'#9'USUARIO~AUTORIZA CADAPS'#9#9);
   dbgreporte.Selected.Add('FECAUTDESAPO'#9'10'#9'FECHA AUTORIZACION~CADAPS'#9#9);
   dbgreporte.Selected.Add('FECREGAUTDESAPO'#9'10'#9'FECHA~REGISTRO CADAPS'#9#9);
   dbgreporte.Selected.Add('FECRECCADAPS'#9'10'#9'FECHA~RECEPCION CADAPS'#9#9);
   dbgreporte.Selected.Add('FECVALCADAPS'#9'10'#9'FECHA~VALIDACION CADAPS'#9#9);
   dbgreporte.Selected.Add('FECGENENV'#9'10'#9'FECHA ENVIO~CADAPS A ARCHIVO'#9#9);
   dbgreporte.Selected.Add('FECACTUALIZADO'#9'10'#9'FECHA~ARCHIVO CADAPS'#9#9);
   dbgreporte.Selected.Add('ASOAPTSER'#9'1'#9'APORTANTE~REGULAR'#9#9);
   dbgreporte.ApplySelected;
end;

procedure TFRepControl.dblcdcodenvChange(Sender: TObject);
begin
   DM1.cdsReporte.Close;
   If length(Trim(dblcdcodenv.Text)) = 8 Then
   Begin
      If DM1.cdsCreditoCab.Locate('CODGENENV',VarArrayof([dblcdcodenv.text]),[])  Then
         stdatos.Caption := 'Código : '+DM1.cdsCreditoCab.FieldByName('CODGENENV').AsString+' / Num. Registros : '+DM1.cdsCreditoCab.FieldByName('CANREGENV').AsString
         +' / Fecha: '+DM1.cdsCreditoCab.FieldByName('FECGENENV').AsString
      Else
      Begin
         MessageDlg('Código de envío errado.', mtError, [mbOk], 0);
         stdatos.Caption := '';
         dblcdcodenv.SetFocus;
         Exit;
      End;
   End;
end;

procedure TFRepControl.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFRepControl.rgrep01tipfecClick(Sender: TObject);
begin
   DM1.cdsReporte.Close;
end;

procedure TFRepControl.dbdiniciorep01Change(Sender: TObject);
begin
   DM1.cdsReporte.Close;
end;

procedure TFRepControl.dbdfinalrep01Change(Sender: TObject);
begin
   DM1.cdsReporte.Close;
end;

procedure TFRepControl.dbdtpiniciorep03Change(Sender: TObject);
begin
   DM1.cdsReporte.Close;
end;

procedure TFRepControl.metoleranciaChange(Sender: TObject);
begin
   DM1.cdsReporte.Close;
end;

end.
