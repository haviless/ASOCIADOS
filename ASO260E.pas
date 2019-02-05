// Inicio Uso Estándares:	01/08/2011
// Unidad		            :	ASO260E.pas
// Formulario		        :	FMantAsociadoDatosReniec
// Fecha de Creación	  :	2009
// Autor			          :	Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Información Reniec
// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// SPP_201403_ASO : Se modifica captura de datos de la tabla INF_RENIEC_CAP para que siempre tome el registro mas actual
// SPP_201403_ASO : Se realiza el pase a producción sobre el HPC_201402_ASO
// HPC_201502_ASO :  Se modifica el Script (SQL) de consulta a los datos actualizados de RENIEC
//                   Se quita el ROWNUM<2 Y SE ADICION EL ORDER POR LA FECHA DE ACTUALIZACION PARA QUE TOME EL ULTIMO ACTUALIZADO
//                   DENTRO DE LA FECHA DE EMISION MAS ACTUAL
unit ASO260E;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ValEdit, ExtCtrls, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, db, jpeg;

type
  TFMantAsociadoDatosReniec = class(TForm)
    pnlDatCapRen: TPanel;
    imgFoto: TImage;
    imgFirma: TImage;
    lblMsgUltimaAct2: TLabel;
    lblMsgUltimaAct1: TLabel;
    lbl: TLabel;
    lblUsuario: TLabel;
    Label51: TLabel;
    vallis: TValueListEditor;
    ppBDEReniec: TppBDEPipeline;
    ppRReniec: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape41: TppShape;
    ppLabel21: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape31: TppShape;
    ppShape28: TppShape;
    ppShape26: TppShape;
    ppShape21: TppShape;
    ppShape4: TppShape;
    ppShape3: TppShape;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape27: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppShape2: TppShape;
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
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFoto: TppImage;
    ppFirma: TppImage;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppLabel141: TppLabel;
    ppDBText34: TppDBText;
    ppFooterBand1: TppFooterBand;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure CargaImagenes;
    procedure CargaFicha;
  end;

var
  FMantAsociadoDatosReniec: TFMantAsociadoDatosReniec;

implementation

uses ASODM;

{$R *.dfm}

procedure TFMantAsociadoDatosReniec.FormCreate(Sender: TObject);

begin
  CargaFicha;
end;

procedure TFMantAsociadoDatosReniec.CargaFicha;
var
  // Inicio: SPP_201403_ASO
   xSQL:string;
begin

  // XSQL := 'SELECT A.*,'
  //       +'       case when FLAG_EXPIRA IS NULL THEN '''' '
  //       +'            when FLAG_EXPIRA=''V'' THEN ''VIGENTE'' '
  //       +'            when FLAG_EXPIRA=''C'' THEN ''CADUCADO'' '
  //       +'       else ''INDEFINIDO'' end FLAG_EXPIRADESC, '
  //       +'       B.USERNOM '
  //       +'FROM INF_RENIEC_CAP A, USERTABLE B '
  //       +'WHERE DNI = '''+ TRIM(DM1.cdsAso.FieldByName('ASODNI').AsString)+''' AND A.USUACT = B.USERID(+) '
  //       +'ORDER BY FECACT DESC';
  xSQL := 'SELECT '
	     +'DNI,NUMLIB,APEPAT,APEMAT,NOMBRE,OTRDOC,LUGNAC,NOMPAD,NOMMAD,FECNAC,ESTATURA,SEXO,ESTCIV,GRAINS, '
		 +'LUGDOM,RESTRICCIONES,FECINS,STAVOT,FECEMIDOC,DIRECCION,FOTO,FIRMA,USUACT,FECACT,OFIACT,EQUUSU, '
 		 +'FLAG_EXPIRA,UNICO,APECAS,CODUBIDEPNAC,DESDEPNAC,CODUBIPRONAC,DESPRONAC,CODUBIDISNAC,DESDISNAC, '
		 +'CODGRAINS,CODESTCIV,CODDOCSUS,NUMDOCSUS,FLACONVOT,CODRES,FECEXP,CODUBIDEPDOM,DESDEPDOM,CODUBIPRODOM, '
		 +'DESPRODOM,CODUBIDISDOM,DESDISDOM,PRECODDIRECC,PREDESDIRECC,DESDIRECC,NUMDIRECC,DESETAPA,DESMANZA, '
		 +'DESLOTE,PRECODBLOCK,PREDESBLOCK,DESBLOCK,PRECODINTER,PREDESINTER,DESINTER,PRECODURBAN,PREDESURBAN, '
		 +'DESURBAN,FLAG_EXPIRA,USERNOM,CASE WHEN FLAG_EXPIRA IS NULL THEN '''' WHEN FLAG_EXPIRA = ''V'' THEN ''VIGENTE'' WHEN FLAG_EXPIRA=''C'' THEN ''CADUCADO'' '
  		 +' ELSE ''INDEFINIDO'' END FLAG_EXPIRADESC, B.USERNOM'
  		 +' FROM INF_RENIEC_CAP A, USERTABLE B'
  		 +' WHERE (A.DNI = '+Trim(DM1.cdsAso.FieldByName('ASODNI').AsString)+' AND A.FOTO IS NOT NULL)'
  		 +' AND (FECEMIDOC IN (SELECT MAX(FECEMIDOC) FROM INF_RENIEC_CAP WHERE DNI = '+Trim(DM1.cdsAso.FieldByName('ASODNI').AsString)
  //Inicio HPC_201502_ASO
  //Se quita el ROWNUM<2 Y SE ADICION EL ORDER POR LA FECHA DE ACTUALIZACION PARA QUE TOME EL ULTIMO ACTUALIZADO DENTRO DE LA FECHA DE EMISION MAS ACTUAL
  //   +' AND FOTO IS NOT NULL) AND ROWNUM < 2)'
  //   +' AND A.USUACT = B.USERID(+)';
       +' AND FOTO IS NOT NULL) )'
       +' AND A.USUACT = B.USERID(+) ORDER BY  FECACT DESC ';
  // Fin: SPP_201403_ASO
  //Final HPC_201502_ASO
  DM1.cdsParam.Close;
  DM1.cdsParam.DataRequest(XSQL);
  DM1.cdsParam.Open;

  if DM1.cdsParam.RecordCount > 0 then
  Begin
    vallis.InsertRow('Nro. de Libro',DM1.cdsParam.FieldByName('NUMLIB').AsString ,True);
    vallis.InsertRow('Libreta Electoral/DNI',DM1.cdsParam.FieldByName('DNI').AsString ,True);
    vallis.InsertRow('Apellido Paterno',DM1.cdsParam.FieldByName('APEPAT').AsString ,True);
    vallis.InsertRow('Apellido Materno',DM1.cdsParam.FieldByName('APEMAT').AsString ,True);
    vallis.InsertRow('Nombres',DM1.cdsParam.FieldByName('NOMBRE').AsString ,True);
    vallis.InsertRow('Documento Sustentatorio',DM1.cdsParam.FieldByName('OTRDOC').AsString ,True);
    vallis.InsertRow('Lugar de Nacimiento',DM1.cdsParam.FieldByName('LUGNAC').AsString ,True);
    vallis.InsertRow('Nombre del Padre',DM1.cdsParam.FieldByName('NOMPAD').AsString ,True);
    vallis.InsertRow('Nombre de la Madre',DM1.cdsParam.FieldByName('NOMMAD').AsString ,True);
    vallis.InsertRow('Fecha de Nacimiento',DM1.cdsParam.FieldByName('FECNAC').AsString ,True);
    vallis.InsertRow('Estatura',DM1.cdsParam.FieldByName('ESTATURA').AsString ,True);
    vallis.InsertRow('Sexo',DM1.cdsParam.FieldByName('SEXO').AsString ,True);
    vallis.InsertRow('Estado Civil',DM1.cdsParam.FieldByName('ESTCIV').AsString ,True);
    vallis.InsertRow('Grado de Instrucción',DM1.cdsParam.FieldByName('GRAINS').AsString ,True);
    vallis.InsertRow('Lugar de Domicilio',DM1.cdsParam.FieldByName('LUGDOM').AsString ,True);
    vallis.InsertRow('Restricciones',DM1.cdsParam.FieldByName('RESTRICCIONES').AsString ,True);
    vallis.InsertRow('Fecha de Inscripción',DM1.cdsParam.FieldByName('FECINS').AsString ,True);
    vallis.InsertRow('Constancia de Votación',DM1.cdsParam.FieldByName('STAVOT').AsString ,True);
    vallis.InsertRow('Fecha de Emisión Docum.',DM1.cdsParam.FieldByName('FECEMIDOC').AsString ,True);
    vallis.InsertRow('Dirección',DM1.cdsParam.FieldByName('DIRECCION').AsString ,True);
    vallis.InsertRow('DNI Caducado',DM1.cdsParam.FieldByName('FLAG_EXPIRADESC').AsString ,True);
    CargaImagenes;
    imgFoto.Picture.Assign(DM1.JPG);
    imgFirma.Picture.Assign(DM1.jpgFirma);
    lblMsgUltimaAct2.Caption := DM1.cdsParam.FieldByName('FECACT').AsString;
    lblUsuario.Caption       := DM1.cdsParam.FieldByName('USERNOM').AsString;
  End;
  DM1.cdsParam.Close;
  DM1.cdsParam.IndexFieldNames:='';
end;

//Carga Imagenes del blob
procedure TFMantAsociadoDatosReniec.CargaImagenes;
begin
  DM1.Jpg := nil;
  DM1.Stream := nil;
  DM1.JpgFirma := nil;
  DM1.StreamFirma := nil;

  TRY
    //Crear una corriente y cargarle el contenido de un campo Blob
    DM1.Stream := TMemoryStream.Create;
    TBlobField(DM1.cdsParam.FieldByName('FOTO')).SaveToStream(DM1.Stream);

    DM1.StreamFirma := TMemoryStream.Create;
    TBlobField(DM1.cdsParam.FieldByName('FIRMA')).SaveToStream(DM1.StreamFirma);

    if DM1.Stream.Size > 0 then
    begin
      //Crear una imagen JPEG y cargarla desde la corriente
      DM1.Jpg := TJpegImage.Create;
      DM1.Stream.Position := 0;
      DM1.Jpg.LoadFromStream(DM1.Stream);
    end
    else
      DM1.Jpg := NIL;

    if DM1.StreamFirma.Size > 0 then
    begin
      //Crear una imagen JPEG y cargarla desde la corriente
      DM1.jpgFirma := TJpegImage.Create;
      DM1.StreamFirma.Position := 0;
      DM1.jpgFirma.LoadFromStream(DM1.StreamFirma);
    end
    else
      DM1.jpgFirma := NIL;
  except
    DM1.Jpg := NIL;
    DM1.jpgFirma := NIL;
  end;
end;

procedure TFMantAsociadoDatosReniec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   vallis.Strings.Clear;
   pnlDatCapRen.Visible := False;
end;

end.
