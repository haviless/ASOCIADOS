unit ASO101A;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO101A
// Formulario           : fGrabaDetalle
// Fecha de Creación    : 07/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Grabar nuevas Referencias.
// Actualizaciones      :
// SPP_201404_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdblook;

type
  TfGrabaDetalle = class(TForm)
    GroupBox1: TGroupBox;
    eNombre: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    eDesc: TEdit;
    Label3: TLabel;
    bGrabar: TBitBtn;
    dblResul: TwwDBLookupCombo;
    bSalir: TBitBtn;
    procedure bGrabarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGrabaDetalle: TfGrabaDetalle;

implementation
USES ASODM, ASO101;
{$R *.dfm}

procedure TfGrabaDetalle.FormActivate(Sender: TObject);
Var xSql :String;
begin

   //--Llena combo Año--//
   xSql := ' SELECT ''E'' RESULTADO FROM DUAL'
           +' UNION'
           +' SELECT ''NE'' RESULTADO FROM DUAL' ;
   DM1.cdsResultado.Close;
   DM1.cdsResultado.DataRequest(xSql);
   DM1.cdsResultado.Open;
   dblResul.LookupTable := DM1.cdsResultado;
   dblResul.LookupField := 'RESULTADO';
   dblResul.Selected.Clear;
   dblResul.Selected.Add('RESULTADO'#9'6'#9'Resultado'#9#9);

   //--Valores inicales--//
   if ASO101.xCodigoCab <>'RESULTADO' then
   begin
        dblResul.Enabled:=false;
   end;
end;

procedure TfGrabaDetalle.bGrabarClick(Sender: TObject);
Var xSql :String;
begin
     //--Valida--//
     if trim(eNombre.Text)='' then
     begin
        MessageDlg(' Debe completar el campo Nombre..!!!!', mtError, [mbOk], 0);
        Exit;
     end;

      if ASO101.xCodigoCab ='RESULTADO' then
      begin
                if trim(dblResul.Text)='' then
                begin                                    
                        MessageDlg(' Debe completar el campo Tipo Resultado(E:Exitoso; NE:No Exitoso)..!!!!', mtError, [mbOk], 0);
                        Exit;
                end;
      end;

      //Transaccion--//
         xSql := 'INSERT INTO ASO_GENERICA_DET(CODDET,NOMVAL,VALDES01,VALDES02,VALDES03,VALDES04,DESVAL,ESTREG,USUREG,FECREG,USUMOD,FECMOD,CODCAB)'
                +' VALUES((SELECT NVL(MAX(X.CODDET)+1,0) FROM ASO_GENERICA_DET X),'+QuotedStr(trim(eNombre.Text))+',(SELECT NVL(MAX(X.VALDES01)+1,0) FROM ASO_GENERICA_DET X WHERE X.CODCAB='+QuotedStr(ASO101.xCodigoCab)+'),'
                +' NULL,'+QuotedStr(trim(dblResul.Text))+',NULL,'+QuotedStr(trim(eDesc.Text))+',1,'+QuotedStr(DM1.wUsuario)+',SYSDATE,NULL,NULL,'+QuotedStr(ASO101.xCodigoCab)+')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      Close;
      
      ASO101.fReferencias.buscarRefDetalle;
end;



procedure TfGrabaDetalle.bSalirClick(Sender: TObject);
begin
  Close;
end;

end.
