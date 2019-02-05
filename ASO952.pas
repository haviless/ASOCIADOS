// Inicio Uso Estándares:	01/08/2011
// Unidad		            :	ASO952.pas
// Formulario		        :	fMenObs
// Fecha de Creación	  : 2009	
// Autor			          :	Equipo de sistemas
// Objetivo		          : Validación de registro

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// SPP_201403_ASO : Se modifica el client CdsCEdu para corregir error al momento de abrir el client.
// SPP_201403_ASO : Se realiza el pase a producción sobre el HPC_201402_ASO.
// HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

unit ASO952;

interface

uses
 { Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons; }
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Wwdbigrd, Wwdbgrid, DB,
  DBClient, ppCtrls, ppBands, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, ExtCtrls ;

type
  TfMenObs = class(TForm)
    GroupBox1: TGroupBox;
    mObsDat: TMemo;
    BitGrabar: TBitBtn;
    BitSalir: TBitBtn;
    procedure BitSalirClick(Sender: TObject);
    procedure BitGrabarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenObs: TfMenObs;

implementation
// Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
uses ASODM, ASO951, ASO952a;
// Fin HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
{$R *.dfm}

procedure TfMenObs.BitSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TfMenObs.BitGrabarClick(Sender: TObject);
var 
	// Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
	xSQL,xMessage:String;
	// Fin HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    xRegistro: TBookmark;
begin

    // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    xMessage:='Doy Fe de la Validez de los Datos Laborales dado que he Revisado y Validado los Documentos'+ #13#10+
              '            que Sustentan(Boleta y/o Movimientos Bancarios) en la Planilla de Pagos Vigente';
    fMensaje := TfMensaje.create(self);
    fMensaje.MessageConfirmation.Caption := xMessage;
    fMensaje.Showmodal;
    If fMensaje.bConfirmado  Then
    Begin
    // Fin HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion

    // Inicio: SPP_201403_ASO
    // xRegistro:=DM1.cdsCEdu.GetBookmark;
    xRegistro:=DM1.cdsValRegAso.GetBookmark;
    // Fin: SPP_201403_ASO

    If DM1.xSgr='APR' Then
       Begin
         // Inicio: SPP_201403_ASO
         // xSQL:='UPDATE ASO003 SET IDESTADO=''02'',OBSERVACION='+QuotedStr(Copy(Trim(mObsDat.Text),1,250))+',USRVERIFICA='+QuotedStr(DM1.wUsuario)+',FHVERIFICA=SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsCEdu.fieldbyname('ASOID').AsString);
         // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         //xSQL:='UPDATE ASO003 SET IDESTADO=''02'',OBSERVACION='+QuotedStr(Copy(Trim(mObsDat.Text),1,250))+',USRVERIFICA='+QuotedStr(DM1.wUsuario)+',FHVERIFICA=SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsValRegAso.fieldbyname('ASOID').AsString)+' AND IDESTADO IS NULL';;
         xSQL:='UPDATE ASO003 SET IDESTADO=''02'',OBSERVACION='+QuotedStr(Copy(Trim(mObsDat.Text +' - '+xMessage ),1,250))+',USRVERIFICA='+QuotedStr(DM1.wUsuario)+',FHVERIFICA=SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsValRegAso.fieldbyname('ASOID').AsString)+' AND ITEM = '+DM1.cdsValRegAso.fieldbyname('ITEM').AsString;
         // Fin HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         // Fin: SPP_201403_ASO
       End
    Else If DM1.xSgr='DEN' Then
       Begin
         // Inicio: SPP_201403_ASO
         // xSQL:='UPDATE ASO003 SET IDESTADO=''03'',OBSERVACION='+QuotedStr(Copy(Trim(mObsDat.Text),1,250))+',USRVERIFICA='+QuotedStr(DM1.wUsuario)+',FHVERIFICA=SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsCEdu.fieldbyname('ASOID').AsString);
         // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         //xSQL:='UPDATE ASO003 SET IDESTADO=''03'',OBSERVACION='+QuotedStr(Copy(Trim(mObsDat.Text),1,250))+',USRVERIFICA='+QuotedStr(DM1.wUsuario)+',FHVERIFICA=SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsValRegAso.fieldbyname('ASOID').AsString)+' AND IDESTADO IS NULL';;
         xSQL:='UPDATE ASO003 SET IDESTADO=''03'',OBSERVACION='+QuotedStr(Copy(Trim(mObsDat.Text),1,250))+',USRVERIFICA='+QuotedStr(DM1.wUsuario)+',FHVERIFICA=SYSDATE WHERE ASOID='+QuotedStr(DM1.cdsValRegAso.fieldbyname('ASOID').AsString)+' AND ITEM = '+DM1.cdsValRegAso.fieldbyname('ITEM').AsString;
         // Fin HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
         // Fin: SPP_201403_ASO
       End;
       DM1.DCOM1.AppServer.EjecutaSql(xSQL);
    If DM1.xSgr='APR' Then
       Begin
         // Inicio: SPP_201403_ASO
         // xSQL:='UPDATE APO201 SET REGVERIF=''S'' WHERE ASOID='+QuotedStr(Trim(DM1.cdsCEdu.fieldbyname('ASOID').AsString));
         xSQL:='UPDATE APO201 SET REGVERIF=''S'' WHERE ASOID='+QuotedStr(Trim(DM1.cdsValRegAso.fieldbyname('ASOID').AsString));
         // Fin: SPP_201403_ASO
          DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       End;
       // Inicio HPC_201701_ASO  : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
       If (DM1.xSgr='APR') AND (DM1.cdsValRegAso.FieldByName('ASOAPTSER').AsString = 'S') Then
       Begin
         xSQL:='UPDATE APO201 SET ASOAPTSER=''S'' WHERE ASOID='+QuotedStr(Trim(DM1.cdsValRegAso.fieldbyname('ASOID').AsString));
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
       End;
       // Fin HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
      fValRegNue.MstGrid;
      // Inicio: SPP_201403_ASO
      // DM1.cdsCEdu.GotoBookmark(xRegistro);
      DM1.cdsValRegAso.GotoBookmark(xRegistro);
      // Fin: SPP_201403_ASO
      Close;
    // Inicio HPC_201701_ASO : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
    End;
    // Fin HPC_201701_ASO   : Reglas de control al ingresar resolucion / implementacion codigo de prestacion
end;

end.
