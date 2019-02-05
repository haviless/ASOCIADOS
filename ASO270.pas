// Inicio Uso Estándares    : 01/08/2011
// Unidad		            : ASO270.pas
// Formulario		        : FConfirmarEstadoFallecido
// Fecha de Creación	    : 20/06/2012
// Autor		            : Juver De la Cruz
// Objetivo		            : opcion de aprobacion de fallecidos para el fondo de desgravamen
// Actualizaciones:
// DPP_201208_ASO           : 20/06/2012 JDCRUZ Creación del formulario TFConfirmarEstadoFallecido.
// HPC_201405_ASO           : Confirmación de fallecidos 
// SPP_201405_ASO           : Se realiza el pase a producción a partir del HPC_201405_ASO.

Unit ASO270;

Interface

//Inicio: SPP_201405_ASO
Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Mask, ExtCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, wwExport,shellapi;
//Fin: SPP_201405_ASO
Type
   TFConfirmarEstadoFallecido = Class(TForm)
      pnl1 : TPanel;
      pInferior : TPanel;
      btnCerrar : TBitBtn;
      gbx1 : TGroupBox;
      rgbusca : TRadioGroup;
      edBuscar : TMaskEdit;
      btnBuscar : TBitBtn;
      dbgPrincipal : TwwDBGrid;
      lblRegistros : TLabel;
      btnAprobar : TButton;
      //Inicio: SPP_201405_ASO
      dbgExcel: TwwDBGrid;
      btnAExcel: TBitBtn;
      //Fin: SPP_201405_ASO      
      Procedure FormClose(Sender : TObject; Var Action : TCloseAction);
      Procedure btnBuscarClick(Sender : TObject);
      Procedure FormActivate(Sender : TObject);
      Procedure dbgPrincipalDblClick(Sender : TObject);
      Procedure edBuscarKeyPress(Sender : TObject; Var Key : Char);
      Procedure btnAprobarClick(Sender : TObject);
      //Inicio: SPP_201405_ASO
      procedure btnAExcelClick(Sender: TObject); 
      //Fin: SPP_201405_ASO
   Private
      xsSqlBusqueda : String; // para que se pueda buscar al retornar de la pantalla detalle
   Public
    { Public declarations }
   End;

Var
   FConfirmarEstadoFallecido : TFConfirmarEstadoFallecido;

Implementation
Uses ASODM, ASO271;
{$R *.dfm}

(******************************************************************************)

Procedure TFConfirmarEstadoFallecido.FormActivate(Sender : TObject);
Begin
   btnBuscarClick(btnBuscar);
//Inicio: SPP_201405_ASO
   dbgExcel.Visible:=false;   
//Final: SPP_201405_ASO
End;

(******************************************************************************)

Procedure TFConfirmarEstadoFallecido.btnBuscarClick(Sender : TObject);
Var
   xsWhere : String;
Begin
   Screen.Cursor := crHourGlass;
   Case rgbusca.ItemIndex Of
      0 :
         Begin
            xsWhere := ' WHERE DET.ASOAPENOMDNI LIKE ' + QuotedStr(trim(edBuscar.Text) + '%');
         End;
      1 :
         Begin
            xsWhere := ' WHERE APO.ASOCODMOD = ' + QuotedStr(trim(edBuscar.Text));
         End;
      2 :
         Begin
            xsWhere := ' WHERE DET.ASODNI = ' + QuotedStr(trim(edBuscar.Text));
         End;
   End;

   xsSqlBusqueda :=
      'SELECT DET.IDEGESFAL, DET.ASOID, DET.ASODNI, DET.ASOAPENOMDNI, DET.FECFALGES, '
      + '     DET.ESTAPRDES, DET.USUAPRDES, DET.FECAPRDES, '
      + '     DET.ESTAPRFAL, DET.USUAPRFAL, DET.FECAPRFAL, '
      + '     DET.ESTADO, CAB.IDEGESFAL, CAB.AREGES, CAB.NUMMEM, '
      + '     CAB.FECMEM, SUBSTR(CAB.OBSMEM,1,100) OBSMEM, CAB.USUREG, '
      + '     TRUNC(CAB.FECREG) FECREG, CAB.PVSTIPBEN, CAB.TIPCANFON, APO.ASOCODMOD '
      + 'FROM ASO_FAC_GES_DET DET, ASO_FAC_GES_CAB CAB, APO201 APO '
      + xsWhere
      + '  AND DET.ESTADO = ''02''' //02 activo / 13 anulado
      + '  AND DET.ESTAPRFAL = ''POR CONFIRMAR''' // estaod de aprobacion de fallecimiento
      + '  AND DET.ASOID = APO.ASOID '
      + '  AND DET.IDEGESFAL = CAB.IDEGESFAL '
      + '  AND CAB.PVSTIPBEN = ''02''' // fallecidos
      + 'ORDER BY DET.ASOAPENOMDNI '; // el campo TIPCANFON es indistinto en este caso

   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSqlBusqueda);
   DM1.cdsQry1.Open;
   dbgPrincipal.DataSource := DM1.dsQry1;

   dbgPrincipal.Selected.Clear;
   dbgPrincipal.Selected.Add('ASODNI'#9'10'#9'D.N.I.'#9#9);
   dbgPrincipal.Selected.Add('ASOAPENOMDNI'#9'30'#9'Asociado'#9#9);
   dbgPrincipal.Selected.Add('FECFALGES'#9'12'#9'Fecha~Fallecimiento'#9#9);
   dbgPrincipal.Selected.Add('USUREG'#9'12'#9'Solicitado por'#9#9);
   dbgPrincipal.Selected.Add('FECREG'#9'12'#9'Fecha~Solicitud'#9#9);
   dbgPrincipal.Selected.Add('OBSMEM'#9'40'#9'Observacion'#9#9);
   dbgPrincipal.ApplySelected;

   lblRegistros.Caption := IntToStr(DM1.cdsQry1.RecordCount) + ' Registros';
   Screen.Cursor := crDefault;
End;

(******************************************************************************)

Procedure TFConfirmarEstadoFallecido.dbgPrincipalDblClick(Sender : TObject);
Begin
   btnAprobarClick(btnAprobar);
End;

(******************************************************************************)

Procedure TFConfirmarEstadoFallecido.FormClose(Sender : TObject;
   Var Action : TCloseAction);
Begin
   Action := caFree;
End;
(******************************************************************************)

Procedure TFConfirmarEstadoFallecido.edBuscarKeyPress(Sender : TObject;
   Var Key : Char);
Begin
   If Key = #13 Then btnBuscarClick(btnBuscar);
End;
(******************************************************************************)

Procedure TFConfirmarEstadoFallecido.btnAprobarClick(Sender : TObject);
Var
   xxFrm : TFConfirmarEstadoFallecidoDetalle;
Begin
   If DM1.cdsQry1.RecordCount > 0 Then
   Begin
      xxFrm := TFConfirmarEstadoFallecidoDetalle.create(self);
      Try
         If (xxFrm.showmodal = mrOK) Then
         Begin
            DM1.cdsQry1.Close;
            DM1.cdsQry1.DataRequest(xsSqlBusqueda);
            DM1.cdsQry1.Open;
         End;
      Finally
         xxFrm.free;
      End;
   End;
End;
(******************************************************************************)
//Inicio: SPP_201405_ASO
procedure TFConfirmarEstadoFallecido.btnAExcelClick(Sender: TObject);
Var xsSqlBusqueda :String;
begin
   Screen.Cursor := crHourGlass;     
    xsSqlBusqueda := 'SELECT A.ASODNI,A.ASOAPENOMDNI,E.FECFALGES,E.FECAPRDES,E.ESTAPRFAL,E.USUAPRFAL,E.FECAPRFAL,E.SUSAPRDES,'
                        +' E.ASOTIPID,E.ESTAPRDES,E.USUAPRDES,E.SUSAPRFAL,A.ASOCODMOD,A.ASONCTA'
                        +'  ,CASE WHEN E.ESTADO=''02'' THEN ''CONFIRMADO''  ELSE ''SIN CONFIRMAR'' END  ESTADO'
                        +' FROM APO201 A'
                        +' LEFT JOIN ASO_FAC_GES_DET E ON E.ASOID=A.ASOID'
                        +' WHERE  A.FALLECIDO=''S''';
   DM1.cdsTemp.Close;
   DM1.cdsTemp.DataRequest(xsSqlBusqueda);
   DM1.cdsTemp.Open;
   dbgExcel.DataSource := DM1.dsTemp;

   dbgExcel.Selected.Clear;
   dbgExcel.Selected.Add('ASODNI'#9'10'#9'D.N.I.'#9#9);
   dbgExcel.Selected.Add('ASOAPENOMDNI'#9'10'#9'Nombre'#9#9);
   dbgExcel.Selected.Add('FECFALGES'#9'10'#9'Fec. Fallecimiento'#9#9);
   dbgExcel.Selected.Add('FECAPRDES'#9'10'#9'Fec. Aprobación'#9#9);
   dbgExcel.Selected.Add('ESTAPRFAL'#9'10'#9'Estado de Aprob. Fallec.'#9#9);
   dbgExcel.Selected.Add('USUAPRFAL'#9'10'#9'Usu. Aprueba'#9#9);
   dbgExcel.Selected.Add('FECAPRFAL'#9'10'#9'Fec. Aprobación Cobranza'#9#9);
   dbgExcel.Selected.Add('SUSAPRDES'#9'10'#9'Sustento'#9#9);
   dbgExcel.Selected.Add('ASOTIPID'#9'10'#9'Tipo'#9#9);
   dbgExcel.Selected.Add('ESTAPRDES'#9'10'#9'Estado de Aprob. Desgr.'#9#9);
   dbgExcel.Selected.Add('USUAPRDES'#9'10'#9'Usu. Aprueba Desgr.'#9#9);
   dbgExcel.Selected.Add('SUSAPRFAL'#9'10'#9'Sustento'#9#9);
   dbgExcel.Selected.Add('ASOCODMOD'#9'10'#9'Cod. Modular'#9#9);
   dbgExcel.Selected.Add('ASONCTA'#9'10'#9'Nro. Cta.'#9#9); 
   dbgExcel.Selected.Add('ESTADO'#9'10'#9'Estado'#9#9);
   dbgExcel.ApplySelected;

   dbgExcel.DataSource:=DM1.dsTemp;
   With dbgExcel, dbgExcel.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Consolidado_Fallecidos.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dbgExcel.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
   Screen.Cursor := crDefault;
end;
//Fin: SPP_201405_ASO  

End.
