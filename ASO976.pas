// Unidad                    : ASO976.pas
// Formulario                : Fproinfmig
// Fecha de Creación         : 2013
// Autor                     : Equipo de Desarrollo de Sistemas DM
// Objetivo                  : Transferir la carga del archivo texto a los campos según estructura configurada

// Actualizaciones:
// HPC_201312_ASO            : 12/11/2013 Transferir la carga del archivo texto a los campos según estructura configurada
// SPP_201313_ASO            : Se realiza el pase a producción a partir del HPC_201312_ASO
// HPC_201701_ASO            : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

Unit ASO976;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, ExtCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook,
   DBCtrls, Wwdbspin, Mask, wwdbedit, Buttons, Wwdbdlg;

Type
   TFproinfmig = Class(TForm)
      Panel1: TPanel;
      GroupBox1: TGroupBox;
      dbgcabecera: TwwDBGrid;
      StaticText1: TStaticText;
      sbBase: TScrollBox;
      dbgPlantilla: TwwDBGrid;
      GroupBox2: TGroupBox;
      dbgdetalle: TwwDBGrid;
      dbgcabeceraIButton: TwwIButton;
      btntransferir: TBitBtn;
      pnlCab: TPanel;
      Label1: TLabel;
      Label5: TLabel;
      bbtnOkC: TBitBtn;
      bbtnCancC: TBitBtn;
      pnlDet: TPanel;
      Label9: TLabel;
      bbtnOkD: TBitBtn;
      bbtnCancD: TBitBtn;
      gbposicion: TGroupBox;
      Label10: TLabel;
      Label11: TLabel;
      spDesde: TwwDBSpinEdit;
      spHasta: TwwDBSpinEdit;
      menombre: TMaskEdit;
      pnlcodigo: TPanel;
      mecodigo: TMaskEdit;
      Label2: TLabel;
      Label3: TLabel;
      dbgdetalleIButton: TwwIButton;
      dblcdnomcam: TwwDBLookupComboDlg;
      StaticText2: TStaticText;
      Label4: TLabel;
      pnl: TPanel;
      medescam: TMaskEdit;
      StaticText3: TStaticText;
      GroupBox3: TGroupBox;
      wwDBGrid1: TwwDBGrid;
      BitBtn3: TBitBtn;
      btnactugel: TBitBtn;
      btnelireg: TBitBtn;
      Procedure FormActivate(Sender: TObject);
      Procedure dbgcabeceraCellChanged(Sender: TObject);
      Procedure dbgcabeceraIButtonClick(Sender: TObject);
      Procedure bbtnOkCClick(Sender: TObject);
      Procedure bbtnCancCClick(Sender: TObject);
      Procedure dbgcabeceraDblClick(Sender: TObject);
      Procedure dbgdetalleIButtonClick(Sender: TObject);
      Procedure bbtnCancDClick(Sender: TObject);
      Procedure dblcdnomcamExit(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure bbtnOkDClick(Sender: TObject);
      Procedure dbgdetalleDblClick(Sender: TObject);
      Procedure btntransferirClick(Sender: TObject);
      Procedure BitBtn3Click(Sender: TObject);
      Procedure btnactugelClick(Sender: TObject);
      Procedure btneliregClick(Sender: TObject);
   Private
      Procedure actcabpla;
      Procedure actdetpla;
      { Private declarations }
   Public
      { Public declarations }
//Inicio: SPP_201313_ASO
      procedure transferirPADRON;
      procedure transferirONP;
//Fin: SPP_201313_ASO
   End;

Var
   Fproinfmig: TFproinfmig;

Implementation

Uses ASODM;

{$R *.dfm}

Procedure TFproinfmig.FormActivate(Sender: TObject);
Var
   xlin1, xlin2, xSql: String;
   xcol: Integer;
Begin
   Screen.Cursor := crHourGlass;
//Inicio: SPP_201313_ASO
   xSql := 'SELECT LINEA FROM ASO_PAD_DES_DET A LEFT JOIN ASO_PAD_DES_CAB B ON A.NUMERO = B.NUMERO '
         + 'WHERE A.NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
         + '      AND B.TIPOCARGA = ''' + DM1.sTipoCarga + '''';
//Fin: SPP_201313_ASO
   DM1.cdsQry4.Close;
   DM1.cdsQry4.DataRequest(xSql);
   DM1.cdsQry4.Open;
   xLin1 := '1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890';
// inicio HPC_201102_ASO
// INICIO: SAR-2010-0155
   // POR: IREVILLA 01/06/2010
   // EL ANCHO DE LA REGLA AUMENTA DE 250 A 350 ESPACIOS
   xLin1 := xLin1 +'1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890';
   xLin2 := '         1         2         3         4         5         6         7         8         9        10        11        12        13        14        15        16        17        18        19        20        21        22        23        24        25';
   xLin2 := xLin2 +'        26        27        28        29        30        31        32        33        34        35';
//   xCol := 250;
   xCol := 350;
// fin HPC_201102_ASO
   DM1.cdsQry4.FieldByName('LINEA').DisplayLabel := Copy(xLin1, 1, xCol) + '~' + Copy(xLin2, 1, xCol);
   DM1.cdsQry4.FieldByName('LINEA').DisplayWidth := xCol;

//Inicio: SPP_201313_ASO
   xSql := 'select NOMCAM, DESCAM, TAMMAXCAP, TIPCAM, CAMFIJ from COB_CAM_PER_PLA WHERE TIPOCARGA IS NULL OR TIPOCARGA = ''' + DM1.sTipoCarga + '''';
//Fin: SPP_201313_ASO
   DM1.cdsQry7.Close;
   DM1.cdsQry7.DataRequest(xSql);
   DM1.cdsQry7.Open;
   dblcdnomcam.Selected.Clear;
   dblcdnomcam.Selected.Add('NOMCAM'#9'15'#9'Código'#9#9);
   dblcdnomcam.Selected.Add('DESCAM'#9'30'#9'Descripción'#9#9);
   actcabpla;
   Screen.Cursor := crDefault;
   If DM1.cdsQry20.Active = True Then DM1.cdsQry20.Close;


//Inicio: SPP_201313_ASO
   xSql := 'SELECT DESCAM FROM ASO_PAD_DES_CAB WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

   If DM1.cdsQry.FieldByName('DESCAM').AsString = '' Then
      Begin
      btntransferir.Enabled := True;
      End
   Else
      Begin
      btntransferir.Enabled := False;
      xSql := 'SELECT ' + DM1.cdsQry.FieldByName('DESCAM').AsString + ' FROM ASO_PAD_DES_DET WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.cdsQry20.Close;
      DM1.cdsQry20.DataRequest(xSql);
      DM1.cdsQry20.Open;
      End
//Fin: SPP_201313_ASO

End;

Procedure TFproinfmig.dbgcabeceraCellChanged(Sender: TObject);
Begin
   actdetpla;
End;

Procedure TFproinfmig.dbgcabeceraIButtonClick(Sender: TObject);
Begin
   DM1.xCnd := 'I';
   pnlCab.Visible := True;
   pnlCab.Left := 54;
   pnlCab.Top := 213;
   menombre.SetFocus;
End;

Procedure TFproinfmig.bbtnOkCClick(Sender: TObject);
Var
   xSql, xcodpla: String;
Begin
   If Trim(menombre.Text) = '' Then
   Begin
      MessageDlg('Ingrese nombre de la plantilla', mtError, [mbOk], 0);
      menombre.SetFocus;
      Exit;
   End;
   If DM1.xCnd = 'I' Then
   Begin
      If MessageDlg('¿ Seguro de insertar nueva plantilla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         xSql := 'SELECT LPAD(NVL(MAX(PLANTILLA),0)+1,5,''0'') PLANTILLA FROM COB_PLA_MIG_PAD_CAB';
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         xcodpla := DM1.cdsQry.FieldByName('PLANTILLA').AsString;

//Inicio: SPP_201313_ASO
         xSql := 'INSERT INTO COB_PLA_MIG_PAD_CAB (PLANTILLA, NOMBRE, USUARIO, HREG, TIPOCARGA)'
            + '     VALUES (' + QuotedStr(xcodpla) + ',' + QuotedStr(menombre.Text) + ',' + QuotedStr(DM1.wUsuario)
            + '             , SYSDATE, ''' + DM1.sTipoCarga + ''')';
//Fin: SPP_201313_ASO

         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         MessageDlg('Registro insertado', mtInformation, [mbOk], 0);
         actcabpla;
         pnlCab.Visible := False;
      End;
   End;
   If DM1.xCnd = 'M' Then
   Begin
      If MessageDlg('¿ Seguro de modificar el nombre de la plantilla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         xSql := 'UPDATE COB_PLA_MIG_PAD_CAB '
            + '   SET NOMBRE = ' + QuotedStr(menombre.Text) + ' WHERE PLANTILLA = ' + QuotedStr(mecodigo.Text);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         MessageDlg('Registro modificado', mtInformation, [mbOk], 0);
         actcabpla;
         pnlCab.Visible := False;
      End;
   End;
End;

Procedure TFproinfmig.bbtnCancCClick(Sender: TObject);
Begin
   pnlCab.Visible := False;
End;

Procedure TFproinfmig.actcabpla;
Var
   xSql, xplantilla, xflg: String;
Begin
   xflg := 'N';
   If DM1.cdsQry5.Active = True Then
   Begin
      xplantilla := DM1.cdsQry5.FieldByName('PLANTILLA').AsString;
      xflg := 'S';
   End;

//Inicio: SPP_201313_ASO
   xSql := 'SELECT PLANTILLA, NOMBRE FROM COB_PLA_MIG_PAD_CAB WHERE TIPOCARGA = ''' + DM1.sTipoCarga + ''' ORDER BY PLANTILLA ';
//Fin: SPP_201313_ASO
   DM1.cdsQry5.Close;
   DM1.cdsQry5.DataRequest(xSql);
   DM1.cdsQry5.Open;
   dbgCabecera.Selected.Clear;
   dbgCabecera.Selected.Add('PLANTILLA'#9'5'#9'Plantilla'#9#9);
   dbgCabecera.Selected.Add('NOMBRE'#9'30'#9'Descripción'#9#9);
   dbgCabecera.ApplySelected;
   If xflg = 'S' Then DM1.cdsQry5.Locate('PLANTILLA', xplantilla, []);
End;

Procedure TFproinfmig.dbgcabeceraDblClick(Sender: TObject);
Begin
   DM1.xCnd := 'M';
   pnlCab.Visible := True;
   mecodigo.Text := DM1.cdsQry5.FieldByName('PLANTILLA').AsString;
   menombre.Text := DM1.cdsQry5.FieldByName('NOMBRE').AsString;
End;

Procedure TFproinfmig.actdetpla;
Var
   xSql, xplantilla, xitem: String;
Begin
   // actualizando detalle de plantilla
   xplantilla := '';
   xitem := '';
   If DM1.cdsQry6.Active = True Then
   Begin
      xplantilla := DM1.cdsQry6.FieldByName('PLANTILLA').AsString;
      xitem := DM1.cdsQry6.FieldByName('ITEM').AsString;
   End;

   xSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, TIPCAM '
      + '  FROM COB_PLA_MIG_PAD_DET '
      + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
      + ' ORDER BY ITEM';
   DM1.cdsQry6.Close;
   DM1.cdsQry6.DataRequest(xSql);
   DM1.cdsQry6.Open;
   dbgdetalle.Selected.Clear;
   dbgdetalle.Selected.Add('CAMPO'#9'15'#9'Campo'#9#9);
   dbgdetalle.Selected.Add('NOMBRE'#9'25'#9'Descripción'#9#9);
   dbgdetalle.Selected.Add('DESDE'#9'6'#9'Posición~inicial'#9#9);
   dbgdetalle.Selected.Add('HASTA'#9'6'#9'Posición~final'#9#9);
   dbgdetalle.ApplySelected;

   If xplantilla <> '' Then DM1.cdsQry6.Locate('PLANTILLA;ITEM', VarArrayof([xplantilla, xitem]), []);

End;

Procedure TFproinfmig.dbgdetalleIButtonClick(Sender: TObject);
Begin
   DM1.xCnd := 'I';
   dblcdnomcam.Text := '';
   medescam.Text := '';
   spDesde.Text := '';
   spHasta.Text := '';
   pnlDet.Visible := True;
   pnlDet.Top := 201;
   pnlDet.Left := 330;
End;

Procedure TFproinfmig.bbtnCancDClick(Sender: TObject);
Begin
   pnlDet.Visible := False;
End;

Procedure TFproinfmig.dblcdnomcamExit(Sender: TObject);
Begin
   medescam.Text := DM1.cdsQry7.FieldByName('DESCAM').AsString;
End;

Procedure TFproinfmig.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If key = #13 Then
   Begin
      key := #0;
      perform(CM_DialogKey, VK_TAB, 0);
   End;
End;

Procedure TFproinfmig.bbtnOkDClick(Sender: TObject);
Var
   xSql: String;
   xitem, xlongitud: Integer;

Begin
   If Trim(dblcdnomcam.Text) = '' Then
   Begin
      MessageDlg('Ingrese nombre del campo', mtError, [mbOk], 0);
      menombre.SetFocus;
      Exit;
   End;
   If Trim(spDesde.Text) = '' Then
   Begin
      MessageDlg('Ingrese la posición inicial', mtError, [mbOk], 0);
      spDesde.SetFocus;
      Exit;
   End;
   If Trim(spHasta.Text) = '' Then
   Begin
      MessageDlg('Ingrese la posición final', mtError, [mbOk], 0);
      spHasta.SetFocus;
      Exit;
   End;
   xlongitud := (StrToInt(spHasta.text) - StrToInt(spDesde.Text)) + 1;

   If DM1.cdsQry7.FieldByName('CAMFIJ').AsString = 'S' Then
   Begin
      If DM1.cdsQry7.FieldByName('TAMMAXCAP').AsInteger <> xlongitud Then
      Begin
         MessageDlg('El Tamaño del campo'#13'solo puede ser de ' + DM1.cdsQry7.FieldByName('TAMMAXCAP').AsString, mtError, [mbOk], 0);
         spHasta.SetFocus;
         Exit;
      End;
   End
   Else
   Begin
      If DM1.cdsQry7.FieldByName('TAMMAXCAP').AsInteger < xlongitud Then
      Begin
         MessageDlg('El Tamaño maximo del campo'#13'no puede exceder de ' + DM1.cdsQry7.FieldByName('TAMMAXCAP').AsString, mtError, [mbOk], 0);
         spHasta.SetFocus;
         Exit;
      End;
   End;

   If DM1.xCnd = 'I' Then
   Begin
      If MessageDlg('¿Seguro de insertar nuevo detalle de la plantilla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         xSql := 'SELECT NVL(MAX(ITEM),0)+1 ITEM '
            + '  FROM COB_PLA_MIG_PAD_DET '
            + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         xitem := DM1.cdsQry.FieldByName('ITEM').AsInteger;
         xSql := 'INSERT INTO COB_PLA_MIG_PAD_DET (PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, TIPCAM, USUARIO, HREG)'
            + '     VALUES (' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
            + '            ,' + IntToStr(xitem)
            + '            ,' + QuotedStr(dblcdnomcam.Text)
            + '            ,' + QuotedStr(medescam.Text)
            + '            ,' + spDesde.Text
            + '            ,' + spHasta.Text
            + '            ,' + QuotedStr(DM1.cdsQry7.FieldByName('TIPCAM').AsString)
            + '            ,' + QuotedStr(DM1.wUsuario)
            + '            , SYSDATE)';
         DM1.DCOM1.AppServer.EjecutaSql(xSql);
         MessageDlg('Registro insertado', mtInformation, [mbOk], 0);
         actdetpla;
         pnlCab.Visible := False;
      End;
   End;
   If DM1.xCnd = 'M' Then
   Begin
      If MessageDlg('¿Seguro de modificar nuevo detalle de la plantilla?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
      Begin
         xSql := 'UPDATE COB_PLA_MIG_PAD_DET '
            + '   SET CAMPO     = ' + QuotedStr(dblcdnomcam.Text)
            + '     , NOMBRE    = ' + QuotedStr(medescam.Text)
            + '     , DESDE     = ' + spDesde.Text
            + '     , HASTA     = ' + spHasta.Text
            + '     , TIPCAM    = ' + QuotedStr(DM1.cdsQry6.FieldByName('TIPCAM').AsString)
            + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry6.FieldByName('PLANTILLA').AsString)
            + '   AND ITEM      = ' + QuotedStr(DM1.cdsQry6.FieldByName('ITEM').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xSql);
         MessageDlg('Registro modificado', mtInformation, [mbOk], 0);
         actdetpla;
         pnlCab.Visible := False;
      End;
   End;
End;

Procedure TFproinfmig.dbgdetalleDblClick(Sender: TObject);
Begin
   DM1.xCnd := 'M';
   pnlDet.Visible := True;
   dblcdnomcam.Text := DM1.cdsQry6.FieldByName('CAMPO').AsString;
   medescam.Text := DM1.cdsQry6.FieldByName('NOMBRE').AsString;
   spDesde.Text := DM1.cdsQry6.FieldByName('DESDE').AsString;
   spHasta.Text := DM1.cdsQry6.FieldByName('HASTA').AsString;
   DM1.cdsQry7.Locate('NOMCAM', dblcdnomcam.Text, []);
   dblcdnomcam.SetFocus;
End;

Procedure TFproinfmig.btntransferirClick(Sender: TObject);
Begin
//Inicio: SPP_201313_ASO - Se llevo todo el codigo al procedure "transferirPADRON;"
   If DM1.sTipoCarga = 'PADRON' Then transferirPADRON;
   If DM1.sTipoCarga = 'ONP' Then transferirONP;
//Fin: SPP_201313_ASO
End;


//Inicio: SPP_201313_ASO - Nuevo
procedure TFproinfmig.transferirONP;
Var
   xsSql, xsflg: String;
   xnpos: Integer;
   xscampos: String;
   xnCanreg: Integer;
Begin

   // verificando campos minimos antes de migrar
   // 2013-10 - VALIDACION ONP
   // (1) Verificando si existe el campo DNI
   xsSql := 'select PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
      + ' from COB_PLA_MIG_PAD_DET '
      + ' where PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
      + ' AND CAMPO = ''ASODNI'' ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo ASODNI'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;
   // (2) Verificando si existe el campo CODPENSION
   xsSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
      + ' FROM COB_PLA_MIG_PAD_DET '
      + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
      + '   AND CAMPO = ''CODPENSION''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo CODPENSION'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;
   // (3)
   xsSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
      + ' FROM COB_PLA_MIG_PAD_DET '
      + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
      + '   AND CAMPO     = ''CODLEYPEN''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo CODLEYPEN'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;

    // Inicio HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    xsSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
      + ' FROM COB_PLA_MIG_PAD_DET '
      + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
      + '   AND CAMPO     = ''CODPRESTACION''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo CODPRESTACION'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;

   // Fin HPC_201701_ASO      : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
// FIN VALIDACION ONP


// INICIO DE BLOQUE
   DM1.DCOM1.AppServer.SOLStartTransaction;
   Try

// ACTUALIZA ARCHIVO TEXTO CARGADO SEGÚN LOS CAMPOS DE LA ESTRUCTURA (ASO_PAD_DES_DET)
      Screen.Cursor := crHourGlass;
      DM1.cdsQry6.First;
      xsSql := 'UPDATE ASO_PAD_DES_DET SET ';
      xsflg := '';
      While Not DM1.cdsQry6.Eof Do
      Begin
         If xsflg = 'X' Then
         Begin
            xsSql := xsSql + ',';
         End;
         xnpos := (DM1.cdsQry6.FieldByName('HASTA').AsInteger - DM1.cdsQry6.FieldByName('DESDE').AsInteger) + 1;

         xsSql := xsSql + DM1.cdsQry6.FieldByName('CAMPO').AsString;
         If DM1.cdsQry6.FieldByName('TIPCAM').AsString = 'C' Then
            xsSql := xsSql + ' = TRIM(SUBSTR(LINEA,' + DM1.cdsQry6.FieldByName('DESDE').AsString + ',' + IntToStr(xnpos) + '))'
         Else
            xsSql := xsSql + ' = TO_NUMBER(TRIM(SUBSTR(LINEA,' + DM1.cdsQry6.FieldByName('DESDE').AsString + ',' + IntToStr(xnpos) + ')),''999999.99'')';

         xsflg := 'X';
         DM1.cdsQry6.Next;
      End;
      xsSql := xsSql + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xsSql);


   // AGREGA NOMBRES DE CAMPOS A DESCAM DE LA TABLA CABECERA (ASO_PAD_DES_CAB.DESCAM)
   // CAMPOS DE LA PLANTILLA
      xscampos := '';
      xsflg := '';
      DM1.cdsQry6.First;
      While Not DM1.cdsQry6.Eof Do
      Begin
         If xsflg = 'X' Then xscampos := xscampos + ',';
         xscampos := xscampos + DM1.cdsQry6.FieldByName('CAMPO').AsString;
         xsflg := 'X';
         DM1.cdsQry6.Next;
      End;

      xsSql := ' UPDATE ASO_PAD_DES_CAB '
           + '    SET DESCAM = ' + QuotedStr(xscampos)
           + '  WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xsSql);
      actcabpla;
      DM1.cdsCreditos.Edit;
      DM1.cdsCreditos.FieldByName('DESCAM').AsString := xscampos;

      xsSql := ' SELECT DESCAM FROM ASO_PAD_DES_CAB WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsSql);
      DM1.cdsQry.Open;

      xsSql := 'SELECT ' + DM1.cdsQry.FieldByName('DESCAM').AsString + ' FROM ASO_PAD_DES_DET WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.cdsQry20.Close;
      DM1.cdsQry20.DataRequest(xsSql);
      DM1.cdsQry20.Open;


   // ACTUALIZA ASO_ONP_DES_DET CON LA CARGA
      xnCanreg := 0;
      DM1.cdsQry20.First;
      While Not DM1.cdsQry20.Eof Do
      Begin

         xsSql := ' UPDATE ASO_ONP_DES_DET SET '
               + '     REC_ASODNI = ' + QuotedStr(DM1.cdsQry20.FieldByName('ASODNI').AsString)
               + '    ,REC_CODPENSION = ' + QuotedStr(DM1.cdsQry20.FieldByName('CODPENSION').AsString)
               + '    ,REC_CODLEYPEN = ' + QuotedStr(DM1.cdsQry20.FieldByName('CODLEYPEN').AsString)
               // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
               + '    ,REC_CODPRE = ' + QuotedStr(DM1.cdsQry20.FieldByName('CODPRESTACION').AsString)
               // Fin HPC_201701_ASO     : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
               + '    ,FLAGACTCODPENSION = CASE WHEN ENV_CODPENSION = ' + QuotedStr(DM1.cdsQry20.FieldByName('CODPENSION').AsString) + ' THEN ''N'' ELSE ''S'' END '
               + '    ,FLAGACTCODLEYPEN = CASE WHEN ENV_CODLEYPEN = ' + QuotedStr(DM1.cdsQry20.FieldByName('CODLEYPEN').AsString) + ' THEN ''N'' ELSE ''S'' END '
               // Inicio HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
               + '    ,FLAGACTCODPRE = CASE WHEN ENV_CODPRE = ' + QuotedStr(DM1.cdsQry20.FieldByName('CODPRESTACION').AsString) + ' THEN ''N'' ELSE ''S'' END '
               // Fin HPC_201701_ASO    : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
               + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
               + '       AND ENV_ASODNI = ' + QuotedStr(DM1.cdsQry20.FieldByName('ASODNI').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xsSql);

         xnCanreg := xnCanreg + 1;
         DM1.cdsQry20.Next;
      End;

   // ACTUALIZA ASO_ONP_DES_DET CON LOS QUE NO SE CARGARON
      xsSql := ' UPDATE ASO_ONP_DES_DET SET '
            + '    FLAGACTCODPENSION = ''N'' '
            + '    ,FLAGACTCODLEYPEN = ''N'' '
            // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
            + '    ,FLAGACTCODPRE = ''N'' '
            // Fin HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
            + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
            + '       AND REC_ASODNI IS NULL ';
      DM1.DCOM1.AppServer.EjecutaSql(xsSql);

   // ACTUALIZA CABECERA(ASO_PAD_DES_CAB)
      xsSQL := 'UPDATE ASO_PAD_DES_CAB '
            + '      SET CANREG_TRANSF = ' + FloatToStr(xnCanreg)
            + '          , FLAG_TRANSF = ''S'' '
            + '          , FECHOR_TRANSF = SYSDATE '
            + '          , USUARIO_TRANSF = ' + QuotedStr(DM1.wUsuario)
            + '    WHERE NUMERO = ' + quotedstr(DM1.xNumero);
      DM1.DCOM1.AppServer.EjecutaSQL(xsSql);

      // ACTUALIZA LA GRILLA(CABECERAS) EN PANTALLA
      xsSql := 'SELECT FLAG_TRANSF, FECHOR_TRANSF, CANREG_TRANSF, USUARIO_TRANSF FROM ASO_PAD_DES_CAB WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xsSql);
      DM1.cdsQry.Open;

      DM1.cdsCreditos.Edit;
      DM1.cdsCreditos.FieldByName('FLAG_TRANSF').Value := DM1.cdsQry.FieldByName('FLAG_TRANSF').Value;
      DM1.cdsCreditos.FieldByName('FECHOR_TRANSF').Value := DM1.cdsQry.FieldByName('FECHOR_TRANSF').Value;
      DM1.cdsCreditos.FieldByName('CANREG_TRANSF').Value := DM1.cdsQry.FieldByName('CANREG_TRANSF').Value;
      DM1.cdsCreditos.FieldByName('USUARIO_TRANSF').Value := DM1.cdsQry.FieldByName('USUARIO_TRANSF').Value;
      DM1.cdsCreditos.Post;

      DM1.DCOM1.AppServer.SOLCommit;
      MessageDlg('La transferencia ha concluido', mtInformation, [mbOk], 0);
   Except
      DM1.DCOM1.AppServer.SOLRollBack;
      showmessage('Ocurrio algun error.. No se pudo grabar la transferencia');
      screen.Cursor := crDefault;
      exit;
   End;

   Screen.Cursor := crDefault;
End;
//Fin: SPP_201313_ASO


//Inicio: SPP_201313_ASO - Todo el código proviene del botón "transferir", solo se cambio del botón a un procedure
procedure TFproinfmig.transferirPADRON;
Var
   xSql, xflg: String;
   xpos: Integer;
   xcampos: String;
Begin
   // verificando campos minimos antes de migrar
   // (1) Verificando si existe el campo DNI
   xSql := 'select PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
          +'from COB_PLA_MIG_PAD_DET '
          +'where PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
          +' AND CAMPO     = ''ASODNI''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo ASODNI'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;
   // (2) Verificando si existe el campo COD.MOD
   xSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
          +'FROM COB_PLA_MIG_PAD_DET '
      + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
      + '   AND CAMPO     = ''ASOCODMOD''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo ASOCODMOD'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;
   // (3) Verificando si existe el campo CARGO
   xSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
          +'FROM COB_PLA_MIG_PAD_DET '
          +'WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
          +' AND CAMPO     = ''CARGO''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo CARGO'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;
   // (4) Verificando si existe el campo ASOAPENOM
   xSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
          +'FROM COB_PLA_MIG_PAD_DET '
          +'WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
          +' AND CAMPO     = ''ASOAPENOM''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo ASOAPENOM'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;
   // (5) Verificando si existe el campos ASOAPEPAT
   xSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
          +'FROM COB_PLA_MIG_PAD_DET '
          +'WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
          +'  AND CAMPO     = ''ASOAPEPAT''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo ASOAPEPAT'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;
   // (6) Verificando si existe el campos ASOAPEMAT
   xSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
          +'FROM COB_PLA_MIG_PAD_DET '
          +'WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
          +'   AND CAMPO     = ''ASOAPEMAT''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo ASOAPEMAT'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;
   // (7) Verificando si existe el campos ASONOMBRES
   xSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
          +'FROM COB_PLA_MIG_PAD_DET '
      + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
      + '   AND CAMPO     = ''ASONOMBRES''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
      MessageDlg('La plantilla seleccionada no contiene el campo ASONOMBRES'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
      Exit;
   End;
   // (8) Verificando si existe el campo ASOCODPAGO
   xSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
          +'FROM COB_PLA_MIG_PAD_DET '
      + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
      + '   AND CAMPO     = ''ASOCODPAGO''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 1 Then
   Begin
// inicio HPP_201103_ASO
// se corrige el mensaje para que exista correspondencia a la validacion de ASOCODPAGO
      MessageDlg('La plantilla seleccionada no contiene el campo ASOCODPAGO'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
// fin HPP_201103_ASO
      Exit;
   End;

   // HPP_200909_ASO, se retira, para que el colegio no sea obligatorio para ningun Tipo de Asociado
   // HPP_200908_ASO - SAR2009-0256
   // SAR0362-2009 (Se omite la Obligatoriedad de los centros educativos)
   {
   If Trim(DM1.cdsCreditos.FieldByName('ASOTIPID').AsString) <> 'CE' Then
   Begin
      // (9) Verificando si existe el campo CODIGO MODULAR DEL COLEGIO
      xSql := 'SELECT * FROM COB_PLA_MIG_PAD_DET '
         + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
         + '   AND CAMPO     = ''CODMODCOLEGIO''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount <> 1 Then
      Begin
         MessageDlg('La plantilla seleccionada no contiene el campo CODMODCOLEGIO'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
         Exit;
      End;
      // (10) Verificando si existe el campo NIVEDU_IDCOLEGIO
      xSql := 'SELECT * FROM COB_PLA_MIG_PAD_DET '
         + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
         + '   AND CAMPO     = ''NIVEDU_IDCOLEGIO''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      If DM1.cdsQry.RecordCount <> 1 Then
      Begin
         MessageDlg('La plantilla seleccionada no contiene el campo NIVEDU_IDCOLEGIO'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
         Exit;
      End;
   End;
   }
   // Verificando si existe el codigo de nivel (solo se debe añadir si he ha creado cod_mod de colegio)
   // fin HPP_200909_ASO
   xSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
          +'FROM COB_PLA_MIG_PAD_DET '
          +'WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
          +'  AND CAMPO = ''NIVEDU_IDCOLEGIO'' ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;
   // Ahora se verificado el cod_mod de colegio (si existe debe existir codigo de nivel o caso contrario no)
   xSql := 'SELECT PLANTILLA, ITEM, CAMPO, NOMBRE, DESDE, HASTA, USUARIO, HREG, TIPCAM, TAMMAX '
          +'FROM COB_PLA_MIG_PAD_DET '
          +'WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry5.FieldByName('PLANTILLA').AsString)
          +' AND CAMPO = ''CODMODCOLEGIO''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount = 1 Then
   Begin
      If DM1.cdsQry1.RecordCount = 0 Then
      Begin
         MessageDlg('La plantilla seleccionada no contiene el campo NIVEDU_IDCOLEGIO'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
         Exit;
      End;
   End
   Else
   Begin
      If DM1.cdsQry1.RecordCount = 1 Then
      Begin
         MessageDlg('La plantilla seleccionada no contiene el campo CODMODCOLEGIO'#13'Incluya el campo dentro de la plantilla', mtError, [mbOk], 0);
         Exit;
      End;
   End;
   // FIN SAR0362-2009
// fin HPP_200908_ASO

   Screen.Cursor := crHourGlass;
   DM1.cdsQry6.First;
   xSql := 'UPDATE ASO_PAD_DES_DET SET ';
   xflg := '';
   While Not DM1.cdsQry6.Eof Do
   Begin
      If xflg = 'X' Then
      Begin
         xSql := xSql + ',';
      End;
      xpos := (DM1.cdsQry6.FieldByName('HASTA').AsInteger - DM1.cdsQry6.FieldByName('DESDE').AsInteger) + 1;

// inicio HPC_201102_ASO
{
      // HPP_200906_ASO
      xSql := xSql + DM1.cdsQry6.FieldByName('CAMPO').AsString
         + ' = TRIM(SUBSTR(LINEA,' + DM1.cdsQry6.FieldByName('DESDE').AsString + ',' + IntToStr(xpos) + '))';
}
      xSql := xSql + DM1.cdsQry6.FieldByName('CAMPO').AsString;
      If DM1.cdsQry6.FieldByName('TIPCAM').AsString = 'C' Then
        xSql := xSql + ' = TRIM(SUBSTR(LINEA,' + DM1.cdsQry6.FieldByName('DESDE').AsString + ',' + IntToStr(xpos) + '))'
      Else
// inicio HPP_201103_ASO
// se modifica formato para que acepte el formato numérico incluyendo decimales
        xSql := xSql + ' = TO_NUMBER(TRIM(SUBSTR(LINEA,' + DM1.cdsQry6.FieldByName('DESDE').AsString + ',' + IntToStr(xpos) + ')),''999999.99'')';
// fin HPP_201103_ASO
// fin HPC_201102_ASO

      xflg := 'X';
      DM1.cdsQry6.Next;
   End;
   xSql := xSql + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
   xcampos := '';
   xflg := '';
   DM1.cdsQry6.First;
   While Not DM1.cdsQry6.Eof Do
   Begin
      If xflg = 'X' Then xcampos := xcampos + ',';
      xcampos := xcampos + DM1.cdsQry6.FieldByName('CAMPO').AsString;
      xflg := 'X';
      DM1.cdsQry6.Next;
   End;
   xSql := 'UPDATE ASO_PAD_DES_CAB '
      + '   SET DESCAM = ' + QuotedStr(xcampos)
      + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
   actcabpla;
   DM1.cdsCreditos.Edit;
   DM1.cdsCreditos.FieldByName('DESCAM').AsString := xcampos;
   If Pos('UPROID', DM1.cdsCreditos.FieldByName('DESCAM').AsString) = 0 Then
   Begin
      xSql := 'UPDATE ASO_PAD_DES_CAB '
         + '   SET DESCAM = DESCAM||'',UPROID'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
   End;

   If Pos('UPAGOID', DM1.cdsCreditos.FieldByName('DESCAM').AsString) = 0 Then
   Begin
      xSql := 'UPDATE ASO_PAD_DES_CAB '
         + '   SET DESCAM = DESCAM||'',UPAGOID'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
   End;

   If Pos('USEID', DM1.cdsCreditos.FieldByName('DESCAM').AsString) = 0 Then
   Begin
      xSql := 'UPDATE ASO_PAD_DES_CAB '
         + '   SET DESCAM = DESCAM||'',USEID'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
   End;

   If Pos('CODMODCOLEGIO', DM1.cdsCreditos.FieldByName('DESCAM').AsString) = 0 Then
   Begin
      xSql := 'UPDATE ASO_PAD_DES_CAB '
         + '   SET DESCAM = DESCAM||'',CODMODCOLEGIO'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
   End;

   If Pos('NIVEDU_IDCOLEGIO', DM1.cdsCreditos.FieldByName('DESCAM').AsString) = 0 Then
   Begin
      xSql := 'UPDATE ASO_PAD_DES_CAB '
         + '   SET DESCAM = DESCAM||'',NIVEDU_IDCOLEGIO'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
   End;

   xSql := 'SELECT DESCAM FROM ASO_PAD_DES_CAB '
      + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;

   xSql := 'SELECT ' + DM1.cdsQry.FieldByName('DESCAM').AsString + ' FROM ASO_PAD_DES_DET WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.cdsQry20.Close;
   DM1.cdsQry20.DataRequest(xSql);
   DM1.cdsQry20.Open;

   Screen.Cursor := crDefault;
End;
//Fin: SPP_201313_ASO

Procedure TFproinfmig.BitBtn3Click(Sender: TObject);
Begin
   Fproinfmig.Close;
End;

Procedure TFproinfmig.btnactugelClick(Sender: TObject);
Var
   xSql: String;
Begin
   // Actualizando Ugel
   xSql := 'UPDATE ASO_PAD_DES_DET SET USEID = SUBSTR(ASOCODPAGO,1,2) WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
   xSql := 'SELECT USEID FROM ASO_PAD_DES_DET WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ' GROUP BY USEID';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   While DM1.cdsQry.Eof Do
   Begin
      //Cambio por HPP_00024_ASO - 23/09/2008
      xSql := 'SELECT UPROID, UPAGOID '
         + '  FROM APO101 '
         + ' WHERE NVL(FDESHABILITADO,''S'') =''N'' AND'
         + '       DPTOID = ' + QuotedStr(DM1.cdsCreditos.FieldByName('DPTOID').AsString) + ' AND'
         + '       USEID  = ' + QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString);
      DM1.cdsQry1.DataRequest(xSql);
      DM1.cdsQry1.Open;
      If DM1.cdsQry1.RecordCount = 1 Then
      Begin
         // Actualizando registros
         xSql := 'UPDATE ASO_PAD_DES_DET '
            + '   SET UPROID  = ' + QuotedStr(DM1.cdsQry1.FieldByName('UPROID').AsString)
            + '      ,UPAGOID = ' + QuotedStr(DM1.cdsQry1.FieldByName('UPAGOID').AsString)
            + ' WHERE NUMERO  = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
            + '   AND USEID   = ' + QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString);
         DM1.DCOM1.AppServer.EjecutaSql(xSql);
      End
      Else
      Begin
         // Cuando existe mas de un registro en la ugel
         // Se procede a seleccionar el correcto.
      End;

      DM1.cdsQry.Next;
   End;
End;

Procedure TFproinfmig.btneliregClick(Sender: TObject);
Var
   xSql: String;
Begin
   // Elimina registro
   xSql := 'DELETE FROM COB_PLA_MIG_PAD_DET'
      + ' WHERE PLANTILLA = ' + QuotedStr(DM1.cdsQry6.FieldByName('PLANTILLA').AsString)
      + '   AND ITEM      = ' + QuotedStr(DM1.cdsQry6.FieldByName('ITEM').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
   actdetpla;
End;

End.

