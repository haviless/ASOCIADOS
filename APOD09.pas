// Inicio Uso Estándares : 01/08/2011
// Unidad                : APOD09.pas
// Formulario            : FUnificacion
// Fecha de Creación     : 15/12/2003
// Autor                 : Equipo de Desarrollo de Sistemas DM
// Objetivo              : Unificar dos asociados en un solo registro

// Actualizaciones:
// HPC_201306_ASO        : El DNI se obtiene de la caja de texto en lugar del dataset 
// SPP_201307_ASO        : Se realiza el pase a producción a partir del HPC_201306_ASO
// SPP_201402_ASO  : Se realiza el pase a producción a partir del HPC_201401_ASO


unit APOD09;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid, ComCtrls,
  ppProd, ppClass, ppReport, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe,
  ppTypes, ppCtrls, ppVar, ppPrnabl, ppBands, StdCtrls, Mask, wwdbedit, Wwdotdot,
  Wwkeycb,wwclient, Db, Wwdatsrc, ExtCtrls, Buttons,mant, CheckLst,
  variants, DBClient, wwdblook, Wwdbdlg,ppViewr, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdFTP, IniFiles;

type
  TControlActivo = (caApenom, caCodMod, caApenom2,caCodMod2);
  TFUnificacion = class(TForm)
    gbxAsociado1: TGroupBox;
    dbeApeNom: TwwDBEdit;
    dbeCodMod: TwwDBEdit;
    dbeCodigo: TwwDBEdit;
    edtBuscaUse: TEdit;
    dblcdBuscaUse: TwwDBLookupComboDlg;
    dblcdUPago: TwwDBLookupComboDlg;
    edtUnPago: TEdit;
    dblcdUProceso: TwwDBLookupComboDlg;
    edtUProceso: TEdit;
    dbeDNI: TwwDBEdit;
    gbxAsociado2: TGroupBox;
    dbeApeNom2: TwwDBEdit;
    dbeCodMod2: TwwDBEdit;
    dbeCodigo2: TwwDBEdit;
    edtBuscaUse2: TEdit;
    dblcdBuscaUse2: TwwDBLookupComboDlg;
    dblcdUPago2: TwwDBLookupComboDlg;
    edtUnPago2: TEdit;
    dblcdUProceso2: TwwDBLookupComboDlg;
    edtUProceso2: TEdit;
    dbeDNI2: TwwDBEdit;
    Panel1: TPanel;
    dbgDatos: TwwDBGrid;
    Panel2: TPanel;
    z2bbtnVisualizar: TfcShapeBtn;
    z2bbtnUnificar: TfcShapeBtn;
    Z2bbtnRecuperar: TfcShapeBtn;
    z2bbtnCerrar: TfcShapeBtn;
    z2bbtnNuevo: TfcShapeBtn;
    cdsComparacion: TwwClientDataSet;
    dsComparacion: TwwDataSource;
    cdsAsociado1: TwwClientDataSet;
    cdsAsociado2: TwwClientDataSet;
    cdsComparacionTABLA: TStringField;
    cdsComparacionCAMPO: TStringField;
    cdsComparacionDATO1: TStringField;
    cdsComparacionDATO2: TStringField;
    cdsComparacionCHECK1: TStringField;
    cdsComparacionCHECK2: TStringField;
    cdsComparacionDESCRIP: TStringField;
    cdsComparacionDATO1ACT: TStringField;
    cdsComparacionDATO2ACT: TStringField;
    cdsComparacionFILTRO: TStringField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel5: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    pplblNombre1: TppLabel;
    pplblCodMod1: TppLabel;
    pplblAsoid1: TppLabel;
    pplblDNI1: TppLabel;
    pplblNombre2: TppLabel;
    pplblCodMod2: TppLabel;
    pplblAsoid2: TppLabel;
    pplblDNI2: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel20: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ImagAso1: TImage;
    ImagAso2: TImage;
    IdFTP1: TIdFTP;
    procedure dbgFusionTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure dbgDestinoTitleButtonClick(Sender: TObject;  AFieldName: String);
    procedure Z2btnVerClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbeApeNomExit(Sender: TObject);
    procedure dbeCodModExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure z2bbtnNuevoClick(Sender: TObject);
    procedure z2bbtnCerrarClick(Sender: TObject);
    procedure EnterGenerico(Sender: TObject);
    procedure dbeCodMod2Exit(Sender: TObject);
    procedure dbeApeNom2Exit(Sender: TObject);
    procedure Z2bbtnRecuperarClick(Sender: TObject);
    procedure z2bbtnVisualizarClick(Sender: TObject);
    procedure cdsComparacionCHECK1Change(Sender: TField);
    procedure cdsComparacionCHECK2Change(Sender: TField);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure z2bbtnUnificarClick(Sender: TObject);

  private
    { Private declarations }
    sTmp : String ;
    bf_seleccion : Boolean ;
    enumCampoActivo : TControlActivo ;
    procedure CargaBusqueda; //** CARGA LA DATA DEL ASOCIADO
    procedure CargaBusqueda2; //** CARGA LA DATA DEL ASOCIADO
    procedure LevantaFiltro(xCampo : String); //** LEVANTA EL MANT PARA LA BUSQUEDA DEL ASO.
    procedure OnEditAso(Sender: TObject; MantFields: TFields);
    procedure LimpiaEdits;
    procedure LimpiaEdits2;
    procedure ValidaCabecera ;
    procedure QuitaEventos ;
    procedure PonEventos ;
   //Inicio: DPP_201202_ASO
   //Se quita la carga de imagen por FTP
   //procedure CargaFoto(IdFoto, dato: String);
   //Final: DPP_201202_ASO
    function verificaunicacion(asoid01:String;asoid02:String):Boolean;
    function VerificaCaracterXCaractar(xCampo1,xCampo2,MargeDif:string):Boolean;
  public
    { Public declarations }
  end;

var
  FUnificacion: TFUnificacion;

implementation

{$R *.DFM}

uses ASODM, ASO001, ASO900, ASO908;
//, APO001;

procedure TFUnificacion.dbgFusionTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
end;

//** oculta el panel de la busqueda
procedure TFUnificacion.dbgDestinoTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
end;

//** visualiza los paneles con los grid con la data a fusionar
procedure TFUnificacion.Z2btnVerClick(Sender: TObject);
begin
end;

//** oculta los paneles con los grid con la data a fusionar
procedure TFUnificacion.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
  begin
    key:=#0;
    perform(CM_DialogKey,VK_TAB,0);
  end;
end;

procedure TFUnificacion.dbeApeNomExit(Sender: TObject);
var
 xSql : String;
begin
  if trim(dbeApeNom.Text) <> sTmp then
  begin
   dbeApeNom.Text := Trim(dbeApeNom.Text);
   If trim(dbeApeNom.Text) <> '' then
   begin
    xSQL := 'SELECT * FROM APO201 '+
           'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(dbeApeNom.Text+'%'))+ ' AND ROWNUM < 3 ' ;

    Dm1.cdsasociados.Close;
    Dm1.cdsasociados.DataRequest(xSql);
    Dm1.cdsasociados.Open;

    If Dm1.cdsasociados.RecordCount = 1 then
     begin
      CargaBusqueda;
     end
    else
     begin
      if dm1.cdsAsociados.RecordCount = 0 then
         LimpiaEdits
      else
      begin
        enumCampoActivo := caApenom ;
        LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeApeNom.Text+'%')));
        if not bf_seleccion then
           LimpiaEdits ;
      end ;
     end;
   end
   else
   begin
     LimpiaEdits ;
   end ;
  end ;

end;

procedure TFUnificacion.dbeCodModExit(Sender: TObject);
var
 xSql : String;
begin
  if trim(dbeCodMod.Text) <> sTmp then
  begin
    dbeCodMod.Text := Trim(dbeCodMod.Text);
    If dbeCodMod.Text <> '' then
    begin
     dbeCodMod.Text := DM1.StrZero(dbeCodMod.Text,10);

     xSQL:='SELECT * FROM APO201 '+
           'WHERE ASOCODMOD LIKE '+QuotedStr(Trim(dbeCodMod.Text+'%'));

     Dm1.cdsasociados.Close;
     Dm1.cdsasociados.DataRequest(xSql);
     Dm1.cdsasociados.Open;

     If Dm1.cdsasociados.RecordCount = 1 then
      begin
       CargaBusqueda;
      end
     else
      begin
       if dm1.cdsAsociados.RecordCount = 0 then
          LimpiaEdits
       else
       begin
         enumCampoActivo := caCodMod ;
         LevantaFiltro('ASOCODMOD LIKE '+QuotedStr(Trim(dbeCodMod.Text+'%')));
         if not bf_seleccion then
           LimpiaEdits ;
       end ;
      end;
    end
    else
    begin
     LimpiaEdits ;
    end ;

  end ;
end;

procedure TFUnificacion.CargaBusqueda;
var
  xSql , sSQL : String;
  CodigoAso   : String ;
Begin

    CodigoAso:=DM1.cdsasociados.FieldByName('ASOID').AsString;
    LimpiaEdits;
//wmc xxx    sSQL := 'SELECT * FROM APO201 WHERE ASOID='+QuotedStr(CodigoAso);
{ wmc 20030730
    sSQL :=  ' SELECT ASOCODMOD , ASOAPENOM , ASOID , ASODNI , A.UPROID , A.USEID , A.UPAGOID ,'
           + '  C.UPRONOM , B.USENOM , D.UPAGONOM '
           + ' FROM APO201 A, APO101 B, APO102 C, APO103 D'
           + ' WHERE A.UPROID  = B.UPROID '
           + '     AND A.USEID   = B.USEID '
           + '     AND A.UPROID  = C.UPROID '
           + '     AND A.UPROID  = D.UPROID '
           + '     AND A.UPAGOID = A.UPAGOID '
           + '     AND A.ASOID   = ''' + CodigoAso + ''' ' ;
}
    sSQL :=  ' SELECT ASOCODMOD , ASOAPENOM , ASOID , ASODNI , A.UPROID , A.USEID , A.UPAGOID ,'
           + '  UPROID UPRONOM , USEID USENOM , UPAGOID UPAGONOM, VALCODMODDNI '
           + ' FROM APO201 A'
           + ' WHERE A.ASOID   = ''' + CodigoAso + ''' ' ;

    DM1.FiltraCDS(DM1.cdsAso,sSQL);

    dbeCodMod.Text:=DM1.cdsAso.FieldByName('ASOCODMOD').AsString;

    dbeApeNom.Text:=DM1.cdsAso.FieldByName('ASOAPENOM').AsString;

    dbeCodigo.Text:=DM1.cdsAso.FieldByName('ASOID').AsString;

    dbeDNI . Text  := dm1.cdsAso.FieldByName('ASODNI').AsString ;

    dblcdUProceso.text := DM1.cdsAso.FieldByName('UPROID').AsString;
    dblcdUPago.text := DM1.cdsAso.FieldByName('UPAGOID').AsString;
    dblcdBuscaUse.text := DM1.cdsAso.FieldByName('USEID').AsString;

    edtUProceso.Text  := DM1.cdsAso.FieldByName('UPRONOM').AsString;
    edtUnPago  .Text  := DM1.cdsAso.FieldByName('UPAGONOM').AsString;
    edtBuscaUse.Text  := DM1.cdsAso.FieldByName('USENOM').AsString;

    DM1.cdsasociados.Close;
    DM1.cdsAso.Close ;
end;

procedure TFUnificacion.LevantaFiltro(xCampo: String);
begin
  bf_seleccion := False ;
  DM1.cdsasociados.Close;
  FPrincipal.Mtx1  := TMant.Create(Self);
  try
    FPrincipal.Mtx1.Admin           := DM1.wAdmin;
    FPrincipal.Mtx1.User            := DM1.wUsuario;
    FPrincipal.Mtx1.TableName       := 'VW_UNIFICACION';
    FPrincipal.Mtx1.rEGISTROS       := 30;
    FPrincipal.Mtx1.TableName       := 'APO201';
    FPrincipal.Mtx1.ClientDataSet   := DM1.cdsasociados;
    FPrincipal.Mtx1.Filter          := xCampo;
// Inicio SPP_201402_ASO
// FPrincipal.Mtx1.DComC           := DM1.DCOM1;
// Fin SPP_201402_ASO
    FPrincipal.Mtx1.Module          := dm1.wModulo;
    FPrincipal.Mtx1.Titulo 	        := 'Asociados';
    FPrincipal.Mtx1.ControlGridDisp := FPrincipal.cgdPrincipal;

    FPrincipal.Mtx1.SectionName	  :='AsociadosX';
    FPrincipal.Mtx1.FileNameIni     := '\SOLCRE.INI';
    FPrincipal.Mtx1.OnEdit          := OnEditAso;
    FPrincipal.Mtx1. Execute;
  Finally
    DM1.cdsasociados.Close;
    FPrincipal.Mtx1.Free;
   End;
  DM1.cdsasociados.Close;

end;


procedure TFUnificacion.OnEditAso(Sender: TObject; MantFields: TFields);
var
  xSql,xUse: String;
Begin
  if FPrincipal.Mtx1.ClientDataSet.RecordCount <> 0 then
  begin
    case enumCampoActivo of
      caApenom ,caCodMod :
         begin
           CargaBusqueda;
         end ;
    else
      CargaBusqueda2;
    end;
    TMant(Sender).FMant.Close;
    bf_seleccion := True ;
  end
  else
  begin
    ShowMessage('No ha seleccionado ningún Asociado');
  end ;
End;

procedure TFUnificacion.LimpiaEdits;
begin
   dbeApeNom.Clear ;
   dbeCodMod.Clear ;
   dbeCodigo.clear ;
   dbeDNI.Clear ;
   dblcdUProceso.Clear ;
   dblcdUPago.Clear ;
   dblcdBuscaUse.Clear ;

   edtUProceso.Clear ;
   edtUnPago.Clear ;
   edtBuscaUse.Clear ;

end;

procedure TFUnificacion.FormCreate(Sender: TObject);
begin
  bf_seleccion := False ;
end;

procedure TFUnificacion.z2bbtnNuevoClick(Sender: TObject);
begin
  Z2bbtnRecuperar.Enabled := True ;
  gbxAsociado1.Enabled := True ;
  gbxAsociado2.Enabled := True ;
  LimpiaEdits ;
  LimpiaEdits2 ;
  cdsComparacion.close ;
  cdsComparacion.CreateDataSet ;
  dbeApeNom.SetFocus ;
  z2bbtnUnificar.Enabled := False ;
end;

procedure TFUnificacion.z2bbtnCerrarClick(Sender: TObject);
begin
   close ;
end;

procedure TFUnificacion.EnterGenerico(Sender: TObject);
begin
   sTmp := trim( TCustomEdit(Sender).Text ) ;
end;

procedure TFUnificacion.dbeCodMod2Exit(Sender: TObject);
var
 xSql : String;
begin
  if trim(dbeCodMod2.Text) <> sTmp then
  begin
    dbeCodMod2.Text := Trim(dbeCodMod2.Text);
    If dbeCodMod2.Text <> '' then
    begin
     dbeCodMod2.Text := DM1.StrZero(dbeCodMod2.Text,10);

     xSQL:='SELECT * FROM APO201 '+
           'WHERE ASOCODMOD LIKE '+QuotedStr(Trim(dbeCodMod2.Text+'%'));

     Dm1.cdsasociados.Close;
     Dm1.cdsasociados.DataRequest(xSql);
     Dm1.cdsasociados.Open;

     If Dm1.cdsasociados.RecordCount = 1 then
      begin
       CargaBusqueda2;
      end
     else
      begin
       if dm1.cdsAsociados.RecordCount = 0 then
          LimpiaEdits2
       else
       begin
         enumCampoActivo := caCodMod2 ;
         LevantaFiltro('ASOCODMOD LIKE '+QuotedStr(Trim(dbeCodMod2.Text+'%')));
         if not bf_seleccion then
           LimpiaEdits2 ;
       end ;
      end;
    end
    else
    begin
     LimpiaEdits2 ;
    end ;

  end ;
end;

procedure TFUnificacion.dbeApeNom2Exit(Sender: TObject);
var
 xSql : String;
begin

  if trim(dbeApeNom2.Text) <> sTmp then
  begin
   dbeApeNom2.Text := Trim(dbeApeNom2.Text);
   If trim(dbeApeNom2.Text) <> '' then
   begin
    xSQL := 'SELECT * FROM APO201 '+
           'WHERE ASOAPENOM LIKE '+QuotedStr(Trim(dbeApeNom2.Text+'%'))+ ' AND ROWNUM < 3 ' ;

    Dm1.cdsasociados.Close;
    Dm1.cdsasociados.DataRequest(xSql);
    Dm1.cdsasociados.Open;

    If Dm1.cdsasociados.RecordCount = 1 then
     begin
      CargaBusqueda2;
     end
    else
     begin
      if dm1.cdsAsociados.RecordCount = 0 then
         LimpiaEdits2
      else
      begin
        enumCampoActivo := caApenom2;
        LevantaFiltro('ASOAPENOM LIKE '+QuotedStr(Trim(dbeApeNom2.Text+'%')));
        if not bf_seleccion then
           LimpiaEdits2 ;
      end ;
     end;
   end
   else
   begin
     LimpiaEdits2 ;
   end ;
  end ;

end;

procedure TFUnificacion.CargaBusqueda2;
var
  xSql , sSQL : String;
  CodigoAso   : String ;
Begin

    CodigoAso:=DM1.cdsasociados.FieldByName('ASOID').AsString;
    LimpiaEdits2;
//wmc xxx    sSQL := 'SELECT * FROM APO201 WHERE ASOID='+QuotedStr(CodigoAso);
{ WMC 20030730
    sSQL :=  ' SELECT ASOCODMOD , ASOAPENOM , ASOID , ASODNI , A.UPROID , A.USEID , A.UPAGOID ,'
           + '  C.UPRONOM , B.USENOM , D.UPAGONOM '
           + ' FROM APO201 A, APO101 B, APO102 C, APO103 D'
           + ' WHERE A.UPROID  = B.UPROID '
           + '     AND A.USEID   = B.USEID '
           + '     AND A.UPROID  = C.UPROID '
           + '     AND A.UPROID  = D.UPROID '
           + '     AND A.UPAGOID = A.UPAGOID '
           + '     AND A.ASOID   = ''' + CodigoAso + ''' ' ;
}
    sSQL :=  ' SELECT ASOCODMOD , ASOAPENOM , ASOID , ASODNI , A.UPROID , A.USEID , A.UPAGOID ,'
           + '  UPROID UPRONOM , USEID USENOM , UPAGOID UPAGONOM , VALCODMODDNI '
           + ' FROM APO201 A '
           + ' WHERE A.ASOID   = ''' + CodigoAso + ''' ' ;

    DM1.FiltraCDS(DM1.cdsAso,sSQL);

    dbeCodMod2.Text:=DM1.cdsAso.FieldByName('ASOCODMOD').AsString;

    dbeApeNom2.Text:=DM1.cdsAso.FieldByName('ASOAPENOM').AsString;

    dbeCodigo2.Text:=DM1.cdsAso.FieldByName('ASOID').AsString;

    dbeDNI2 . Text  := dm1.cdsAso.FieldByName('ASODNI').AsString ;

    dblcdUProceso2.text := DM1.cdsAso.FieldByName('UPROID').AsString;
    dblcdUPago2.text := DM1.cdsAso.FieldByName('UPAGOID').AsString;
    dblcdBuscaUse2.text := DM1.cdsAso.FieldByName('USEID').AsString;

    edtUProceso2.Text  := DM1.cdsAso.FieldByName('UPRONOM').AsString;
    edtUnPago2  .Text  := DM1.cdsAso.FieldByName('UPAGONOM').AsString;
    edtBuscaUse2.Text  := DM1.cdsAso.FieldByName('USENOM').AsString;

    DM1.cdsasociados.Close;
    DM1.cdsAso.Close ;
end;

procedure TFUnificacion.LimpiaEdits2;
begin
   dbeApeNom2.Clear ;
   dbeCodMod2.Clear ;
   dbeCodigo2.clear ;
   dbeDNI2.Clear ;
   dblcdUProceso2.Clear ;
   dblcdUPago2.Clear ;
   dblcdBuscaUse2.Clear ;

   edtUProceso2.Clear ;
   edtUnPago2.Clear ;
   edtBuscaUse2.Clear ;

end;


procedure TFUnificacion.ValidaCabecera;
begin

   if trim(dbeCodigo.Text) = '' then
   begin
      dbeApeNom.SetFocus ;
      Raise Exception.Create('Ingrese Asociado Base');
   end ;
   if trim(dbeCodigo2.Text) = '' then
   begin
      dbeApeNom2.SetFocus ;
      Raise Exception.Create('Ingrese Asociado a Corregir')
   end ;
   if trim(dbeCodigo.Text) = trim(dbeCodigo2.Text) then
   begin
      dbeApeNom.SetFocus ;
      Raise Exception.Create('Escoja dos códigos Diferentes a Unificar')
   end ;
end;

procedure TFUnificacion.Z2bbtnRecuperarClick(Sender: TObject);
var
   sSQL  , xFoto ,
   sSQL2 : String ;
   i : word ;
begin
   ImagAso1.Visible := True;
   ImagAso2.Visible := True;
   ValidaCabecera ;
   QuitaEventos ;
   //voy a usar cdsQRY1 Y cdsQRY2
   with dm1.cdsQry1 do
   begin
     Close ;
     IndexFieldNames := '' ;
     Filter := '' ;
     Filtered := False ;
   end ;
   with dm1.cdsQry2 do
   begin
     Close ;
     IndexFieldNames := '' ;
     Filter := '' ;
     Filtered := False ;
   end ;
   with dm1.cdsQry3 do
   begin
     Close ;
     IndexFieldNames := '' ;
     Filter := '' ;
     Filtered := False ;
   end ;
//
   dm1.cdsQry3.Close ;
   sSQL := ' SELECT * FROM APO127 ORDER BY ORDEN' ;
   dm1.cdsqry3.DataRequest (sSQL);
   dm1.cdsqry3.Open ;
//
   sSQL := 'SELECT TABLA FROM APO127 GROUP BY TABLA ORDER BY 1' ;
   dm1.cdsQry1.DataRequest(sSQL);
   dm1.cdsQry1.Open ;
   if dm1.cdsQry1.RecordCount > 0 then
   begin
     while not dm1.cdsqry1.Eof do
     begin
        //recupera datos de los Campos para crear cxonsulta de recupraciín del detalle
        dm1.cdsQry2.Close ;
        sSQL := 'SELECT * FROM APO127 WHERE TABLA = ''' + dm1.cdsQry1.fieldByName('TABLA').AsString + ''' ' ;
        dm1.cdsqry2.DataRequest (sSQL);
        dm1.cdsqry2.Open ;
        //Preparación del SQL
        sSQL2 := 'SELECT ' ;
        while not dm1.cdsqry2.Eof do
        begin
          sSQL2 := sSQL2 + dm1.cdsqry2.FieldByName('TABLA').AsString + '.'
                       + dm1.cdsqry2.FieldByName('CAMPO').AsString + ',';
          if not dm1.cdsqry2.FieldByName('TABLA_RELACION').IsNull then
            sSQL2 := sSQL2 + dm1.cdsqry2.FieldByName('TABLA_RELACION').AsString + '.'
                         + dm1.cdsqry2.FieldByName('CAMPO_DESCRIPCION').AsString + ',';

          DM1.cdsQry2.Next ;
        end ;
        sSQL2 := copy(sSQL2,1,Length(sSQL2)-1) ;
        //preparación del FROM
        sSQL2 := sSQL2 +' FROM ' + dm1.cdsqry1.FieldByName('TABLA').AsString ;
        //Recuperación de Otras Tablas
        sSQL := 'SELECT * FROM APO127 WHERE NOT TABLA_RELACION IS NULL ' ;
        //Otra vez dm1.cdsqry2
        dm1.cdsqry2.Close ;
        dm1.cdsqry2.DataRequest(sSQL);
        dm1.cdsqry2.Open ;
        if dm1.cdsqry2.recordcount > 0 then
        begin
          while not dm1.cdsqry2.Eof do
          begin
            sSQL2 := sSQL2 + ','+ dm1.cdsqry2.FieldByName('TABLA_RELACION').AsString ;
            dm1.cdsQry2.Next ;
          end ;
          dm1.cdsqry2.First ;
          sSQL2 := sSQL2 + ' WHERE ' ;

          while not dm1.cdsqry2.Eof do
          begin
            sSQL2 := sSQL2 + dm1.cdsqry2.FieldByName('TABLA').AsString + '.'
                         + dm1.cdsqry2.FieldByName('CAMPO_BASE').AsString + '='
                         + dm1.cdsqry2.FieldByName('TABLA_RELACION').AsString + '.'
                         + dm1.cdsqry2.FieldByName('CAMPO_RELACION').AsString +'(+)' + ' AND ' ;
            if not dm1.cdsqry2.FieldByName('CAMPO_RELACION2').IsNull then
              sSQL2 := sSQL2 + dm1.cdsqry2.FieldByName('TABLA').AsString + '.'
                           + dm1.cdsqry2.FieldByName('CAMPO_BASE2').AsString + '='
                           + dm1.cdsqry2.FieldByName('TABLA_RELACION').AsString + '.'
                           + dm1.cdsqry2.FieldByName('CAMPO_RELACION2').AsString +'(+)' + ' AND ' ;

            dm1.cdsQry2.Next ;
          end ;

          sSQL2 := copy(sSQL2,1,Length(sSQL2)-4) ;
        end ;
        //Fin de Preparación del SQL
        //Llenado de Datos
        cdsAsociado1.close ;
        cdsAsociado1.DataRequest (sSQL2 + ' and APO201.ASOID = ''' + dbeCodigo.Text + ''' ' )  ;
        cdsAsociado1.Open  ;
        cdsAsociado2.Close ;
        cdsAsociado2.DataRequest (sSQL2 + ' and APO201.ASOID = ''' + dbeCodigo2.Text + ''' ' ) ;
        cdsAsociado2.Open  ;

        //Inicio: DPP_201202_ASO
        //Se quita la carga de imagen por FTP
        {CargaFoto(DM1.RecuperaDatos('APO201', 'ASOID',Trim(cdsAsociado1.FieldByName('ASOID').AsString),'IDIMAGE'), '1');
        CargaFoto(DM1.RecuperaDatos('APO201', 'ASOID',Trim(cdsAsociado2.FieldByName('ASOID').AsString),'IDIMAGE'), '2');
         xFoto := 'C:\Solexes\'+cdsAsociado1.FieldByName('IDIMAGE').AsString+'.JPG'; DeleteFile(xFoto);
         xFoto := 'C:\Solexes\'+cdsAsociado2.FieldByName('IDIMAGE').AsString+'.JPG'; DeleteFile(xFoto);}
          // Inicio: SPP_201307_ASO
          DM1.CargaImagenesDNI(Trim(dbeDNI.Text),'ASOCIADO');
          //DM1.CargaImagenesDNI(Trim(DM1.cdsAso.FieldByName('ASODNI').AsString),'ASOCIADO');
          // Fin: SPP_201307_ASO
        //Final: DPP_201202_ASO


        //Recorrer los Fiels y llenar cdscomparacion
        dm1.cdsQry3.First ;
        while not dm1.cdsQry3.Eof do
        begin
           if cdsAsociado1.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).AsVariant   <>
              cdsAsociado2.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).AsVariant then
           begin
               cdsComparacion.append ;
               cdsComparacion.FieldBYName('TABLA')   .AsString := dm1.cdsqry3.FieldBYName('TABLA').AsString ;
               cdsComparacion.FieldBYName('CAMPO')   .AsString := dm1.cdsqry3.FieldBYName('CAMPO').AsString ;
               if not dm1.cdsqry3.FieldBYName('TABLA_RELACION').IsNull then
                 cdsComparacion.FieldBYName('DATO1') . AsString :=
                    cdsAsociado1.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).AsString + '   '
                  + cdsAsociado1.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO_DESCRIPCION').AsString).AsString
               else
                 cdsComparacion.FieldBYName('DATO1')   .Value :=
                  cdsAsociado1.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).AsString ;

               if not dm1.cdsqry3.FieldBYName('TABLA_RELACION').IsNull then
                 cdsComparacion.FieldBYName('DATO2') . AsString :=
                    cdsAsociado2.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).AsString + '   '
                  + cdsAsociado2.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO_DESCRIPCION').AsString).AsString
               else
                 cdsComparacion.FieldBYName('DATO2')   .Value :=
                  cdsAsociado2.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).AsString ;

               if cdsAsociado1.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).IsNull then
               begin
                   cdsComparacion.FieldBYName('CHECK1')  .AsString := 'N' ;
                   cdsComparacion.FieldBYName('CHECK2')  .AsString := 'S' ;
               end
               else
               begin
                   cdsComparacion.FieldBYName('CHECK1')  .AsString := 'S' ;
                   cdsComparacion.FieldBYName('CHECK2')  .AsString := 'N' ;
               end ;

               cdsComparacion.FieldBYName('DESCRIP') .AsString := dm1.cdsqry3.FieldBYName('DESCRIPCION').AsString ;

               if ( cdsAsociado1.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString) is TDateField ) or
                  ( cdsAsociado1.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString) is TDateTimeField ) then
               begin
                 cdsComparacion.FieldBYName('DATO1ACT').AsString :=
                  FormatDateTime('dd/mm/yyyy',cdsAsociado1.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).AsDateTime) ;
                 cdsComparacion.FieldBYName('DATO2ACT').AsString :=
                  FormatDateTime('dd/mm/yyyy',cdsAsociado2.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).AsDateTime) ;
               end
               else
               begin
                 cdsComparacion.FieldBYName('DATO1ACT').AsString :=
                  cdsAsociado1.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).AsString ;
                 cdsComparacion.FieldBYName('DATO2ACT').AsString :=
                  cdsAsociado2.fieldBYName(DM1.cdsQry3.fIELDbYnAME('CAMPO').AsString).AsString ;
               end ;
               cdsComparacion.FieldBYName('FILTRO').AsString := DM1.cdsQry3.fIELDbYnAME('INVISIBLE').AsString ;
           end ;
           dm1.cdsqry3.Next ;
        end ;
        dm1.cdsqry1.Next   ;
     end ;
     cdsComparacion.Filter := 'FILTRO <> ''1''' ;
     cdsComparacion.Filtered := True ;
   end
   else
   begin
     Raise exception.create('Error en Configuración' + #13 + 'Consulte a Equipo de Sistemas');
   end ;
   PonEventos ;
   Z2bbtnRecuperar.Enabled := False ;
   gbxAsociado1.Enabled := False ;
   gbxAsociado2.Enabled := False ;
   z2bbtnUnificar.Enabled := True ;
end;

procedure TFUnificacion.z2bbtnVisualizarClick(Sender: TObject);
var
   sSQL : String ;
begin
   ValidaCabecera;
   with dm1.cdsQry1 do
   begin
     Close ;
     IndexFieldNames := '' ;
     Filter := '' ;
     Filtered := False ;
   end ;

   sSQL :=
       ' SELECT X1.TRANSANO ANO, X1.TRANSMES MES , '
    +   ' X1.TRANSANO X1TRANSANO, X1.TRANSMES X1TRANSMES, X1.ASOCODMOD X1ASOCODMOD, X1.UPROID X1UPROID,X1.USEID X1USEID, X1.UPAGOID X1UPAGOID, X1.MTO X1MTO, '
    +   ' X2.TRANSANO X2TRANSANO, X2.TRANSMES X2TRANSMES, X2.ASOCODMOD X2ASOCODMOD, X2.UPROID X2UPROID,X2.USEID X2USEID, X2.UPAGOID X2UPAGOID, X2.MTO X2MTO  '
    +   ' FROM '
    +   ' ( '
    +   ' SELECT TRANSANO , TRANSMES , MIN(ASOCODMOD) ASOCODMOD ,MIN(UPROID) UPROID ,MIN(USEID) USEID, MIN(UPAGOID) UPAGOID, '
    +   '        SUM(TRANSMTO)-SUM(NVL(TRANSMTODEV,0)) MTO '
    +   ' FROM APO301 '
    +   ' WHERE ASOID = ''' + dbeCodigo.Text + ''' '
    +   ' GROUP BY TRANSANO , TRANSMES '
    +   ' ) X1 , '
    +   ' ( '
    +   ' SELECT TRANSANO , TRANSMES , MIN(ASOCODMOD) ASOCODMOD ,MIN(UPROID) UPROID ,MIN(USEID) USEID, MIN(UPAGOID) UPAGOID, '
    +   '        SUM(TRANSMTO)-SUM(NVL(TRANSMTODEV,0)) MTO '
    +   ' FROM APO301 '
    +   ' WHERE ASOID = ''' + dbeCodigo2.Text + ''' '
    +   ' GROUP BY TRANSANO , TRANSMES '
    +   ' ) X2 '
    +   ' WHERE X1.TRANSANO = X2.TRANSANO(+) '
    +   '   AND X1.TRANSMES = X2.TRANSMES(+) '
    +   '   UNION ALL '
    +   ' SELECT X2.TRANSANO ANO, X2.TRANSMES MES , '
    +   ' X1.TRANSANO X1TRANSANO, X1.TRANSMES X1TRANSMES, X1.ASOCODMOD X1ASOCODMOD, X1.UPROID X1UPROID,X1.USEID X1USEID, X1.UPAGOID X1UPAGOID, X1.MTO X1MTO, '
    +   ' X2.TRANSANO X2TRANSANO, X2.TRANSMES X2TRANSMES, X2.ASOCODMOD X2ASOCODMOD, X2.UPROID X2UPROID,X2.USEID X2USEID, X2.UPAGOID X2UPAGOID, X2.MTO X2MTO  '
    +   ' FROM '
    +   ' ( '
    +   ' SELECT TRANSANO , TRANSMES , MIN(ASOCODMOD) ASOCODMOD ,MIN(UPROID) UPROID ,MIN(USEID) USEID, MIN(UPAGOID) UPAGOID, '
    +   '        SUM(TRANSMTO)-SUM(NVL(TRANSMTODEV,0)) MTO '
    +   ' FROM APO301 '
    +   ' WHERE ASOID = ''' + dbecodigo.Text +''' '
    +   ' GROUP BY TRANSANO , TRANSMES '
    +   ' ) X1 , '
    +   ' ( '
    +   ' SELECT TRANSANO , TRANSMES , MIN(ASOCODMOD) ASOCODMOD ,MIN(UPROID) UPROID ,MIN(USEID) USEID, MIN(UPAGOID) UPAGOID, '
    +   '        SUM(TRANSMTO)-SUM(NVL(TRANSMTODEV,0)) MTO '
    +   ' FROM APO301 '
    +   ' WHERE ASOID = ''' + dbeCodigo2.Text + ''' '
    +   ' GROUP BY TRANSANO , TRANSMES '
    +   ' ) X2 '
    +   ' WHERE X2.TRANSANO = X1.TRANSANO(+) '
    +   '   AND X2.TRANSMES = X1.TRANSMES(+) '
    +   '   AND X1.TRANSANO IS NULL '
    +   ' ORDER BY 1 , 2 ' ;

    dm1.cdsQry.Close ;
    dm1.cdsQry.DataRequest(sSQL);
    dm1.cdsQry.Open  ;

    if dm1.cdsQry.RecordCount = 0 then
       Raise Exception.Create('No existen Datos por Mostrar para este Asociado') ;

    ppDBPipeline1.DataSource := dm1.dsQry ;

    pplblNombre1 . Caption  := dbeApeNom.Text ;
    pplblCodMod1 . Caption  := dbeCodMod.Text ;
    pplblAsoid1  . Caption  := dbeCodigo.Text ;
    pplblDNI1    . Caption  := dbeDNI.Text ;
    pplblNombre2 . Caption  := dbeApeNom2.Text ;
    pplblCodMod2 . Caption  := dbeCodMod2.Text ;
    pplblAsoid2  . Caption  := dbeCodigo2.Text ;
    pplblDNI2    . Caption  := dbeDNI2.Text ;

    ppReport1.Print ;
    ppDBPipeline1.DataSource := nil ;

end;

procedure TFUnificacion.cdsComparacionCHECK1Change(Sender: TField);
begin
  cdsComparacion.FieldByName('CHECK2').OnChange := nil ;
  if cdsComparacion.FieldBYName('CHECK1').AsString = 'S' then
     cdsComparacion.FieldBYName('CHECK2').AsString := 'N'
  else
     cdsComparacion.FieldBYName('CHECK2').AsString := 'S';
  cdsComparacion.FieldByName('CHECK2').OnChange := cdsComparacionCHECK2Change ;
  cdsComparacion.post ;

   If (cdsComparacion.FieldByName('CHECK1').AsString <>'S') and (cdsComparacion.FieldByName('CAMPO').AsString='ASOID') Then
     Begin
       MessageDlg('No se debe mover [Cód. Derrama]', mtWarning, [mbOk], 0);
       cdsComparacion.Edit;
       cdsComparacion.FieldByName('CHECK1').AsString := 'S';
       Exit
    End;
end;

procedure TFUnificacion.cdsComparacionCHECK2Change(Sender: TField);
begin
  cdsComparacion.FieldByName('CHECK1').OnChange := nil ;
  if cdsComparacion.FieldBYName('CHECK2').AsString = 'S' then
     cdsComparacion.FieldBYName('CHECK1').AsString := 'N'
  else
     cdsComparacion.FieldBYName('CHECK1').AsString := 'S' ;
  cdsComparacion.FieldByName('CHECK1').OnChange := cdsComparacionCHECK1Change ;
  cdsComparacion.post ;

   If (cdsComparacion.FieldByName('CHECK1').AsString <>'S') and (cdsComparacion.FieldByName('CAMPO').AsString='ASOID') Then
     Begin
       MessageDlg('No se debe mover [Cód. Derrama]', mtWarning, [mbOk], 0);
       cdsComparacion.Edit;
       cdsComparacion.FieldByName('CHECK1').AsString := 'S';
        Exit
    End;
end;

procedure TFUnificacion.PonEventos;
begin
   cdsComparacion.FieldByName('CHECK1').OnChange := cdsComparacionCHECK1Change ;
   cdsComparacion.FieldByName('CHECK2').OnChange := cdsComparacionCHECK2Change ;
end;

procedure TFUnificacion.QuitaEventos;
begin
   cdsComparacion.FieldByName('CHECK1').OnChange := nil ;
   cdsComparacion.FieldByName('CHECK2').OnChange := nil ;
end;

procedure TFUnificacion.ppReport1PreviewFormCreate(Sender: TObject);
begin
  ppReport1.PreviewForm.WindowState := wsMaximized;
  TppViewer(ppReport1.PreviewForm.Viewer).ZoomSetting := zs100Percent;
end;

procedure TFUnificacion.z2bbtnUnificarClick(Sender: TObject);
var
   sSQL , sSQL2, xSql,xCodReg : String ;
   cdsClone1 , cdsClone2 : TwwClientDataset ;
   sDato, xAsoid1, xAsoid2, xAsoIdNue : String ;
   i:integer ;
begin

   cdsComparacion.First;
   If cdsComparacion.FieldByName('CHECK1').AsString <>'S' Then
      Begin
         MessageDlg('No se debe mover [Cód. Derrama]', mtWarning, [mbOk], 0);
         cdsComparacion.Edit;
         cdsComparacion.FieldByName('CHECK1').AsString := 'S';
         Exit
      End;

   xAsoid1 := cdsAsociado1.FieldByName('ASOID').AsString;
   xAsoid2 := cdsAsociado2.FieldByName('ASOID').AsString;

   If verificaunicacion(xAsoid1, xAsoid2) = False Then
   Begin
     MessageDlg('NO SE PUEDE UNIFICAR : '+#13+'Verifique las inconsistencias', mtWarning, [mbOk], 0);
     Exit;
   End;

   // Proceso de verificación de la unificación
   // Guardando registros a Unificar antes de la unificación
   xCodReg:=Dm1.CodReg;
   Dm1.Registro_Aud(xAsoid1,'2',xCodReg);
   Dm1.Registro_Aud(xAsoid2,'2',xCodReg);
   //Borra Temporal
   sSQL2 := 'BEGIN DB2ADMIN.PCK_SOL.SP_BORRA_TEMPORAL ; END ;' ;
   dm1.DCOM1.AppServer.Ejecutasql(sSQL2);
   DM1.cdsqry4.close;
   DM1.cdsqry4.DataRequest( 'SELECT * FROM TMP003' );
   DM1.cdsqry4.Open;
   if dm1.cdsQry4.FieldByName('CODIGO_ERROR').AsString = '0' then
   begin
     with DM1.cdsQry do
     begin
       close;
       DataRequest('SELECT * FROM TMP002');
       open;
     end;
   end
   else
     Raise Exception.Create('Error en Configuración Inicial de Unificación');
   sSQL := '';
   if cdsComparacion.RecordCount > 0 then
   begin
     //Construir SQL de actualización
     cdsClone1 := TwwClientDataset.Create(self);
     cdsClone2 := TwwClientDataset.Create(self);
     cdsClone1.CloneCursor(cdsComparacion,True);
     cdsClone2.CloneCursor(cdsComparacion,True);
     //Construir SQL de Actualización de una Tabla
     i:=1;
     sSQL := 'UPDATE APO201 SET ';
     cdsClone1.First;
     while not cdsClone1.eof do
     begin
       dm1.cdsqry3.Locate('TABLA;CAMPO',
       VarArrayOf([cdsClone1.FieldByName('TABLA').ASString,cdsClone1.FieldByName('CAMPO').ASString]),[]);
       if cdsClone1.FieldByName('CAMPO').AsString <> 'ASOID' then
       begin
         if DM1.cdsQry3.FieldByName('CAMPO_INDICADOR').IsNull then
         begin
           if cdsClone1.FieldByName('CHECK1').AsString = 'S' then sDato := cdsClone1.FieldByName('DATO1ACT').AsString else sDato := cdsClone1.FieldByName('DATO2ACT').AsString ;
              if dm1.cdsQry3.FieldByName('TIPO').IsNull then
                  sSQL := sSQL + cdsClone1.FieldByName('CAMPO').AsString + '='''+ sDato + ''' , '
              else
                  sSQL := sSQL + cdsClone1.FieldByName('CAMPO').AsString + '=TO_DATE('''+ sDato + ''',''DD/MM/YYYY'') , ';
              inc(i);
         end
         else
         begin
           if cdsClone2.Locate('CAMPO',VarArrayOf([DM1.cdsQry3.FieldByName('CAMPO_INDICADOR').ASString]),[]) then
           begin
             if cdsClone2.FieldByName('CHECK1').AsString = 'S' then
                sDato := cdsClone1.FieldByName('DATO1ACT').AsString
             else
                sDato := cdsClone1.FieldByName('DATO2ACT').AsString ;
                if dm1.cdsQry3.FieldByName('TIPO').IsNull then
                   sSQL := sSQL + cdsClone1.FieldByName('CAMPO').AsString + '='''+ sDato + ''' , '
                else
                   sSQL := sSQL + cdsClone1.FieldByName('CAMPO').AsString + '=TO_DATE('''+ sDato + ''',''DD/MM/YYYY'') , ' ;
                inc(i);
           end ;
         end ;
       end ;
       cdsClone1.Next ;
       if i = 3 then
       begin
         sSQL := copy(sSQL,1,length(sSQL) - 2 )+' WHERE ASOID = ''' + dbeCodigo.Text + ''' ' ;
         dm1.cdsqry.Insert;
         dm1.cdsqry.FieldBYName('VARIABLE').AsString := sSQL ;
         dm1.cdsqry.Post ;
         i:= 1 ;
         sSQL := 'UPDATE APO201 SET ' ;
       end ;
     end ;
     sSQL := copy(sSQL,1,length(sSQL) - 2 )+ ' WHERE ASOID = ''' + dbeCodigo.Text + ''' ';
     cdsClone1.Free ;
     cdsClone2.Free ;
     if dm1.cdsqry.ApplyUpdates(0) > 0 then
        Raise exception.Create('No se pudo Realizar la Unificación')
     else
     begin
       sSQL2 := 'BEGIN DB2ADMIN.PCK_SOL.SP_UNIFICA(''' + dbeCodigo.Text +''','''+ dbeCodigo2.Text +''',''' + DM1.wUsuario +'''); END ;' ;
       dm1.DCOM1.AppServer.Ejecutasql(sSQL2) ;
       DM1.cdsqry4.close ;
       DM1.cdsqry4.DataRequest( 'SELECT * FROM TMP003' );
       DM1.cdsqry4.Open ;
       if dm1.cdsQry4.FieldByName('CODIGO_ERROR').AsString = '0' then
       Begin
         Dm1.Registro_Aud(xAsoid1,'2',xCodReg);
         MessageDlg('Unificación Exitosa', mtInformation, [mbOK], 0);
         ImagAso1.Visible := False;
         ImagAso2.Visible := False;
       End
       else
         Raise exception.Create('No se pudo Realizar la Unificación');
      end;
     z2bbtnNuevo.OnClick(z2bbtnNuevo);
   end ;
   //Actualizar Tablas relacionadas
end;

//Inicio: DPP_201202_ASO
//Se quita la carga de imagen por FTP
{
procedure TFUnificacion.CargaFoto(IdFoto, dato: String);
var RemoteTxt, LocalTxt,xFtp:String;
    IniFile : TIniFile;
begin
  if dato = '1' Then ImagAso1.Visible := True;
  if dato = '2' Then ImagAso2.Visible := True;

  IniFile:=TIniFile.Create('C:\SOLExes\SOLConf.ini'); xFtp:=IniFile.ReadString('FOTOS','FTP','');
  IDFTP1.Host := xFtp; IDFTP1.Port := 21; IDFTP1.ReadTimeout := 5000; IDFTP1.UserName := 'imagen'; IDFTP1.Password := 'imagen';
  Try
    IDFTP1.Connect;
    If Trim(IdFoto) <> '' then
    Begin
      Try
        RemoteTxt := '/data02/imagen/jpeg/JPEG'+copy(IdFoto,1,1)+'/'+IdFoto+'.jpg';
        LocalTxt  :=  'C:\SolExes\'+IdFoto+'.jpg';
        DeleteFile(LocalTxt);
        IdFTP1.Get(RemoteTxt, LocalTxt, False);
        If dato = '1' Then ImagAso1.Picture.LoadFromFile(LocalTxt);
        If dato = '2' Then ImagAso2.Picture.LoadFromFile(LocalTxt);
      Except
      End ;
    End
    Else
    Begin
      Try
        RemoteTxt := '/data02/imagen/jpeg/SINFOTO.jpg';
        LocalTxt  :=  'C:\SolExes\SINFOTO.Jpg';
        DeleteFile(LocalTxt);
        IdFTP1.Get(RemoteTxt, LocalTxt, False);
        If dato = '1' Then ImagAso1.Picture.LoadFromFile(LocalTxt);
        If dato = '2' Then ImagAso2.Picture.LoadFromFile(LocalTxt);
      Except
      End ;
    End;
  Except
    MessageDlg('Error al Intentar Conectar Al Servidor De Fotos (RS/6000) ...!', mtError, [mbOk], 0);
  End;
  idFTP1.Disconnect;
end;}
//Final: DPP_201202_ASO


function TFUnificacion.verificaunicacion(asoid01, asoid02: String): Boolean;
Var apellido01, verificareniec01, sexo01, teleahorro01, sitcta01, tipoasociado01 :String;
    apellido02, verificareniec02, sexo02, teleahorro02, sitcta02, tipoasociado02 :String;
    prestamos02, liquidacion02 : Integer;
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
  // Modificaciones por Fallecimiento del asociado
    xSql,xPasa,fallecido01,fallecido02: String;
// Fin: HPP_201003_ASO
begin

// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
//  xSql := 'SELECT ASOAPEPATDNI APELLIDO, ASONCTA, SITCTA, ASOSEXO, ACTARCREN, ASOTIPID FROM APO201 WHERE ASOID = '+QuotedStr(asoid01);
  xSql := 'SELECT ASOAPEPATDNI APELLIDO, ASONCTA, SITCTA, ASOSEXO, ACTARCREN, ASOTIPID, FALLECIDO FROM APO201 WHERE ASOID = '+QuotedStr(asoid01);
// Fin: HPP_201003_ASO
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  apellido01      := DM1.cdsQry.FieldByName('APELLIDO').AsString;
  sexo01          := DM1.cdsQry.FieldByName('ASOSEXO').AsString;
  teleahorro01    := DM1.cdsQry.FieldByName('ASONCTA').AsString;
  sitcta01        := DM1.cdsQry.FieldByName('SITCTA').AsString;
  verificareniec01:= DM1.cdsQry.FieldByName('ACTARCREN').AsString;
  tipoasociado01  := DM1.cdsQry.FieldByName('ASOTIPID').AsString;
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Modificaciones por Fallecimiento del asociado
  fallecido01  := DM1.cdsQry.FieldByName('FALLECIDO').AsString;
// Fin: HPP_201003_ASO

// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
//  xSql := 'SELECT ASOAPEPATDNI APELLIDO, ASONCTA, SITCTA, ASOSEXO, ACTARCREN, ASOTIPID FROM APO201 WHERE ASOID = '+QuotedStr(asoid02);
  xSql := 'SELECT ASOAPEPATDNI APELLIDO, ASONCTA, SITCTA, ASOSEXO, ACTARCREN, ASOTIPID, FALLECIDO FROM APO201 WHERE ASOID = '+QuotedStr(asoid02);
// Fin: HPP_201003_ASO
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  apellido02      := DM1.cdsQry.FieldByName('APELLIDO').AsString;
  sexo02          := DM1.cdsQry.FieldByName('ASOSEXO').AsString;
  teleahorro02    := DM1.cdsQry.FieldByName('ASONCTA').AsString;
  sitcta02        := DM1.cdsQry.FieldByName('SITCTA').AsString;
  verificareniec02:= DM1.cdsQry.FieldByName('ACTARCREN').AsString;
  tipoasociado02  := DM1.cdsQry.FieldByName('ASOTIPID').AsString;
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
// Modificaciones por Fallecimiento del asociado
  fallecido02  := DM1.cdsQry.FieldByName('FALLECIDO').AsString;
// Fin: HPP_201003_ASO

  //Acceso solo a nivel de jefatura
  If Copy(DM1.CrgArea(DM1.wUsuario),6,2) <> '03' Then
  Begin
    // Si los dos apellidos no son iguales => No pasa
    If Copy(apellido02,1,1)<> '-' Then
    Begin
      If Not VerificaCaracterXCaractar(apellido01,apellido02,'1') Then
      //If (apellido01 <> apellido02) Then
      Begin
        MessageDlg('NO SE PUEDE UNIFICAR : '+#13+'El Apellido Paterno no es el mismo', mtWarning, [mbOk], 0);
        Result := False;
        Exit;
      End;
    End;
  End;

// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
  // Modificaciones por Fallecimiento del asociado
  //IF fallecido01 <> fallecido02 THEN
  IF ((fallecido01='S') or (fallecido02='S')) THEN
  BEGIN
    //MessageDlg('Ambos Asociados deben estar Fallecidos o Activos', mtWarning, [mbOk], 0);
    MessageDlg('Ambos Asociados deben ser Activos para realizar la Unificación.', mtWarning, [mbOk], 0);
    Result := False;
    Exit;
  END;
// Fin: HPP_201003_ASO

  // El segundo asociado esta verificado por reniec No pasa
  If (verificareniec02 = 'S') Then
  Begin
    MessageDlg('NO SE PUEDE UNIFICAR : '#13+'El segundo Asociado a unificar se encuentra verificado por RENIEC', mtWarning, [mbOk], 0);
    Result := False;
    Exit;
  End;

{  // Si los dos estan verificados por reniec => No pasa
  If (verificareniec01 = 'S') And (verificareniec02 = 'S') Then
  Begin
    MessageDlg('No se puede Unificar : '#13+'Los dos Asociados se encuentran verificados por RENIEC', mtError, [mbOk], 0);
    Result := False;
    Exit;
  End;  }

  // Si tipos de asociados son diferentes


  If Length(Trim(tipoasociado02))=0 Then
  Else
     Begin
        If tipoasociado01='DO' Then
           Begin
              If tipoasociado02='CE' Then
                 Begin
                   MessageDlg('NO SE PUEDE UNIFICAR : '#13+'Los Tipos de Asociados son Diferentes', mtWarning, [mbOk], 0);
                   Result := False;
                   Exit;
                 End;
           End;

        If tipoasociado01='CE' Then
           Begin
              If tipoasociado02='DO' Then
                 Begin
                   MessageDlg('NO SE PUEDE UNIFICAR : '#13+'Los Tipos de Asociados son Diferentes', mtWarning, [mbOk], 0);
                   Result := False;
                   Exit;
                 End;
           End;


     End;


  // Si tienen diferentes cuentas de ahorros
  xPasa:='S';
  If Length(Trim(teleahorro02))>0 Then
     Begin
        If sitcta02='A' Then xPasa:='N' Else If sitcta02='V' Then xPasa:='N';
     End;
  If xPasa='N' Then
     Begin
        MessageDlg('NO SE PUEDE UNIFICAR : '#13+'El Segundo Asociado a Unificar tiene Cuenta de Ahorros Activa', mtWarning, [mbOk], 0);
        Result := False;
        Exit;
     End;

  // Si tienen diferentes sexos
  If (Length(Trim(sexo01))=0) OR (Length(Trim(sexo02))=0) Then
  Else
     Begin
         If sexo01='M' Then
            Begin
                If sexo02='F' Then
                   Begin
                      MessageDlg('NO SE PUEDE UNIFICAR : '#13+'Los Asociados a Unificar son de diferente Sexo', mtWarning, [mbOk], 0);
                      Result := False;
                      Exit;
                   End;
            End;

         If sexo01='F' Then
            Begin
                If sexo02='M' Then
                   Begin
                      MessageDlg('NO SE PUEDE UNIFICAR : '#13+'Los Asociados a Unificar son de diferente Sexo', mtWarning, [mbOk], 0);
                      Result := False;
                      Exit;
                   End;
            End;


     End;


 { If ((sexo01 <> sexo02) and (sexo02 <> '')) Then
  Begin
    MessageDlg('NO SE PUEDE UNIFICAR : '#13+'Los Asociados a Unificar son de diferente Sexo', mtWarning, [mbOk], 0);
    Result := False;
    Exit;
  End;
  }

  // Verificando prestamos
  // Si el segundo asociado tiene prestamo

  If DM1.SaldoActual(asoid02,'','X')>0 Then
     Begin
       MessageDlg('NO SE PUEDE UNIFICAR : '#13+'El segundo Asociado a Unificar tiene Prestamos Pendientes de Pago', mtWarning, [mbOk], 0);
       Result := False;
       Exit;
     End;


  // Verificando liquidación
  // Si el segundo asociado tiene liquidación
  liquidacion02 := 0;
  xSql := 'SELECT COUNT(*) CUENTA FROM PVS301 WHERE ASOID = '+QuotedStr(asoid02);
  DM1.cdsQry.Close;
  DM1.cdsQry.DataRequest(xSql);
  DM1.cdsQry.Open;
  liquidacion02 := DM1.cdsQry.FieldByName('CUENTA').AsInteger;
  If liquidacion02 > 0 Then
  Begin
    MessageDlg('NO SE PUEDE UNIFICAR : '+#13+'El segundo Asociado a Unificar tiene Liquidación ', mtWarning, [mbOk], 0);
    Result := False;
    Exit;
  End;

  // Si tienen aportes en comun - Acceso solo a nivel de jefatura
  If Copy(DM1.CrgArea(DM1.wUsuario),6,2) <> '03' Then
  Begin
    xSql := 'SELECT TRANSANO||TRANSMES FROM  APO301 WHERE ASOID = '+QuotedStr(asoid01)
    +' INTERSECT SELECT TRANSANO||TRANSMES FROM  APO301 WHERE ASOID = '+QuotedStr(asoid02);
    DM1.cdsQry.Close;
    DM1.cdsQry.DataRequest(xSql);
    DM1.cdsQry.Open;
    If DM1.cdsQry.RecordCount > 0 Then
    Begin
      MessageDlg('NO SE PUEDE UNFICAR : '+#13+'Los Asociados a Unificar tienen Aportes en el mismo Periodo ', mtWarning, [mbOk], 0);
      Result := False;
      Exit;
    End;
  End;
  Result := True;
  Exit;
End;


//Funcion verifica carater por caracter, segun margen de diferencia pasa.
Function TFUnificacion.VerificaCaracterXCaractar(xCampo1, xCampo2,
  MargeDif:String): Boolean;

var nDifLong,nfor,i,c1,c2,nDif:integer;
    xCampoMayor,xCampoMenor:string;
begin

 //Diferencia entre logitudes (Abs Valor Absoluto)
   nDifLong:= abs(Length(TRim(xCampo1))-Length(Trim(xCampo2)));

 //Cual de los dos campos tiene mayor longitud para el For y para la comparacion
   If  Length(TRim(xCampo1))>Length(TRim(xCampo2)) Then
       Begin
         nfor:=Length(TRim(xCampo1));
         xCampoMayor:=TRim(xCampo1);
         xCampoMenor:=TRim(xCampo2);
       End
   Else If Length(TRim(xCampo2))> Length(TRim(xCampo1)) Then
       Begin
         nfor:=Length(TRim(xCampo2));
         xCampoMayor:=TRim(xCampo2);
         xCampoMenor:=TRim(xCampo1);
       End
   Else
       Begin
         nfor:=Length(TRim(xCampo1));
         xCampoMayor:=TRim(xCampo1);
         xCampoMenor:=TRim(xCampo2);
       End;

   c1:=1;c2:=1;nDif:=0;
   For i:=0 To nfor do
     Begin

       If copy(TRim(xCampoMayor),c1,1)<>copy(TRim(xCampomenor),c2,1) Then
          Begin
            nDif:=nDif+1;
            If nDifLong>0  Then
               Begin
                 c2:=c2-1;
                 nDiflong:=nDiflong-1;
               End;
          End;
          c1:=c1+1;
          c2:=c2+1;
     End;

    if ndif>StrToInt(MargeDif) Then Result:=False else Result:=True;

end;


end.

