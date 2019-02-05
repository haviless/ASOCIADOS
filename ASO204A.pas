unit ASO204A;
// Inicio Uso Estándares: 01/08/2011
// Unidad               : ASO204A
// Formulario           : fConsultaLotes
// Fecha de Creación    : 20/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Busca Lotes Generados.
// Actualizaciones      :
// SPP_201405_ASO       : Se realiza el pase a producción a partir del HPC_201404_ASO

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, Wwdbigrd, Grids, Wwdbgrid, Mask,
  wwdblook;

type
  TfConsultaLotes = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dblcLote: TwwDBLookupCombo;
    mdesLote: TMaskEdit;
    bBuscar: TBitBtn;
    dtgLote: TwwDBGrid;
    dtgAsociadoIButton: TwwIButton;
    GroupBox2: TGroupBox;
    bSalir: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure dblcLoteChange(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure dtgLoteDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsultaLotes: TfConsultaLotes;
  Var xCodCab :Integer;

implementation

uses ASODM, ASO204B;

{$R *.dfm}

procedure TfConsultaLotes.FormActivate(Sender: TObject);
Var xSql :String;
begin
   //--Llena Combo Departamento--//
   xSql := 'SELECT ROWNUM,CASE WHEN TO_CHAR(CODCAB)=''0'' THEN NULL ELSE TO_CHAR(CODCAB) END CODCAB FROM ('
        +' SELECT 0 CODCAB FROM DUAL UNION  SELECT DISTINCT C.CODCAB FROM ASO_CAPT_RENIEC_CAB C'
        +' ) ORDER BY 1';

   DM1.cdsFiltro5.Close;
   DM1.cdsFiltro5.DataRequest(xSql);
   DM1.cdsFiltro5.Open;
   dblcLote.LookupTable := DM1.cdsFiltro5;
   dblcLote.LookupField := 'CODCAB';
   dblcLote.Selected.Clear;
   dblcLote.Selected.Add('CODCAB'#9'5'#9'Codigo'#9#9);
   dblcLote.Text:=DM1.cdsFiltro5.fieldbyname('CODCAB').AsString;
   mdesLote.Text:='-TODOS-';

   //--Valores iniciales--//
   fConsultaLotes.bBuscarClick(Sender);

end;

procedure TfConsultaLotes.dblcLoteChange(Sender: TObject);
begin
     if dblcLote.Text<>'' then
     begin
         dblcLote.Text:=DM1.cdsFiltro5.fieldbyname('CODCAB').AsString;
         mdesLote.Text:='Lote '+DM1.cdsFiltro5.fieldbyname('CODCAB').AsString;
     end
     else
     begin
         mdesLote.Text:='-TODOS-';
     end;
end;

procedure TfConsultaLotes.bSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfConsultaLotes.bBuscarClick(Sender: TObject);
Var xSql : String;
Var xSqlWhere :String;
begin
     xSql:='SELECT C.CODCAB ,C.TIPUBI,'
       +' C.CODDEP,'
+'        DEP.DPTODES,'
+'        C.CODPRO,'
+'        PROV.CIUDDES,'
+'        C.CODDIS,'
+'        DIS.ZIPABR,'
+'        C.CENEDUID,'
+'        CEN.NOMCENEDU || '' ('' || NIVEL.NIVEDU_DES || '')'' NIVEL_CE,'
+'        C.CREVIG,'
+'        CASE WHEN FCRE.NOMVAL IS NULL THEN ''-TODOS-'' ELSE FCRE.NOMVAL END CRE_VIG,'
+'        C.LIQUID,'
+'        C.AUTDESAPO,'
+'        CASE WHEN FCA.NOMVAL IS NULL THEN ''-TODOS-'' ELSE FCA.NOMVAL END FIRMO,'
+'        C.ASOTIPID,'
+'        C.REGPENID,'
+'        CASE WHEN REGPEN.REGPENABR IS NULL THEN ''-TODOS-'' ELSE REGPEN.REGPENABR END REGPENABR,'
+'        C.FECINIULTACT,'
+'        C.FECFINULTACT,'
+'        C.ESTLOT,'
+'        CASE WHEN EL.NOMVAL IS NULL THEN ''-TODOS-'' ELSE EL.NOMVAL END EST_LOTE, '
+'        C.CANREG,'
+'        C.USUREG,'
+'        C.FECREG'
+'   FROM ASO_CAPT_RENIEC_CAB C'
+'   LEFT JOIN APO158 DEP ON DEP.DPTOID=C.CODDEP'
+'   LEFT JOIN APO123 PROV ON PROV.DPTOID=C.CODDEP AND PROV.CIUDID=C.CODPRO'
+'   LEFT JOIN APO122 DIS ON DIS.DPTOID=C.CODDEP AND DIS.CIUDID=C.CODPRO AND DIS.ZIPID=C.CODDIS'
+'   LEFT JOIN ASO_CEN_EDU CEN ON CEN.CENEDUID=C.CENEDUID'
+'   LEFT JOIN NIV_CEN_EDU NIVEL ON CEN.NIVEDU_ID=NIVEL.NIVEDU_ID'
+'   LEFT JOIN ASO_GENERICA_DET FCRE ON FCRE.CODCAB=''CREDITOVIGENTE'' AND FCRE.VALDES01=C.CREVIG AND FCRE.ESTREG=1'
+'   LEFT JOIN ASO_GENERICA_CAB C1 ON C1.CODCAB=FCRE.CODCAB AND C1.ESTREG=1'
+'   LEFT JOIN ASO_GENERICA_DET FCA ON FCA.CODCAB=''FIRMO'' AND FCA.VALDES01=C.AUTDESAPO AND FCA.ESTREG=1'
+'   LEFT JOIN ASO_GENERICA_CAB C2 ON C2.CODCAB=FCA.CODCAB AND C2.ESTREG=1'
+'   LEFT JOIN ASO_GENERICA_DET EL ON EL.CODCAB=''ESTADOLOTE'' AND EL.VALDES01=C.ESTLOT AND EL.ESTREG=1'
+'   LEFT JOIN ASO_GENERICA_CAB C3 ON C3.CODCAB=EL.CODCAB AND C3.ESTREG=1'
+'   LEFT JOIN apo105 REGPEN ON REGPEN.REGPENID=C.REGPENID' ;


       //--Condicionales--//
         if dblcLote.Text<>'' then
         begin
                xSqlWhere:=xSqlWhere+' WHERE C.CODCAB='+QuotedStr(dblcLote.Text); 
         end;

         //--llenar la Grilla--//
         xSql:=xSql+xSqlWhere+'  order by C.CODCAB DESC';

         Screen.Cursor := crHourGlass;
         DM1.cdsConsulta2.Close;
         DM1.cdsConsulta2.DataRequest(xSql);
         DM1.cdsConsulta2.Open;
         dtgLote.DataSource := DM1.dsConsulta2;

         dtgLote.Selected.Clear;
         dtgLote.Selected.Add('CODCAB'#9'4'#9'Lote'#9#9);
         dtgLote.Selected.Add('TIPUBI'#9'4'#9'Tipo Ubic.'#9#9);
         dtgLote.Selected.Add('DPTODES'#9'10'#9'Departamento'#9#9);
         dtgLote.Selected.Add('CIUDDES'#9'10'#9'Provincia'#9#9);
         dtgLote.Selected.Add('ZIPABR'#9'10'#9'Distrito'#9#9);
         dtgLote.Selected.Add('NIVEL_CE'#9'10'#9'C.E.'#9#9);
         dtgLote.Selected.Add('CRE_VIG'#9'5'#9'Credito Vigente'#9#9);
         dtgLote.Selected.Add('LIQUID'#9'4'#9'Tipo Liquidez.'#9#9);
         dtgLote.Selected.Add('FIRMO'#9'4'#9'Firmo CADAPS'#9#9);
         dtgLote.Selected.Add('ASOTIPID'#9'4'#9'Tipo '#9#9);
         dtgLote.Selected.Add('REGPENABR'#9'8'#9'Reg. Pension'#9#9);
         dtgLote.Selected.Add('FECINIULTACT'#9'10'#9'Fec. Ini'#9#9);
         dtgLote.Selected.Add('FECFINULTACT'#9'10'#9'Fec. Fin'#9#9);
         dtgLote.Selected.Add('EST_LOTE'#9'5'#9'Estado Lote'#9#9);
         dtgLote.Selected.Add('CANREG'#9'5'#9'Cant. Reg.'#9#9);
         dtgLote.Selected.Add('USUREG'#9'10'#9'Usu. Reg.'#9#9);
         dtgLote.Selected.Add('FECREG'#9'10'#9'Fec. Reg.'#9#9);
         dtgLote.ApplySelected;
         Screen.Cursor := crDefault;
end;

procedure TfConsultaLotes.dtgLoteDblClick(Sender: TObject);
begin
     xCodCab:=DM1.cdsConsulta2.FieldByName('CODCAB').AsInteger;

     Try
                fConsultaProcesaLoteReniec:= TfConsultaProcesaLoteReniec.Create(Self);
                fConsultaProcesaLoteReniec.Position:= poScreenCenter;
                fConsultaProcesaLoteReniec.ShowModal;

      Finally
                fConsultaProcesaLoteReniec.Free;
      end;

end;

end.
