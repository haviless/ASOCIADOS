// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO265.pas
// Formulario              :  FvalregCADAPS
// Fecha de Creación       :  24/08/2016
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Chequeo de los registros CADAPS
// HPC_201607_ASO : Creación
unit ASO265;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, Grids, Wwdbigrd, Wwdbgrid,
  DBGrids, DB, DBClient;

type
  Tfenvarchico = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dbdinicio: TwwDBDateTimePicker;
    dbdfinal: TwwDBDateTimePicker;
    Bitbuscar: TBitBtn;
    Bitsalir: TBitBtn;
    btnexporta: TBitBtn;
    dbggenenvio: TwwDBGrid;
    btngenerar: TBitBtn;
    procedure BitbuscarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnexportaClick(Sender: TObject);
    procedure BitsalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btngenerarClick(Sender: TObject);
    procedure dbggenenvioDblClick(Sender: TObject);
    procedure dbdinicioExit(Sender: TObject);
    procedure dbdfinalExit(Sender: TObject);
    procedure dbdinicioChange(Sender: TObject);
  private
    procedure visualizagrid;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fenvarchico: Tfenvarchico;

implementation

uses ASODM, ASO266;

{$R *.dfm}

procedure Tfenvarchico.BitbuscarClick(Sender: TObject);
Var xSql:String;
begin
   xSql := 'SELECT A.EVACADAPS, A.ASOID, A.ASODNI, A.ASOAPENOM, B.DPTODES, C.USENOM, A.AUTDESAPO, A.FECRECCADAPS, A.FECVALCADAPS, A.ASOTIPID, A.FECAUTDESAPO,'
   +' A.TIPSER, D.DES_SIT, A.ASOAPTSER, A.DIATRAAUTDESAPO, A.EXIARCCADAPS, A.NECCADAPS2DAVEZ, A.CHEREG, A.USUCHEREG, A.FECHORCHEREG, A.COMCHEREG, A.REEVACADAPS'
   +' FROM ASO_VAL_CADAPS A, APO158 B, APO101 C, (SELECT COD_SIT, DES_SIT FROM ASO_PAD_SIT_ASO WHERE COD_MAE = ''01''  AND COD_SIT IS NOT NULL) D'
   +' WHERE A.CODGENENV IS NULL AND A.REGVIG = ''S'' AND TO_DATE(A.FECVALCADAPS) >= '+QuotedStr(dbdinicio.Text)+' AND TO_DATE(A.FECVALCADAPS) <= '+QuotedStr(dbdfinal.Text)
   +' AND A.DPTOID_UGEL = B.DPTOID AND A.UPROID = C.UPROID AND A.UPAGOID = C.UPAGOID AND A.USEID = C.USEID AND A.TIPSER = D.COD_SIT(+) ORDER BY A.FECVALCADAPS';
   DM1.cdsReporte.Close;
   DM1.cdsReporte.DataRequest(xSql);
   DM1.cdsReporte.Open;
   If DM1.cdsReporte.RecordCount = 0 Then
   Begin
      DM1.cdsReporte.Close;
      MessageDlg('No existe información para procesar.', mtError, [mbOk], 0);
      Exit;
   End;
   visualizagrid;
   btnexporta.Enabled := True;
   btngenerar.Enabled := True;
end;

procedure Tfenvarchico.FormKeyPress(Sender: TObject; var Key: Char);
begin
If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure Tfenvarchico.btnexportaClick(Sender: TObject);
begin
   If DM1.cdsReporte.RecordCount > 0 Then
   Begin
      Try
         DM1.ExportaGridExcel(dbggenenvio, 'AUT_DESC');
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


procedure Tfenvarchico.BitsalirClick(Sender: TObject);
begin
   Close;
end;

procedure Tfenvarchico.FormActivate(Sender: TObject);
begin
   dbdinicio.Text := '';
   dbdfinal.Text  := '';
   DM1.cdsReporte.Close;
end;

procedure Tfenvarchico.btngenerarClick(Sender: TObject);
Var xcodgenenv, xsql, xvalida:String;
xcantidad :Integer;
begin
   xvalida := 'S';
   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.Eof Do
   Begin
      If (DM1.cdsReporte.FieldByName('EVACADAPS').AsString = 'NO VALIDA') And (Trim(DM1.cdsReporte.FieldByName('CHEREG').AsString) = '') Then xvalida := 'N';
      DM1.cdsReporte.Next;
   End;
   If xvalida = 'N' Then
   Begin
      MessageDlg('Debe registrar chequeo a todos los registros NO VALIDO.', mtError, [mbOk], 0);
      Exit;
   End;
   xSql := 'SELECT LPAD(NVL(MAX(CODGENENV),0)+1,8,''0'') CODGENENV FROM ASO_VAL_CADAPS_CAB WHERE 1 = 1';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsql);
   DM1.cdsQry.Open;
   xcodgenenv := DM1.cdsQry.FieldByName('CODGENENV').AsString;
   xcantidad := 0;
   DM1.cdsReporte.First;
   While Not DM1.cdsReporte.Eof Do
   Begin
      If ((DM1.cdsReporte.FieldByName('EVACADAPS').AsString = 'VALIDA') And (DM1.cdsReporte.FieldByName('REEVACADAPS').AsString <> 'NO VALIDA')) Or
         ((DM1.cdsReporte.FieldByName('EVACADAPS').AsString = 'NO VALIDA') And (DM1.cdsReporte.FieldByName('REEVACADAPS').AsString = 'VALIDA')) Then
      Begin
         xcantidad := xcantidad + 1;
         xSql := 'UPDATE ASO_VAL_CADAPS SET CODGENENV = '+QuotedStr(xcodgenenv)+' WHERE ASOID = '+QuotedStr(DM1.cdsReporte.FieldByName('ASOID').AsString)+' AND REGVIG = ''S''';
         DM1.DCOM1.AppServer.EjecutaSql(xSql);
      End;
      DM1.cdsReporte.Next;
   End;
   If xcantidad > 0 Then
   Begin
      xsql := 'INSERT INTO ASO_VAL_CADAPS_CAB (CODGENENV, FECINIGENENV, FECFINGENENV, CANREGENV, USUGENENV, FECGENENV)'
      +' VALUES ('+QuotedStr(xcodgenenv)+','+QuotedStr(dbdinicio.Text)+', '+QuotedStr(dbdfinal.Text)+', '+IntToStr(xcantidad)+','+QuotedStr(DM1.wUsuario)+', SYSDATE)';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      MessageDlg('El lote fue generado en forma satisfactoria.', mtInformation, [mbOk], 0);
   End
   Else
      MessageDlg('No existen registros para la creación de un nuevo lote.', mtError, [mbOK], 0);
end;

procedure Tfenvarchico.dbggenenvioDblClick(Sender: TObject);
begin
   Try
      Fverificaasociado:= TFverificaasociado.create(self);
      Fverificaasociado.Showmodal;
   Finally
      Fverificaasociado.free;
   End;
end;

procedure Tfenvarchico.dbdinicioExit(Sender: TObject);
begin
   If dbdinicio.Date > DM1.FechaSys Then
   Begin
     MessageDlg('Fecha inicial no debe ser mayor a la fecha de hoy.', mtError, [mbOk], 0);
     dbdinicio.SetFocus;
     Exit;
   End;
end;

procedure Tfenvarchico.dbdfinalExit(Sender: TObject);
begin
   If dbdfinal.Date > DM1.FechaSys Then
   Begin
     MessageDlg('Fecha final no puede ser mayor que a la fecha de hoy.', mtError, [mbOk], 0);
     dbdfinal.SetFocus;
     Exit;
   End;
   If dbdfinal.Date < dbdinicio.Date Then
   Begin
     MessageDlg('Fecha final no puede ser menor a la fecha incial.', mtError, [mbOk], 0);
     dbdfinal.SetFocus;
     Exit;
   End;
end;

procedure Tfenvarchico.visualizagrid;
begin
   dbggenenvio.Selected.Clear;
   dbggenenvio.Selected.Add('EVACADAPS'#9'12'#9'Evaluación~CADAPS'#9#9);
   dbggenenvio.Selected.Add('REEVACADAPS'#9'12'#9'Re-evaluación~CADAPS'#9#9);
   dbggenenvio.Selected.Add('ASODNI'#9'10'#9'DNI~asociado'#9#9);
   dbggenenvio.Selected.Add('ASOTIPID'#9'10'#9'Tipo~asociado'#9#9);
   dbggenenvio.Selected.Add('ASOAPENOM'#9'42'#9'Apellidos~nombres'#9#9);
   dbggenenvio.Selected.Add('DPTODES'#9'13'#9'Descripción~departamento'#9#9);
   dbggenenvio.Selected.Add('USENOM'#9'27'#9'Descripción~UGEL'#9#9);
   dbggenenvio.Selected.Add('AUTDESAPO'#9'11'#9'Aut.desc.~aportes'#9#9);
   dbggenenvio.Selected.Add('FECRECCADAPS'#9'18'#9'Fecha~recepción CADAPS'#9#9);
   dbggenenvio.Selected.Add('FECVALCADAPS'#9'18'#9'Fecha~validación CADAPS'#9#9);
   dbggenenvio.Selected.Add('FECAUTDESAPO'#9'18'#9'Fecha~aut.desc.aportes'#9#9);
   dbggenenvio.Selected.Add('DES_SIT'#9'20'#9'Tipo~servidor'#9#9);
   dbggenenvio.Selected.Add('ASOAPTSER'#9'1'#9'Aporte~regular'#9#9);
   dbggenenvio.Selected.Add('DIATRAAUTDESAPO'#9'1'#9'Aporte~regular'#9#9);
   dbggenenvio.Selected.Add('EXIARCCADAPS'#9'1'#9'Existe~archivo CADAPS'#9#9);
   dbggenenvio.Selected.Add('NECCADAPS2DAVEZ'#9'1'#9'Necesita CADAPS~segunda vez'#9#9);
   dbggenenvio.Selected.Add('CHEREG'#9'1'#9'Registro~chequeado'#9#9);
   dbggenenvio.Selected.Add('USUCHEREG'#9'15'#9'Usuario que~registra chequeo'#9#9);
   dbggenenvio.Selected.Add('FECHORCHEREG'#9'18'#9'Fecha y hora que~registra chequeo'#9#9);
   dbggenenvio.Selected.Add('COMCHEREG'#9'60'#9'Comentario del~registro chequeado'#9#9);
   dbggenenvio.ApplySelected;
end;

procedure Tfenvarchico.dbdinicioChange(Sender: TObject);
begin
   btnexporta.Enabled := False;
   btngenerar.Enabled := False;
end;

end.
