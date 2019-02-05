// Inicio Uso Estándares     : 01/08/2011
// Unidad                    : ASO906.pas
// Formulario                : fManColAgr
// Fecha de Creación         : 2009
// Autor                     : Equipo de Desarrollo de Sistemas DM
// Objetivo                  : Modificar los datos de un centro educativo

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPP_200907_ASO(F1), se renombró botón bbtnCerrar
// HPC_201202_ASO      : 28/02/2012  DFERNANDEZ Se agrega el campo CODPAGO y se hicieron mejoras de uso de la interfaz
// DPP_201209_ASO      : El pase a producción se realiza a partir del HPC_201202_ASO
//HPC_201211_ASO       : 12/12/2012  DFERNANDEZ Se permite registrar múltiples códigos de pago para un colegio.
//                       También se agrega una validación para evitar que exista duplicidad
//                       en el par código modular + nivel educativo
// SPP_201301_ASO      : El pase a producción se realiza sobre la base del HPC_201301_ASO
// HPC_201312_ASO      : 12/11/2013 Se agregó la edición del "centro poblado"
// SPP_201313_ASO      : Se realiza el pase a producción a partir del HPC_201312_ASO
// HPC_201410_ASO      : Mostrar códigos de pago para el mismo colegio.
// SPP_201408_ASO      : Se realiza el pase a producción a partir del HPC_201410_ASO.

unit ASO906;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Wwdbdlg, Buttons, Mask, ExtCtrls, ComCtrls,
  // Inicio: SPP_201301_ASO
  Wwdbigrd, Grids, Wwdbgrid;
  // Fin: SPP_201301_ASO

type
  TfManColAgr = class(TForm)
    bbtnCerrar: TBitBtn;
    pcColegios: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label1: TLabel;
    dblcdNivModid: TwwDBLookupComboDlg;
    edCodigoModular: TEdit;
    edNomCenEdu: TEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblmanzana: TLabel;
    lbllote: TLabel;
    Label7: TLabel;
    lblintlet: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    medescal: TMaskEdit;
    menumdir: TMaskEdit;
    cbpiso: TComboBox;
    cbseceta: TComboBox;
    dblccodtiplug: TwwDBLookupComboDlg;
    medestiplug: TMaskEdit;
    dblccodurb: TwwDBLookupComboDlg;
    medesurb: TMaskEdit;
    memanzana: TMaskEdit;
    melote: TMaskEdit;
    menumpiso: TMaskEdit;
    merefdir: TMaskEdit;
    menomurb: TMaskEdit;
    menomsec: TMaskEdit;
    dblcdcoddep: TwwDBLookupComboDlg;
    medesdep: TMaskEdit;
    dblcdcodpro: TwwDBLookupComboDlg;
    medespro: TMaskEdit;
    dblcdcoddis: TwwDBLookupComboDlg;
    medesdis: TMaskEdit;
    mecendir: TMaskEdit;
    cbtipman: TComboBox;
    dblcdUniPro: TwwDBLookupComboDlg;
    Label2: TLabel;
    dblcdUniPag: TwwDBLookupComboDlg;
    Label6: TLabel;
    Label20: TLabel;
    dblcdUniGes: TwwDBLookupComboDlg;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    metelefono: TMaskEdit;
    Label27: TLabel;
    BitSiguiente: TBitBtn;
    BitGrabar: TBitBtn;
    edNivEdu: TEdit;
    EdtUniProNom: TEdit;
    EdtUniPagNom: TEdit;
    EdtUniGesNom: TEdit;
 // Inicio: SPP_201301_ASO
    dbgCodigosPago: TwwDBGrid;
    dbgPrincipalIBtnAdd: TwwIButton;
//Inicio: SPP_201313_ASO
    Label28: TLabel;
    mecenpob: TMaskEdit;
//Fin: SPP_201313_ASO
 // Fin: SPP_201301_ASO
 //
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dblccodurbChange(Sender: TObject);
    procedure dblccodurbExit(Sender: TObject);
    procedure cbsecetaChange(Sender: TObject);
    procedure cbsecetaExit(Sender: TObject);
    procedure dblccodtiplugChange(Sender: TObject);
    procedure dblccodtiplugExit(Sender: TObject);
    procedure cbtipmanExit(Sender: TObject);
    procedure cbpisoExit(Sender: TObject);
    procedure dblcdcoddepChange(Sender: TObject);
 // Inicio: SPP_201301_ASO
    {
    procedure dblcdcoddepExit(Sender: TObject);
    }
 // Fin: SPP_201301_ASO
    procedure dblcdcodproChange(Sender: TObject);
 // Inicio: SPP_201301_ASO
    {
    procedure dblcdcodproExit(Sender: TObject);
    procedure dblcdcoddisExit(Sender: TObject);
    }
 // Fin: SPP_201301_ASO
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitGrabarClick(Sender: TObject);
    procedure dblcdUniProExit(Sender: TObject);
    procedure dblcdUniPagExit(Sender: TObject);
    procedure dblcdUniGesExit(Sender: TObject);
    procedure bbtnCerrarClick(Sender: TObject);
    procedure BitSiguienteClick(Sender: TObject);
    procedure dblcdNivModidExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcdcoddisChange(Sender: TObject);
    procedure dblccodurbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbsecetaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblccodtiplugKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbtipmanKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbpisoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
 // Inicio: SPP_201301_ASO
    {
    procedure dblcdcoddepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcdcodproKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcdcoddisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);  // HPP_200907_ASO(F1)
    }
    procedure dbgPrincipalIBtnAddClick(Sender: TObject);
    procedure dbgCodigosPagoDblClick(Sender: TObject);
 // Fin: SPP_201301_ASO
 //

  private
    procedure llenaforma;
    function validadatos: Boolean;
    function actCenDir: String;
    { Private declarations }
  public
    xTipo:string;
    xCenEduId:string;
    // Inicio: SPP_201301_ASO
    procedure CargarCodigosDePago;
    // Fin: SPP_201301_ASO
  end;

var
  fManColAgr: TfManColAgr;
  wUProceso, wUPago, wUGel, wCenEduId : String;

implementation

uses ASODM, ASO905, 
     ASO909, DB; // SPP_201301_ASO

{$R *.dfm}

(******************************************************************************)
procedure TfManColAgr.FormCreate(Sender: TObject);
begin
   xTipo:='ADD';
end;

(******************************************************************************)
procedure TfManColAgr.FormShow(Sender: TObject);
var
   xSQL:string;
begin
   xSQL := 'SELECT NIVEDU_ID, NIVEDU_DES '
          +'  FROM NIV_CEN_EDU ';
   DM1.cdsQry20.Close;
   DM1.cdsQry20.DataRequest(xSQL);
   DM1.cdsQry20.Open;

   dblcdNivModid.LookupField:='';
   dblcdNivModid.LookupTable:=DM1.cdsQry20;
   dblcdNivModid.LookupField:='NIVEDU_ID';
   dblcdNivModid.Selected.Clear;
   dblcdNivModid.Selected.Add('NIVEDU_ID'#9'10'#9'Id');
   dblcdNivModid.Selected.Add('NIVEDU_DES'#9'40'#9'Descripcion');
end;

(******************************************************************************)
procedure TfManColAgr.FormActivate(Sender: TObject);
Var
   xSql:String;
begin
   xSql := 'SELECT CODTIPLUG, DESTIPLUG  FROM ASO_TIP_LUG WHERE NVL(FLAHAB,''X'') = ''S'' ORDER BY ORDEN';
   DM1.cdsCViv.Close;
   DM1.cdsCViv.DataRequest(xSql);
   DM1.cdsCViv.Open;

   dblccodtiplug.Selected.Clear;
   dblccodtiplug.Selected.Add('CODTIPLUG'#9'6'#9'Código'#9#9);
   dblccodtiplug.Selected.Add('DESTIPLUG'#9'12'#9'Descripción'#9#9);

   xSql := 'SELECT CODURB, DESURB FROM ASO_TIP_URB WHERE NVL(FLAHAB,''X'') = ''S'' ORDER BY ORDEN';
   DM1.cdsCia.Close;
   DM1.cdsCia.DataRequest(xSql);
   DM1.cdsCia.Open;

   dblccodurb.Selected.Clear;
   dblccodurb.Selected.Add('CODURB'#9'2'#9'Código'#9#9);
   dblccodurb.Selected.Add('DESURB'#9'23'#9'Descripción'#9#9);

   xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSql);
   DM1.cdsDpto.Open;
   dblcdcoddep.Selected.Clear;
   dblcdcoddep.Selected.Add('DPTOID'#9'2'#9'Código');
   dblcdcoddep.Selected.Add('DPTODES'#9'23'#9'Departamento');

   xSql := 'SELECT UPROID, UPRONOM FROM APO102';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSql);
   DM1.cdsUPro.Open;
   dblcdUniPro.Selected.Clear;
   dblcdUniPro.Selected.Add('UPROID'#9'3'#9'Código');
   dblcdUniPro.Selected.Add('UPRONOM'#9'23'#9'Unidad de~Proceso');

   xSql := 'SELECT UPROID, UPAGOID, UPAGONOM FROM APO103';
   DM1.cdsUPago.Close;
   DM1.cdsUPago.DataRequest(xSql);
   DM1.cdsUPago.Open;
   dblcdUniPag.Selected.Clear;
   dblcdUniPag.Selected.Add('UPAGOID'#9'3'#9'Código'#9#9);
   dblcdUniPag.Selected.Add('UPAGONOM'#9'25'#9'Unidad~de Pago'#9#9);

   xSql := 'SELECT UPROID, UPAGOID, USEID, USENOM FROM APO101 ';
   DM1.cdsUSES.Close;
   DM1.cdsUSES.DataRequest(xSql);
   DM1.cdsUSES.Open;
   dblcdUniGes.Selected.Clear;
   dblcdUniGes.Selected.Add('USEID'#9'3'#9'Código'#9#9);
   dblcdUniGes.Selected.Add('USENOM'#9'25'#9'Unidad~de Gestión'#9#9);

   pcColegios.TabIndex := 0;

   If xTipo='EDIT' then
   begin
      llenaforma;
      dblcdNivModid.SetFocus;
   end
   else
      edCodigoModular.SetFocus;
end;

(******************************************************************************)
procedure TfManColAgr.llenaforma;
Var
   xSql:String;
begin
   xSql := 'SELECT * FROM ASO_CEN_EDU WHERE CENEDUID = '+xCenEduId;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

// se inicializan variables para definir si van a tener cambio o no
   wUProceso := DM1.cdsQry.FieldByName('UPROID').AsString;
   wUPago    := DM1.cdsQry.FieldByName('UPAGOID').AsString;
   wUGel     := DM1.cdsQry.FieldByName('USEID').AsString;
   wCenEduId := DM1.cdsQry.FieldByName('CENEDUID').AsString;

   mecendir.Text       := DM1.cdsQry.FieldByName('DIREC').AsString;
   dblcdNivModid.Text  := TRIM(DM1.cdsQry.FieldByName('NIVEDU_ID').AsString);

   If DM1.cdsQry20.Locate('NIVEDU_ID',VarArrayof([dblcdNivModid.text]),[]) Then
      edNivEdu.Text := DM1.cdsQry20.FieldByName('NIVEDU_DES').AsString;

   edCodigoModular.Text:= DM1.cdsQry.FieldByName('CODMOD').AsString;
   edNomCenEdu.Text    := DM1.cdsQry.FieldByName('NOMCENEDU').AsString;
   // Inicio: SPP_201301_ASO
   //edtCodigoPago.Text := DM1.cdsQry.FieldByName('CODPAGO').AsString;
   // Fin: SPP_201301_ASO
   metelefono.Text     := DM1.cdsQry.FieldByName('TELEFONO').AsString;

   dblcdUniPro.Text    := DM1.cdsQry.FieldByName('UPROID').AsString;
   xSql := 'SELECT UPRONOM FROM APO102 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text);
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;
   EdtUniProNom.Text := DM1.cdsQry1.FieldByName('UPRONOM').AsString;

   dblcdUniPag.Text    := DM1.cdsQry.FieldByName('UPAGOID').AsString;
   xSql := 'SELECT UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text)+' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text);
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;
   EdtUniPagNom.Text := DM1.cdsQry1.FieldByName('UPAGONOM').AsString;

   dblcdUniGes.Text    := DM1.cdsQry.FieldByName('USEID').AsString;
   xSql := 'SELECT USENOM FROM APO101 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text)+' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text)+' AND USEID = '+QuotedStr(dblcdUniGes.Text);
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;
   EdtUniGesNom.Text := DM1.cdsQry1.FieldByName('USENOM').AsString;

  // Urbanización
   If (DM1.cdsQry.FieldByName('CODURBVIV').AsString <> '') Then
   Begin
      dblccodurb.Text := DM1.cdsQry.FieldByName('CODURBVIV').AsString;
      xSql := 'SELECT CODURB, DESURB FROM ASO_TIP_URB WHERE CODURB = '+QuotedStr(dblccodurb.Text);
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      medesurb.Text := DM1.cdsQry21.FieldByName('DESURB').AsString;
      menomurb.Text := DM1.cdsQry.FieldByName('DESURBVIV').AsString;
   End
   Else
   Begin
      menomurb.Text := '';
      medesurb.Text := '';
      menomurb.Color := clMoneyGreen;
      menomurb.Enabled := False;
   End;
  // Sector/etapa
   If Trim(DM1.cdsQry.FieldByName('NUMETAVIV').AsString) = '' Then
   Begin
      cbseceta.Text  := 'Ninguno';
      menomsec.Text  := '';
      menomsec.Color := clMoneyGreen;
   End
   Else
   Begin
      cbseceta.Text  := DM1.cdsQry.FieldByName('NUMETAVIV').AsString;
      menomsec.Text  := DM1.cdsQry.FieldByName('DESETAVIV').AsString;
      menomsec.Color := clWhite;
   End;
  // calle/avenida/jiron
   If Trim(DM1.cdsQry.FieldByName('CODTIPLUG').AsString) <> '' Then
   Begin
      dblccodtiplug.Text := DM1.cdsQry.FieldByName('CODTIPLUG').AsString;
      xSql := 'SELECT * FROM ASO_TIP_LUG WHERE CODTIPLUG = '+QuotedStr(dblccodtiplug.Text);
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      medestiplug.Text   := DM1.cdsQry21.FieldByName('DESTIPLUG').AsString;
      medescal.Text      := DM1.cdsQry.FieldByName('NOMDIRVIV').AsString;
      menumdir.Text      := DM1.cdsQry.FieldByName('NUMDIRVIV').AsString;
   End
   Else
   Begin
      medescal.Text    := '';
      menumdir.Text    := '';
      medestiplug.Text := '';
      medescal.Color   := clMoneyGreen;
      menumdir.Color   := clMoneyGreen;
   End;
  // Mz./Edif./Bock
   If Trim(DM1.cdsQry.FieldByName('DESMANVIV').AsString) = '' Then
   Begin
      cbtipman.Text  := 'Ninguno';
      memanzana.Text := '';
      melote.Text    := '';
      lblmanzana.Caption := '';
      lbllote.Caption    := '';
      memanzana.Color := clMoneyGreen;
      melote.Color := clMoneyGreen;
      memanzana.Enabled := False;
      melote.Enabled := False;
   End
   Else
   Begin
      If Trim(DM1.cdsQry.FieldByName('DESMANVIV').AsString) = 'MANZANA' Then
      Begin
         cbtipman.Text  := DM1.cdsQry.FieldByName('DESMANVIV').AsString;
         memanzana.Text := DM1.cdsQry.FieldByName('NUMMANVIV').AsString;
         melote.Text    := DM1.cdsQry.FieldByName('NUMLOTVIV').AsString;
         lblmanzana.Caption := 'MANZANA';
         lbllote.Caption    := 'LOTE';
         memanzana.Color    := clWhite;
         melote.Color       := clWhite;
         memanzana.Enabled  := True;
         melote.Enabled     := True;
      End;
      If Trim(DM1.cdsQry.FieldByName('DESMANVIV').AsString) = 'EDIFICIO' Then
      Begin
         cbtipman.Text  := DM1.cdsQry.FieldByName('DESMANVIV').AsString;
         memanzana.Text := DM1.cdsQry.FieldByName('NUMMANVIV').AsString;
         melote.Text    := DM1.cdsQry.FieldByName('NUMLOTVIV').AsString;
         lblmanzana.Caption := 'EDIFICIO';
         lbllote.Caption    := 'PISO';
         memanzana.Color    := clWhite;
         melote.Color       := clWhite;
         memanzana.Enabled  := True;
         melote.Enabled     := True;
      End;
      If Trim(DM1.cdsQry.FieldByName('DESMANVIV').AsString) = 'BLOCK' Then
      Begin
         cbtipman.Text  := DM1.cdsQry.FieldByName('DESMANVIV').AsString;
         memanzana.Text := DM1.cdsQry.FieldByName('NUMMANVIV').AsString;
         melote.Text    := DM1.cdsQry.FieldByName('NUMLOTVIV').AsString;
         lblmanzana.Caption := 'BLOCK';
         lbllote.Caption    := 'LETRA';
         memanzana.Color    := clWhite;
         melote.Color       := clWhite;
         memanzana.Enabled  := True;
         melote.Enabled     := True;
      End;
   End;
  // tipo dpto/int
   If Trim(DM1.cdsQry.FieldByName('DESINTVIV').AsString) = '' Then
   Begin
      cbpiso.Text := 'Ninguno';
      menumpiso.Text := '';
      menumpiso.Enabled := False;
      menumpiso.Color := clMoneyGreen;
   End
   Else
   Begin
      If Trim(DM1.cdsQry.FieldByName('DESINTVIV').AsString) = 'INTERIOR' Then
      Begin
         cbpiso.Text := DM1.cdsQry.FieldByName('DESINTVIV').AsString;
         menumpiso.Text := DM1.cdsQry.FieldByName('NUMINTVIV').AsString;
         menumpiso.Enabled := True;
         menumpiso.Color := clWhite;
      End;
      If Trim(DM1.cdsQry.FieldByName('DESINTVIV').AsString) = 'LETRA' Then
      Begin
         cbpiso.Text := DM1.cdsQry.FieldByName('DESINTVIV').AsString;
         menumpiso.Text := DM1.cdsQry.FieldByName('NUMINTVIV').AsString;
         menumpiso.Enabled := True;
         menumpiso.Color := clWhite;
      End;
   End;
  //Referencia
   merefdir.Text  := DM1.cdsQry.FieldByName('DESREFVIV').AsString;
  // Ubigeo
   If Length(Trim(DM1.cdsQry.FieldByName('UBIGEO_DIR').AsString)) = 6 Then
   Begin
      xSql := 'SELECT * FROM APO158 WHERE DPTOID = '+QuotedStr(Copy(DM1.cdsQry.FieldByName('UBIGEO_DIR').AsString,1,2));
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      medesdep.Text    := DM1.cdsQry21.FieldByName('DPTODES').AsString;
      dblcdcoddep.Text := Copy(DM1.cdsQry.FieldByName('UBIGEO_DIR').AsString,1,2);
      xSql := 'SELECT * FROM APO123 WHERE CIUDID = '+QuotedStr(Copy(DM1.cdsQry.FieldByName('UBIGEO_DIR').AsString,1,4));
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      xSql := 'SELECT CIUDID, CIUDDES FROM APO123 WHERE DPTOID = '+QuotedStr(dblcdcoddep.Text)+' ORDER BY CIUDID';
      DM1.cdsProvin.Close;
      DM1.cdsProvin.DataRequest(xSql);
      DM1.cdsProvin.Open;
      dblcdcodpro.Selected.Clear;
      dblcdcodpro.Selected.Add('CIUDID'#9'4'#9'Ubigeo');
      dblcdcodpro.Selected.Add('CIUDDES'#9'23'#9'Provincia');
      medespro.Text    := DM1.cdsQry21.FieldByName('CIUDDES').AsString;
      dblcdcodpro.Text := Copy(DM1.cdsQry.FieldByName('UBIGEO_DIR').AsString,1,4);
      xSql := 'SELECT * FROM APO122 WHERE ZIPID = '+QuotedStr(DM1.cdsQry.FieldByName('UBIGEO_DIR').AsString);
      DM1.cdsQry21.Close;
      DM1.cdsQry21.DataRequest(xSql);
      DM1.cdsQry21.Open;
      xSql := 'SELECT ZIPID, ZIPDES FROM APO122 WHERE CIUDID = '+QuotedStr(dblcdcodpro.Text)+' ORDER BY ZIPID';
      DM1.cdsDist.Close;
      DM1.cdsDist.DataRequest(xSql);
      DM1.cdsDist.Open;
      dblcdcoddis.Selected.Clear;
      dblcdcoddis.Selected.Add('ZIPID'#9'6'#9'Ubigeo');
      dblcdcoddis.Selected.Add('ZIPDES'#9'23'#9'Distrito');
      medesdis.Text := DM1.cdsQry21.FieldByName('ZIPDES').AsString;
      dblcdcoddis.Text := DM1.cdsQry.FieldByName('UBIGEO_DIR').AsString;
   End;

//Inicio: SPP_201313_ASO
   mecenpob.Text  := DM1.cdsQry.FieldByName('CENPO').AsString;
//Fin: SPP_201313_ASO

   // Inicio: SPP_201301_ASO
   CargarCodigosDePago;
   // Fin: SPP_201301_ASO
End;

(******************************************************************************)
procedure TfManColAgr.dblccodurbChange(Sender: TObject);
begin
  If Length(Trim(dblccodurb.Text)) = 2 Then
     medesurb.Text := DM1.cdsCia.FieldByName('DESURB').AsString
  Else
     medesurb.Text := '';
end;

(******************************************************************************)
procedure TfManColAgr.dblccodurbExit(Sender: TObject);
begin
   If Length(Trim(dblccodurb.Text)) = 0 Then
   Begin
      medesurb.Text := '';
      menomurb.Text := '';
      menomurb.Enabled := False;
      menomurb.Color := clMoneyGreen;
      Exit;
   End;
   If Length(trim(dblccodurb.Text)) = 2 Then
   Begin
      If DM1.cdsCia.Locate('CODURB',VarArrayof([dblccodurb.text]),[]) Then
      Begin
         medesurb.Text := DM1.cdsCia.FieldByName('DESURB').AsString;
         menomurb.Enabled := True;
         menomurb.Color := clWhite;
         Exit;
      End
      Else
      Begin
         dblccodurb.Text := '';
         medesurb.Text  := '';
         Exit;
      End;
   End
   Else
   Begin
      dblccodurb.Text := '';
      medesurb.Text  := '';
      Exit;
   End;
end;

(******************************************************************************)
procedure TfManColAgr.cbsecetaChange(Sender: TObject);
begin
   If cbseceta.ItemIndex = 0 Then
   Begin
      menomsec.Text    := '';
      menomsec.Enabled := False;
      menomsec.Color   := clMoneyGreen;
   End
   Else
   Begin
      menomsec.Enabled := True;
      menomsec.Color   := clWhite;
   End;
end;

(******************************************************************************)
procedure TfManColAgr.cbsecetaExit(Sender: TObject);
begin
  If (Trim(cbseceta.Text) = 'Ninguno') Or (Trim(cbseceta.Text) = '') Then
  Begin
    cbseceta.Text := 'Ninguno';
    menomsec.Text := '';
    menomsec.Enabled := False;
    menomsec.Color := clMoneyGreen;
  End;

  If (Trim(cbseceta.Text) <> 'Ninguno') And (Trim(cbseceta.Text) <> 'ZONA') And (Trim(cbseceta.Text) <> 'ETAPA') And (Trim(cbseceta.Text) <> 'SECTOR') And (Trim(cbseceta.Text) <> 'GRUPO') Then
  Begin
    cbseceta.Text := '';
    Exit;
  End;
end;

(******************************************************************************)
procedure TfManColAgr.dblccodtiplugChange(Sender: TObject);
begin
  If Length(Trim(dblccodtiplug.Text)) = 2 Then
    medestiplug.Text := DM1.cdsCViv.FieldByName('DESTIPLUG').AsString
  Else
    medestiplug.Text := '';
end;

(******************************************************************************)
procedure TfManColAgr.dblccodtiplugExit(Sender: TObject);
begin
  If Length(Trim(dblccodtiplug.Text)) = 0 Then
  Begin
    medestiplug.Text := '';
    medescal.Text    := '';
    medescal.Enabled := False;
    medescal.Color   := clMoneyGreen;
    menumdir.Text := '';
    menumdir.Enabled := False;
    menumdir.Color   := clMoneyGreen;
    Exit;
  End;
  If Length(trim(dblccodtiplug.Text)) = 2 Then
  Begin
    If DM1.cdsCViv.Locate('CODTIPLUG',VarArrayof([dblccodtiplug.text]),[]) Then
    Begin
      medestiplug.Text := DM1.cdsCViv.FieldByName('DESTIPLUG').AsString;
      medescal.Enabled := True;
      menumdir.Enabled := True;
      medescal.Color := clWhite;
      menumdir.Color := clWhite;
      Exit;
    End
    Else
    Begin
      dblccodtiplug.Text := '';
      medestiplug.Text  := '';
      Exit;
    End;
  End
  Else
  Begin
    dblccodtiplug.Text := '';
    medestiplug.Text  := '';
    Exit;
  End;
end;

(******************************************************************************)
procedure TfManColAgr.cbtipmanExit(Sender: TObject);
begin
  If (Trim(cbtipman.Text) = 'Ninguno') Or (Trim(cbtipman.Text) = '') Then
  Begin
    cbtipman.Text := 'Ninguno';
    memanzana.Text := '';
    melote.Text    := '';
    memanzana.Enabled  := False;
    melote.Enabled     := False;
    memanzana.Color    := clMoneyGreen;
    melote.Color       := clMoneyGreen;
    Exit;
  End;

  If (Trim(cbtipman.Text) <> 'Ninguno') And (Trim(cbtipman.Text) <> 'MANZANA') And (Trim(cbtipman.Text) <> 'EDIFICIO') And (Trim(cbtipman.Text) <> 'BLOCK') Then
  Begin
    cbtipman.Text := '';
    Exit;
  End;
  If cbtipman.Text = 'Ninguno' Then
  Begin
    memanzana.Text := '';
    melote.Text    := '';
    memanzana.Enabled  := False;
    melote.Enabled     := False;
    memanzana.Color    := clMoneyGreen;
    melote.Color       := clMoneyGreen;
    Exit;
  End;
  If cbtipman.Text = 'MANZANA' Then
  Begin
    lblmanzana.Caption := 'MANZANA';
    lbllote.Caption    := 'LOTE';
    memanzana.Enabled  := True;
    melote.Enabled     := True;
    memanzana.Color    := clWhite;
    melote.Color       := clWhite;
  End;
  If cbtipman.Text = 'EDIFICIO' Then
  Begin
    lblmanzana.Caption := 'EDIFICIO';
    lbllote.Caption    := 'PISO';
    memanzana.Enabled  := True;
    melote.Enabled     := True;
    memanzana.Color    := clWhite;
    melote.Color       := clWhite;
  End;
  If cbtipman.Text = 'BLOCK' Then
  Begin
    lblmanzana.Caption := 'BLOCK';
    lbllote.Caption    := 'LETRA';
    memanzana.Enabled  := True;
    melote.Enabled     := True;
    memanzana.Color    := clWhite;
    melote.Color       := clWhite;
  End;
end;

(******************************************************************************)
procedure TfManColAgr.cbpisoExit(Sender: TObject);
begin
  If (Trim(cbpiso.Text) = 'Ninguno') Or (Trim(cbpiso.Text) = '')  Then
  Begin
    cbpiso.Text := 'Ninguno';
    lblintlet.Caption := '';
    menumpiso.Text    := '';
    menumpiso.Color   := clMoneyGreen;
    menumpiso.Enabled := False;
    Exit;
  End;

  If (Trim(cbpiso.Text) <> 'Ninguno') And (cbpiso.Text <> 'INTERIOR') And (Trim(cbpiso.Text) <> 'LETRA') Then
  Begin
    cbpiso.Text := '';
    Exit;
  End;

  If Trim(cbpiso.Text) = 'INTERIOR' Then
  Begin
    lblintlet.Caption := 'INTERIOR';
    menumpiso.Color   := clWhite;
    menumpiso.Enabled := True;
    Exit;
  End;
  If Trim(cbpiso.Text) = 'LETRA' Then
  Begin
    lblintlet.Caption := 'LETRA';
    menumpiso.Color   := clWhite;
    menumpiso.Enabled := True;
    Exit;
  End;
end;

(******************************************************************************)
procedure TfManColAgr.dblcdcoddepChange(Sender: TObject);
Var xSql:String;
begin
  dblcdcoddis.Text := '';
  medesdis.Text    := '';
  dblcdcodpro.Text := '';
  medespro.Text    := '';
  DM1.cdsDist.Close;
  DM1.cdsProvin.Close;
  If Length(trim(dblcdcoddep.Text)) = 2 Then
  Begin
    If DM1.cdsDpto.Locate('DPTOID',VarArrayof([dblcdcoddep.text]),[]) Then
    Begin                                         
      medesdep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
      xSql := 'SELECT CIUDID, CIUDDES FROM APO123 WHERE DPTOID = '+QuotedStr(dblcdcoddep.Text)+' ORDER BY CIUDID';
      DM1.cdsProvin.Close;
      DM1.cdsProvin.DataRequest(xSql);
      DM1.cdsProvin.Open;
      dblcdcodpro.Selected.Clear;
      dblcdcodpro.Selected.Add('CIUDID'#9'4'#9'Ubigeo');
      dblcdcodpro.Selected.Add('CIUDDES'#9'23'#9'Provincia');
      dblcdcodpro.Color := clWhite;
      dblcdcodpro.Enabled := True;
      If (dblcdcodpro.Enabled = True) and (pcColegios.TabIndex = 1) Then dblcdcodpro.SetFocus;
      Exit;
    End
    Else
    Begin
      medesdep.Text := '';
      dblcdcodpro.Color := clMoneyGreen;
      dblcdcodpro.Enabled := False;
      dblcdcoddep.Text := '';
      If (dblcdcoddep.Enabled = True) and (pcColegios.TabIndex = 1) Then  dblcdcoddep.SetFocus;
      Exit;
    End;
  End
  Else
  Begin
    medesdep.Text := '';
    dblcdcodpro.Color := clMoneyGreen;
    dblcdcodpro.Enabled := False;
    dblcdcoddep.Text := '';
    If (dblcdcoddep.Enabled = True) and (pcColegios.TabIndex = 1) Then   dblcdcoddep.SetFocus;
    Exit;
  End;
end;

(******************************************************************************)
procedure TfManColAgr.dblcdcodproChange(Sender: TObject);
Var xSql:String;
begin
  dblcdcoddis.Text := '';
  medesdis.Text    := '';
  DM1.cdsDist.Close;
  If Length(trim(dblcdcodpro.Text)) = 4 Then
  Begin
    If DM1.cdsProvin.Locate('CIUDID',VarArrayof([dblcdcodpro.text]),[]) Then
    Begin
      medespro.Text := DM1.cdsProvin.FieldByName('CIUDDES').AsString;
      xSql := 'SELECT ZIPID, ZIPDES FROM APO122 WHERE CIUDID = '+QuotedStr(dblcdcodpro.Text)+' ORDER BY ZIPID';
      DM1.cdsDist.Close;
      DM1.cdsDist.DataRequest(xSql);
      DM1.cdsDist.Open;
      dblcdcoddis.Selected.Clear;
      dblcdcoddis.Selected.Add('ZIPID'#9'6'#9'Ubigeo');
      dblcdcoddis.Selected.Add('ZIPDES'#9'23'#9'Distrito');
      dblcdcoddis.Color := clWhite;
      dblcdcoddis.Enabled := True;
      If (dblcdcoddis.Enabled = True) and (pcColegios.TabIndex = 1) Then  dblcdcoddis.SetFocus;
      Exit;
    End
    Else
    Begin
      medespro.Text := '';
      dblcdcoddis.Color := clMoneyGreen;
      dblcdcoddis.Enabled := False;
      dblcdcodpro.Text := '';
      If (dblcdcodpro.Enabled = True) and (pcColegios.TabIndex = 1) Then  dblcdcodpro.SetFocus;
      Exit;
    End;
  End
  Else
  Begin
    medespro.Text := '';
    dblcdcodpro.Color := clMoneyGreen;
    dblcdcoddis.Enabled := False;
    dblcdcoddis.Text := '';
    If (dblcdcodpro.Enabled = True) and (pcColegios.TabIndex = 1) Then dblcdcodpro.SetFocus;
    Exit;
  End;
end;



























(******************************************************************************)
procedure TfManColAgr.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;

(******************************************************************************)
Function TfManColAgr.validadatos: Boolean;
// Inicio: SPP_201301_ASO
Var
  xSql: string;

Begin
  // Datos de Gestión del Colegio
  If Trim(dblcdNivModid.Text) = '' Then
  Begin
    MessageDlg('Seleccione el Nivel/Modalidad', mtWarning, [mbOK], 0);
    pcColegios.TabIndex := 0;
    dblcdNivModid.SetFocus;
    Result := False;
    Exit;
  End;

  If Trim(edCodigoModular.Text) = '' Then
  Begin
    MessageDlg('Ingrese el Codigo Modular del Centro Educativo', mtWarning, [mbOk], 0);
    pcColegios.TabIndex := 0;
    edCodigoModular.SetFocus;
// Fin: SPP_201301_ASO
    Result := False;
    Exit;
  End;

  If Trim(edCodigoModular.Text) = '' Then
  Begin
    MessageDlg('Ingrese el Codigo Modular del Centro Educativo', mtWarning, [mbOk], 0);
    pcColegios.TabIndex := 0;
    edCodigoModular.SetFocus;
    Result := False;
    Exit;
  End;

  // Inicio: SPP_201301_ASO
  {If Length(edtCodigoPago.Text) <> 8 Then
  Begin
    MessageDlg('El código de pago debe tener 8 dígitos', mtWarning, [mbOk], 0);
    pcColegios.TabIndex := 0;
    edtCodigoPago.SetFocus;
    Result := False;
    Exit;
  End;}
  // Fin: SPP_201301_ASO

  If Trim(edNomCenEdu.Text) = '' Then
  Begin
    MessageDlg('Ingrese el Nombre del Centro Educativo', mtWarning, [mbOk], 0);
    pcColegios.TabIndex := 0;
    edNomCenEdu.SetFocus;
    Result := False;
    Exit;
  End;

  If Trim(dblcdUniPro.Text) = '' Then
  Begin
    MessageDlg('Seleccione la Unidad de Proceso', mtWarning, [mbOk], 0);
    dblcdUniPro.SetFocus;
    Result := False;
    Exit;
  End;

  If Trim(dblcdUniPag.Text) = '' Then
  Begin
    pcColegios.TabIndex := 0;
    dblcdUniPag.SetFocus;
    MessageDlg('Seleccione la Unidad de Pago', mtWarning, [mbOk], 0);
    Result := False;
    Exit;
  End;

  If Trim(dblcdUniGes.Text) = '' Then
  Begin
    MessageDlg('Seleccione la Unidad de Gestión', mtWarning, [mbOk], 0);
    pcColegios.TabIndex := 0;
    dblcdUniGes.SetFocus;
    Result := False;
    Exit;
  End;

  // Datos de Ubicación del Colegio
  If Trim(dblccodtiplug.Text) <> '' Then
  Begin
    If Trim(medescal.Text) = '' Then
    Begin
      MessageDlg('Seleccione nombre de calle/avenida/jiron', mtWarning, [mbOk], 0);
      pcColegios.TabIndex := 1;
      medescal.SetFocus;
      Result := False;
      Exit;
    End;
  End;

  If Trim(medescal.Text) <> '' Then
  Begin
    If Trim(dblccodtiplug.Text) = '' Then
    Begin
      MessageDlg('Seleccione tipo de calle/avenida/jiron', mtWarning, [mbOk], 0);
      pcColegios.TabIndex := 1;
      dblccodtiplug.SetFocus;
      Result := False;
      Exit;
    End;
  End;

  If (Trim(cbpiso.Text) <> 'Ninguno')  Then
  Begin
    If Trim(menumpiso.Text) = '' Then
    Begin
      pcColegios.TabIndex := 1;
      cbpiso.SetFocus;
      MessageDlg('Ingrese el número dpto/int', mtWarning, [mbOk], 0);
      Result := False;
      Exit;
    End;
  End;

  If Trim(cbseceta.Text) <> 'Ninguno' Then
  Begin
    If Trim(menomsec.Text) = '' Then
    Begin
      pcColegios.TabIndex := 1;
      menomsec.SetFocus;
      MessageDlg('nombre sector/etapa', mtWarning, [mbOk], 0);
      Result := False;
      Exit;
    End;
  End;

  If Trim(dblcdcoddep.Text) = '' Then
  Begin
    pcColegios.TabIndex := 1;
    dblcdcoddep.SetFocus;
    MessageDlg('Ingrese el nombre del departamento', mtWarning, [mbOk], 0);
    Result := False;
    Exit;
  End;

  If Trim(dblcdcodpro.Text) = '' Then
  Begin
    pcColegios.TabIndex := 1;
    dblcdcodpro.SetFocus;
    MessageDlg('Ingrese el nombre de la provincia', mtWarning, [mbOk], 0);
    Result := False;
    Exit;
  End;

  If Trim(dblcdcoddis.Text) = '' Then
  Begin
    pcColegios.TabIndex := 1;
    dblcdcoddis.SetFocus;
    MessageDlg('Ingrese el nombre del distrito', mtWarning, [mbOk], 0);
    Result := False;
    Exit;
  End;

  // Inicio: SPP_201301_ASO
  xSql := 'SELECT COUNT(1) CANTIDAD FROM ASO_CEN_EDU C'
    + ' WHERE C.CODMOD = ' + QuotedStr(Trim(edCodigoModular.Text))
    + ' AND C.NIVEDU_ID = '  + QuotedStr(Trim(dblcdNivModid.Text))
    + ' AND C.CENEDUID <> ' + QuotedStr(xCenEduId);
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  if (DM1.cdsQry1.RecordCount > 0)
    and (DM1.cdsQry1.FieldByName('CANTIDAD').AsInteger > 0) then
  begin
    MessageDlg('Existe otro centro educativo que ya tiene asignado el par: código modular + nivel educativo', mtWarning, [mbOk], 0);
    Result := False;
    Exit;
  end;
  // Fin: SPP_201301_ASO

  Result := True;

End;

(******************************************************************************)
function TfManColAgr.actCenDir: String;
Var xnuedir:String;
begin
  If Trim(medestiplug.Text) <> ''     Then xnuedir := xnuedir + Trim(medestiplug.Text);
  If Trim(medescal.Text) <> ''        Then xnuedir := xnuedir + ' '+Trim(medescal.Text);
  If Trim(menumdir.Text) <> ''        Then xnuedir := xnuedir + ' # '+Trim(menumdir.Text);
  If trim(cbtipman.Text) = 'MANZANA' Then
  Begin
    If Trim(memanzana.Text) <> ''       Then xnuedir := xnuedir + ' Mz. '+Trim(memanzana.Text);
    If Trim(melote.Text) <> ''          Then xnuedir := xnuedir + ' Lt. '+Trim(melote.Text);
  End;
  If trim(cbtipman.Text) = 'EDIFICIO' Then
  Begin
    If Trim(memanzana.Text) <> ''       Then xnuedir := xnuedir + ' Edf. '+Trim(memanzana.Text);
    If Trim(melote.Text) <> ''          Then xnuedir := xnuedir + ' Pis. '+Trim(melote.Text);
  End;
  If trim(cbtipman.Text) = 'BLOCK' Then
  Begin
    If Trim(memanzana.Text) <> ''       Then xnuedir := xnuedir + ' Bl. '+Trim(memanzana.Text);
    If Trim(melote.Text) <> ''          Then xnuedir := xnuedir + ' Ltr. '+Trim(melote.Text);
  End;

  If Trim(cbpiso.Text) <> 'Ninguno'   Then xnuedir := xnuedir + ' '+Trim(cbpiso.Text);
  If Trim(menumpiso.Text) <> ''       Then xnuedir := xnuedir + ' '+Trim(menumpiso.Text);
  If Trim(medesurb.Text) <> ''        Then xnuedir := xnuedir + ' '+Trim(medesurb.Text);
  If Trim(menomurb.Text) <> ''        Then xnuedir := xnuedir + ' '+Trim(menomurb.Text);
  If Trim(cbseceta.Text) <> 'Ninguno' Then xnuedir := xnuedir + ' '+Trim(cbseceta.Text);
  If Trim(menomsec.Text) <> ''        Then xnuedir := xnuedir + ' '+Trim(menomsec.Text);
  If Trim(merefdir.Text) <> ''        Then xnuedir := xnuedir + ' Ref. '+Trim(merefdir.Text);
  Result := xnuedir;
end;

(******************************************************************************)
procedure TfManColAgr.BitGrabarClick(Sender: TObject);
Var
   xCenDir, xSQL, xcbseceta, xcbtipman, xcbpiso:String;
   xNumActualizaciones : integer;
begin
   xNumActualizaciones := 0;
   if length(menomurb.text)>0 then xNumActualizaciones:=xNumActualizaciones+1;
   if length(menomsec.text)>0 then xNumActualizaciones:=xNumActualizaciones+1;
   if length(medescal.text)>0 then xNumActualizaciones:=xNumActualizaciones+1;
   if length(menumdir.text)>0 then xNumActualizaciones:=xNumActualizaciones+1;
   if length(memanzana.text)>0 then xNumActualizaciones:=xNumActualizaciones+1;
   if length(melote.text)>0 then xNumActualizaciones:=xNumActualizaciones+1;
   if length(menumpiso.text)>0 then xNumActualizaciones:=xNumActualizaciones+1;
   if length(metelefono.text)>0 then xNumActualizaciones:=xNumActualizaciones+1;
   if length(merefdir.text)>0 then xNumActualizaciones:=xNumActualizaciones+1;
   if xNumActualizaciones=0 then
   begin
      ShowMessage('Debe al menos registrar un dato de la dirección');
      dblccodurb.SetFocus;
      exit;
   end;


 If validadatos Then
 Begin
   If MessageDlg('Desea actualizar los datos del colegio ingresado' ,  mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
   Begin
     If Trim(cbseceta.Text) = 'Ninguno' Then
     Begin
       xcbseceta     := '';
       menomsec.Text := '';
     End
     Else xcbseceta := cbseceta.Text;
     If Trim(cbpiso.Text) = 'Ninguno' Then
     Begin
      xcbpiso        := '';
      menumpiso.Text := '';
     End
     Else xcbpiso := cbpiso.Text;
     If Trim(cbtipman.Text) = 'Ninguno' Then
     Begin
       xcbtipman := '';
       memanzana.Text := '';
       melote.Text := '';
     End
     Else xcbtipman := cbtipman.Text;
     xCenDir := actCenDir;
     if xTipo='EDIT' then
       begin
         try
           xSql := 'UPDATE ASO_CEN_EDU SET '
           +'  UREG='+QuotedStr(DM1.wUsuario)
           +', FREG=SYSDATE '
           +', NIVEDU_ID = '+QuotedStr(Trim(dblcdNivModid.Text)) //HPP_200907_ASO(F1)
           +', CODMOD     = '+QuotedStr(Trim(edCodigoModular.Text))
           +', NOMCENEDU = '+QuotedStr(Trim(edNomCenEdu.Text))
           +', NOMDIRVIV = '+QuotedStr(Trim(medescal.Text))
           +', UBIGEO_DIR = '+QuotedStr(Trim(dblcdcoddis.Text))
           +', CODTIPLUG = '+QuotedStr(Trim(dblccodtiplug.Text))
           +', NUMDIRVIV = '+QuotedStr(Trim(menumdir.Text))
           +', DESMANVIV = '+QuotedStr(Trim(xcbtipman))
           +', NUMMANVIV = '+QuotedStr(Trim(memanzana.Text))
           +', NUMLOTVIV = '+QuotedStr(Trim(melote.Text))
           +', DESINTVIV = '+QuotedStr(Trim(xcbpiso))
           +', NUMINTVIV = '+QuotedStr(Trim(menumpiso.Text))
           +', DESREFVIV = '+QuotedStr(Trim(merefdir.Text))
           +', CODURBVIV = '+QuotedStr(Trim(dblccodurb.Text))
           +', DESURBVIV = '+QuotedStr(Trim(menomurb.Text))
           +', NUMETAVIV = '+QuotedStr(Trim(xcbseceta))
           +', DESETAVIV = '+QuotedStr(Trim(menomsec.Text))
           +', DIREC    = '+QuotedStr(Copy(Trim(xCenDir),1,250))
           +', UPROID   = '+QuotedStr(dblcdUniPro.Text)
           +', UPAGOID  = '+QuotedStr(dblcdUniPag.Text)
           +', USEID    = '+QuotedStr(dblcdUniGes.Text)
           +', TELEFONO = '+QuotedStr(metelefono.Text)
        // Inicio: SPP_201301_ASO
           //+', CODPAGO = '+QuotedStr(edtCodigoPago.Text) //HPC_201211_ASO
        // Fin: SPP_201301_ASO
//Inicio: SPP_201313_ASO
           +', CENPO = '+QuotedStr(mecenpob.Text)
//Fin: SPP_201313_ASO
           +'  WHERE CENEDUID = '+QuotedStr(xCenEduId);
           DM1.DCOM1.AppServer.EjecutaSql(xSql);
           MessageDlg(' registro actualizado ', mtInformation, [mbOk], 0);
         except
           showmessage('Ocurrio algun error, Por favor vuelva a intentarlo');
           exit;
         end;
      end
     else
      begin
        try
          xSql := 'INSERT INTO ASO_CEN_EDU ( '
                 +'      UREG, FREG , '
                 +'      CENEDUID, '
                 +'      NIVEDU_ID , CODMOD, '
                 +'      NOMCENEDU, NOMDIRVIV, UBIGEO_DIR, CODTIPLUG, '
                 +'      NUMDIRVIV, DESMANVIV, NUMMANVIV, NUMLOTVIV, '
                 +'      DESINTVIV, NUMINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, '
              // Inicio: SPP_201301_ASO
//Inicio: SPP_201313_ASO
                 +'      NUMETAVIV, DESETAVIV, DIREC, UPROID, UPAGOID, USEID, TELEFONO, CENPO ) VALUES ( '
//Fin: SPP_201313_ASO
              // Fin: SPP_201301_ASO
                 +       QuotedStr(DM1.wUsuario)+', SYSDATE,'
                 +       '(SELECT LPAD(NVL(MAX(CENEDUID), 0) + 1, 8, ''0'') FROM ASO_CEN_EDU),'
                 +       QuotedStr(Trim(dblcdNivModid.Text))+','+QuotedStr(Trim(edCodigoModular.Text))+','
                 +       QuotedStr(Trim(edNomCenEdu.Text))+','+QuotedStr(Trim(medescal.Text))+','+QuotedStr(Trim(dblcdcoddis.Text))+','+QuotedStr(Trim(dblccodtiplug.Text))+','
                 +       QuotedStr(Trim(menumdir.Text))+','+QuotedStr(Trim(xcbtipman))+','+QuotedStr(Trim(memanzana.Text))+','+QuotedStr(Trim(melote.Text))+','
                 +       QuotedStr(Trim(xcbpiso))+','+QuotedStr(Trim(menumpiso.Text))+','+QuotedStr(Trim(merefdir.Text))+','+QuotedStr(Trim(dblccodurb.Text))+','
                 +       QuotedStr(Trim(menomurb.Text))+','+QuotedStr(Trim(xcbseceta))+','+QuotedStr(Trim(menomsec.Text))+','+QuotedStr(Copy(Trim(xCenDir),1,250))+','
                 +       QuotedStr(dblcdUniPro.Text)+','
                 +       QuotedStr(dblcdUniPag.Text)+','
                 +       QuotedStr(dblcdUniGes.Text)+','
              // Inicio: SPP_201301_ASO
                 +       QuotedStr(metelefono.Text)//+',' + QuotedStr(edtCodigoPago.Text)
              // Fin: SPP_201301_ASO
//Inicio: SPP_201313_ASO
                 +       ', ' + QuotedStr(mecenpob.Text)
//Fin: SPP_201313_ASO
                 +'  ) ';
           DM1.DCOM1.AppServer.EjecutaSql(xSql);
           MessageDlg(' se agrego el registro ', mtInformation, [mbOk], 0);
         except
           showmessage('Ocurrio algun error, Por favor vuelva a intentarlo');
           exit;
         end;
      end;
     meCenDir.Text         := xCenDir;
     ModalResult:=mrOK;
     exit;
   End;
 End;
end;

procedure TfManColAgr.dblcdUniProExit(Sender: TObject);
Var
   xSql:String;
begin
   DM1.cdsUPago.Filter:='';
   DM1.cdsUpago.Filtered:=False;
   DM1.cdsUPago.Filter:='UPROID='+quotedstr(dblcdUniPro.Text);
   DM1.cdsUPago.Filtered:=True;
   if dblcdUniPro.Text<>wUProceso then
   begin
      If DM1.cdsUPro.Locate('UPROID',dblcdUniPro.Text,[]) Then
      Begin
         EdtUniProNom.Text := DM1.cdsUPro.FieldByName('UPRONOM').asstring;
         dblcdUniPag.Clear;
         EdtUniPagNom.Clear;
         dblcdUniGes.Clear;
         EdtUniGesNom.Clear;
      End
      Else
      Begin
         Beep;
         EdtUniProNom.Text := '';
         EdtUniPagNom.Text := '';
         EdtUniGesNom.Text := '';
         dblcdUniPro.Text  := '';
         dblcdUniPag.Text  := '';
         dblcdUniGes.Text  := '';
         dblcdUniPro.SetFocus;
      End;
   end;
end;

procedure TfManColAgr.dblcdUniPagExit(Sender: TObject);
Var
   xSql:String;
begin
   DM1.cdsUSES.Filter:='';
   DM1.cdsUSES.Filtered:=False;
   DM1.cdsUSES.Filter:='UPROID='+quotedstr(dblcdUniPro.Text)+' and UPAGOID='+quotedstr(dblcdUniPag.Text);
   DM1.cdsUSES.Filtered:=True;
   if dblcdUniPag.Text<>wUPago then
   begin
      If DM1.cdsUPago.Locate('UPROID;UPAGOID',VarArrayof([dblcdUniPro.Text,dblcdUniPag.Text]),[]) Then
      Begin
         EdtUniPagNom.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
         dblcdUniGes.Clear;
         EdtUniGesNom.Clear;
      End
      Else
      Begin
         Beep;
         EdtUniPagNom.Text := '';
         EdtUniGesNom.Text := '';
         dblcdUniPag.Text  := '';
         dblcdUniGes.Text  := '';
         dblcdUniPag.SetFocus;
      End;
   end;
end;

procedure TfManColAgr.dblcdUniGesExit(Sender: TObject);
begin
   if dblcdUniGes.Text<>wUGel then
   begin
      if DM1.cdsUSES.Locate('UPROID;UPAGOID;USEID',VarArrayof([dblcdUniPro.Text,dblcdUniPag.Text, dblcdUniGes.Text]),[]) Then
      Begin
         EdtUniGesNom.Text := DM1.cdsUSES.FieldByName('USENOM').AsString;
      End
      Else
      Begin
         Beep;
         EdtUniGesNom.Text := '';
         dblcdUniGes.Text  := '';
         dblcdUniGes.SetFocus;
      End;
   end;
end;

procedure TfManColAgr.bbtnCerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TfManColAgr.BitSiguienteClick(Sender: TObject);
begin
  pcColegios.ActivePageIndex:=1;
end;

(******************************************************************************)
procedure TfManColAgr.dblcdNivModidExit(Sender: TObject);
var
   xSQL : String;
begin
   If DM1.cdsQry20.Locate('NIVEDU_ID',VarArrayof([dblcdNivModid.text]),[]) Then
      edNivEdu.Text := DM1.cdsQry20.FieldByName('NIVEDU_DES').AsString
   else
   begin
      if not dblcdNivModid.Focused then dblcdNivModid.text:='';
      edNivEdu.Text := '';
   end;

// Busca que Código Modular + Nivel Educativo No existan si se trata de una INSERCION
   xSQL := 'select CENEDUID, CODMOD, NIVEDU_ID '
          +'from ASO_CEN_EDU '
          +'where CODMOD='+quotedstr(Trim(edCodigoModular.Text))
          +'  and NIVEDU_ID='+quotedstr(Trim(dblcdNivModid.Text));
   If xTipo='EDIT' then
      xSQL:=xSQL+' and CENEDUID<>'+quotedstr(wCenEduId);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   if DM1.cdsQry.RecordCount>0 then
   begin
      ShowMessage('Código Modular+Nivel Educativo ya fueron asignados a otro Colegio');
      dblcdNivModid.SetFocus;
   end;
end;
(******************************************************************************)

procedure TfManColAgr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// se cierran filtros de Unidedes de Pago y Unidades de Gestión.
   DM1.cdsUPago.Filter:='';
   DM1.cdsUpago.Filtered:=False;
   DM1.cdsUSES.Filter:='';
   DM1.cdsUSES.Filtered:=False;
   DM1.cdsQry.Close;
   DM1.cdsQry1.Close;
   DM1.cdsQry20.Close;
   DM1.cdsQry21.Close;
   DM1.cdsCViv.Close;
   DM1.cdsCia.Close;
   DM1.cdsDpto.Close;
   DM1.cdsProvin.Close;
   DM1.cdsDist.Close;
   DM1.cdsUPro.Close;
   DM1.cdsUPago.Close;
   DM1.cdsUSES.Close;
   // Inicio: SPP_201301_ASO
   DM1.cdsCbcos.Close;
   // Fin: SPP_201301_ASO
end;

procedure TfManColAgr.dblcdcoddisChange(Sender: TObject);
begin
  If Length(trim(dblcdcoddis.Text)) = 6 Then
  Begin
    If DM1.cdsDist.Locate('ZIPID',VarArrayof([dblcdcoddis.text]),[]) Then
    Begin
      medesdis.Text := DM1.cdsDist.FieldByName('ZIPDES').AsString;
      Exit;
    End
    Else
    Begin
      medesdis.Text    := '';
      dblcdcoddis.Text := '';
      If (dblcdcoddis.Enabled = True) and (pcColegios.TabIndex = 1) Then dblcdcoddis.SetFocus;
      Exit;
    End;
  End
  Else
  Begin
    dblcdcoddis.Text := '';
    medesdis.Text    := '';
    If (dblcdcodpro.Enabled = True) and (pcColegios.TabIndex = 1) Then dblcdcodpro.SetFocus;
    Exit;
  End;
end;

procedure TfManColAgr.dblccodurbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = word(13)) Then
  begin
   If Length(Trim(dblccodurb.Text)) = 0 Then
   Begin
      If cbseceta.Enabled = True Then cbseceta.SetFocus;
      Exit;
   End;
   If Length(trim(dblccodurb.Text)) = 2 Then
   Begin
      If DM1.cdsCia.Locate('CODURB',VarArrayof([dblccodurb.text]),[]) Then
      Begin
         If menomurb.Enabled = True Then  menomurb.SetFocus;
         Exit;
      End
      Else
      Begin
         If dblccodurb.Enabled = True Then dblccodurb.SetFocus;
         Exit;
      End;
   End
   Else
   Begin
      If dblccodurb.Enabled = True Then  dblccodurb.SetFocus;
      Exit;
   End;
  end;
end;

procedure TfManColAgr.cbsecetaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = word(13)) Then
  begin
    If (Trim(cbseceta.Text) = 'Ninguno') Or (Trim(cbseceta.Text) = '') Then
    Begin
      If dblccodtiplug.Enabled = True Then dblccodtiplug.SetFocus;
    End;

    If (Trim(cbseceta.Text) <> 'Ninguno') And (Trim(cbseceta.Text) <> 'ZONA') And (Trim(cbseceta.Text) <> 'ETAPA') And (Trim(cbseceta.Text) <> 'SECTOR') And (Trim(cbseceta.Text) <> 'GRUPO') Then
    Begin
      If cbseceta.Enabled = True Then cbseceta.SetFocus;
      Exit;
    End;
  end;
end;

procedure TfManColAgr.dblccodtiplugKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = word(13)) Then
  begin
    If Length(Trim(dblccodtiplug.Text)) = 0 Then
    Begin
      If cbtipman.Enabled = True Then cbtipman.SetFocus;
      Exit;
    End;
    If Length(trim(dblccodtiplug.Text)) = 2 Then
    Begin
      If DM1.cdsCViv.Locate('CODTIPLUG',VarArrayof([dblccodtiplug.text]),[]) Then
      Begin
        If medescal.Enabled = True Then medescal.SetFocus;
        Exit;
      End
      Else
      Begin
        If dblccodtiplug.Enabled = True Then dblccodtiplug.SetFocus;
        Exit;
      End;
    End
    Else
    Begin
      If dblccodtiplug.Enabled =True Then dblccodtiplug.SetFocus;
      Exit;
    End;
  end;
end;

procedure TfManColAgr.cbtipmanKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = word(13)) Then
  begin
    If (Trim(cbtipman.Text) = 'Ninguno') Or (Trim(cbtipman.Text) = '') Then
    Begin
      If cbpiso.Enabled = True Then cbpiso.SetFocus;
      Exit;
    End;

    If (Trim(cbtipman.Text) <> 'Ninguno') And (Trim(cbtipman.Text) <> 'MANZANA') And (Trim(cbtipman.Text) <> 'EDIFICIO') And (Trim(cbtipman.Text) <> 'BLOCK') Then
    Begin
      If cbtipman.Enabled =True Then cbtipman.SetFocus;
      Exit;
    End;
    If cbtipman.Text = 'Ninguno' Then
    Begin
      If cbpiso.Enabled = True Then cbpiso.SetFocus;
      Exit;
    End;
    If cbtipman.Text = 'MANZANA' Then
    Begin
      If memanzana.Enabled = True Then  memanzana.SetFocus;
    End;
    If cbtipman.Text = 'EDIFICIO' Then
    Begin
      If memanzana.Enabled = True Then  memanzana.SetFocus;
    End;
    If cbtipman.Text = 'BLOCK' Then
    Begin
      If memanzana.Enabled = True Then  memanzana.SetFocus;
    End;
  end;
end;

procedure TfManColAgr.cbpisoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = word(13)) Then
  begin
    If (Trim(cbpiso.Text) = 'Ninguno') Or (Trim(cbpiso.Text) = '')  Then
    Begin
      If metelefono.Enabled = True Then metelefono.SetFocus;
      Exit;
    End;

    If (Trim(cbpiso.Text) <> 'Ninguno') And (cbpiso.Text <> 'INTERIOR') And (Trim(cbpiso.Text) <> 'LETRA') Then
    Begin
      If cbpiso.Enabled = True Then cbpiso.SetFocus;
      Exit;
    End;

    If Trim(cbpiso.Text) = 'INTERIOR' Then
    Begin
      If menumpiso.Enabled = True Then menumpiso.SetFocus;
      Exit;
    End;
    If Trim(cbpiso.Text) = 'LETRA' Then
    Begin
      If menumpiso.Enabled = True Then menumpiso.SetFocus;
      Exit;
    End;
  end;
end;
procedure TfManColAgr.dbgPrincipalIBtnAddClick(Sender: TObject);
begin
  // Inicio: SPP_201301_ASO
  if xCenEduId = '' then
  begin
    ShowMessage('Debe grabar primero el Centro Educativo');
    Exit;
  end;

  FCenEduCodPago := TFCenEduCodPago.Create(self);
  try
    FCenEduCodPago.CODMOD := Trim(edCodigoModular.Text);
    FCenEduCodPago.NIVEDU_ID := Trim(dblcdNivModid.Text);
    if FCenEduCodPago.ShowModal = mrOk then
      CargarCodigosDePago;
  finally
    FCenEduCodPago.Free;
  end;
  // Fin: SPP_201301_ASO
end;

procedure TfManColAgr.CargarCodigosDePago;
var
  xSql: string;
begin
  // Inicio: SPP_201301_ASO
  xSql := 'SELECT CODREG, ASOCODPAGO, CODMOD, NIVEDU_ID, ACTIVO FROM ASO_CEN_EDU_VS_PAGO_MAE WHERE'
// Inicio SPP_201408_ASO
    + ' CODMOD = ' + QuotedStr(Trim(edCodigoModular.Text));
  //  + ' AND NIVEDU_ID = ' + QuotedStr(Trim(dblcdNivModid.Text));
  DM1.cdsCbcos.Close;
  DM1.cdsCbcos.DataRequest(xSql);
  DM1.cdsCbcos.Open;

  dbgCodigosPago.Selected.Clear;
  dbgCodigosPago.Selected.Add('ASOCODPAGO'#9'9'#9'Cod.Pago');
  dbgCodigosPago.Selected.Add('NIVEDU_ID'#9'2'#9'Nivel.Edu');
  dbgCodigosPago.Selected.Add('ACTIVO'#9'6'#9'Activo');
  dbgCodigosPago.ApplySelected;
  dbgCodigosPago.RefreshDisplay;
// Fin SPP_201408_ASO

      
  // Fin: SPP_201301_ASO
end;

procedure TfManColAgr.dbgCodigosPagoDblClick(Sender: TObject);
begin
  // Inicio: SPP_201301_ASO
  if DM1.cdsCbcos.RecordCount = 0 then
  begin
    ShowMessage('El código de pago no existe');
    Exit;
  end;

  FCenEduCodPago := TFCenEduCodPago.Create(self);
  try
    FCenEduCodPago.CODREG := DM1.cdsCbcos.FieldByName('CODREG').AsInteger;
    FCenEduCodPago.ASOCODPAGO := DM1.cdsCbcos.FieldByName('ASOCODPAGO').AsString;
    FCenEduCodPago.ACTIVO := DM1.cdsCbcos.FieldByName('ACTIVO').AsString;
    if FCenEduCodPago.ShowModal = mrOk then
      CargarCodigosDePago;
  finally
    FCenEduCodPago.Free;
  end;
  // Fin: SPP_201301_ASO
end;

end.

