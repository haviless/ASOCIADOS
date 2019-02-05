// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO267.pas
// Formulario              :  Fverificaasociado
// Fecha de Creación       :  29/08/2016
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Envio de lotes CADAPS
// HPC_201607_ASO : Creación

unit ASO267;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ppBands, ppCache,
  ppClass, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppPrnabl,
  ppCtrls, ppVar, jpeg, DBGrids;

type
  TFlotesenviados = class(TForm)
    dbgcablotenv: TwwDBGrid;
    dbgdetlotenv: TwwDBGrid;
    Bitsalir: TBitBtn;
    BitGrabar: TBitBtn;
    ppDBPreporte: TppDBPipeline;
    ppReporte: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel1: TppLabel;
    ppldias: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    ppShape6: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppImage3: TppImage;
    ppLabel114: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    pplimpresopor02: TppLabel;
    BitExporta: TBitBtn;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure BitsalirClick(Sender: TObject);
    procedure dbgcablotenvRowChanged(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
  private
  procedure cabecera;
  procedure detalle;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Flotesenviados: TFlotesenviados;

implementation

uses ASODM;

{$R *.dfm}

procedure TFlotesenviados.FormCreate(Sender: TObject);
begin
   cabecera;
   detalle;
end;

procedure TFlotesenviados.BitGrabarClick(Sender: TObject);
begin
   pplimpresopor02.Caption := 'Impreso por : '+DM1.DevuelveValor('TGE006', 'USERNOM', 'USERID', DM1.wUsuario);
   ppldias.Caption := 'DEL '+DM1.cdsCreditoCab.FieldByName('FECINIGENENV').AsString+' AL '+DM1.cdsCreditoCab.FieldByName('FECFINGENENV').AsString;
   ppReporte.Print;
end;

procedure TFlotesenviados.BitsalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFlotesenviados.cabecera;
Var xSql:String;
begin
   xSql := 'SELECT CODGENENV, FECINIGENENV, FECFINGENENV, CANREGENV, USUGENENV, FECGENENV FROM ASO_VAL_CADAPS_CAB WHERE 1 = 1 ORDER BY CODGENENV';
   DM1.cdsCreditoCab.Close;
   DM1.cdsCreditoCab.DataRequest(xSql);
   DM1.cdsCreditoCab.Open;
   dbgcablotenv.Selected.Clear;
   dbgcablotenv.Selected.Add('CODGENENV'#9'18'#9'Número de~lote'#9#9);
   dbgcablotenv.Selected.Add('FECINIGENENV'#9'12'#9'Fecha inicial~del envío'#9#9);
   dbgcablotenv.Selected.Add('FECFINGENENV'#9'12'#9'Fecha final~del envío'#9#9);
   dbgcablotenv.Selected.Add('CANREGENV'#9'10'#9'Cantidad de~registros'#9#9);
   dbgcablotenv.Selected.Add('USUGENENV'#9'15'#9'Usuario que~generó el envío'#9#9);
   dbgcablotenv.Selected.Add('FECGENENV'#9'12'#9'Fecha de generación~del envío'#9#9);
   dbgcablotenv.ApplySelected;
end;

procedure TFlotesenviados.detalle;
Var xSql:String;
begin
   xSql := 'SELECT D.DPTODES, C.USENOM, B.ASODNI, B.ASOCODMOD, B.ASOAPENOMDNI, E.DES_SIT'
   +' FROM ASO_VAL_CADAPS A, APO201 B, APO101 C, APO158 D, ASO_PAD_SIT_ASO E'
   +' WHERE A.CODGENENV = '+QuotedStr(DM1.cdsCreditoCab.FieldByName('CODGENENV').AsString)+' AND A.ASOID = B.ASOID AND A.UPROID = C.UPROID AND A.UPAGOID = C.UPAGOID AND A.USEID = C.USEID'
   +' AND C.DPTOID = D.DPTOID AND A.TIPSER = E.COD_SIT  AND E.COD_MAE = ''01'' AND E.COD_SIT IS NOT NULL'
   +' ORDER BY A.FECVALCADAPS';
   DM1.cdsCreditos.Close;
   DM1.cdsCreditos.DataRequest(xSql);
   DM1.cdsCreditos.Open;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   dbgdetlotenv.Selected.Clear;
   dbgdetlotenv.Selected.Add('ASODNI'#9'8'#9'DNI'#9#9);
   dbgdetlotenv.Selected.Add('ASOCODMOD'#9'10'#9'CODIGO~MODULAR'#9#9);
   dbgdetlotenv.Selected.Add('ASOAPENOMDNI'#9'45'#9'APELLIDOS Y NOMBRES'#9#9);
   dbgdetlotenv.Selected.Add('DES_SIT'#9'20'#9'TIPO DE~SERVIDOR'#9#9);
   dbgdetlotenv.Selected.Add('USENOM'#9'25'#9'UGEL DEL~ASOCIADO'#9#9);
   dbgdetlotenv.Selected.Add('DPTODES'#9'19'#9'DEPARTAMENTO~DEL ASOCIADO'#9#9);
   dbgdetlotenv.ApplySelected;
   If DM1.cdsCreditos.RecordCount = 0 Then
   Begin
      BitExporta.Enabled := False;
      BitGrabar.Enabled := False;
   End
   Else
   Begin
      BitExporta.Enabled := True;
      BitGrabar.Enabled := True;
   End;
end;

procedure TFlotesenviados.dbgcablotenvRowChanged(Sender: TObject);
begin
   detalle;
end;

procedure TFlotesenviados.BitExportaClick(Sender: TObject);
begin
   If DM1.cdsCreditos.RecordCount > 0 Then
   Begin
      Try
         DM1.ExportaGridExcel(dbgdetlotenv, 'ENVIO_LOTES');
      Except
         On Ex: Exception Do
            Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
      End;
   End
   Else
   Begin
      MessageDlg('No existe información para mostrar.', mtError, [mbOk], 0);
      Exit;
   End;
end;

end.
