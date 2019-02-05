unit ASO907;
// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO907.pas
// Formulario              :  FFiltrarColegios
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Búsqueda de Colegios

// Actualizaciones:
// HPC_201704_ASO          : Se implementa el tipo de documento
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, Wwdbdlg, ExtCtrls, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, Mask, DB;

type
  TFFiltrarColegios = class(TForm)
    dbgPrevio: TwwDBGrid;
    btnCerrar: TBitBtn;
    rgtipbus: TRadioGroup;
    pnlxdepartamento: TPanel;
    gbUbiGeo: TGroupBox;
    dblcdDepIde: TwwDBLookupComboDlg;
    dblcdProIde: TwwDBLookupComboDlg;
    dblcdDisIde: TwwDBLookupComboDlg;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    EdtDesDep: TEdit;
    Panel3: TPanel;
    EdtDesPro: TEdit;
    Panel4: TPanel;
    EdtDesDis: TEdit;
    pnlxUniGes: TPanel;
    gbUbiUniGes: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    dblcdUniPro: TwwDBLookupComboDlg;
    dblcdUniPag: TwwDBLookupComboDlg;
    dblcdUniGes: TwwDBLookupComboDlg;
    Panel7: TPanel;
    EdtUniProDes: TEdit;
    Panel8: TPanel;
    EdtUniPagDes: TEdit;
    Panel9: TPanel;
    EdtUnigesDes: TEdit;
    Panel5: TPanel;
    meDesCol: TMaskEdit;
    btnFiltrar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure dblcdDepIdeExit(Sender: TObject);
    procedure dblcdProIdeExit(Sender: TObject);
    procedure dblcdDisIdeExit(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure rgtipbusClick(Sender: TObject);
    procedure dblcdUniProExit(Sender: TObject);
    procedure dblcdUniPagExit(Sender: TObject);
    procedure dblcdUniGesExit(Sender: TObject);
    procedure dbgPrevioDblClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiltrarColegios: TFFiltrarColegios;

implementation

uses ASODM;

{$R *.dfm}

procedure TFFiltrarColegios.FormActivate(Sender: TObject);
Var
   xSql:String;
begin
   xSql := 'SELECT DPTOID, DPTODES FROM APO158';
   DM1.cdsDpto.Close;
   DM1.cdsDpto.DataRequest(xSql);
   DM1.cdsDpto.Open;
   dblcdDepIde.Selected.Clear;
   dblcdDepIde.Selected.Add('DPTOID'#9'3'#9'Código'#9#9);
   dblcdDepIde.Selected.Add('DPTODES'#9'25'#9'Departamento'#9#9);

   xSql := 'SELECT UPROID, UPRONOM FROM APO102 ORDER BY UPROID';
   DM1.cdsUPro.Close;
   DM1.cdsUPro.DataRequest(xSql);
   DM1.cdsUPro.Open;
   dblcdUniPro.Selected.Clear;
   dblcdUniPro.Selected.Add('UPROID'#9'3'#9'Código'#9#9);
   dblcdUniPro.Selected.Add('UPRONOM'#9'25'#9'Descripción'#9#9);

   pnlxdepartamento.Visible := True;
   pnlxUniGes.Visible := False;
   rgtipbus.ItemIndex := 0;
   meDesCol.SetFocus;
end;

procedure TFFiltrarColegios.dblcdDepIdeExit(Sender: TObject);
Var
   xSql:String;
begin
   If DM1.cdsDpto.Locate('DPTOID',dblcdDepIde.Text,[]) Then
   Begin
      EdtDesDep.Text := DM1.cdsDpto.FieldByName('DPTODES').asstring;
      xSql := 'SELECT DPTOID, CIUDID, CIUDDES FROM APO123 WHERE DPTOID = '+QuotedStr(dblcdDepIde.Text);
      DM1.cdsProvin.Close;
      DM1.cdsProvin.DataRequest(xSql);
      DM1.cdsProvin.Open;
      dblcdProIde.Selected.Clear;
      dblcdProIde.Selected.Add('CIUDID'#9'3'#9'Código'#9#9);
      dblcdProIde.Selected.Add('CIUDDES'#9'25'#9'Provincia'#9#9);
   End
   Else
   Begin
      Beep;
      dblcdProIde.SetFocus;
   End;
end;

procedure TFFiltrarColegios.dblcdProIdeExit(Sender: TObject);
Var
   xSql:String;
begin
   // HPP_200907_ASO - Si el departamento esta vacio no selecciona nada
   If Trim(dblcdDepIde.Text) = '' Then Exit;
   
   If DM1.cdsProvin.Locate('DPTOID;CIUDID',VarArrayof([dblcdDepIde.Text,dblcdProIde.Text]),[]) Then
   Begin
      EdtDesPro.Text := DM1.cdsProvin.FieldByName('CIUDDES').AsString;
      xSql := 'SELECT DPTOID, CIUDID, ZIPID, ZIPDES FROM APO122 WHERE DPTOID = '+QuotedStr(dblcdDepIde.Text)+' AND CIUDID = '+QuotedStr(dblcdProIde.Text);
      DM1.cdsDist.Close;
      DM1.cdsDist.DataRequest(xSql);
      DM1.cdsDist.Open;
      dblcdDisIde.Selected.Clear;
      dblcdDisIde.Selected.Add('ZIPID'#9'6'#9'Código'#9#9);
      dblcdDisIde.Selected.Add('ZIPDES'#9'25'#9'Provincia'#9#9);
   End
   Else
   Begin
   End;
end;

procedure TFFiltrarColegios.dblcdDisIdeExit(Sender: TObject);
begin
   If Trim(dblcdProIde.Text) = '' Then Exit;
   
   If DM1.cdsDist.Locate('DPTOID;CIUDID;ZIPID',VarArrayof([dblcdDepIde.Text, dblcdProIde.Text, dblcdDisIde.Text]),[]) Then
   Begin
      EdtDesDis.Text := DM1.cdsDist.FieldByName('ZIPDES').AsString;
   End
   Else
   Begin
   End;
end;

procedure TFFiltrarColegios.btnFiltrarClick(Sender: TObject);
Var
   xSql:String;
begin
   If rgtipbus.ItemIndex = 0 Then
   Begin
      xSql := 'SELECT NIVMOD, CODMOD, NOMCENEDU, DIREC, TELEFONO, CENPO, B.DPTODES, C.CIUDDES, D.ZIPDES, '
             +'       A.UBIGEO_DIR, A.CENEDUID '
             +'FROM ASO_CEN_EDU A, APO158 B, APO123 C, APO122 D '
             +'WHERE SUBSTR(UBIGEO_DIR,1,2) = B.DPTOID '
             +'  AND SUBSTR(UBIGEO_DIR,1,4) = C.CIUDID AND  UBIGEO_DIR = D.ZIPID';
      If Trim(meDesCol.Text)    <> '' Then xSql := xSql + ' AND NOMCENEDU LIKE '+QuotedStr('%'+Trim(meDesCol.Text)+'%');
      If Trim(dblcdDepIde.Text) <> '' Then xSql := xSql + ' AND SUBSTR(UBIGEO_DIR,1,2) = '+QuotedStr(dblcdDepIde.Text);
      If Trim(dblcdProIde.Text) <> '' Then xSql := xSql + ' AND SUBSTR(UBIGEO_DIR,1,4) = '+QuotedStr(dblcdProIde.Text);
      If Trim(dblcdDisIde.Text) <> '' Then xSql := xSql + ' AND UBIGEO_DIR = '+QuotedStr(dblcdDisIde.Text);
      DM1.cdsCEdu.Close;
      DM1.cdsCEdu.DataRequest(xSql);
      DM1.cdsCEdu.Open;
   End
   Else
   Begin
      xSql := 'SELECT NIVMOD, CODMOD, NOMCENEDU, DIREC, TELEFONO, CENPO, B.DPTODES, C.CIUDDES, D.ZIPDES, '
             +'       A.UBIGEO_DIR, A.CENEDUID '
             +'FROM ASO_CEN_EDU A, APO158 B, APO123 C, APO122 D '
             +'WHERE SUBSTR(UBIGEO_DIR,1,2) = B.DPTOID '
             +' AND SUBSTR(UBIGEO_DIR,1,4) = C.CIUDID AND  UBIGEO_DIR = D.ZIPID';
      If Trim(meDesCol.Text)    <> '' Then xSql := xSql + ' AND NOMCENEDU LIKE '+QuotedStr('%'+Trim(meDesCol.Text)+'%');
      If Trim(dblcdUniPro.Text) <> '' Then xSql := xSql + ' AND UPROID = '+QuotedStr(dblcdUniPro.Text);
      If Trim(dblcdUniPag.Text) <> '' Then xSql := xSql + ' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text);
      If Trim(dblcdUniGes.Text) <> '' Then xSql := xSql + ' AND USEID = '+QuotedStr(dblcdUniGes.Text);
      DM1.cdsCEdu.Close;
      DM1.cdsCEdu.DataRequest(xSql);
      DM1.cdsCEdu.Open;
   End;
   dbgprevio.Selected.Clear;
   dbgprevio.Selected.Add('NIVMOD'#9'17'#9'Modalidad de~Nivel'#9#9);
   dbgprevio.Selected.Add('CODMOD'#9'8'#9'Código~Modular'#9#9);
   dbgprevio.Selected.Add('NOMCENEDU'#9'32'#9'Descripción~Centro Educativo'#9#9);
   dbgprevio.Selected.Add('DIREC'#9'60'#9'Dirección'#9#9);
   dbgprevio.Selected.Add('CENPO'#9'25'#9'Centro~poblado'#9#9);
   dbgprevio.Selected.Add('DPTODES'#9'10'#9'Departamento'#9#9);
   dbgprevio.Selected.Add('CIUDDES'#9'15'#9'Provincia'#9#9);
   dbgprevio.Selected.Add('ZIPDES'#9'20'#9'Distrito'#9#9);
   dbgprevio.ApplySelected;
end;

procedure TFFiltrarColegios.rgtipbusClick(Sender: TObject);
begin
   If rgtipbus.ItemIndex = 0 Then
   Begin
      pnlxdepartamento.Left    := 175;
      pnlxdepartamento.Top     := 35;
      pnlxdepartamento.Visible := True;
      pnlxUniGes.Visible       := False;
   End
   Else
   Begin
      pnlxUniGes.Left    := 175;
      pnlxUniGes.Top     := 35;
      pnlxUniGes.Visible := True;
      pnlxdepartamento.Visible := False;
   End;
end;

procedure TFFiltrarColegios.dblcdUniProExit(Sender: TObject);
Var
   xSql:String;
begin
   If DM1.cdsUPro.Locate('UPROID',dblcdUniPro.Text,[]) Then
   Begin
      EdtUniProDes.Text := DM1.cdsUPro.FieldByName('UPRONOM').asstring;
      xSql := 'SELECT UPROID, UPAGOID, UPAGONOM FROM APO103 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text);
      DM1.cdsUPago.Close;
      DM1.cdsUPago.DataRequest(xSql);
      DM1.cdsUPago.Open;
      dblcdUniPag.Selected.Clear;
      dblcdUniPag.Selected.Add('UPAGOID'#9'3'#9'Código'#9#9);
      dblcdUniPag.Selected.Add('UPAGONOM'#9'25'#9'Descripción'#9#9);
   End
   Else
   Begin
      Beep;
      dblcdUniPro.SetFocus;
   End;
end;

procedure TFFiltrarColegios.dblcdUniPagExit(Sender: TObject);
Var
   xSql:String;
begin
   If DM1.cdsUPago.Locate('UPROID;UPAGOID',VarArrayof([dblcdUniPro.Text,dblcdUniPag.Text]),[]) Then
   Begin
      EdtUniPagDes.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
      xSql := 'SELECT UPROID, UPAGOID, USEID, USENOM FROM APO101 WHERE UPROID = '+QuotedStr(dblcdUniPro.Text)+' AND UPAGOID = '+QuotedStr(dblcdUniPag.Text);
//Inicio HPC_201704_ASO
//Implementación del tipo de documento
      DM1.cdsUSESy.Close;
      DM1.cdsUSESy.DataRequest(xSql);
      DM1.cdsUSESy.Open;
//Final HPC_201704_ASO
      dblcdUniGes.Selected.Clear;
      dblcdUniGes.Selected.Add('USEID'#9'3'#9'Código'#9#9);
      dblcdUniGes.Selected.Add('USENOM'#9'25'#9'Unidad de Gestión'#9#9);
   End
   Else
   Begin
   End;
end;

procedure TFFiltrarColegios.dblcdUniGesExit(Sender: TObject);
begin
//Inicio HPC_201704_ASO
//Implementación del tipo de documento
   IF DM1.cdsUSESy.Locate('UPROID;UPAGOID;USEID',VarArrayOf([dblcdUniPro.Text, dblcdUniPag.Text, dblcdUniGes.Text]),[]) Then
   Begin
      EdtUnigesDes.Text := DM1.cdsUSESy.FieldByName('USENOM').AsString;
//Final HPC_201704_ASO
   End
   Else
   Begin
   End;
end;

Procedure TFFiltrarColegios.dbgPrevioDblClick(Sender: TObject);
Begin
  if not(DM1.cdsCEdu.State=dsInactive) then
  begin
     If Trim(DM1.cdsCEdu.FieldByName('NOMCENEDU').AsString) <> '' Then
     Begin
       DM1.cdsAso.Edit;
       DM1.cdsAso.FieldByName('ASODESLAB').AsString   := Copy(DM1.cdsCEdu.FieldByName('NOMCENEDU').AsString,1,60);
       DM1.cdsAso.FieldByName('ASODIRLAB').AsString   := Copy(DM1.cdsCEdu.FieldByName('DIREC').AsString,1,60);
       DM1.cdsAso.FieldByName('ASOTELLAB').AsString   := Copy(DM1.cdsCEdu.FieldByName('TELEFONO').AsString,1,12);
       DM1.cdsAso.FieldByName('ASODPTLABID').AsString := Copy(DM1.cdsCEdu.FieldByName('UBIGEO_DIR').AsString,1,2);
       DM1.cdsAso.FieldByName('ASOPRVLABID').AsString := Copy(DM1.cdsCEdu.FieldByName('UBIGEO_DIR').AsString,1,4);
       DM1.cdsAso.FieldByName('ASODSTLABID').AsString := DM1.cdsCEdu.FieldByName('UBIGEO_DIR').AsString;
       DM1.cdsAso.FieldByName('CENEDUID').AsString    := DM1.cdsCEdu.FieldByName('CENEDUID').AsString;
       FFiltrarColegios.Close;
     End;
  end;
End;

procedure TFFiltrarColegios.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key=#13 then begin
      key:=#0;
      perform(CM_DialogKey,VK_TAB,0);
   end;
end;

procedure TFFiltrarColegios.btnCerrarClick(Sender: TObject);
begin
   Close;
end;

procedure TFFiltrarColegios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

end.
