// Unidad                    : ASO151.pas
// Formulario                : Fgenenvioonp
// Fecha de Creación         : 2013
// Autor                     : Equipo de Desarrollo de Sistemas DM
// Objetivo                  : Generación y consulta de registros de Envío de datos ONP

// Actualizaciones:
// HPC_201312_ASO            : 12/11/2013 Generación y consulta de registros de Envío de datos ONP
// SPP_201313_ASO            : Se realiza el pase a producción a partir del HPC_201312_ASO
// HPC_201701_ASO            : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

unit ASO151;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Wwdbigrd, Grids, Wwdbgrid, StdCtrls, db, Spin, ExtCtrls;

type
  TFgenenvioonp = class(TForm)
    dbgcabecera: TwwDBGrid;
    btncerrar: TBitBtn;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    seano: TSpinEdit;
    semes: TSpinEdit;
    BitGrabar: TBitBtn;
    btntransferir: TBitBtn;
    Label1: TLabel;
    Label3: TLabel;
    lblTotal: TLabel;
    lblEnviar: TLabel;
    Label9: TLabel;
    lblNoEnviar: TLabel;
    btnmarcar: TBitBtn;
    Label2: TLabel;
    lblNumero: TLabel;
    btnaExcelEnviados: TBitBtn;
    btnaExcelNoEnviados: TBitBtn;
    procedure dbgcabeceraDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitGrabarClick(Sender: TObject);
    procedure btntransferirClick(Sender: TObject);
    procedure btnmarcarClick(Sender: TObject);
    procedure btnaExcelEnviadosClick(Sender: TObject);
    procedure btnaExcelNoEnviadosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ntotal, nsienviar, nnoenviar: integer;
    procedure buscardata;
    procedure mostrardata;
  end;

var
  Fgenenvioonp: TFgenenvioonp;

implementation

uses ASODM, ASO150;

{$R *.dfm}

procedure TFgenenvioonp.dbgcabeceraDblClick(Sender: TObject);
begin
  buscardata;
end;

procedure TFgenenvioonp.buscardata;
Var xssql, xsllave:String;
begin

  xssql := 'SELECT '
       +'        COUNT(*) TOTAL, '
       +'        SUM(CASE WHEN ENVIAR = ''S'' THEN 1 ELSE 0 END) SIENVIAR, '
       +'        SUM(CASE WHEN ENVIAR = ''N'' THEN 1 ELSE 0 END) NOENVIAR  '
       +'  FROM  '
       +'      ( '
       +'      SELECT '
       +'           ( CASE WHEN EXTRACT(YEAR FROM NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE),ASOFECNAC),''month'')) >= 85 '
       +'           OR ASODNI IS NULL '
       +'           OR ASODNI = '''' '
       +'           THEN ''N'' '
       +'                ELSE ''S'' '
       +'           END ) ENVIAR '
       +'  FROM APO201 '
       +'  WHERE ASOTIPID = ''CE'' AND REGPENID = ''02'' AND NVL(FALLECIDO, ''N'') = ''N'' '
       +'  ) ';

  DM1.cdsQry20.Close;
  DM1.cdsQry20.DataRequest(xssql);
  DM1.cdsQry20.Open;

  ntotal := DM1.cdsQry20.FieldByName('TOTAL').AsInteger;
  nsienviar := DM1.cdsQry20.FieldByName('SIENVIAR').AsInteger;
  nnoenviar := DM1.cdsQry20.FieldByName('NOENVIAR').AsInteger;

  lblTotal.Caption := IntToStr(ntotal);
  lblEnviar.Caption := IntToStr(nsienviar);
  lblNoEnviar.Caption := IntToStr(nnoenviar);

  If lblTotal.Caption <> '' Then
     Begin
     BitGrabar.Enabled := true;
     btnmarcar.Enabled := true;
     End;

  xssql := 'SELECT ASOID, ASODNI, ASOCODMOD, ASONCTA, SITCTA, '
         +'       ASOAPENOM, ASOFECNAC, '
         +'       EXTRACT(YEAR FROM NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE),ASOFECNAC),''month'')) EDAD, '
         +'       ZIPID, ACTARCREN, FALLECIDO, INVALIDEZ, '
         +'       CODPENSION, CODLEYPEN, '
         // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         +' CODPRE, '
         // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         +'       ( CASE WHEN EXTRACT(YEAR FROM NUMTOYMINTERVAL(MONTHS_BETWEEN(TRUNC(SYSDATE),ASOFECNAC),''month'')) >= 85 OR ASODNI IS NULL OR ASODNI = '''' '
         +'              THEN ''N'' '
         +'              ELSE ''S'' '
         +'         END ) ENVIAR  '
         +' FROM APO201 '
         +' WHERE ASOTIPID = ''CE'' '
         +'       AND REGPENID = ''02'' '
         +'       AND NVL(FALLECIDO, ''N'') = ''N'' '
         +' ORDER BY ASOAPENOM ';

  DM1.cdsQry20.Close;
  DM1.cdsQry20.DataRequest(xssql);
  DM1.cdsQry20.Open;

  dbgcabecera.Refresh;
  dbgCabecera.Selected.Clear;
  dbgCabecera.Selected.Add('ASOID'#9'10'#9'Id~del socio'#9#9);
  dbgCabecera.Selected.Add('ASODNI'#9'10'#9'DNI'#9#9);
  dbgCabecera.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
  dbgCabecera.Selected.Add('ASONCTA'#9'12'#9'Cuenta'#9#9);
  dbgCabecera.Selected.Add('SITCTA'#9'3'#9'Sit.~Cta.'#9#9);
  dbgCabecera.Selected.Add('ASOAPENOM'#9'40'#9'Apellidos~nombres'#9#9);
  dbgCabecera.Selected.Add('ASOFECNAC'#9'10'#9'Fecha~nacimiento'#9#9);
  dbgCabecera.Selected.Add('EDAD'#9'3'#9'Edad'#9#9);
  dbgCabecera.Selected.Add('ZIPID'#9'6'#9'ZIP'#9#9);
  dbgCabecera.Selected.Add('ACTARCREN'#9'1'#9'Flag~RENIEC'#9#9);
  dbgCabecera.Selected.Add('FALLECIDO'#9'1'#9'Flag~fallecido'#9#9);
  dbgCabecera.Selected.Add('INVALIDEZ'#9'1'#9'Flag~invalidez'#9#9);
  dbgCabecera.Selected.Add('CODPENSION'#9'8'#9'Código~pensión'#9#9);
  dbgCabecera.Selected.Add('CODLEYPEN'#9'2'#9'Cod.Ley~pensión'#9#9);
  // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  dbgCabecera.Selected.Add('CODPRE'#9'2'#9'Cod.~prestación'#9#9);
  // Fin HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  dbgCabecera.Selected.Add('ENVIAR'#9'2'#9'Enviar'#9#9);
  dbgCabecera.ApplySelected;

end;

procedure TFgenenvioonp.FormActivate(Sender: TObject);
Var
  xssql: String;
begin

  seano.Enabled := false;
  semes.Enabled := false;
  lblTotal.Caption := '';
  lblEnviar.Caption := '';
  lblNoEnviar.Caption := '';

  DM1.cdsQry.Close;
  DM1.cdsQry20.Close;

  If DM1.sFormaPara = 'CARGAR' Then
     Begin
     xssql := 'SELECT TO_CHAR(ADD_MONTHS(SYSDATE,-1),''YYYY'') PERIODO, TO_CHAR(ADD_MONTHS(SYSDATE,-1),''MM'') MES FROM DUAL ';
     DM1.cdsQry.DataRequest(xssql);
     DM1.cdsQry.Open;
     seano.Text := DM1.cdsQry.FieldByName('PERIODO').AsString;
     semes.Text := DM1.cdsQry.FieldByName('MES').AsString;
     DM1.cdsQry.Close;

     lblNumero.Caption := 'NUEVO';
     Fgenenvioonp.Caption := 'Generar nuevo envío';

     BitGrabar.Visible := true;
     btnmarcar.Visible := true;
     btntransferir.Visible := true;

     BitGrabar.Enabled := false;
     btnmarcar.Enabled := false;
     btnaExcelEnviados.Enabled := false;
     btnaExcelNoEnviados.Enabled := false;
     End;

  If DM1.sFormaPara = 'MOSTRAR' Then
     Begin
     seano.Text := Copy(DM1.cdsCreditos.FieldByName('PERIODO').AsString, 1, 4);
     semes.Text := Copy(DM1.cdsCreditos.FieldByName('PERIODO').AsString, 5, 2);
     lblNumero.Caption := DM1.cdsCreditos.FieldByName('NUMERO').AsString;
     Fgenenvioonp.Caption := 'Consultar detalle de envío';

     BitGrabar.Visible := false;
     btnmarcar.Visible := false;
     btntransferir.Visible := false;

     BitGrabar.Enabled := true;
     btnmarcar.Enabled := true;
     btnaExcelEnviados.Enabled := true;
     btnaExcelNoEnviados.Enabled := true;

     screen.Cursor := crHourGlass;
     mostrardata;
     screen.Cursor := crDefault;
     End;

end;

procedure TFgenenvioonp.btncerrarClick(Sender: TObject);
begin
 Fgenenvioonp.Close;
end;

procedure TFgenenvioonp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   DM1.cdsQry20.Close;
   Action := caFree;
end;

procedure TFgenenvioonp.BitGrabarClick(Sender: TObject);
Var
   archivo: TextFile;
   S, origen: String;
   xssql: String;
   xNumero: String;
   xCanreg: Double;
   xnomarc: String;
   xpath: String;
   MFile: TStringList;
   i: integer;
Begin

   screen.Cursor := crHourGlass;

   seano.Text := DM1.StrZero(seano.Text, 4);
   semes.Text := DM1.StrZero(semes.Text, 2);

   If Trim(seano.Text) = '' Then
   Begin
      MessageDlg('Ingrese el año del archivo a procesar', mtInformation, [mbOk], 0);
      screen.Cursor := crDefault;
      seano.SetFocus;
      Exit;
   End;

   If Trim(semes.Text) = '' Then
   Begin
      MessageDlg('Ingrese el mes del archivo a procesar', mtInformation, [mbOk], 0);
      screen.Cursor := crDefault;
      semes.SetFocus;
      Exit;
   End;

   screen.Cursor := crHourGlass;
   xssql := 'SELECT LPAD(MAX(NVL(NUMERO,0)+1),10,''0'') NUMERO FROM ASO_PAD_DES_CAB';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xssql);
   DM1.cdsQry.Open;

   If DM1.cdsQry.FieldByName('NUMERO').AsString = '' Then
      xNumero := '0000000001'
   Else
      DM1.xNumero := DM1.cdsQry.FieldByName('NUMERO').AsString;

   DM1.DCOM1.AppServer.SOLStartTransaction;
   Try

   xssql := 'INSERT INTO ASO_PAD_DES_CAB ( '
         + '        NUMERO, '
         + '        NOMARC, '
         + '        PERIODO, '
         + '        USUARIO, '
         + '        FECHOR, '
         + '        DPTOID, '
         + '        ASOTIPID, '
         + '        TIPOCARGA ) '
         + ' VALUES( '
         +          QuotedStr(DM1.xNumero) + ', '
         +          '''' + 'GENERACIÓN DE ENVÍO' + '''' + ', '
         +          QuotedStr(seano.Text + semes.Text) + ', '
         +          QuotedStr(DM1.wUsuario) + ', '
         + '        SYSDATE,  '
         +          '''' + '''' + ', '
         +          '''' + '''' + ', '
         +          '''' + DM1.sTipoCarga + ''''
         + ' )';

      DM1.DCOM1.AppServer.EjecutaSQL(xssql);
      DM1.DCOM1.AppServer.SOLCommit;
   Except
      DM1.DCOM1.AppServer.SOLRollBack;
      showmessage('No se pudo grabar la cabecera, por favor intente nuevamente');
      screen.Cursor := crDefault;
      Exit;
   End;

   xCanreg := 0;

   DM1.DCOM1.AppServer.SOLStartTransaction;
   Try

      Try
         DM1.cdsQry20.First;
         While not DM1.cdsQry20.Eof do
         Begin
            xssql := ' INSERT INTO ASO_ONP_DES_DET ( '
               + ' NUMERO, '
               + ' ASOID, '
               + ' ENV_ASODNI, '
               + ' ASOCODMOD, '
               + ' ASONCTA, '
               + ' SITCTA, '
               + ' ASOAPENOM, '
               + ' ASOFECNAC, '
               + ' ZIPID, '
               + ' ACTARCREN, '
               + ' FALLECIDO, '
               + ' INVALIDEZ, '
               + ' ENV_CODPENSION, '
               + ' ENV_CODLEYPEN, '
               // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
               + ' ENV_CODPRE, '
               // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
               + ' EDAD, '
               + ' FLAGENVIARONP '
               + ' ) '
               + ' VALUES ( '
               + QuotedStr(DM1.xNumero) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('ASOID').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('ASODNI').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('ASOCODMOD').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('ASONCTA').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('SITCTA').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('ASOAPENOM').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('ASOFECNAC').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('ZIPID').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('ACTARCREN').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('FALLECIDO').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('INVALIDEZ').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('CODPENSION').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('CODLEYPEN').AsString) + ', '
               // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
               + QuotedStr(DM1.cdsQry20.FieldByName('CODPRE').AsString) + ', '
               // Fin HPC_201701_ASO        : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
               + QuotedStr(DM1.cdsQry20.FieldByName('EDAD').AsString) + ', '
               + QuotedStr(DM1.cdsQry20.FieldByName('ENVIAR').AsString) + ' '
               + ' )';

            xCanreg := xCanreg + 1;
            DM1.DCOM1.AppServer.EjecutaSQL(xssql);
            DM1.cdsQry20.Next;
         End;

      Finally
      End;


      xssql := 'UPDATE ASO_PAD_DES_CAB '
         + '      SET CANREG = ' + FloatToStr(xCanreg)
         + '    WHERE NUMERO = ' + quotedstr(DM1.xNumero);
      DM1.DCOM1.AppServer.EjecutaSQL(xssql);

      DM1.DCOM1.AppServer.SOLCommit;
      DM1.xSgr := 'I';

      MessageDlg('La grabación ha concluido', mtInformation, [mbOk], 0);

      lblNumero.Caption := quotedstr(DM1.xNumero);
      BitGrabar.Enabled := false;
      btnmarcar.Enabled := false;
      btntransferir.Enabled := false;
      btnaExcelEnviados.Enabled := True;
      btnaExcelNoEnviados.Enabled := True;

   Except
      DM1.DCOM1.AppServer.SOLRollBack;
      xssql := 'DELETE FROM ASO_PAD_DES_CAB WHERE NUMERO=' + quotedstr(DM1.xNumero);
      DM1.DCOM1.AppServer.EjecutaSQL(xssql);
      showmessage('Ocurrio algun error.. No se pudo grabar el detalle');
      screen.Cursor := crDefault;
      exit;
   End;

   screen.Cursor := crDefault;
end;


procedure TFgenenvioonp.btntransferirClick(Sender: TObject);
Var
   xssql: String;
begin

   seano.Text := DM1.StrZero(seano.Text, 4);
   semes.Text := DM1.StrZero(semes.Text, 2);

   xssql := 'SELECT COUNT(*) CANT '
        +'  FROM ASO_PAD_DES_CAB '
        +'  WHERE (ESTADO IS NULL OR ESTADO <> ''A'') '
        +'        AND TIPOCARGA = ''ONP'' '
        +'        AND PERIODO = ' + '''' + DM1.StrZero(seano.Text, 4) + DM1.StrZero(semes.Text, 2) + '''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xssql);
   DM1.cdsQry.Open;

   If DM1.cdsQry.FieldByName('CANT').AsInteger > 0 Then
   Begin
      MessageDlg('El periodo ya fue procesado...', mtInformation, [mbOk], 0);
      screen.Cursor := crDefault;
      Exit;
   End;

   screen.Cursor := crHourGlass;
   buscardata;
   screen.Cursor := crDefault;

end;

procedure TFgenenvioonp.btnmarcarClick(Sender: TObject);
begin

  Screen.Cursor := crHourGlass;

  DM1.cdsQry20.Edit;
  If DM1.cdsQry20.FieldByName('ENVIAR').AsString = 'N' Then
     Begin
     DM1.cdsQry20.FieldByName('ENVIAR').AsString := 'S';
     nsienviar := nsienviar + 1;
     nnoenviar := nnoenviar - 1;
     End
  Else
     Begin
     DM1.cdsQry20.FieldByName('ENVIAR').AsString := 'N';
     nsienviar := nsienviar - 1;
     nnoenviar := nnoenviar + 1;
     End;

  DM1.cdsQry20.Post;

  lblTotal.Caption := IntToStr(ntotal);
  lblEnviar.Caption := IntToStr(nsienviar);
  lblNoEnviar.Caption := IntToStr(nnoenviar);

  Screen.Cursor := crDefault;
end;


procedure TFgenenvioonp.mostrardata;
Var xssql, xsllave:String;
begin

  xssql := 'SELECT '
       +'        COUNT(*) TOTAL, '
       +'        SUM(CASE WHEN FLAGENVIARONP = ''S'' THEN 1 ELSE 0 END) SIENVIAR, '
       +'        SUM(CASE WHEN FLAGENVIARONP = ''N'' THEN 1 ELSE 0 END) NOENVIAR  '
       +'  FROM ASO_ONP_DES_DET '
       +'  WHERE NUMERO = ' + DM1.cdsCreditos.FieldByName('NUMERO').AsString;

  DM1.cdsQry20.Close;
  DM1.cdsQry20.DataRequest(xssql);
  DM1.cdsQry20.Open;

  lblTotal.Caption := DM1.cdsQry20.FieldByName('TOTAL').AsString;
  lblEnviar.Caption := DM1.cdsQry20.FieldByName('SIENVIAR').AsString;
  lblNoEnviar.Caption := DM1.cdsQry20.FieldByName('NOENVIAR').AsString;

  xssql := ' SELECT ASOID, ENV_ASODNI, ASOCODMOD, ASONCTA, SITCTA, '
         +'        ASOAPENOM, ASOFECNAC, '
         +'        EDAD, '
         +'        ZIPID, ACTARCREN, FALLECIDO, INVALIDEZ, '
         +'        ENV_CODPENSION, ENV_CODLEYPEN, '
         // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         +' ENV_CODPRE,'
         // Fin HPC_201701_ASO        : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         +'        FLAGENVIARONP ENVIAR  '
         +' FROM ASO_ONP_DES_DET '
         +' WHERE NUMERO = ' + DM1.cdsCreditos.FieldByName('NUMERO').AsString
         +' ORDER BY ASOAPENOM ';

  DM1.cdsQry20.Close;
  DM1.cdsQry20.DataRequest(xssql);
  DM1.cdsQry20.Open;

  dbgcabecera.Refresh;
  dbgCabecera.Selected.Clear;
  dbgCabecera.Selected.Add('ASOID'#9'10'#9'Id~del socio'#9#9);
  dbgCabecera.Selected.Add('ENV_ASODNI'#9'10'#9'DNI'#9#9);
  dbgCabecera.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
  dbgCabecera.Selected.Add('ASONCTA'#9'12'#9'Cuenta'#9#9);
  dbgCabecera.Selected.Add('SITCTA'#9'3'#9'Sit.~Cta.'#9#9);
  dbgCabecera.Selected.Add('ASOAPENOM'#9'40'#9'Apellidos~nombres'#9#9);
  dbgCabecera.Selected.Add('ASOFECNAC'#9'10'#9'Fecha~nacimiento'#9#9);
  dbgCabecera.Selected.Add('EDAD'#9'3'#9'Edad'#9#9);
  dbgCabecera.Selected.Add('ZIPID'#9'6'#9'ZIP'#9#9);
  dbgCabecera.Selected.Add('ACTARCREN'#9'1'#9'Flag~RENIEC'#9#9);
  dbgCabecera.Selected.Add('FALLECIDO'#9'1'#9'Flag~fallecido'#9#9);
  dbgCabecera.Selected.Add('INVALIDEZ'#9'1'#9'Flag~invalidez'#9#9);
  dbgCabecera.Selected.Add('ENV_CODPENSION'#9'8'#9'Código~pensión'#9#9);
  dbgCabecera.Selected.Add('ENV_CODLEYPEN'#9'2'#9'Cod.Ley~pensión'#9#9);
  // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  dbgCabecera.Selected.Add('ENV_CODPRE'#9'2'#9'Cod.~prestación'#9#9);
  // Fin HPC_201701_ASO       : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  dbgCabecera.Selected.Add('ENVIAR'#9'2'#9'Enviar'#9#9);
  dbgCabecera.ApplySelected;

end;

procedure TFgenenvioonp.btnaExcelEnviadosClick(Sender: TObject);
begin

   DM1.cdsQry20.DisableControls;
   DM1.cdsQry20.Filter := 'ENVIAR=''S''';
   DM1.cdsQry20.Filtered := true;

   DM1.ExportaGridExcel(dbgcabecera, 'ONP_Env');

   DM1.cdsQry20.Filter := '';
   DM1.cdsQry20.Filtered := false;
   DM1.cdsQry20.EnableControls;
end;

procedure TFgenenvioonp.btnaExcelNoEnviadosClick(Sender: TObject);
begin
   DM1.cdsQry20.DisableControls;
   DM1.cdsQry20.Filter := 'ENVIAR=''N''';
   DM1.cdsQry20.Filtered := true;

   DM1.ExportaGridExcel(dbgcabecera, 'ONP_No_Env');

   DM1.cdsQry20.Filter := '';
   DM1.cdsQry20.Filtered := false;
   DM1.cdsQry20.EnableControls;
end;

end.

