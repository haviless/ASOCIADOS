// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO262.pas
// Formulario              :  FbusasorecCADAPS
// Fecha de Creación       :  19/08/2016
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Registro de la fecha de recepción del CADAPS
// HPC_201607_ASO : Creación
unit ASO262;
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, DB,
  DBClient, Mask, wwdbedit, wwdbdatetimepicker;
type
  TFbusasorecCADAPS = class(TForm)
    GroupBox1: TGroupBox;
    rgbuscar: TRadioGroup;
    edtbuscar: TEdit;
    Bitbuscar: TBitBtn;
    dbgAsociado: TwwDBGrid;
    gbasociados: TGroupBox;
    gbdatasociados: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Sexo: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Panel1: TPanel;
    ImagAso: TImage;
    ImaFirma: TImage;
    pnlRENIEC2: TPanel;
    dbdtFecNac: TwwDBDateTimePicker;
    Panel2: TPanel;
    wwDBEdit1: TwwDBEdit;
    Panel3: TPanel;
    wwDBEdit2: TwwDBEdit;
    Panel4: TPanel;
    wwDBEdit3: TwwDBEdit;
    Panel5: TPanel;
    wwDBEdit5: TwwDBEdit;
    Panel6: TPanel;
    wwDBEdit4: TwwDBEdit;
    Panel7: TPanel;
    meupronom: TMaskEdit;
    Panel8: TPanel;
    wwDBEdit6: TwwDBEdit;
    Panel9: TPanel;
    meupagonom: TMaskEdit;
    Panel10: TPanel;
    meusenom: TMaskEdit;
    Panel11: TPanel;
    mesexo: TMaskEdit;
    Panel12: TPanel;
    wwDBEdit7: TwwDBEdit;
    Panel13: TPanel;
    wwDBEdit8: TwwDBEdit;
    Panel14: TPanel;
    wwDBEdit9: TwwDBEdit;
    Panel15: TPanel;
    wwDBEdit10: TwwDBEdit;
    Panel16: TPanel;
    meautdesapo: TMaskEdit;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label21: TLabel;
    Panel17: TPanel;
    lblfecrecCADAPS: TLabel;
    Panel19: TPanel;
    lblusurecCADAPS: TLabel;
    btnrecepCADAPS: TBitBtn;
    pnlmenu: TPanel;
    btnEnvArc: TBitBtn;
    BitBtn2: TBitBtn;
    Bitsalir: TBitBtn;
    btnreportes: TBitBtn;
    procedure BitbuscarClick(Sender: TObject);
    procedure rgbuscarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitsalirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnrecepCADAPSClick(Sender: TObject);
    procedure btnEnvArcClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgAsociadoDblClick(Sender: TObject);
    procedure edtbuscarExit(Sender: TObject);
    procedure btnreportesClick(Sender: TObject);
  private
    { Private declarations }
     procedure actdatrecCADAPS;
     procedure mueasociados;
  public
    { Public declarations }
  end;

var
  FbusasorecCADAPS: TFbusasorecCADAPS;

implementation

uses ASODM, ASO265, ASO267, ASO264, ASO263;

{$R *.dfm}

procedure TFbusasorecCADAPS.BitbuscarClick(Sender: TObject);
Var xFiltro, xSql:String;
begin
   gbdatasociados.Visible := False;
   If rgbuscar.ItemIndex = 0 Then
       xFiltro := 'A.ASODNI = '+QuotedStr(Trim(edtbuscar.Text));
   If rgbuscar.ItemIndex = 1 Then
       xFiltro := 'A.ASOCODMOD = '+QuotedStr(Trim(edtbuscar.Text));
   If rgbuscar.ItemIndex = 2 Then
       xFiltro := 'A.ASOAPENOMDNI LIKE '+QuotedStr(Trim(edtbuscar.Text)+'%');
   xSql := 'SELECT CASE WHEN A.AUTDESAPO = ''S'' THEN ''CON AUTORIZACION'' ELSE ''SIN AUTORIZACION'' END AUT_DESC, D.ASOTIPDES,'
   +' A.ASOCODMOD, A.ASODNI, A.ASOFECNAC, A.ASOAPEPATDNI, A.ASOAPEMATDNI, A.ASONOMDNI, A.ASOAPECASDNI,'
   +' A.ASOSEXO, A.ASOAPENOMDNI, C.DPTODES, C.DPTOID DPTOID_UGEL, B.USEID||'' - ''||B.USENOM USENOM, E.UPAGOID||'' - ''||E.UPAGONOM UPAGONOM,'
   +' F.UPROID||'' - ''||F.UPRONOM UPRONOM, G.REGPENDES, H.DESAFP, I.NOMCENEDU,'
   +' A.FECAUTDESAPO, A.FECREGAUTDESAPO, A.USUREGAUTDESAPO, A.OFIREGAUTDESAPO, A.UPROID, A.UPAGOID, A.USEID, A.ASOID,'
   +' TO_CHAR(A.FECRECCADAPS,''DD/MM/YYYY'') FECREC_CADAPS, TO_CHAR(FECRECCADAPS,''HH:MI'') HORREC_CADAPS, A.USURECCADAPS,'
   +' A.AUTDESAPO, A.ASOTIPID, A.ASOAPTSER, TRUNC(SYSDATE-FECAUTDESAPO) DIAS_TRANS_AUTDESAPO, NVL(J.AUTODESC,''X'') AUTODESC, J.FECREG'
   +' FROM APO201 A, APO101 B, APO158 C, APO107 D, APO103 E, APO102 F, APO105 G,'
   +' (SELECT SUBSTR(PROV,4,2) CODAFP , PROVDES DESAFP FROM TGE201 WHERE SUBSTR(PROV,1,1) =''A'' AND CLAUXID = ''A'') H, ASO_CEN_EDU I, APOSINCARTA J'
   +' WHERE A.ASOTIPID = ''DO'''
   +' AND '+xFiltro
   +' AND A.ASOTIPID = ''DO'' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+) AND B.DPTOID = C.DPTOID(+) AND A.ASOTIPID = D.ASOTIPID(+)'
   +' AND A.UPROID = E.UPROID(+) AND A.UPAGOID = E.UPAGOID(+)'
   +' AND A.UPROID = F.UPROID(+) AND A.REGPENID = G.REGPENID(+) AND A.CODAFP = H.CODAFP(+) AND A.CENEDUID = I.CENEDUID(+) AND A.ASOID = J.ASOID(+)';
   DM1.cdsAsociados.Close;
   DM1.cdsAsociados.DataRequest(xSql);
   DM1.cdsAsociados.Open;
   If DM1.cdsAsociados.RecordCount = 1 Then mueasociados;
end;

procedure TFbusasorecCADAPS.rgbuscarClick(Sender: TObject);
begin
   edtbuscar.Text := '';
   If rgbuscar.ItemIndex = 0 Then
   Begin
      edtbuscar.Width := 80;
      edtbuscar.MaxLength := 8;
   End;
   If rgbuscar.ItemIndex = 1 Then
   Begin
      edtbuscar.Width := 100;
      edtbuscar.MaxLength := 10;
   End;
   If rgbuscar.ItemIndex = 2 Then
   Begin
      edtbuscar.Width := 350;
      edtbuscar.MaxLength := 90;
   End;
end;

procedure TFbusasorecCADAPS.FormActivate(Sender: TObject);
begin
   DM1.cdsAsociados.Close;
   gbdatasociados.Visible := False;
   edtbuscar.Text := '';
   edtbuscar.SetFocus;
   dbgAsociado.Selected.Clear;
   dbgAsociado.Selected.Add('AUT_DESC'#9'18'#9'Autorización de~descuento'#9#9);
   dbgAsociado.Selected.Add('ASOTIPDES'#9'12'#9'Tipo de~Asociado'#9#9);
   dbgAsociado.Selected.Add('ASOCODMOD'#9'10'#9'Código~Modular'#9#9);
   dbgAsociado.Selected.Add('ASODNI'#9'8'#9'DNI'#9#9);
   dbgAsociado.Selected.Add('ASOAPENOMDNI'#9'40'#9'Apellidos y Nombre(s)~del asociado'#9#9);
   dbgAsociado.Selected.Add('DPTODES'#9'18'#9'Departamento~de Ugel'#9#9);
   dbgAsociado.Selected.Add('USENOM'#9'24'#9'Unidad de~Gestión'#9#9);
   dbgAsociado.ApplySelected;

end;

procedure TFbusasorecCADAPS.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;

procedure TFbusasorecCADAPS.BitsalirClick(Sender: TObject);
begin
   Close;
end;

procedure TFbusasorecCADAPS.FormCreate(Sender: TObject);
begin
   If DM1.cdsAsociados.Active = True Then
      DM1.cdsAsociados.Close;

end;

procedure TFbusasorecCADAPS.btnrecepCADAPSClick(Sender: TObject);
begin
   If (DM1.cdsAsociados.FieldByName('AUTDESAPO').AsString <> 'S') Or (DM1.cdsAsociados.FieldByName('FECAUTDESAPO').AsString = '') Then
   Begin
      MessageDlg('El asociado debe contar con autorización de descuento de aportes.', mtError, [mbOk], 0);
      Exit;
   End;
   Try
      FvalregCADAPS:= TFvalregCADAPS.create(self);
      FvalregCADAPS.Showmodal;
   Finally
      FvalregCADAPS.free;
  End;
  actdatrecCADAPS;
end;

procedure TFbusasorecCADAPS.btnEnvArcClick(Sender: TObject);
begin
   Try
      fenvarchico:= Tfenvarchico.create(self);
      fenvarchico.Showmodal;
   Finally
      fenvarchico.free;
   End;
end;

procedure TFbusasorecCADAPS.BitBtn2Click(Sender: TObject);
begin
   Try
      Flotesenviados:= TFlotesenviados.create(self);
      Flotesenviados.Showmodal;
   Finally
      Flotesenviados.free;
   End;
end;

procedure TFbusasorecCADAPS.actdatrecCADAPS;
Var xSql:String;
begin
   xSql := 'SELECT TO_CHAR(FECRECCADAPS,''DD/MM/YYYY'') FECREC_CADAPS, TO_CHAR(FECRECCADAPS,''HH:MI'') HORREC_CADAPS, USURECCADAPS FROM APO201 WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString);
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xSql);
   DM1.cdsQry2.Open;
   lblfecrecCADAPS.Caption := DM1.cdsQry2.FieldByName('FECREC_CADAPS').AsString;
   lblusurecCADAPS.Caption := DM1.cdsQry2.FieldByName('USURECCADAPS').AsString+' - '+DM1.CrgDescrip('USERID = '+QuotedStr(DM1.cdsQry2.FieldByName('USURECCADAPS').AsString), 'TGE006', 'USERNOM');
end;


procedure TFbusasorecCADAPS.mueasociados;
begin
   gbdatasociados.Visible := True;
   DM1.CargaImagenesDNI(Trim(DM1.cdsAsociados.FieldByName('ASODNI').AsString),'AUTDESAPO');
   meupronom.Text := DM1.cdsAsociados.FieldByName('UPRONOM').AsString;
   meupagonom.Text := DM1.cdsAsociados.FieldByName('UPAGONOM').AsString;
   meusenom.Text :=  DM1.cdsAsociados.FieldByName('USENOM').AsString;
   If DM1.cdsAsociados.FieldByName('ASOSEXO').AsString = 'M' Then mesexo.Text := 'Masculino' Else  mesexo.Text := 'Femenino';
   meautdesapo.Text := DM1.cdsAsociados.FieldByName('AUT_DESC').AsString;
   actdatrecCADAPS;
   gbdatasociados.Visible := True;
end;

procedure TFbusasorecCADAPS.dbgAsociadoDblClick(Sender: TObject);
begin
   mueasociados;
end;

procedure TFbusasorecCADAPS.edtbuscarExit(Sender: TObject);
begin
   Bitbuscar.OnClick(Self);
end;

procedure TFbusasorecCADAPS.btnreportesClick(Sender: TObject);
begin
   Try
      FRepControl:= TFRepControl.create(self);
      FRepControl.Showmodal;
   Finally
      FRepControl.free;
   End;
end;

end.
