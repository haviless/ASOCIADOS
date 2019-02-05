// Inicio Uso Estándares : 01/08/2011
// Unidad                : ASO261.pas
// Formulario            : fMstFonSol
// Fecha de Creación     : 24/04/2013
// Autor                 : HECTOR CAIGUARAICO
// Objetivo              : Mantenimiento de Asociados

// Nueva Opción          : Opción creada por el requerimiento indicado en el HPC_201309_ASO
// HPC_201309_ASO        : Implementación de consulta al FSC x asociado
// SPP_201310_ASO        : Se realiza el pase a producción a partir del HPC_201309_ASO

unit ASO261;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Db;

type
  TfMstFonSol = class(TForm)
    Img02: TImage;
    Img01: TImage;
    dtgCabFsc: TwwDBGrid;
    dtgDetFsc: TwwDBGrid;
    dtgDevFsc: TwwDBGrid;
    BitSalir: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      Procedure LimpiaGrids();
  end;

var
  fMstFonSol: TfMstFonSol;

implementation

uses ASODM;

{$R *.dfm}

procedure TfMstFonSol.FormActivate(Sender: TObject);
Var
   xSQL, xAsoId: String;
Begin
   // Implementación de una ventana con información del FSC

   xAsoId := DM1.cdsAso.FieldByName('ASOID').AsString;
   xSQL := 'SELECT ASOID,NUM_DEU,FEC_APL_FSC,FORPAGODES,ULT_FEC_COB,NVL(IMP_APL_FSC,0) IMP_APL_FSC, '
          +'       NVL(IMP_COB_FSC,0) IMP_COB_FSC, NVL(IMP_SAL_FSC,0) IMP_SAL_FSC '
          +'FROM COB_FSC_DEUDA_FSC_CAB A, COB101 B '
          +'WHERE ASOID=' + QuotedStr(xAsoId) + ' AND A.FORPAGID=B.FORPAGOID(+) ';
   DM1.cdsFsc01.Close;
   DM1.cdsFsc01.DataRequest(xSQL);
   DM1.cdsFsc01.Open;

   TNumericField(DM1.cdsFsc01.fieldbyname('IMP_APL_FSC')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsFsc01.fieldbyname('IMP_COB_FSC')).DisplayFormat := '###,###.#0';
   TNumericField(DM1.cdsFsc01.fieldbyname('IMP_SAL_FSC')).DisplayFormat := '###,###.#0';
   If DM1.cdsFsc01.RecordCount > 0 Then
   Begin
      If DM1.cdsFsc01.FieldByName('IMP_SAL_FSC').AsFloat > 0 Then
      Begin
         Img02.Visible := True;
         Img01.Visible := False;
      End
      Else
      Begin
         Img01.Visible := True;
         Img02.Visible := False;
      End;
      xSQL := 'SELECT NUM_DEU,ASOID,CRE_APL_FSC,FEC_OTORG,IMP_APL_FSC,ULT_FEC_VEN,DIA_ATRASO '
             +'FROM COB_FSC_DEUDA_FSC_DET '
             +'WHERE ASOID=' + QuotedStr(xAsoId);
      DM1.cdsFsc02.Close;
      DM1.cdsFsc02.DataRequest(xSQL);
      DM1.cdsFsc02.Open;
      TNumericField(DM1.cdsFsc02.fieldbyname('IMP_APL_FSC')).DisplayFormat := '###,###.#0';

      If DM1.cdsFsc02.RecordCount > 0 Then
      Begin
         xSQL := 'SELECT NUM_DEU,ASOID,FEC_COB_DEU,SUM(NVL(IMP_COB_DEU,0)) IMP_COB_DEU, '
                +'       NROOPE,FORPAGID,FORPAGABR '
                +'FROM COB_FSC_PAGOS_AL_FSC '
                +'WHERE ASOID=' + QuotedStr(xAsoId) + ' '
                +'GROUP BY NUM_DEU,ASOID,FEC_COB_DEU,NROOPE,FORPAGID,FORPAGABR,TIP_MOV_DEU '
                +'ORDER BY FEC_COB_DEU';
         DM1.cdsFsc03.Close;
         DM1.cdsFsc03.DataRequest(xSQL);
         DM1.cdsFsc03.Open;
         TNumericField(DM1.cdsFsc03.fieldbyname('IMP_COB_DEU')).DisplayFormat := '###,###.#0';
      End;

   End
   Else
      LimpiaGrids();

End;


Procedure TfMstFonSol.LimpiaGrids();
Var
   xSQL: String;
Begin
   // Implementación de una ventana con información del FSC

   xSQL := 'SELECT ASOID,NUM_DEU,FEC_APL_FSC, FORPAGODES, ULT_FEC_COB,NVL(IMP_APL_FSC,0) IMP_APL_FSC, '
          +'       NVL(IMP_COB_FSC,0) IMP_COB_FSC, NVL(IMP_SAL_FSC,0) IMP_SAL_FSC '
          +'FROM COB_FSC_DEUDA_FSC_CAB A,COB101 B '
          +'WHERE 1=2';
   DM1.cdsFsc01.Close;
   DM1.cdsFsc01.DataRequest(xSQL);
   DM1.cdsFsc01.Open;
   xSQL := 'SELECT NUM_DEU,ASOID,CRE_APL_FSC,FEC_OTORG,IMP_APL_FSC,ULT_FEC_VEN,DIA_ATRASO '
          +'FROM COB_FSC_DEUDA_FSC_DET '
          +'WHERE 1=2';
   DM1.cdsFsc02.Close;
   DM1.cdsFsc02.DataRequest(xSQL);
   DM1.cdsFsc02.Open;
   xSQL := 'SELECT NUM_DEU,ASOID,FEC_COB_DEU,SUM(NVL(IMP_COB_DEU,0)) IMP_COB_DEU, '
          +'       NROOPE,FORPAGID,FORPAGABR '
          +'FROM COB_FSC_PAGOS_AL_FSC '
          +'WHERE 1=2 '
          +'GROUP BY NUM_DEU,ASOID,FEC_COB_DEU,NROOPE,FORPAGID,FORPAGABR,TIP_MOV_DEU '
          +'ORDER BY FEC_COB_DEU';
   DM1.cdsFsc03.Close;
   DM1.cdsFsc03.DataRequest(xSQL);
   DM1.cdsFsc03.Open;

End;


procedure TfMstFonSol.BitSalirClick(Sender: TObject);
begin
   Close;
end;

end.
