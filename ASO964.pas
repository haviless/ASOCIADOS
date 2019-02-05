// Inicio Uso Estándares:	01/08/2011
// Unidad		            :	ASO964.pas
// Formulario		        :	Fautdes
// Fecha de Creación	  : 2009	
// Autor			          :	Daniel Fernández
// Objetivo		          : Autorizar las CADAPS - Cartas de Autorización de Descuento de Aportes

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPP_201003_ASO Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077 Modificaciones por Fallecimiento del asociado
// HPP_201004_ASO por IREVILLA - Memorándum 374-2009-DM-EPS - SAR2009-0899 - DAD-IR-2009-0165
// HPP_201005_ASO por JCC
// HPC_201301_ASO
// SPP_201303_ASO         : El pase a producción se solicita a partir del HPC_201301_ASO
// HPC_201303_ASO         :
// SPP_201304_ASO         : El pase se realiza de acuerdo a lo indicado en el documento HPC_201303_ASO
// HPC_201304_ASO         : Autorización cadaps solo se permite al nivel 3 ó 4
// SPP_201305_ASO         : Se realiza el pase a producción a partir del HPC_201304_ASO
// HPC_201305_ASO         : La autorizacion se permite a cualquier nivel pero la desautorizacion solo a nivel 3 ó 4 
// SPP_201306_ASO         : Se realiza el pase a producción a partir del HPC_201305_ASO
// SPP_201403_ASO         : Se controla que la fechade autorización de descuento de aportes no pueda ser mayor a la fecha de hoy.
// SPP_201403_ASO         : Se realiza el pase a producción sobre el HPC_201402_ASO.
// HPC_201607_ASO: Se añade motivo de autorización de descuento de aportes
// HPC_201609_ASO: Se cambia client del motivo de autorización de descuento de aportes, por uno recien creado, el actual crea inconsistencia.
//                 No deja ingresar autorización de descuento de aportes, si es que el sistema lo solicita por segunda vez.
// HPC_201702_ASO         : Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
// HPC_201705_ASO: Se añade boton para la impresión de los reportes "formato de autorización de descuento de aportes" y
//                 "declaración de asociados".
// HPC_201711_ASO : Firma 2da.Vez

unit ASO964;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, wwdblook, Wwdbdlg, Buttons, ppEndUsr,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands,
  ppCache, Mask,
  // Inicio: SPP_201303_ASO
  wwdbdatetimepicker, ComCtrls, DB;
  // Fin: SPP_201303_ASO

type
  TFautdes = class(TForm)
    gbgrupo: TGroupBox;
    dblcdmotdesapo: TwwDBLookupComboDlg;
    Panel1: TPanel;
    edtdesaut: TEdit;
    btnactualiza: TBitBtn;
    btncerrar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtusuaut: TEdit;
    // Inicio: SPP_201303_ASO
    edtfecregaut: TEdit;
    // Fin: SPP_201303_ASO
    edtofiaut: TEdit;
    Label4: TLabel;
    Bevel1: TBevel;
    BitAutDes: TBitBtn;
    Label5: TLabel;
    DbLUniPro: TwwDBLookupComboDlg;
    dbeUproDes: TMaskEdit;
    Label6: TLabel;
    DbLUniPag: TwwDBLookupComboDlg;
    dbeUpagDes: TMaskEdit;
    Label7: TLabel;
    DbLUses: TwwDBLookupComboDlg;
    dbeUses: TMaskEdit;
    // Inicio: SPP_201303_ASO
    Label8: TLabel;
    dbdtfecaut: TwwDBDateTimePicker;
    // Inicio: HPC_201607_ASO
    // Componentes para el control del motivo de autorización de descuento de aportes
    Label9: TLabel;
    dblcdmotCADAPS: TwwDBLookupComboDlg;
    Panel2: TPanel;
    edtdesmotCADAPS: TEdit;
    // Inicio: HPC_201705_ASO
    // Se añade boton para la impresión de los formatos "autorización de descuento" y "declaración de asociados".
    BitPrint: TBitBtn;
    // Fin: HPC_201705_ASO
    // Fin: HPC_201607_ASO

    // Fin: SPP_201303_ASO
    procedure FormActivate(Sender: TObject);
    procedure btnactualizaClick(Sender: TObject);
    procedure btncerrarClick(Sender: TObject);
    procedure dblcdmotdesapoChange(Sender: TObject);
    procedure BitAutDesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dblcdmotdesapoExit(Sender: TObject);
    procedure dbdtfecautExit(Sender: TObject); // SPP_201403_ASO
    // Inicio: HPC_201607_ASO
    // Se añade seleccionar motivo de autorización de descuento de aportes
    procedure dblcdmotCADAPSExit(Sender: TObject);
    // Inicio: HPC_201705_ASO
    // Declaración del procedimiento para impresión de formatos: "autorización de descuento" y "declaración de asociados".
    procedure BitPrintClick(Sender: TObject);
    // Fin: HPC_201705_ASO
    // Fin: HPC_201607_ASO
  private
    { Private declarations }
    function chkdesdesapo(xasoid:String):Boolean;
  public
    { Public declarations }
    //Inicio HPC_201702_ASO
    //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
    sConsulta: string;
    //Final HPC_201702_ASO
    // Inicio: SPP_201304_ASO
    sFirmaCarta: string;
    // Fin: SPP_201304_ASO
  end;

var
  Fautdes: TFautdes;

implementation

uses ASODM, ASO260,
// Inicio: HPC_201705_ASO
// Se añade la unidad "ASO001" donde se encuentran los reportes añadidos.
// ASO969; // SPP_201303_ASO
ASO969, ASO001; // SPP_201303_ASO
// Fin: HPC_201705_ASO

{$R *.dfm}

procedure TFautdes.FormActivate(Sender: TObject);
Var xSql, xasoid:String;
begin
  // Inicio: SPP_201303_ASO
  xSql := 'SELECT CODMOTDEST, DESMOTDES FROM ASO_MOT_DES';
  DM1.cdsReclamoMotiv.Close;
  DM1.cdsReclamoMotiv.DataRequest(xSql);
  DM1.cdsReclamoMotiv.Open;
  dblcdmotdesapo.Selected.Clear;
  dblcdmotdesapo.Selected.Add('CODMOTDEST'#9'5'#9'Código'#9#9);
  dblcdmotdesapo.Selected.Add('DESMOTDES'#9'30'#9'Descripción'#9#9);
  // Inicio: HPC_201607_ASO
  // Se añade la selección del motivo de autorización de descuento de aportes
  xSql := 'SELECT CODMOTAUTCADAPS, DESMOTAUTCADAPS  FROM ASO_MOT_AUT_CADAPS ORDER BY CODMOTAUTCADAPS';
  // Inicio: HPC_201609_ASO
  // Se modifica el clientdataset de la tabla motivo de autorización descuento CADAPS
  // DM1.cdsTipDesem.Close;
  // DM1.cdsTipDesem.DataRequest(xSql);
  // DM1.cdsTipDesem.Open;
  DM1.cdsAutCADAPS.Close;
  DM1.cdsAutCADAPS.DataRequest(xSql);
  DM1.cdsAutCADAPS.Open;
  // Fin: HPC_201609_ASO
  dblcdmotCADAPS.Selected.Clear;
  dblcdmotCADAPS.Selected.Add('CODMOTAUTCADAPS'#9'5'#9'Código'#9#9);
  dblcdmotCADAPS.Selected.Add('DESMOTAUTCADAPS'#9'30'#9'Descripción'#9#9);
  // Fin: HPC_201607_ASO

  xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;

  DbLUniPro.Text :=FMantAsociado.DbLUniPro.Text;
  DbLUniPag.Text :=FMantAsociado.DbLUniPag.Text;
  DbLUses.Text   :=FMantAsociado.DbLUses.Text;
  dbeUproDes.Text:=FMantAsociado.dbeUproDes.Text;
  dbeUpagDes.Text:=FMantAsociado.dbeUpagDes.Text;
  dbeUses.Text   :=FMantAsociado.dbeUses.Text;

  If  DM1.xautdes='A' Then
     Begin
       // Inicio: HPC_201607_ASO
       // Se añade campo CODMOTAUTCADAPS
       // xSql := 'SELECT A.FECAUTDESAPO, A.FECREGAUTDESAPO, A.USUREGAUTDESAPO, A.OFIREGAUTDESAPO, A.CODMOTDESTAPO, B.OFDESNOM FROM '+DM1.sAPO201+' A, APO110 B WHERE ASOID = '+QuotedStr(xAsoId)
       xSql := 'SELECT A.FECAUTDESAPO, A.FECREGAUTDESAPO, A.USUREGAUTDESAPO, A.OFIREGAUTDESAPO, A.CODMOTDESTAPO, B.OFDESNOM, A.CODMOTAUTCADAPS FROM '+DM1.sAPO201+' A, APO110 B WHERE ASOID = '+QuotedStr(xAsoId)
       // Fin: HPC_201607_ASO
       +' AND A.OFIREGAUTDESAPO = B.OFDESID(+)';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Open;
       edtusuaut.Text := DM1.cdsQry.FieldByName('USUREGAUTDESAPO').AsString;
       dbdtfecaut.DateTime := DM1.cdsQry.FieldByName('FECAUTDESAPO').AsDateTime;
       // Inicio: HPC_201607_ASO 
       // Se recupera los valores de la base de datos para colocarlos a las variables del sistema
       dblcdmotCADAPS.Text := DM1.cdsQry.FieldByName('CODMOTAUTCADAPS').AsString;
       edtdesmotCADAPS.Text := dm1.RecuperaDatos('ASO_MOT_AUT_CADAPS', 'CODMOTAUTCADAPS', dblcdmotCADAPS.Text , 'DESMOTAUTCADAPS');
       // Fin: HPC_201607_ASO 
       edtfecregaut.Text := DM1.cdsQry.FieldByName('FECREGAUTDESAPO').AsString;
       edtofiaut.Text := DM1.cdsQry.FieldByName('OFDESNOM').AsString;
       dblcdmotdesapo.Text := DM1.cdsQry.FieldByName('CODMOTDESTAPO').AsString;
    End
  Else
    Begin
       // Inicio: HPC_201607_ASO
       // Se añade el campo CODMOTAUTCADAPS
       // xSql := 'SELECT A.FECAUTDESCUO, A.FECREGAUTDESAPO, A.USUREGAUTDESCUO, A.OFIREGAUTDESCUO, A.CODMOTDESTCUO, B.OFDESNOM FROM '+DM1.sAPO201+' A, APO110 B WHERE ASOID = '+QuotedStr(xAsoId)
       xSql := 'SELECT A.FECAUTDESCUO, A.FECREGAUTDESAPO, A.USUREGAUTDESCUO, A.OFIREGAUTDESCUO, A.CODMOTDESTCUO, B.OFDESNOM, A.CODMOTAUTCADAPS FROM '+DM1.sAPO201+' A, APO110 B WHERE ASOID = '+QuotedStr(xAsoId)
       // Fin: HPC_201607_ASO
       +' AND A.OFIREGAUTDESCUO = B.OFDESID(+)';
       DM1.cdsQry.Close;
       DM1.cdsQry.DataRequest(xSQL);
       DM1.cdsQry.Open;
       edtusuaut.Text := DM1.cdsQry.FieldByName('USUREGAUTDESCUO').AsString;
       dbdtfecaut.DateTime := DM1.cdsQry.FieldByName('FECAUTDESCUO').AsDateTime;
       // Inicio: HPC_201607_ASO
       // Se recupera el valor del CODMOTAUTCADAPS de la base de datos
       dblcdmotCADAPS.Text := DM1.cdsQry.FieldByName('CODMOTAUTCADAPS').AsString;
       // Fin: HPC_201607_ASO

       edtfecregaut.Text := DM1.cdsQry.FieldByName('FECREGAUTDESAPO').AsString;
       edtofiaut.Text := DM1.cdsQry.FieldByName('OFDESNOM').AsString;
       dblcdmotdesapo.Text := DM1.cdsQry.FieldByName('CODMOTDESTCUO').AsString;
    End;

  IF ((DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'DO')
    OR (DM1.cdsAso.fieldbyname('ASOTIPID').AsString = 'VO')) THEN
  BEGIN
    IF (DM1.cdsAso.FieldByName('FALLECIDO').AsString <> 'S') THEN
    BEGIN
      // Inicio: HPC_201609_ASO
      // Se valida que tambien habilite ingresar autorización de descuento de aportes, en el caso que se pida por segunda vez.  
      // IF (DM1.CrgDescrip('ASOID=' + QuotedStr(xAsoId), DM1.sAPO201, 'AUTDESAPO') = 'S') THEN
      IF (DM1.CrgDescrip('ASOID=' + QuotedStr(xAsoId), DM1.sAPO201, 'AUTDESAPO') = 'S') And (FMantAsociado.sFirmaCarta <> 'S') THEN
      // Fin: HPC_201609_ASO
      begin
        dbdtfecaut.Enabled := false;
       // Inicio: HPC_201607_ASO
       // Se controla la edición del componente del codifo de autorización de descuento de aportes
        dblcdmotCADAPS.Enabled := False;
       // Fin: HPC_201607_ASO
        Label4.Visible := False;
        dblcdmotdesapo.Visible := False;
        Panel1.Visible := False;
        BitAutDes.Enabled := False;
        //la desautorización sólo es para el Nivel 3 o superior
        If (Copy(DM1.CrgArea(DM1.wUsuario),6,2) >= '03')
          and (chkdesdesapo(xAsoId) = True) Then
          btnactualiza.Enabled := True
        else
          btnactualiza.Enabled := False;
      end
      else
      begin
        dbdtfecaut.Enabled := True;
       // Inicio: HPC_201607_ASO
       // Se controla la edición del componente del codifo de autorización de descuento de aportes
        dblcdmotCADAPS.Enabled := True;        
       // Fin: HPC_201607_ASO
        Label4.Visible := True;
        if Trim(dblcdmotdesapo.Text) = '' then
        begin
          Label4.Visible := False;
          dblcdmotdesapo.Visible := False;
          Panel1.Visible := False;
        end
        else
        begin
          Label4.Visible := True;
          dblcdmotdesapo.Visible := True;
          Panel1.Visible := True;
        end;
        // Inicio: SPP_201306_ASO
        // Inicio: SPP_201305_ASO
        BitAutDes.Enabled := True;
        If Copy(DM1.CrgArea(DM1.wUsuario),6,2) >= '03' Then
          btnactualiza.Enabled := True
        else
          btnactualiza.Enabled := False;
        // Fin: SPP_201305_ASO
        btnactualiza.Enabled := False;
        // Fin: SPP_201306_ASO
      end;
    END
    ELSE
    BEGIN
      IF (DM1.CrgDescrip('ASOID=' + QuotedStr(xAsoId), DM1.sAPO201, 'AUTDESAPO') = 'S') THEN
      begin
        Label4.Visible := False;
        dblcdmotdesapo.Visible := False;
        Panel1.Visible := False;
      end
      else
      begin
        Label4.Visible := True;
        dblcdmotdesapo.Visible := True;
        Panel1.Visible := True;
      end;
      dbdtfecaut.Enabled := false;
      BitAutDes.Enabled := False;
      btnactualiza.Enabled := False;
    END;
  END
  ELSE
  BEGIN
    dbdtfecaut.Enabled := false;
    BitAutDes.Enabled := False;
    btnactualiza.Enabled := False;
  END;

  // Inicio: SPP_201305_ASO
  // Inicio: SPP_201304_ASO
  if (sFirmaCarta = 'S') AND (Copy(DM1.CrgArea(DM1.wUsuario),6,2) >= '03') then
  begin
    BitAutDes.Enabled := true;
  end;
  // Fin: SPP_201304_ASO
  // Fin: SPP_201305_ASO
  {If Copy(DM1.CrgArea(DM1.wUsuario),6,2) <> '03' Then
  Begin
    Panel1.Visible := False;
    Fautdes.Caption := 'Usuario que marco la autorización de descuento';
    Label4.Visible := False;
    dblcdmotdesapo.Visible := False;
    btnactualiza.Visible := False;
  End
  Else
  Begin
    Panel1.Visible := True;
    btnactualiza.Visible := True;
    Label4.Visible := True;
    dblcdmotdesapo.Visible := True;
  End;

  IF DM1.cdsAso.FieldByName('FALLECIDO').AsString = 'S' THEN
  BEGIN
    DbLUniPro.Enabled := false;
    DbLUniPag.Enabled := false;
    DbLUses.Enabled := false;
    dblcdmotdesapo.Enabled := false;
    BitAutDes.Enabled := false;
    btnactualiza.Enabled := false;
  END;

// verifica que las condiciones para desactualizar estén dadas
// los mensajes de aviso se encuentran en la rutina: chkdesdesapo
   if (chkdesdesapo(xAsoId) = False) Then
   BEGIN
      DbLUniPro.Enabled := false;
      DbLUniPag.Enabled := false;
      DbLUses.Enabled := false;
      dblcdmotdesapo.Enabled := false;
      btnactualiza.Enabled := false;
   END;}
  // Fin: SPP_201303_ASO
  //Inicio HPC_201702_ASO
  //Adicionar funcionalidades de consulta y control de errores de servicio web RENIEC
  if sConsulta = 'S' then
    Begin
       gbgrupo.Enabled := False;
       dblcdmotdesapo.Enabled := False;
       Panel1.Enabled := False;
    end
  else
    Begin
       gbgrupo.Enabled := True;
    End;
  //Final HPC_201702_ASO
end;

Procedure TFautdes.btnactualizaClick(Sender: TObject);
Var Boton:Integer;
  xSQL, xCodReg, xAsoId,xmsg1,xmsg2:String;
Begin
  // Inicio: SPP_201303_ASO
  xAsoId:=DM1.cdsAso.fieldbyname('ASOID').AsString;
  IF DM1.xautdes='A' then
     Begin
       xmsg1:='Por favor seleccione el motivo por el cual el asociado'+#13+'desautoriza su descuento de aporte';
       xmsg2:='Se ha registrado la desautorización de descuento de aportes';
     End
  Else
     Begin
       xmsg1:='Por favor seleccione el motivo por el cual el asociado'+#13+'desautoriza su descuento de cuotas';
       xmsg2:='Se ha registrado la desautorización de descuento de cuotas';
     End;
  
  If Trim(dblcdmotdesapo.Text) = '' Then
   Begin
     MessageDlg(xmsg1, mtConfirmation, [mbOk], 0);
     //dblcdmotdesapo.SetFocus;
     //Exit;
   End;
  
  TRY
    FConfirmaDesautDcto := TFConfirmaDesautDcto.Create(Self);
    FConfirmaDesautDcto.ShowModal;
    if FConfirmaDesautDcto.CODMOTDEST <> '' then
    begin
      dblcdmotdesapo.Text := FConfirmaDesautDcto.CODMOTDEST;
    end
    else
    begin
      exit;
    end;
  FINALLY
    FConfirmaDesautDcto.Free;
  END;
  
  Label4.Visible := True;
  dblcdmotdesapo.Visible := True;
  Panel1.Visible := True;

  // Inicio: HPC_201607_ASO
  // Se añade el campo de motivo de la autorización de descuento de aportes
  // Al momento de actualizar la carta CADAPS
  IF DM1.xautdes='A' then
     Begin
       xSQL:='UPDATE '+DM1.sAPO201+' SET AUTDESAPO=NULL, FECREGAUTDESAPO = NULL, FECAUTDESAPO=NULL, USUREGAUTDESAPO=NULL, OFIREGAUTDESAPO=NULL, CODMODAUTDESAPO=NULL, CODMOTAUTCADAPS = NULL, CODMOTDESTAPO = '+QuotedStr(dblcdmotdesapo.Text)+' WHERE ASOID = '+QuotedStr(xAsoId);
     End
  Else
     Begin
       xSQL:='UPDATE '+DM1.sAPO201+' SET AUTDESCUO=NULL, FECAUTDESCUO=NULL, USUREGAUTDESCUO=NULL, OFIREGAUTDESCUO=NULL, CODMODAUTDESCUO=NULL, CODMOTAUTCADAPS = NULL, CODMOTDESTCUO = '+QuotedStr(dblcdmotdesapo.Text)+' WHERE ASOID = '+QuotedStr(xAsoId);
     End;
  // Fin: HPC_201607_ASO

  If DM1.xautdes='A' then
     Boton := Application.MessageBox ('¿Desea quitar la autorización de descuento de aportes?', 'Desautorización de descuento de aportes',MB_YESNO+MB_ICONQUESTION)
  Else
     Boton := Application.MessageBox ('¿Desea quitar la autorización de descuento de cuotas?', 'Desautorización de descuento de cuotas',MB_YESNO+MB_ICONQUESTION);

  If Boton = ID_YES Then
  Begin
    Screen.Cursor:=crHourGlass;
    xCodReg := DM1.CodReg;
    DM1.Registro_Aud(xAsoId,'0',xCodReg);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    DM1.Registro_Aud(xAsoId,'1',xCodReg);
    xSQL:='UPDATE APOSINCARTA SET AUTODESC='+QuotedStr('S')+' WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
    DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    Screen.Cursor:=crDefault;
    MessageDlg(xmsg2, mtConfirmation, [mbOk], 0);
  End;
  Fautdes.Close;
 // Fin: SPP_201303_ASO
End;

procedure TFautdes.btncerrarClick(Sender: TObject);
begin
   Fautdes.Close;
end;

procedure TFautdes.dblcdmotdesapoChange(Sender: TObject);
begin
  If DM1.cdsReclamoMotiv.Locate('CODMOTDEST',dblcdmotdesapo.Text,[]) then
    edtdesaut.Text := DM1.cdsReclamoMotiv.FieldByName('DESMOTDES').asstring
  Else
    edtdesaut.Text := '';
end;

procedure TFautdes.BitAutDesClick(Sender: TObject);
var
   Boton : Integer;
   xSQL  : String;
   xCodReg: STRING; // SPP_201303_ASO
begin
  // Inicio: SPP_201303_ASO
  // Inicio: HPC_201607_ASO
  // Se valida la selección del motivo CADAPS
  If Trim(dblcdmotCADAPS.Text) = '' then
  Begin
    MessageDlg('Ingrese el motivo de autorización CADAPS', mtConfirmation, [mbOk], 0);
    dblcdmotCADAPS.SetFocus;
    Exit;
  End;
  // Fin: HPC_201607_ASO

  if Trim(dbdtfecaut.Text) = '' then
  begin
    MessageDlg('Ingrese la fecha en la cual el asociado firmó la carta de autorización CADAP', mtConfirmation, [mbOk], 0);
    dbdtfecaut.SetFocus;
    Exit;
  end;
  
  // Inicio: HPC_201705_ASO
  // Se añade una pregunta adicional antes de autorizar el descuento de aportes
  If MessageDlg('¿Se ha firmado el formato de autorización de descuento y la declaración del asociado?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
     Exit;
  // Fin: HPC_201705_ASO
  Boton := Application.MessageBox ('¿Autoriza descuento de aportes?','Autorización de descuento de aportes',MB_YESNO+MB_ICONQUESTION);
  If Boton = ID_YES Then
  Begin
    try
      if DM1.cdsAso.fieldbyname('FALLECIDO').AsString <> 'S' then
      begin
        // la actualización se realiza sólo si el Asociado No ha fallecido
        Screen.Cursor := crHourGlass;
        xCodReg := DM1.CodReg;
        DM1.Registro_Aud(DM1.cdsAso.FieldByName('ASOID').AsString, '0', xCodReg);
        // Inicio: HPC_201607_ASO 
        // Se actualiza el campo del motivo de autorización de descuento de aportes
        xSQL := 'UPDATE ' + DM1.sAPO201 + ' SET AUTDESAPO = ' + QuotedStr('S') + ', FECAUTDESAPO = ' + QuotedStr(Trim(dbdtfecaut.Text)) + ', FECREGAUTDESAPO = SYSDATE, USUREGAUTDESAPO = ' + QuotedStr(DM1.wUsuario) + ', OFIREGAUTDESAPO = ' + QuotedStr(DM1.xOfiDes) + ', CODMODAUTDESAPO = ''ASO'', CODMOTDESTAPO = NULL, CODMOTAUTCADAPS = '+QuotedStr(dblcdmotCADAPS.Text)+' WHERE ' + DM1.sAso_where + ' ASOID = ' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
        // Fin: HPC_201607_ASO 

        DM1.DCOM1.AppServer.EjecutaSql(xSQL);
        DM1.Registro_Aud(DM1.cdsAso.FieldByName('ASOID').AsString, '1', xCodReg);
        Screen.Cursor := crDefault;
      end;
      xSQL:='UPDATE APOSINCARTA SET AUTODESC='+QuotedStr('N')+' WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

// Inicio HPC_201711_ASO : Firma 2da.Vez
      // Si es Segunda Vez
      xSQL:='UPDATE APOSINCARTA SET FLG_SEG_FIR='+QuotedStr('S')+' WHERE ASOID='+QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)+' AND NVL(FLG_SEG_FIR,''N'')=''N''';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
// Fin  HPC_201711_ASO : Firma 2da.Vez

      FMantAsociado.sFirmaCarta:='N';
      BitAutDes.Enabled:=False;
      MessageDlg('El registro ha sido actualizado!!!', mtConfirmation, [mbOk], 0);
      Close;
    except
      ShowMessage('Error al grabar. Volver a intentar');
    end;
  end;
  // Fin: SPP_201303_ASO
end;

function TFautdes.chkdesdesapo(xasoid: String): Boolean;
// Inicio: SPP_201303_ASO
Var
   xSql:String;
   //xano, xmes:string;
// Fin: SPP_201303_ASO
begin
   Result := True;
   // Inicio: SPP_201303_ASO
   // Se verifica si el docente cuenta con créditos vigentes
   xSql := 'SELECT COUNT(*) CREDITOS FROM CRE301 WHERE ASOID = '+QuotedStr(xasoid)+' AND CREESTID IN (''01'',''02'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('CREDITOS').AsInteger > 0 Then
   Begin
      MessageDlg('El docente cuenta actualmente con créditos vigentes'#13'No procede la desautorización.', mtConfirmation, [mbOk], 0);
      Result := False;
   End;
   
   // Se verifica si el docente tuvo aportes en los últimos 24 meses
   {xano :=   inttostr(StrToInt(Copy(datetostr(DM1.FechaSys),7,4))-2);
   xmes :=   Copy(datetostr(DM1.FechaSys),4,2);
   xSql := 'SELECT COUNT(*) APORTES FROM APO301 WHERE ASOID = '+QuotedStr(xasoid)+' AND TRANSINTID = ''APO'' AND APOSEC >= '+QuotedStr(xano+xmes);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('APORTES').AsInteger > 0 Then
   Begin
      MessageDlg('El docente registra aportes en los últimos dos años'#13'No procede la desautorización.', mtConfirmation, [mbOk], 0);
      Result := False;
   End;}
   // Fin: SPP_201303_ASO
end;

procedure TFautdes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFautdes.FormKeyPress(Sender: TObject; var Key: Char);
begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(CM_DIALOGKEY, VK_TAB, 0);
   End;
end;

procedure TFautdes.dblcdmotdesapoExit(Sender: TObject);
begin
   If Trim(dblcdmotdesapo.Text) = '' Then Exit;
end;

// Inicio: SPP_201403_ASO
procedure TFautdes.dbdtfecautExit(Sender: TObject);
begin
   If dbdtfecaut.Date <= DM1.FechaSys Then Exit;
   MessageDlg('Fecha de autorización no puede ser mayor a la fecha de hoy.', mtConfirmation, [mbOk], 0);
   dbdtfecaut.SetFocus;
   Exit;
end;
// Fin: SPP_201403_ASO

// Inicio: HPC_201607_ASO
// Control de la selección del motivo de autorización de descuento de aportes
// Inicio: HPC_201609_ASO
// Control de la selección del motivo de autorización de descuento de aportes
procedure TFautdes.dblcdmotCADAPSExit(Sender: TObject);
begin
  // If DM1.cdsTipDesem.Locate('CODMOTAUTCADAPS',dblcdmotCADAPS.Text,[]) Then
  //   edtdesmotCADAPS.Text := DM1.cdsTipDesem.FieldByName('DESMOTAUTCADAPS').asstring
  If DM1.cdsAutCADAPS.Locate('CODMOTAUTCADAPS',dblcdmotCADAPS.Text,[]) Then
     edtdesmotCADAPS.Text := DM1.cdsAutCADAPS.FieldByName('DESMOTAUTCADAPS').asstring
  Else
  Begin
     edtdesmotCADAPS.Text := '';
     dblcdmotCADAPS.Text := '';
  End;
end;
// Fin: HPC_201609_ASO
// Fin: HPC_201607_ASO
// Inicio: HPC_201705_ASO
// Se añade procedimiento que envia a imprimir los formatos "formato de autorización de descuento de aportes" y "declaración de asociados".
procedure TFautdes.BitPrintClick(Sender: TObject);
var xsql, xasoid:String;
begin
   // Se valida que tidpo de asociado esta permitido la impresión del formato
   IF (DM1.cdsAso.fieldbyname('ASOTIPID').AsString <> 'DO') AND ((DM1.cdsAso.fieldbyname('ASOTIPID').AsString <> 'VO')) THEN
   BEGIN
      MessageDlg('Solo asociados activos(DO) y nuevos(VO) tienen acceso a la opción de imprimir.', mtError, [mbCancel], 0);
      Screen.Cursor := crDefault;
      Exit;
   END;
   xasoid  := DM1.cdsAso.FieldByName('ASOID').AsString;
   xsql := 'SELECT A.ASODNI, A.ASOAPENOMDNI, B.USENOM  FROM '+DM1.sAPO201+' A, APO101 B WHERE A.ASOID = '+QuotedStr(xasoid)
   +' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+)';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('ASODNI').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar el DNI para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar los apellidos y nombre(s) del DNI para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('USENOM').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar los datos de UGEL para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   FPrincipal.LlenaDatosPlaUniPag(xasoid);
   FPrincipal.pprPlaAutDesUni.print;
   FPrincipal.pprPlaAutDesUni.Cancel;
   xsql := 'SELECT A.ASODNI, A.ASOAPENOMDNI, B.USENOM, C.UPRONOM, A.ASODIR, A.ZIPID, D.NOMCENEDU, A.ASOFRESNOM, A.ASORESNOM'
   +' FROM '+DM1.sAPO201+' A, APO101 B, APO102 C, ASO_CEN_EDU D'
   +' WHERE A.ASOID = '+QuotedStr(xasoid)+' AND A.UPROID = B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) AND A.USEID = B.USEID(+)'
   +' AND A.UPROID = C.UPROID(+) AND A.CENEDUID = D.CENEDUID(+)';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xsql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('ASODNI').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar el DNI para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ASOAPENOMDNI').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar los apellidos y nombre(s) del DNI para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('UPRONOM').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar los datos de la Unidad de Proceso para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('USENOM').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar los datos de UGEL para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ASODIR').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar la dirección domiciliaria para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ZIPID').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar datos del UBIGEO para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('NOMCENEDU').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar nombre del centro educativo para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ASOFRESNOM').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar fecha de resolución de nombramiento para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   If DM1.cdsQry.FieldByName('ASORESNOM').AsString = '' Then
   Begin
      MessageDlg('Debe actualizar número de la resolución de nombramiento para proceder a la impresión.', mtError, [mbCancel], 0);
      Exit;
   End;
   FPrincipal.LlenaDatosPlaDecAso(xasoid);
   FPrincipal.pprDecAso.print;
   FPrincipal.pprDecAso.Cancel;
end;
// Fin: HPC_201705_ASO

end.


