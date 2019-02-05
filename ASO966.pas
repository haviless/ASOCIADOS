// HPP_200906_ASO
UNIT ASO966;

INTERFACE

USES
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, wwdblook, StdCtrls, ExtCtrls, Buttons, Wwdbdlg, Grids, DBGrids,
  Wwdbigrd, Wwdbgrid, ppCtrls, ppBands, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppEndUsr,
  ppParameter;

TYPE
   TFrmAutxCenEdu = CLASS(TForm)
      grbRepfPago: TGroupBox;
      Label1: TLabel;
      BitPrint: TBitBtn;
      Panel2: TPanel;
      EdtDpto: TEdit;
      BitExporta: TBitBtn;
      btnProcesar: TBitBtn;
    dblcddptoid: TwwDBLookupComboDlg;
    dtgData: TDBGrid;
    dbgprevio: TwwDBGrid;
    ppbdAutxCenEdu: TppBDEPipeline;
    pprAutxCenEdu: TppReport;
    ppDesigner1: TppDesigner;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppltitulo: TppLabel;
    ppLabel1: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppLine1: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine28: TppLine;
    ppLine30: TppLine;
    ppDBText9: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppDBText3: TppDBText;
    ppLabel21: TppLabel;
    ppLabel2: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLabel17: TppLabel;
    ppLine29: TppLine;
    ppLabel16: TppLabel;
    ppLabel4: TppLabel;
    ppLabel18: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText10: TppDBText;
      PROCEDURE FormShow(Sender: TObject);
      PROCEDURE btnProcesarClick(Sender: TObject);
    procedure dblcddptoidExit(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
    procedure BitPrintClick(Sender: TObject);
  // inicio: HPP_201003_ASO
  // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  // Fin: HPP_201003_ASO
   Private
    { Private declarations }
   Public
    { Public declarations }
   END;

VAR
   FrmAutxCenEdu: TFrmAutxCenEdu;

IMPLEMENTATION

USES ASODM;

{$R *.dfm}

(******************************************************************************)

PROCEDURE TFrmAutxCenEdu.FormShow(Sender: TObject);
VAR
   xSQL: STRING;
BEGIN
   xSQL := 'SELECT DPTOID,DPTODES FROM APO158';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSQL);
   DM1.cdsDpto.Open;
  dblcddptoid.Selected.Clear;
  dblcddptoid.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
  dblcddptoid.Selected.Add('DPTODES'#9'17'#9'Descripción'#9#9);

  dbgprevio.DataSource:= dm1.dsQry;
  ppbdAutxCenEdu.DataSource:=dm1.dsQry;

END;

(******************************************************************************)

procedure TFrmAutxCenEdu.dblcddptoidExit(Sender: TObject);
begin
   IF DM1.cdsDpto.Locate('DPTOID', VarArrayof([dblcddptoid.Text]), []) THEN
      EdtDpto.Text := DM1.cdsDpto.fieldbyname('DPTODES').AsString
   ELSE
      EdtDpto.Text := '';
   BitExporta.Enabled := false;
   BitPrint.Enabled := false;
      
end;


(******************************************************************************)

PROCEDURE TFrmAutxCenEdu.btnProcesarClick(Sender: TObject);
FUNCTION isProceso(): boolean;
var xSQL:string;
   BEGIN
      Screen.Cursor := crHourGlass;
      result := false;
      xSQL:='SELECT ROWNUM NUM, CIUDDES PROVINCIA, ZIPDES DISTRITO, ASOAPENOM APELLIDOS_NOMBRES, '
           +'       AUTDESAPO AUTORIZO_DSCTO, NOMCENEDU CENTRO_EDUCATIVO, CENPO CPO_CEN_EDUCATIVO, DIREC DIR_CEN_EDUCATIVO, NIVEDU_DES NIV_CEN_EDUCATIVO, '
           +'       ASODNI'
           +'  FROM (SELECT NVL(PROV.CIUDDES,''Z : PROV. NO UBICADA'') CIUDDES, '
           +'               NVL(DIST.ZIPDES,''Z : DIST. NO UBICADO'') ZIPDES, '
           +'               B.ASOAPENOM, NVL(B.AUTDESAPO, ''N'') AUTDESAPO, A.NOMCENEDU, A.CENPO, A.DIREC,A.NIVEDU_DES, '
           +'               B.ASODNI '
           +'           FROM (SELECT X.CENEDUID, X.UBIGEO_DIR, X.NOMCENEDU, X.CENPO, X.DIREC,Y.NIVEDU_DES '
           +'                   FROM ASO_CEN_EDU X, NIV_CEN_EDU Y'
           +'                  WHERE SUBSTR(X.UBIGEO_DIR, 1, 2) = '+QuotedStr(DM1.cdsDpto.fieldbyname('DPTOID').AsString)
           +'                    AND X.NIVEDU_ID = Y.NIVEDU_ID(+)'
           +'                ) A, APO201 B, '
           +'                APO123 PROV, APO122 DIST '
           +'          WHERE A.CENEDUID = B.CENEDUID '
           +'            AND SUBSTR(A.UBIGEO_DIR, 1, 2) = PROV.DPTOID(+) '
           +'            AND SUBSTR(A.UBIGEO_DIR, 1, 4) = PROV.CIUDID(+) '
           +'            AND SUBSTR(A.UBIGEO_DIR, 1, 2) = DIST.DPTOID(+) '
           +'            AND SUBSTR(A.UBIGEO_DIR, 1, 4) = DIST.CIUDID(+) '
           +'            AND A.UBIGEO_DIR = DIST.ZIPID(+)  '
           +'           ORDER BY NVL(PROV.CIUDDES,''Z : PROV. NO UBICADA''), NVL(DIST.ZIPDES,''Z : DIST. NO UBICADO''), A.CENPO, A.NOMCENEDU, B.ASOAPENOM) X';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;

      DM1.CdsReporte.Close;
      DM1.CdsReporte.DataRequest(xSQL);
      DM1.CdsReporte.Open;
      Screen.Cursor := crDefault;
      if DM1.cdsQry.RecordCount>0 then result := true;
   END;
BEGIN


   IF  (EdtDpto.Text <> '') AND isProceso THEN
   BEGIN
      BitExporta.Enabled := true;
      BitPrint.Enabled := true;
    dbgprevio.Selected.Clear;
    dbgprevio.Selected.Add('NUM'#9'3'#9'NUMERO'#9#9);
    dbgprevio.Selected.Add('PROVINCIA'#9'15'#9'PROVINCIA'#9#9);
    dbgprevio.Selected.Add('DISTRITO'#9'15'#9'DISTRITO.'#9#9);
    dbgprevio.Selected.Add('APELLIDOS_NOMBRES'#9'25'#9'APELLIDOS Y NOMBRES'#9#9);
    dbgprevio.Selected.Add('ASODNI'#9'10'#9'DNI'#9#9);    
    dbgprevio.Selected.Add('AUTORIZO_DSCTO'#9'3'#9'AUT~DESCUENTO'#9#9);
    dbgprevio.Selected.Add('CENTRO_EDUCATIVO'#9'25'#9'CENTRO EDUCATIVO'#9#9);
    dbgprevio.Selected.Add('NIV_CEN_EDUCATIVO'#9'15'#9'NIVEL'#9#9);
    dbgprevio.Selected.Add('CPO_CEN_EDUCATIVO'#9'25'#9'CENTRO POBLADO CENTRO EDU'#9#9);
    dbgprevio.Selected.Add('DIR_CEN_EDUCATIVO'#9'25'#9'DIRECCION CENTRO EDU.'#9#9);
    dbgprevio.ApplySelected;
   END;
END;

(******************************************************************************)


procedure TFrmAutxCenEdu.BitExportaClick(Sender: TObject);
begin
   DM1.HojaExcel('Resumen', DM1.dsReporte, dtgData);
end;
(******************************************************************************)

procedure TFrmAutxCenEdu.BitPrintClick(Sender: TObject);
begin
   ppltitulo.Caption:='HOJA DE CARGO POR ENTREGA DE ESTADOS DE CUENTA INDIVIDUAL POR COLEGIOS - ' +QuotedStr(DM1.cdsDpto.fieldbyname('DPTODES').AsString);
   pprAutxCenEdu.Print;
   //ppDesigner1.Show;
end;

procedure TFrmAutxCenEdu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // inicio: HPP_201003_ASO
  // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';
  // Fin: HPP_201003_ASO
end;

END.

