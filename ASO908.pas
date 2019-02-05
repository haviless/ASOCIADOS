// Inicio Uso Estándares : 01/08/2011
// Unidad                : ASO908.pas
// Formulario            : fMatAso_old
// Fecha de Creación     : 15/12/2003
// Autor                 : Equipo de Desarrollo de Sistemas DM
// Objetivo              : Mantenimiento de Asociados
// Actualizaciones:

// HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

unit ASO908;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, wwdbdatetimepicker, wwdblook, StdCtrls, Mask, wwdbedit, Buttons,
  ComCtrls, ExtCtrls, fcButton, fcImgBtn, fcShapeBtn;

type
  TfMatAso_old = class(TForm)
    gbCambios: TGroupBox;
    bFirma: TBevel;
    bFoto: TBevel;
    ImaFirma: TImage;
    ImagAso: TImage;
    Label6: TLabel;
    Label16: TLabel;
    Label24: TLabel;
    EdtApePatDni: TwwDBEdit;
    EdtApeMatDni: TwwDBEdit;
    EdtAsoNomDni: TwwDBEdit;
    Label15: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label14: TLabel;
    dbeCodPag: TwwDBEdit;
    dbeLibDni: TwwDBEdit;
    dbdtFecNac: TwwDBDateTimePicker;
    Label1: TLabel;
    DbLlSexo: TwwDBLookupCombo;
    DbLlRegPen: TwwDBLookupCombo;
    Label2: TLabel;
    dbeTel1: TwwDBEdit;
    dbeTel2: TwwDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbeDirec: TwwDBEdit;
    lkcDpto: TwwDBLookupCombo;
    Panel1: TPanel;
    edtDpto: TEdit;
    Label5: TLabel;
    lkcProv: TwwDBLookupCombo;
    Panel2: TPanel;
    edtProv: TEdit;
    lkcDist: TwwDBLookupCombo;
    Panel3: TPanel;
    edtDist: TEdit;
    Label7: TLabel;
    Label11: TLabel;
    dbeColLab: TwwDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbeDirLab: TwwDBEdit;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lkcDpto2: TwwDBLookupCombo;
    Panel6: TPanel;
    edtDpto2: TEdit;
    lkcProv2: TwwDBLookupCombo;
    Panel5: TPanel;
    edtProv2: TEdit;
    lkcDist2: TwwDBLookupCombo;
    Panel4: TPanel;
    edtDist2: TEdit;
    DbLlTipAso: TwwDBLookupCombo;
    DbLlAfp: TwwDBLookupCombo;
    Label17: TLabel;
    Panel7: TPanel;
    edtRegPen: TEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    EdtAfp: TEdit;
    dbeSexo: TwwDBEdit;
    Panel10: TPanel;
    edtTipAso: TEdit;
    lblAsoApeNom: TLabel;
    Shape1: TShape;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    BitModifica: TBitBtn;
    BitCancelar: TBitBtn;
    Label18: TLabel;
    Panel11: TPanel;
    dbeCuenta: TwwDBEdit;
    Panel12: TPanel;
    dbeNroRes: TwwDBEdit;
    DBDTResNom: TwwDBDateTimePicker;
    dbeNroCes: TwwDBEdit;
    DBDTResCes: TwwDBDateTimePicker;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    BitCuentas: TBitBtn;
    BitResol: TBitBtn;
    Shape2: TShape;
    BitReasignacion: TBitBtn;
    BitOfiDes: TBitBtn;
    BitSocio: TBitBtn;
    BitMstApo: TfcShapeBtn;
    BitFoto: TPanel;
    ImageBoton: TImage;
    dbeTelCol: TwwDBEdit;
    Label19: TLabel;
    BitPrest: TfcShapeBtn;
    Label20: TLabel;
    Panel13: TPanel;
    dbeSitCta: TwwDBEdit;
    pnlPrefente: TPanel;
    lblPrefente: TLabel;
    BitVerifica: TBitBtn;
    procedure lkcDptoChange(Sender: TObject);
    procedure lkcProvChange(Sender: TObject);
    procedure lkcDistChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure sbtDatLabClick(Sender: TObject);
    procedure SpdBSalirClick(Sender: TObject);
    procedure lkcDpto2Change(Sender: TObject);
    procedure lkcProv2Change(Sender: TObject);
    procedure lkcDist2Change(Sender: TObject);
    procedure edtDptoChange(Sender: TObject);
    procedure edtProvChange(Sender: TObject);
    procedure edtDpto2Change(Sender: TObject);
    procedure edtProv2Change(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitSalirClick(Sender: TObject);
    procedure DbLlSexoChange(Sender: TObject);
    procedure DbLlTipAsoChange(Sender: TObject);
    procedure DbLlRegPenChange(Sender: TObject);
    procedure DbLlAfpChange(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure BitModificaClick(Sender: TObject);
    procedure BitCancelarClick(Sender: TObject);
    procedure BitResolClick(Sender: TObject);
    procedure BitCuentasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitReasignacionClick(Sender: TObject);
    procedure DbLlRegPenExit(Sender: TObject);
    procedure BitSocioClick(Sender: TObject);
    procedure BitMstApoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImageBotonClick(Sender: TObject);
    procedure BitPrestClick(Sender: TObject);
    procedure BitVerificaClick(Sender: TObject);
  private
    { Private declarations }
    function MaxNroItem(xAsoId:String):String;
  public
    { Public declarations }
    procedure Registro_Aud(xAsoId,xSecuencia,xCodReg:String);
    procedure ActivaFoco;
    Function CodReg():String;
  end;

var
  fMatAso_old: TfMatAso_old;

implementation

uses ASODM, ASO937, ASO938, ASO936, ASO942, ASO943, ASO944, ASO948, ASO900,
   ASO957, ASO260;

{$R *.dfm}

procedure TfMatAso_old.lkcDptoChange(Sender: TObject);
begin
   If DM1.cdsPadre.Locate('DPTOID',VarArrayof([lkcDpto.text]),[]) Then
      Begin
        EdtDpto.Text := DM1.cdsPadre.FieldByName('DPTODES').Asstring ;
        If lkcDpto.Enabled Then lkcProv.Enabled := True;
      End
   Else
      Begin
        if Length(lkcDpto.Text) <> 2 then
           Begin
              Beep; lkcProv.Enabled := False;
              EdtDpto.Text  :='';
           End;
      End


end;

procedure TfMatAso_old.lkcProvChange(Sender: TObject);
var xSQL:String;
begin
   If DM1.cdsHijo.Locate('PROVID',lkcProv.Text,[]) then
      Begin
         edtProv.Text := DM1.cdsHijo.FieldByName('PROVDES').asstring ;
         If lkcProv.Enabled Then lkcDist.Enabled := True;
      End
   Else
      Begin
         edtProv.Text := ''; lkcDist.Enabled := False;
      End;

end;

procedure TfMatAso_old.lkcDistChange(Sender: TObject);
begin
    If DM1.cdsSAso.Locate('ZIPID',lkcDist.Text,[]) then
        edtDist.Text := DM1.cdsSAso.FieldByName('ZIPDES').asstring
    Else
        edtDist.Text := '';

end;

procedure TfMatAso_old.FormActivate(Sender: TObject);
begin
edtRegPen.Text:=DM1.RecuperaDatos('APO105','REGPENID',Trim(DM1.cdsAso.FieldByName('REGPENID').asstring),'REGPENDES');
edtTipAso.Text:=DM1.RecuperaDatos('APO107','ASOTIPID',DM1.cdsAso.fieldbyname('ASOTIPID').AsString,'ASOTIPDES');
if DM1.xofides='01' then BitVerifica.Enabled := True else BitVerifica.Enabled := False;
If Not BitFoto.Enabled Then
   ImageBoton.Visible:=False;

end;

procedure TfMatAso_old.sbtDatLabClick(Sender: TObject);
begin
lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
end;

procedure TfMatAso_old.SpdBSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfMatAso_old.lkcDpto2Change(Sender: TObject);
begin
   If DM1.cdsRec.Locate('DPTOID',lkcDpto2.Text,[]) then
      Begin
        EdtDpto2.Text := DM1.cdsRec.FieldByName('DPTODES').asstring ;
        If lkcDpto2.Enabled Then lkcProv2.Enabled := True; 
      End
   Else
      Begin
        if Length(lkcDpto2.Text) <> 2 then
           Begin
              Beep;
              EdtDpto2.Text  :=''; lkcProv2.Enabled:=False;
           End;
      End


end;

procedure TfMatAso_old.lkcProv2Change(Sender: TObject);
begin
  If DM1.cdsTRela.Locate('PROVID',lkcProv2.Text,[]) then
     Begin
        EdtProv2.Text := DM1.cdsTRela.FieldByName('PROVDES').asstring ;
        If lkcProv2.Enabled Then lkcDist2.Enabled := True;
     End
  Else
     Begin
        EdtProv2.Text := ''; lkcDist2.Enabled := False;
     End;

end;

procedure TfMatAso_old.lkcDist2Change(Sender: TObject);
begin
   If DM1.cdsQry7.Locate('ZIPID',lkcDist2.Text,[]) then
       EdtDist2.Text := DM1.cdsQry7.FieldByName('ZIPDES').asstring
    Else
       EdtDist2.Text := '';

end;

procedure TfMatAso_old.edtDptoChange(Sender: TObject);
begin
       DM1.cdsHijo.Close;
       DM1.cdsHijo.DataRequest('SELECT DPTOID||CIUDID AS PROVID,'+
                                           'CIUDDES AS PROVDES'+
                                           ' FROM TGE121'+
                                           ' WHERE DPTOID='''+TRIM(lkcDpto.Text)+''' ');
       DM1.cdsHijo.Open;



end;

procedure TfMatAso_old.edtProvChange(Sender: TObject);
begin
  DM1.cdsSAso.Close;
  DM1.cdsSAso.DataRequest('SELECT * FROM APO122 WHERE CIUDID='''+TRIM(lkcProv.Text)+''' ');
  DM1.cdsSAso.Open;
end;

procedure TfMatAso_old.edtDpto2Change(Sender: TObject);
begin
 DM1.cdsTRela.Close;
 DM1.cdsTRela.DataRequest('SELECT DPTOID||CIUDID AS PROVID,'+
                                           'CIUDDES AS PROVDES'+
                                        ' FROM TGE121'+
                                        ' WHERE DPTOID='''+TRIM(lkcDpto2.Text)+''' ');
 DM1.cdsTRela.Open;

end;

procedure TfMatAso_old.edtProv2Change(Sender: TObject);
begin
  DM1.cdsQry7.Close;
  DM1.cdsQry7.DataRequest('SELECT * FROM APO122 WHERE CIUDID='''+TRIM(lkcProv2.Text)+''' ');
  DM1.cdsQry7.Open;
end;

procedure TfMatAso_old.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End

end;

procedure TfMatAso_old.BitSalirClick(Sender: TObject);
var xSQL:String;
begin
   xSQL:='SELECT ESTCIVID FROM APO206 WHERE ASOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString))+' AND ESTCIVID IS NOT NULL ';
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSQL);
   DM1.cdsQry5.Open;
   If DM1.cdsQry5.RecordCount > 0 Then
      Begin
         xSQL:='UPDATE APO201 C SET ESTCIVID=(SELECT ESTCIVID FROM APO206 A,(SELECT ASOID,MAX(ITEM) ITEM FROM APO206 WHERE ASOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString))+' AND ESTCIVID IS NOT NULL '+
               'GROUP BY ASOID) B WHERE A.ASOID=B.ASOID AND A.ITEM=B.ITEM AND A.ASOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString))+' AND A.ESTCIVID IS NOT NULL ) WHERE C.ASOID='+QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString));
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
   DM1.cdsQry5.Close;

   Close;
end;

procedure TfMatAso_old.DbLlSexoChange(Sender: TObject);
begin
   If DM1.cdsSexo.Locate('ID',DbLlSexo.Text,[]) then
      Begin
        dbeSexo.Text := DM1.cdsSexo.FieldByName('DESCRIP').asstring
      End
   Else
      Begin
        if Length(DbLlSexo.Text) <> 2 then
           Begin
              Beep;
              dbeSexo.Text  :='';
           End;
      End

end;

procedure TfMatAso_old.DbLlTipAsoChange(Sender: TObject);
var xTipAso:String;
begin
   If DM1.cdsTAso.Locate('ASOTIPID',DbLlTipAso.Text,[]) then
      Begin
        edtTipAso.Text := DM1.cdsTAso.FieldByName('ASOTIPDES').asstring
      End
   Else
      Begin
        if Length(DbLlTipAso.Text) <> 2 then
           Begin
              Beep;
              edtTipAso.Text  :='';
           End;
      End

end;

procedure TfMatAso_old.DbLlRegPenChange(Sender: TObject);
begin
   If DM1.cdsResol.Locate('REGPENID',DbLlRegPen.Text,[]) then
      Begin
        edtRegPen.Text := DM1.cdsResol.FieldByName('REGPENDES').asstring;
        If DbLlRegPen.Text='03' Then DbLlAfp.Enabled := True Else DbLlAfp.Enabled := False; 
      End
   Else
      Begin
        if Length(DbLlRegPen.Text) <> 2 then
           Begin
              Beep;
              edtRegPen.Text  :='';
           End;
      End



end;

procedure TfMatAso_old.DbLlAfpChange(Sender: TObject);
begin
   If DM1.cdscarta.Locate('IDAFP',DbLlAfp.Text,[]) then
      Begin
        EdtAfp.Text := DM1.cdscarta.FieldByName('PROVDES').asstring
      End
   Else
      Begin
        if Length(DbLlAfp.Text) <> 2 then
           Begin
              Beep;
              EdtAfp.Text  :='';
           End;
      End


end;

procedure TfMatAso_old.BitGrabarClick(Sender: TObject);
var xAsoid,xCodReg,xSQL:String;
    // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
	Boton,xItem:Integer;
    // Fin HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
begin
   Screen.Cursor:=crHourGlass;
   xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
   If DbLlTipAso.Text='DO' Then
      Begin
         If Length(Trim(dbeCodPag.Text))=0 Then
            Begin
               MessageDlg(' Falta Ingresar El CODIGO DE PAGO ', mtError, [mbOk], 0);   Exit;
            End;
         If Length(Trim(dbeLibDni.Text))=0 Then
            Begin
               MessageDlg(' Falta Ingresar El D.N.I. ', mtError, [mbOk], 0); Exit;
            End;
        { If Length(Trim(dbeCuenta.Text))=0 Then
            Begin
               MessageDlg(' Falta Ingresar La CUENTA DE AHORROS ', mtError, [mbOk], 0);  Exit;
            End; }
         If Length(Trim(dbeNroRes.Text))=0 Then
            Begin
               MessageDlg(' Falta Ingresar El NUMERO De La RESOLUCION DE NOMBRAMIENTO ', mtError, [mbOk], 0);  Exit;
            End;
         If Length(Trim(DBDTResNom.Text))=0 Then
            Begin
               MessageDlg(' Falta Ingresar La FECHA De La RESOLUCION DE NOMBRAMIENTO ', mtError, [mbOk], 0);  Exit;
            End;
      End;


   If DbLlTipAso.Text='CE' Then
      Begin
         If Length(Trim(dbeCodPag.Text))=0 Then
            Begin
               MessageDlg(' Falta Ingresar El CODIGO DE PAGO ', mtError, [mbOk], 0);   Exit;
            End;
         If Length(Trim(dbeLibDni.Text))=0 Then
            Begin
               MessageDlg(' Falta Ingresar El D.N.I. ', mtError, [mbOk], 0); Exit;
            End;
       {  If Length(Trim(dbeCuenta.Text))=0 Then
            Begin
               MessageDlg(' Falta Ingresar La CUENTA DE AHORROS ', mtError, [mbOk], 0);  Exit;
            End;}
         If Length(Trim(dbeNroCes.Text))=0 Then
            Begin
               MessageDlg(' Falta Ingresar El NUMERO De La RESOLUCION DE CESE ', mtError, [mbOk], 0);  Exit;
            End;
         If Length(Trim(DBDTResCes.Text))=0 Then
            Begin
               MessageDlg(' Falta Ingresar La FECHA De La RESOLUCION DE CESE ', mtError, [mbOk], 0);  Exit;
            End;
      End;
If (Trim(DbLlTipAso.Text)='CE') And (Trim(DbLlRegPen.Text)='02') Then
   Begin
      MessageDlg(' No Puede Crear Cesantes con Regimen De Pensión 19990 ', mtError, [mbOk], 0);
      Exit;
   End;
Boton := Application.MessageBox ('¿Esta Seguro De Actualizar Datos Del Asociado?','Mantenimiento y Control De Asociados',MB_YESNO+MB_ICONQUESTION);
If Boton = ID_YES Then
   Begin
     xCodReg:=CodReg;
     Registro_Aud(xAsoId,'0',xCodReg);
     DM1.cdsAso.ApplyUpdates(0);
     DM1.cdsAsoX.Close;
     DM1.cdsAsoX.DataRequest('SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId)));
     DM1.cdsAsoX.Open;
     DM1.cdsAsoX.Edit;
     DM1.cdsAsoX.fieldbyname('ASOAPENOMDNI').AsString:=Trim(EdtApePatDni.Text)+' '+Trim(EdtApeMatDni.Text)+' '+Trim(EdtAsoNomDni.Text);
     DM1.cdsAsoX.fieldbyname('ASODPTLABID').AsString:=Trim(lkcDpto2.Text);
     DM1.cdsAsoX.fieldbyname('ASOPRVLABID').AsString:=Trim(lkcProv2.Text);
     DM1.cdsAsoX.fieldbyname('ASODSTLABID').AsString:=Trim(lkcDist2.Text);
     DM1.cdsAsoX.fieldbyname('ASODPTO').AsString := Trim(lkcDpto.Text);
     DM1.cdsAsoX.fieldbyname('CIUDID').AsString := Trim(lkcProv.Text);
     DM1.cdsAsoX.fieldbyname('ZIPID').AsString  := Trim(lkcDist.Text);
     DM1.cdsAsoX.ApplyUpdates(0);  DM1.cdsAso.ApplyUpdates(0);
     Registro_Aud(xAsoId,'1',xCodReg);
     DM1.cdsAso.Close;
     DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId)));
     DM1.cdsAso.Open;
     lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
     lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
     lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
     edtProv2.Text := DM1.CrgDescrip('DPTOID||CIUDID='+QuotedStr(Trim(lkcProv2.Text)),'TGE121','CIUDDES');
     edtDist2.Text := DM1.CrgDescrip('ZIPID='+QuotedStr(Trim(lkcDist2.Text)),'APO122','ZIPDES');
     If DM1.xOfiDes>'01' Then
        Begin
          xSQL:='SELECT ASOID,FHREGISTRO FROM ASO003 WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND IDESTADO IS NULL ' ;
          DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL); DM1.cdsQry.Open;
          If DM1.cdsQry.RecordCount > 0 Then
             Begin
                // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
                //xSQL:='UPDATE ASO003 SET DATGENERAL=''S'' WHERE ASOID='+QuotedStr(Trim(xAsoId));
                xSQL:='UPDATE ASO003 SET DATGENERAL=''S'' WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND IDESTADO IS NULL';
                // Fin HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
             End
          Else
             Begin
                // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
                DM1.cdsQry.Close;
                xSQL := 'SELECT MAX(ITEM) ITEM FROM ASO003 WHERE ASOID='+ QuotedStr(Trim(xAsoId));
                DM1.cdsQry.DataRequest(xSQL);
                DM1.cdsQry.Open;
                xItem := DM1.cdsQry.FieldByName('ITEM').AsInteger;

                xSQL:='INSERT INTO ASO003(ASOID, ASOAPENOM, USUARIO, FHREGISTRO, OFDESID, DATGENERAL,ITEM) VALUES '+
                      '( '+QuotedStr(Trim(xAsoId))+','+QuotedStr(Trim(EdtApePatDni.Text)+' '+Trim(EdtApeMatDni.Text)+' '+Trim(EdtAsoNomDni.Text))+','+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(DM1.xOfiDes)+',''S'','+IntToStr(xItem+1)+' )';

                // Fin HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion


             End;
          DM1.cdsQry.Close;
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        End;
     If DM1.xCnd<>'M' Then DM1.CrgDatos;
     If DM1.xSgr='N' Then  Close;
     BitModifica.Enabled := True;
     BitGrabar.Enabled:=False;
     BitCancelar.Enabled:=False;
     gbCambios.Enabled:=False;
     MessageDlg(' <<< Se Grabo Con Exito >>> ', mtInformation,[mbOk],0);
   End;
   Screen.Cursor:=crDefault;
end;

procedure TfMatAso_old.BitModificaClick(Sender: TObject);
var xSQL,xAsoId:String;
begin
xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;
If MaxNroItem(xAsoId)<>'000' Then
   Begin
      xSQL:='SELECT ESTADO,OBSERVACION,ITEM FROM ASO007 WHERE ASOID='+QuotedStr(xAsoId)+' AND ITEM='+QuotedStr(MaxNroItem(xAsoId));
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;
      If DM1.cdsQry2.RecordCount>0 Then
         Begin
            If DM1.cdsQry2.fieldbyname('ESTADO').AsString='I' Then
               Begin
                  MessageDlg(' El Registro Se Encuentra INACTIVO Por  :  '+StrUpper(pChar(DM1.cdsQry2.fieldbyname('OBSERVACION').AsString)), mtError, [mbOk], 0);
                  DM1.cdsQry2.Close;
                  Exit;
               End;
         End;
         DM1.cdsQry2.Close;
   End;

  xSQL:='SELECT A.ASOID,A.FHREGISTRO,A.USUARIO,A.OFDESID,B.OFDESNOM FROM ASO003 A , APO110 B WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND DATGENERAL IS NOT NULL  AND IDESTADO IS NULL AND A.OFDESID=B.OFDESID  ' ;
  DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL); DM1.cdsQry.Open;
  If DM1.cdsQry.RecordCount > 0 Then
     Begin
        MessageDlg(' Los Datos Del ASOCIADO Se Encuentran Pendiente De Verificación Por El SUPERVISOR De La Oficina De  :  '+DM1.cdsQry.FieldByName('OFDESNOM').AsString  , mtError,[mbOk],0);
        DM1.cdsQry.Close;
        Exit;
     End;
     DM1.cdsQry.Close;
   gbCambios.Enabled:=True;
   BitModifica.Enabled := False;
   BitGrabar.Enabled:=True;
   BitCancelar.Enabled:=True;
   Try
     ActivaFoco;
   Except
   End;

end;

procedure TfMatAso_old.BitCancelarClick(Sender: TObject);
var xAsoId:String;
begin
   xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
   DM1.cdsAso.Close;  DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId)));  DM1.cdsAso.Open;
   If DM1.xCnd<>'M' Then DM1.CrgDatos;
   lkcDpto2.Text := DM1.cdsAso.fieldbyname('ASODPTLABID').AsString;
   lkcProv2.Text := DM1.cdsAso.fieldbyname('ASOPRVLABID').AsString;
   lkcDist2.Text := DM1.cdsAso.fieldbyname('ASODSTLABID').AsString;
   edtProv2.Text := DM1.CrgDescrip('DPTOID||CIUDID='+QuotedStr(Trim(lkcProv2.Text)),'TGE121','CIUDDES');
   edtDist2.Text := DM1.CrgDescrip('ZIPID='+QuotedStr(Trim(lkcDist2.Text)),'APO122','ZIPDES');
   gbCambios.Enabled:=False;
   BitModifica.Enabled := True;
   BitGrabar.Enabled:=False;
   BitCancelar.Enabled:=False;
end;

procedure TfMatAso_old.Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
var xSQL:String;
begin
      If Length(Trim(xCodReg))=0 Then
         Begin
            MessageDlg(' No Se Grabo Log De USUARIO Informe al Equipo De Sistemas ', mtError, [mbOk], 0);
            Exit;
         End;
      Screen.Cursor:=crHourGlass;
      xSQL:='INSERT INTO APO201_LOG(ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, '+
            'UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, '+
            'ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, '+
            'ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, '+
            'FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, '+
            'OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, '+
            'ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, '+
            'DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP, USUARIO_AUD, REGISTRO_AUD, SECUENCIA, CODREG, MODULOID) SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, '+
            'ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID, ASOFACT, ASOTIPID, VIAID, VIANOMBRE, '+
            'ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, '+
            'ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL, BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, '+
            'ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID, CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, '+
            'OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL, ASOAPEPATDNI, '+
            'ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, '+
            'FECACT, INDICADOR, CCOSID, PASSWORD, CODAFP,'+QuotedStr(DM1.wUsuario)+',SYSDATE,'+QuotedStr(xSecuencia)+','+QuotedStr(xCodReg)+',''ASO'' FROM APO201 WHERE ASOID='+QuotedStr(xAsoId);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      Screen.Cursor:=crDefault;
end;

procedure TfMatAso_old.BitResolClick(Sender: TObject);
var xSQL:String;
begin

  Try
    fResNomb:= TfResNomb.create(self);
    DM1.cdsRecursos.Close;
    xSQL:='SELECT TIPRESID,TIPRESDES FROM APO104';
    DM1.cdsRecursos.DataRequest(xSQL);
    DM1.cdsRecursos.Open;
    xSQL:='SELECT ASOID,ASOCODMOD,ASONRES,ASOFRES,RESID,B.TIPRESDES TIPRESDES,RESFVIG,A.USUARIO,A.FREG,A.HREG FROM APO205 A,APO104 B '+
          'WHERE ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' AND A.RESID=B.TIPRESID  ORDER BY RESFVIG DESC'; //HREG DESC';
    DM1.cdsGradoA.Close;
    DM1.cdsGradoA.DataRequest(xSQL);
    DM1.cdsGradoA.Open;
    If DM1.cdsGradoA.RecordCount > 1 Then DM1.cdsGradoA.First;
    fResNomb.Showmodal;
  Finally
    DM1.cdsRecursos.Close;
    DM1.cdsGradoA.Close;
    fResNomb.Free;
  End;

end;

procedure TfMatAso_old.BitCuentasClick(Sender: TObject);
var xSQL:String;
begin
  Try
    fCtasAhorro:= TfCtasAhorro.create(self);
    DM1.cdsRecursos.Close;
    xSQL:='SELECT BANCOID,BANCONOM FROM TGE105 ORDER BY CPTOID';
    DM1.cdsRecursos.DataRequest(xSQL);
    DM1.cdsRecursos.Open;
    xSQL:='SELECT SITCTAID,SITCTADES FROM COB103 ORDER BY SITCTAID';
    DM1.cdsSitCta.Close;
    DM1.cdsSitCta.DataRequest(xSQL);
    DM1.cdsSitCta.Open;
    xSQL:='SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOAPENOM, ASONCTA, SITCTA,B.SITCTADES, A.USUARIO, A.FREG, A.HREG, ASOITEM, A.BANCOID, C.BANCONOM '+
          'FROM APO207 A,COB103 B,TGE105 C WHERE A.SITCTA=B.SITCTAID  AND A.BANCOID=C.BANCOID AND ASOID='+QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString)+' ORDER BY ASOITEM DESC';;
    DM1.cdsGradoA.Close;
    DM1.cdsGradoA.DataRequest(xSQL);
    DM1.cdsGradoA.Open;
    If DM1.cdsGradoA.RecordCount > 1 Then DM1.cdsGradoA.First;
    fCtasAhorro.Showmodal;
  Finally
    DM1.cdsGradoA.Close;  DM1.cdsRecursos.Close; DM1.cdsSitCta.Close;
    fCtasAhorro.Free;
  End;


end;

procedure TfMatAso_old.FormCreate(Sender: TObject);
begin
  DM1.BlqComponentes(Self);
end;

procedure TfMatAso_old.BitReasignacionClick(Sender: TObject);
var xSQL,xAsoId:String;
begin
  xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;


  If MaxNroItem(xAsoId)<>'000' Then
   Begin
      xSQL:='SELECT ESTADO,OBSERVACION,ITEM FROM ASO007 WHERE ASOID='+QuotedStr(xAsoId)+' AND ITEM='+QuotedStr(MaxNroItem(xAsoId));
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSQL);
      DM1.cdsQry2.Open;
      If DM1.cdsQry2.RecordCount>0 Then
         Begin
            If DM1.cdsQry2.fieldbyname('ESTADO').AsString='I' Then
               Begin
                  MessageDlg(' El Registro Se Encuentra INACTIVO Por  :  '+StrUpper(pChar(DM1.cdsQry2.fieldbyname('OBSERVACION').AsString)), mtError, [mbOk], 0);
                  DM1.cdsQry2.Close;
                  Exit;
               End;
         End;
         DM1.cdsQry2.Close;
   End;



  If DM1.xCnd<>'VRF' Then
     Begin
      xSQL:='SELECT A.ASOID,A.FHREGISTRO,A.USUARIO,A.OFDESID,B.OFDESNOM FROM ASO003 A , APO110 B WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND REASIGNACION IS NOT NULL  AND IDESTADO IS NULL AND A.OFDESID=B.OFDESID   ' ;
      DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL); DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
         Begin
            MessageDlg(' Los Datos Del ASOCIADO Se Encuentran Pendiente De Verificación Por El SUPERVISOR De La Oficina De  :  '+DM1.cdsQry.FieldByName('OFDESNOM').AsString  , mtError,[mbOk],0);
            DM1.cdsQry.Close;
            Exit;
         End;
     DM1.cdsQry.Close;
     End;
  Try
    fNueAsociado := TfNueAsociado.create(self);
    xSQL:='SELECT UPROID,UPRONOM FROM APO102';
    DM1.cdsUPro.Close;
    DM1.cdsUPro.DataRequest(xSQL);
    DM1.cdsUPro.Open;
    fNueAsociado.Caption := 'Mantenimiento De Asociados / Reasignación';
    DM1.xInsert:='0';
    If DM1.xCnd='VRF' Then
       Begin
          fNueAsociado.Pan01.Enabled:=False; fNueAsociado.Pan02.Enabled:=False; fNueAsociado.Pan03.Enabled:=False; fNueAsociado.Pan04.Enabled:=False; fNueAsociado.Pan05.Enabled:=False; fNueAsociado.BitGrabar.Enabled:=False;
       End;
    If DM1.xOfiDes>'01' Then
       Begin
          fNueAsociado.Pan01.Enabled:=False; fNueAsociado.Pan02.Enabled:=False; fNueAsociado.Pan03.Enabled:=False; fNueAsociado.Pan04.Enabled:=False; fNueAsociado.Pan05.Enabled:=False; fNueAsociado.BitGrabar.Enabled:=False;
          If (DM1.cdsAso.FieldByName('ASOTIPID').AsString='CE') AND (DM1.cdsAso.FieldByName('REGPENID').AsString='01') Then
             Begin
                fNueAsociado.Pan03.Enabled:=True; fNueAsociado.BitGrabar.Enabled:=True;
             End;
       End;
    fNueAsociado.Pan04.Enabled:=False;
    fNueAsociado.Pan05.Enabled:=False;
//    fNueAsociado.Pan06.Enabled:=False;
    fNueAsociado.Showmodal;
  Finally
    DM1.cdsUPro.Close;
    fNueAsociado.Close;
    fNueAsociado.free;
  End;

end;

procedure TfMatAso_old.DbLlRegPenExit(Sender: TObject);
begin
 If Trim(DbLlRegPen.Text)='03' Then
    DbLlAfp.Enabled := True
 Else
    Begin
       DbLlAfp.Text:='';
       DbLlAfp.Enabled := False;
    End;

end;

procedure TfMatAso_old.BitSocioClick(Sender: TObject);
var xSQL,xAsoId:String;
begin
  xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;

  If DM1.xCnd<>'VRF' Then
     Begin
      xSQL:='SELECT A.ASOID,A.FHREGISTRO,A.USUARIO,A.OFDESID,B.OFDESNOM FROM ASO003 A , APO110 B WHERE ASOID='+QuotedStr(Trim(xAsoId))+' AND DATSOCIOECO IS NOT NULL AND IDESTADO IS NULL AND A.OFDESID=B.OFDESID   ' ;
      DM1.cdsQry.Close; DM1.cdsQry.DataRequest(xSQL); DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount > 0 Then
         Begin
            MessageDlg(' Los Datos Del ASOCIADO Se Encuentran Pendiente De Verificación Por El SUPERVISOR De La Oficina De  :  '+DM1.cdsQry.FieldByName('OFDESNOM').AsString  , mtError,[mbOk],0);
            DM1.cdsQry.Close;
            Exit;
         End;
     DM1.cdsQry.Close;
     End;

  Try
    fDatosSocEco := TfDatosSocEco.create(self);
    xSQL:='SELECT ESTCIVID,ESTCIVDES FROM TGE125 ORDER BY ESTCIVID';
    DM1.cdsUSES.Close;  DM1.cdsUSES.DataRequest(xSQL);  DM1.cdsUSES.Open;

    xSQL:='SELECT GRAINSID,GRAINSABR FROM TGE119 ORDER BY GRAINSID';
    DM1.cdsGradoI.Close; DM1.cdsGradoI.DataRequest(xSQL); DM1.cdsGradoI.Open;

    xSQL:='SELECT TIPVIVID,TIPVIVABR FROM APO109 ORDER BY TIPVIVID';

 //   DM1.cdsUPago.Close; DM1.cdsUPago.DataRequest(xSQL); DM1.cdsUPago.Open;

    DM1.cdsCViv.Close; DM1.cdsCViv.DataRequest(xSql); DM1.cdsCViv.Open;

    xSQL:='SELECT PARENID,PARENABR FROM TGE149 ORDER BY PARENID';
    DM1.cdsTVia.Close; DM1.cdsTVia.DataRequest(xSQL); DM1.cdsTVia.Open;

    If DM1.xCnd='VRF' Then
       Begin
// Inicio: HPP_201104_ASO
//          fDatosSocEco.grpDatSoc.Enabled:=False;
//          fDatosSocEco.BitGrabar.Enabled:=False;
// Fin: HPP_201104_ASO
       End;

    fDatosSocEco.Showmodal;
  Finally

//    DM1.cdsUSES.Close; DM1.cdsUse.Close; DM1.cdsUPago.Close; DM1.cdsTVia.Close;
    fDatosSocEco.free;
  End;

end;

procedure TfMatAso_old.BitMstApoClick(Sender: TObject);
var xSQL:String;
begin
  Try
    fRegApor := TfRegApor.create(self);
    fRegApor.Showmodal;
  Finally
    fRegApor.free;
  End;

end;

procedure TfMatAso_old.ActivaFoco;
var i,xFoco:Integer;
Begin
       For i := 0 To FMantAsociado.ComponentCount-1 do
           Begin
             If (FMantAsociado.Components[i].ClassName = 'TwwDBEdit') Or (FMantAsociado.Components[i].ClassName = 'TwwDBDateTimePicker') Or (FMantAsociado.Components[i].ClassName = 'TwwDBLookupCombo') Then
              Begin
                 If TwwDBEdit(FMantAsociado.Components[i]).Enabled Then
                     Begin
                       //If Not TwwDBEdit(fMatAso.Components[i]).ReadOnly Then
                         // Begin
                            xFoco:=0;
                            //TwwDBEdit(fMatAso.Components[i]).SetFocus;
                            Break;
                        //  End;
                     End;

                 If TwwDBDateTimePicker(FMantAsociado.Components[i]).Enabled Then
                     Begin
                      // If Not TwwDBDateTimePicker(fMatAso.Components[i]).ReadOnly Then
                        //  Begin
                            xFoco:=1;
                            //TwwDBDateTimePicker(fMatAso.Components[i]).SetFocus;
                            Break;
                        //  End;
                     End;

                 If TwwDBLookupCombo(FMantAsociado.Components[i]).Enabled Then
                     Begin
                     //  If Not TwwDBLookupCombo(fMatAso.Components[i]).ReadOnly Then
                        //  Begin
                            xFoco:=2;
                            //TwwDBLookupCombo(fMatAso.Components[i]).SetFocus;
                            Break;
                        //  End;
                     End;
              End;

            End;

            Case xFoco Of
                 0:TwwDBEdit(FMantAsociado.Components[i]).SetFocus;
                 1:TwwDBDateTimePicker(FMantAsociado.Components[i]).SetFocus;
                 2:TwwDBLookupCombo(FMantAsociado.Components[i]).SetFocus;
            End;
end;


procedure TfMatAso_old.FormClose(Sender: TObject; var Action: TCloseAction);
var xAsoId:String;
begin
   xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
   DM1.cdsAso.Close;  DM1.cdsAso.DataRequest('SELECT * FROM APO201 WHERE ASOID='+QuotedStr(Trim(xAsoId)));  DM1.cdsAso.Open;

end;

procedure TfMatAso_old.ImageBotonClick(Sender: TObject);
begin
  DM1.xSgr:='IDE';
  fIdentAso:=TfIdentAso.Create(self);
  fIdentAso.ImagAso.Picture:=FMantAsociado.ImagAso.Picture;  fIdentAso.ImaFirma.Picture:=FMantAsociado.ImaFirma.Picture;
  fIdentAso.Showmodal;  fIdentAso.free;

end;


function TfMatAso_old.CodReg: String;
var xSQL,xResAbn:String;
    xCorAbn:Integer;
begin
DM1.cdsListaCred.Close;
xSQL:='SELECT CREAREA,CORREANO,TIPO,ASOID FROM CRE206 WHERE CORREANO='+QuotedStr(Copy(DateToStr(DM1.FechaSys),7,4))+' AND CREAREA=''ASO'' ';
DM1.cdsListaCred.DataRequest(xSQL);
DM1.cdsListaCred.Open;
If DM1.cdsListaCred.RecordCount=1 Then
   Begin
     xCorAbn:=StrToInt(DM1.cdsListaCred.fieldbyname('ASOID').AsString) + 1;
     xResAbn:=Format('%.10d',[xCorAbn]);
     DM1.cdsListaCred.Edit;
     DM1.cdsListaCred.fieldbyname('ASOID').AsString:=xResAbn;
     DM1.cdsListaCred.ApplyUpdates(0);
     Result:=xResAbn;
   End;
DM1.cdsListaCred.Close;

end;

procedure TfMatAso_old.BitPrestClick(Sender: TObject);
var xAsoId:String;
begin
  Try
     fMstPrest:= TfMstPrest.create(self);
     xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
     Try
        FOtorPre.LimPrestamos;
        FOtorPre.CrgPrestamos;
     Except
     End;
     fMstPrest.Showmodal;
  Finally
     fMstPrest.free;
  End;

end;

function TfMatAso_old.MaxNroItem(xAsoId: String): String;
var xSQL:String;
begin
   xSQL:='SELECT MAX(ITEM) ITEM FROM ASO007 WHERE ASOID='+QuotedStr(xAsoId);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
      Begin
         Result:=DM1.cdsQry.FieldByName('ITEM').AsString;
      End
   Else
      Result:='000';

   DM1.cdsQry.Close;


end;

procedure TfMatAso_old.BitVerificaClick(Sender: TObject);
VAR XSQL,xultimact,xultusu,xval:STRING;

begin


  IF DM1.xofides<>'01' then
     Begin
      MessageDlg('Esta opción solo esta activa para la Sede Central' , mtError,[mbOk],0);
      exit
     End;

  XSQL := 'SELECT * FROM VAL_DAT_ASO WHERE ASOID='''+DM1.cdsAso.FieldByName('ASOID').AsString+''' order by fecval desc ';
  DM1.cdsReclamo.Close;
  DM1.cdsReclamo.DataRequest(XSQL);
  DM1.cdsReclamo.Open;
  xultimact := DM1.cdsReclamo.FieldByName('FECVAL').AsString;
  xultusu   := DM1.cdsReclamo.FieldByName('USUVAL').AsString;
  If DM1.cdsReclamo.RecordCount > 0 then xval:= 'Ultima Validación: '+xultimact+ 'Por: '+xultusu else xval:='';

  if MessageDlg(xval+'  ¿Desea Validar La Información de Asociado?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
     Begin
        XSQL:=
       'INSERT INTO VAL_DAT_ASO (ASOID,FECVAL,USUVAL,EQUUSU,OFIUSU) VALUES ('+
        QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+',SYSDATE,'+
        QuotedStr(DM1.wUsuario)+','+
        QuotedStr(DM1.wcomputadora)+','+
        QuotedStr(DM1.xofides)+')';
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     End;
   DM1.cdsReclamo.Close;
   DM1.cdsReclamo.IndexFieldNames :='';
end;


end.
