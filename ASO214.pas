// Inicio Uso Estándares    :	01/08/2011
// Unidad		             :	ASO214.pas
// Formulario		          :	FDatDoc
// Fecha de Creación	       :	15/12/2011
// Autor			             :	Daniel Fernández
// Objetivo		             : Permite asignar un número de serie al asociado
// Actualizaciones:
// HPC             FECHA       AUTOR      DESCRIPCION
// -------------------------------------------------------------------------------------------------------------------------
// HPC_201120_ASO  15/12/2011 DFERNANDEZ Creación del formulario.
// HPP_201110_ASO     : Se realiza el pase a partir del HPC_201120_ASO
// HPC_201121_ASO     : Se cambia validación del número de caracteres en el número de serie
// DPP_201201_ASO     : Se realiza el pase a partir del doc. HPC_201121_ASO
// HPC_201710_ASO  : Implementación de la opción de generación de clave Web
// HPC_201804_ASO  : Consulta de Contactabilidad V2

Unit ASO214;

Interface

Uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   StdCtrls, ExtCtrls, Mask, wwdbedit, fcButton, fcImgBtn, fcShapeBtn, Db,
   DBTables, Wwtable, ppProd, ppClass, ppReport, ppComm, ppRelatv,
   ppCache, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppBands, ppBarCod, wwdblook,
   IdBaseComponent, IdComponent,
   IdTCPConnection, IdTCPClient, IdFTP, jpeg, IniFiles, DBCtrls, fcImager,
   DBXpress, IWControl, IWExtCtrls, IWDBExtCtrls, DBClient, SimpleDS,
   SqlExpr, Wwdatsrc, Buttons, Grids, ValEdit, ppStrtch, ppSubRpt,
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
  Wwdbigrd, Wwdbgrid, ComCtrls, Wwdotdot, Wwdbcomb,Variants,EmailSvc,
  wwdbdatetimepicker;
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web

Type
   TFDatDoc = Class(TForm)
      grpSerie: TGroupBox;
      edtValida: TEdit;
      fcShapeBtn1: TfcShapeBtn;
      btnSalir: TBitBtn;
      GroupBox1: TGroupBox;
      edtASOCODMOD: TwwDBEdit;
      edtASOAPENOMDNI: TwwDBEdit;
      BitBuscar: TButton;
      edtASOTIPID: TwwDBEdit;
      edtTipoAsociado: TwwDBEdit;
      edtASOID: TwwDBEdit;
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
    grupoItem: TRadioGroup;
    PageControl1: TPageControl;
    TabEnvios: TTabSheet;
    TabConsulta: TTabSheet;
    dbGridCorreo: TwwDBGrid;
    gridHistorial: TwwDBGrid;
    checkCorreo: TCheckBox;
    edtASODNI: TwwDBEdit;
    cbOrigen: TwwDBLookupCombo;
    TabSheet1: TTabSheet;
    gridHist: TwwDBGrid;
    dtFechaInicio: TwwDBDateTimePicker;
    dtFechaFin: TwwDBDateTimePicker;
    cbEstado: TComboBox;
    cbCorreo: TwwDBLookupCombo;
    edtASOEMAIL: TEdit;
    cbTipoCorreo: TwwDBLookupCombo;
    btnAgregar: TBitBtn;
    btnEliminar: TBitBtn;
    btnEnviar: TBitBtn;
    btnReenviar: TBitBtn;
    lblMensaje: TLabel;
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
      Procedure fcShapeBtn2Click(Sender: TObject);
      Procedure edtValidaChange(Sender: TObject);
      Procedure fcShapeBtn1Click(Sender: TObject);
      Procedure FormCreate(Sender: TObject);
      Procedure btnSalirClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure BitBuscarClick(Sender: TObject);
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
    procedure grupoItemClick(Sender: TObject);
    procedure checkCorreoClick(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure btnEliminarClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
    procedure cbOrigenExit(Sender: TObject);
    procedure TabConsultaShow(Sender: TObject);
    procedure TabEnviosShow(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnBuscarHistoricoClick(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure btnReenviarClick(Sender: TObject);
    procedure cbEstadoChange(Sender: TObject);
    procedure dtFechaInicioChange(Sender: TObject);
    procedure dtFechaFinChange(Sender: TObject);
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
   Private
    { Private declarations }
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
    xEstadoProceso:Boolean;
    Function CalDig(nPass: Real): Real;
    Function EnviarCorreo(para,asocidado,clave,url,de,asunto:String):Motivo;
    Function getHtml():String;
    procedure buscarConsulta();
    procedure buscarHistorial();
    procedure buscarAsociado(ASOID:String);
    procedure cargarGrilla;
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
   Public
      sRuta, sFEC_FOTO, sUSUARIO, sEQUIPO: String;
      XvASOID, XvASOCODMOD, XvASOCODAUX, XvLIBELE, XvUSUARIO, XvEQUIPO, XvFEC_FOTO, XvCTASER, XvCOD_OFI, XvCORRELATIV, XvID_PASSWOR, XvTFoto, XvOfdesid: String;
      Procedure DatosAnteriores();
      Procedure GuardaLog();
      Function VerificaGrabo(VASOID, VASOCODMOD, VASOCODAUX, VASODNI, VSERIE: String): String;
      Procedure ObtenerDatosActualizador;     
    { Public declarations }
   End;

Var
   FDatDoc: TFDatDoc;

Implementation

Uses ASODM, ASO200;

{$R *.DFM}

Procedure TFDatDoc.fcShapeBtn2Click(Sender: TObject);
Begin
   Close;
End;

Procedure TFDatDoc.edtValidaChange(Sender: TObject);
Begin
//VERIFICA SI EL NUMERO DE SERIE
//Inicio: DPP_201201_ASO
   If length(edtValida.Text) > 7 Then
   Begin
      MessageDlg('El Número de Serie debe tener siete(7) caracteres', mtError, [mbyes], 0);
      edtValida.text := copy(TRIM(edtValida.text), 1, 7);
   End
//Fin: DPP_201201_ASO
End;

Procedure TFDatDoc.fcShapeBtn1Click(Sender: TObject);
Var
   C1, C2, C3, C4, C5, C6, ZC: Integer;
Var
   ZC10: Double;
Var
   DV, DGVE, xSQL, xVeri: String;
Begin
//Verifica si la serie es valida
//Inicio: DPP_201201_ASO
   If length(edtValida.Text) > 7 Then
   Begin
      MessageDlg('El Número de Serie debe tener siete(7) caracteres', mtError, [mbyes], 0);
      edtValida.text := copy(TRIM(edtValida.text), 1, 7);
      exit;
   End;
//Fin: DPP_201201_ASO

//Verifica si el numero de serie ya fue Asignado
   xSQL := 'Select COD_MOD, LIBELE, PASSWORD, ID_PASSWOR, FEC_GEN, COD_OFI, COD_SEQ, CORRELATIV, '
          +'       IMPRESO, CHK, USUARIO, EQUIPO, FEC_FOTO, ASOID, ASOCODMOD, ASOCODAUX, OFDESID_FOTO, '
          +'       SCAFOT, SCAFIR '
          +'  from PASSWORD '
          +' where ID_PASSWOR=''' + TRIM(edtValida.text) + ''' ';
   DM1.cdsPass3.Close;
   DM1.cdsPass3.DataRequest(xSQL);
   DM1.cdsPass3.Open;

   If DM1.cdsPass3.RecordCount = 1 Then
   Begin
      If (DM1.DSPass3.DataSet.FieldByName('ASOCODMOD').Asstring + DM1.DSPass3.DataSet.FieldByName('ASOCODAUX').Asstring <>
         DM1.dscliente3.DataSet.FieldByName('ASOCODMOD').Asstring + DM1.dscliente3.DataSet.FieldByName('ASOCODAUX').Asstring)
         And (DM1.DSPass3.DataSet.FieldByName('ASOCODMOD').Asstring <> '') Then

      Begin
         If (DM1.dsPass3.DataSet.FieldByName('ASOID').AsString <> '')
            And (DM1.dsPass3.DataSet.FieldByName('ASOID').AsString <> DM1.cdsCliente3.FieldByName('ASOID').AsString) Then
         Begin
            MessageDlg('EL NUMERO DE SERIE YA FUE ASIGNADO A OTRO DOCENTE..!!!', mtError, [mbyes], 0);
            exit;
         End
         Else
            If Length(trim(DM1.dsPass3.DataSet.FieldByName('ASOID').AsString)) = 0 Then
            Begin

               MessageDlg('EL NUMERO DE SERIE YA FUE ASIGNADO A OTRO DOCENTE..!!!', mtError, [mbyes], 0);
               exit;
            End;
      End
      Else
         If (DM1.cdsPass3.FieldByName('ASOID').AsString <> '')
            And (DM1.cdsPass3.FieldByName('ASOID').AsString <> DM1.cdscliente3.FieldByName('ASOID').AsString) Then
         Begin
            MessageDlg('EL NUMERO DE SERIE YA FUE ASIGNADO A OTRO DOCENTE..!!!', mtError, [mbyes], 0);
            exit;
         End;
   End

   Else
      If DM1.cdsPass3.RecordCount > 1 Then
      Begin
         MessageDlg('EL NUMERO DE SERIE ESTA DUPLICADO NO LO UTILIZE Y COMUNIQUE A SISTEMAS..!!!', mtError, [mbyes], 0);
         exit;
      End;

// VERIFICA QUE EL CODIGO DIGITADO COINSIDA CON EL DIGITO VERIFICADOR
   c1 := StrToInt(copy(edtValida.Text, 1, 1)) * 1;
   c2 := StrToInt(copy(edtValida.Text, 2, 1)) * 3;
   c3 := StrToInt(copy(edtValida.Text, 3, 1)) * 1;
   c4 := StrToInt(copy(edtValida.Text, 4, 1)) * 3;
   c5 := StrToInt(copy(edtValida.Text, 5, 1)) * 1;
   c6 := StrToInt(copy(edtValida.Text, 6, 1)) * 3;
   DV := copy(edtValida.Text, 7, 1);

   ZC := C1 + C2 + C3 + C4 + C5 + C6; //suma desde c1 hasta c6
   ZC10 := INT(ZC / 10) * 10 + 10; //La proxima decima De la sumatoria ZC
   DGVE := FloatToStr(INT(ZC10 - ZC)); //el digito verificador es la resta de ZC10-ZC
   If DGVE = '10' Then DGVE := '0'; //Si el digito verificador es 10 se pone 0

   If DV <> DGVE Then
   Begin
      MessageDlg('EL NUMERO DE SERIE ESTA MAL DIGITADO', mtError, [mbyes], 0);
      Exit;
   End
   Else
   Begin
        //Los datos anteriores los guarda en una variable
      DatosAnteriores;

        //Graba el Codigo Modula el DNI y un Flag de procesado
      xSQL := 'UPDATE PASSWORD SET '
         + ' ASOID = ' + QuotedStr(DM1.cdsCliente3.FieldByName('ASOID').AsString)
         + ', ASOCODMOD = ' + QuotedStr(DM1.cdsCliente3.FieldByName('ASOCODMOD').AsString)
         + ', ASOCODAUX = ' + QuotedStr(DM1.cdsCliente3.FieldByName('ASOCODAUX').AsString)
         + ', LIBELE = ' + QuotedStr(DM1.cdsCliente3.FieldByName('ASODNI').AsString);

        //Si en diferente a la CTASER del Cliente significa que es nuevo o que se esta actualizando
      If edtValida.Text <> DM1.cdsCliente3.FieldByName('CTASER').AsString Then
      Begin
         xSQL := xSQL + ', USUARIO = ' + QuotedStr(DM1.wUsuario)
            + ', OFDESID_FOTO = ' + QuotedStr(DM1.wofides)
            + ', EQUIPO = ' + QuotedStr(DM1.wcomputadora)
            + ', FEC_FOTO = ' + QuotedStr(FormatDateTime('yyyy/mm/dd hh:nn:ss', Now))
            + ', CHK = ' + QuotedStr('0');
         GuardaLog;
      End;

      xSQL := xSQL + ' WHERE ID_PASSWOR = ' + QuotedStr(edtValida.Text);

      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

    //Captura datos de quien tomo Foto
      sFEC_FOTO := DM1.cdsPass3.FieldByName('FEC_FOTO').AsString;
      sUSUARIO := DM1.cdsPass3.FieldByName('USUARIO').AsString;
      sEQUIPO := DM1.cdsPass3.FieldByName('EQUIPO').AsString;

    //Graba la Serie en el Cliente
      xSQL := 'UPDATE APO201 SET '
         + 'CTASER = ' + QuotedStr(edtValida.Text)
         + ', IDIMAGE = ' + QuotedStr(edtValida.Text)
         + ' WHERE ASOID = ' + QuotedStr(DM1.cdsCliente3.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

    //Verifica si grabo correctamente
      xVeri := VerificaGrabo(DM1.cdsCliente3.FieldByName('ASOID').AsString,
         DM1.cdsCliente3.FieldByName('ASOCODMOD').AsString,
         DM1.cdsCliente3.FieldByName('ASOCODAUX').AsString,
         DM1.cdsCliente3.FieldByName('ASODNI').AsString,
         edtValida.Text);
      If xVeri = '1' Then
      Begin
         ShowMessage('Grabación incorrecta en archivo PASSWORD...VALIDE NUEVAMENTE');
         exit;
      End;
      If xVeri = '2' Then
      Begin
         ShowMessage('Grabación incorrecta en archivo ASOCIADOS...VALIDE NUEVAMENTE');
         exit;
      End;
      If xVeri = '3' Then
      Begin
         ShowMessage('Mas de un registro en ASOCIADOS con la misma Serie');
         exit;
      End;
      If xVeri = '0' Then
      Begin
         ShowMessage('Grabación correcta...');
      End;

      DM1.cdsPass3.Close;
   End;

   Close;
End;
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
Procedure TFDatDoc.FormCreate(Sender: TObject);
Begin
   Height := 297;
   btnSalir.Top:=199;
   grpSerie.Visible := false;
   PageControl1.Visible:=false;
   edtASOEMAIL.Visible:=false;
   cbCorreo.Visible:=false;
   checkCorreo.Visible:=false;
   lblMensaje.Caption:='';
End;
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
Procedure TFDatDoc.ObtenerDatosActualizador;
Var
   xSQL: String;
Begin
  //Saca información de quien actualizo los datos
   xSQL := 'Select COD_MOD, LIBELE, PASSWORD, ID_PASSWOR, FEC_GEN, COD_OFI, COD_SEQ, '
          +'       CORRELATIV, IMPRESO, CHK, USUARIO, EQUIPO, FEC_FOTO, ASOID, ASOCODMOD, '
          +'       ASOCODAUX, OFDESID_FOTO, SCAFOT, SCAFIR '
          +'  from PASSWORD'
          +' where ID_PASSWOR ='+quotedstr(trim(edtValida.text));
   DM1.cdsPass3.Close;
   DM1.cdsPass3.DataRequest(xSQL);
   DM1.cdsPass3.Open;
   If (DM1.cdsPass3.RecordCount > 0) And (Length(TRIM(DM1.cdsPass3.FieldByName('ASOID').AsString)) <> 0) Then
   Begin
    //Captura datos de quien tomo Foto
      sFEC_FOTO := DM1.cdsPass3.FieldByName('FEC_FOTO').AsString;
      sUSUARIO := DM1.cdsPass3.FieldByName('USUARIO').AsString;
      sEQUIPO := DM1.cdsPass3.FieldByName('EQUIPO').AsString;
   End
   Else
   Begin
    //Captura datos de quien tomo Foto
      sFEC_FOTO := '';
      sUSUARIO := '';
      sEQUIPO := '';
   End;
   DM1.cdsPass3.Close;
End;

//Asigna a las variables los datos anteriores

Procedure TFDatDoc.DatosAnteriores;
Begin
   XvCOD_OFI := DM1.cdsPass3.FieldByName('COD_OFI').AsString;
   XvCORRELATIV := DM1.cdsPass3.FieldByName('CORRELATIV').AsString;
   XvID_PASSWOR := DM1.cdsPass3.FieldByName('ID_PASSWOR').AsString;
   XvASOID := DM1.cdsPass3.FieldByName('ASOID').AsString;
   XvASOCODMOD := DM1.cdsPass3.FieldByName('ASOCODMOD').AsString;
   XvASOCODAUX := DM1.cdsPass3.FieldByName('ASOCODAUX').AsString;
   XvLIBELE := DM1.cdsPass3.FieldByName('LIBELE').AsString;
   XvUSUARIO := DM1.cdsPass3.FieldByName('USUARIO').AsString;
   XvEQUIPO := DM1.cdsPass3.FieldByName('EQUIPO').AsString;
   XvFEC_FOTO := DM1.cdsPass3.FieldByName('FEC_FOTO').AsString;
   XvOfdesid := DM1.cdsPass3.FieldByName('OFDESID_FOTO').AsString;

   If Length(TRIM(DM1.cdsPass3.FieldByName('ASOID').AsString)) = 0 Then //ES PRIMERA VEZ
   Begin
      XvASOID := DM1.cdsCliente3.FieldByName('ASOID').AsString;
      XvASOCODMOD := DM1.cdsCliente3.FieldByName('ASOCODMOD').AsString;
      XvASOCODAUX := DM1.cdsCliente3.FieldByName('ASOCODAUX').AsString;
      XvLIBELE := DM1.cdsCliente3.FieldByName('ASODNI').AsString;
      XvUSUARIO := trim(DM1.wUsuario);
      XvEQUIPO := trim(DM1.wcomputadora);
      XvOfdesid := trim(DM1.wofides);
      XvFEC_FOTO := FormatDateTime('yyyy/mm/dd hh:nn:ss', Now);
   End;
End;

Procedure TFDatDoc.btnSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFDatDoc.GuardaLog;
Var
   xSQL: String;
Begin
   xSQL := 'Insert into PASSWORD_LOG '
          +'   (COD_OFI,CORRELATIV,ID_PASSWOR,ASOID,ASOCODMOD,ASOCODAUX,LIBELE,USUARIO, '
          +'    EQUIPO,FEC_FOTO,OFDESID_FOTO,TOMAFOTO,USUARIO_MO,FECHA_MO,HORA_MO) '
          +' Values (' +quotedstr(XvCOD_OFI)+','
                       +quotedstr(XvCORRELATIV)+','
                       +quotedstr(XvID_PASSWOR)+','
                       +quotedstr(XvASOID)+','
                       +quotedstr(XvASOCODMOD)+','
                       +quotedstr(XvASOCODAUX)+','
                       +quotedstr(XvLIBELE)+','
                       +quotedstr(XvUSUARIO)+','
                       +quotedstr(XvEQUIPO)+','
                       +quotedstr(XvFEC_FOTO)+','
                       +quotedstr(XvOfdesid)+','
                       +quotedstr(XvTFoto)+','
                       +quotedstr(DM1.wUsuario)+','
                       +' trunc(Sysdate),'
                       +' Sysdate)';
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
End;

Function TFDatDoc.VerificaGrabo(VASOID, VASOCODMOD, VASOCODAUX, VASODNI,
   VSERIE: String): String;
Var
   xSQL: String;
Begin
   Result := '0';
 //Verifica si los datos grabados en PASSWORD son los correctos
   xSQL := 'Select COD_MOD, LIBELE, PASSWORD, ID_PASSWOR, FEC_GEN, COD_OFI, COD_SEQ, '
          +'       CORRELATIV, IMPRESO, CHK, USUARIO, EQUIPO, FEC_FOTO, ASOID, ASOCODMOD, '
          +'       ASOCODAUX, OFDESID_FOTO, SCAFOT, SCAFIR '
          +'From PASSWORD '
          +'Where ID_PASSWOR = '+quotedstr(VSERIE);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 0 Then
   Begin
      If (DM1.cdsQry.FieldByName('ASOID').AsString <> VASOID) Or
         (DM1.cdsQry.FieldByName('ASOCODMOD').AsString <> VASOCODMOD) Or
         (DM1.cdsQry.FieldByName('ASOCODAUX').AsString <> VASOCODAUX) Or
         (DM1.cdsQry.FieldByName('LIBELE').AsString <> VASODNI) Then
      Begin
         Result := '1';
         exit;
      End;
   End;

 //Verifica si los datos grabados en CLIENTE son los correctos
   xSQL := 'SELECT ASOID,ASOCODMOD,CTASER,IDIMAGE '
          +'FROM APO201 '
          +'WHERE ASOID='+quotedstr(VASOID);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount <> 0 Then
   Begin
      If (DM1.cdsQry.FieldByName('CTASER').AsString <> VSERIE) Or
         (DM1.cdsQry.FieldByName('IDIMAGE').AsString <> VSERIE) Then
      Begin
         Result := '2';
         exit;
      End;
   End;

    //Verifica si exiten mas de dos asociados con el mismo IDIMAGE
   xSQL := 'Select ASOID,ASOCODMOD,CTASER,IDIMAGE '
          +'From APO201 '
          +'Where IDIMAGE='+quotedstr(VSERIE);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Open;
   If DM1.cdsQry.RecordCount > 1 Then
   Begin
      Result := '3';
      exit;
   End;

   DM1.cdsQry.Close;
End;

Procedure TFDatDoc.FormClose(Sender: TObject; Var Action: TCloseAction);
Begin
   DM1.cdsCliente3.Close;
   DM1.cdsPass3.Close;

// Inicio HPC_201804_ASO  : Consulta de Contactabilidad
   DM1.cdsQry4.Close;
   DM1.cdsQry7.Close;
// Fin  HPC_201804_ASO  : Consulta de Contactabilidad

End;
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
procedure TFDatDoc.buscarAsociado(ASOID:String);
var xSQL:String;
Begin
  xSQL := 'SELECT A.ASOID, A.ASOCODMOD, A.ASOCODAUX, A.ASOAPENOMDNI, A.ASOTIPID, A.USEID, '
                +'       A.UPROID, A.ASODNI, A.ASONCTA, T.ASOTIPDES, A.ASORESNOM, A.ASOFRESNOM, '
                +'       A.ASORESCESE, A.ASOFRESCESE, A.IDIMAGE, A.CTASER,A.ASOEMAIL,A.ASODNI'
                +' FROM APO201 A '
                +'  INNER JOIN APO107 T ON A.ASOTIPID = T.ASOTIPID '
                +' WHERE A.ASOID = ' + QuotedStr(ASOID);
   DM1.cdsCliente3.Close;
   DM1.cdsCliente3.DataRequest(xSQL);
   DM1.cdsCliente3.Open;

   edtValida.Text := DM1.cdsCliente3.FieldByName('IDIMAGE').ASSTRING;

   ObtenerDatosActualizador;

  xSQL := ' '
  +' SELECT ASOID,ASOEMAIL CORREO,''N'' ACTIVO,''MAESTRO_ASOCIADOS'' FUENTE,''05'' CODFUEINF '
  +' FROM APO201 WHERE ASOID='+QuotedStr(ASOID)+' AND ASOEMAIL IS NOT NULL AND TRIM(ASOEMAIL) like ''%@%'' '
  +' UNION '
  +' SELECT ASOID,CORREO,ACTIVO,DESFUEINF FUENTE,X.CODFUEINF '
  +' FROM GES_COR_ASO X,GES_FUE_INF_MAE Y WHERE CORREO like ''%@%'' AND  ASOID='+QuotedStr(ASOID)
  +' AND X.CODFUEINF=Y.CODFUEINF';

// Inicio HPC_201804_ASO  : Consulta de Contactabilidad
  xSQL:='SELECT ASOID, DESTIPCOR, CORREO, FUENTE, FECHA, USUARIO, ACTIVO, OBSCOR, CODFUEINF, RANK_ASO '
         +' FROM ( '
         + 'SELECT ASOID, DESTIPCOR, CORREO, DESFUEINF FUENTE, FECHA, USUARIO, ACTIVO, OBSCOR, CODFUEINF, RANK_ASO_X, XX, '
         + '        RANK() OVER (PARTITION BY ASOID order by RANK_ASO_x) RANK_ASO '
         + '  FROM ( '
         + 'SELECT ASOID, B.DESTIPCOR, A.EMAIL CORREO, C.DESFUEINF, a.COD_FUENTE_DATOS CODFUEINF, '
         + '       FECHA_ACTUALIZACION FECHA, ''DB2ADMIN'' USUARIO, '
         + '       '' '' ACTIVO, A.ROWID, '' '' OBSCOR, '
         + '       RANK() OVER (PARTITION BY ASOID order by PRI_USU, a.rowid) RANK_ASO_X, '
         + '       row_number() over(partition by EMAIL order by EMAIL, PRI_USU) XX '
         + '  FROM GES_CORREO_PRIO A, GES_TIP_COR_MAE B, GES_FUE_INF_MAE C, '
         + '       ( SELECT COD_FUENTE_DATOS, PRI_USU FROM DB2ADMIN.ASO_ORD_PRIO_DET '
         + '          WHERE PERIODO=( '
         +          ' SELECT MAX(PERIODO) PERIODO FROM DB2ADMIN.ASO_ORD_PRIO_CAB '
         +          ' WHERE COD_AREA=''22'' AND TIPO_DATO=''COR'') '
         +          '   AND COD_AREA=''22'' AND TIPO_DATO=''COR'') Z '
         + ' WHERE ASOID = ' + QuotedStr(ASOID) 
         + '   AND A.TIP_EMAIL = B.CODTIPCOR '
         + '   AND A.COD_FUENTE_DATOS = C.CODFUEINF '
         + '   AND C.cod_fue_dat_idc=z.COD_FUENTE_DATOS '
         + ' ) WHERE XX=1 '
         + ' ) '
         + ' WHERE RANK_ASO<=5 '
         + 'ORDER BY RANK_ASO';

   DM1.cdsQry20.Close;
   DM1.cdsQry20.DataRequest(xSQL);
   DM1.cdsQry20.Open;
   cbCorreo.LookupField:='ASOID';
   cbCorreo.LookupTable := DM1.cdsQry20;
   cbCorreo.Selected.Clear;
   cbCorreo.Selected.Add('CORREO'#9'50'#9'CORREO'#9#9);
   cbCorreo.Selected.Add('FUENTE'#9'25'#9'FUENTE'#9#9);
   cbCorreo.Selected.Add('ACTIVO'#9'10'#9'ACTIVO'#9#9);
   cbCorreo.Selected.Add('RANK_ASO'#9'8'#9'PRIORIDAD'#9#9);
// Fin  HPC_201804_ASO  : Consulta de Contactabilidad
   checkCorreo.Checked:=false;
   lblMensaje.Caption:='';
   IF DM1.cdsQry20.RecordCount=0 Then
   Begin
       checkCorreo.Checked:=true;
       cbCorreo.Visible:=false;
       edtASOEMAIL.Visible:=true;
       if TRIM(edtASOID.Text)<>'' Then
       Begin
          lblMensaje.Caption:='No registra correos';
       End;
       edtASOEMAIL.SetFocus;
   End;
   IF DM1.cdsQry20.RecordCount=1 Then
   Begin
    cbCorreo.Text:= DM1.cdsQry20.FieldByName('CORREO').AsString;
   End;

   buscarConsulta();
End;
Procedure TFDatDoc.BitBuscarClick(Sender: TObject);
Begin
   Try
      lblMensaje.Caption:='';
      FSeleccionaAso := TFSeleccionaAso.Create(self);
      FSeleccionaAso.ShowModal;
      If FSeleccionaAso.Seleccionado Then
      Begin
         buscarAsociado(FSeleccionaAso.ASOID);
      End
      Else
      Begin
         DM1.cdsCliente3.Close;
      End;
   Finally
      FSeleccionaAso.Free;
   End;
End;
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web
procedure TFDatDoc.grupoItemClick(Sender: TObject);
  var xSql:String;
begin
    edtASOEMAIL.Text:='';
    edtASOEMAIL.Visible:=false;
    lblMensaje.Caption:='';
    If grupoItem.ItemIndex = 0 Then
    Begin
      Height := 297;
      btnSalir.Top:=207;
      grpSerie.Visible := false;
      cbCorreo.Visible:=false;
      checkCorreo.Visible:=false;
      edtASOEMAIL.Visible:=false;
      if trim(edtASOCODMOD.Text)<>'' Then
      Begin
        grpSerie.Visible := true;
      End;
      PageControl1.Visible:=false;
      Position:=poScreenCenter;
    End;
    If grupoItem.ItemIndex = 1 Then
    Begin
       Height := 600;
       btnSalir.Top:=500;
       btnEnviar.Top:=500;
       grpSerie.Visible := false;
       cbCorreo.Visible:=true;
       checkCorreo.Visible:=true;
       PageControl1.TabIndex:=0;
       PageControl1.Top:=200;
       PageControl1.Visible:=true;
       PageControl1.Height:=280;
       cargarGrilla();
       xSql := 'SELECT CODORI,DESORI FROM ASO_CLA_WEB_ORI WHERE CODEST=1 ORDER BY DESORI';
       DM1.cdsQry4.Close;
       DM1.cdsQry4.DataRequest(xSql);
       DM1.cdsQry4.Open;
       cbOrigen.LookupField:='DESORI';
       cbOrigen.LookupTable := DM1.cdsQry4;

       xSql := 'SELECT CODTIPCOR,DESTIPCOR FROM GES_TIP_COR_MAE';
       DM1.cdsQry7.Close;
       DM1.cdsQry7.DataRequest(xSql);
       DM1.cdsQry7.Open;
       cbTipoCorreo.LookupField:='DESTIPCOR';
       cbTipoCorreo.LookupTable := DM1.cdsQry7;
       Position:=poScreenCenter;
    End;
    buscarAsociado(edtASOID.Text);
end;
procedure TFDatDoc.cargarGrilla();
  var xSql:String;
Begin
  xSql := 'SELECT ASOID,CODMOD,NOMASO,CLAGEN,CORREO,''  '' CLAVE,'
       +' '' '' SELECCIONA,''               ''ASODNI,''                   '' DESORI,'
       +'CODORI,TIPCOR,''                       ''DESTCO, '
       +' ''                                '' DESFUE,CODFUE FROM ASO_CLA_WEB WHERE ASOID=''XXXXXX'' ';
       DM1.cdsQry2.Close;
       DM1.cdsQry2.DataRequest(xSql);
       DM1.cdsQry2.Open;
       dbGridCorreo.DataSource := DM1.dsQry2;
       With dbGridCorreo Do
       Begin
          Selected.Clear;
          Selected.Add('CODMOD'#9'10'#9'CÓDIGO MODULAR');
          Selected.Add('NOMASO'#9'40'#9'APELLIDOS Y NOMBRES');
          Selected.Add('DESORI'#9'10'#9'ORIGEN');
          Selected.Add('DESTCO'#9'10'#9'TIPO CORREO');
          Selected.Add('DESFUE'#9'20'#9'FUENTE');
          Selected.Add('CLAVE'#9'10'#9'CLAVE GENERADA');
          Selected.Add('CORREO'#9'40'#9'CORREO');
          ApplySelected;
      End;
End;

procedure TFDatDoc.checkCorreoClick(Sender: TObject);
begin
  edtASOEMAIL.Text:='';
  if checkCorreo.Checked Then
  Begin
    edtASOEMAIL.Visible:=true;
    cbCorreo.Visible:=false;
    edtASOEMAIL.SetFocus;
  End
  else
  Begin
    edtASOEMAIL.Visible:=false;
    cbCorreo.Visible:=true;
  End;
end;

procedure TFDatDoc.btnAgregarClick(Sender: TObject);
  var xSql:String;
  xExiste:String;
  correo:String;
  codigoFuente:String;
  descripcionFuente:String;
begin

   if checkCorreo.Checked Then
   begin
      correo:=Trim(edtASOEMAIL.Text);
      codigoFuente:='05';
      descripcionFuente:='MAESTRO_ASOCIADOS';
      If Trim(edtASOEMAIL.Text) ='' Then
      Begin
        MessageDlg('Ingrese correo', mtInformation, [mbOk], 0);
        Exit;
      End;
   End
   Else
   begin
      correo:=Trim(cbCorreo.Text);
      If Trim(cbCorreo.Text)='' Then
      Begin
        MessageDlg('Seleccione correo', mtInformation, [mbOk], 0);
        Exit;
      End;
      codigoFuente:=DM1.cdsQry20.FieldByName('CODFUEINF').AsString;
      descripcionFuente:=DM1.cdsQry20.FieldByName('FUENTE').AsString;
   end;
   xSql := 'SELECT SF_ASO_VALIDA_DIR_CORREO('+QuotedStr(correo)+') VALOR FROM DUAL';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xSql);
   DM1.cdsQry1.Open;
   If DM1.cdsQry1.FieldByName('VALOR').AsInteger <> 0 Then
   Begin
    MessageDlg('Correo inválido', mtInformation, [mbOk], 0);
    Exit;
   End;

   If Trim(cbOrigen.Text) = '' Then
   begin
    MessageDlg('Seleccione el origen', mtInformation, [mbOk], 0);
    exit;
   End;
   If Trim(cbTipoCorreo.Text)='' Then
   begin
     MessageDlg('Seleccione tipo de correo', mtInformation, [mbOk], 0);
     Exit;
   End;
   
   xExiste:='';
   With DM1.cdsQry2 Do
   Begin
   ControlsDisabled;
   First;
   While Not Eof Do
   Begin
      IF FieldByName('ASOID').AsString=trim(edtASOID.Text) Then
      begin
        xExiste:='1';
      End;
      Next;
    End;
    First;
    EnableControls;
  End;
  if xExiste='' Then
  Begin

  xSql := 'SELECT SF_GENERAR_CLAVE VALOR FROM DUAL';
  DM1.cdsQry1.Close;
  DM1.cdsQry1.DataRequest(xSql);
  DM1.cdsQry1.Open;

  DM1.cdsQry2.Insert;
  DM1.cdsQry2.FieldByName('ASOID').AsString:= edtASOID.Text;
  DM1.cdsQry2.FieldByName('CODMOD').AsString:= edtASOCODMOD.Text;
  DM1.cdsQry2.FieldByName('NOMASO').AsString:= edtASOAPENOMDNI.Text;
  DM1.cdsQry2.FieldByName('CLAVE').AsString:= 'SI';
  DM1.cdsQry2.FieldByName('CORREO').AsString:= correo;
  DM1.cdsQry2.FieldByName('ASODNI').AsString:= edtASODNI.Text;
  DM1.cdsQry2.FieldByName('DESTCO').AsString:= cbTipoCorreo.Text;
  DM1.cdsQry2.FieldByName('TIPCOR').AsString:= DM1.cdsQry7.FieldByName('CODTIPCOR').AsString;
  DM1.cdsQry2.FieldByName('CLAGEN').AsString:= DM1.cdsQry1.FieldByName('VALOR').AsString;
  DM1.cdsQry2.FieldByName('CODORI').AsString:= DM1.cdsQry4.FieldByName('CODORI').AsString;
  DM1.cdsQry2.FieldByName('DESORI').AsString:= cbOrigen.Text;
  DM1.cdsQry2.FieldByName('DESFUE').AsString:= descripcionFuente;
  DM1.cdsQry2.FieldByName('CODFUE').AsString:= codigoFuente;
  DM1.cdsQry2.Post;
  End
  Else
  Begin
     MessageDlg('Asociado ya se encuentra agregado', mtInformation, [mbOk], 0);
  End;
end;

procedure TFDatDoc.btnEliminarClick(Sender: TObject);
var Boton:Integer;
begin
   If DM1.cdsQry2.RecordCount =0 Then exit;
   Boton := Application.MessageBox ('¿Seguro de eliminar registro?','Aviso',MB_YESNO+MB_ICONQUESTION);
   If Boton = ID_YES Then
   Begin
    DM1.cdsQry2.Delete;
   End;
end;
Function TFDatDoc.CalDig(nPass: Real): Real;
Var
   nSuma, ndig: Real;
Begin
   nSuma := StrToFloat(copy(FloatToStr(nPass), 1, 1)) * 1
           +StrToFloat(copy(FloatToStr(nPass), 2, 1)) * 3
           +StrToFloat(copy(FloatToStr(nPass), 3, 1)) * 1
           +StrToFloat(copy(FloatToStr(nPass), 4, 1)) * 3
           +StrToFloat(copy(FloatToStr(nPass), 5, 1)) * 1
           +StrToFloat(copy(FloatToStr(nPass), 6, 1)) * 3;
   ndig := Int(nSuma / 10) * 10 + 10;
   Result := nDig - nSuma;
End;

procedure TFDatDoc.btnEnviarClick(Sender: TObject);
var sigue: boolean;
    nPass:Real;
    nDigVer:Real;
    xSQL:String;
    emailMotivo:EmailSvc.Motivo;
    estado:Integer;
    proceso:boolean;
    URLService:String;
    correoRemitente:String;
    asuntoCorreo:String;
begin
  proceso:=false;
  xEstadoProceso:=true;
  Screen.Cursor:=crHourGlass;
  //URL web service de email
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest('Select VALPAR FROM ASO_CLA_WEB_PARAM WHERE CODPAR=''AA'' ');
  DM1.cdsQry3.Open;
  If DM1.cdsQry3.RecordCount> 0 Then
  Begin
    URLService:= DM1.cdsQry3.FieldByName('VALPAR').AsString;
  End;
  //Correo Remitente
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest('Select VALPAR FROM ASO_CLA_WEB_PARAM WHERE CODPAR=''BB'' ');
  DM1.cdsQry3.Open;
  If DM1.cdsQry3.RecordCount> 0 Then
  Begin
    correoRemitente:= DM1.cdsQry3.FieldByName('VALPAR').AsString;
  End;
  //Asunto correo
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest('Select VALPAR FROM ASO_CLA_WEB_PARAM WHERE CODPAR=''CC'' ');
  DM1.cdsQry3.Open;
  If DM1.cdsQry3.RecordCount> 0 Then
  Begin
    asuntoCorreo:= DM1.cdsQry3.FieldByName('VALPAR').AsString;
  End;

  With DM1.cdsQry2 Do
  Begin
    ControlsDisabled;
    First;
    While Not Eof Do
    Begin
      proceso:=true;
      sigue := True;
      While sigue Do
      Begin
         nPass := 0;
         While (nPass < 100000) Or (nPass > 1000000) Do
         Begin
            nPass := int(Random * 1000000);
         End;

         nDigVer := CalDig(nPass);
         If nDigVer = 10 Then nDigVer := 0;
         nPass := StrToFloat(FloatToStr(nPass) + FloatToStr(nDigVer));

        DM1.cdsQry3.Close;
        DM1.cdsQry3.DataRequest('Select id_passwor  from PASSWORD WHERE id_passwor=''' + FloaTTostr(nPass) + ''' ');
        DM1.cdsQry3.Open;
        If DM1.cdsQry3.RecordCount = 0 Then
        begin
            sigue := False;
            xSQL := 'insert into PASSWORD(PASSWORD, ID_PASSWOR,FEC_GEN,LIBELE,ASOID,ASOCODMOD ) '
                  +'values ('
                  +quotedstr(FieldByName('CLAGEN').AsString)+','
                  +floattostr(nPass)+','
                  +quotedstr(DateToStr(date))+','
                  +quotedstr(FieldByName('ASODNI').AsString)+','
                  +quotedstr(FieldByName('ASOID').AsString)+','
                  +quotedstr(FieldByName('CODMOD').AsString)+')';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        End;
      End;
      emailMotivo:=EnviarCorreo(
        FieldByName('CORREO').AsString,
        FieldByName('NOMASO').AsString,
        FieldByName('CLAGEN').AsString,
        URLService, correoRemitente, asuntoCorreo
        );
      IF emailMotivo.respuesta then
      Begin
        estado:=1;
      End
      Else
      Begin
        xEstadoProceso:=false;
        estado:=0;
      End;
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest('Select ASOID FROM ASO_CLA_WEB WHERE ASOID='+quotedstr(TRIM(FieldByName('ASOID').AsString)));
      DM1.cdsQry3.Open;
      If DM1.cdsQry3.RecordCount = 0 Then
      Begin
         xSQL := 'INSERT INTO ASO_CLA_WEB(ASOID,CODMOD,NOMASO,CLAGEN,CORREO,CODORI,CODEST,DESMOT,FECREG,USUREG,TIPCOR,CODFUE,ASODNI) VALUES('
          +quotedstr(FieldByName('ASOID').AsString)+','
          +quotedstr(FieldByName('CODMOD').AsString)+','
          +quotedstr(FieldByName('NOMASO').AsString)+','
          +quotedstr(FieldByName('CLAGEN').AsString)+','
          +quotedstr(FieldByName('CORREO').AsString)+','
          +quotedstr(FieldByName('CODORI').AsString)+','+InttoStr(estado)+','
          +quotedstr(emailMotivo.mensaje)+','
          +'SYSDATE,'
          +quotedstr(DM1.wUsuario)+','
          +quotedstr(FieldByName('TIPCOR').AsString)+','
          +quotedstr(FieldByName('CODFUE').AsString)+','
          +quotedstr(FieldByName('ASODNI').AsString)+')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      END
      Else
      Begin
         xSQL := 'UPDATE ASO_CLA_WEB SET CODEST='+InttoStr(estado)+','+
        'CLAGEN='+quotedstr(FieldByName('CLAGEN').AsString)+','+
        'FECREG=SYSDATE,'+
        'USUREG='+quotedstr(DM1.wUsuario)+ ',' +
        'TIPCOR='+quotedstr(FieldByName('TIPCOR').AsString)+',' +
        'DESMOT='+quotedstr(emailMotivo.mensaje)+',' +
        'CODFUE='+quotedstr(FieldByName('CODFUE').AsString)+
        ' WHERE ASOID='+quotedstr(FieldByName('ASOID').AsString);
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
      xSQL := 'INSERT INTO ASO_CLA_WEB_HIS(ASOID,CODMOD,NOMASO,CLAGEN,CORREO,CODORI,CODEST,DESMOT,FECREG,USUREG,TIPCOR,CODFUE,ASODNI) VALUES('
          +quotedstr(FieldByName('ASOID').AsString)+','
          +quotedstr(FieldByName('CODMOD').AsString)+','
          +quotedstr(FieldByName('NOMASO').AsString)+','
          +quotedstr(FieldByName('CLAGEN').AsString)+','
          +quotedstr(FieldByName('CORREO').AsString)+','
          +quotedstr(FieldByName('CODORI').AsString)+','+InttoStr(estado)+','
          +quotedstr(emailMotivo.mensaje)+','
          +'SYSDATE,'
          +quotedstr(DM1.wUsuario)+','
          +quotedstr(FieldByName('TIPCOR').AsString)+','
          +quotedstr(FieldByName('CODFUE').AsString)+','
          +quotedstr(FieldByName('ASODNI').AsString)+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      xSQL := 'UPDATE APO201 SET ASOEMAIL='+quotedstr(FieldByName('CORREO').AsString)+' WHERE ASOID='+quotedstr(FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);


      xSQL := ''
      +'INSERT INTO GES_COR_ASO(CODTIPCOR,CORREO,ACTIVO,ASOID,USUARIO,HREG,CODFUEINF,FLG_ACTIVO) '
      +'VALUES('
      +quotedstr(FieldByName('TIPCOR').AsString)+','
      +quotedstr(FieldByName('CORREO').AsString)+',''N'','
      +quotedstr(FieldByName('ASOID').AsString)+','
      +quotedstr(DM1.wUsuario)+',SYSDATE,'
      +quotedstr(FieldByName('CODFUE').AsString)+',''S'') ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      Next;
    End;
    First;
    EnableControls;
  End;
  if proceso Then
  Begin
    if xEstadoProceso Then
    Begin
      MessageDlg('Se ha procesado correctamente el envío', mtInformation, [mbOk], 0);
    End
    Else
    Begin
      MessageDlg('Problemas en el envío de correo', mterror, [mbOk], 0);
    End;
  End;
  Screen.Cursor:=crDefault;
  cargarGrilla();

end;

procedure TFDatDoc.cbOrigenExit(Sender: TObject);
begin
  if DM1.cdsQry4.Locate('DESORI', VarArrayof([cbOrigen.Text]), []) Then
   Begin
      cbOrigen.Text := DM1.cdsQry4.FieldByName('DESORI').Asstring;
   End
   Else
   Begin
      Beep;
      cbOrigen.Text := '';
   End;
end;

Function TFDatDoc.EnviarCorreo(para,asocidado,clave,url,de,asunto:String):Motivo;
  var service:IServicioEmail;
  emailMotivo:EmailSvc.Motivo;
  html:String;
begin
    try
    html:=getHtml();
    html:=StringReplace(html,'[DOCENTE]',asocidado,[rfReplaceAll]);
    html:=StringReplace(html,'[CLAVE]',clave,[rfReplaceAll]);
    service:=GetIServicioEmail(true,url);
    emailMotivo:=service.EnviaEmailDelphi(de,para,asunto,html);
    except
         emailMotivo:=EmailSvc.Motivo.Create();
         emailMotivo.respuesta:=false;
         emailMotivo.mensaje:='No hay conexión con el servicio de correos, comunicarse con helpdesk';
         xEstadoProceso:=false;
    end;
    Result:=emailMotivo;
End;
procedure TFDatDoc.TabConsultaShow(Sender: TObject);
begin
    buscarConsulta();
    btnEnviar.Visible:=false;
end;
procedure TFDatDoc.TabEnviosShow(Sender: TObject);
begin
btnEnviar.Visible:=true;
end;

procedure TFDatDoc.btnBuscarClick(Sender: TObject);
begin
     buscarConsulta();
end;
procedure TFDatDoc.buscarConsulta();
VAR xSQL:String;
Begin
xSql := 'SELECT A.ASOID,A.CODMOD,A.NOMASO,A.CORREO,A.CODORI,A.USUREG,B.DESORI,A.DESMOT,TO_CHAR(A.FECREG,''DD/MM/YYYY HH:MI:SS AM'') FECREG,'+
    'CASE WHEN A.CODEST=1 THEN ''ENVIADO'' ' +
    'ELSE ''FALLIDO'' END  ENVIO,C.DESFUEINF,D.DESTIPCOR ' +
    'FROM ASO_CLA_WEB_HIS A,ASO_CLA_WEB_ORI B,GES_FUE_INF_MAE C,GES_TIP_COR_MAE D  '+
    'WHERE A.CODORI=B.CODORI AND A.CODFUE=C.CODFUEINF AND A.TIPCOR=D.CODTIPCOR AND A.ASOID='+quotedstr(edtASOID.Text)+
    ' ORDER BY A.FECREG DESC';
    DM1.cdsQry5.Close;
    DM1.cdsQry5.DataRequest(xSql);
    DM1.cdsQry5.Open;
    gridHistorial.DataSource := DM1.dsQry5;
    With gridHistorial Do
    Begin
          Selected.Clear;
          Selected.Add('CODMOD'#9'10'#9'CÓDIGO MODULAR');
          Selected.Add('NOMASO'#9'40'#9'APELLIDOS Y NOMBRES');
          Selected.Add('DESORI'#9'10'#9'ORIGEN');
          Selected.Add('DESTIPCOR'#9'10'#9'TIPO CORREO');
          Selected.Add('DESFUEINF'#9'20'#9'FUENTE');
          Selected.Add('CORREO'#9'40'#9'CORREO');
          Selected.Add('DESMOT'#9'40'#9'RESULTADO DE ENVÍO');
          Selected.Add('FECREG'#9'10'#9'FECHA DE ENVÍO');
          Selected.Add('USUREG'#9'10'#9'USUARIO DE ENVÍO');
          Selected.Add('ENVIO'#9'10'#9'ESTADO');
          ApplySelected;
    End;
end;
procedure TFDatDoc.btnBuscarHistoricoClick(Sender: TObject);
begin
   buscarHistorial();
end;
procedure  TFDatDoc.buscarHistorial();
var xSQlF:String;
xSql:String;
begin
    xSQlF:='';
     If cbEstado.ItemIndex=1 Then
     Begin
       xSQlF:=' AND A.CODEST=1';
     End;
     If cbEstado.ItemIndex=2 Then
     Begin
      xSQlF:=' AND A.CODEST=0';
     End;
     xSql := 'SELECT A.ASOID,A.CODMOD,A.NOMASO,A.CORREO,A.CODORI,A.USUREG,B.DESORI,A.DESMOT,TO_CHAR(A.FECREG,''DD/MM/YYYY HH:MI:SS AM'') FECREG,'+
    'CASE WHEN A.CODEST=1 THEN ''ENVIADO'' ' +
    'ELSE ''FALLIDO'' END  ENVIO,C.DESFUEINF,D.DESTIPCOR,A.ASODNI,A.TIPCOR,A.CODFUE ' +
    'FROM ASO_CLA_WEB A,ASO_CLA_WEB_ORI B,GES_FUE_INF_MAE C,GES_TIP_COR_MAE D   '+
    'WHERE A.CODORI=B.CODORI AND A.CODFUE=C.CODFUEINF AND A.TIPCOR=D.CODTIPCOR AND TRUNC(A.FECREG) BETWEEN '+quotedstr(dtFechaInicio.Text)+' AND '+ quotedstr(dtFechaFin.Text)+
    xSQlF+
    ' ORDER BY A.NOMASO';
    DM1.cdsQry6.Close;
    DM1.cdsQry6.DataRequest(xSql);
    DM1.cdsQry6.Open;
    gridHist.DataSource := DM1.dsQry6;
    With gridHist Do
    Begin
          Selected.Clear;
          Selected.Add('CODMOD'#9'10'#9'CÓDIGO MODULAR');
          Selected.Add('NOMASO'#9'40'#9'APELLIDOS Y NOMBRES');
          Selected.Add('DESORI'#9'10'#9'ORIGEN');
          Selected.Add('DESTIPCOR'#9'10'#9'TIPO CORREO');
          Selected.Add('DESFUEINF'#9'20'#9'FUENTE');
          Selected.Add('CORREO'#9'40'#9'CORREO');
          Selected.Add('DESMOT'#9'40'#9'RESULTADO DE ENVÍO');
          Selected.Add('FECREG'#9'10'#9'FECHA DE ENVÍO');
          Selected.Add('USUREG'#9'10'#9'USUARIO DE ENVÍO');
          Selected.Add('ENVIO'#9'10'#9'ESTADO');
          ApplySelected;
    End;
    btnReenviar.Visible:=false;
    If cbEstado.ItemIndex=2 Then
    begin
        btnReenviar.Visible:=true;
    End;
end;

procedure TFDatDoc.TabSheet1Show(Sender: TObject);
begin
  cbEstado.ItemIndex:=0;
  btnEnviar.Visible:=FALSE;
  btnReenviar.Visible:=false;
  dtFechaInicio.Date:= DM1.FechaSys;
  dtFechaFin.Date:= DM1.FechaSys;
  buscarHistorial();
end;

procedure TFDatDoc.btnReenviarClick(Sender: TObject);
var clave:String;
proceso:boolean;
sigue:boolean;
xSql:String;
nPass:Real;
nDigVer:Real;
emailMotivo:EmailSvc.Motivo;
estado:Integer;
URLService:String;
correoRemitente:String;
asuntoCorreo:String;
begin
  Screen.Cursor:=crHourGlass;
  proceso:=false;
  xEstadoProceso:=true;
  //URL web service de email
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest('Select VALPAR FROM ASO_CLA_WEB_PARAM WHERE CODPAR=''AA'' ');
  DM1.cdsQry3.Open;
  If DM1.cdsQry3.RecordCount> 0 Then
  Begin
    URLService:= DM1.cdsQry3.FieldByName('VALPAR').AsString;
  End;
  //Correo Remitente
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest('Select VALPAR FROM ASO_CLA_WEB_PARAM WHERE CODPAR=''BB'' ');
  DM1.cdsQry3.Open;
  If DM1.cdsQry3.RecordCount> 0 Then
  Begin
    correoRemitente:= DM1.cdsQry3.FieldByName('VALPAR').AsString;
  End;
  //Asunto correo
  DM1.cdsQry3.Close;
  DM1.cdsQry3.DataRequest('Select VALPAR FROM ASO_CLA_WEB_PARAM WHERE CODPAR=''CC'' ');
  DM1.cdsQry3.Open;
  If DM1.cdsQry3.RecordCount> 0 Then
  Begin
    asuntoCorreo:= DM1.cdsQry3.FieldByName('VALPAR').AsString;
  End;

  With DM1.cdsQry6 Do
  Begin
    ControlsDisabled;
    First;
    While Not Eof Do
    Begin
      proceso:=true;
      sigue := True;

      xSql := 'SELECT SF_GENERAR_CLAVE VALOR FROM DUAL';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xSql);
      DM1.cdsQry1.Open;
      clave:=DM1.cdsQry1.FieldByName('VALOR').AsString;
      While sigue Do
      Begin
         nPass := 0;
         While (nPass < 100000) Or (nPass > 1000000) Do
         Begin
            nPass := int(Random * 1000000);
         End;

         nDigVer := CalDig(nPass);
         If nDigVer = 10 Then nDigVer := 0;
         nPass := StrToFloat(FloatToStr(nPass) + FloatToStr(nDigVer));

        DM1.cdsQry3.Close;
        DM1.cdsQry3.DataRequest('Select id_passwor  from PASSWORD WHERE id_passwor=''' + FloaTTostr(nPass) + ''' ');
        DM1.cdsQry3.Open;
        If DM1.cdsQry3.RecordCount = 0 Then
        begin
            sigue := False;
            xSQL := 'insert into PASSWORD(PASSWORD, ID_PASSWOR,FEC_GEN,LIBELE,ASOID,ASOCODMOD ) '
                  +'values ('
                  +quotedstr(clave)+','
                  +floattostr(nPass)+','
                  +quotedstr(DateToStr(date))+','
                  +quotedstr(FieldByName('ASODNI').AsString)+','
                  +quotedstr(FieldByName('ASOID').AsString)+','
                  +quotedstr(FieldByName('CODMOD').AsString)+')';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        End;
      End;
      emailMotivo:=EnviarCorreo(
        FieldByName('CORREO').AsString,
        FieldByName('NOMASO').AsString,
        clave,URLService,correoRemitente,asuntoCorreo);
      IF emailMotivo.respuesta then
      Begin
        estado:=1;
      End
      Else
      Begin
        estado:=0;
        xEstadoProceso:=false;
      End;
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest('Select ASOID FROM ASO_CLA_WEB WHERE ASOID='+quotedstr(TRIM(FieldByName('ASOID').AsString)));
      DM1.cdsQry3.Open;
      If DM1.cdsQry3.RecordCount = 0 Then
      Begin
         xSQL := 'INSERT INTO ASO_CLA_WEB(ASOID,CODMOD,NOMASO,CLAGEN,CORREO,CODORI,CODEST,DESMOT,FECREG,USUREG,TIPCOR,CODFUE,ASODNI) VALUES('
          +quotedstr(FieldByName('ASOID').AsString)+','
          +quotedstr(FieldByName('CODMOD').AsString)+','
          +quotedstr(FieldByName('NOMASO').AsString)+','
          +quotedstr(clave)+','
          +quotedstr(FieldByName('CORREO').AsString)+','
          +quotedstr(FieldByName('CODORI').AsString)+','+InttoStr(estado)+','
          +quotedstr(emailMotivo.mensaje)+','
          +'SYSDATE,'
          +quotedstr(DM1.wUsuario)+','
          +quotedstr(FieldByName('TIPCOR').AsString)+','
          +quotedstr(FieldByName('CODFUE').AsString)+','
          +quotedstr(FieldByName('ASODNI').AsString)+')';
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      END
      Else
      Begin
         xSQL := 'UPDATE ASO_CLA_WEB SET CODEST='+InttoStr(estado)+','+
        'CLAGEN='+quotedstr(clave)+','+
        'FECREG=SYSDATE,'+
        'USUREG='+quotedstr(DM1.wUsuario)+ ',' +
        'TIPCOR='+quotedstr(FieldByName('TIPCOR').AsString)+',' +
        'DESMOT='+quotedstr(emailMotivo.mensaje)+',' +
        'CODFUE='+quotedstr(FieldByName('CODFUE').AsString)+
        ' WHERE ASOID='+quotedstr(FieldByName('ASOID').AsString);
        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      End;
      xSQL := 'INSERT INTO ASO_CLA_WEB_HIS(ASOID,CODMOD,NOMASO,CLAGEN,CORREO,CODORI,CODEST,DESMOT,FECREG,USUREG,TIPCOR,CODFUE,ASODNI) VALUES('
          +quotedstr(FieldByName('ASOID').AsString)+','
          +quotedstr(FieldByName('CODMOD').AsString)+','
          +quotedstr(FieldByName('NOMASO').AsString)+','
          +quotedstr(clave)+','
          +quotedstr(FieldByName('CORREO').AsString)+','
          +quotedstr(FieldByName('CODORI').AsString)+','+InttoStr(estado)+','
          +quotedstr(emailMotivo.mensaje)+','
          +'SYSDATE,'
          +quotedstr(DM1.wUsuario)+','
          +quotedstr(FieldByName('TIPCOR').AsString)+','
          +quotedstr(FieldByName('CODFUE').AsString)+','
          +quotedstr(FieldByName('ASODNI').AsString)+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      xSQL := 'UPDATE APO201 SET ASOEMAIL='+quotedstr(FieldByName('CORREO').AsString)+' WHERE ASOID='+quotedstr(FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);


      xSQL := ''
      +'INSERT INTO GES_COR_ASO(CODTIPCOR,CORREO,ACTIVO,ASOID,USUARIO,HREG,CODFUEINF,FLG_ACTIVO) '
      +'VALUES('
      +quotedstr(FieldByName('TIPCOR').AsString)+','
      +quotedstr(FieldByName('CORREO').AsString)+',''N'','
      +quotedstr(FieldByName('ASOID').AsString)+','
      +quotedstr(DM1.wUsuario)+',SYSDATE,'
      +quotedstr(FieldByName('CODFUE').AsString)+',''S'') ';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      Next;
    End;
    First;
    EnableControls;
  End;
  if proceso Then
  Begin
    if xEstadoProceso Then
    Begin
      MessageDlg('Se ha procesado correctamente el envío', mtInformation, [mbOk], 0);
    End
    Else
    Begin
      MessageDlg('Problemas en el envío de correo', mterror, [mbOk], 0);
    End;
  End;
  Screen.Cursor:=crDefault;
  buscarHistorial();
end;

procedure TFDatDoc.cbEstadoChange(Sender: TObject);
begin
buscarHistorial();
end;

procedure TFDatDoc.dtFechaInicioChange(Sender: TObject);
begin
   dtFechaFin.MinDate:=dtFechaInicio.Date;
   buscarHistorial();
end;

procedure TFDatDoc.dtFechaFinChange(Sender: TObject);
begin
buscarHistorial();
end;

Function TFDatDoc.getHtml():String;
var  html:String;
Begin
html:=''+
'<table bgcolor="#E5E5E5" border="0" cellpadding="0" cellspacing="0" width="100%">                                                                               '+
'<tr>                                                                                                                                                            '+
'<td align="center">                                                                                                                                             '+
'	<div align="center">                                                                                                                                           '+
'		<table bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" width="670">                                                                             '+
'			<tr>                                                                                                                                                       '+
'				<td align="center">                                                                                                                                      '+
'					<div align="center">                                                                                                                                   '+
'						<table border="0" cellpadding="0" cellspacing="0"  width="93%">                                                                                      '+
'							<tr><td><img src="http://web.derrama.org.pe/dm-movil/img/logderrama.png" height="60" width="350" alt="DERRAMA MAGISTERIAL" border="0"></td></tr>       '+
'						</table>                                                                                                                                             '+
'					</div>                                                                                                                                                 '+
'				</td>                                                                                                                                                    '+
'			</tr>                                                                                                                                                      '+
'			<tr>                                                                                                                                                       '+
'				<td align="center">                                                                                                                                      '+
'					<div align="center">                                                                                                                                   '+
'						<table border="0" cellpadding="0" cellspacing="0" width="90%">                                                                                       '+
'							<tr>                                                                                                                                               '+
'								<td height="20"></td>                                                                                                                            '+
'							</tr>                                                                                                                                              '+
'							<tr>                                                                                                                                               '+
'								<td>                                                                                                                                             '+
'									<p align="justify" style="color:#666666; font-size:14px; font-family:Helvetica,Arial,sans-serif">                                              '+
'									Estimado profesor(a)  <b>[DOCENTE]</b></p>                                                                                                     '+
'									<br/>                                                                                                                                          '+
'								</td>                                                                                                                                            '+
'							</tr>                                                                                                                                              '+
'							<tr>                                                                                                                                               '+
'								<td align="justify">                                                                                                                             '+
'									<span style="color: rgb(102, 102, 102); font-size: 14px; font-family: Helvetica, Arial, sans-serif, serif, EmojiFont;">                        '+
'									Derrama Magisterial te felicita por acceder a un amplio y completo programa de beneficios y servicios dise&#241;ados                           '+
'									especialmente para ti. Te invitamos a que revises tu Estado de Cuenta Individual de Aportes desde                                              '+
'									nuestra <a href="https://web.derrama.org.pe/CuentaAsociados/Login2.aspx?ReturnUrl=%2fCuentaAsociados">web</a>,ingresando tu DNI y la siguiente Clave de Acceso:                                         '+
'									<br/><br/>                                                                                                                                     '+
'									<center>                                                                                                                                       '+
'									<table border="1" width="100px" height="40px" bordercolor="#2E9AFE" style="border: 1px solid #2E9AFE;border-collapse: collapse;">              '+
'										<tr>                                                                                                                                         '+
'											<td>                                                                                                                                       '+
'												<center>[CLAVE]</center>                                                                                                                 '+
'											</td>                                                                                                                                      '+
'										</tr>                                                                                                                                        '+
'									</table>                                                                                                                                       '+
'									</center>                                                                                                                                      '+
'									<br/>                                                                                                                                          '+
'									Tambi&#233;n podr&#225;s revisar tu Estado de Cuenta de Cr&#233;ditos, tus datos personales registrados y un simulador de Cr&#233;ditos.<br/>  '+
'									Para cualquier consulta comun&#237;cate a nuestras l&#237;neas telef&#243;nicas:<br/><br/>                                                     '+
'									<center><strong>0 800 77647 / (01) 219 0219 / (01) 715 1293</strong></center><br/>                                                             '+
'									Gracias por tu confianza.<br/><br/>                                                                                                            '+
'									<strong>UNIDAD DE PREVISI&#211;N SOCIAL</strong>                                                                                               '+
'									</span>                                                                                                                                        '+
'								</td>                                                                                                                                            '+
'							</tr>                                                                                                                                              '+
'						</table>                                                                                                                                             '+
'					</div>                                                                                                                                                 '+
'				</td>                                                                                                                                                    '+
'			</tr>                                                                                                                                                      '+
'			<tr>                                                                                                                                                       '+
'				<td height="40"></td>                                                                                                                                    '+
'			</tr>                                                                                                                                                      '+
'		</table>                                                                                                                                                     '+
'	</div>                                                                                                                                                         '+
'</td>                                                                                                                                                           '+
'</tr>                                                                                                                                                           '+
'</table>                                                                                                                                                        ';
Result := html;
End;
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
End.

