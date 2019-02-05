unit ASO963;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Wwdbdlg, Buttons, Grids, Wwdbigrd, Wwdbgrid,
  ExtCtrls, DBGrids;

type
  TFpenaut = class(TForm)
    grdep: TGroupBox;
    btnprevio: TBitBtn;
    dbgreporte: TwwDBGrid;
    Panel1: TPanel;
    edtdptodes: TEdit;
    Label20: TLabel;
    dblcddep: TwwDBLookupCombo;
    dtgData: TDBGrid;
    btnExcel: TBitBtn;
    btnCerrar: TBitBtn;

// inicio: HPP_201010_ASO (HPC_201005_ASO)
    Label1: TLabel;
// fin: HPP_201010_ASO (HPC_201005_ASO)

//
    procedure FormActivate(Sender: TObject);
    procedure btnprevioClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dblcddepChange(Sender: TObject);
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
// Fin: HPP_201003_ASO
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fpenaut: TFpenaut;

implementation

uses ASODM;

{$R *.dfm}

procedure TFpenaut.FormActivate(Sender: TObject);
Var xSql:String;
begin
  xSql := 'SELECT DPTOID, DPTODES FROM TGE158';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcddep.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
  dblcddep.Selected.Add('DPTODES'#9'30'#9'Departamento'#9#9);
end;

procedure TFpenaut.btnprevioClick(Sender: TObject);
var xSql:String;
begin
// inicio: HPP_201010_ASO (HPC_201005_ASO)
//  Screen.Cursor:= crHourGlass;
  //Lista de Asociados pendientes de firma por departamento

  // Inicio : SAR-2010-0065 MEMO 018-2010-DM-EPS
  {
  xSql := 'SELECT ROWNUM NUMERO, P.*'
  +' FROM ('
  +'         SELECT a.asodni DNI, a.asoapenomdni APELLIDOS_Y_NOMBRES, a.useid UGEL, usenom UGEL_NOMBRE, a.uproid U_PROCESO, a.upagoid U_PAGO,'
  +'                a.asodpto DPTO, b.dptodes DEPARTAMENTO_DOMICILIO, a.ciudid PROV, c.ciuddes PROVINCIA_DOMICILIO, a.zipid DIST, d.zipdes DISTRITO_DOMICILIO,'
  +'                a.asodir DIRECCION_DOMICILIO, asotelf1 TELEFONO_1, asotelf2 TELEFONO_2, asodeslab COLEGIO, asodptlabid DPTO_C, e.dptodes DEPARTAMENTO_COLEGIO,'
  +'                asoprvlabid PROV_C, f.ciuddes PROVINCIA_COLEGIO, asodstlabid DIST_C, g.zipdes DISTRITO_COLEGIO, asodirlab DIRECCION_COLEGIO, asotellab TELEFONO_COLEGIO'
  +'           FROM apo201 a, tge158 b, tge121 c, apo122 d, tge158 e, tge121 f, apo122 g, apo101 h, tge158 i'
  +'          WHERE a.asodpto           = b.dptoid(+)'
  +'            and substr(a.ciudid,1,2)= c.dptoid(+)'
  +'            and substr(a.ciudid,3,2)= c.ciudid(+)'
  +'            and a.zipid             = d.zipid(+) '
  +'            and a.asodptlabid       = e.dptoid(+)'
  +'            and substr(a.asoprvlabid,1,2)= f.dptoid(+)'
  +'            and substr(a.asoprvlabid,3,2)= f.ciudid(+)'
  +'            and a.asodstlabid            = g.zipid(+) '
  +'            and a.asotipid                 = ''DO'' '
  +'            and a.autdesapo               is null   '
  +'            and nvl(a.deshabilitado,''N'') <> ''X''  '
  +'            and a.useid                    = h.useid   '
  +'            and a.uproid                   = h.uproid  '
  +'            and a.upagoid                  = h.upagoid '
  +'            and h.dptoid                   = i.dptoid  '
  +'            and i.dptoid                   = '+QuotedStr(dblcddep.Text)
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Modificaciones por Fallecimiento del asociado
  +'            AND NVL(A.FALLECIDO,''N'') = ''N'' '
// Fin: HPP_201003_ASO
  +'       ORDER BY a.asoapenomdni, b.dptodes, c.ciuddes, d.zipdes'
  +'      ) P';
  }

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{
   if length(dblcddep.Text)=0 then
   begin
      if dm1.verificahorario = False then
      begin
         MessageDlg('Horario no permitido para la ejecución de este proceso', mtError, [mbOk], 0);
         Exit;
      end;
   end;
}
  Screen.Cursor:= crHourGlass;
{
  xSQL := 'SELECT ROWNUM NUMERO, P.* '
         +'FROM (SELECT a.asodni DNI, a.asoapenomdni APELLIDOS_Y_NOMBRES, a.useid UGEL, usenom UGEL_NOMBRE, '
         +'             a.uproid U_PROCESO, a.upagoid U_PAGO, a.asodpto DPTO, b.dptodes DEPARTAMENTO_DOMICILIO, '
         +'             a.ciudid PROV, c.ciuddes PROVINCIA_DOMICILIO, a.zipid DIST, d.zipdes DISTRITO_DOMICILIO, '
         +'             a.asodir DIRECCION_DOMICILIO, asotelf1 TELEFONO_1, asotelf2 TELEFONO_2, asodeslab COLEGIO, '
         +'             asodptlabid DPTO_C, e.dptodes DEPARTAMENTO_COLEGIO, asoprvlabid PROV_C, f.ciuddes PROVINCIA_COLEGIO, '
         +'             asodstlabid DIST_C, g.zipdes DISTRITO_COLEGIO, asodirlab DIRECCION_COLEGIO, asotellab TELEFONO_COLEGIO '
         +'      FROM apo201 a, tge158 b, apo123 c, apo122 d, tge158 e, apo123 f, apo122 g, apo101 h, tge158 i '
         +'      WHERE a.asotipid = ''DO'' '
         +'        and a.autdesapo is null and nvl(a.deshabilitado,''N'') <> ''X'' AND NVL(A.FALLECIDO,''N'') = ''N'' '
         +'        and a.uproid = h.uproid and a.upagoid = h.upagoid and a.useid = h.useid '
         +'        and h.dptoid = i.dptoid ';
   if length(dblcddep.Text)>0 then
      xSQL := xSQL+' and i.dptoid = '+QuotedStr(dblcddep.Text);
   xSQL := xSQL
         +'        and substr(a.zipid,1,2) = b.dptoid(+) and substr(a.zipid,1,4) = c.ciudid(+) and a.zipid = d.zipid(+) '
         +'        and substr(a.ASODSTLABID,1,2) = e.dptoid(+) and substr(a.ASODSTLABID,1,4) = f.ciudid(+) '
         +'        and a.asodstlabid = g.zipid(+) '
         +'      ORDER BY a.asoapenomdni, b.dptodes, c.ciuddes, d.zipdes ) P';
}
  xSQL := 'SELECT ROWNUM NUMERO, P.* '
         +'FROM (SELECT a.asodni DNI, a.asoapenomdni APELLIDOS_Y_NOMBRES, a.useid UGEL, h.usenom UGEL_NOMBRE, '
         +'             a.uproid U_PROCESO, a.upagoid U_PAGO, '
         +'             a.asodpto DPTO, ''                               '' DEPARTAMENTO_DOMICILIO, '
         +'             a.ciudid PROV,  ''                               '' PROVINCIA_DOMICILIO, '
         +'             a.zipid DIST,   ''                               '' DISTRITO_DOMICILIO, '
         +'             a.asodir DIRECCION_DOMICILIO, asotelf1 TELEFONO_1, asotelf2 TELEFONO_2, asodeslab COLEGIO, '
         +'             asodptlabid DPTO_C, ''                               '' DEPARTAMENTO_COLEGIO, '
         +'             asoprvlabid PROV_C, ''                               '' PROVINCIA_COLEGIO, '
         +'             asodstlabid DIST_C, ''                               '' DISTRITO_COLEGIO, '
         +'             asodirlab DIRECCION_COLEGIO, asotellab TELEFONO_COLEGIO '
         +'      FROM apo201 a, apo101 h ';
   if length(dblcddep.Text)>0 then
      xSQL := xSQL+', tge158 i ';
   xSQL := xSQL
         +'      WHERE a.asotipid = ''DO'' '
         +'        and a.autdesapo is null and nvl(a.deshabilitado,''N'') <> ''X'' AND NVL(A.FALLECIDO,''N'') = ''N'' '
         +'        and a.uproid = h.uproid and a.upagoid = h.upagoid and a.useid = h.useid ';
   if length(dblcddep.Text)>0 then
      xSQL := xSQL+' and h.dptoid = i.dptoid '
                  +' and i.dptoid = '+QuotedStr(dblcddep.Text);
   xSQL := xSQL
         +'      ORDER BY a.asoapenomdni) P';

// fin: HPP_201010_ASO (HPC_201005_ASO)

  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  dbgreporte.DataSource := DM1.dsReporte;
  dbgreporte.Selected.Clear;
  dbgreporte.Selected.Add('NUMERO'#9'4'#9'NUMERO'#9#9);
  dbgreporte.Selected.Add('DNI'#9'8'#9'DNI'#9#9);
  dbgreporte.Selected.Add('APELLIDOS_Y_NOMBRES'#9'42'#9'APELLIDOS_Y_NOMBRES'#9#9);
  dbgreporte.Selected.Add('UGEL'#9'2'#9'UGEL'#9#9);
  dbgreporte.Selected.Add('UGEL_NOMBRE'#9'25'#9'UGEL_NOMBRE'#9#9);
  dbgreporte.Selected.Add('U_PROCESO'#9'3'#9'U_PROCESO'#9#9);
  dbgreporte.Selected.Add('U_PAGO'#9'3'#9'U_PAGO'#9#9);
  dbgreporte.Selected.Add('DPTO'#9'2'#9'DPTO'#9#9);

// inicio: HPP_201010_ASO (HPC_201005_ASO)
//  dbgreporte.Selected.Add('DEPARTAMENTO_DOMICILIO'#9'25'#9'DEPARTAMENTO_DOMICILIO'#9#9);
  dbgreporte.Selected.Add('PROV'#9'4'#9'PROV'#9#9);
//  dbgreporte.Selected.Add('PROVINCIA_DOMICILIO'#9'25'#9'PROVINCIA_DOMICILIO'#9#9);
  dbgreporte.Selected.Add('DIST'#9'6'#9'DIST'#9#9);
//  dbgreporte.Selected.Add('DISTRITO_DOMICILIO'#9'25'#9'DISTRITO_DOMICILIO'#9#9);
  dbgreporte.Selected.Add('DIRECCION_DOMICILIO'#9'42'#9'DIRECCION_DOMICILIO'#9#9);
  dbgreporte.Selected.Add('TELEFONO_1'#9'15'#9'TELEFONO_1'#9#9);
  dbgreporte.Selected.Add('TELEFONO_2'#9'15'#9'TELEFONO_2'#9#9);
  dbgreporte.Selected.Add('COLEGIO'#9'30'#9'COLEGIO'#9#9);
  dbgreporte.Selected.Add('DPTO_C'#9'2'#9'DPTO_C'#9#9);
//  dbgreporte.Selected.Add('DEPARTAMENTO_COLEGIO'#9'25'#9'DEPARTAMENTO_COLEGIO'#9#9);
  dbgreporte.Selected.Add('PROV_C'#9'4'#9'PROV_C'#9#9);
//  dbgreporte.Selected.Add('PROVINCIA_COLEGIO'#9'25'#9'PROVINCIA_COLEGIO'#9#9);
  dbgreporte.Selected.Add('DIST_C'#9'6'#9'DIST_C'#9#9);
//  dbgreporte.Selected.Add('DISTRITO_COLEGIO'#9'25'#9'DISTRITO_COLEGIO'#9#9);
// fin: HPP_201010_ASO (HPC_201005_ASO)

  dbgreporte.Selected.Add('DIRECCION_COLEGIO'#9'42'#9'DIRECCION_COLEGIO'#9#9);
  dbgreporte.Selected.Add('TELEFONO_COLEGIO'#9'15'#9'TELEFONO_COLEGIO'#9#9);
  dbgreporte.ApplySelected;
  Screen.Cursor:= crDefault;
end;

procedure TFpenaut.btnCerrarClick(Sender: TObject);
begin
  Fpenaut.Close;
end;

procedure TFpenaut.btnExcelClick(Sender: TObject);
begin
  DM1.HojaExcel('Resumen',DM1.dsReporte, dtgData);
end;

procedure TFpenaut.BitBtn1Click(Sender: TObject);
begin
  Fpenaut.Close;
end;

procedure TFpenaut.dblcddepChange(Sender: TObject);
begin
  If DM1.cdsDpto.Locate('DPTOID',VarArrayof([dblcddep.Text]),[]) Then
  Begin
    edtdptodes.Text  := DM1.cdsDpto.fieldbyname('DPTODES').AsString ;
  End
  Else
  Begin
    if Length(dblcddep.Text) <> 2 then
    Begin
      Beep;
      edtdptodes.Text  :='';
    End;
  End;
end;

procedure TFpenaut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// se cierra cds abiertos en la forma
// se detectó en pruebas integrales
   DM1.cdsDpto.Close;
   DM1.cdsDpto.Filter:='';
   DM1.cdsDpto.Filtered:=False;
   DM1.cdsDpto.IndexFieldNames:='';

   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';

   Action := caFree;
// Fin: HPP_201003_ASO
end;

end.
