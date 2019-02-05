unit ASO101;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO101
// Formulario           : fReferencias
// Fecha de Creación    : 07/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Mantenimiento de Referencias.
// Actualizaciones      :
// SPP_201404_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, ExtCtrls, StdCtrls;

type
  TfReferencias = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    dtgReferencias: TwwDBGrid;
    dtgAsociadoIButton: TwwIButton;
    GroupBox2: TGroupBox;
    Panel2: TPanel;
    dtgRefDetalle: TwwDBGrid;
    wwIButton1: TwwIButton;
    GroupBox3: TGroupBox;
    bInactivar: TBitBtn;
    bAgregar: TBitBtn;
    bSalir: TBitBtn;
    bActivar: TBitBtn;
    GroupBox4: TGroupBox;
    rbInactivos: TRadioButton;
    rbActivos: TRadioButton;
    procedure FormActivate(Sender: TObject);
    procedure buscarRefDetalle;
    procedure dtgReferenciasRowChanged(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure rbActivosClick(Sender: TObject);
    procedure rbInactivosClick(Sender: TObject);
    procedure bInactivarClick(Sender: TObject);
    procedure bActivarClick(Sender: TObject);
    procedure bAgregarClick(Sender: TObject); 
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fReferencias: TfReferencias;
  Var xCodigoCab :String;

implementation

USES ASODM, ASO101A;
{$R *.dfm}

procedure TfReferencias.FormActivate(Sender: TObject);
Var xSql :String;
begin
      //--Llena Grilla Referencias Cabecera--//
      xSql:=' SELECT C.CODCAB,C.NOMDES,C.ESTREG,C.FECREG,C.USUREG FROM ASO_GENERICA_CAB C'
            +'   WHERE C.CODCAB NOT IN (''TIPOUBICA'',''TIPOGEST'',''TIPOCART'',''ESTASIGNACION'',''ESTASIGHOJARUTA'',''ESTHOJARUTA'')';

       //--llenar la Grilla--//
         DM1.cdsConsultaHoja.Close;
         DM1.cdsConsultaHoja.DataRequest(xSql);
         DM1.cdsConsultaHoja.Open;
         dtgReferencias.DataSource := DM1.dsConsultaHoja;

         dtgReferencias.Selected.Clear;
         dtgReferencias.Selected.Add('NOMDES'#9'30'#9'Nombre'#9#9);
         dtgReferencias.ApplySelected;

         //--Valores inciales--//
         rbActivos.Checked:=true;
         bActivar.Enabled:=false;
end;

procedure TfReferencias.dtgReferenciasRowChanged(Sender: TObject);
begin
    buscarRefDetalle;
end;

procedure TfReferencias.buscarRefDetalle;
Var xCodCab :String;
Var xSql :String;
Var xSqlWhere :String;
begin
        xCodCab:= DM1.cdsConsultaHoja.FieldByName('CODCAB').AsString;

        //--Llena Grilla Referencias Detalle--//
        xSql:=' SELECT D.CODDET,D.NOMVAL,D.VALDES01,D.VALDES03,D.USUREG,D.FECREG,D.DESVAL,D.USUMOD,D.FECMOD FROM ASO_GENERICA_DET D WHERE D.CODCAB='+QuotedStr(xCodCab);

        if rbActivos.Checked=true then
        begin
             xSqlWhere:=' AND D.ESTREG=1';
        end;

        if rbInactivos.Checked=true then
        begin
             xSqlWhere:=' AND D.ESTREG=0';
        end;

         xSql:=xSql+xSqlWhere;
        //--llenar la Grilla--//
         DM1.cdsConsultaHojaDet.Close;
         DM1.cdsConsultaHojaDet.DataRequest(xSql);
         DM1.cdsConsultaHojaDet.Open;
         dtgRefDetalle.DataSource := DM1.dsConsultaHojaDet;

         dtgRefDetalle.Selected.Clear;
         dtgRefDetalle.Selected.Add('NOMVAL'#9'65'#9'Nombre Detalle'#9#9);
         dtgRefDetalle.Selected.Add('VALDES01'#9'5'#9'Codigo'#9#9);
         dtgRefDetalle.Selected.Add('VALDES03'#9'5'#9'Codigo2'#9#9);
         dtgRefDetalle.Selected.Add('USUREG'#9'10'#9'Usu. Reg'#9#9);
         dtgRefDetalle.Selected.Add('FECREG'#9'10'#9'Fec. Reg'#9#9);
         dtgRefDetalle.Selected.Add('USUMOD'#9'10'#9'Usu. Mod'#9#9);
         dtgRefDetalle.Selected.Add('FECMOD'#9'10'#9'Fec. Mod'#9#9);
         dtgRefDetalle.Selected.Add('DESVAL'#9'40'#9'Descripción Valor'#9#9);
         dtgRefDetalle.ApplySelected;

end;         

procedure TfReferencias.bSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfReferencias.rbActivosClick(Sender: TObject);
begin
     bActivar.Enabled:=false;
     bInactivar.Enabled:=true;
     buscarRefDetalle;
end;

procedure TfReferencias.rbInactivosClick(Sender: TObject);
begin

     bActivar.Enabled:=true;
     bInactivar.Enabled:=false;
     buscarRefDetalle;
end;

procedure TfReferencias.bInactivarClick(Sender: TObject);
Var xCodDet :String;
Var i :integer;
Var xSql :String;
begin
    //--Validar--//
    if dtgRefDetalle.SelectedList.Count = 0 then
    begin
        MessageDlg(' No Existe Datos Para Inactivar..!!!!', mtError, [mbOk], 0);
        Exit;
    end;


    if dtgRefDetalle.SelectedList.Count <> 0 then
    begin
      for i := 0 to dtgRefDetalle.SelectedList.Count -1 do
      begin
        dtgRefDetalle.datasource.dataset.GotoBookmark(dtgRefDetalle.SelectedList.items[i]);
        xCodDet := DM1.cdsConsultaHojaDet.FieldByName('CODDET').AsString;

         //Transaccion
          xSql := 'UPDATE ASO_GENERICA_DET '
                +' SET ESTREG=0,'
                +' USUMOD='+QuotedStr(DM1.wUsuario)+','
                +' FECMOD=SYSDATE'
                +' WHERE CODDET='+QuotedStr(xCodDet);
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      end;
    end;

    buscarRefDetalle;
end;

procedure TfReferencias.bActivarClick(Sender: TObject);
Var xCodDet :String;
Var i :integer;
Var xSql :String;
begin
     //--Validar--//
    if dtgRefDetalle.SelectedList.Count = 0 then
    begin
        MessageDlg(' No Existe Datos Para Inactivar..!!!!', mtError, [mbOk], 0);
        Exit;
    end;


    if dtgRefDetalle.SelectedList.Count <> 0 then
    begin
      for i := 0 to dtgRefDetalle.SelectedList.Count -1 do
      begin
        dtgRefDetalle.datasource.dataset.GotoBookmark(dtgRefDetalle.SelectedList.items[i]);
        xCodDet := DM1.cdsConsultaHojaDet.FieldByName('CODDET').AsString;

         //Transaccion
         xSql := 'UPDATE ASO_GENERICA_DET'
                +' SET ESTREG=1,'
                +' USUMOD='+QuotedStr(DM1.wUsuario)+','
                +' FECMOD=SYSDATE'
                +' WHERE CODDET='+QuotedStr(xCodDet);
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      end;
    end;

    buscarRefDetalle;
end;

procedure TfReferencias.bAgregarClick(Sender: TObject);
begin
       xCodigoCab:= DM1.cdsConsultaHoja.FieldByName('CODCAB').AsString;

     Try
            fGrabaDetalle := TfGrabaDetalle.create(self);
            fGrabaDetalle.Showmodal;
     Finally
            fGrabaDetalle.free;
     End;
end;  

end.
