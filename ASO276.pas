unit ASO276;

// Inicio Uso Estándares   : 01/08/2011
// Unidad                  : ASO276
// Formulario              : FContactabilidad
// Fecha de Creación       : 24/07/2018
// Autor                   : Equipo de Sistemas
// Objetivo                : Consulta de Contactabilidad de Asociados

// Actualizaciones         :
// HPC_201804_ASO : Consulta de Contactabilidad V3


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, Wwdbigrd, Grids, DB, Wwdbgrid,
  wwDataInspector;

type
  TFContactabilidad = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    dtgTelef: TwwDBGrid;
    dtgCorreos: TwwDBGrid;
    BitSalir: TBitBtn;
    TabSheet4: TTabSheet;
    dtgDirecc: TwwDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
      sFiltro : String;
      procedure fn_cargar_correos;
      procedure fn_cargar_direcciones;
      procedure fn_cargar_telefonos;
  public
    { Public declarations }
      xsAsoId : string;
  end;

var
  FContactabilidad: TFContactabilidad;

implementation

uses ASODM;

{$R *.dfm}

procedure TFContactabilidad.FormShow(Sender: TObject);
begin
   Screen.Cursor:=crHourGlass;

   sFiltro:='';
   if DM1.sAPO201='ASO_NUE_CLI' then
      sFiltro:=' and A.COD_FUENTE_DATOS not in (''05'') ';

   try
   fn_cargar_telefonos();
   fn_cargar_direcciones();
   fn_cargar_correos();
   except
   end;
   Screen.Cursor:=crDefault;
end;

procedure TFContactabilidad.fn_cargar_telefonos;
var xSQL : string;
begin
   if dtgTelef.DataSource <> nil then
      dtgTelef.DataSource.DataSet.AfterScroll := nil;

   xSQL := 'SELECT DESTIPTEL, NROTELF, DESFUEINF, IDTIPTEL, '
         + '       FECHA, USUARIO, ACTIVO, RANK_ASO FROM ( '

         + 'SELECT DESTIPTEL, NROTELF, DESFUEINF, IDTIPTEL, '
         + '       FECHA, USUARIO, ACTIVO, RANK_ASO FROM ( '
         + 'SELECT ASOID, DESTIPTEL, NROTELF, DESFUEINF, FECHA, IDTIPTEL, USUARIO, ACTIVO, CODFUEINF, RANK_ASO_X, XX, '
         + '        RANK() OVER (PARTITION BY ASOID order by RANK_ASO_x) RANK_ASO '
         + '  FROM ( '
         + 'SELECT ASOID, B.DESTIPTEL, A.NRO_TELEFONO_FIN NROTELF, C.DESFUEINF, A.TIP_TELEFONO IDTIPTEL, A.COD_FUENTE_DATOS CODFUEINF, '
         + '       FECHA_ACTUALIZACION FECHA, ''DB2ADMIN'' USUARIO, ''N'' ACTIVO, A.ROWID, '
         + '       RANK() OVER (PARTITION BY ASOID order by VALORACION, a.rowid) RANK_ASO_X, '
         + '       row_number() over(partition by A.NRO_TELEFONO_FIN order by A.NRO_TELEFONO_FIN, VALORACION) XX '
         + '  FROM GES_TELEFONO_PRIO A, '
         + '       GES_TIP_TEL_MAE B, '
         + '       GES_FUE_INF_MAE C '
         + ' WHERE ASOID = ' + QuotedStr(xsAsoId)+ ' AND B.DESTIPTEL=''FIJO'' and NVL(VALORACION,0)>0 '
         + '   AND A.TIP_TELEFONO = B.CODTIPTEL '
         + '   AND A.COD_FUENTE_DATOS = C.CODFUEINF '
         + sFiltro
         + ' ) WHERE XX=1 '
         + ' ) '
         + ' WHERE RANK_ASO<=2 '
         + ' UNION ALL '

         + 'SELECT DESTIPTEL, NROTELF, DESFUEINF, IDTIPTEL, '
         + '       FECHA, USUARIO, ACTIVO, RANK_ASO FROM ( '
         + 'SELECT ASOID, DESTIPTEL, NROTELF, DESFUEINF, FECHA, IDTIPTEL, USUARIO, ACTIVO, CODFUEINF, RANK_ASO_X, XX, '
         + '        RANK() OVER (PARTITION BY ASOID order by RANK_ASO_x) RANK_ASO '
         + '  FROM ( '
         + 'SELECT ASOID, B.DESTIPTEL, A.NRO_TELEFONO_FIN NROTELF, C.DESFUEINF, A.TIP_TELEFONO IDTIPTEL, A.COD_FUENTE_DATOS CODFUEINF, '
         + '       FECHA_ACTUALIZACION FECHA, ''DB2ADMIN'' USUARIO, ''N'' ACTIVO, A.ROWID, '
         + '       RANK() OVER (PARTITION BY ASOID order by VALORACION, a.rowid) RANK_ASO_X, '
         + '       row_number() over(partition by A.NRO_TELEFONO_FIN order by A.NRO_TELEFONO_FIN, VALORACION) XX '
         + '  FROM GES_TELEFONO_PRIO A, '
         + '       GES_TIP_TEL_MAE B, '
         + '       GES_FUE_INF_MAE C '
         + ' WHERE ASOID = ' + QuotedStr(xsAsoId)+ ' AND B.DESTIPTEL=''CELULAR'' and NVL(VALORACION,0)>0 '
         + '   AND A.TIP_TELEFONO = B.CODTIPTEL '
         + '   AND A.COD_FUENTE_DATOS = C.CODFUEINF '
         + sFiltro
         + ' ) WHERE XX=1 '
         + ' ) '
         + ' WHERE RANK_ASO<=5 '
         + ' ) '
         + 'ORDER BY DESTIPTEL, RANK_ASO';

   DM1.cdsDocPago.Close;
   DM1.cdsDocPago.DataRequest(xSQL);
   DM1.cdsDocPago.Open;
   dtgTelef.DataSource := DM1.dsDocPago;
   DM1.cdsDocPago.IndexFieldNames:='DESTIPTEL;RANK_ASO';
   with dtgTelef do
   begin
        Selected.Clear;
        Selected.Add('DESTIPTEL'#9'15'#9'Tipo');
        Selected.Add('RANK_ASO'#9'4'#9'Prioridad');
        Selected.Add('NROTELF'#9'25'#9'Teléfono');
        Selected.Add('DESFUEINF'#9'22'#9'Fuente');
        Selected.Add('FECHA'#9'25'#9'Fecha');
        Selected.Add('USUARIO'#9'15'#9'Usuario');
        ApplySelected;
   end;
end;


procedure TFContactabilidad.fn_cargar_direcciones;
var xSQL : string;
ExpandField : TField;
begin
   if dtgDirecc.DataSource <> nil then
      dtgDirecc.DataSource.DataSet.AfterScroll := nil;

   xSQL := 'SELECT ASODIR, DPTODES, CIUDDES, ZIPDES, DESFUEINF, UBIGEO, '
         + '       FECHA, USUARIO, ACTIVO, COD_FUENTE_DATOS, RANK_ASO '
         + '  from ( '
         + 'SELECT A.DESC_DIRECCION ASODIR, B.DPTODES, C.CIUDDES, D.ZIPDES, E.DESFUEINF, A.COD_UBIGEO UBIGEO,  '
         + '       FECHA_ACTUALIZACION FECHA, ''DB2ADMIN'' USUARIO, ''N'' ACTIVO, A.ROWID, z.COD_FUENTE_DATOS, '
         + '       RANK() OVER (PARTITION BY ASOID order by PRI_USU, a.rowid) RANK_ASO '
         + '  FROM GES_DIRECCION_PRIO A, TGE158 B, TGE121 C, TGE122 D, GES_FUE_INF_MAE E, '
         + '       ( SELECT COD_FUENTE_DATOS, PRI_USU FROM DB2ADMIN.ASO_ORD_PRIO_DET '
         + '          WHERE PERIODO=( '
         + ' SELECT MAX(PERIODO) PERIODO FROM DB2ADMIN.ASO_ORD_PRIO_CAB '
         + ' WHERE COD_AREA=''22'' AND TIPO_DATO=''DIR'') '
         + '   AND COD_AREA=''22'' AND TIPO_DATO=''DIR'') Z '
         + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
         + '   AND SUBSTR(A.COD_UBIGEO, 1, 2) = B.DPTOID '
         + '   AND SUBSTR(A.COD_UBIGEO, 1, 4) = C.DPTOID||C.CIUDID '
         + '   AND SUBSTR(A.COD_UBIGEO, 1, 6) = D.DPTOID||D.CIUDID||D.ZIPID '
         + '   AND A.COD_FUENTE_DATOS = E.CODFUEINF '
         + '   AND e.cod_fue_dat_idc=z.COD_FUENTE_DATOS '
         + sFiltro
         + ' ) '
         + ' WHERE RANK_ASO<=2 '
         + 'ORDER BY RANK_ASO';

   DM1.cdsMGrupo.Close;
   DM1.cdsMGrupo.DataRequest(xSQL);
   DM1.cdsMGrupo.Open;
   dtgDirecc.DataSource := DM1.dsMGrupo;

   with dtgDirecc do
   begin
        Selected.Clear;
        Selected.Add('RANK_ASO'#9'4'#9'Prioridad');
        Selected.Add('ASODIR'#9'40'#9'Dirección');
        Selected.Add('DPTODES'#9'15'#9'Departamento');
        Selected.Add('CIUDDES'#9'14'#9'Provincia');
        Selected.Add('ZIPDES'#9'21'#9'Distrito');
        Selected.Add('DESFUEINF'#9'20'#9'Fuente');
        Selected.Add('FECHA'#9'15'#9'Fecha');
        Selected.Add('USUARIO'#9'15'#9'Usuario');
        ApplySelected;

   end;
end;


procedure TFContactabilidad.fn_cargar_correos;
var xSQL : string;
begin
   if dtgCorreos.DataSource <> nil then
      dtgCorreos.DataSource.DataSet.AfterScroll := nil;

   xSQL:='SELECT DESTIPCOR, CORREO, DESFUEINF, FECHA, USUARIO, ACTIVO, RANK_ASO '
         +' FROM ( '
         + 'SELECT ASOID, DESTIPCOR, CORREO, DESFUEINF, FECHA, USUARIO, ACTIVO, CODFUEINF, RANK_ASO_X, XX, '
         + '        RANK() OVER (PARTITION BY ASOID order by RANK_ASO_x) RANK_ASO '
         + '  FROM ( '
         + 'SELECT ASOID, B.DESTIPCOR, A.EMAIL CORREO, C.DESFUEINF, A.COD_FUENTE_DATOS CODFUEINF, '
         + '       FECHA_ACTUALIZACION FECHA, ''DB2ADMIN'' USUARIO, '
         + '       '' '' ACTIVO, A.ROWID, '
         + '       RANK() OVER (PARTITION BY ASOID order by PRI_USU, a.rowid) RANK_ASO_X, '
         + '       row_number() over(partition by EMAIL order by EMAIL, PRI_USU) XX '
         + '  FROM GES_CORREO_PRIO A, GES_TIP_COR_MAE B, GES_FUE_INF_MAE C, '
         + '       ( SELECT COD_FUENTE_DATOS, PRI_USU FROM DB2ADMIN.ASO_ORD_PRIO_DET '
         + '          WHERE PERIODO=( '
         +          ' SELECT MAX(PERIODO) PERIODO FROM DB2ADMIN.ASO_ORD_PRIO_CAB '
         +          ' WHERE COD_AREA=''22'' AND TIPO_DATO=''COR'') '
         +          '   AND COD_AREA=''22'' AND TIPO_DATO=''COR'') Z '
         + ' WHERE ASOID = ' + QuotedStr(xsAsoId)
         + '   AND A.TIP_EMAIL = B.CODTIPCOR '
         + '   AND A.COD_FUENTE_DATOS = C.CODFUEINF '
         + '   AND C.COD_FUE_DAT_IDC=Z.COD_FUENTE_DATOS '
         + sFiltro
         + ' ) WHERE XX=1 '
         + ' ) '
         + ' WHERE RANK_ASO<=2 '
         + 'ORDER BY RANK_ASO';

   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSQL);
   DM1.cdsDSocioE.Open;
   dtgCorreos.DataSource := DM1.dsDSocioE;
   with dtgCorreos do
   begin
        Selected.Clear;
        Selected.Add('RANK_ASO'#9'5'#9'Prioridad');
        Selected.Add('DESTIPCOR'#9'15'#9'Tipo');
        Selected.Add('CORREO'#9'40'#9'Correo');
        Selected.Add('DESFUEINF'#9'22'#9'Fuente');
        Selected.Add('FECHA'#9'22'#9'Fecha');
        Selected.Add('USUARIO'#9'15'#9'Usuario');
        ApplySelected;
   end;
end;

procedure TFContactabilidad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM1.cdsDocPago.IndexFieldNames:='';
   DM1.cdsDocPago.Close;
   DM1.cdsMGrupo.Close;
   DM1.cdsDSocioE.Close;
end;

procedure TFContactabilidad.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFContactabilidad.FormActivate(Sender: TObject);
begin
   PageControl1.ActivePage:=TabSheet2;
end;

end.
