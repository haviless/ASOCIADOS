// Unidad                    : ASO980.pas
// Formulario                : FrptNueAso
// Fecha de Creación         : 2013
// Autor                     : Equipo de Desarrollo de Sistemas DM
// Objetivo                  : Listar los nuevos asociados a la fecha

// Actualizaciones:
// HPC_201312_ASO            : 12/11/2013 Listar los nuevos asociados a la fecha, con opción a exportar a Excel
// SPP_201313_ASO            : Se realiza el pase a producción a partir del HPC_201312_ASO

unit ASO980;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, db, Spin, ExtCtrls;

type
  TFrptNueAso = class(TForm)
    dbgcabecera: TwwDBGrid;
    btncerrar: TBitBtn;
    btnaExcel: TBitBtn;
    btntransferir: TBitBtn;
    Label9: TLabel;
    Label1: TLabel;
    lblRegistros: TLabel;
    procedure btncerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnaExcelClick(Sender: TObject);
    procedure btntransferirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CargarDatos;
    procedure mostrarCabecera;
  end;

var
  FrptNueAso: TFrptNueAso;

implementation

uses ASODM;

{$R *.dfm}


procedure TFrptNueAso.mostrarCabecera;
Var xsSql:String;
begin

  xsSql := 'SELECT '
       +'     A.ASOID, A.ASOCODMOD, A.ASOCODPAGO, A.ASOAPEPAT, A.ASOAPEMAT, '
       +'     A.ASONOMBRES, A.ASOAPENOM, A.USEID, A.UPROID, A.UPAGOID, '
       +'     A.ASORESNOM, A.ASOFRESNOM, A.REGPENID, A.ASOSITID, A.ASOTIPID, '
       +'     A.ASOFECNAC, A.ESTCIVID, A.ASOSEXO, A.ASONCTA, A.SITCTA, '
       +'     A.ASODNI, A.ASODIR, A.USUARIO, A.HREG, A.FREG, '
       +'     A.ZIPID, A.USR_CREA, A.FEC_CREA, A.CARGO, A.ASOAPEPATDNI, '
       +'     A.ASOAPEMATDNI, A.ASONOMDNI, A.ASOAPENOMDNI, A.ASODESLAB, A.ASODIRLAB, '
       +'     A.ACTARCREN, A.AUTDESAPO, A.FECAUTDESAPO, A.USUREGAUTDESAPO, A.OFIREGAUTDESAPO, '
       +'     A.EST_AUT_CLI, A.CENEDUID, A.CODPENSION, A.CODLEYPEN, '
       +'     B.CENPO, B.UBIGEO_DIR UBIGEO_CENEDU, C.DPTODES DPTO_CENEDU, D.CIUDDES PROV_CENEDU, E.ZIPDES DIST_CENEDU '
       +' FROM ASO_NUE_CLI A '
       +'     LEFT JOIN ASO_CEN_EDU B ON A.CENEDUID = B.CENEDUID '
       +'     LEFT JOIN APO158 C ON SUBSTR(B.UBIGEO_DIR,1,2) = C.DPTOID '
       +'     LEFT JOIN TGE121 D ON SUBSTR(B.UBIGEO_DIR,1,2) = D.DPTOID AND SUBSTR(B.UBIGEO_DIR,3,2) = D.CIUDID '
       +'     LEFT JOIN TGE122 E ON SUBSTR(B.UBIGEO_DIR,1,2) = E.DPTOID AND SUBSTR(B.UBIGEO_DIR,3,2) = E.CIUDID AND SUBSTR(B.UBIGEO_DIR,5,2) = E.ZIPID '
       +' WHERE NOT EXISTS (SELECT ASODNI FROM APO201 WHERE A.ASODNI=ASODNI) '
       +'        AND NOT ASODNI IS NULL '
       +'        AND 1 = 2 '
       +' ORDER BY A.ASOAPENOMDNI ';

  DM1.cdsCreditos.Close;
  DM1.cdsCreditos.DataRequest(xsSql);
  DM1.cdsCreditos.Open;

  dbgcabecera.Refresh;
end;


procedure TFrptNueAso.CargarDatos;
Var xsSql:String;
begin

  xsSql := 'SELECT '
       +'     A.ASOID, A.ASOCODMOD, A.ASOCODPAGO, A.ASOAPEPAT, A.ASOAPEMAT, '
       +'     A.ASONOMBRES, A.ASOAPENOM, A.USEID, A.UPROID, A.UPAGOID, '
       +'     A.ASORESNOM, A.ASOFRESNOM, A.REGPENID, A.ASOSITID, A.ASOTIPID, '
       +'     A.ASOFECNAC, A.ESTCIVID, A.ASOSEXO, A.ASONCTA, A.SITCTA, '
       +'     A.ASODNI, A.ASODIR, A.USUARIO, A.HREG, A.FREG, '
       +'     A.ZIPID, A.USR_CREA, A.FEC_CREA, A.CARGO, A.ASOAPEPATDNI, '
       +'     A.ASOAPEMATDNI, A.ASONOMDNI, A.ASOAPENOMDNI, A.ASODESLAB, A.ASODIRLAB, '
       +'     A.ACTARCREN, A.AUTDESAPO, A.FECAUTDESAPO, A.USUREGAUTDESAPO, A.OFIREGAUTDESAPO, '
       +'     A.EST_AUT_CLI, A.CENEDUID, A.CODPENSION, A.CODLEYPEN, '
       +'     B.CENPO, B.UBIGEO_DIR UBIGEO_CENEDU, C.DPTODES DPTO_CENEDU, D.CIUDDES PROV_CENEDU, E.ZIPDES DIST_CENEDU '
       +' FROM ASO_NUE_CLI A '
       +'     LEFT JOIN ASO_CEN_EDU B ON A.CENEDUID = B.CENEDUID '
       +'     LEFT JOIN APO158 C ON SUBSTR(B.UBIGEO_DIR,1,2) = C.DPTOID '
       +'     LEFT JOIN TGE121 D ON SUBSTR(B.UBIGEO_DIR,1,2) = D.DPTOID AND SUBSTR(B.UBIGEO_DIR,3,2) = D.CIUDID '
       +'     LEFT JOIN TGE122 E ON SUBSTR(B.UBIGEO_DIR,1,2) = E.DPTOID AND SUBSTR(B.UBIGEO_DIR,3,2) = E.CIUDID AND SUBSTR(B.UBIGEO_DIR,5,2) = E.ZIPID '
       +' WHERE NOT EXISTS (SELECT ASODNI FROM APO201 WHERE A.ASODNI=ASODNI) '
       +'        AND NOT ASODNI IS NULL '
       +' ORDER BY A.ASOAPENOMDNI, A.ASOAPENOM ';

  DM1.cdsCreditos.Close;
  DM1.cdsCreditos.DataRequest(xsSql);
  DM1.cdsCreditos.Open;

  dbgcabecera.Refresh;
  lblRegistros.Caption := FloatToStr(DM1.cdsCreditos.RecordCount);
end;



procedure TFrptNueAso.btncerrarClick(Sender: TObject);
begin
 FrptNueAso.Close;
end;

procedure TFrptNueAso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsCreditos.Close;
   Action := caFree;
end;

procedure TFrptNueAso.btnaExcelClick(Sender: TObject);
begin
   DM1.ExportaGridExcel(dbgcabecera, 'Nue_Aso');
end;

procedure TFrptNueAso.btntransferirClick(Sender: TObject);
begin
   btnaExcel.Enabled := False;

   Screen.Cursor := crHourGlass;
   CargarDatos;
   Screen.Cursor := crDefault;

   If DM1.cdsCreditos.RecordCount > 0 Then btnaExcel.Enabled := True;
end;

procedure TFrptNueAso.FormActivate(Sender: TObject);
Var xsSql:String;
begin
  xsSql := 'SELECT SYSDATE FECHA FROM DUAL ';
  DM1.cdsCreditos.Close;
  DM1.cdsCreditos.DataRequest(xsSql);
  DM1.cdsCreditos.Open;

  FrptNueAso.Caption := 'Nuevos asociados al ' + DM1.cdsCreditos.FieldByName('FECHA').AsString;

  mostrarCabecera;
  btnaExcel.Enabled := False;
end;

end.

