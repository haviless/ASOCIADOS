unit ASO801;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFMigraAso = class(TForm)
    GbAsociados: TGroupBox;
    Label18: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Panel3: TPanel;
    edtCodMod: TEdit;
    Panel1: TPanel;
    Edit1: TEdit;
    Panel2: TPanel;
    edtApePat: TEdit;
    Panel4: TPanel;
    edtApeMat: TEdit;
    Panel5: TPanel;
    edtNomCli: TEdit;
    Panel6: TPanel;
    edtAno: TEdit;
    Panel7: TPanel;
    Edit3: TEdit;
    Panel8: TPanel;
    edtNumExp: TEdit;
    Panel9: TPanel;
    Edit5: TEdit;
    Panel10: TPanel;
    edtFecExp: TEdit;
    Panel11: TPanel;
    Edit7: TEdit;
    Panel12: TPanel;
    edtTipBen: TEdit;
    BtnMigrar: TBitBtn;
    BitSalir: TBitBtn;
    Label2: TLabel;
    Panel13: TPanel;
    edtDNI: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure BtnMigrarClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    function VerificaCaracterXCaractar(xCampo1,xCampo2,MargeDif:string):Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMigraAso: TFMigraAso;

implementation

uses ASODM;

{$R *.dfm}

procedure TFMigraAso.FormActivate(Sender: TObject);
begin
edtCodMod.Text  := DM1.cdsAso.FieldByName('COD_MOD').AsString;
edtApePat.Text  := DM1.cdsAso.FieldByName('APE_PAT').AsString;
edtApeMat.Text  := DM1.cdsAso.FieldByName('APE_MAT').AsString;
edtNomCli.Text  := DM1.cdsAso.FieldByName('NOM_CLI').AsString;
edtAno.Text     := DM1.cdsAso.FieldByName('ANO').AsString;
edtNumExp.Text  := DM1.cdsAso.FieldByName('NUM_EXP').AsString;
edtFecExp.Text  := DM1.cdsAso.FieldByName('FEC_EXP').AsString;
edtDNI.Text     := DM1.cdsAso.FieldByName('LIB_ELE').AsString;
If DM1.cdsAso.FieldByName('COD_BEN').AsString = '01' Then edtTipBen.Text := 'RETIRO'
Else If DM1.cdsAso.FieldByName('COD_BEN').AsString = '02' Then edtTipBen.Text := 'INVALIDEZ'
Else If DM1.cdsAso.FieldByName('COD_BEN').AsString = '03' Then edtTipBen.Text := 'SEPELIO'
Else If DM1.cdsAso.FieldByName('COD_BEN').AsString = '04' Then edtTipBen.Text := 'CAPITAL DE DEUDOS'
Else If DM1.cdsAso.FieldByName('COD_BEN').AsString = '05' Then edtTipBen.Text := 'FALLECIMIENTO'
Else If DM1.cdsAso.FieldByName('COD_BEN').AsString = '51' Then edtTipBen.Text := 'FCTO/LIB';
end;

procedure TFMigraAso.BtnMigrarClick(Sender: TObject);
Var xSQL, xAsoId, xAsocodAux,xAsodni,xMigSinDni,Xnombres1,Xnombres2:String;
Boton,Dniapo201:Integer;

begin
   If DM1.cdsAso.FieldByName('MIGRADO').AsString = 'S' Then
   Begin
     MessageDlg('Este Registro Ya Fue Migrado Por '+DM1.cdsAso.FieldByName('USUMIG').AsString , mtError, [mbOk], 0);
     Exit;
   End;

   Dniapo201:=0;
   xSQL := 'SELECT * FROM APO201 WHERE ASODNI = '+QuotedStr(DM1.cdsAso.FieldByName('LIB_ELE').AsString) ;
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   Dniapo201:= DM1.cdsQry.RecordCount;

   Xnombres1:= TRIM(DM1.cdsAso.FieldByName('NOM_GEN').AsString);
   Xnombres2:= TRIM(DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString);
   {If VerificaCaracterXCaractar(Xnombres1,Xnombres2,'3') Then
       Begin
         if MessageDlg('¿...El Asociado Ya existe en el Maestro desea continuar...?'+#13+'ASOCIADOS  : '+Xnombres1+#13+'ASOCIADOS  : '+Xnombres2,mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
       End;}

   If (DM1.cdsQry.RecordCount > 0) and (Copy(DM1.CrgArea(DM1.wUsuario),6,2)='03') Then
      Begin
        if MessageDlg('¿...El DNI YA SE ENCUENTRA EN ASOCIADOS...?'+#13+#13+'BENEFICIOS : '+Xnombres1+#13+'ASOCIADOS  : '+Xnombres2,mtConfirmation, [mbYes, mbNo], 0) = mrNo then Exit;
        Boton := Application.MessageBox ('¿...DESEA PASARLO SIN DNI...?','Migración de  Asociados',MB_YESNO+MB_ICONQUESTION);
        If Boton = ID_NO Then Exit;
      End;

   If (DM1.cdsQry.RecordCount > 0) and (Copy(DM1.CrgArea(DM1.wUsuario),6,2)<>'03') Then
     Begin
       MessageDlg('No Se Puede Migrar Registros Con El Mismo DNI' , mtError, [mbOk], 0);
       Exit;
     End;

   xSQL := 'SELECT * FROM APO201 WHERE ASONCTA = '+QuotedStr(DM1.cdsAso.FieldByName('CTA_CTE').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then
   Begin
     MessageDlg('No Se Puede Migrar Registros Con La Misma Cuenta' , mtError, [mbOk], 0);
     Exit;
   End;

   xSQL := 'SELECT * FROM APO201 WHERE ASOCODMOD = '+QuotedStr(DM1.cdsAso.FieldByName('COD_MOD').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then  MessageDlg('Se Ha Encontrado Un Asociado Con El Mismo CODIGO MODULAR' , mtError, [mbOk], 0);
   xSQL := 'SELECT * FROM APO201 WHERE ASOAPENOM = '+QuotedStr(DM1.cdsAso.FieldByName('NOM_GEN').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 0 Then  MessageDlg('Se Ha Encontrado Un Asociado Con Los Mismos Apellidos y Nombres' , mtError, [mbOk], 0);

   Boton := Application.MessageBox ('¿Esta Seguro De Actualizar Datos Del Asociado?','Mantenimiento y Control De Asociados',MB_YESNO+MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin

     if  (Copy(DM1.CrgArea(DM1.wUsuario),6,2)= '03') and (Dniapo201>0 )then
         Begin xAsoDni:='';xMigSinDni:='X' End else
         Begin xAsoDni:= DM1.cdsAso.FieldByName('LIB_ELE').AsString; xMigSinDni:='' End;

     Screen.Cursor:=crHourGlass;
     xAsoId     := DM1.AsignaAsoId('APO201');
     xAsocodAux := DM1.AsignaNroAux('APO201',DM1.cdsAso.FieldByName('COD_MOD').AsString);
     xSQL := 'INSERT INTO APO201 ( ASOID, ASOCODMOD, ASOCODAUX, ASOAPEPAT, ASOAPEPATDNI, ASOAPEMAT, ASOAPEMATDNI, ASONOMBRES, ASONOMDNI, ASOAPENOM, ASOAPENOMDNI,'
     +' USEID, ASODNI, ASONCTA, USUARIO, FREG, HREG, TCREACION, ASOSITID, ASOTIPID )  VALUES ('
     +QuotedStr(xAsoId)+','
     +QuotedStr(DM1.cdsAso.FieldByName('COD_MOD').AsString)+','
     +QuotedStr(xAsocodAux)+','
     +QuotedStr(DM1.cdsAso.FieldByName('APE_PAT').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('APE_PAT').AsString)+','
     +QuotedStr(DM1.cdsAso.FieldByName('APE_MAT').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('APE_MAT').AsString)+','
     +QuotedStr(DM1.cdsAso.FieldByName('NOM_CLI').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('NOM_CLI').AsString)+','
     +QuotedStr(DM1.cdsAso.FieldByName('NOM_GEN').AsString)+','+QuotedStr(DM1.cdsAso.FieldByName('NOM_GEN').AsString)+','
     +QuotedStr(DM1.cdsAso.FieldByName('COD_USE').AsString)+','
     +QuotedStr(xAsoDni)+','
     +QuotedStr(DM1.cdsAso.FieldByName('CTA_CTE').AsString)+','
     +QuotedStr(DM1.wUsuario)+','+QuotedStr(DateToStr(DM1.FechaSys))+',SYSDATE,''01'', ''NI'', ''NI'' ) ';

     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     DM1.cdsAso.Edit;
     DM1.cdsAso.FieldByName('ASOID').AsString  := xAsoId;
     DM1.cdsAso.FieldByName('USUMIG').AsString := dm1.wUsuario;
     DM1.cdsAso.FieldByName('FECMIG').AsString := DateToStr(DM1.FechaSys);
     DM1.cdsAso.FieldByName('MIGRADO').AsString := 'S';
     DM1.cdsAso.FieldByName('ASOCODMOD').AsString := DM1.cdsAso.FieldByName('COD_MOD').AsString;
     DM1.cdsAso.FieldByName('ASOCODAUX').AsString := xAsocodAux;
     DM1.cdsAso.FieldByName('MIGSINDNI').AsString := xMigSinDni;
     DM1.cdsAso.ApplyUpdates(0);
     Screen.Cursor:=crDefault;
     MessageDlg('Registro Fue Migrado con Exito !' , mtInformation, [mbOk], 0);

   End;
end;

procedure TFMigraAso.BitSalirClick(Sender: TObject);
begin
FMigraAso.Close;
end;



function TFMigraAso.VerificaCaracterXCaractar(xCampo1, xCampo2,
  MargeDif: string): Boolean;
var nDifLong,nfor,i,c1,c2,nDif:integer;
    xCampoMayor,xCampoMenor:string;
begin

 //Diferencia entre logitudes (Abs Valor Absoluto)
   nDifLong:= abs(Length(TRim(xCampo1))-Length(Trim(xCampo2)));

 //Cual de los dos campos tiene mayor longitud para el For y para la comparacion
   If  Length(TRim(xCampo1))>Length(TRim(xCampo2)) Then
       Begin
         nfor:=Length(TRim(xCampo1));
         xCampoMayor:=TRim(xCampo1);
         xCampoMenor:=TRim(xCampo2);
       End
   Else If Length(TRim(xCampo2))> Length(TRim(xCampo1)) Then
       Begin
         nfor:=Length(TRim(xCampo2));
         xCampoMayor:=TRim(xCampo2);
         xCampoMenor:=TRim(xCampo1);
       End
   Else
       Begin
         nfor:=Length(TRim(xCampo1));
         xCampoMayor:=TRim(xCampo1);
         xCampoMenor:=TRim(xCampo2);
       End;

   c1:=1;c2:=1;nDif:=0;
   For i:=0 To nfor do
     Begin

       If copy(TRim(xCampoMayor),c1,1)<>copy(TRim(xCampomenor),c2,1) Then
          Begin
            nDif:=nDif+1;
            If nDifLong>0  Then
               Begin
                 c2:=c2-1;
                 nDiflong:=nDiflong-1;
               End;
          End;
          c1:=c1+1;
          c2:=c2+1;
     End;

    if ndif>StrToInt(MargeDif) Then Result:=False else Result:=True;

end;

end.
