// Inicio Uso Estándares  : 01/08/2011
// Unidad		         : ASO943b.pas
// Formulario		     : FDatosSocEcoxReg
// Autor			      : Daniel Fernández
// Objetivo		       : Datos SocioEconómicos, visualización y actualización por registro

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201211_ASO    : 03/01/2013  DFERNANDEZ Se agrega la consulta del detalle de descuentos
// SPP_201301_ASO    : El pase a producción se realiza sobre la base del HPC_201301_ASO
// HPC_201602_ASO   : Se valida que el año y mes del periodo de actualizacion no sea mayor que el periodo actual
// HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

Unit ASO943b;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Spin, Wwdbdlg, ExtCtrls, Mask, wwdbedit,
   wwdblook, DB, DBClient, wwclient, wwIDlg;

Type
   TFDatosSocEcoxReg = Class(TForm)
      gbDatSoc: TGroupBox;
      Label8: TLabel;
      Label1: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      Label7: TLabel;
      Label10: TLabel;
      Label11: TLabel;
      Label12: TLabel;
      Label13: TLabel;
      Label14: TLabel;
      Label15: TLabel;
      Label16: TLabel;
      dblcEstCiv: TwwDBLookupCombo;
      dblGradIns: TwwDBLookupCombo;
      dblcCondViv: TwwDBLookupCombo;
      rgTipoPropiedad: TRadioGroup;
      rgNegocio: TRadioGroup;
      rgVehiculo: TRadioGroup;
      dbeTipNeg: TwwDBEdit;
      dbeTipVei: TwwDBEdit;
      dbeAnoVei: TwwDBEdit;
      dblcCargaFam: TwwDBLookupCombo;
      dbeNroHijos: TwwDBEdit;
      gbLaborales: TGroupBox;
      lblCARLAB: TLabel;
      lblSITACT: TLabel;
      lblTIPSER: TLabel;
      lblIngBruto: TLabel;
      lblIngresoNeto: TLabel;
      Splitter1: TSplitter;
      dbeIngBruto: TwwDBEdit;
      dbeIngresoNeto: TwwDBEdit;
      dblcSituacLab: TwwDBLookupCombo;
      dblcTipoServidor: TwwDBLookupCombo;
      gbDatosPeriodo: TGroupBox;
      lblIDE_PAD: TLabel;
      lblPERIODO_PADRON: TLabel;
      rgTipoActualiz: TRadioGroup;
      dbeIDE_PAD: TwwDBEdit;
      seAnoDatLab: TSpinEdit;
      seMesDatLab: TSpinEdit;
      edtEstCiv: TEdit;
      edtGraInst: TEdit;
      edtCondViv: TEdit;
      edtCargaFam: TEdit;
    edtCargoLab: TEdit;
    edtSituacLab: TEdit;
    edtTipoServidor: TEdit;
    dblcdCargoLab: TwwDBLookupComboDlg;
    gbpnlForma: TGroupBox;
    bbtnSalirDatLab: TBitBtn;
    bbtnGrabaDatLab: TBitBtn;
    // Inicio: SPP_201301_ASO
    btnDescuentos: TBitBtn;
    // Fin: SPP_201301_ASO
      Procedure dblcEstCivChange(Sender: TObject);
      Procedure dblGradInsChange(Sender: TObject);
      Procedure dblcCondVivChange(Sender: TObject);
      Procedure rgTipoPropiedadClick(Sender: TObject);
      Procedure rgNegocioClick(Sender: TObject);
      Procedure rgVehiculoClick(Sender: TObject);
      Procedure dbeAnoVeiKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcCargaFamChange(Sender: TObject);
      Procedure dbeIngBrutoExit(Sender: TObject);
      Procedure dbeIngBrutoKeyPress(Sender: TObject; Var Key: Char);
      Procedure dbeIngresoNetoExit(Sender: TObject);
      Procedure dbeIngresoNetoKeyPress(Sender: TObject; Var Key: Char);
      Procedure rgTipoActualizClick(Sender: TObject);
      Procedure seMesDatLabExit(Sender: TObject);
      Procedure bbtnGrabaDatLabClick(Sender: TObject);
      Procedure bbtnSalirDatLabClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure dblcdCargoLabChange(Sender: TObject);
      Procedure dblcSituacLabChange(Sender: TObject);
      Procedure dblcTipoServidorChange(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure dblcdCargoLabDropDown(Sender: TObject);
    procedure btnDescuentosClick(Sender: TObject);
   Private
    { Private declarations }
      Function Items(xAsoid: String): String;
   Public
    { Public declarations }
   End;

Var
   FDatosSocEcoxReg: TFDatosSocEcoxReg;
   xPerMax: String;

Implementation

// Inicio: SPP_201301_ASO
Uses ASODM, ASO900, ASO943, ASO943c;
// Fin: SPP_201301_ASO

{$R *.dfm}

Procedure TFDatosSocEcoxReg.dblcEstCivChange(Sender: TObject);
Begin
   If DM1.cdsUSES.Locate('ESTCIVID', dblcEstCiv.Text, []) Then
   Begin
      edtEstCiv.Text := DM1.cdsUSES.FieldByName('ESTCIVDES').asstring;
   End
   Else
   Begin
      If Length(dblcEstCiv.Text) <> 2 Then
      Begin
         Beep;
         edtEstCiv.Text := '';
      End;
   End
End;

Procedure TFDatosSocEcoxReg.dblGradInsChange(Sender: TObject);
Begin
   If DM1.cdsGradoI.Locate('GRAINSID', dblGradIns.Text, []) Then
   Begin
      edtGraInst.Text := DM1.cdsGradoI.FieldByName('GRAINSABR').asstring;
   End
   Else
   Begin
      If Length(dblGradIns.Text) <> 2 Then
      Begin
         Beep;
         edtGraInst.Text := '';
      End;
   End
End;

Procedure TFDatosSocEcoxReg.dblcCondVivChange(Sender: TObject);
Begin
   If DM1.cdsReclamo.Locate('TIPVIVID', dblcCondViv.Text, []) Then
   Begin
      edtCondViv.Text := DM1.cdsReclamo.FieldByName('TIPVIVABR').asstring;
   End
   Else
   Begin
      If Length(dblcCondViv.Text) <> 2 Then
      Begin
         Beep;
         edtCondViv.Text := '';
      End;
   End
End;

Procedure TFDatosSocEcoxReg.rgTipoPropiedadClick(Sender: TObject);
Begin
{
Case rdbProp.ItemIndex Of
    0:Begin
      End;
    1:Begin
      End;
    2:Begin
      End;
}
End;

Procedure TFDatosSocEcoxReg.rgNegocioClick(Sender: TObject);
Begin
   Case rgNegocio.ItemIndex Of
      0:
         Begin
            dbeTipNeg.Enabled := False;
         End;
      1:
         Begin
            dbeTipNeg.Enabled := True;
            dbeTipNeg.SetFocus;
         End;
   End;
End;

Procedure TFDatosSocEcoxReg.rgVehiculoClick(Sender: TObject);
Begin
   Case rgVehiculo.ItemIndex Of
      0:
         Begin
            dbeTipVei.Enabled := False;
            dbeAnoVei.Enabled := False;
         End;
      1:
         Begin
            dbeTipVei.Enabled := True;
            dbeAnoVei.Enabled := True;
            dbeTipVei.SetFocus;
         End;
   End;
End;

Procedure TFDatosSocEcoxReg.dbeAnoVeiKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TFDatosSocEcoxReg.dblcCargaFamChange(Sender: TObject);
Begin
   If DM1.cdsTVia.Locate('PARENID', dblcCargaFam.Text, []) Then
   Begin
      edtCargaFam.Text := DM1.cdsTVia.FieldByName('PARENABR').asstring;
   End
   Else
   Begin
      If Length(dblcCargaFam.Text) <> 2 Then
      Begin
         Beep;
         edtCargaFam.Text := '';
      End;
   End

End;

Procedure TFDatosSocEcoxReg.dbeIngBrutoExit(Sender: TObject);
Begin
   dbeIngBruto.Text := FOtorPre.FormatoNumeros(dbeIngBruto.Text);
End;

Procedure TFDatosSocEcoxReg.dbeIngBrutoKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TFDatosSocEcoxReg.dbeIngresoNetoExit(Sender: TObject);
Begin
   dbeIngresoNeto.Text := FOtorPre.FormatoNumeros(dbeIngresoNeto.Text);
End;

Procedure TFDatosSocEcoxReg.dbeIngresoNetoKeyPress(Sender: TObject;
   Var Key: Char);
Begin
   If Key In [' ', 'A'..'Z', 'a'..'z', '°', '|', '!', '"', '#', '$', '%', '&', '/', '(', ')', '=', '?', '\', '¡', '¿', '@', '¨', '´', '*', '+', '~', '~', '[', ']', '{', '}', '^', '`', '<', '>', ';', ',', ':', '''', '-', '_'] Then
      Key := #0;
End;

Procedure TFDatosSocEcoxReg.rgTipoActualizClick(Sender: TObject);
Begin
   If rgTipoActualiz.ItemIndex = 0 Then // por Boleta
   Begin
      lblIDE_PAD.Visible := False;
      dbeIDE_PAD.Visible := False;
      bbtnGrabaDatLab.Visible := True;
   End
   Else // por padrón
   Begin
      lblIDE_PAD.Visible := True;
      dbeIDE_PAD.Visible := True;
      bbtnGrabaDatLab.Visible := False;
   End;
End;

Procedure TFDatosSocEcoxReg.seMesDatLabExit(Sender: TObject);
Begin
   seMesDatLab.Text := DM1.StrZero(seMesDatLab.Text, 2);
End;

Procedure TFDatosSocEcoxReg.bbtnGrabaDatLabClick(Sender: TObject);
Var
   xSQL, xTipProId, xItem: String;
   xRegistro: TBookmark;
// Inicio : HPC_201602_ASO
// Se valida que año y mes del periodo no sea mayor al periodo actual
   xano, xmes, xnivel :String;
   // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
   xItem2: Integer;
   // Fin HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
Begin
   xnivel := Copy(DM1.CrgArea(DM1.wUsuario),8,2);
   If ((Copy(DM1.CrgArea(DM1.wUsuario),8,2) <> 'N3') And (Copy(DM1.CrgArea(DM1.wUsuario),8,2) <> 'N4')) Then
   Begin
      // valida que el periodo no sea mayor al actual
      xano := Copy(DateToStr(DM1.FechaSys),7,4);
      xmes := Copy(DateToStr(DM1.FechaSys),4,2);
      If seAnoDatLab.Text+seMesDatLab.Text > xano+xmes Then
      Begin
         MessageDlg('Periodo de actualización no puede ser mayor al actual', mtError, [mbOk], 0);
         dblcEstCiv.SetFocus;
         Exit;
      End;
   End;
// Fin : HPC_201602_ASO
// Estado Civil
   If Length(Trim(edtEstCiv.Text)) = 0 Then
   Begin
      MessageDlg(' Debe seleccionar el Estado Civil ', mtError, [mbOk], 0);
      dblcEstCiv.SetFocus;
      Exit;
   End;

// Grado de Instrucción
   If Length(Trim(edtGraInst.Text)) = 0 Then
   Begin
      MessageDlg(' Debe seleccionar el Grado de Instrucción ', mtError, [mbOk], 0);
      dblGradIns.SetFocus;
      Exit;
   End;

// Vivienda
   If Length(Trim(edtCondViv.Text)) = 0 Then
   Begin
      MessageDlg(' Debe indicar la Condición de Vivienda ', mtError, [mbOk], 0);
      dblcCondViv.SetFocus;
// Inicio: SPP_201301_ASO
      Exit;
   End;

// Negocio
{
   if rgNegocio.ItemIndex=-1 Then
   Begin
      MessageDlg(' Debe indicar si tiene o no Negocio ', mtError, [mbOk], 0);
      rgNegocio.SetFocus;
      Exit;
   End;
}

// Vehículo
{
   if rgVehiculo.ItemIndex=-1 Then
   Begin
      MessageDlg(' Debe indicar si tiene o no Vehículo ', mtError, [mbOk], 0);
      rgVehiculo.SetFocus;
      Exit;
   End;
}
// Fin: SPP_201301_ASO

// Carga Familiar
   If Length(Trim(edtCargaFam.Text)) = 0 Then
   Begin
      MessageDlg(' Debe indicar la Carga Familiar ', mtError, [mbOk], 0);
      dblcCargaFam.SetFocus;
      Exit;
   End;

// Número de Hijos
   If Length(Trim(dbeNroHijos.Text)) = 0 Then
   Begin
      MessageDlg(' Debe indicar si tiene o no hijos ', mtError, [mbOk], 0);
      dbeNroHijos.SetFocus;
      Exit;
   End;

// Cargo Laboral
   If Length(Trim(edtCargoLab.Text)) = 0 Then
   Begin
      MessageDlg(' Debe indicar el Cargo Laboral ', mtError, [mbOk], 0);
      dblcdCargoLab.SetFocus;
      Exit;
   End;

// Situación Laboral
   If Length(Trim(edtSituacLab.Text)) = 0 Then
   Begin
      MessageDlg(' Debe indicar la Situación Laboral ', mtError, [mbOk], 0);
      dblcSituacLab.SetFocus;
      Exit;
   End;

// Tipo de Servidor
   If Length(Trim(edtTipoServidor.Text)) = 0 Then
   Begin
      MessageDlg(' Debe indicar el Tipo de Servidor ', mtError, [mbOk], 0);
      dblcTipoServidor.SetFocus;
      Exit;
   End;

// Ingreso Bruto
   If Length(Trim(dbeIngBruto.Text)) = 0 Then
   Begin
      MessageDlg(' Debe indicar el Ingreso Bruto de la Boleta ', mtError, [mbOk], 0);
      dbeIngBruto.SetFocus;
      Exit;
   End;

// Ingreso Neto
   If Length(Trim(dbeIngresoNeto.Text)) = 0 Then
   Begin
      MessageDlg(' Debe indicar el Ingreso Neto de la Boleta ', mtError, [mbOk], 0);
      dbeIngresoNeto.SetFocus;
      Exit;
   End;

// Periodo de Boleta
   If seAnoDatLab.Value <= 0 Then
   Begin
      MessageDlg(' Debe indicar el Año del Periodo de Actualización ', mtError, [mbOk], 0);
      seAnoDatLab.SetFocus;
      Exit;
   End;

   If seMesDatLab.Value <= 0 Then
   Begin
      MessageDlg(' Debe indicar el Mes del Periodo de Actualización ', mtError, [mbOk], 0);
      seMesDatLab.SetFocus;
      Exit;
   End;
   seMesDatLab.Text := DM1.strzero(seMesDatLab.Text, 2);

   If (seAnoDatLab.Text + seMesDatLab.Text) < xPerMax Then
   Begin
      ShowMessage('No se puede actualizar un periodo menor al máximo registrado');
      seAnoDatLab.SetFocus;
      exit;
   End;

   xTipProId := '';
   Case rgTipoPropiedad.ItemIndex Of
      0: xTipProId := '01';
      1: xTipProId := '02';
      2: xTipProId := '03';
   End;

// si es Ingreso
   If FDatosSocEco.wEsIngreso Then
   Begin
      xSQL := 'INSERT INTO APO206(ASOID, ITEM, ASOCODMOD, ESTCIVID, GRAINSTID, CONVIVID, TIPPROID, INMUEBLE, VEHICULO, ANO_VEHICULO, CRGFAMID, NROHIJOS, '
         + '                   CARLAB, SITACT, TIPSER, AINGFAM, AINGMAG, PERIODO, '
         + '                  FREG, HREG, USUARIO) '
         + 'VALUES (' + QuotedStr(DM1.cdsAso.fieldbyname('ASOID').AsString) + ','
         + QuotedStr(DM1.cdsDSocioE.fieldbyname('ITEM').AsString) + ','
         + QuotedStr(DM1.cdsAso.fieldbyname('ASOCODMOD').AsString) + ','
         + QuotedStr(DM1.cdsDSocioE.FieldByName('ESTCIVID').AsString) + ','
         + QuotedStr(DM1.cdsDSocioE.FieldByName('GRAINSTID').AsString) + ','
         + QuotedStr(DM1.cdsDSocioE.FieldByName('CONVIVID').AsString) + ','
         + QuotedStr(xTipProId) + ','
         + QuotedStr(Trim(DM1.cdsDSocioE.FieldByName('INMUEBLE').AsString)) + ',' // Tipo de Negocio
         + QuotedStr(Trim(DM1.cdsDSocioE.FieldByName('VEHICULO').AsString)) + ','
         + QuotedStr(Trim(DM1.cdsDSocioE.FieldByName('ANO_VEHICULO').AsString)) + ','
         + QuotedStr(DM1.cdsDSocioE.FieldByName('CRGFAMID').AsString) + ','
         + QuotedStr(inttostr(DM1.cdsDSocioE.FieldByName('NROHIJOS').AsInteger)) + ','
         + QuotedStr(DM1.cdsDSocioE.FieldByName('CARLAB').AsString) + ','
         + QuotedStr(DM1.cdsDSocioE.FieldByName('SITACT').AsString) + ','
         + QuotedStr(DM1.cdsDSocioE.FieldByName('TIPSER').AsString) + ','
         + FloatToStr(DM1.cdsDSocioE.FieldByName('AINGFAM').AsFloat) + ','
         + FloatToStr(DM1.cdsDSocioE.FieldByName('AINGMAG').AsFloat) + ','
         + QuotedStr(seAnoDatLab.Text + seMesDatLab.Text) + ','
         + QuotedStr(DateToStr(DM1.FechaSys)) + ','
         + 'sysdate,' + QuotedStr(DM1.wUsuario) + ')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      If (DM1.xOfiDes > '01') And (DM1.sAPO201 = 'APO201') Then
      Begin
         xSQL := 'SELECT ASOID,FHREGISTRO FROM ASO003 WHERE ASOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString)) + ' AND IDESTADO IS NULL ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            xSQL := 'UPDATE ASO003 SET DATSOCIOECO=''S'' WHERE ASOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString)) + ' AND IDESTADO IS NULL ';
         End
         Else
         Begin
            // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
            DM1.cdsQry.Close;
            xSQL := 'SELECT MAX(ITEM) ITEM FROM ASO003 WHERE ASOID='+ QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString));
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;
            xItem2 := DM1.cdsQry.FieldByName('ITEM').AsInteger;
            xSQL := 'INSERT INTO ASO003(ASOID, ASOAPENOM, USUARIO, FHREGISTRO, OFDESID,DATSOCIOECO,ITEM) VALUES ' +
               '( ' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString)) + ',' + QuotedStr(DM1.cdsAso.fieldbyname('ASOAPENOMDNI').AsString) + ',' + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(DM1.xOfiDes) + ',''S'','+IntToStr(xItem2+1)+' )';
            // Fin HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         End;
         DM1.cdsQry.Close;
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;

      MessageDlg(' <<< Se añadió con éxito >>> ', mtInformation, [mbOk], 0);
   End
   Else // si se está modificando un registro existente
   Begin
      xRegistro := DM1.cdsDSocioE.GetBookmark;
      xItem := DM1.cdsDSocioE.FieldByName('ITEM').AsString;
      DM1.cdsDSocioE.DisableControls;
      DM1.cdsDSocioE.First;
      While Not DM1.cdsDSocioE.EOF Do
      Begin
         If DM1.cdsDSocioE.FieldByName('TIPO_ACTUALIZAC').AsString = 'POR BOLETA' Then
         Begin
            If DM1.cdsDSocioE.FieldByName('ITEM').AsString <> xItem Then
            Begin
               If DM1.cdsDSocioE.FieldByName('PERIODO').AsString = seAnoDatLab.Text + seMesDatLab.Text Then
               Begin
                  ShowMessage('No puede asignar este Periodo porque ya existe asignado a otro registro');
                  DM1.cdsDSocioE.GotoBookmark(xRegistro);
                  DM1.cdsDSocioE.FreeBookmark(xRegistro);
                  DM1.cdsDSocioE.EnableControls;
                  exit;
               End;
            End;
         End;
         DM1.cdsDSocioE.Next;
      End;
      DM1.cdsDSocioE.GotoBookmark(xRegistro);
      DM1.cdsDSocioE.FreeBookmark(xRegistro);
      DM1.cdsDSocioE.EnableControls;
      xSQL := 'update APO206 '
         + 'set ESTCIVID=' + quotedstr(DM1.cdsDSocioE.FieldByName('ESTCIVID').AsString) + ','
         + '    GRAINSTID=' + quotedstr(DM1.cdsDSocioE.FieldByName('GRAINSTID').AsString) + ','
         + '    CONVIVID=' + quotedstr(DM1.cdsDSocioE.FieldByName('CONVIVID').AsString) + ','
         + '    TIPPROID=' + quotedstr(xTipProId) + ','
         + '    INMUEBLE=' + quotedstr(DM1.cdsDSocioE.FieldByName('INMUEBLE').AsString) + ','
         + '    VEHICULO=' + quotedstr(DM1.cdsDSocioE.FieldByName('VEHICULO').AsString) + ','
         + '    ANO_VEHICULO=' + quotedstr(DM1.cdsDSocioE.FieldByName('ANO_VEHICULO').AsString) + ','
         + '    CRGFAMID=' + quotedstr(DM1.cdsDSocioE.FieldByName('CRGFAMID').AsString) + ','
         + '    NROHIJOS=' + quotedstr(inttostr(DM1.cdsDSocioE.FieldByName('NROHIJOS').AsInteger)) + ','
         + '    CARLAB=' + quotedstr(DM1.cdsDSocioE.FieldByName('CARLAB').AsString) + ','
         + '    SITACT=' + quotedstr(DM1.cdsDSocioE.FieldByName('SITACT').AsString) + ','
         + '    TIPSER=' + quotedstr(DM1.cdsDSocioE.FieldByName('TIPSER').AsString) + ','
         + '    AINGFAM=' + floattostr(DM1.cdsDSocioE.FieldByName('AINGFAM').AsFloat) + ','
         + '    AINGMAG=' + floattostr(DM1.cdsDSocioE.FieldByName('AINGMAG').AsFloat) + ','
         + '    PERIODO=' + QuotedStr(seAnoDatLab.Text + seMesDatLab.Text) + ','
         + '    FREG=' + QuotedStr(DateToStr(DM1.FechaSys)) + ','
         + '    HREG=sysdate,'
         + '    USUARIO=' + QuotedStr(DM1.wUsuario) + ' '
         + ' where ASOID=' + quotedstr(DM1.cdsAso.fieldbyname('ASOID').AsString)
         + '   and ITEM=' + QuotedStr(xItem);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      If (DM1.xOfiDes > '01') And (DM1.sAPO201 = 'APO201') Then
      Begin
         xSQL := 'SELECT ASOID,FHREGISTRO '
            + 'FROM ASO003 '
            + 'WHERE ASOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString))
            + ' AND IDESTADO IS NULL ';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSQL);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
            xSQL := 'UPDATE ASO003 SET DATSOCIOECO=''S'' WHERE ASOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString)) + ' AND IDESTADO IS NULL ';
         End
         Else
         Begin
            // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
            DM1.cdsQry.Close;
            xSQL := 'SELECT MAX(ITEM) ITEM FROM ASO003 WHERE ASOID='+ QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString));
            DM1.cdsQry.DataRequest(xSQL);
            DM1.cdsQry.Open;
            xItem2 := DM1.cdsQry.FieldByName('ITEM').AsInteger;


            xSQL := 'INSERT INTO ASO003(ASOID, ASOAPENOM, USUARIO, FHREGISTRO, OFDESID,DATSOCIOECO,ITEM) '
               + 'VALUES ( '
               + QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString)) + ','
               + QuotedStr(DM1.cdsAso.fieldbyname('ASOAPENOMDNI').AsString) + ','
               + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(DM1.xOfiDes) + ',''S'','+IntToStr(xItem2+1)+' )';
            // Fin HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         End;
         DM1.cdsQry.Close;
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
      MessageDlg(' <<< Se Grabó Con Éxito >>> ', mtInformation, [mbOk], 0);
   End;
   Close;
End;

Procedure TFDatosSocEcoxReg.bbtnSalirDatLabClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFDatosSocEcoxReg.FormActivate(Sender: TObject);
Var
   xSQL: String;
   xEstCivil, xGraInst, xCondViv, xTipoPropiedad, xNegocio, xVehiculo, xAnoVehiculo,
      xCargaFam: String;
   xNroHijos: Integer;
   xPerMax, xCARLAB, xSITACT, xTIPSER: String;
   xAINGFAM, xAINGMAG: double;
   xAno, xMes, xDia: word;

   Procedure DatosPeriodo;
   Var
      xSQL: String;
   Begin
      xSQL := 'select max(PERIODO) PERIODO '
         + 'from APO206 '
         + 'where ASOID=' + QuotedStr(Trim(DM1.cdsAso.fieldbyname('ASOID').AsString))
         + '  and PERIODO is not null'
         + '  and length(trim(PERIODO))=6';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSQL);
      DM1.cdsQry.Open;
      If length(trim(DM1.cdsQry.FieldByName('PERIODO').AsString)) > 0 Then
      Begin
         xPerMax := DM1.cdsQry.FieldByName('PERIODO').AsString;
         seAnoDatLab.Value := strtoint(copy(DM1.cdsQry.FieldByName('PERIODO').AsString, 1, 4));
         seMesDatLab.Value := strtoint(copy(DM1.cdsQry.FieldByName('PERIODO').AsString, 5, 2)) + 1;
         If seMesDatLab.Value = 13 Then
         Begin
            seMesDatLab.Value := 1;
            seAnoDatLab.Value := seAnoDatLab.Value + 1;
         End;
      End
      Else
      Begin
         xPerMax := '000000';
         decodedate(DM1.FechaSys, xAno, xMes, xDia);
         seAnoDatLab.Value := xAno;
         seMesDatLab.Value := xMes;
      End;
      seAnoDatLab.Text := inttostr(seAnoDatLab.Value);
      seMesDatLab.Text := DM1.StrZero(inttostr(seMesDatLab.Value), 2);
   End;
Begin
   bbtnGrabaDatLab.Enabled := True;

   DatosPeriodo;

// si es Ingreso
   If FDatosSocEco.wEsIngreso Then
   Begin
      bbtnGrabaDatLab.Caption := 'Añadir';
      DM1.cdsDSocioE.First;
      xEstCivil := DM1.cdsDSocioE.FieldByName('ESTCIVID').AsString;
      xGraInst := DM1.cdsDSocioE.FieldByName('GRAINSTID').AsString;
      xCondViv := DM1.cdsDSocioE.FieldByName('CONVIVID').AsString;
      xTipoPropiedad := DM1.cdsDSocioE.FieldByName('TIPPROID').AsString;
      xNegocio := DM1.cdsDSocioE.FieldByName('INMUEBLE').AsString;
      xVehiculo := DM1.cdsDSocioE.FieldByName('VEHICULO').AsString;
      xAnoVehiculo := DM1.cdsDSocioE.FieldByName('ANO_VEHICULO').AsString;
      xCargaFam := DM1.cdsDSocioE.FieldByName('CRGFAMID').AsString;

      xNroHijos := DM1.cdsDSocioE.FieldByName('NROHIJOS').AsInteger;

      xCARLAB := DM1.cdsDSocioE.FieldByName('CARLAB').AsString;
      xSITACT := DM1.cdsDSocioE.FieldByName('SITACT').AsString;
      xTIPSER := DM1.cdsDSocioE.FieldByName('TIPSER').AsString;
      xAINGFAM := 0.00; // DM1.cdsDSocioE.FieldByName('AINGFAM').AsFloat;
      xAINGMAG := 0.00; // DM1.cdsDSocioE.FieldByName('AINGMAG').AsFloat;

      DM1.cdsDSocioE.Insert;

      DM1.cdsDSocioE.FieldByname('ITEM').AsString := Items(DM1.cdsAso.fieldbyname('ASOID').AsString);
      DM1.cdsDSocioE.FieldByName('TIPO_ACTUALIZAC').AsString := 'POR BOLETA';

   // Estado Civil
      DM1.cdsDSocioE.FieldByName('ESTCIVID').AsString := xEstCivil;

   // Grado de Instrucción
      DM1.cdsDSocioE.FieldByName('GRAINSTID').AsString := xGraInst;

   // Vivienda
      DM1.cdsDSocioE.FieldByName('CONVIVID').AsString := xCondViv;
      rgTipoPropiedad.ItemIndex := 0;
      If Length(trim(xTipoPropiedad)) > 0 Then
         rgTipoPropiedad.ItemIndex := strtoint(xTipoPropiedad) - 1;

   // Negocio
      rgNegocio.ItemIndex := 0;
      If length(trim(xNegocio)) > 0 Then rgNegocio.ItemIndex := 1;
      DM1.cdsDSocioE.FieldByName('INMUEBLE').AsString := xNegocio;

   // Vehículo
      rgVehiculo.ItemIndex := 0;
      If length(trim(xVehiculo)) > 0 Then rgVehiculo.ItemIndex := 1;
      DM1.cdsDSocioE.FieldByName('VEHICULO').AsString := xVehiculo;
      DM1.cdsDSocioE.FieldByName('ANO_VEHICULO').AsString := xAnoVehiculo;

   // Carga Familiar
      DM1.cdsDSocioE.FieldByName('CRGFAMID').AsString := xCargaFam;

   // Número de Hijos
      DM1.cdsDSocioE.FieldByName('NROHIJOS').AsInteger := xNroHijos;

   // Cargo Laboral
      DM1.cdsDSocioE.FieldByName('CARLAB').AsString := xCARLAB;

   // Situación Laboral
      DM1.cdsDSocioE.FieldByName('SITACT').AsString := xSITACT;

   // Tipo de Servidor
      DM1.cdsDSocioE.FieldByName('TIPSER').AsString := xTIPSER;

   // Ingreso Bruto
      DM1.cdsDSocioE.FieldByName('AINGFAM').AsFloat := xAINGFAM;

   // Ingreso Neto
      DM1.cdsDSocioE.FieldByName('AINGMAG').AsFloat := xAINGMAG;

      rgTipoActualiz.ItemIndex := 0;

   // Periodo de Boleta
//      seAnoDatLab.Enabled := False;
//      seMesDatLab.Enabled := False;
   End
   Else
// Modificación / Actualización
   Begin
      If DM1.cdsDSocioE.FieldByName('TIPO_ACTUALIZAC').AsString = 'POR BOLETA' Then
      Begin
         rgTipoActualiz.ItemIndex := 0;
         bbtnGrabaDatLab.Caption := 'Grabar';
      End
      Else
      Begin
         rgTipoActualiz.ItemIndex := 1;
         bbtnGrabaDatLab.Enabled := False;
      End;

   // Estado Civil
   // Grado de Instrucción
   // Vivienda
   // Negocio
      rgNegocio.ItemIndex := 0;
      If length(trim(DM1.cdsDSocioE.FieldByName('INMUEBLE').AsString)) > 0 Then rgNegocio.ItemIndex := 1;

   // Vehículo
      rgVehiculo.ItemIndex := 0;
      If length(trim(DM1.cdsDSocioE.FieldByName('VEHICULO').AsString)) > 0 Then rgVehiculo.ItemIndex := 1;

   // Carga Familiar
   // Número de Hijos
   // Cargo Laboral
   // Situación Laboral
   // Tipo de Servidor
   // Ingreso Bruto
   // Ingreso Neto

   // Periodo de Boleta
   // Si el campo PERIODO está lleno, chanca los valores previamente inicializados con el procedimiento datosperiodo
      If length(trim(DM1.cdsDSocioE.FieldByName('PERIODO').AsString)) = 6 Then
      Begin
         seAnoDatLab.Text := copy(DM1.cdsDSocioE.FieldByName('PERIODO').AsString, 1, 4);
         seMesDatLab.Text := copy(DM1.cdsDSocioE.FieldByName('PERIODO').AsString, 5, 2);
      End;
   End; // adición o modificación
End;

Procedure TFDatosSocEcoxReg.FormCreate(Sender: TObject);
Var
   xSQL: String;
Begin
// Cargo Laboral
   dblcdCargoLab.LookupField := 'COD_SIT';
   dblcdCargoLab.LookupTable := DM1.cdsQry8;
   dblcdCargoLab.Selected.Clear;
   dblcdCargoLab.Selected.Add('COD_SIT'#9'4'#9'Id'#9#9);
   dblcdCargoLab.Selected.Add('DES_SIT'#9'20'#9'Cargo Laboral'#9#9);

// Situación del Trabajador
   dblcSituacLab.LookupField := 'COD_SIT';
   dblcSituacLab.LookupTable := DM1.cdsQry6;
   dblcSituacLab.Selected.Add('COD_SIT'#9'4'#9'Id'#9#9);
   dblcSituacLab.Selected.Add('DES_SIT'#9'20'#9'Situación'#9#9);

// Tipo de Servidor
   dblcTipoServidor.LookupField := 'COD_SIT';
   dblcTipoServidor.LookupTable := DM1.cdsTPension;
   dblcTipoServidor.Selected.Add('COD_SIT'#9'4'#9'Id'#9#9);
   dblcTipoServidor.Selected.Add('DES_SIT'#9'20'#9'Tipo Servidor'#9#9);
End;

Function TFDatosSocEcoxReg.Items(xAsoid: String): String;
Var
   xSQL, tItem: String;
Begin
   xSQL := 'SELECT MAX(ITEM) ITEM FROM APO206 WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.cdsTZona.Close;
   DM1.cdsTZona.DataRequest(xSQL);
   DM1.cdsTZona.Open;
   If DM1.cdsTZona.FieldByName('ITEM').AsString <> '' Then
   Begin
      Result := Format('%.2d', [DM1.cdsTZona.FieldByName('ITEM').AsInteger + 1]);
   End
   Else
      Result := '01';
End;

Procedure TFDatosSocEcoxReg.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFDatosSocEcoxReg.dblcdCargoLabChange(Sender: TObject);
Begin
//   if FDatosSocEco.wCrea then exit;
// Cargo Laboral
   If DM1.cdsQry8.Locate('COD_SIT', dblcdCargoLab.Text, []) Then
//   If DM1.cdsQry8.Locate('COD_SIT', DM1.cdsDSocioE.FieldByName('CARLAB').AsString, []) Then
      edtCargoLab.Text := DM1.cdsQry8.FieldByName('DES_SIT').asstring
   Else
   Begin
      If Length(DM1.cdsDSocioE.FieldByName('CARLAB').AsString) <> 2 Then
      Begin
         Beep;
         edtCargoLab.Text := '';
      End;
   End;
End;

Procedure TFDatosSocEcoxReg.dblcSituacLabChange(Sender: TObject);
Begin
//   if FDatosSocEco.wCrea then exit;
// Situación del Trabajador
   If DM1.cdsQry6.Locate('COD_SIT', dblcSituacLab.Text, []) Then
      edtSituacLab.Text := DM1.cdsQry6.FieldByName('DES_SIT').asstring
   Else
   Begin
      If Length(dblcSituacLab.Text) <> 2 Then
      Begin
         Beep;
         edtSituacLab.Text := '';
      End;
   End;
End;

Procedure TFDatosSocEcoxReg.dblcTipoServidorChange(Sender: TObject);
Begin
//   if FDatosSocEco.wCrea then exit;
   DM1.cdsTPension.First;
   If DM1.cdsTPension.Locate('COD_SIT', dblcTipoServidor.Text, []) Then
      edtTipoServidor.Text := DM1.cdsTPension.FieldByName('DES_SIT').asstring
   Else
   Begin
      If Length(dblcTipoServidor.Text) <> 2 Then
      Begin
         Beep;
         edtTipoServidor.Text := '';
      End;
   End;
End;

Procedure TFDatosSocEcoxReg.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Var
   xSQL: String;
Begin
   xSQL := 'SELECT A.ASOID, A.ITEM, '
      + '     case when A.IDE_PAD is not null then ''POR PADRÓN'' else ''POR BOLETA'' end TIPO_ACTUALIZAC, '
      + '     A.IDE_PAD, A.PERIODO, '
      + '     A.ASOCODMOD, '
      + '     A.CONVIVID, D.TIPVIVABR, '
      + '     A.INMUEBLE, A.VEHICULO, A.ANO_VEHICULO, '
      + '     A.GRAINSTID, C.GRAINSABR, '
      + '     A.ESTCIVID, B.ESTCIVDES, '
      + '     A.CRGFAMID, E.PARENABR, '
      + '     A.NROHIJOS, A.TIPPROID, '
      + '     case when TIPPROID=''01'' then ''Casa'' '
      + '          when TIPPROID=''02'' then ''Terreno'' '
      + '          when TIPPROID=''03'' then ''Local Comercial '' '
      + '          else TIPPROID '
      + '     end TIPPRO_DES, '
      + '     A.CARLAB, F.DES_SIT CARLAB_DES, ' // Cargo Laboral
      + '     A.SITACT, G.DES_SIT SITACT_DES, ' // Situación Laboral
      + '     A.TIPSER, H.DES_SIT TIPSER_DES, ' // Tipo de Servidor
      + '     A.AINGFAM, ' // Bruto
      + '     A.AINGMAG, ' // Neto
      + '     A.USUARIO, '
      + '     A.FREG, A.HREG, '
      + '     A.AINGCON, A.RESFVIF '
      + ' FROM APO206 A, TGE125 B, TGE119 C, APO109 D, TGE149 E, '
      + ' (select COD_SIT, DES_SIT from ASO_PAD_SIT_ASO where COD_MAE=''03'' and COD_SIT is not null) F, ' // CARGO_LABORAL
      + ' (select COD_SIT, DES_SIT from ASO_PAD_SIT_ASO where COD_MAE=''02'' and COD_SIT is not null) G, ' // SIT_TRABAJADOR
      + ' (select COD_SIT, DES_SIT from ASO_PAD_SIT_ASO where COD_MAE=''01'' and COD_SIT is not null) H ' // TIPO_SERVIDOR
      + ' WHERE A.ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
      + '   and B.ESTCIVID(+)=A.ESTCIVID '
      + '   and C.GRAINSID(+)=A.GRAINSTID '
      + '   and D.TIPVIVID(+)=A.CONVIVID '
      + '   and E.PARENID(+)=A.CRGFAMID '
//      + '   and (A.GRAINSTID is not null or A.ESTCIVID is not null '
//      + '     or A.CRGFAMID is not null or A.TIPPROID is not null) '
   + '   and F.COD_SIT(+)=A.CARLAB '
      + '   and G.COD_SIT(+)=A.SITACT '
      + '   and H.COD_SIT(+)=A.TIPSER '
      + ' ORDER BY A.HREG DESC ';
   DM1.cdsDSocioE.Close;
   DM1.cdsDSocioE.DataRequest(xSQL);
   DM1.cdsDSocioE.Open;
End;

Procedure TFDatosSocEcoxReg.dblcdCargoLabDropDown(Sender: TObject);
Begin
   DM1.cdsQry8.IndexFieldNames := 'DES_SIT';
End;

// Fin: HPP_201104_ASO
procedure TFDatosSocEcoxReg.btnDescuentosClick(Sender: TObject);
begin
  // Inicio: SPP_201301_ASO
  Try
    FDatosSocEcoDctos := TFDatosSocEcoDctos.Create(Self);
    FDatosSocEcoDctos.ShowModal;
  Finally
    FDatosSocEcoDctos.Free;
  End;
  // Fin: SPP_201301_ASO
end;

End.

