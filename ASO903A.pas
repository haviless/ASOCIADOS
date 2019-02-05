// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO903A.pas
// Formulario              :  FManTel
// Fecha de Creación       :  28/12/2012
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Permite dar mantenimiento a los números de teléfono de un asociado
// Actualizaciones:
// HPC_201211_ASO             Creación.
// HPC_201301_ASO
// SPP_201301_ASO          : El pase a producción se realiza sobre la base del HPC_201301_ASO
// SPP_201302_ASO          : El pase a producción se realiza sobre la base del HPC_201302_ASO
// SPP_201303_ASO          : El pase a producción se solicita a partir del HPC_201301_ASO
// SPP_201402_ASO          : Se modifica client que se cruza con el mantenimiento de direcciones
// SPP_201402_ASO          : Se realiza el pase a producción a partir del HPC_201401_ASO
// SPP_201403_ASO          : El Client Actual es cdsTipTel02. Se cambia client cdsCia. 
// SPP_201403_ASO          : Se realiza el pase a producción sobre el HPC_201402_ASO.
// HPC_201405_ASO          : Validación de telefonos 
// SPP_201405_ASO          : Se realiza el pase a producción a partir del HPC_201405_ASO.

unit ASO903A;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdblook, Wwdbdlg, wwdbedit,
  WSUbicabilidad, XSBuiltIns;

type
  TFManTel = class(TForm)
    btngrabar: TBitBtn;
    btncancelar: TBitBtn;
    btneditar: TBitBtn;
    dblcdTipoTel1: TwwDBLookupComboDlg;
    edtTipoTel1: TMaskEdit;
    dblcdPropTel1: TwwDBLookupComboDlg;
    edtPropTel1: TMaskEdit;
    edtTel1: TwwDBEdit;
    dblcdTipoTel2: TwwDBLookupComboDlg;
    edtTipoTel2: TMaskEdit;
    dblcdPropTel2: TwwDBLookupComboDlg;
    edtPropTel2: TMaskEdit;
    edtTel2: TwwDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncancelarClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure dblcdTipoTel1Change(Sender: TObject);
    procedure dblcdTipoTel2Change(Sender: TObject);
    procedure dblcdPropTel1Change(Sender: TObject);
    procedure dblcdPropTel2Change(Sender: TObject);
    procedure btngrabarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    //Inicio: SPP_201405_ASO
    procedure edtTel1KeyPress(Sender: TObject; var Key: Char);
    procedure edtTel2KeyPress(Sender: TObject; var Key: Char);
    //Fin: SPP_201405_ASO
  private
    { Private declarations }
    procedure inhabilita;
    procedure habilitar;
    function validadatos: Boolean;
  public
    { Public declarations }
  end;

var
  FManTel: TFManTel;

implementation

uses ASODM, ASO260;

{$R *.dfm}

procedure TFManTel.FormCreate(Sender: TObject);
Var xSql:String;
begin
  xSql := 'SELECT CODTIPTEL, DESTIPTEL FROM ASO_TIP_TEL_MAE ORDER BY CODTIPTEL';
  // Inicio: SPP_201402_ASO
  // DM1.cdsCViv.Close;
  // DM1.cdsCViv.DataRequest(xSql);
  // DM1.cdsCViv.Open;
  DM1.cdsTipTel01.Close;
  DM1.cdsTipTel01.DataRequest(xSql);
  DM1.cdsTipTel01.Open;
  // Fin: SPP_201402_ASO

  dblcdTipoTel1.Selected.Clear;
  dblcdTipoTel1.Selected.Add('CODTIPTEL'#9'6'#9'Código'#9#9);
  dblcdTipoTel1.Selected.Add('DESTIPTEL'#9'12'#9'Descripción'#9#9);

  xSql := 'SELECT CODTIPTEL, DESTIPTEL FROM ASO_TIP_TEL_MAE ORDER BY CODTIPTEL';
  // Inicio: SPP_201402_ASO
  // DM1.cdsCia.Close;
  // DM1.cdsCia.DataRequest(xSql);
  // DM1.cdsCia.Open;
  DM1.cdsTipTel02.Close;
  DM1.cdsTipTel02.DataRequest(xSql);
  DM1.cdsTipTel02.Open;
  // Fin: SPP_201402_ASO

  dblcdTipoTel2.Selected.Clear;
  dblcdTipoTel2.Selected.Add('CODTIPTEL'#9'6'#9'Código'#9#9);
  dblcdTipoTel2.Selected.Add('DESTIPTEL'#9'12'#9'Descripción'#9#9);

  //Inicio SPP_201302_ASO
  xSql := 'SELECT CODREFTEL, DESREFTEL FROM ASO_REF_TELF_MAE ORDER BY CODREFTEL';
  DM1.cdsPropTel1.Close;
  DM1.cdsPropTel1.DataRequest(xSql);
  DM1.cdsPropTel1.Open;
  dblcdPropTel1.Selected.Clear;
  dblcdPropTel1.Selected.Add('CODREFTEL'#9'6'#9'Código'#9#9);
  dblcdPropTel1.Selected.Add('DESREFTEL'#9'15'#9'Descripción'#9#9);

  xSql := 'SELECT CODREFTEL, DESREFTEL FROM ASO_REF_TELF_MAE ORDER BY CODREFTEL';
  DM1.cdsPropTel2.Close;
  DM1.cdsPropTel2.DataRequest(xSql);
  DM1.cdsPropTel2.Open;
  dblcdPropTel2.Selected.Clear;
  dblcdPropTel2.Selected.Add('CODREFTEL'#9'6'#9'Código'#9#9);
  dblcdPropTel2.Selected.Add('DESREFTEL'#9'15'#9'Descripción'#9#9);
  //Fin SPP_201302_ASO
end;

procedure TFManTel.FormActivate(Sender: TObject);
begin
  dblcdTipoTel1.DataSource := DM1.dsAso;
  dblcdTipoTel1.DataField := 'CODTIPTEL1';

  dblcdPropTel1.DataSource := DM1.dsAso;
  dblcdPropTel1.DataField := 'CODREFTEL1';

  dblcdTipoTel2.DataSource := DM1.dsAso;
  dblcdTipoTel2.DataField := 'CODTIPTEL2';

  dblcdPropTel2.DataSource := DM1.dsAso;
  dblcdPropTel2.DataField := 'CODREFTEL2';

  inhabilita;
end;

Procedure TFManTel.habilitar;
Begin
  dblcdTipoTel1.Enabled := True;
  edtTel1.Enabled := True;
  dblcdPropTel1.Enabled := True;
  dblcdTipoTel2.Enabled := True;
  edtTel2.Enabled := True;
  dblcdPropTel2.Enabled := True;
End;

Procedure TFManTel.inhabilita;
Begin
  dblcdTipoTel1.Enabled := False;
  edtTel1.Enabled := False;
  dblcdPropTel1.Enabled := False;
  dblcdTipoTel2.Enabled := False;
  edtTel2.Enabled := False;
  dblcdPropTel2.Enabled := False;
End;

procedure TFManTel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Inicio: SPP_201402_ASO
  // DM1.cdsCViv.Close;
  // DM1.cdsCia.Close;
  DM1.cdsTipTel01.Close;
  DM1.cdsTipTel02.Close;
  // Fin: SPP_201402_ASO
  DM1.cdsDpto.Close;
  DM1.cdsQry2.Close;
end;

procedure TFManTel.btncancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFManTel.btneditarClick(Sender: TObject);
begin
 habilitar;
 btngrabar.Enabled := True;
 btneditar.Enabled := False;
 If dblcdTipoTel1.Enabled = True Then dblcdTipoTel1.SetFocus;
end;

procedure TFManTel.dblcdTipoTel1Change(Sender: TObject);
begin
  // Inicio: SPP_201402_ASO
  // If (not DM1.cdsCViv.IsEmpty) and DM1.cdsCViv.Locate('CODTIPTEL',VarArrayof([dblcdTipoTel1.Text]),[]) Then
  //   edtTipoTel1.Text := DM1.cdsCViv.FieldByName('DESTIPTEL').AsString
  If (not DM1.cdsTipTel01.IsEmpty) and DM1.cdsTipTel01.Locate('CODTIPTEL',VarArrayof([dblcdTipoTel1.Text]),[]) Then
     edtTipoTel1.Text := DM1.cdsTipTel01.FieldByName('DESTIPTEL').AsString
  Else
    edtTipoTel1.Text := '';
  // Fin: SPP_201402_ASO
end;

procedure TFManTel.dblcdTipoTel2Change(Sender: TObject);
begin
  // Inicio: SPP_201402_ASO
  // If (not DM1.cdsTipTel02.IsEmpty) and DM1.cdsTipTel02.Locate('CODTIPTEL',VarArrayof([dblcdTipoTel2.Text]),[]) Then
  //  edtTipoTel2.Text := DM1.cdsTipTel02.FieldByName('DESTIPTEL').AsString
  // Inicio: SPP_201403_ASO
  //  If (not DM1.cdsCia.IsEmpty) and DM1.cdsCia.Locate('CODTIPTEL',VarArrayof([dblcdTipoTel2.Text]),[]) Then
  If (not DM1. cdsTipTel02.IsEmpty) and DM1.cdsTipTel02.Locate('CODTIPTEL',VarArrayof([dblcdTipoTel2.Text]),[]) Then
     // edtTipoTel2.Text := DM1.cdsCia.FieldByName('DESTIPTEL').AsString
     edtTipoTel2.Text := DM1.cdsTipTel02.FieldByName('DESTIPTEL').AsString
  // Fin: SPP_201403_ASO
  Else
     edtTipoTel2.Text := '';
  // Fin: SPP_201402_ASO
end;

procedure TFManTel.dblcdPropTel1Change(Sender: TObject);
begin
  //Inicio SPP_201302_ASO
  If (not DM1.cdsPropTel1.IsEmpty) and DM1.cdsPropTel1.Locate('CODREFTEL',VarArrayof([dblcdPropTel1.Text]),[]) Then
    edtPropTel1.Text := DM1.cdsPropTel1.FieldByName('DESREFTEL').AsString
  Else
    edtPropTel1.Text := '';
  //Fin SPP_201302_ASO
end;

procedure TFManTel.dblcdPropTel2Change(Sender: TObject);
begin
  //Inicio SPP_201302_ASO
  If (not DM1.cdsPropTel2.IsEmpty) and DM1.cdsPropTel2.Locate('CODREFTEL',VarArrayof([dblcdPropTel2.Text]),[]) Then
    edtPropTel2.Text := DM1.cdsPropTel2.FieldByName('DESREFTEL').AsString
  Else
    edtPropTel2.Text := '';
  //Fin SPP_201302_ASO
end;

function TFManTel.validadatos: Boolean;
begin
  // Inicio: SPP_201303_ASO
  If Trim(edtTel1.Text) <> '' Then
  Begin
    If Trim(dblcdTipoTel1.Text) = '' Then
    Begin
      MessageDlg('Seleccione el tipo de teléfono 1', mtError, [mbOk], 0);
      If dblcdTipoTel1.Enabled = True Then dblcdTipoTel1.SetFocus;
      Result := False;
      Exit;
    End;
    If Trim(dblcdPropTel1.Text) = '' Then
    Begin
      MessageDlg('Seleccione el propietario del teléfono 1', mtError, [mbOk], 0);
      If dblcdPropTel1.Enabled = True Then dblcdPropTel1.SetFocus;
      Result := False;
      Exit;
    End;
  End;
  If Trim(edtTel2.Text) <> '' Then
  Begin
    If Trim(dblcdTipoTel2.Text) = '' Then
    Begin
      MessageDlg('Seleccione el tipo de teléfono 2', mtError, [mbOk], 0);
      If dblcdTipoTel2.Enabled = True Then dblcdTipoTel2.SetFocus;
      Result := False;
      Exit;
    End;
    If Trim(dblcdPropTel2.Text) = '' Then
    Begin
      MessageDlg('Seleccione el propietario del teléfono 2', mtError, [mbOk], 0);
      If dblcdPropTel2.Enabled = True Then dblcdPropTel2.SetFocus;
      Result := False;
      Exit;
    End;
  End;
  // Fin: SPP_201303_ASO
  Result := True;
end;

procedure TFManTel.btngrabarClick(Sender: TObject);
Var xAsoId, xCodReg, xSql:String;
  wsUbica: WSUbicabilidadSoap;
  tel: ASO_UBICA_TELF_HIS;
  fecAct: TXSDateTime;
begin
 xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;
 If validadatos = True Then
 Begin
   If MessageDlg('Desea actualizar los teléfonos del asociado' ,  mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
   Begin
     //Si el teléfono actual de la BD es diferente al que se desea grabar se
     //registra el nuevo teléfono de Ubicabilidad
     if DM1.sAPO201 = 'APO201' then
     begin
       xSql := 'SELECT CODTIPTEL1, ASOTELF1, CODREFTEL1, CODTIPTEL2, ASOTELF2, CODREFTEL2 FROM ' + DM1.sAPO201 + ' WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xSql);
       DM1.cdsQry.Open;
       if DM1.cdsQry.RecordCount > 0 then
       begin
         if (Trim(edtTel1.Text) <> '')
         and
           (
           (DM1.cdsQry.FieldByName('ASOTELF1').AsString <> Trim(edtTel1.Text))
           or (DM1.cdsQry.FieldByName('CODTIPTEL1').AsString <> Trim(dblcdTipoTel1.Text))
           or (DM1.cdsQry.FieldByName('CODREFTEL1').AsString <> Trim(dblcdPropTel1.Text))
           )
         then
         begin
           fecAct := TXSDateTime.Create;
           wsUbica := GetWSUbicabilidadSoap(false, '');
           tel := ASO_UBICA_TELF_HIS.Create;
           
           tel.ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
           tel.CODPROV := 3; //Previsión
           tel.CODPROC := 3; //Actualización de Datos
           tel.CODTIPTEL_TRANSACCIONAL := Trim(dblcdTipoTel1.Text);
           tel.CODREFTEL_TRANSACCIONAL := Trim(dblcdPropTel1.Text);
           fecAct.AsDateTime := DM1.FechaSys();
           tel.FECACT := fecAct;
           tel.USUREG := DM1.wUsuario;
           tel.ASOTELF := Trim(edtTel1.Text);
           
           wsUbica.Crear_Ubicabilidad_Telefonica(tel);
           tel.Free;
         end;
         
         if (Trim(edtTel2.Text) <> '')
         and
           (
           (DM1.cdsQry.FieldByName('ASOTELF2').AsString <> Trim(edtTel2.Text))
           or (DM1.cdsQry.FieldByName('CODTIPTEL2').AsString <> Trim(dblcdTipoTel2.Text))
           or (DM1.cdsQry.FieldByName('CODREFTEL2').AsString <> Trim(dblcdPropTel2.Text))
           )
         then
         begin
           fecAct := TXSDateTime.Create;
           wsUbica := GetWSUbicabilidadSoap(false, '');
           tel := ASO_UBICA_TELF_HIS.Create;
           
           tel.ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
           tel.CODPROV := 3; //Previsión
           tel.CODPROC := 3; //Actualización de Datos
           tel.CODTIPTEL_TRANSACCIONAL := Trim(dblcdTipoTel2.Text);
           tel.CODREFTEL_TRANSACCIONAL := Trim(dblcdPropTel2.Text);
           fecAct.AsDateTime := DM1.FechaSys();
           tel.FECACT := fecAct;
           tel.USUREG := DM1.wUsuario;
           tel.ASOTELF := Trim(edtTel2.Text);

           wsUbica.Crear_Ubicabilidad_Telefonica(tel);
           tel.Free;
         end;
       end;
     end;
     xCodReg:=DM1.CodReg;
     DM1.Registro_Aud(xAsoId,'0',xCodReg);
     xSql := 'UPDATE '+DM1.sAPO201+' SET MDFCNTREG=''1'',MDFUSRMOD='+QuotedStr(DM1.wUsuario)+',MDFFECMOD=SYSDATE, '
     +'  CODTIPTEL1 = '+QuotedStr(Trim(dblcdTipoTel1.Text))
     +', ASOTELF1 = '+QuotedStr(Trim(edtTel1.Text))
     +', CODREFTEL1 = '+QuotedStr(Trim(dblcdPropTel1.Text))
     +', CODTIPTEL2 = '+QuotedStr(Trim(dblcdTipoTel2.Text))
     +', ASOTELF2 = '+QuotedStr(Trim(edtTel2.Text))
     +', CODREFTEL2 = '+QuotedStr(Trim(dblcdPropTel2.Text))
     +'  WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
     DM1.DCOM1.AppServer.EjecutaSql(xSql);
     DM1.Registro_Aud(xAsoId,'1',xCodReg);
     FMantAsociado.dbetel1.Text  := Trim(edtTel1.Text);
     FMantAsociado.dbeProp1.Text  := edtPropTel1.Text;
     FMantAsociado.dbetel2.Text  := Trim(edtTel2.Text);
     FMantAsociado.dbeProp2.Text  := edtPropTel2.Text;
     MessageDlg('Registro actualizado', mtInformation, [mbOk], 0);
     btngrabar.Enabled := False;
     btneditar.Enabled := True;
     inhabilita;
   End;
 End;
end;
//Inicio: SPP_201405_ASO
procedure TFManTel.edtTel1KeyPress(Sender: TObject; var Key: Char);
begin
    If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"',{ '#',} '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´',{ '*',} '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', ''''{, '-'}, '_','.'] Then
    Key := #0;
end;

procedure TFManTel.edtTel2KeyPress(Sender: TObject; var Key: Char);
begin
    If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', {'#',} '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´',{ '*',} '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', ''''{, '-'}, '_','.'] Then
    Key := #0;
end;
//fin: SPP_201405_ASO
end.
