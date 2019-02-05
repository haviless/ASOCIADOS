// Inicio Uso Estándares: 01/08/2011
// Unidad               : PRE901C
// Formulario           : FCboCausaCese
// Fecha de Creación    : 07/06/2017
// Autor                : Jesús Castillo Pampas
// Objetivo             : Formulario para Listar las Causas de Cese
// Actualizaciones      :
//HPC_201702_ASO        : Creación del Formulario

//Inicio HPC_201702_ASO
//Creación de formulario para Listar las Causas de Cese

unit PRE901C;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, DB, Wwdatsrc, DBClient, wwclient, StrUtils,
  Wwdbdlg;

type
  TFCboCausaCese = class(TFrame)
    lblEtiqueta: TLabel;
    cbListaDatos: TwwDBLookupComboDlg;
    procedure cbListaDatosEnter(Sender: TObject);
    procedure cbListaDatosExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    xxCdsQry : TwwClientDataSet;
     xxDsQry : TwwDataSource;
    procedure FG_CARGA_DATOS(psTipBenef : string; psIncluirOpcSeleccion : String = 'N'; psTextoSeleccion : String = '');
    function FG_OBTENER_CODIGO_CODCAUCES(): String;
    procedure FG_IR_REGISTRO_CODIGO(psTIPBENEF : String; psCODCAUCES : String);
  end;

implementation

uses ASODM;

{$R *.dfm}


procedure TFCboCausaCese.FG_CARGA_DATOS(psTipBenef : String;
                                        psIncluirOpcSeleccion : String = 'N';
                                        psTextoSeleccion : String = '');
var xsSQL : String;
begin
  DM1.FG_CONECTA_CDS(xxCdsQry, xxDsQry);
  xsSQL :=
          ' SELECT TIPBENEF, CODCAUCES, DESCAUCES '
        + '   FROM (SELECT TIPBENEF, CODCAUCES, DESCAUCES '
        + '           FROM PRE_CAUSA_CESE_CAB '
        + '          WHERE TIPBENEF = ' + QuotedStr(psTipBenef)
        + '         ) '
        + '  ORDER BY DESCAUCES';
  if psIncluirOpcSeleccion = 'S' then begin
    xsSQL := 'SELECT CASE WHEN CODCAUCES = ''^^'' THEN -1 ELSE ROWNUM END ORDEN, CODCAUCES, DESCAUCES FROM ( SELECT ''^^'' CODCAUCES, ''' + psTextoSeleccion + ''' DESCAUCES FROM DUAL UNION ALL '
            + xsSQL
            + ' ) ';
    xxCdsQry.IndexFieldNames := 'ORDEN';
  end;
  xxCdsQry.Close;
  xxCdsQry.DataRequest(xsSQL);
  xxCdsQry.Open;
  cbListaDatos.LookupTable := xxCdsQry;
  cbListaDatos.LookupField := 'DESCAUCES';
  cbListaDatos.Selected.Clear;
  cbListaDatos.Selected.Add('DESCAUCES'#9'50'#9'CAUSA DE CESE');
  cbListaDatos.Selected.Add('CODCAUCES'#9'5'#9'CODIGO DE CESE');
  cbListaDatos.LookupValue := xxCdsQry.fieldbyname('DESCAUCES').AsString;
end;

function TFCboCausaCese.FG_OBTENER_CODIGO_CODCAUCES() : String;
begin
  if Assigned(xxCdsQry) and (xxCdsQry.RecordCount > 0) and (cbListaDatos.Text<>'') then begin
     xxCdsQry.Locate('DESCAUCES', VarArrayof([cbListaDatos.Text]), []);
     result := xxCdsQry.fieldbyname('CODCAUCES').asstring
  end else
     result := '';
end;

procedure TFCboCausaCese.FG_IR_REGISTRO_CODIGO(psTIPBENEF : String; psCODCAUCES : String);
begin
Try
  if xxCdsQry.Locate('TIPBENEF;CODCAUCES', VarArrayOf([psTIPBENEF, psCODCAUCES]),[]) then
     cbListaDatos.Text :=  xxCdsQry.fieldbyname('DESCAUCES').AsString;
Except
  ShowMessage('No está actualizada la información, verifique');
  exit;
End;
end;

procedure TFCboCausaCese.cbListaDatosEnter(Sender: TObject);
begin
  xxCdsQry.IndexFieldNames := 'DESCAUCES';
end;

procedure TFCboCausaCese.cbListaDatosExit(Sender: TObject);
begin
  xxCdsQry.IndexFieldNames := '';
end;

end.
//Final HPC_201702_ASO
