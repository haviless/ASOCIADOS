// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO264.pas
// Formulario              :  FvalregCADAPS
// Fecha de Creación       :  23/08/2016
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Ingresar la fecha de recepción del  CADAPS
// HPC_201607_ASO : Creación
// HPC_201711_ASO : Verificar el Tipo de Servidor

unit ASO264;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdbdatetimepicker, wwdblook, Wwdbdlg, Mask,
  wwdbedit, ExtCtrls;

type
  TFvalregCADAPS = class(TForm)
    GroupBox2: TGroupBox;
    Label6: TLabel;
    dbdtpfecrecCADAPS: TwwDBDateTimePicker;
    BitGrabar: TBitBtn;
    Bitsalir: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel8: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    lblusureg: TLabel;
    lblfecact: TLabel;
    lblofireg: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure BitsalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
    procedure dbdtpfecrecCADAPSExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FvalregCADAPS: TFvalregCADAPS;

implementation

uses ASODM;

{$R *.dfm}

procedure TFvalregCADAPS.FormActivate(Sender: TObject);
begin
  lblusureg.Caption := DM1.wUsuario+' - '+DM1.CrgDescrip('USERID='+QuotedStr(Trim(DM1.wUsuario)), 'TGE006', 'USERNOM');
  lblfecact.Caption := DateToStr(dm1.FechaSys);
  lblofireg.Caption := DM1.CrgDescrip('OFDESID='+QuotedStr(Trim(DM1.cdsAsociados.FieldByName('OFIREGAUTDESAPO').AsString)), 'APO110', 'OFDESNOM');
end;

procedure TFvalregCADAPS.BitsalirClick(Sender: TObject);
begin
   Close;
end;



procedure TFvalregCADAPS.BitGrabarClick(Sender: TObject);
Var xcorrelativo, xestCADAPS, xnec2davez, xarcCADAPS, xSql, xtipser:String;
    xdiastrans: Double;
begin

   If Trim(dbdtpfecrecCADAPS.Text) = '' Then
   Begin
       MessageDlg('Se debe ingresar fecha de recepción CADAPS', mtError, [mbOk], 0);
       dbdtpfecrecCADAPS.SetFocus;
       Exit;
   End;

   If MessageDlg('¿Seguro de registrar fecha de recepción de CADAPS?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      xSql := 'UPDATE APO201 SET USURECCADAPS = '+QuotedStr(DM1.wUsuario)+', FECRECCADAPS = TO_DATE('+QuotedStr(dbdtpfecrecCADAPS.text)+',''DD/MM/YYYY'') WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      // Validación CADAPS
      // Recupetando tipo de servidor

// Inicio HPC_201711_ASO : Verificar el Tipo de Servidor
      xSql:='SELECT LPAD(COD_SERVIDOR,2,''0'') TIPSER, '
           +   ' case when LPAD(COD_SERVIDOR, 2, ''0'')=''00'' then 5 '
           +   '   when LPAD(COD_SERVIDOR, 2, ''0'')=''01'' then 1 '
           +   '   when LPAD(COD_SERVIDOR, 2, ''0'')=''02'' then 6 '
           +   '   when LPAD(COD_SERVIDOR, 2, ''0'')=''03'' then 2 '
           +   '   when LPAD(COD_SERVIDOR, 2, ''0'')=''04'' then 7 '
           +   '   when LPAD(COD_SERVIDOR, 2, ''0'')=''05'' then 3 '
           +   '   when LPAD(COD_SERVIDOR, 2, ''0'')=''06'' then 8 '
           +   '   when LPAD(COD_SERVIDOR, 2, ''0'')=''07'' then 9 '
           +   '   when LPAD(COD_SERVIDOR, 2, ''0'')=''08'' then 4 '
           +   '   else '
           +   '    99 '
           +   ' end orden '
      +' FROM ASO_PAD_DES_HIS WHERE DNI = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASODNI').AsString)
      +' AND CODPAD IN (SELECT MAX(CODPAD) FROM ASO_PAD_DES_HIS WHERE DNI = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASODNI').AsString)+' AND COD_SERVIDOR IS NOT NULL) '
      +'order by orden';
// Fin   HPC_201711_ASO : Verificar el Tipo de Servidor

      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSql);
      DM1.cdsQry2.Open;
      xtipser := DM1.cdsQry2.FieldByName('TIPSER').AsString;

      // ¿Requiere firma por segunda vez?
      xnec2davez := 'N';
      If DM1.cdsAsociados.FieldByName('AUTODESC').AsString  <> 'X' Then
         If Trim(DM1.cdsAsociados.FieldByName('FECREG').AsString) = '' Then
             xnec2davez := 'S';

      // ¿Existe carta CADAPAS en archivos?
      xSql := 'SELECT Count(1) EXISTE FROM AUT_DES_APORTES WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)
      +' AND (ANOENV IS NOT NULL AND  ENVIO IS NOT NULL AND ENVAUTDES IS NOT NULL AND CORENVAUTDES IS NOT NULL)';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSql);
      DM1.cdsQry2.Open;
      If DM1.cdsQry2.FieldByName('EXISTE').AsInteger > 0 Then
          xarcCADAPS := 'S'
      Else
          xarcCADAPS := 'N';

      // Evaluaciòn CADAPS
      xsql := 'SELECT NVL(TRUNC(TO_DATE('+QuotedStr(dbdtpfecrecCADAPS.Text)+')-FECAUTDESAPO),0) DIASTRANS FROM APO201 WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xdiastrans := DM1.cdsQry.FieldByName('DIASTRANS').AsInteger;
      If (
            (
             ((xtipser = '01') Or (xtipser = '08')) And
             (DM1.cdsAsociados.FieldByName('AUTDESAPO').AsString = 'S') And
             (DM1.cdsAsociados.FieldByName('ASOAPTSER').AsString = 'S') And
             (xdiastrans <= 30) And
             (xarcCADAPS = 'N')
            )
            Or
            (DM1.cdsAsociados.FieldByName('FECREG').AsString <> '')
         ) Then
         xestCADAPS := 'VALIDA'
      Else
         xestCADAPS := 'NO VALIDA';
      xSql := 'SELECT LPAD(NVL(MAX(REGCOR),0)+1,5,0) CORRELATIVO FROM ASO_VAL_CADAPS WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      xcorrelativo := DM1.cdsQry.FieldByName('CORRELATIVO').AsString;
      xSql := 'UPDATE ASO_VAL_CADAPS SET REGVIG = ''N'' WHERE ASOID = '+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      xSql := 'INSERT INTO ASO_VAL_CADAPS (ASOID, ASODNI, ASOAPENOM, UPROID, UPAGOID, USEID, DPTOID_UGEL, AUTDESAPO, FECRECCADAPS,'
      +' FECVALCADAPS, ASOTIPID, FECAUTDESAPO, TIPSER, ASOAPTSER, DIATRAAUTDESAPO, EXIARCCADAPS, NECCADAPS2DAVEZ, EVACADAPS, REGCOR, REGVIG)'
      +' VALUES ('+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString)+','
      +QuotedStr(DM1.cdsAsociados.FieldByName('ASODNI').AsString)+','
      +QuotedStr(DM1.cdsAsociados.FieldByName('ASOAPENOMDNI').AsString)+','
      +QuotedStr(DM1.cdsAsociados.FieldByName('UPROID').AsString)+','
      +QuotedStr(DM1.cdsAsociados.FieldByName('UPAGOID').AsString)+','
      +QuotedStr(DM1.cdsAsociados.FieldByName('USEID').AsString)+','
      +QuotedStr(DM1.cdsAsociados.FieldByName('DPTOID_UGEL').AsString)+','
      +QuotedStr(DM1.cdsAsociados.FieldByName('AUTDESAPO').AsString)
      +', TO_DATE('+QuotedStr(dbdtpfecrecCADAPS.text)+',''DD/MM/YYYY''), SYSDATE,'
      +QuotedStr(DM1.cdsAsociados.FieldByName('ASOTIPID').AsString)
      +', TO_DATE('+QuotedStr(DM1.cdsAsociados.FieldByName('FECAUTDESAPO').AsString)+',''DD/MM/YYYYHH24:MI:SS''),'
      +QuotedStr(xtipser)+','
      +QuotedStr(DM1.cdsAsociados.FieldByName('ASOAPTSER').AsString)+','
      +DM1.cdsAsociados.FieldByName('DIAS_TRANS_AUTDESAPO').AsString+','
      +QuotedStr(xarcCADAPS)+','
      +QuotedStr(xnec2davez)+','
      +QuotedStr(xestCADAPS)+','
      +QuotedStr(xcorrelativo)+','
      +QuotedStr('S')+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);

// Inicio   HPC_201711_ASO : Verificar el Tipo de Servidor
      if xnec2davez ='S' then
      begin
         xSQL:='UPDATE APOSINCARTA '
              +  ' SET FECREG=SYSDATE, USUREG='+QuotedStr( DM1.wUsuario)+', '
              +       'OFDESID='+QuotedStr( DM1.wofides )+' '
              +' WHERE ASOID='+QuotedStr(DM1.cdsAsociados.FieldByName('ASOID').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xSql);
      end;
// Fin   HPC_201711_ASO : Verificar el Tipo de Servidor

      Bitsalir.OnClick(Bitsalir);
   End;
end;

procedure TFvalregCADAPS.dbdtpfecrecCADAPSExit(Sender: TObject);
begin
  If dbdtpfecrecCADAPS.Date > DM1.FechaSys Then
  Begin
     MessageDlg('Fecha registrada no puede ser mayor a la fecha de hoy.', mtError, [mbOk], 0);
     dbdtpfecrecCADAPS.SetFocus;
     Screen.Cursor := crDefault;
     Exit;
  End;
  If dbdtpfecrecCADAPS.Date < DM1.cdsAsociados.FieldByName('FECAUTDESAPO').AsDateTime Then
  Begin
     MessageDlg('Fecha registrada es menor a la fecha de CADAPS.', mtError, [mbOk], 0);
     dbdtpfecrecCADAPS.SetFocus;
     Screen.Cursor := crDefault;
     Exit;
  End;


End;

procedure TFvalregCADAPS.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
    begin
     Key := #0;
     Perform(CM_DialogKey, VK_TAB, 0);
    end;
end;



end.
