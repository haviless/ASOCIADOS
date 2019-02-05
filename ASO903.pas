// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO903.pas
// Formulario              :  FPrincipal
// Fecha de Creación       :  15/12/1993
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Menú Principal del Módulo de Asociados

// Actualizaciones:
// HPC_201119_ASO             Se amplió el universo de Tipo de Lugar, Sector, Mz, Int
//                            No hay actualizaciones a nivel de Código, se cambia tamaño de formulario.
// Se realiza el pase a producción N° HPP_201109_ASO, a partir del pase HPC_201119_ASO
// HPC_201204_ASO     : SE QUITA LA ACTUALIZACION DEL CAMPO DPTOID, POR SER UN CAMPO UTILIZADO PARA
//                      UBICAR AL DPTO DE LA UGEL Y NO AL DPTO DEL DOMICILIO.
// DPP_201203_ASO     : Se realiza el pase a produccion a partir del pase HPC_201204_ASO
// HPC_201211_ASO     : Se registra la información nueva en la base de datos centralizada
//                      de ubicabilidad, si existe una modificación en la dirección
// SPP_201301_ASO     : El pase a producción se realiza sobre la base del HPC_201301_ASO
// HPC_201309_ASO     : Item "DEPARTAMENTO" agregado al combo "dpto/int". Modificado MaxLength a 6 de memanzana, melote y menumpiso
// SPP_201310_ASO     : Se realiza el pase a producción a partir del HPC_201309_ASO

unit ASO903;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdblook, Wwdbdlg, Buttons,
  // Inicio: SPP_201301_ASO
  WSUbicabilidad, XSBuiltIns
  // Fin: SPP_201301_ASO
  ;
  
type
  Tfmandom = class(TForm)
    Label1: TLabel;
    medescal: TMaskEdit;
    Label2: TLabel;
    menumdir: TMaskEdit;
    Label3: TLabel;
    lblmanzana: TLabel;
    lbllote: TLabel;
    cbpiso: TComboBox;
    Label6: TLabel;
    lblintlet: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbseceta: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    dblccodtiplug: TwwDBLookupComboDlg;
    medestiplug: TMaskEdit;
    dblccodurb: TwwDBLookupComboDlg;
    medesurb: TMaskEdit;
    memanzana: TMaskEdit;
    melote: TMaskEdit;
    menumpiso: TMaskEdit;
    Label15: TLabel;
    merefdir: TMaskEdit;
    menomurb: TMaskEdit;
    menomsec: TMaskEdit;
    dblcdcoddep: TwwDBLookupComboDlg;
    medesdep: TMaskEdit;
    dblcdcodpro: TwwDBLookupComboDlg;
    medespro: TMaskEdit;
    dblcdcoddis: TwwDBLookupComboDlg;
    medesdis: TMaskEdit;
    btngrabar: TBitBtn;
    btncancelar: TBitBtn;
    btneditar: TBitBtn;
    measodir: TMaskEdit;
    Label16: TLabel;
    cbtipman: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure dblccodtiplugChange(Sender: TObject);
    procedure dblccodurbChange(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btngrabarClick(Sender: TObject);
    procedure cbsecetaChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdcoddepExit(Sender: TObject);
    procedure dblcdcodproExit(Sender: TObject);
    procedure dblcdcoddisExit(Sender: TObject);
    procedure dblcdcoddepChange(Sender: TObject);
    procedure dblcdcodproChange(Sender: TObject);
    procedure dblccodtiplugExit(Sender: TObject);
    procedure dblccodurbExit(Sender: TObject);
    procedure btneditarClick(Sender: TObject);
    procedure medescalKeyPress(Sender: TObject; var Key: Char);
    procedure cbpisoExit(Sender: TObject);
    procedure cbsecetaExit(Sender: TObject);
    procedure cbtipmanExit(Sender: TObject);
    procedure memanzanaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function validadatos:Boolean;
    procedure llenaforma;
    procedure inhabilita;
    procedure habilitar;
    function actasodir:String;
  public
    { Public declarations }
  end;

var
  fmandom: Tfmandom;

implementation

uses ASODM, ASO260;

{$R *.dfm}

procedure Tfmandom.FormActivate(Sender: TObject);
Var xSql:String;
begin
  xSql := 'SELECT CODTIPLUG, DESTIPLUG  FROM ASO_TIP_LUG WHERE NVL(FLAHAB,''X'') = ''S'' ORDER BY ORDEN';
  DM1.cdsCViv.Close;
  DM1.cdsCViv.DataRequest(xSql);
  DM1.cdsCViv.Open;

  dblccodtiplug.Selected.Clear;
  dblccodtiplug.Selected.Add('CODTIPLUG'#9'6'#9'Código'#9#9);
  dblccodtiplug.Selected.Add('DESTIPLUG'#9'12'#9'Descripción'#9#9);

  xSql := 'SELECT CODURB, DESURB FROM ASO_TIP_URB WHERE NVL(FLAHAB,''X'') = ''S'' ORDER BY ORDEN';
  DM1.cdsCia.Close;
  DM1.cdsCia.DataRequest(xSql);
  DM1.cdsCia.Open;

  dblccodurb.Selected.Clear;
  dblccodurb.Selected.Add('CODURB'#9'2'#9'Código'#9#9);
  dblccodurb.Selected.Add('DESURB'#9'23'#9'Descripción'#9#9);

  xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcdcoddep.Selected.Clear;
  dblcdcoddep.Selected.Add('DPTOID'#9'2'#9'Código'#9#9);
  dblcdcoddep.Selected.Add('DPTODES'#9'23'#9'Departamento'#9#9);

  habilitar;
  llenaforma;
  inhabilita;

  btngrabar.Enabled := False;
  btneditar.Enabled := True;

end;

procedure Tfmandom.dblccodtiplugChange(Sender: TObject);
begin
  If Length(Trim(dblccodtiplug.Text)) = 2 Then
    medestiplug.Text := DM1.cdsCViv.FieldByName('DESTIPLUG').AsString
  Else
    medestiplug.Text := '';
end;





procedure Tfmandom.dblccodurbChange(Sender: TObject);
begin
  If Length(Trim(dblccodurb.Text)) = 2 Then
    medesurb.Text := DM1.cdsCia.FieldByName('DESURB').AsString
  Else
    medesurb.Text := '';
end;

procedure Tfmandom.btncancelarClick(Sender: TObject);
begin
  fmandom.Close;
end;

procedure Tfmandom.btngrabarClick(Sender: TObject);
Var xAsoId,xasodir,xCodReg, xSQL, xcbseceta, xcbtipman, xcbpiso:String;
// Inicio: SPP_201301_ASO
  wsUbica: WSUbicabilidadSoap;
  dir: ASO_UBICA_DIR_HIS;
  fecAct: TXSDateTime;
// Fin: SPP_201301_ASO
begin
 xAsoId:=DM1.cdsAso.FieldByName('ASOID').AsString;
 If validadatos = True Then
 Begin
   If MessageDlg('Desea actualizar el domicilio del asociado' ,  mtConfirmation, [mbYes, mbNo], 0) = mrYes  then
   Begin
     If Trim(cbseceta.Text) = 'Ninguno' Then
     Begin
       xcbseceta     := '';
       menomsec.Text := '';
     End
     Else xcbseceta := cbseceta.Text;
     If Trim(cbpiso.Text) = 'Ninguno' Then
     Begin
      xcbpiso        := '';
      menumpiso.Text := '';
     End
     Else xcbpiso := cbpiso.Text;
     If Trim(cbtipman.Text) = 'Ninguno' Then
     Begin
       xcbtipman := '';
       memanzana.Text := '';
       melote.Text := '';
     End
     Else xcbtipman := cbtipman.Text;
     xasodir := actasodir;
     // Inicio: SPP_201301_ASO
     //Si la dirección actual de la BD es diferente a la que se desea grabar se
     //registra la nueva dirección de Ubicabilidad
     if DM1.sAPO201 = 'APO201' then
     begin
       xSql := 'SELECT ASODIR, DPTOID, CIUDID, ZIPID FROM ' + DM1.sAPO201 + ' WHERE ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xSql);
       DM1.cdsQry.Open;
       if DM1.cdsQry.RecordCount > 0 then
       begin
         if (xasodir <> '')
         and
           (
           (DM1.cdsQry.FieldByName('ASODIR').AsString <> xasodir)
           or (DM1.cdsQry.FieldByName('DPTOID').AsString <> Trim(dblcdcoddep.Text))
           or (DM1.cdsQry.FieldByName('CIUDID').AsString <> Trim(dblcdcodpro.Text))
           or (DM1.cdsQry.FieldByName('ZIPID').AsString <> Trim(dblcdcoddis.Text))
           )
         then
         begin
           fecAct := TXSDateTime.Create;
           wsUbica := GetWSUbicabilidadSoap(false, '');
           dir := ASO_UBICA_DIR_HIS.Create;
           
           dir.ASOID := DM1.cdsAso.FieldByName('ASOID').AsString;
           dir.CODPROV := 3; //Previsión
           dir.CODPROC := 3; //Actualización de Datos
           dir.CODTIPDIR := 1; //Domicilio
           dir.CODDPTO_TRANSACCIONAL := Copy(Trim(dblcdcoddis.Text),1,2);
           dir.CODPRV_TRANSACCIONAL := Copy(Trim(dblcdcoddis.Text),1,4);
           dir.CODDIST_TRANSACCIONAL := Copy(Trim(dblcdcoddis.Text),1,6);
           fecAct.AsDateTime := DM1.FechaSys();
           dir.FECACT := fecAct;
           dir.ASODIR := xasodir;
           dir.DESREF := Trim(merefdir.Text);
           dir.USUREG := DM1.wUsuario;
           
           wsUbica.Crear_Ubicabilidad_Direccion(dir);
           dir.Free;
         end;
       end;
     end;
     // Fin: SPP_201301_ASO
     xCodReg:=DM1.CodReg;
     DM1.Registro_Aud(xAsoId,'0',xCodReg);
     xSql := 'UPDATE '+DM1.sAPO201+' SET MDFASODIR=ASODIR,MDFZIPID=ZIPID,MDFCNTREG=''1'',MDFUSRMOD='+QuotedStr(DM1.wUsuario)+',MDFFECMOD=SYSDATE, '
     +'  NOMDIRVIV = '+QuotedStr(Trim(medescal.Text))
     // SE QUITA LA ACTUALIZACION DEL CAMPO DPTOID. ESTE CAMPO PERTENECE AL DEPARTAMENTO DE LA UGEL
     // Y NO AL DEPARTAMENTO DEL DOMICILIO
     // +', DPTOID    = '+QuotedStr(Copy(Trim(dblcdcoddis.Text),1,2))
     +', ASODPTO   = '+QuotedStr(Copy(Trim(dblcdcoddis.Text),1,2))
     +', CIUDID    = '+QuotedStr(Copy(Trim(dblcdcoddis.Text),1,4))
     +', ZIPID     = '+QuotedStr(Trim(dblcdcoddis.Text))
     +', CODTIPLUG = '+QuotedStr(Trim(dblccodtiplug.Text))
     +', NUMDIRVIV = '+QuotedStr(Trim(menumdir.Text))
     +', DESMANVIV = '+QuotedStr(Trim(xcbtipman))
     +', NUMMANVIV = '+QuotedStr(Trim(memanzana.Text))
     +', NUMLOTVIV = '+QuotedStr(Trim(melote.Text))
     +', DESINTVIV = '+QuotedStr(Trim(xcbpiso))
     +', NUMINTVIV = '+QuotedStr(Trim(menumpiso.Text))
     +', DESREFVIV = '+QuotedStr(Trim(merefdir.Text))
     +', CODURBVIV = '+QuotedStr(Trim(dblccodurb.Text))
     +', DESURBVIV = '+QuotedStr(Trim(menomurb.Text))
     +', NUMETAVIV = '+QuotedStr(Trim(xcbseceta))
     +', DESETAVIV = '+QuotedStr(Trim(menomsec.Text))
     +', ASODIR    = '+QuotedStr(Copy(Trim(xasodir),1,250))
     +'  WHERE ASOID = '+QuotedStr(xAsoId);
     DM1.DCOM1.AppServer.EjecutaSql(xSql);
     DM1.Registro_Aud(xAsoId,'1',xCodReg);
     FMantAsociado.dbeDirec.Text := xasodir;
     FMantAsociado.lkcDpto.Text  := Copy(Trim(dblcdcoddis.Text),1,2);
     FMantAsociado.lkcProv.Text  := Copy(Trim(dblcdcoddis.Text),1,4);
     FMantAsociado.lkcDist.Text  := dblcdcoddis.Text;
     FMantAsociado.edtDpto.Text  := medesdep.Text;
     FMantAsociado.edtProv.Text  := medespro.Text;
     FMantAsociado.edtDist.Text  := medesdis.Text;
     measodir.Text         := xasodir;
   // Inicio: SPP_201301_ASO
     MessageDlg('Registro actualizado', mtInformation, [mbOk], 0);
   // Fin: SPP_201301_ASO
     btngrabar.Enabled := False;
     btneditar.Enabled := True;
     inhabilita;
   End;
 End;
end;

procedure Tfmandom.cbsecetaChange(Sender: TObject);
begin
 If cbseceta.ItemIndex = 0 Then
 Begin
   menomsec.Text    := '';
   menomsec.Enabled := False;
   menomsec.Color   := clMoneyGreen;
 End
 Else
 Begin
   menomsec.Enabled := True;
   menomsec.Color   := clWhite;
 End;
end;

procedure Tfmandom.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End
end;

procedure Tfmandom.dblcdcoddepExit(Sender: TObject);
Var xSql:String;
begin
  If Length(trim(dblcdcoddep.Text)) = 2 Then
  Begin
    If DM1.cdsDpto.Locate('DPTOID',VarArrayof([dblcdcoddep.text]),[]) Then
    Begin
      medesdep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
      xSql := 'SELECT CIUDID, CIUDDES FROM APO123 WHERE DPTOID = '+QuotedStr(dblcdcoddep.Text)+' ORDER BY CIUDID';
      DM1.cdsProvin.Close;
      DM1.cdsProvin.DataRequest(xSql);
      DM1.cdsProvin.Open;
      dblcdcodpro.Selected.Clear;
      dblcdcodpro.Selected.Add('CIUDID'#9'4'#9'Ubigeo'#9#9);
      dblcdcodpro.Selected.Add('CIUDDES'#9'23'#9'Provincia'#9#9);
      dblcdcodpro.Color := clWhite;
      dblcdcodpro.Enabled := True;
      If Copy(DM1.cdsQry.FieldByName('ZIPID').AsString,1,2) = dblcdcoddep.Text Then
      Begin
         dblcdcodpro.Text := Copy(DM1.cdsQry.FieldByName('ZIPID').AsString,1,4);
         dblcdcoddis.Text := DM1.cdsQry.FieldByName('ZIPID').AsString;
      End;
      If dblcdcodpro.Enabled = True Then dblcdcodpro.SetFocus;
      Exit;
    End
    Else
    Begin
      medesdep.Text := '';
      dblcdcodpro.Color := clMoneyGreen;
      dblcdcodpro.Enabled := False;
      dblcdcoddep.Text := '';
      MessageDlg('Código errado', mtError, [mbOk], 0);
      If dblcdcoddep.Enabled = True Then  dblcdcoddep.SetFocus;
      Exit;
    End;
  End
  Else
  Begin
    medesdep.Text := '';
    dblcdcodpro.Color := clMoneyGreen;
    dblcdcodpro.Enabled := False;
    dblcdcoddep.Text := '';
    MessageDlg('Código errado', mtError, [mbOk], 0);
    If dblcdcoddep.Enabled = True Then   dblcdcoddep.SetFocus;
    Exit;
  End;
end;

procedure Tfmandom.dblcdcodproExit(Sender: TObject);
Var xSql:String;
begin
  If Length(trim(dblcdcodpro.Text)) = 4 Then
  Begin
    If DM1.cdsProvin.Locate('CIUDID',VarArrayof([dblcdcodpro.text]),[]) Then
    Begin
      medespro.Text := DM1.cdsProvin.FieldByName('CIUDDES').AsString;
      xSql := 'SELECT ZIPID, ZIPDES FROM APO122 WHERE CIUDID = '+QuotedStr(dblcdcodpro.Text)+' ORDER BY ZIPID';
      DM1.cdsDist.Close;
      DM1.cdsDist.DataRequest(xSql);
      DM1.cdsDist.Open;
      dblcdcoddis.Selected.Clear;
      dblcdcoddis.Selected.Add('ZIPID'#9'6'#9'Ubigeo'#9#9);
      dblcdcoddis.Selected.Add('ZIPDES'#9'23'#9'Distrito'#9#9);
      dblcdcoddis.Color := clWhite;
      dblcdcoddis.Enabled := True;
      If Copy(DM1.cdsQry.FieldByName('ZIPID').AsString,1,4) = dblcdcodpro.Text Then
        dblcdcoddis.Text := DM1.cdsQry.FieldByName('ZIPID').AsString;
      If dblcdcoddis.Enabled = True Then  dblcdcoddis.SetFocus;
      Exit;
    End
    Else
    Begin
      medespro.Text := '';
      dblcdcoddis.Color := clMoneyGreen;
      dblcdcoddis.Enabled := False;
      dblcdcodpro.Text := '';
      MessageDlg('Código errado', mtError, [mbOk], 0);
      If dblcdcodpro.Enabled = True Then  dblcdcodpro.SetFocus;
      Exit;
    End;
  End
  Else
  Begin
    medespro.Text := '';
    dblcdcodpro.Color := clMoneyGreen;
    dblcdcoddis.Enabled := False;
    dblcdcoddis.Text := '';
    MessageDlg('Código errado', mtError, [mbOk], 0);
    If dblcdcodpro.Enabled = True Then dblcdcodpro.SetFocus;
    Exit;
  End;

end;

procedure Tfmandom.dblcdcoddisExit(Sender: TObject);
Begin
  If Length(trim(dblcdcoddis.Text)) = 6 Then
  Begin
    If DM1.cdsDist.Locate('ZIPID',VarArrayof([dblcdcoddis.text]),[]) Then
    Begin
      medesdis.Text := DM1.cdsDist.FieldByName('ZIPDES').AsString;
      If btngrabar.Enabled = True Then  btngrabar.SetFocus;
      Exit;
    End
    Else
    Begin
      medesdis.Text    := '';
      dblcdcoddis.Text := '';
      MessageDlg('Código errado', mtError, [mbOk], 0);
      If dblcdcoddis.Enabled = True Then dblcdcoddis.SetFocus;
      Exit;
    End;
  End
  Else
  Begin
    dblcdcoddis.Text := '';
    medesdis.Text    := '';
    MessageDlg('Código errado', mtError, [mbOk], 0);
    If dblcdcodpro.Enabled = True Then dblcdcodpro.SetFocus;
    Exit;
  End;
End;

function Tfmandom.validadatos: Boolean;
begin
  If Trim(dblccodtiplug.Text) <> '' Then
  Begin
    If Trim(medescal.Text) = '' Then
    Begin
      MessageDlg('Seleccione nombre de calle/avenida/jiron', mtError, [mbOk], 0);
      If medescal.Enabled = True Then medescal.SetFocus;
      Result := False;
      Exit;
    End;
  End;
  If Trim(medescal.Text) <> '' Then
  Begin
    If Trim(dblccodtiplug.Text) = '' Then
    Begin
      MessageDlg('Seleccione tipo de calle/avenida/jiron', mtError, [mbOk], 0);
      If dblccodtiplug.Enabled = True Then dblccodtiplug.SetFocus;
      Result := False;
      Exit;
    End;
  End;
  If Trim(cbpiso.Text) <> 'Ninguno' Then
  Begin
    If Trim(menumpiso.Text) = '' Then
    Begin
      MessageDlg('Ingrese el número dpto/int', mtError, [mbOk], 0);
      If menumpiso.Enabled = True Then  menumpiso.SetFocus;
      Result := False;
      Exit;
    End;
  End;
  If Trim(cbseceta.Text) <> 'Ninguno' Then
  Begin
    If Trim(menomsec.Text) = '' Then
    Begin
      MessageDlg('nombre sector/etapa', mtError, [mbOk], 0);
      If menomsec.Enabled = True Then menomsec.SetFocus;
      Result := False;
      Exit;
    End;
  End;
  If Trim(dblcdcoddep.Text) = '' Then
  Begin
    MessageDlg('Ingrese el nombre del departamento', mtError, [mbOk], 0);
    If dblcdcoddep.Enabled = True Then dblcdcoddep.SetFocus;
    Result := False;
    Exit;
  End;
  If Trim(dblcdcodpro.Text) = '' Then
  Begin
    MessageDlg('Ingrese el nombre de la provincia', mtError, [mbOk], 0);
    If dblcdcodpro.Enabled = True Then dblcdcodpro.SetFocus;
    Result := False;
    Exit;
  End;
  If Trim(dblcdcoddis.Text) = '' Then
  Begin
    MessageDlg('Ingrese el nombre del distrito', mtError, [mbOk], 0);
    If dblcdcoddis.Enabled = True Then dblcdcoddis.SetFocus;
    Result := False;
    Exit;
  End;
  Result := True;
End;


procedure Tfmandom.llenaforma;
Var xSql:String;
begin
  xSql := 'SELECT * FROM '+DM1.sAPO201+' WHERE ASOID = '+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  measodir.Text      := DM1.cdsQry.FieldByName('ASODIR').AsString;
  // Urbanización
  If (DM1.cdsQry.FieldByName('CODURBVIV').AsString <> '') Then
  Begin
    dblccodurb.Text := DM1.cdsQry.FieldByName('CODURBVIV').AsString;
    xSql := 'SELECT CODURB, DESURB FROM ASO_TIP_URB WHERE CODURB = '+QuotedStr(dblccodurb.Text);
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    medesurb.Text := DM1.cdsQry2.FieldByName('DESURB').AsString;
    menomurb.Text := DM1.cdsQry.FieldByName('DESURBVIV').AsString;
  End
  Else
  Begin
    menomurb.Text := '';
    medesurb.Text := '';
    menomurb.Color := clMoneyGreen;
    menomurb.Enabled := False;
  End;
  // Sector/etapa
  If Trim(DM1.cdsQry.FieldByName('NUMETAVIV').AsString) = '' Then
  Begin
    cbseceta.Text  := 'Ninguno';
    menomsec.Text  := '';
    menomsec.Color := clMoneyGreen;
  End
  Else
  Begin
    cbseceta.Text  := DM1.cdsQry.FieldByName('NUMETAVIV').AsString;
    menomsec.Text  := DM1.cdsQry.FieldByName('DESETAVIV').AsString;
    menomsec.Color := clWhite;
  End;
  // calle/avenida/jiron
  If Trim(DM1.cdsQry.FieldByName('CODTIPLUG').AsString) <> '' Then
  Begin
    dblccodtiplug.Text := DM1.cdsQry.FieldByName('CODTIPLUG').AsString;
    xSql := 'SELECT * FROM ASO_TIP_LUG WHERE CODTIPLUG = '+QuotedStr(dblccodtiplug.Text);
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    medestiplug.Text   := DM1.cdsQry2.FieldByName('DESTIPLUG').AsString;
    medescal.Text      := DM1.cdsQry.FieldByName('NOMDIRVIV').AsString;
    menumdir.Text      := DM1.cdsQry.FieldByName('NUMDIRVIV').AsString;
  End
  Else
  Begin
    medescal.Text    := '';
    menumdir.Text    := '';
    medestiplug.Text := '';
    medescal.Color   := clMoneyGreen;
    menumdir.Color   := clMoneyGreen;
  End;
  // Mz./Edif./Bock
  If Trim(DM1.cdsQry.FieldByName('DESMANVIV').AsString) = '' Then
  Begin
    cbtipman.Text  := 'Ninguno';
    memanzana.Text := '';
    melote.Text    := '';
    lblmanzana.Caption := '';
    lbllote.Caption    := '';
    memanzana.Color := clMoneyGreen;
    melote.Color := clMoneyGreen;
    memanzana.Enabled := False;
    melote.Enabled := False;
  End
  Else
  Begin
    If Trim(DM1.cdsQry.FieldByName('DESMANVIV').AsString) = 'MANZANA' Then
    Begin
      cbtipman.Text  := DM1.cdsQry.FieldByName('DESMANVIV').AsString;
      memanzana.Text := DM1.cdsQry.FieldByName('NUMMANVIV').AsString;
      melote.Text    := DM1.cdsQry.FieldByName('NUMLOTVIV').AsString;
      lblmanzana.Caption := 'MANZANA';
      lbllote.Caption    := 'LOTE';
      memanzana.Color    := clWhite;
      melote.Color       := clWhite;
      memanzana.Enabled  := True;
      melote.Enabled     := True;
    End;
    If Trim(DM1.cdsQry.FieldByName('DESMANVIV').AsString) = 'EDIFICIO' Then
    Begin
      cbtipman.Text  := DM1.cdsQry.FieldByName('DESMANVIV').AsString;
      memanzana.Text := DM1.cdsQry.FieldByName('NUMMANVIV').AsString;
      melote.Text    := DM1.cdsQry.FieldByName('NUMLOTVIV').AsString;
      lblmanzana.Caption := 'EDIFICIO';
      lbllote.Caption    := 'PISO';
      memanzana.Color    := clWhite;
      melote.Color       := clWhite;
      memanzana.Enabled  := True;
      melote.Enabled     := True;
    End;
    If Trim(DM1.cdsQry.FieldByName('DESMANVIV').AsString) = 'BLOCK' Then
    Begin
      cbtipman.Text  := DM1.cdsQry.FieldByName('DESMANVIV').AsString;
      memanzana.Text := DM1.cdsQry.FieldByName('NUMMANVIV').AsString;
      melote.Text    := DM1.cdsQry.FieldByName('NUMLOTVIV').AsString;
      lblmanzana.Caption := 'BLOCK';
      lbllote.Caption    := 'LETRA';
      memanzana.Color    := clWhite;
      melote.Color       := clWhite;
      memanzana.Enabled  := True;
      melote.Enabled     := True;
    End;
  End;
  // tipo dpto/int
  If Trim(DM1.cdsQry.FieldByName('DESINTVIV').AsString) = '' Then
  Begin
    cbpiso.Text := 'Ninguno';
    menumpiso.Text := '';
    menumpiso.Enabled := False;
    menumpiso.Color := clMoneyGreen;
  End
  Else
  Begin
    If Trim(DM1.cdsQry.FieldByName('DESINTVIV').AsString) = 'INTERIOR' Then
    Begin
      cbpiso.Text := DM1.cdsQry.FieldByName('DESINTVIV').AsString;
      menumpiso.Text := DM1.cdsQry.FieldByName('NUMINTVIV').AsString;
      menumpiso.Enabled := True;
      menumpiso.Color := clWhite;
    End;
    If Trim(DM1.cdsQry.FieldByName('DESINTVIV').AsString) = 'LETRA' Then
    // Inicio: SPP_201310_ASO
    Begin
      cbpiso.Text := DM1.cdsQry.FieldByName('DESINTVIV').AsString;
      menumpiso.Text := DM1.cdsQry.FieldByName('NUMINTVIV').AsString;
      menumpiso.Enabled := True;
      menumpiso.Color := clWhite;
    End;

    // Item agregado al combo (cbpiso) "dpto/int"
    If Trim(DM1.cdsQry.FieldByName('DESINTVIV').AsString) = 'DPTO' Then
    Begin
      cbpiso.Text := DM1.cdsQry.FieldByName('DESINTVIV').AsString;
      menumpiso.Text := DM1.cdsQry.FieldByName('NUMINTVIV').AsString;
      menumpiso.Enabled := True;
      menumpiso.Color := clWhite;
    End;
    // Fin: SPP_201310_ASO

  End;
  //Referencia
  merefdir.Text  := DM1.cdsQry.FieldByName('DESREFVIV').AsString;
  // Ubigeo
  If Length(Trim(DM1.cdsQry.FieldByName('ZIPID').AsString)) = 6 Then
  Begin
    xSql := 'SELECT * FROM APO158 WHERE DPTOID = '+QuotedStr(Copy(DM1.cdsQry.FieldByName('ZIPID').AsString,1,2));
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    medesdep.Text    := DM1.cdsQry2.FieldByName('DPTODES').AsString;
    dblcdcoddep.Text := Copy(DM1.cdsQry.FieldByName('ZIPID').AsString,1,2);
    xSql := 'SELECT * FROM APO123 WHERE CIUDID = '+QuotedStr(Copy(DM1.cdsQry.FieldByName('ZIPID').AsString,1,4));
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    xSql := 'SELECT CIUDID, CIUDDES FROM APO123 WHERE DPTOID = '+QuotedStr(dblcdcoddep.Text)+' ORDER BY CIUDID';
    DM1.cdsProvin.Close;
    DM1.cdsProvin.DataRequest(xSql);
    DM1.cdsProvin.Open;
    dblcdcodpro.Selected.Clear;
    dblcdcodpro.Selected.Add('CIUDID'#9'4'#9'Ubigeo'#9#9);
    dblcdcodpro.Selected.Add('CIUDDES'#9'23'#9'Provincia'#9#9);
    medespro.Text    := DM1.cdsQry2.FieldByName('CIUDDES').AsString;
    dblcdcodpro.Text := Copy(DM1.cdsQry.FieldByName('ZIPID').AsString,1,4);
    xSql := 'SELECT * FROM APO122 WHERE ZIPID = '+QuotedStr(DM1.cdsQry.FieldByName('ZIPID').AsString);
    DM1.cdsQry2.Close;
    DM1.cdsQry2.DataRequest(xSql);
    DM1.cdsQry2.Open;
    xSql := 'SELECT ZIPID, ZIPDES FROM APO122 WHERE CIUDID = '+QuotedStr(dblcdcodpro.Text)+' ORDER BY ZIPID';
    DM1.cdsDist.Close;
    DM1.cdsDist.DataRequest(xSql);
    DM1.cdsDist.Open;
    dblcdcoddis.Selected.Clear;
    dblcdcoddis.Selected.Add('ZIPID'#9'6'#9'Ubigeo'#9#9);
    dblcdcoddis.Selected.Add('ZIPDES'#9'23'#9'Distrito'#9#9);
    medesdis.Text := DM1.cdsQry2.FieldByName('ZIPDES').AsString;
    dblcdcoddis.Text := DM1.cdsQry.FieldByName('ZIPID').AsString;
  End;
End;

procedure Tfmandom.dblcdcoddepChange(Sender: TObject);
begin
  dblcdcodpro.Text := '';
  medespro.Text    := '';
  dblcdcoddis.Text := '';
  medesdis.Text    := '';
end;

procedure Tfmandom.dblcdcodproChange(Sender: TObject);
begin
  dblcdcoddis.Text := '';
  medesdis.Text    := '';
end;

procedure Tfmandom.dblccodtiplugExit(Sender: TObject);
begin
  If Length(Trim(dblccodtiplug.Text)) = 0 Then
  Begin
    medestiplug.Text := '';
    medescal.Text    := '';
    medescal.Enabled := False;
    medescal.Color   := clMoneyGreen;
    menumdir.Text := '';
    menumdir.Enabled := False;
    menumdir.Color   := clMoneyGreen;
    If cbtipman.Enabled = True Then cbtipman.SetFocus;
    Exit;
  End;
  If Length(trim(dblccodtiplug.Text)) = 2 Then
  Begin
    If DM1.cdsCViv.Locate('CODTIPLUG',VarArrayof([dblccodtiplug.text]),[]) Then
    Begin
      medestiplug.Text := DM1.cdsCViv.FieldByName('DESTIPLUG').AsString;
      medescal.Enabled := True;
      menumdir.Enabled := True;
      medescal.Color := clWhite;
      menumdir.Color := clWhite;
      If medescal.Enabled = True Then medescal.SetFocus;
      Exit;
    End
    Else
    Begin
      dblccodtiplug.Text := '';
      medestiplug.Text  := '';
      If dblccodtiplug.Enabled = True Then dblccodtiplug.SetFocus;
      Exit;
    End;
  End
  Else
  Begin
    dblccodtiplug.Text := '';
    medestiplug.Text  := '';
    If dblccodtiplug.Enabled =True Then dblccodtiplug.SetFocus;
    Exit;
  End;
end;

procedure Tfmandom.dblccodurbExit(Sender: TObject);
begin
  If Length(Trim(dblccodurb.Text)) = 0 Then
  Begin
    medesurb.Text := '';
    menomurb.Text := '';
    menomurb.Enabled := False;
    menomurb.Color := clMoneyGreen;
    If cbseceta.Enabled = True Then cbseceta.SetFocus;
    Exit;
  End;
  If Length(trim(dblccodurb.Text)) = 2 Then
  Begin
    If DM1.cdsCia.Locate('CODURB',VarArrayof([dblccodurb.text]),[]) Then
    Begin
      medesurb.Text := DM1.cdsCia.FieldByName('DESURB').AsString;
      menomurb.Enabled := True;
      menomurb.Color := clWhite;
      If menomurb.Enabled = True Then  menomurb.SetFocus;
      Exit;
    End
    Else
    Begin
      dblccodurb.Text := '';
      medesurb.Text  := '';
      If dblccodurb.Enabled = True Then dblccodurb.SetFocus;
      Exit;
    End;
  End
  Else
  Begin
    dblccodurb.Text := '';
    medesurb.Text  := '';
    If dblccodurb.Enabled = True Then  dblccodurb.SetFocus;
    Exit;
  End;
End;


procedure Tfmandom.inhabilita;
begin
  dblccodtiplug.Enabled := False;
  medescal.Enabled      := False;
  menumdir.Enabled      := False;
  memanzana.Enabled     := False;
  melote.Enabled        := False;
  cbpiso.Enabled        := False;
  menumpiso.Enabled     := False;
  merefdir.Enabled      := False;
  dblccodurb.Enabled    := False;
  menomurb.Enabled      := False;
  cbseceta.Enabled      := False;
  cbtipman.Enabled      := False;
  menomsec.Enabled      := False;
  dblcdcoddep.Enabled   := False;
  dblcdcodpro.Enabled   := False;
  dblcdcoddis.Enabled   := False;
  medesdep.Enabled      := False;
  medespro.Enabled      := False;
  medesdis.Enabled      := False;
  medesurb.Enabled      := False;
  medestiplug.Enabled   := False;
end;

procedure Tfmandom.btneditarClick(Sender: TObject);
begin
 habilitar;
 btngrabar.Enabled := True;
 btneditar.Enabled := False;
 If dblccodurb.Enabled = True Then dblccodurb.SetFocus;
end;

Procedure Tfmandom.habilitar;
Begin
  dblccodurb.Enabled    := True;
  medesurb.Enabled      := True;
  menomurb.Enabled      := True;
  cbseceta.Enabled      := True;
  menomsec.Enabled      := True;
  dblccodtiplug.Enabled := True;
  medestiplug.Enabled   := True;
  medescal.Enabled      := True;
  menumdir.Enabled      := True;
  cbtipman.Enabled      := True;
  memanzana.Enabled     := True;
  melote.Enabled        := True;
  cbpiso.Enabled        := True;
  menumpiso.Enabled     := True;
  merefdir.Enabled      := True;
  dblcdcoddep.Enabled   := True;
  medesdep.Enabled      := True;
  dblcdcodpro.Enabled   := True;
  medespro.Enabled      := True;
  dblcdcoddis.Enabled   := True;
  medesdis.Enabled      := True;
End;

procedure Tfmandom.medescalKeyPress(Sender: TObject; var Key: Char);
begin
 If Copy(Trim(medescal.Text),1,1) = '.' Then
    MessageDlg('Caracter no valido', mtError, [mbOk], 0);
end;

function Tfmandom.actasodir: String;
Var xnuedir:String;
begin
  If Trim(medestiplug.Text) <> ''     Then xnuedir := xnuedir + Trim(medestiplug.Text);
  If Trim(medescal.Text) <> ''        Then xnuedir := xnuedir + ' '+Trim(medescal.Text);
  If Trim(menumdir.Text) <> ''        Then xnuedir := xnuedir + ' # '+Trim(menumdir.Text);
  If trim(cbtipman.Text) = 'MANZANA' Then
  Begin
    If Trim(memanzana.Text) <> ''       Then xnuedir := xnuedir + ' Mz. '+Trim(memanzana.Text);
    If Trim(melote.Text) <> ''          Then xnuedir := xnuedir + ' Lt. '+Trim(melote.Text);
  End;
  If trim(cbtipman.Text) = 'EDIFICIO' Then
  Begin
    If Trim(memanzana.Text) <> ''       Then xnuedir := xnuedir + ' Edf. '+Trim(memanzana.Text);
    If Trim(melote.Text) <> ''          Then xnuedir := xnuedir + ' Pis. '+Trim(melote.Text);
  End;
  If trim(cbtipman.Text) = 'BLOCK' Then
  Begin
    If Trim(memanzana.Text) <> ''       Then xnuedir := xnuedir + ' Bl. '+Trim(memanzana.Text);
    If Trim(melote.Text) <> ''          Then xnuedir := xnuedir + ' Ltr. '+Trim(melote.Text);
  End;

  If Trim(cbpiso.Text) <> 'Ninguno'   Then xnuedir := xnuedir + ' '+Trim(cbpiso.Text);
  If Trim(menumpiso.Text) <> ''       Then xnuedir := xnuedir + ' '+Trim(menumpiso.Text);
  If Trim(medesurb.Text) <> ''        Then xnuedir := xnuedir + ' '+Trim(medesurb.Text);
  If Trim(menomurb.Text) <> ''        Then xnuedir := xnuedir + ' '+Trim(menomurb.Text);
  If Trim(cbseceta.Text) <> 'Ninguno' Then xnuedir := xnuedir + ' '+Trim(cbseceta.Text);
  If Trim(menomsec.Text) <> ''        Then xnuedir := xnuedir + ' '+Trim(menomsec.Text);
  If Trim(merefdir.Text) <> ''        Then xnuedir := xnuedir + ' Ref. '+Trim(merefdir.Text);
  Result := xnuedir;
end;



procedure Tfmandom.cbpisoExit(Sender: TObject);
begin

  If (Trim(cbpiso.Text) = 'Ninguno') Or (Trim(cbpiso.Text) = '')  Then
  Begin
    cbpiso.Text := 'Ninguno';
    lblintlet.Caption := '';
    menumpiso.Text    := '';
    menumpiso.Color   := clMoneyGreen;
    menumpiso.Enabled := False;
    If merefdir.Enabled = True Then merefdir.SetFocus;
    Exit;
  End;

  // Inicio: SPP_201310_ASO - Item agregado al combo (cbpiso) "dpto/int"
  If (Trim(cbpiso.Text) <> 'Ninguno') And (cbpiso.Text <> 'INTERIOR') And (Trim(cbpiso.Text) <> 'LETRA') And (Trim(cbpiso.Text) <> 'DPTO') Then
  Begin
    cbpiso.Text := '';
    If cbpiso.Enabled = True Then cbpiso.SetFocus;
    Exit;
  End;
  // Fin: SPP_201310_ASO

  If Trim(cbpiso.Text) = 'INTERIOR' Then
  Begin
    lblintlet.Caption := 'INTERIOR';
    menumpiso.Color   := clWhite;
    menumpiso.Enabled := True;
    If menumpiso.Enabled = True Then menumpiso.SetFocus;
    Exit;
  End;
  If Trim(cbpiso.Text) = 'LETRA' Then
  Begin
    lblintlet.Caption := 'LETRA';
  // Inicio: SPP_201310_ASO
    menumpiso.Color   := clWhite;
    menumpiso.Enabled := True;
    If menumpiso.Enabled = True Then menumpiso.SetFocus;
    Exit;
  End;

  // Item agregado al combo (cbpiso) "dpto/int"
  If Trim(cbpiso.Text) = 'DPTO' Then
  Begin
    lblintlet.Caption := 'DPTO';
    menumpiso.Color   := clWhite;
    menumpiso.Enabled := True;
    If menumpiso.Enabled = True Then menumpiso.SetFocus;
    Exit;
  End;
  // Fin: SPP_201310_ASO
end;


procedure Tfmandom.cbsecetaExit(Sender: TObject);
begin
  If (Trim(cbseceta.Text) = 'Ninguno') Or (Trim(cbseceta.Text) = '') Then
  Begin
    cbseceta.Text := 'Ninguno';
    menomsec.Text := '';
    menomsec.Enabled := False;
    menomsec.Color := clMoneyGreen;
    If dblccodtiplug.Enabled = True Then dblccodtiplug.SetFocus;
  End;

  If (Trim(cbseceta.Text) <> 'Ninguno') And (Trim(cbseceta.Text) <> 'ZONA') And (Trim(cbseceta.Text) <> 'ETAPA') And (Trim(cbseceta.Text) <> 'SECTOR') And (Trim(cbseceta.Text) <> 'GRUPO') Then
  Begin
    cbseceta.Text := '';
    If cbseceta.Enabled = True Then cbseceta.SetFocus;
    Exit;
  End;
end;

procedure Tfmandom.cbtipmanExit(Sender: TObject);
begin
  If (Trim(cbtipman.Text) = 'Ninguno') Or (Trim(cbtipman.Text) = '') Then
  Begin
    cbtipman.Text := 'Ninguno';
    memanzana.Text := '';
    melote.Text    := '';
    memanzana.Enabled  := False;
    melote.Enabled     := False;
    memanzana.Color    := clMoneyGreen;
    melote.Color       := clMoneyGreen;
    If cbpiso.Enabled = True Then cbpiso.SetFocus;
    Exit;
  End;

  If (Trim(cbtipman.Text) <> 'Ninguno') And (Trim(cbtipman.Text) <> 'MANZANA') And (Trim(cbtipman.Text) <> 'EDIFICIO') And (Trim(cbtipman.Text) <> 'BLOCK') Then
  Begin
    cbtipman.Text := '';
    If cbtipman.Enabled =True Then cbtipman.SetFocus;
    Exit;
  End;
  If cbtipman.Text = 'Ninguno' Then
  Begin
    memanzana.Text := '';
    melote.Text    := '';
    memanzana.Enabled  := False;
    melote.Enabled     := False;
    memanzana.Color    := clMoneyGreen;
    melote.Color       := clMoneyGreen;
    If cbpiso.Enabled = True Then cbpiso.SetFocus;
    Exit;
  End;
  If cbtipman.Text = 'MANZANA' Then
  Begin
    lblmanzana.Caption := 'MANZANA';
    lbllote.Caption    := 'LOTE';
    memanzana.Enabled  := True;
    melote.Enabled     := True;
    memanzana.Color    := clWhite;
    melote.Color       := clWhite;
    If memanzana.Enabled = True Then  memanzana.SetFocus;
  End;
  If cbtipman.Text = 'EDIFICIO' Then
  Begin
    lblmanzana.Caption := 'EDIFICIO';
    lbllote.Caption    := 'PISO';
    memanzana.Enabled  := True;
    melote.Enabled     := True;
    memanzana.Color    := clWhite;
    melote.Color       := clWhite;
    If memanzana.Enabled = True Then  memanzana.SetFocus;
  End;
  If cbtipman.Text = 'BLOCK' Then
  Begin
    lblmanzana.Caption := 'BLOCK';
    lbllote.Caption    := 'LETRA';
    memanzana.Enabled  := True;
    melote.Enabled     := True;
    memanzana.Color    := clWhite;
    melote.Color       := clWhite;
    If memanzana.Enabled = True Then  memanzana.SetFocus;
  End;
end;

procedure Tfmandom.memanzanaExit(Sender: TObject);
begin
  If  melote.Enabled = True Then melote.SetFocus;
end;

procedure Tfmandom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // Inicio: SPP_201301_ASO
  DM1.cdsCViv.Close;
  DM1.cdsCia.Close;
  DM1.cdsDpto.Close;
  DM1.cdsQry2.Close;
  // Fin: SPP_201301_ASO
end;

end.

