// Inicio Uso Estándares     :  01/08/2011
// Unidad                    :  ASO905.pas
// Formulario                :  FManCol
// Fecha de Creación         :  09/03/2012
// Autor                     :  Equipo de desarrollo DM
// Objetivo                  :  Listado de las Ugeles/Regiones vs Planillas

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO            : 09/03/2012  DFERNANDEZ Se cierran los datasets
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201315_ASO            : Exportar a Excel el listado general de centros educativos 
// SPP_201401_ASO            : Se realiza el pase a producción a partir del HPC_201315_ASO
// HPC_201410_ASO            : Incluir busqueda de colegio por código módular.
// SPP_201408_ASO            : Se realiza el pase a producción a partir del HPC_201410_ASO.  

unit ASO905;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ImgList, StdCtrls, Buttons, ExtCtrls,
  DBGrids, Mask, wwdblook, Wwdbdlg,DB;

type
  TFManCol = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    BitBtn3: TBitBtn;
    BitBtn1: TBitBtn;
    ImageList1: TImageList;
    dbgPrincipal: TwwDBGrid;
    dbgPrincipalIBtnAdd: TwwIButton;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    dblcdDptoId: TwwDBLookupComboDlg;
    meDptoDes: TMaskEdit;
    Label1: TLabel;
    dblcdProvId: TwwDBLookupComboDlg;
    meProvDes: TMaskEdit;
    Label2: TLabel;
    dblcdDistId: TwwDBLookupComboDlg;
    meDistDes: TMaskEdit;
    btnFiltrar: TBitBtn;
    meDesCol: TMaskEdit;
    DBGrid: TDBGrid;
// Inicio: SPP_201401_ASO
    BtnExporta: TBitBtn;
    dtgExpCenEdu: TDBGrid;
    
    // Inicio SPP_201408_ASO
    rdbNomCol: TRadioButton;
    rdbCodCol: TRadioButton;
    // Fin SPP_201408_ASO

// Fin: SPP_201401_ASO
    procedure FormCreate(Sender: TObject);
    procedure dbgPrincipalIBtnAddClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure dblcdDptoIdExit(Sender: TObject);
    procedure dblcdDptoIdChange(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure dblcdProvIdExit(Sender: TObject);
    procedure dblcdProvIdChange(Sender: TObject);
    procedure dblcdDistIdChange(Sender: TObject);
    procedure dblcdDistIdExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgPrincipalDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
// Inicio: SPP_201401_ASO
    procedure BtnExportaClick(Sender: TObject);
// Fin: SPP_201401_ASO
  private
    procedure cargarGridPrincipal(IFiltro: string);
    procedure filtrarProvincia(IDptoId: string);
    procedure filtrarDistrito(IDistId: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FManCol: TFManCol;

implementation

uses ASODM, ASO906, Math;

{$R *.dfm}

(******************************************************************************)
procedure TFManCol.FormCreate(Sender: TObject);
begin
   dbgPrincipal.DataSource:=DM1.dsQry5;
   DBGrid.DataSource:=DM1.dsQry5;
end;

(******************************************************************************)
procedure TFManCol.cargarGridPrincipal(IFiltro:string);
var
   xSQL:string;
begin
//IFiltro
// se añade NIVCENEDU.NIVEDU_DES en la consulta tomada de la table NIV_CEN_EDU
// se cambia SQL
   xSQL:='SELECT CENEDU.*, '
        +'       NIVCENEDU.NIVEDU_DES,  '
        +'       DPTO.DPTOID, DPTO.DPTODES, '
        +'       PROV.DPTOID, PROV.CIUDDES, '
        +'       DIST.ZIPID, DIST.ZIPDES '
        +'  FROM ASO_CEN_EDU CENEDU, NIV_CEN_EDU NIVCENEDU, APO158 DPTO, APO123 PROV, APO122 DIST '
        +' WHERE CENEDU.NIVEDU_ID = NIVCENEDU.NIVEDU_ID(+) '
        +'   AND SUBSTR(CENEDU.UBIGEO_DIR, 1, 2) = DPTO.DPTOID(+) '
        +'   AND SUBSTR(CENEDU.UBIGEO_DIR, 1, 2) = PROV.DPTOID(+) '
        +'   AND SUBSTR(CENEDU.UBIGEO_DIR, 1, 4) = PROV.CIUDID(+) '
        +'   AND SUBSTR(CENEDU.UBIGEO_DIR, 1, 2) = DIST.DPTOID(+) '
        +'   AND SUBSTR(CENEDU.UBIGEO_DIR, 1, 4) = DIST.CIUDID(+) '
        +'   AND CENEDU.UBIGEO_DIR = DIST.ZIPID(+) ';
   if IFiltro<>'' then xSQL:=xSQL+'  AND '+IFiltro;
   Screen.Cursor:=crHourGlass;
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;

   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('DPTODES'#9'15'#9'DPTO');
   dbgPrincipal.Selected.Add('CIUDDES'#9'15'#9'PROV');
   dbgPrincipal.Selected.Add('ZIPDES'#9'15'#9'DIST');
   dbgPrincipal.Selected.Add('NIVEDU_DES'#9'25'#9'NIVEL/MOD.');  // HPP_200907_ASO
   dbgPrincipal.Selected.Add('CODMOD'#9'10'#9'COD.MOD.');
   dbgPrincipal.Selected.Add('NOMCENEDU'#9'30'#9'NOMBRE');
   dbgPrincipal.Selected.Add('DIREC'#9'50'#9'DIRECCION');
   dbgPrincipal.Selected.Add('CENPO'#9'20'#9'CENTRO POBLADO');
   dbgPrincipal.Selected.Add('CENEDUID'#9'8'#9'ID');
   dbgPrincipal.Selected.Add('UBIGEO'#9'8'#9'UBIGEO');
   dbgPrincipal.ApplySelected;
   dbgPrincipal.RefreshDisplay;

   Screen.Cursor:=crDefault;
end;

(******************************************************************************)
procedure TFManCol.dbgPrincipalIBtnAddClick(Sender: TObject);
begin
  fManColAgr:=TfManColAgr.create(self);
  try
     fManColAgr.Caption:='Agregar un Centro Educativo';
     fManColAgr.xTipo:='ADD';
     if fManColAgr.showmodal=mrOk then btnFiltrar.OnClick(btnFiltrar);
  finally
     fManColAgr.Free;
  end;
end;

(******************************************************************************)
procedure TFManCol.FormShow(Sender: TObject);
var
   xSQL:string;
begin
// carga el filtro
// dpto
   xSQL := 'SELECT DPTOID,DPTODES FROM APO158';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSQL);
   DM1.cdsQry2.Open;

   dblcdDptoId.LookupField:='';
   dblcdDptoId.LookupTable:=DM1.cdsQry2;
   dblcdDptoId.LookupField:='DPTOID';
   dblcdDptoId.Selected.Clear;
   dblcdDptoId.Selected.Add('DPTOID'#9'4'#9'Id');
   dblcdDptoId.Selected.Add('DPTODES'#9'20'#9'Descripcion');

   // prov
   xSQL := 'SELECT DPTOID,CIUDID,CIUDDES FROM APO123';
   DM1.cdsQry3.Close;
   DM1.cdsQry3.DataRequest(xSQL);
   DM1.cdsQry3.Open;

   dblcdProvId.LookupField:='';
   dblcdProvId.LookupTable:=DM1.cdsQry3;
   dblcdProvId.LookupField:='CIUDID';
   dblcdProvId.Selected.Clear;
   dblcdProvId.Selected.Add('CIUDID'#9'6'#9'Id');
   dblcdProvId.Selected.Add('CIUDDES'#9'20'#9'Descripcion');

   // dist
   xSQL := 'SELECT DPTOID,CIUDID,ZIPID,ZIPDES FROM APO122';
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSQL);
   DM1.cdsQry4.Open;

   dblcdDistId.LookupField:='';
   dblcdDistId.LookupTable:=DM1.cdsQry4;
   dblcdDistId.LookupField:='ZIPID';
   dblcdDistId.Selected.Clear;
   dblcdDistId.Selected.Add('ZIPID'#9'8'#9'Id');
   dblcdDistId.Selected.Add('ZIPDES'#9'20'#9'Descripcion');

   dblcdDptoId.Text:='15';

   btnFiltrar.OnClick(btnFiltrar);
end;

(******************************************************************************)
procedure TFManCol.BitBtn3Click(Sender: TObject);
begin
   DM1.HojaExcel('Reporte', DBGrid.DataSource, DBGrid);
end;

(******************************************************************************)
procedure TFManCol.btnFiltrarClick(Sender: TObject);
var
   xCad:string;
begin
  // Inicio SPP_201408_ASO

  If rdbNomCol.Checked Then
     Begin
         xCad := '';
         If Trim(meDesCol.Text) <> '' Then xCad := 'NOMCENEDU LIKE '+QuotedStr('%'+Trim(meDesCol.Text)+'%');
         If Trim(dblcdDptoId.Text) <> '' Then
         Begin
           If Trim(xCad) <> '' Then xCad := xCad + ' AND ';
           xCad := xCad + ' SUBSTR(UBIGEO_DIR,1,2) = '+QuotedStr(dblcdDptoId.Text);
         End;
         If Trim(dblcdProvId.Text) <> '' Then xCad := xCad + ' AND SUBSTR(UBIGEO_DIR,1,4) = '+QuotedStr(dblcdProvId.Text);
         If Trim(dblcdDistId.Text) <> '' Then xCad := xCad + ' AND UBIGEO_DIR = '+QuotedStr(dblcdDistId.Text);
         if length(trim(xCad))=0 then
         begin
            ShowMessage('Debe de elegir al menos un criterio de filtro');
            meDesCol.SetFocus;
            exit;
         end;
     End;
  If rdbCodCol.Checked Then
     Begin
         xCad := '';
         dblcdDptoId.Text:='';
         If Trim(meDesCol.Text) <> '' Then xCad := 'CODMOD='+QuotedStr(Trim(meDesCol.Text));
     End;
  // Fin SPP_201408_ASO 
   cargarGridPrincipal(xCad);
end;

(******************************************************************************)
procedure TFManCol.filtrarProvincia(IDptoId: string);
begin
   dblcdProvId.text:='';
   meProvDes.text:='';
   DM1.cdsQry3.Filtered:=false;
   DM1.cdsQry3.Filter:='DPTOID='+quotedstr(IDptoId);
   DM1.cdsQry3.Filtered:=true;
end;

(******************************************************************************)
procedure TFManCol.filtrarDistrito(IDistId: string);
begin
   dblcdDistId.text:='';
   meDistDes.text:='';
   DM1.cdsQry4.Filtered:=false;
   DM1.cdsQry4.Filter:='CIUDID='+quotedstr(IDistId);
   DM1.cdsQry4.Filtered:=true;
end;

(******************************************************************************)
procedure TFManCol.dblcdDptoIdExit(Sender: TObject);
begin
   dblcdDptoId.OnChange(dblcdDptoId);
end;

(******************************************************************************)
procedure TFManCol.dblcdDptoIdChange(Sender: TObject);
begin
   If DM1.cdsQry2.Locate('DPTOID',VarArrayof([dblcdDptoId.text]),[]) Then
      meDptoDes.Text := DM1.cdsQry2.FieldByName('DPTODES').AsString
   else
      begin
         if not dblcdDptoId.Focused then dblcdDptoId.text:='';
         meDptoDes.Text := '';
      end;
   filtrarProvincia(dblcdDptoId.text);
   filtrarDistrito(dblcdDptoId.text);
end;

(******************************************************************************)
procedure TFManCol.dblcdProvIdExit(Sender: TObject);
begin
   dblcdProvId.OnChange(dblcdProvId);
end;

(******************************************************************************)
procedure TFManCol.dblcdProvIdChange(Sender: TObject);
begin
   If DM1.cdsQry3.Locate('CIUDID',VarArrayof([dblcdProvId.text]),[]) Then
      meProvDes.Text := DM1.cdsQry3.FieldByName('CIUDDES').AsString
   else
      begin
         if not dblcdProvId.Focused then dblcdProvId.text:='';
         meProvDes.Text := '';
      end;
   filtrarDistrito(dblcdProvId.text);
end;

(******************************************************************************)
procedure TFManCol.dblcdDistIdExit(Sender: TObject);
begin
   dblcdDistId.OnChange(dblcdDistId);
end;

(******************************************************************************)
procedure TFManCol.dblcdDistIdChange(Sender: TObject);
begin
   If DM1.cdsQry4.Locate('ZIPID',VarArrayof([dblcdDistId.text]),[]) Then
      meDistDes.Text := DM1.cdsQry4.FieldByName('ZIPDES').AsString
   else
      begin
         if not dblcdDistId.Focused then dblcdDistId.text:='';
         meDistDes.Text := '';
      end;
end;

(******************************************************************************)
procedure TFManCol.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsQry2.Filtered:=False;
   DM1.cdsQry3.Filtered:=False;
   DM1.cdsQry4.Filtered:=False;
   DM1.cdsQry5.Filtered:=False;

// Inicio: DPP_201209_ASO
   DM1.cdsQry2.Close;
   DM1.cdsQry3.Close;
   DM1.cdsQry4.Close;
   DM1.cdsQry5.Close;
// Fin: DPP_201209_ASO

   Action:=caFree;
end;

(******************************************************************************)
procedure TFManCol.dbgPrincipalDblClick(Sender: TObject);
var
   bmk : TBookmark;
begin
   if DM1.cdsQry2.RecordCount >0 then
   begin
      fManColAgr:=TfManColAgr.create(self);
      try
         fManColAgr.Caption:='Actualizar el Centro Educativo - '+DM1.cdsQry5.FieldByName('NOMCENEDU').AsString;
         fManColAgr.xTipo:= 'EDIT';
         fManColAgr.xCenEduId:=DM1.cdsQry5.FieldByName('CENEDUID').AsString;
         if fManColAgr.showmodal=mrOk then
         begin
            bmk:=DM1.cdsQry5.GetBookmark;
            btnFiltrar.OnClick(btnFiltrar);
            DM1.cdsQry5.GotoBookmark(bmk);
            DM1.cdsQry5.FreeBookmark(bmk);
         end;
      finally
         fManColAgr.Free;
      end;
   end;
end;

procedure TFManCol.FormActivate(Sender: TObject);
begin
   meDesCol.SetFocus;
end;

procedure TFManCol.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TFManCol.BitBtn1Click(Sender: TObject);
begin
   Close;
end;


// Inicio: SPP_201401_ASO
procedure TFManCol.BtnExportaClick(Sender: TObject);
var xSQL:String;
begin
  Screen.Cursor := crHourGlass;
   xSQL:='SELECT A.ASOCODPAGO,A.CODMOD,A.ACTIVO, B.NOMCENEDU,B.NIVMOD,B.GESDEP, '+
         'B.CODLOC,B.UNIGES,B.DIREC, B.UBIGEO_DIR, C.DPTODES DPTCOL,D.CIUDDES PRVCOL,E.ZIPDES DSTCOL, '+
         'CENPO,A.ACTIVO FROM ASO_CEN_EDU_VS_PAGO_MAE A,ASO_CEN_EDU B,  '+
         'APO158 C, TGE121 D, TGE122 E WHERE A.CODMOD=B.CODMOD(+) AND SUBSTR(B.UBIGEO_DIR,1,2)=C.DPTOID(+) '+
         'AND SUBSTR(B.UBIGEO_DIR,1,2)=D.DPTOID(+) AND SUBSTR(B.UBIGEO_DIR,3,2)=D.CIUDID(+) '+
         'AND SUBSTR(B.UBIGEO_DIR,1,2)=E.DPTOID(+) AND SUBSTR(B.UBIGEO_DIR,3,2)=E.CIUDID(+) AND SUBSTR(B.UBIGEO_DIR,5,2)=E.ZIPID(+) ';
   DM1.cdsExpCenEdu.Close;
   DM1.cdsExpCenEdu.DataRequest(xSQL);
   DM1.cdsExpCenEdu.Open;
   If DM1.cdsExpCenEdu.RecordCount > 0 Then
      DM1.HojaExcel('DetCenEdu', dtgExpCenEdu.DataSource, dtgExpCenEdu)
   Else
       MessageDlg('No existe información de Centros Educativos', mtError, [mbOk], 0);
   Screen.Cursor := crDefault;
end;
// Fin: SPP_201401_ASO

end.

