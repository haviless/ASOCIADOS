// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO212.pas
// Formulario              :  FResNomParaReliq
// Fecha de Creación       :  15/12/1993
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Actualiza Resolución de Nombramiento para Reliquidación
//                            Permite Registrar para cuando varía la fecha o número,
//                            este dato es de propiedad de Actualización de Datos.

// Actualizaciones:
// HPC_201119_ASO             Inicio del Formulario
// HPP_201109_ASO          :  Se realiza el pase a producción a partir del pase HPC_201119_ASO
// HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

unit ASO212;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, wwdbdatetimepicker, StdCtrls, Mask, wwdbedit;

type
  TFResNomParaReliq = class(TForm)
    GroupBox1: TGroupBox;
    edtASOCODMOD: TwwDBEdit;
    edtASOAPENOMDNI: TwwDBEdit;
    BitBuscar: TButton;
    edtASOTIPID: TwwDBEdit;
    edtTipoAsociado: TwwDBEdit;
    edtASOID: TwwDBEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtResNomb: TwwDBEdit;
    dbdFecResNom: TwwDBDateTimePicker;
    edtResCese: TwwDBEdit;
    dbdFecResCese: TwwDBDateTimePicker;
    GroupBox3: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    edtResNomb2: TwwDBEdit;
    dbdFecResNom2: TwwDBDateTimePicker;
    btnGrabaResol: TBitBtn;
    BitSalir: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure BitBuscarClick(Sender: TObject);
    procedure btnGrabaResolClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
	sNumResTemp,sFecResTemp,sFecResCeTemp:String;
	// Fin HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    { Public declarations }
    FUNCTION CodReg: STRING;
    Function corr(XASOID: string): String;
  end;

var
  FResNomParaReliq: TFResNomParaReliq;

implementation
// Inicio HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
uses ASO200, ASODM,DateUtils;
// Fin HPC_201701_ASO         : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
{$R *.dfm}

procedure TFResNomParaReliq.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFResNomParaReliq.BitBuscarClick(Sender: TObject);
var
  xSql : String;
begin
  try
    FSeleccionaAso := TFSeleccionaAso.Create(self);
    FSeleccionaAso.ShowModal;
    if FSeleccionaAso.Seleccionado then
    begin
      xSql := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOAPENOMDNI, A.ASOTIPID, A.USEID, A.UPROID, A.ASODNI, A.ASONCTA, T.ASOTIPDES,'
        + ' A.ASORESNOM, A.ASOFRESNOM, A.ASORESCESE, A.ASOFRESCESE'
        // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        + ' ,A.ASOFECNAC '
        // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
        + ' FROM APO201 A INNER JOIN APO107 T ON A.ASOTIPID = T.ASOTIPID'
        + ' WHERE A.ASOID = ' + QuotedStr(FSeleccionaAso.ASOID);
      DM1.cdsAsociado.Close;
      DM1.cdsAsociado.DataRequest(xSql);
      DM1.cdsAsociado.Open;

      // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      sNumResTemp:=  DM1.cdsAsociado.FieldByName('ASORESNOM').AsString;
      sFecResTemp:=  DM1.cdsAsociado.FieldByName('ASOFRESNOM').AsString;
      sFecResCeTemp:= DM1.cdsAsociado.FieldByName('ASOFRESCESE').AsString;
      // Fin HPC_201701_ASO        : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    end
    else
    begin
      DM1.cdsAsociado.Close;
    end;
  finally
    FSeleccionaAso.Free;
  end;
end;

procedure TFResNomParaReliq.btnGrabaResolClick(Sender: TObject);
var
  // Inicio HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  xSql,xTime, xFechaNombBD: String;
  // Fin HPC_201701_ASO         : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  xAsoid, xCorrelativo, xcodreg: String;
begin

  if Trim(edtASOID.Text) = '' then
  begin
    MessageDlg('Seleccione el asociado a Reingresar', mtInformation, [mbOk], 0);
    exit;
  end;

  if edtASOTIPID.Text <> 'CE' then
  begin
    MessageDlg('El asociado debe ser Cesante', mtInformation, [mbOk], 0);
    exit;
  end;

  if Trim(edtResNomb2.Text) = '' then
  begin
    MessageDlg('Ingrese la resolución de nombramiento', mtInformation, [mbOk], 0);
    exit;
  end;

  if Trim(dbdFecResNom2.Text) = '' then
  begin
    MessageDlg('Ingrese la fecha de nombramiento', mtInformation, [mbOk], 0);
    exit;
  // Inicio HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  end
  else
  begin
      IF (dbdFecResNom2.Date < dm1.dFundacionDerrama) THEN
      begin
        MessageDlg(' Resolución de nombramiento no es válida,'+ chr(13)+' la Derrama Magisterial inició sus operaciones en Marzo de 1966 ', mtError, [mbOk], 0);
        exit;
      end
      else
      begin
        xTime := FloatToStr(int(YearSpan(dbdFecResNom2.Date, DM1.cdsAsociado.FieldByName('ASOFECNAC').AsDateTime)));
        if (dm1.Valores(xTime) < 18) then
        begin
          MessageDlg(' Fecha de Nombramiento no válida, la diferencia de la fecha de nacimiento y resolución corresponden a un menor de edad ', mtError, [mbOk], 0);
          exit;
        end
      end;

      if(DM1.cdsAsociado.FieldByName('ASOTIPID').AsString <> 'CO') then
      begin
      if(dbdFecResNom2.Date > dm1.FechaSys)then
      begin
          MessageDlg(' Fecha de Nombramiento no puede ser mayor a la Fecha Actual ', mtError, [mbOk], 0);
          exit;
      end
      end;

     
  end;
   // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  if StrToDate(Trim(dbdFecResNom2.Text)) >= StrToDate(Trim(dbdFecResNom.Text)) then
  begin
    MessageDlg('La nueva fecha de nombramiento debe ser menor a la fecha de nombramiento de la resolución vigente', mtInformation, [mbOk], 0);
    exit;
  end;

  If MessageDlg('¿Desea realizar las modificaciones de los datos de nombramiento del asociado Cesante?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then Exit;

  //el cesante debe tener una liquidación válida
  xSql := 'SELECT PVSEXPNRO FROM PVS306 WHERE ASOID = ' + QuotedStr(edtASOID.Text) + ' AND PVSESTLIQ IN (''01'', ''02'')';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  If DM1.cdsQry1.RecordCount = 0 Then
  Begin
    MessageDlg('El cesante no cuenta con una liquidación de beneficios', mtInformation, [mbOk], 0);
    Exit;
  End;

  //el cesante NO debe tener una re-liquidación válida
  xSql := 'SELECT PVSEXPNRO FROM PVS306 WHERE ASOID = ' + QuotedStr(edtASOID.Text) + ' AND PVSESTLIQ = ''05''';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;
  If DM1.cdsQry1.RecordCount > 0 Then
  Begin
    MessageDlg('El cesante NO debe tener una reliquidación de beneficios', mtInformation, [mbOk], 0);
    Exit;
  End;

  xAsoid := edtASOID.Text;

  //Actualiza el APO201
  xCodReg := CodReg; //Genera Numero de Log
  DM1.Registro_Aud(xAsoId, '0', xCodReg);
  xSql := 'UPDATE APO201 SET '
    + ' ASORESNOM = ' + QuotedStr(Trim(edtResNomb2.Text)) + ','
    + ' ASOFRESNOM = ' + QuotedStr(Trim(dbdFecResNom2.Text))
    + ' WHERE ASOID = ' + QuotedStr(xAsoId);
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
  DM1.Registro_Aud(xAsoId, '1', xCodReg);

  xCorrelativo := corr(xAsoid);

  //antes de insertar un nuevo registro, los anteriores se marcan como Vigente='N'
  xSql := 'UPDATE ASO_RESOLUCIONES'
    + ' SET RESVIG = ''N'''
    + ' WHERE ASOID = ' + QuotedStr(xAsoid) + ' AND RESVIG = ''S''';
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);

  //Inserto el ASO_RESOLUCIONES
  xSQL := 'INSERT INTO ASO_RESOLUCIONES (ASOID,ASOCODMOD,ASOCODAUX,ASORESNOM,ASOFRESNOM,ASORESCESE,ASOFRESCESE,RESVIG, '
    + '  CORRELATIVO,USUARIO,FREG,HREG,REINGRESO) '
    + 'VALUES (' +
    QuotedStr(xAsoId) + ',' +
    QuotedStr(edtASOCODMOD.Text) + ',' +
    QuotedStr(DM1.cdsAsociado.FieldByName('ASOCODAUX').AsString) + ',' +
    QuotedStr(edtResNomb2.Text) + ',' +
    QuotedStr(dbdFecResNom2.Text) + ',' +
    QuotedStr(edtResCese.Text) + ',' +
    QuotedStr(dbdFecResCese.Text) + ',' +
    QuotedStr('S') + ',' +
    QuotedStr(xCorrelativo) + ',' +
    QuotedStr(DM1.wUsuario) + ',' +
    QuotedStr(DateToStr(DM1.FechaSys)) + ',SYSDATE,' +
    QuotedStr('S') + ')';
  DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    If  (Trim(sNumResTemp)<>'') and (Trim(sFecResTemp)<>'') Then
    Begin
    xSQL := 'CALL SP_ASO_ING_RESOLUCIONES_HIS('+QuotedStr(xAsoId)+','+QuotedStr(sNumResTemp)+',TO_DATE('+QuotedStr(sFecResTemp)+'),'+'TO_DATE('+QuotedStr(sFecResCeTemp)+'),'+QuotedStr(DM1.wUsuario)+')' ;
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    DM1.DCOM1.AppServer.SOLCommit;
    End;
    // Fin HPC_201701_ASO         : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
  MessageDlg('Datos modificados correctamente', mtInformation, [mbOk], 0);
  Close;
end;

FUNCTION TFResNomParaReliq.CodReg: STRING;
VAR
   xSQL, xResAbn: STRING;
   xCorAbn: Integer;
BEGIN
   DM1.cdsListaCred.Close;
   xSQL := 'SELECT CREAREA,CORREANO,TIPO,ASOID FROM CRE206 WHERE CORREANO=' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ' AND CREAREA=''ASO'' AND TIPO=''1''';
   DM1.cdsListaCred.DataRequest(xSQL);
   DM1.cdsListaCred.Open;
   IF DM1.cdsListaCred.RecordCount = 1 THEN
   BEGIN
      xCorAbn := StrToInt(DM1.cdsListaCred.fieldbyname('ASOID').AsString) + 1;
      xResAbn := Format('%.10d', [xCorAbn]);
      DM1.cdsListaCred.Edit;
      DM1.cdsListaCred.fieldbyname('ASOID').AsString := xResAbn;
      DM1.cdsListaCred.ApplyUpdates(0);
      Result := xResAbn;
   END;
   DM1.cdsListaCred.Close;
END;

Function TFResNomParaReliq.corr(XASOID: string): String;
Var
   XSQL: String;
Begin
   XSQL := ' SELECT NVL(MAX(TO_NUMBER(CORRELATIVO)),0) MAXIMO '
      + ' FROM ASO_RESOLUCIONES '
      + ' WHERE ASOID = ''' + XASOID + ''' ';
   DM1.cdsGradoI.Close;
   DM1.cdsGradoI.DataRequest(XSQL);
   DM1.cdsGradoI.Open;
   If DM1.cdsGradoI.FieldByName('MAXIMO').AsInteger > 0 Then
      Result := Format('%.2d', [DM1.cdsGradoI.FieldByName('MAXIMO').AsInteger + 1])
   Else
      Result := '01';
   DM1.cdsGradoI.Close;
End;

procedure TFResNomParaReliq.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsQry1.Close;
  DM1.cdsGradoI.IndexFieldNames := '';
  DM1.cdsGradoI.Close;
  DM1.cdsAsociado.Close;
  DM1.cdsListaCred.Close;
end;

end.
