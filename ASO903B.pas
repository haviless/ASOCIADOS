// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO903B.pas
// Formulario              :  FNueManTel
// Fecha de Creación       :  01/04/2016
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Ingreso de teléfonos de los asociados
// Actualizaciones
// HPC_201602_ASO          : Nuevo

unit ASO903B;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdblook, Wwdbdlg, wwdbedit,
  WSUbicabilidad, XSBuiltIns, ExtCtrls;

type
  TFNueManTel = class(TForm)
    btngrabar: TBitBtn;
    btncancelar: TBitBtn;
    btneditar: TBitBtn;
    Panel1: TPanel;
    dblcdTipoTel1: TwwDBLookupComboDlg;
    edtTipoTel1: TMaskEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtTel1: TwwDBEdit;
    dblcdPropTel1: TwwDBLookupComboDlg;
    edtPropTel1: TMaskEdit;
    Label4: TLabel;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dblcdTipoTel2: TwwDBLookupComboDlg;
    edtTipoTel2: TMaskEdit;
    dbecodciutel2: TwwDBEdit;
    dblcdPropTel2: TwwDBLookupComboDlg;
    edtPropTel2: TMaskEdit;
    edtTel2: TwwDBEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    dbecodciutel1: TwwDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btncancelarClick(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure btngrabarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dblcdTipoTel1Exit(Sender: TObject);
    procedure dblcdPropTel1Exit(Sender: TObject);
    procedure dblcdTipoTel2Exit(Sender: TObject);
    procedure dblcdPropTel2Exit(Sender: TObject);
    procedure dbecodciutel1Exit(Sender: TObject);
    procedure dbecodciutel2Exit(Sender: TObject);
  private
    { Private declarations }
    procedure inhabilita;
    procedure habilitar;
    function validadatos: Boolean;
    function validaTelf1: Boolean;
    function validaTelf2: Boolean;
  public
    { Public declarations }
  end;

var
  FNueManTel: TFNueManTel;

implementation

uses ASODM, ASO260;

{$R *.dfm}

procedure TFNueManTel.FormCreate(Sender: TObject);
Var xSql:String;
begin
  // Se controla que solo se pueda elejir los tipos de teléfonos que actualmente estan activos
  xSql := 'SELECT CODTIPTEL, DESTIPTEL FROM ASO_TIP_TEL_MAE Where Nvl(ESTREG,''N'') = ''S'' ORDER BY CODTIPTEL';
  DM1.cdsTipTel01.Close;
  DM1.cdsTipTel01.DataRequest(xSql);
  DM1.cdsTipTel01.Open;
  dblcdTipoTel1.Selected.Clear;
  dblcdTipoTel1.Selected.Add('CODTIPTEL'#9'6'#9'Código'#9#9);
  dblcdTipoTel1.Selected.Add('DESTIPTEL'#9'12'#9'Descripción'#9#9);

  // Se controla que solo se pueda elejir los tipos de tel´rfonos que actualmente estan activos
  xSql := 'SELECT CODTIPTEL, DESTIPTEL FROM ASO_TIP_TEL_MAE Where Nvl(ESTREG,''N'') = ''S''  ORDER BY CODTIPTEL';
  DM1.cdsTipTel02.Close;
  DM1.cdsTipTel02.DataRequest(xSql);
  DM1.cdsTipTel02.Open;
  dblcdTipoTel2.Selected.Clear;
  dblcdTipoTel2.Selected.Add('CODTIPTEL'#9'6'#9'Código'#9#9);
  dblcdTipoTel2.Selected.Add('DESTIPTEL'#9'12'#9'Descripción'#9#9);

  xSql := 'SELECT CODREFTEL, DESREFTEL FROM ASO_REF_TELF_MAE WHERE CODREFTEL IS NOT NULL ORDER BY CODREFTEL';
  DM1.cdsPropTel1.Close;
  DM1.cdsPropTel1.DataRequest(xSql);
  DM1.cdsPropTel1.Open;
  dblcdPropTel1.Selected.Clear;
  dblcdPropTel1.Selected.Add('CODREFTEL'#9'6'#9'Código'#9#9);
  dblcdPropTel1.Selected.Add('DESREFTEL'#9'15'#9'Descripción'#9#9);

  xSql := 'SELECT CODREFTEL, DESREFTEL FROM ASO_REF_TELF_MAE WHERE CODREFTEL IS NOT NULL ORDER BY CODREFTEL';
  DM1.cdsPropTel2.Close;
  DM1.cdsPropTel2.DataRequest(xSql);
  DM1.cdsPropTel2.Open;
  dblcdPropTel2.Selected.Clear;
  dblcdPropTel2.Selected.Add('CODREFTEL'#9'6'#9'Código'#9#9);
  dblcdPropTel2.Selected.Add('DESREFTEL'#9'15'#9'Descripción'#9#9);
end;

procedure TFNueManTel.FormActivate(Sender: TObject);
begin
  dblcdTipoTel1.DataSource := DM1.dsAso;
  dblcdTipoTel1.DataField := 'CODTIPTEL1';
  dbecodciutel1.DataSource := DM1.dsAso;
  dbecodciutel1.DataField := 'CODCIUTELFIJ1';
  dblcdPropTel1.DataSource := DM1.dsAso;
  dblcdPropTel1.DataField := 'CODREFTEL1';
  dblcdTipoTel2.DataSource := DM1.dsAso;
  dblcdTipoTel2.DataField := 'CODTIPTEL2';
  dbecodciutel2.DataSource := DM1.dsAso;
  dbecodciutel2.DataField := 'CODCIUTELFIJ2';
  dblcdPropTel2.DataSource := DM1.dsAso;
  dblcdPropTel2.DataField := 'CODREFTEL2';
  inhabilita;
end;

Procedure TFNueManTel.habilitar;
Begin
  DM1.cdsAso.Edit;
  dblcdTipoTel1.Enabled := True;
  dbecodciutel1.Enabled := True;
  edtTel1.Enabled := True;
  dblcdPropTel1.Enabled := True;
  dblcdTipoTel2.Enabled := True;
  dbecodciutel2.Enabled := True;
  edtTel2.Enabled := True;
  dblcdPropTel2.Enabled := True;
  btngrabar.Enabled := True;
  btneditar.Enabled := False;
End;

Procedure TFNueManTel.inhabilita;
Var xSql:String;
Begin
  edtTipoTel1.Text := DM1.RecuperaDatos('ASO_TIP_TEL_MAE','CODTIPTEL',Trim(DM1.cdsAso.FieldByName('CODTIPTEL1').asstring),'DESTIPTEL');
  edtPropTel1.Text := DM1.RecuperaDatos('ASO_REF_TELF_MAE','CODREFTEL',Trim(DM1.cdsAso.FieldByName('CODREFTEL1').asstring),'DESREFTEL');

  edtTipoTel2.Text := DM1.RecuperaDatos('ASO_TIP_TEL_MAE','CODTIPTEL',Trim(DM1.cdsAso.FieldByName('CODTIPTEL2').asstring),'DESTIPTEL');
  edtPropTel2.Text := DM1.RecuperaDatos('ASO_REF_TELF_MAE','CODREFTEL',Trim(DM1.cdsAso.FieldByName('CODREFTEL2').asstring),'DESREFTEL');

  dblcdTipoTel1.Enabled := False;
  dbecodciutel1.Enabled := False;
  edtTel1.Enabled := False;
  dblcdPropTel1.Enabled := False;
  dblcdTipoTel2.Enabled := False;
  dbecodciutel2.Enabled := False;
  edtTel2.Enabled := False;
  dblcdPropTel2.Enabled := False;
  btngrabar.Enabled := False;
End;

procedure TFNueManTel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.cdsTipTel01.Close;
  DM1.cdsTipTel02.Close;
  DM1.cdsDpto.Close;
  DM1.cdsQry2.Close;
end;

procedure TFNueManTel.btncancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFNueManTel.btneditarClick(Sender: TObject);
begin
 habilitar;
 btngrabar.Enabled := True;
 btneditar.Enabled := False;
 If dblcdTipoTel1.Enabled = True Then dblcdTipoTel1.SetFocus;
end;

function TFNueManTel.validadatos: Boolean;
Var xSql:String;
begin
  If Trim(dblcdTipoTel1.Text) = '' Then
  Begin
     MessageDlg('Seleccione el tipo del teléfono principal', mtError, [mbOk], 0);
     dblcdTipoTel1.SetFocus;
      Result := False;
      Exit;
  End;
  If dblcdTipoTel1.Text = 'F' Then
  Begin
     If Trim(dbecodciutel1.Text) = '' Then
     Begin
        MessageDlg('Ingrese el código de ciudad del teléfono principal', mtError, [mbOk], 0);
        dbecodciutel1.SetFocus;
        Result := False;
        Exit;
     End
     Else
     Begin
        xSql := 'Select CODTEL From APO158 Where CODTEL = '+QuotedStr(dbecodciutel1.Text);
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest(xSql);
        DM1.cdsQry.Open;
        If Trim(DM1.cdsQry.FieldByName('CODTEL').AsString) = '' Then
        Begin
           MessageDlg('Teléfono principal. Código de ciudad no valido', mtError, [mbOk], 0);
           dbecodciutel1.SetFocus;
           Result := False;
           Exit;
        End;
     End;
  End;
  If (dblcdTipoTel1.Text = 'F')  And (dbecodciutel1.Text = '01') And (Length(Trim(edtTel1.Text)) <> 7) Then
  Begin
     MessageDlg('Número de dígitos del teléfono principal no valido', mtError, [mbOk], 0);
     edtTel1.SetFocus;
     Result := False;
     Exit;
  End;
  If (dblcdTipoTel1.Text = 'F')  And (dbecodciutel1.Text <> '01') And (Length(Trim(edtTel1.Text)) <> 6) Then
  Begin
     MessageDlg('Número de dígitos del teléfono principal no valido', mtError, [mbOk], 0);
     edtTel1.SetFocus;
     Result := False;
     Exit;
  End;
  If Trim(dblcdPropTel1.Text) = '' Then
  Begin
    MessageDlg('Seleccione el propietario del teléfono principal', mtError, [mbOk], 0);
    If dblcdPropTel1.Enabled = True Then
    Begin
      dblcdPropTel1.SetFocus;
      Result := False;
      Exit;
    End;
  End;
  If Trim(dblcdTipoTel2.Text) <> '' Then
  Begin
     If dblcdTipoTel2.Text = 'F' Then
     Begin
        If Trim(dbecodciutel2.Text) = '' Then
        Begin
           MessageDlg('Ingrese el código de ciudad del teléfono secundario', mtError, [mbOk], 0);
           dbecodciutel2.SetFocus;
           Result := False;
           Exit;
        End
        Else
        Begin
           xSql := 'Select CODTEL From APO158 Where CODTEL = '+QuotedStr(dbecodciutel1.Text);
           DM1.cdsQry.Close;
           DM1.cdsQry.DataRequest(xSql);
           DM1.cdsQry.Open;
           If Trim(DM1.cdsQry.FieldByName('CODTEL').AsString) = '' Then
           Begin
              MessageDlg('Teléfono secundario. Código de ciudad no valido', mtError, [mbOk], 0);
              dbecodciutel2.SetFocus;
              Result := False;
              Exit;
           End;
        End;
     End;
     If (dblcdTipoTel2.Text = 'F')  And (dbecodciutel2.Text = '01') And (Length(Trim(edtTel2.Text)) <> 7) Then
     Begin
        MessageDlg('Número de dígitos del teléfono secundario no valido', mtError, [mbOk], 0);
        edtTel1.SetFocus;
        Result := False;
        Exit;
     End;
     If (dblcdTipoTel2.Text = 'F')  And (dbecodciutel2.Text <> '01') And (Length(Trim(edtTel2.Text)) <> 6) Then
     Begin
        MessageDlg('Número de dígitos del teléfono secundario no valido', mtError, [mbOk], 0);
        edtTel2.SetFocus;
        Result := False;
        Exit;
     End;
     If Trim(dblcdPropTel2.Text) = '' Then
     Begin
        MessageDlg('Seleccione el propietario del teléfono secundario', mtError, [mbOk], 0);
        If dblcdPropTel2.Enabled = True Then
        Begin
           dblcdPropTel2.SetFocus;
           Result := False;
           Exit;
        End;
     End;
  End;
  Result :=  True;
end;

Procedure TFNueManTel.btngrabarClick(Sender: TObject);
Var xAsoId, xCodReg, xSql:String;
  wsUbica: WSUbicabilidadSoap;
  tel: ASO_UBICA_TELF_HIS;
  fecAct: TXSDateTime;
Begin
 xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;
 If validaTelf1 And validaTelf2 Then
 Begin
    If MessageDlg('Desea actualizar los teléfonos del asociado' ,  mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
    Begin
       xCodReg:=DM1.CodReg;
       DM1.Registro_Aud(xAsoId,'0',xCodReg);
       xSql := 'UPDATE '+DM1.sAPO201+' SET MDFCNTREG=''1'',MDFUSRMOD='+QuotedStr(DM1.wUsuario)+',MDFFECMOD=SYSDATE'
       +', CODTIPTEL1 = '+QuotedStr(Trim(dblcdTipoTel1.Text))
       +', CODCIUTELFIJ1 = '+QuotedStr(Trim(dbecodciutel1.Text))
       +', ASOTELF1 = '+QuotedStr(Trim(edtTel1.Text))
       +', CODREFTEL1 = '+QuotedStr(Trim(dblcdPropTel1.Text))
       +', CODTIPTEL2 = '+QuotedStr(Trim(dblcdTipoTel2.Text))
       +', CODCIUTELFIJ2 = '+QuotedStr(Trim(dbecodciutel2.Text))
       +', ASOTELF2 = '+QuotedStr(Trim(edtTel2.Text))
       +', CODREFTEL2 = '+QuotedStr(Trim(dblcdPropTel2.Text))
       +'  WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
       DM1.DCOM1.AppServer.EjecutaSql(xSql);
       DM1.Registro_Aud(xAsoId,'1',xCodReg);
       FMantAsociado.dbetel1.Text  :=  Trim(dbecodciutel1.Text)+'-'+Trim(edtTel1.Text);
       FMantAsociado.dbeProp1.Text  := edtPropTel1.Text;
       FMantAsociado.dbetel2.Text  := Trim(dbecodciutel2.Text)+'-'+Trim(edtTel2.Text);
       FMantAsociado.dbeProp2.Text  := edtPropTel2.Text;
       MessageDlg('Registro actualizado', mtInformation, [mbOk], 0);
       btngrabar.Enabled := False;
       btneditar.Enabled := True;
       inhabilita;
    End;
 End;
End;

procedure TFNueManTel.dblcdTipoTel1Exit(Sender: TObject);
Var xSql : String;
Begin
   If DM1.cdsTipTel01.Locate('CODTIPTEL', VarArrayof([dblcdTipoTel1.Text]), []) Then
   Begin
      edtTipoTel1.Text := DM1.cdsTipTel01.fieldbyname('DESTIPTEL').AsString;
      // Si es celular o RPC nueve dígitos
      If (dblcdTipoTel1.Text = 'C') Or (dblcdTipoTel1.Text = 'P')  Then
         edtTel1.MaxLength := 9;
      // Si es RPM Maximo 10 caracteres
      If (dblcdTipoTel1.Text = 'R') Then
         edtTel1.MaxLength := 10;
      // Si es Fijo
      If dblcdTipoTel1.Text <> 'F' Then
      Begin
         DM1.cdsAso.FieldByName('CODCIUTELFIJ1').AsString := '';
         dbecodciutel1.Enabled := False;
         dbecodciutel1.Color := $00E6E6E6;
         edtTel1.SetFocus;
      End
      Else
      Begin
         dbecodciutel1.Enabled := True;
         dbecodciutel1.Color := clWhite;
         xSql := 'SELECT CODTEL FROM APO158 Where DPTOID = '+QuotedStr(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,1,2));
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.cdsAso.FieldByName('CODCIUTELFIJ1').AsString := DM1.cdsQry.FieldByName('CODTEL').AsString;
         dbecodciutel1.SetFocus;
      End;
   End
   Else
   Begin
      If Trim(dblcdTipoTel1.Text) <> '' Then
      Begin
         MessageDlg('Código no valido', mtError, [mbOk], 0);
         Beep;
         dblcdTipoTel1.Text := '';
         edtTipoTel1.Text := '';
         dblcdTipoTel1.SetFocus;
      End
      Else
      Begin
         edtTipoTel1.Text := '';
         DM1.cdsAso.FieldByName('CODCIUTELFIJ1').AsString := '';
         DM1.cdsAso.FieldByName('ASOTELF1').AsString := '';
         dblcdPropTel1.Text := '';
         edtPropTel1.Text := '';
         dblcdTipoTel2.SetFocus;
      End;
   End;
End;



procedure TFNueManTel.dblcdPropTel1Exit(Sender: TObject);
begin
  If DM1.cdsPropTel1.Locate('CODREFTEL', VarArrayof([dblcdPropTel1.Text]), []) Then
     edtPropTel1.Text := DM1.cdsPropTel1.fieldbyname('DESREFTEL').AsString
  Else
  Begin
     If Trim(dblcdPropTel1.Text) <> '' Then
     Begin
        MessageDlg('Código no valido', mtError, [mbOk], 0);
        Beep;
        dblcdPropTel1.Text := '';
        edtPropTel1.Text := '';
        dblcdPropTel1.SetFocus;
     End
     Else
     Begin
        dblcdPropTel1.Text := '';
        edtPropTel1.Text := '';
     End;
  End;
end;

procedure TFNueManTel.dblcdTipoTel2Exit(Sender: TObject);
Var xSql : String;
begin
   If DM1.cdsTipTel02.Locate('CODTIPTEL', VarArrayof([dblcdTipoTel2.Text]), []) Then
   Begin
      edtTipoTel2.Text := DM1.cdsTipTel02.fieldbyname('DESTIPTEL').AsString;
      // Si es celular o RPC nueve dígitos
      If (dblcdTipoTel2.Text = 'C') Or (dblcdTipoTel2.Text = 'P')  Then
         edtTel2.MaxLength := 9;
      // Si es RPM Maximo 10 caracteres
      If (dblcdTipoTel2.Text = 'R') Then
         edtTel2.MaxLength := 10;
      // Si es Fijo
      If dblcdTipoTel2.Text <> 'F' Then
      Begin
         DM1.cdsAso.FieldByName('CODCIUTELFIJ2').AsString := '';
         dbecodciutel2.Enabled := False;
         dbecodciutel2.Color := $00E6E6E6;
         edtTel2.SetFocus;
      End
      Else
      Begin
         dbecodciutel2.Enabled := True;
         dbecodciutel2.Color := clWhite;
         xSql := 'SELECT CODTEL FROM APO158 Where DPTOID = '+QuotedStr(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,1,2));
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         DM1.cdsAso.FieldByName('CODCIUTELFIJ2').AsString := DM1.cdsQry.FieldByName('CODTEL').AsString;
         dbecodciutel2.SetFocus;
      End;
   End
   Else
   Begin
      If Trim(dblcdTipoTel2.Text) <> '' Then
      Begin
         MessageDlg('Código no valido', mtError, [mbOk], 0);
         Beep;
         dblcdTipoTel2.Text := '';
         edtTipoTel2.Text := '';
         dblcdTipoTel2.SetFocus;
      End
      Else
      Begin
         edtTipoTel2.Text := '';
         DM1.cdsAso.FieldByName('CODCIUTELFIJ2').AsString := '';
         DM1.cdsAso.FieldByName('ASOTELF2').AsString := '';
         dblcdPropTel2.Text := '';
         edtPropTel2.Text := '';
      End;
   End;
end;



procedure TFNueManTel.dblcdPropTel2Exit(Sender: TObject);
begin
  If DM1.cdsPropTel2.Locate('CODREFTEL', VarArrayof([dblcdPropTel2.Text]), []) Then
     edtPropTel2.Text := DM1.cdsPropTel2.fieldbyname('DESREFTEL').AsString
  Else
  Begin
     If Trim(dblcdPropTel2.Text) <> '' Then
     Begin
        MessageDlg('Código no valido', mtError, [mbOk], 0);
        Beep;
        dblcdPropTel2.Text := '';
        edtPropTel2.Text := '';
        dblcdPropTel2.SetFocus;
     End
     Else
     Begin
        dblcdPropTel2.Text := '';
        edtPropTel2.Text := '';
     End;
  End;
end;


function TFNueManTel.validaTelf1: Boolean;
Var xSql:String;
begin
   Result := True;
   // Verifica que exista información en todos los campos
   If (Trim(dblcdTipoTel1.Text) = '') And ((Trim(dbecodciutel1.Text) <> '') Or (Trim(edtTel1.Text) <> '') Or (Trim(dblcdPropTel1.Text) <> '')) Then
   Begin
      MessageDlg('Datos del teléfono se encuentran incompleta', mtError, [mbOk], 0);
      Result := False;
      dblcdTipoTel1.SetFocus;
      Exit;
   End;
   // Sale si esta vacio
   If Trim(dblcdTipoTel1.Text) = '' Then Exit;
   // Se valida que no inicie con cero
   If Copy(edtTel1.Text,1,1) = '0' Then
   Begin
      MessageDlg('Primer digito no puede ser cero', mtError, [mbOk], 0);
      Result := False;
      edtTel1.SetFocus;
      Exit;
   End;
   // Se valida que si es RPM debe contener # o * al inicio
   If (dblcdTipoTel1.Text = 'R') And ((Copy(edtTel1.Text,1,1) <> '*') And (Copy(edtTel1.Text,1,1) <> '#')) Then
   Begin
      MessageDlg('RPM debe empezar con * o #', mtError, [mbOk], 0);
      edtTel1.SetFocus;
      Result := False;
      Exit;
   End;
   // Si no es RPM solo debe contener numeros
   If (dblcdTipoTel1.Text <> 'R') And Not DM1.ValidaSiNumero(edtTel1.Text) Then
   Begin
      MessageDlg('Número de teléfono debe contener solo números', mtError, [mbOk], 0);
      edtTel1.SetFocus;
      Result := False;
      Exit;
   End;
   // Si es fijo debe estar lleno el campo codigo de ciudad
   If (dblcdTipoTel1.Text = 'F') And (Trim(dbecodciutel1.Text) = '') Then
   Begin
      MessageDlg('Falta ingresar el código de ciudad', mtError, [mbOk], 0);
      dblcdTipoTel1.SetFocus;
      Result := False;
      Exit;
   End;
   // Validando código de ciudad
   If dblcdTipoTel1.Text = 'F' Then
   Begin
      // Se verifica que el codigo exista
      xSql := 'Select CODTEL From APO158 Where CODTEL = '+QuotedStr(dbecodciutel1.Text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If Trim(DM1.cdsQry.FieldByName('CODTEL').AsString) = '' Then
      Begin
         MessageDlg('Código de ciudad no valido', mtError, [mbOk], 0);
         Result := False;
         dblcdTipoTel1.SetFocus;
         Exit;
      End;
   End;
   // Cantidad de dígitos del teléfono
   If (dblcdTipoTel1.Text = 'C') Or (dblcdTipoTel1.Text = 'P') Then
   Begin
      If  Length(Trim(edtTel1.Text)) <> 9 Then
      Begin
         MessageDlg('Cantidad de dígitos debe ser 9', mtError, [mbOk], 0);
         Result := False;
         edtTel1.SetFocus;
         Exit;
      End;
   End;
   If (dblcdTipoTel1.Text = 'F') Then
   Begin
     If (dbecodciutel1.Text = '01') And (Length(Trim(edtTel1.Text)) <> 7) Then
     Begin
        MessageDlg('Cantidad de dígitos debe ser 7', mtError, [mbOk], 0);
        Result := False;
        edtTel1.SetFocus;
        Exit;
     End;
     If (dbecodciutel1.Text <> '01') And (Length(Trim(edtTel1.Text)) <> 6) Then
     Begin
        MessageDlg('Cantidad de dígitos debe ser 6', mtError, [mbOk], 0);
        Result := False;
        edtTel1.SetFocus;
        Exit;
     End;
   End;
   // Si es CELULAR O RPC DEBE INICIAR CON 9
   If ((dblcdTipoTel1.Text = 'C') Or (dblcdTipoTel1.Text = 'P')) And (Copy(Trim(edtTel1.Text),1,1) <> '9')  Then
   Begin
      MessageDlg('Número debe iniciar con 9', mtError, [mbOk], 0);
      Result := False;
      edtTel1.SetFocus;
      Exit;
   End;
   // Se verifica que tenga codigo de propietario
   If Trim(dblcdPropTel1.Text) = '' Then
   Begin
      MessageDlg('Selección propietario del teléfono', mtError, [mbOk], 0);
      Result := False;
      dblcdPropTel1.SetFocus;
      Exit;
   End;
End;

function TFNueManTel.validaTelf2: Boolean;
Var xSql:String;
begin
   Result := True;
   // Verifica que exista información en todos los campos
   If (Trim(dblcdTipoTel2.Text) = '') And ((Trim(dbecodciutel2.Text) <> '') Or (Trim(edtTel2.Text) <> '') Or (Trim(dblcdPropTel2.Text) <> '')) Then
   Begin
      MessageDlg('Datos del teléfono se encuentran incompleta', mtError, [mbOk], 0);
      Result := False;
      dblcdTipoTel2.SetFocus;
      Exit;
   End;
   // Sale si esta vacio
   If Trim(dblcdTipoTel2.Text) = '' Then Exit;
   // Se valida que no inicie con cero
   If Copy(edtTel2.Text,1,1) = '0' Then
   Begin
      MessageDlg('Primer digito no puede ser cero', mtError, [mbOk], 0);
      Result := False;
      edtTel2.SetFocus;
      Exit;
   End;
   // Se valida que si es RPM debe contener # o * al inicio
   If (dblcdTipoTel2.Text = 'R') And ((Copy(edtTel2.Text,1,1) <> '*') And (Copy(edtTel2.Text,1,1) <> '#')) Then
   Begin
      MessageDlg('RPM debe empezar con * o #', mtError, [mbOk], 0);
      edtTel2.SetFocus;
      Result := False;
      Exit;
   End;
   // Si no es RPM solo debe contener numeros
   If (dblcdTipoTel2.Text <> 'R') And Not DM1.ValidaSiNumero(edtTel2.Text) Then
   Begin
      MessageDlg('Número de teléfono debe contener solo números', mtError, [mbOk], 0);
      edtTel2.SetFocus;
      Result := False;
      Exit;
   End;
   // Si es fijo debe estar lleno el campo codigo de ciudad
   If (dblcdTipoTel2.Text = 'F') And (Trim(dbecodciutel2.Text) = '') Then
   Begin
      MessageDlg('Falta ingresar el código de ciudad', mtError, [mbOk], 0);
      dblcdTipoTel2.SetFocus;
      Result := False;
      Exit;
   End;
   // Validando código de ciudad
   If dblcdTipoTel2.Text = 'F' Then
   Begin
      // Se verifica que el codigo exista
      xSql := 'Select CODTEL From APO158 Where CODTEL = '+QuotedStr(dbecodciutel2.Text);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If Trim(DM1.cdsQry.FieldByName('CODTEL').AsString) = '' Then
      Begin
         MessageDlg('Código de ciudad no valido', mtError, [mbOk], 0);
         Result := False;
         dblcdTipoTel2.SetFocus;
         Exit;
      End;
   End;
   // Cantidad de dígitos del teléfono
   If (dblcdTipoTel2.Text = 'C') Or (dblcdTipoTel2.Text = 'P') Then
   Begin
      If  Length(Trim(edtTel2.Text)) <> 9 Then
      Begin
         MessageDlg('Cantidad de dígitos debe ser 9', mtError, [mbOk], 0);
         Result := False;
         edtTel2.SetFocus;
         Exit;
      End;
   End;
   If (dblcdTipoTel2.Text = 'F') Then
   Begin
     If (dbecodciutel2.Text = '01') And (Length(Trim(edtTel2.Text)) <> 7) Then
     Begin
        MessageDlg('Cantidad de dígitos debe ser 7', mtError, [mbOk], 0);
        Result := False;
        edtTel2.SetFocus;
        Exit;
     End;
     If (dbecodciutel2.Text <> '01') And (Length(Trim(edtTel2.Text)) <> 6) Then
     Begin
        MessageDlg('Cantidad de dígitos debe ser 6', mtError, [mbOk], 0);
        Result := False;
        edtTel2.SetFocus;
        Exit;
     End;
   End;
   // Si es CELULAR O RPC DEBE INICIAR CON 9
   If ((dblcdTipoTel2.Text = 'C') Or (dblcdTipoTel2.Text = 'P')) And (Copy(Trim(edtTel2.Text),1,1) <> '9')  Then
   Begin
      MessageDlg('Número debe iniciar con 9', mtError, [mbOk], 0);
      Result := False;
      edtTel2.SetFocus;
      Exit;
   End;
   If Trim(dblcdPropTel2.Text) = '' Then
   Begin
      MessageDlg('Selección propietario del teléfono', mtError, [mbOk], 0);
      Result := False;
      dblcdPropTel2.SetFocus;
      Exit;
   End;

End;

procedure TFNueManTel.dbecodciutel1Exit(Sender: TObject);
begin
   If dbecodciutel1.Text = '01' Then
      edtTel1.MaxLength := 7
   Else
      edtTel1.MaxLength := 6;
end;

procedure TFNueManTel.dbecodciutel2Exit(Sender: TObject);
begin
   If  dbecodciutel2.Text = '01' Then
      edtTel2.MaxLength := 7
   Else
      edtTel2.MaxLength := 6;
end;

end.
