// Inicio Uso Estándares     : 01/08/2011
// Unidad		            : ASO225.pas
// Formulario		        : FUgelRegionPlanilla
// Fecha de Creación	     : 06/03/2012
// Autor			         : Daniel Fernández
// Objetivo		          : Mantenimiento de un registro de Ugel/Región vs Planilla

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201202_ASO            : 05/03/2012  DFERNANDEZ Se crea el formulario
// DPP_201209_ASO            : El pase a producción se realiza a partir del HPC_201202_ASO
// HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez


unit ASO225;

interface

uses
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, wwdblook, Wwdbdlg, Mask, wwdbedit, Wwdbcomb, DB,
  ExtCtrls;
// Fin HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez

type
  TFUgelRegionPlanilla = class(TForm)
    btnGrabar: TBitBtn;
    btnCerrar: TBitBtn;
    grpUgel: TGroupBox;
    Label1: TLabel;
    dblcdUniPro: TwwDBLookupComboDlg;
    EdtUniProNom: TEdit;
    Label2: TLabel;
    Label20: TLabel;
    dblcdUniPag: TwwDBLookupComboDlg;
    EdtUniPagNom: TEdit;
    dblcdUniGes: TwwDBLookupComboDlg;
    EdtUniGesNom: TEdit;
    grpUbigeo: TGroupBox;
    Label12: TLabel;
    dblcdcoddep: TwwDBLookupComboDlg;
    medesdep: TMaskEdit;
    grpRegion: TGroupBox;
    edtCodRegion: TwwDBEdit;
    Label4: TLabel;
    grpPlanilla: TGroupBox;
    chkActivos: TCheckBox;
    chkCesantes: TCheckBox;
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
    GroupBox1: TGroupBox;
    Label3: TLabel;
    dblcdCentroProcesos: TwwDBLookupCombo;
    rgAutDes: TRadioGroup;
// Fin  HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
    procedure FormActivate(Sender: TObject);
    procedure dblcdUniProChange(Sender: TObject);
    procedure dblcdUniPagChange(Sender: TObject);
    procedure dblcdUniGesChange(Sender: TObject);
    procedure dblcdcoddepChange(Sender: TObject);
    procedure btnGrabarClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dblcdcoddisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcdUniProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcdUniPagKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcdUgelGestoraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDesRegionKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblcdUniGesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
    procedure dblcdCentroProcesosNotInList(Sender: TObject;
      LookupTable: TDataSet; NewValue: String; var Accept: Boolean);
    procedure dblcdCentroProcesosExit(Sender: TObject);
// Fin  HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
  private
    { Private declarations }
  public
    { Public declarations }
    MODO: string; //N=Nuevo, E=Editar
    CODSEC: integer;
    MODIFICADO: boolean;
  end;

var
  FUgelRegionPlanilla: TFUgelRegionPlanilla;

implementation

// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
uses ASODM;
// Fin  HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez

{$R *.dfm}

procedure TFUgelRegionPlanilla.FormActivate(Sender: TObject);
Var
  xSql:String;
begin

  // Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
  xSql:='SELECT CENTRO_PROCESO FROM ASO_PAD_DET '
           + 'Where USEID='''+dblcdUniGes.Text+''''
           +  ' and codpad >= (SELECT SUBSTR(MAX(CODPAD),1,4) ANO FROM ASO_PAD_CAB) '
           +  ' and CENTRO_PROCESO IS NOT NULL '
           + 'GROUP BY CENTRO_PROCESO ORDER BY CENTRO_PROCESO';
  DM1.cdsQry25.Close;
  DM1.cdsQry25.DataRequest(xSql);
  DM1.cdsQry25.Open;
  // Fin  HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez

  xSql := 'SELECT UPROID, UPRONOM FROM APO102';
  DM1.cdsUPro.Close;
  DM1.cdsUPro.DataRequest(xSql);
  DM1.cdsUPro.Open;
  dblcdUniPro.Selected.Clear;
  dblcdUniPro.Selected.Add('UPROID'#9'3'#9'Código');
  dblcdUniPro.Selected.Add('UPRONOM'#9'23'#9'Unidad de~Proceso');
  
  xSql := 'SELECT UPROID, UPAGOID, UPAGONOM FROM APO103';
  DM1.cdsUPago.Close;
  DM1.cdsUPago.DataRequest(xSql);
  DM1.cdsUPago.Open;
  dblcdUniPag.Selected.Clear;
  dblcdUniPag.Selected.Add('UPAGOID'#9'3'#9'Código'#9#9);
  dblcdUniPag.Selected.Add('UPAGONOM'#9'25'#9'Unidad~de Pago'#9#9);
  
  xSql := 'SELECT UPROID, UPAGOID, USEID, USENOM FROM APO101';
  DM1.cdsUSES.Close;
  DM1.cdsUSES.DataRequest(xSql);
  DM1.cdsUSES.Open;
  dblcdUniGes.Selected.Clear;
  dblcdUniGes.Selected.Add('USEID'#9'3'#9'Código'#9#9);
  dblcdUniGes.Selected.Add('USENOM'#9'25'#9'Unidad~de Gestión'#9#9);
  
  xSql := 'SELECT DPTOID, DPTODES FROM APO158 ORDER BY DPTOID';
  DM1.cdsDpto.Close;
  DM1.cdsDpto.DataRequest(xSql);
  DM1.cdsDpto.Open;
  dblcdcoddep.Selected.Clear;
  dblcdcoddep.Selected.Add('DPTOID'#9'2'#9'Código');
  dblcdcoddep.Selected.Add('DPTODES'#9'23'#9'Departamento');

  if MODO = 'E' then
  begin
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
    xSql := 'SELECT CODSEC, UPROID, UPAGOID, USEID, DPTOID, CODREGION, AC, CE, CENTRO_PROCESO '
      + ' FROM ASO_UGEL_PLA_MAE WHERE CODSEC = ' + IntToStr(CODSEC);
// Fin  HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    if DM1.cdsQry.RecordCount > 0 then
    begin
      dblcdUniPro.Text := DM1.cdsQry.FieldByName('UPROID').AsString;
      dblcdUniPag.Text := DM1.cdsQry.FieldByName('UPAGOID').AsString;
      dblcdUniGes.Text := DM1.cdsQry.FieldByName('USEID').AsString;
      dblcdcoddep.Text := DM1.cdsQry.FieldByName('DPTOID').AsString;
      edtCodRegion.Text := DM1.cdsQry.FieldByName('CODREGION').AsString;
      if DM1.cdsQry.FieldByName('AC').AsString = 'S' then
      begin
        chkActivos.Checked := true;
      end
      else
      begin
        chkActivos.Checked := false;
      end;
      if DM1.cdsQry.FieldByName('CE').AsString = 'S' then
      begin
        chkCesantes.Checked := true;
      end
      else
      begin
        chkCesantes.Checked := false;
      end;

// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
      xSql:='SELECT CENTRO_PROCESO FROM ASO_PAD_DET '
           + 'Where USEID='''+dblcdUniGes.Text+''''
           +  ' and codpad >= (SELECT SUBSTR(MAX(CODPAD),1,4) ANO FROM ASO_PAD_CAB) '
           +  ' and CENTRO_PROCESO IS NOT NULL '
           + 'GROUP BY CENTRO_PROCESO ORDER BY CENTRO_PROCESO';
      DM1.cdsQry25.Close;
      DM1.cdsQry25.DataRequest(xSql);
      DM1.cdsQry25.Open;

      dblcdCentroProcesos.LookupField:='CENTRO_PROCESO';
      dblcdCentroProcesos.LookupTable:=DM1.cdsQry25;

      dblcdCentroProcesos.Selected.Clear;
      dblcdCentroProcesos.Selected.Add('CENTRO_PROCESO'#9'23'#9'Centro de Proceso');

      dblcdCentroProcesos.Text := DM1.cdsQry.FieldByName('CENTRO_PROCESO').AsString;

      xSql:='SELECT FLGDESAPO '
           + ' FROM APO102 WHERE UPROID = ''' + dblcdUniPro.Text + '''';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;


      if DM1.cdsQry.FieldByName('FLGDESAPO').AsString='S' then
         rgAutDes.ItemIndex :=1
      else
         rgAutDes.ItemIndex :=0;

      DM1.cdsQry.Open;
// Fin  HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez

    end;
    DM1.cdsQry.Close;
  end;

  MODIFICADO := false;
end;

procedure TFUgelRegionPlanilla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM1.cdsUPro.Close;
  DM1.cdsUPago.Close;
  DM1.cdsUSES.Close;
  DM1.cdsDpto.Close;
  DM1.cdsQry.Close;
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
  DM1.cdsQry25.Close;
  DM1.cdsUSES.Filter := '';
  DM1.cdsUSES.Filtered := False;
// Fin  HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
end;

procedure TFUgelRegionPlanilla.btnCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFUgelRegionPlanilla.dblcdUniProChange(Sender: TObject);
begin
  DM1.cdsUPago.Filter := '';
  DM1.cdsUpago.Filtered := False;
  DM1.cdsUPago.Filter := 'UPROID='+QuotedStr(dblcdUniPro.Text);
  DM1.cdsUPago.Filtered := True;
  If DM1.cdsUPro.Locate('UPROID', dblcdUniPro.Text, []) Then
  Begin
    EdtUniProNom.Text := DM1.cdsUPro.FieldByName('UPRONOM').AsString;
    dblcdUniPag.Clear;
    EdtUniPagNom.Clear;
    dblcdUniGes.Clear;
    EdtUniGesNom.Clear;
  End
  Else
  Begin
    EdtUniProNom.Text := '';
    EdtUniPagNom.Text := '';
    EdtUniGesNom.Text := '';
    dblcdUniPro.Text := '';
    dblcdUniPag.Text := '';
    dblcdUniGes.Text := '';
  End;
end;

procedure TFUgelRegionPlanilla.dblcdUniPagChange(Sender: TObject);
begin
  DM1.cdsUSES.Filter := '';
  DM1.cdsUSES.Filtered := False;
  DM1.cdsUSES.Filter := 'UPROID='+quotedstr(dblcdUniPro.Text)+' AND UPAGOID='+quotedstr(dblcdUniPag.Text);
  DM1.cdsUSES.Filtered := True;
  If DM1.cdsUPago.Locate('UPROID;UPAGOID',VarArrayof([dblcdUniPro.Text,dblcdUniPag.Text]),[]) Then
  Begin
    EdtUniPagNom.Text := DM1.cdsUPago.FieldByName('UPAGONOM').AsString;
    dblcdUniGes.Clear;
    EdtUniGesNom.Clear;
  End
  Else
  Begin
    EdtUniPagNom.Text := '';
    EdtUniGesNom.Text := '';
    dblcdUniPag.Text := '';
    dblcdUniGes.Text := '';
  End;
end;

procedure TFUgelRegionPlanilla.dblcdUniGesChange(Sender: TObject);
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
var
   xSql : String;
// Fin   HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
begin
  if DM1.cdsUSES.Locate('UPROID;UPAGOID;USEID',VarArrayof([dblcdUniPro.Text,dblcdUniPag.Text, dblcdUniGes.Text]),[]) Then
  Begin
    EdtUniGesNom.Text := DM1.cdsUSES.FieldByName('USENOM').AsString;

// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
      xSql:='SELECT CENTRO_PROCESO FROM ASO_PAD_DET '
           + 'Where USEID='''+dblcdUniGes.Text+''''
           +  ' and codpad >= (SELECT SUBSTR(MAX(CODPAD),1,4) ANO FROM ASO_PAD_CAB) '
           +  ' and CENTRO_PROCESO IS NOT NULL '
           + 'GROUP BY CENTRO_PROCESO ORDER BY CENTRO_PROCESO';
      DM1.cdsQry25.Close;
      DM1.cdsQry25.DataRequest(xSql);
      DM1.cdsQry25.Open;
      dblcdCentroProcesos.LookupTable:=DM1.cdsQry25;
      dblcdCentroProcesos.Selected.Clear;
      dblcdCentroProcesos.Selected.Add('CENTRO_PROCESO'#9'23'#9'Centro de Proceso');
// Fin  HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez

  End
  Else
  Begin
    EdtUniGesNom.Text := '';
    dblcdUniGes.Text := '';
  End;
end;

procedure TFUgelRegionPlanilla.dblcdcoddepChange(Sender: TObject);
begin
  If Length(trim(dblcdcoddep.Text)) = 2 Then
  Begin
    If DM1.cdsDpto.Locate('DPTOID', VarArrayof([dblcdcoddep.text]), []) Then
    Begin                                         
      medesdep.Text := DM1.cdsDpto.FieldByName('DPTODES').AsString;
      Exit;
    End
    Else
    Begin
      medesdep.Text := '';
      dblcdcoddep.Text := '';
    End;
  End
  Else
  Begin
    medesdep.Text := '';
    dblcdcoddep.Text := '';
  End;
end;

procedure TFUgelRegionPlanilla.btnGrabarClick(Sender: TObject);
var
  xSql: string;
begin
  if EdtUniProNom.Text = '' then
  begin
    ShowMessage('Ingrese la Unidad de Proceso');
    dblcdUniPro.SetFocus;
    Exit;
  end;
  if EdtUniPagNom.Text = '' then
  begin
    ShowMessage('Ingrese la Unidad de Pago');
    dblcdUniPag.SetFocus;
    Exit;
  end;
  if EdtUniGesNom.Text = '' then
  begin
    ShowMessage('Ingrese la Unidad de Gestión');
    dblcdUniGes.SetFocus;
    Exit;
  end;
  if medesdep.Text = '' then
  begin
    ShowMessage('Ingrese el Departamento');
    dblcdcoddep.SetFocus;
    Exit;
  end;
  if edtCodRegion.Text = '' then
  begin
    ShowMessage('Ingrese el código de la Región');
    edtCodRegion.SetFocus;
    Exit;
  end;
  if (not chkActivos.Checked) and (not chkCesantes.Checked) then
  begin
    ShowMessage('Debe activar si la planilla es de activos y/o cesantes');
    chkActivos.SetFocus;
    Exit;
  end;
  
  if MODO = 'N' then
  begin
    xSql := 'SELECT NVL(MAX(CODSEC),0) + 1 CODSEC FROM ASO_UGEL_PLA_MAE';
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    
    if DM1.cdsQry.RecordCount > 0 then
      CODSEC := DM1.cdsQry.FieldByName('CODSEC').AsInteger
    else
      CODSEC := 1;
  end;

  if MODO = 'N' then
  begin
// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
    xSql := 'INSERT INTO ASO_UGEL_PLA_MAE(CODSEC, UPROID, UPAGOID, USEID,'
      + '        DPTOID, CODREGION, AC, CE, CENTRO_PROCESO )'
      + '    VALUES ('
      + IntToStr(CODSEC) + ', '
      + QuotedStr(dblcdUniPro.Text) + ', '
      + QuotedStr(dblcdUniPag.Text) + ', '
      + QuotedStr(dblcdUniGes.Text) + ', '
      + QuotedStr(dblcdcoddep.Text) + ', '
      + edtCodRegion.Text + ', ';
    if chkActivos.Checked then
      xSql := xSql + '''S'', '
    else
      xSql := xSql + '''N'', ';
    if chkCesantes.Checked then
      xSql := xSql + '''S'''
    else
      xSql := xSql + '''N''';

    if dblcdCentroProcesos.Text<>'' then
       xSql:=xSql + ', '+ QuotedStr(dblcdCentroProcesos.Text) + ' '
    else
       xSql:=xSql + ', null ';
// Fin  HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez

    xSql := xSql + ')';
  end
  else
  begin
    xSql := 'UPDATE ASO_UGEL_PLA_MAE'
      + '    SET'
      + '        UPROID = ' + QuotedStr(dblcdUniPro.Text) + ','
      + '        UPAGOID = ' + QuotedStr(dblcdUniPag.Text) + ','
      + '        USEID = ' + QuotedStr(dblcdUniGes.Text) + ','
      + '        DPTOID = ' + QuotedStr(dblcdcoddep.Text) + ','
      + '        CODREGION = ' + QuotedStr(edtCodRegion.Text) + ',';
    if chkActivos.Checked then
      xSql := xSql + 'AC = ''S'', '
    else
      xSql := xSql + 'AC = ''N'', ';
    if chkCesantes.Checked then
      xSql := xSql + 'CE = ''S'''
    else
      xSql := xSql + 'CE = ''N''';

// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
    xSql:=xSql + ', CENTRO_PROCESO = ' + QuotedStr(dblcdCentroProcesos.Text) + ' ';
// Fin   HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez


    xSql := xSql + '    WHERE CODSEC = ' + IntToStr(CODSEC);
  end;
  
  DM1.DCOM1.AppServer.EjecutaSql(xSql);

// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
  if rgAutDes.ItemIndex=1 then
  xSql:='UPDATE DB2ADMIN.APO102 SET FLGDESAPO=''S'' '
       + 'WHERE UPROID = ''' + dblcdUniPro.Text + ''''
  else
  xSql:='UPDATE DB2ADMIN.APO102 SET FLGDESAPO=''N'' '
       + 'WHERE UPROID = ''' + dblcdUniPro.Text + '''';
  DM1.DCOM1.AppServer.EjecutaSql(xSql);
// Fin   HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez

  MODIFICADO := true;
  MessageDlg('Registro actualizado', mtInformation, [mbOk], 0);
  Close;
end;

procedure TFUgelRegionPlanilla.dblcdcoddisKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = word(13)) Then
    edtCodRegion.SetFocus;
end;

procedure TFUgelRegionPlanilla.dblcdUniProKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = word(13)) Then
    dblcdUniPag.SetFocus;
end;

procedure TFUgelRegionPlanilla.dblcdUniPagKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = word(13)) Then
    dblcdUniGes.SetFocus;
end;

procedure TFUgelRegionPlanilla.dblcdUgelGestoraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = word(13)) Then
    dblcdcoddep.SetFocus;
end;

procedure TFUgelRegionPlanilla.edtDesRegionKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = word(13)) Then
    chkActivos.SetFocus;
end;

procedure TFUgelRegionPlanilla.dblcdUniGesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = word(13)) Then
    dblcdcoddep.SetFocus;
end;

// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
procedure TFUgelRegionPlanilla.dblcdCentroProcesosNotInList(
  Sender: TObject; LookupTable: TDataSet; NewValue: String;
  var Accept: Boolean);
begin
   Accept := LookupTable.Locate(TwwDBCustomLookupCombo(Sender).LookupField, NewValue, []);
   If Not Accept Then
      TwwDBCustomLookupCombo(Sender).DropDown;
end;
// Fin   HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez


// Inicio HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez
procedure TFUgelRegionPlanilla.dblcdCentroProcesosExit(Sender: TObject);
begin
   if trim(dblcdCentroProcesos.Text)='' then Exit;

   If not DM1.cdsQry25.Locate('CENTRO_PROCESO',VarArrayof([dblcdCentroProcesos.Text]),[]) Then
   begin
       ShowMessage('Nombre de Centro de Proceso no Existe');
       dblcdCentroProcesos.Text:='';
       dblcdCentroProcesos.SetFocus;
   end;
end;
// Fin   HPC_201711_ASO            : Añadir Centro de Proceso y Autoriza descuento 2da vez

end.

