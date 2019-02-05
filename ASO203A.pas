unit ASO203A;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO203A
// Formulario           : fModificarResultado
// Fecha de Creación    : 07/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Modificar resultado de la hoja de ruta.
// Actualizaciones      :
// SPP_201404_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO
// HPC_201407_ASO       : Se agrego mensaje de confirmacion para grabar el resultado.
// SPP_201406_ASO       : Se realiza el pase a producción a partir del HPC_201407_ASO.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Wwdbdlg, Mask, Buttons;

type
  TfModificarResultado = class(TForm)
    GroupBox1: TGroupBox;
    medesAsoId: TMaskEdit;
    medesNombre: TMaskEdit;
    medesFecha: TMaskEdit;
    edReferencia: TMemo;
    edGestion: TMemo;
    bGrabar: TBitBtn;
    bSalir: TBitBtn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    medesConocimiento: TMaskEdit;
    medesSatisfaccion: TMaskEdit;
    medesResulDes: TMaskEdit;
    dblSatisfaccion: TwwDBLookupCombo;
    dblConocimiento: TwwDBLookupCombo;
    Label5: TLabel;
    dblTipoRes: TwwDBLookupCombo;
    procedure FormActivate(Sender: TObject);
    procedure bGrabarClick(Sender: TObject);
    procedure bSalirClick(Sender: TObject); 
    procedure dblTipoResChange(Sender: TObject);
    procedure dblSatisfaccionChange(Sender: TObject);
    procedure dblConocimientoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fModificarResultado: TfModificarResultado;
   Var xE :String;
  
implementation

uses ASODM,ASO203,ASO001, DB,ASO202;

{$R *.dfm}

procedure TfModificarResultado.FormActivate(Sender: TObject);
Var xSql  :String;
begin
     //--Llena combo resultado--//
     xSql := ' SELECT D.VALDES01,D.VALDES03,D.NOMVAL FROM ASO_GENERICA_CAB C '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''RESULTADO'' '  ;
   DM1.cdsResultado.Close;
   DM1.cdsResultado.DataRequest(xSql);
   DM1.cdsResultado.Open;
   dblTipoRes.LookupTable := DM1.cdsResultado;
   dblTipoRes.LookupField := 'VALDES01';
   dblTipoRes.Selected.Clear;
   dblTipoRes.Selected.Add('VALDES01'#9'2'#9'Código'#9#9);
   dblTipoRes.Selected.Add('VALDES03'#9'2'#9'Código'#9#9);
   dblTipoRes.Selected.Add('NOMVAL'#9'60'#9'Descripción'#9#9); 

   //--Llena combo nivel satisfaccion--//
   xSql := ' SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''NIVELSATISF'' ORDER BY 1'  ;
   DM1.cdsNivelSat.Close;
   DM1.cdsNivelSat.DataRequest(xSql);
   DM1.cdsNivelSat.Open;
   dblSatisfaccion.LookupTable := DM1.cdsNivelSat;
   dblSatisfaccion.LookupField := 'VALDES01';
   dblSatisfaccion.Selected.Clear;
   dblSatisfaccion.Selected.Add('VALDES01'#9'2'#9'Código'#9#9);
   dblSatisfaccion.Selected.Add('NOMVAL'#9'15'#9'Descripción'#9#9);

   //--Llena combo nivel de conocimiento--//
   xSql := ' SELECT D.VALDES01,D.NOMVAL FROM ASO_GENERICA_CAB C  '
                        +  'INNER JOIN ASO_GENERICA_DET D ON C.CODCAB=D.CODCAB  '
                        + 'AND C.ESTREG=1 '
                        +  'AND D.ESTREG=1   '
                        +  'AND C.CODCAB=''NIVELCONO'' ORDER BY 1'  ;
   DM1.cdsNivelCono.Close;
   DM1.cdsNivelCono.DataRequest(xSql);
   DM1.cdsNivelCono.Open;
   dblConocimiento.LookupTable := DM1.cdsNivelCono;
   dblConocimiento.LookupField := 'VALDES01';
   dblConocimiento.Selected.Clear;
   dblConocimiento.Selected.Add('VALDES01'#9'2'#9'Código'#9#9);
   dblConocimiento.Selected.Add('NOMVAL'#9'15'#9'Descripción'#9#9);
   
   
   //--Valores Inciales--//
   xSql:=' SELECT ROWNUM,R.ASOID,R.CODRES,R.CODUSU,R.REFASO,R.GESREAASO,R.TIPRES,R.ESTRES,R.USUREG,R.FECREG,R.NIVSAT,R.NIVCON,'
             +' R.USUMOD,R.FECMOD,R.PERCAR FROM ASO_RESULT_ASEPREV_MOV R'
             +'  WHERE R.CODRES='+IntToStr(ASO203.xCodRes);
   //--llenar la Grilla--//
    DM1.cdsTemp.Close;
    DM1.cdsTemp.DataRequest(xSql);
    DM1.cdsTemp.Open;

    medesAsoId.Text:=DM1.cdsTemp.fieldbyname('ASOID').AsString;
    medesNombre.Text:=ASO203.fActualizarResultado.medesNombre.Text;
    medesFecha.Text:=FormatDateTime('dd/mm/yyyy',Date);
    dblTipoRes.Text:=DM1.cdsTemp.fieldbyname('TIPRES').AsString;
    dblSatisfaccion.Text:=DM1.cdsTemp.fieldbyname('NIVSAT').AsString;
    dblConocimiento.Text:=DM1.cdsTemp.fieldbyname('NIVCON').AsString;
    edReferencia.Text:=DM1.cdsTemp.fieldbyname('REFASO').AsString;
    edGestion.Text:=DM1.cdsTemp.fieldbyname('GESREAASO').AsString; 
end;

procedure TfModificarResultado.dblTipoResChange(Sender: TObject);
begin
    if dblTipoRes.Text <>'' then
    begin
        If DM1.cdsResultado.Locate('VALDES01', VarArrayof([dblTipoRes.Text]), []) Then
                medesResulDes.Text:=DM1.cdsResultado.fieldbyname('NOMVAL').AsString;
                 xE:=DM1.cdsResultado.fieldbyname('VALDES03').AsString;
    end
    else
    begin
        medesNombre.Text:='';
        xE:='';
    end;
end;
procedure TfModificarResultado.dblSatisfaccionChange(Sender: TObject);
begin
    if dblSatisfaccion.Text<>'' then
    begin
         If DM1.cdsNivelSat.Locate('VALDES01', VarArrayof([dblSatisfaccion.Text]), []) Then
                medesSatisfaccion.Text:=DM1.cdsNivelSat.fieldbyname('NOMVAL').AsString;
    end
    else
    begin
        medesSatisfaccion.Text:='';
    end;
end;

procedure TfModificarResultado.dblConocimientoChange(Sender: TObject);
begin
     if dblConocimiento.Text<>'' then
    begin
         If DM1.cdsNivelCono.Locate('VALDES01', VarArrayof([dblConocimiento.Text]), []) Then
                medesConocimiento.Text:=DM1.cdsNivelCono.fieldbyname('NOMVAL').AsString;
    end
    else
    begin
        medesConocimiento.Text:='';
    end;
end;

procedure TfModificarResultado.bGrabarClick(Sender: TObject);
Var xSql  :String;
Var xCodUsu :String;
begin
    //--Validar que usuario no pueda modificar resultados de otros usuarios--//
    xCodUsu:=DM1.cdsTemp.fieldbyname('CODUSU').AsString;

    if xCodUsu <> DM1.wUsuario then
    begin
        MessageDlg(' No puede Modificar Resultados que no le Pertencen...!!!!', mtError, [mbOk], 0);
        Exit;
    end;


    //Graba resultado de la tabla
     xSql := ' UPDATE ASO_RESULT_ASEPREV_MOV R'
             +'   SET R.CODUSU='+QuotedStr(DM1.wUsuario)
             +'   ,R.REFASO='+QuotedStr(edReferencia.Text)
             +'   ,R.GESREAASO='+QuotedStr(edGestion.Text)
             +'   ,R.TIPRES='+QuotedStr(dblTipoRes.Text)
             +'   ,R.ESTRES='+QuotedStr(xE)
             +'   ,R.NIVSAT='+QuotedStr(dblSatisfaccion.Text)
             +'   ,R.NIVCON='+QuotedStr(dblConocimiento.Text)
             +'   ,R.USUMOD='+QuotedStr(DM1.wUsuario)
             +'   ,R.FECMOD=SYSDATE'
             +'   WHERE R.CODRES='+IntToStr(ASO203.xCodRes);

     DM1.DCOM1.AppServer.EjecutaSql(xSql);
     //Inicio: SPP_201406_ASO
     MessageDlg(' Se modifico resultado satisfactoriamente.', mtError, [mbOk], 0);
     //Fin: SPP_201406_ASO
     ASO203.fActualizarResultado.FormActivate(Sender);
     Close;
end;

procedure TfModificarResultado.bSalirClick(Sender: TObject);
begin
   ASO203.fActualizarResultado.FormActivate(Sender);
   Close;
end;


end.
