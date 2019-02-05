unit ASO939;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO939A
// Formulario           : fNivUsu
// Fecha de Creación    : 07/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Asignar permisos a usuarios.
//
// SPP_201403_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO
// Actualizaciones      :
// HPC_201403_ASO       : Asignación de niveles de usuario.
// SPP_201404_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO
// HPC_201512_ASO       : Registrar a usuario Liquidador de Beneficios
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdbdatetimepicker, Mask, wwdbedit, wwdblook, Wwdbdlg,
  ExtCtrls, fcButton, fcImgBtn, fcShapeBtn, Grids, Wwdbigrd, Wwdbgrid,
  ComCtrls, Wwdbspin, Db, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, ppDB, ppDBPipe, ppBands, ppStrtch, ppMemo, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppComm, ppRelatv, ppProd, ppReport, Buttons,
  jpeg,IniFiles,DateUtils, DBGrids, ppVar;
  
type
  TfCtrAcceso = class(TForm)
    grpAccesos: TGroupBox;
    Panel1: TPanel;
    edtDesEqpUsr: TEdit;
    grpDatos: TGroupBox;
    dtgUsuarios: TwwDBGrid;
    pUsuario: TPanel;
    lblUsuario: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    lblOrigen: TLabel;
    Label3: TLabel;
    lblNivel: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    dtgAccesos: TwwDBGrid;
    BitSalir: TBitBtn;
    BitIzq: TBitBtn;
    BitDer: TBitBtn;
    dtgOpciones: TwwDBGrid;
    Label7: TLabel;
    dtgCompo: TwwDBGrid;
    Label8: TLabel;
    BitPerfil: TBitBtn;
    dbPeflies: TwwDBLookupCombo;
    Label9: TLabel;
    BitAplica: TBitBtn;
    BitPrint: TBitBtn;
    dblEqUsr: TwwDBLookupCombo;
    ppDBEstCta: TppDBPipeline;
    ppREstCta: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppLine4: TppLine;
    ppLabel6: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLblTitulo: TppLabel;
    ppLine5: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText7: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLine3: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    lblUser: TppLabel;
    lblOrig: TppLabel;
    lblNiv: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    ppLine6: TppLine;
    BitBtn1: TBitBtn;
    ppDBPNiveles: TppDBPipeline;
    ppRNiveles: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppSystemVariable3: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine7: TppLine;
    ppLabel20: TppLabel;
    ppLabel27: TppLabel;
    ppLine8: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLabel30: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppLine9: TppLine;
    //--Inicio: SPP_201404_ASO--//
    bAsignarNivel: TBitBtn;
    //--Fin: SPP_201404_ASO--//
// Inicio HPC_201512_ASO       : Registrar a usuario Liquidador de Beneficios
    btnMarcaPre: TBitBtn;
    //INICIO HPC_201513_ASO
    edtBuscar: TEdit;
    Label10: TLabel;
    //FIN HPC_201513_ASO    
// Fin    HPC_201512_ASO       : Registrar a usuario Liquidador de Beneficios
    procedure dblEqUsrChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dtgUsuariosDblClick(Sender: TObject);
    procedure dtgUsuariosRowChanged(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure BitIzqClick(Sender: TObject);
    procedure BitDerClick(Sender: TObject);
    procedure dtgOpcionesDblClick(Sender: TObject);
    procedure dtgOpcionesDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure dtgOpcionesRowChanged(Sender: TObject);
    procedure BitPerfilClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitPrintClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    // inicio: HPP_201003_ASO
    // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
//--Inicio: SPP_201404_ASO--//
    procedure bAsignarNivelClick(Sender: TObject);
//--Fin: SPP_201404_ASO--//
    // Fin: HPP_201003_ASO
// Inicio HPC_201512_ASO       : Registrar a usuario Liquidador de Beneficios
    procedure btnMarcaPreClick(Sender: TObject);
    //INICIO HPC_201513_ASO
    procedure edtBuscarChange(Sender: TObject);
    //FIN HPC_201513_ASO
// Fin  HPC_201512_ASO       : Registrar a usuario Liquidador de Beneficios

  private
    { Private declarations }
    procedure LimpiaGrids;
    procedure CargaUser;
    procedure CargaAccesos(xUsuario:String);
    procedure CargaUsrAccesos;

  public
    { Public declarations }
  end;

var
  fCtrAcceso: TfCtrAcceso;

implementation

//--Inicio: SPP_201404_ASO--//
uses ASODM, ASO940, ASO939A;
//--Fin: SPP_201404_ASO--//
{$R *.dfm}

procedure TfCtrAcceso.dblEqUsrChange(Sender: TObject);
var xSQL:String;
begin
 If DM1.cdsConsulta.Locate('MODULOID',VarArrayof([dblEqUsr.Text]),[]) Then
      Begin
        edtDesEqpUsr.Text  := DM1.cdsConsulta.Fieldbyname('AREADES').AsString ;
 //       xSQL:='SELECT USERID,USERNOM,AREA,ORIGEN,OFDESNOM,NIVEL FROM USERTABLE A ,APO110 B WHERE AREA='+QuotedStr(Trim(dblEqUsr.Text))+' AND A.ORIGEN=B.OFDESID AND A.NIVEL IS NOT NULL  ORDER BY USERID ';
// Inicio HPC_201512_ASO       : Registrar a usuario Liquidador de Beneficios
         //xSQL:='SELECT A.USERID,A.USERNOM,AREA,ORIGEN,OFDESNOM,NIVEL FROM USERTABLE A ,APO110 B WHERE  A.ORIGEN=B.OFDESID AND EXISTS (SELECT USERID,GRUPOID FROM TGE007 WHERE A.USERID=USERID AND GRUPOID=''GRPMANASO'') AND A.NIVEL IS NOT NULL  ORDER BY USERID ';
        // INICIO HPC_201513_ASO
         xSQL:='SELECT A.USERID,UPPER(A.USERNOM) USERNOM,AREA,ORIGEN,OFDESNOM,NIVEL, C.CTLFAC FROM USERTABLE A ,APO110 B, TGE006 C '
              + 'WHERE  A.ORIGEN=B.OFDESID AND EXISTS (SELECT USERID,GRUPOID FROM TGE007 WHERE A.USERID=USERID AND GRUPOID=''GRPMANASO'') AND A.NIVEL IS NOT NULL '
              +  ' AND A.USERID = C.USERID(+) '
              + 'ORDER BY USERID ';
        // FIN HPC_201513_ASO
// Fin HPC_201512_ASO       : Registrar a usuario Liquidador de Beneficios
        DM1.cdsUsesX.Close;
        DM1.cdsUsesX.DataRequest(xSQL);
        DM1.cdsUsesX.Open;
        If DM1.cdsUsesX.RecordCount > 0 Then CargaUser;
      End
   Else
      Begin
        If Length(dblEqUsr.Text) <> 3 then
           Begin
              Beep;
              edtDesEqpUsr.Text  :='';   LimpiaGrids;
           End;
      End;

end;

procedure TfCtrAcceso.LimpiaGrids;
var xSQL:String;
begin
  xSQL:='SELECT USERID,USERNOM,AREA,ORIGEN,OFDESNOM,NIVEL FROM USERTABLE A ,APO110 B WHERE AREA='+QuotedStr('@#$')+' '+
        'AND A.ORIGEN=B.OFDESID AND A.NIVEL IS NOT NULL ORDER BY USERID ';
  DM1.cdsUsesX.Close;  DM1.cdsUsesX.DataRequest(xSQL); DM1.cdsUsesX.Open;

  xSQL:='SELECT A.CAMPO CAMPO,A.COMPONENTE COMPONENTE,CAMPODES FROM '+
        'SIS000 A,SIS001 B WHERE A.COMPONENTE=B.COMPONENTE AND A.USERID='+QuotedStr('@#%^!@*');
  DM1.cdsTCredito.Close;   DM1.cdsTCredito.DataRequest(xSQL);   DM1.cdsTCredito.Open;


end;

procedure TfCtrAcceso.FormActivate(Sender: TObject);
begin
   LimpiaGrids;
   dblEqUsr.OnChange(dblEqUsr);
end;

procedure TfCtrAcceso.dtgUsuariosDblClick(Sender: TObject);
begin
   CargaUser;
end;

procedure TfCtrAcceso.CargaUser;
begin
lblUsuario.Caption:=DM1.cdsUsesX.Fieldbyname('USERID').AsString+' - '+DM1.cdsUsesX.Fieldbyname('USERNOM').AsString;
lblOrigen.Caption:=DM1.cdsUsesX.Fieldbyname('OFDESNOM').AsString;
lblNivel.Caption := DM1.RecuperaDatos('CRE800','NIVELID',DM1.cdsUsesX.Fieldbyname('NIVEL').AsString,'NIVELDES') ;
CargaAccesos(DM1.cdsUsesX.Fieldbyname('USERID').AsString);
end;

procedure TfCtrAcceso.dtgUsuariosRowChanged(Sender: TObject);
begin
CargaUser;
end;

procedure TfCtrAcceso.CargaAccesos(xUsuario: String);
var xSQL:String;
begin
xSQL:='SELECT A.USERID,A.CAMPO CAMPO,A.COMPONENTE COMPONENTE,CAMPODES FROM '+
      'SIS000 A,SIS001 B WHERE A.COMPONENTE=B.COMPONENTE AND A.USERID='+QuotedStr(xUsuario)+' AND B.MODULOID=''ASO'' AND A.MODULOID=''ASO'' ORDER BY CAMPODES';
DM1.cdsTCredito.Close; DM1.cdsTCredito.DataRequest(xSQL); DM1.cdsTCredito.Open;

xSQL:='SELECT A.TABLA,A.CAMPO,A.COMPONENTE,A.CAMPODES,A.GRUPO FROM SIS001 A WHERE A.COMPONENTE IS NOT NULL AND SUBSTR(GRUPO,1,1)='+QuotedStr(Copy(Trim(DM1.cdsPadre.FieldByName('GRUPO').AsString),1,1))+' AND TABLA='+QuotedStr(DM1.cdsPadre.FieldByName('TABLA').AsString)+'  AND MODULOID=''ASO'' AND '+
      'NOT EXISTS (SELECT USERID,COMPONENTE FROM SIS000 WHERE USERID='+QuotedStr(DM1.cdsTCredito.Fieldbyname('USERID').AsString)+' AND A.COMPONENTE=COMPONENTE  AND MODULOID=''ASO'') ORDER BY A.GRUPO';
DM1.cdsEgrCaja.Close; DM1.cdsEgrCaja.DataRequest(xSQL);  DM1.cdsEgrCaja.Open;
end;

procedure TfCtrAcceso.BitSalirClick(Sender: TObject);
begin
   Close;
end;

procedure TfCtrAcceso.BitIzqClick(Sender: TObject);
var xSQL,xGrupo:String;
begin
  If dtgAccesos.DataSource.DataSet.RecordCount=0 Then Exit;
     xSQL:='INSERT INTO SIS004(USERID, TABLA, CAMPO, COMPONENTE, USRAUT, FREG, FRET, USRRET) SELECT USERID, TABLA, CAMPO, COMPONENTE, USRAUT, FREG, SYSDATE,'+QuotedStr(DM1.wUsuario)+' FROM SIS000 WHERE USERID='+QuotedStr(DM1.cdsTCredito.FieldByName('USERID').AsString)+' AND CAMPO='+QuotedStr(DM1.cdsTCredito.FieldByName('CAMPO').AsString)+' AND COMPONENTE='+QuotedStr(DM1.cdsTCredito.FieldByName('COMPONENTE').AsString) ;
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     xGrupo:=Copy(DM1.RecuperaDatos('SIS001','COMPONENTE',DM1.cdsTCredito.FieldByName('COMPONENTE').AsString,'GRUPO'),1,1)+'000' ;  DM1.cdsPadre.Locate('GRUPO', VarArrayOf([Trim(xGrupo)]), [loPartialKey]);
     xSQL:='DELETE FROM SIS000 WHERE USERID='+QuotedStr(DM1.cdsTCredito.FieldByName('USERID').AsString)+' AND CAMPO='+QuotedStr(DM1.cdsTCredito.FieldByName('CAMPO').AsString)+' AND COMPONENTE='+QuotedStr(DM1.cdsTCredito.FieldByName('COMPONENTE').AsString) ;
     DM1.DCOM1.AppServer.EjecutaSql(xSQL);
     CargaAccesos(DM1.cdsUsesX.Fieldbyname('USERID').AsString);

end;

procedure TfCtrAcceso.BitDerClick(Sender: TObject);
var xSQL:String;
begin
If dtgCompo.DataSource.DataSet.RecordCount=0 Then Exit;
If dtgUsuarios.DataSource.DataSet.RecordCount=0 Then Exit;

xSQL:='INSERT INTO SIS000(USERID,TABLA,CAMPO,COMPONENTE,USRAUT,FREG,MODULOID) VALUES ('+QuotedStr(DM1.cdsUsesX.Fieldbyname('USERID').AsString)+','+QuotedStr(DM1.cdsEgrCaja.Fieldbyname('TABLA').AsString)+','+QuotedStr(DM1.cdsEgrCaja.Fieldbyname('CAMPO').AsString)+','+QuotedStr(DM1.cdsEgrCaja.Fieldbyname('COMPONENTE').AsString)+','+QuotedStr(DM1.wUsuario)+',SYSDATE,''ASO'')';
DM1.DCOM1.AppServer.EjecutaSql(xSQL);
CargaAccesos(DM1.cdsUsesX.Fieldbyname('USERID').AsString);
end;

procedure TfCtrAcceso.dtgOpcionesDblClick(Sender: TObject);
begin
CargaUsrAccesos;
end;

procedure TfCtrAcceso.dtgOpcionesDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
 if Field.FieldName = 'TABLA' then
    Begin
      dtgOpciones.Canvas.Font.Color := clRed;
      dtgOpciones.DefaultDrawDataCell(rect,Field,State);
    End;

end;

procedure TfCtrAcceso.CargaUsrAccesos;
var xSQL:String;
begin

If dtgAccesos.DataSource.DataSet.Active Then
   xSQL:='SELECT TABLA,GRUPO,CAMPO,COMPONENTE,CAMPODES FROM SIS001 A WHERE COMPONENTE IS NOT NULL AND SUBSTR(GRUPO,1,1)='+QuotedStr(Copy(Trim(DM1.cdsPadre.FieldByName('GRUPO').AsString),1,1))+' AND TABLA='+QuotedStr(DM1.cdsPadre.FieldByName('TABLA').AsString)+' '+
         'AND NOT EXISTS (SELECT USERID,TABLA,COMPONENTE FROM SIS000 WHERE USERID='+QuotedStr(DM1.cdsUsesx.FieldByName('USERID').AsString)+' AND A.TABLA=TABLA AND A.COMPONENTE=COMPONENTE) ORDER BY GRUPO '
Else
    xSQL:='SELECT TABLA,GRUPO,CAMPO,COMPONENTE,CAMPODES FROM SIS001 WHERE COMPONENTE IS NOT NULL AND SUBSTR(GRUPO,1,1)='+QuotedStr(Copy(Trim(DM1.cdsPadre.FieldByName('GRUPO').AsString),1,1))+' AND TABLA='+QuotedStr(DM1.cdsPadre.FieldByName('TABLA').AsString)+' '+
          'ORDER BY GRUPO';



DM1.cdsEgrCaja.Close; DM1.cdsEgrCaja.DataRequest(xSQL);  DM1.cdsEgrCaja.Open;

end;

procedure TfCtrAcceso.dtgOpcionesRowChanged(Sender: TObject);
begin
CargaUsrAccesos;
end;

procedure TfCtrAcceso.BitPerfilClick(Sender: TObject);
var xSQL:String;
begin
  Try
    fPerfUsuario := TfPerfUsuario.create(self);
    xSQL:='SELECT PERFIL,USUARIO,HREG FROM SIS002 ORDER BY PERFIL';
    DM1.cdsProf.Close;   DM1.cdsProf.DataRequest(xSQL);   DM1.cdsProf.Open;
    If DM1.cdsProf.RecordCount>0 Then
       fPerfUsuario.CargaAccesosPerf(DM1.cdsProf.FieldByName('PERFIL').AsString);
    fPerfUsuario.Showmodal;
  Finally
    fPerfUsuario.free;
  End;

end;

procedure TfCtrAcceso.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 then
  Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

procedure TfCtrAcceso.BitPrintClick(Sender: TObject);
var xSQL:String;
begin
   If dtgAccesos.DataSource.DataSet.RecordCount=0 Then Exit;
   xSQL:='SELECT A.USERID,A.TABLA,B.CAMPODES,A.USRAUT,FREG FROM SIS000 A,SIS001 B WHERE A.USERID='+QuotedStr(DM1.cdsUsesx.FieldByName('USERID').AsString)+' AND A.TABLA=B.TABLA AND A.CAMPO=B.CAMPO  AND A.COMPONENTE=B.COMPONENTE AND A.MODULOID=''ASO'' ORDER BY TABLA';
   DM1.cdsCEdu.Close;
   DM1.cdsCEdu.DataRequest(xSQL);
   DM1.cdsCEdu.Open;
   If DM1.cdsCEdu.RecordCount > 0 Then
      Begin
          ppLblTitulo.Caption:='DETALLE DE AUTORIZACION DE ACCESO AL : '+DateToStr(DM1.FechaSys);
          lbluser.Caption:= lblUsuario.Caption;
          lblorig.Caption:= lblOrigen.Caption;
          lblniv.Caption:=  lblNivel.Caption;
          ppREstCta.Print;
          ppREstCta.Cancel;
      End;
      DM1.cdsCEdu.Close;
end;

procedure TfCtrAcceso.BitBtn1Click(Sender: TObject);
Var xSql:String;
begin
  xSql := 'SELECT ORIGEN||'' - ''||B.OFDESNOM OFIDES,A.USERID USUARIO,D.USERNOM DESCRIPCION,'
  +' NIVEL||'' - ''||C.NIVELDES NIVELDES'
  +' FROM USERTABLE A, APO110 B,CRE800 C,TGE006 D'
  +' WHERE A.NIVEL IS NOT NULL  AND A.ORIGEN=B.OFDESID(+) AND A.NIVEL=C.NIVELID(+) AND A.USERID=D.USERID(+) AND D.FECEXP IS NULL'
  +' AND A.USERID IN ('
  +' SELECT USERID FROM TGE007 WHERE GRUPOID=''GRPMANASO'') AND A.USERID IN (SELECT USERID FROM SIS000)'
  +' ORDER BY OFIDES, USUARIO, NIVELDES';
  DM1.cdsReporte.Close;
  DM1.cdsReporte.DataRequest(xSql);
  DM1.cdsReporte.Open;
  ppRNiveles.Print;
end;

procedure TfCtrAcceso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';
// fin: HPP_201003_ASO
end;

//--Inicio: SPP_201404_ASO--//
procedure TfCtrAcceso.bAsignarNivelClick(Sender: TObject);
begin
   Try
            fNivUsu := TfNivUsu.create(self);
            fNivUsu.Showmodal;
     Finally
            fNivUsu.free;
     End;
end;
//--Fin: SPP_201404_ASO--//

// Inicio HPC_201512_ASO    : Registrar a usuario Liquidador de Beneficios
procedure TfCtrAcceso.btnMarcaPreClick(Sender: TObject);
var
   xSQL : String;
   bmk  : TBookmark;
begin

   if not ((DM1.cdsUSESx.FieldByName('CTLFAC').AsString='P') OR (DM1.cdsUSESx.FieldByName('CTLFAC').AsString='')) then
   begin
      ShowMessage('Usuario tiene Registrado otra Condición. Preguntar a Sistemas...');
      Exit;
   end;

   bmk:=DM1.cdsUSESx.GetBookmark;
   if DM1.cdsUSESx.FieldByName('CTLFAC').AsString='P' then
      xSQL:='UPDATE TGE006 SET CTLFAC = null '
           + 'WHERE USERID='''+DM1.cdsUSESx.FieldByName('USERID').AsString+''''
   else
      xSQL:='UPDATE TGE006 SET CTLFAC = ''P'' '
           + 'WHERE USERID='''+DM1.cdsUSESx.FieldByName('USERID').AsString+'''';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSQL);
   DM1.cdsQry.Execute;

   DM1.cdsUSESx.Close;
   DM1.cdsUSESx.Open;

   try
     DM1.cdsUSESx.GotoBookmark(bmk);
     DM1.cdsUSESx.FreeBookmark(bmk);
   except
   end;
end;
// Fin HPC_201512_ASO       : Registrar a usuario Liquidador de Beneficios

//INICIO HPC_201513_ASO
(******************************************************************************)
procedure TfCtrAcceso.edtBuscarChange(Sender: TObject);
begin
  WITH DM1.cdsUsesX DO BEGIN
    IF RecordCount = 0 THEN exit;
    IF edtBuscar.Text <> '' THEN
      IF NOT Locate('USERID', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]) THEN
         Locate('USERNOM', VarArrayOf([TRIM(edtBuscar.Text)]), [loPartialKey]);
  END;
end;
(******************************************************************************)
//FIN HPC_201513_ASO
end.
