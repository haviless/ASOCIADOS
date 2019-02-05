unit ASO201A;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO201A
// Formulario           : fAsignacionResponsable
// Fecha de Creación    : 07/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Asignacion de responsable de la cartera asignada.  
// Actualizaciones      :
// SPP_201404_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO
// HPC_201412_ASO       : Se graba el tipo de ubicacoin de la asignacion.	
// SPP_201407_ASO       : Se realiza el pase a producción a partir del HPC_201412_ASO.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, wwdblook, Wwdbdlg, Buttons;

type
  TfAsignacionResponsable = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    dblcdResponsable: TwwDBLookupComboDlg;
    medesResponsable: TMaskEdit;
    GroupBox2: TGroupBox;
    rbAsesoria: TRadioButton;
    rbCampana: TRadioButton;
    Label2: TLabel;
    bAsignar: TBitBtn;
    bSalir: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure bSalirClick(Sender: TObject);
    procedure rbAsesoriaClick(Sender: TObject);
    procedure rbCampanaClick(Sender: TObject);
    procedure bAsignarClick(Sender: TObject);
    procedure dblcdResponsableChange(Sender: TObject);
    procedure AsignaBloque;
    procedure AsignaUno;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAsignacionResponsable: TfAsignacionResponsable;
  Var xTipoGest :String;
implementation
uses ASODM, ASO201, Wwdbgrid, Wwdbigrd, DB;
{$R *.dfm}

procedure TfAsignacionResponsable.FormActivate(Sender: TObject);
Var xSql:String;
begin
   //--Llena Combo Responsable--//
   xSql := ' SELECT DISTINCT O.USERID,T.USERNOM FROM ASO_NIV_USU_OTO O   '
            +'   INNER JOIN TGE006 T ON O.USERID=T.USERID  '
            +'   WHERE O.USERNIV=''N1'' --ASESORES '  ;
   DM1.cdsResponsable.Close;
   DM1.cdsResponsable.DataRequest(xSql);
   DM1.cdsResponsable.Open;
   dblcdResponsable.LookupTable := DM1.cdsResponsable;
   dblcdResponsable.LookupField := 'USERID';
   dblcdResponsable.Selected.Clear;
   dblcdResponsable.Selected.Add('USERID'#9'2'#9'UserId'#9#9);
   dblcdResponsable.Selected.Add('USERNOM'#9'15'#9'Nombre'#9#9);

   //--Valores Iniciales--//
   rbAsesoria.Checked:=true;
   xTipoGest:='1'; //Asesoria
end;


procedure TfAsignacionResponsable.bSalirClick(Sender: TObject);
begin
        Close;
end;

procedure TfAsignacionResponsable.rbAsesoriaClick(Sender: TObject);
begin
        xTipoGest:='1'; //Asesoria
end;

procedure TfAsignacionResponsable.rbCampanaClick(Sender: TObject);
begin
        xTipoGest:='2';   //Campaña
end;

procedure TfAsignacionResponsable.bAsignarClick(Sender: TObject);
begin
        if aso201.xflg=1 then
        begin
             Screen.Cursor := crHourGlass;
             AsignaBloque;
             Screen.Cursor := crDefault;
        end;

        if  aso201.xflg=2 then
        begin
             Screen.Cursor := crHourGlass;
             AsignaUno;
             Screen.Cursor := crDefault;
        end;
end;

//Inicio: SPP_201407_ASO  
procedure TfAsignacionResponsable.AsignaBloque;
Var xSQL : String;
Var xCodGen :String;
Var xCodUsu :String;
Var xPerCar :String;
Var xAsoId :String;
Var xTipUbi :String;
begin
        If dblcdResponsable.Text='' Then
        Begin
               MessageDlg(' Debe Elegir Un Responsable..!!!!', mtError, [mbOk], 0);
               Exit;
        End;

        //Tipo de Ubicacion
        if aso201.fAsignaCartera.rbDomicilio.Checked then
        begin
             xTipUbi:='2';
        end;
        if aso201.fAsignaCartera.rbColegio.Checked then
        begin
             xTipUbi:='1';
        end;

        //Transaccion
        DM1.cdsConsultaCartera.First;
        While Not DM1.cdsConsultaCartera.Eof Do
        Begin
            Refresh;
            xCodGen := DM1.cdsConsultaCartera.FieldByName('CODGEN').AsString;
            xCodUsu := dblcdResponsable.Text;
            xPerCar := DM1.cdsConsultaCartera.FieldByName('PERCAR').AsString;
            xAsoId := DM1.cdsConsultaCartera.FieldByName('ASOID').AsString;

            //Actualiza Usuario a que se asigna Flag de asignacion.
            xSQL := ' UPDATE ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
                    +'   SET GAC.ESTASIG=1,'
                    +'   GAC.CODUSUASI ='+ QuotedStr(xCodUsu)+','
                    +'   GAC.TIPGES='+xTipoGest+','
                    +'   GAC.TIPUBI='+xTipUbi+','
                    +'   GAC.FECASI=SYSDATE,'
                    +'   GAC.USUMOD='+QuotedStr(DM1.wUsuario)+','
                    +'   GAC.FECMOD=SYSDATE'
                    +'   WHERE GAC.CODGEN='+xCodGen;
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);

            //Inserta Historial de Asignaciones
            xSQL :=' INSERT INTO ASO_USU_ASIG_REASIG_HIS(CODUSU,ASOID,CANASI,FECASIG,PERCAR,ESTREG,USUREG,FECREG,USUMOD,FECMOD,CODGEN) '
                   +' VALUES ('+QuotedStr(xCodUsu)+','+QuotedStr(xAsoId)+','+IntToStr(DM1.cdsConsultaCartera.RecordCount)+',SYSDATE,'+QuotedStr(xPerCar)+',1,'+QuotedStr(DM1.wUsuario)+',SYSDATE,NULL,NULL,'+xCodgen+')';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);

            DM1.cdsConsultaCartera.Next;
         End;  
         ASO201.xflg:=0;
         ASO201.fAsignaCartera.Buscar;
         Close;

end;

procedure TfAsignacionResponsable.AsignaUno;
Var  i: Integer;
Var xSQL : String;
Var xCodGen :String;
Var xCodUsu :String;
Var xPerCar :String;
Var xAsoId :String;
Var xTipUbi :String;
begin
    if ASO201.fAsignaCartera.dtgAsignacion.SelectedList.Count <> 0 then
    begin
      //Tipo de Ubicacion
        if aso201.fAsignaCartera.rbDomicilio.Checked then
        begin
             xTipUbi:='2';
        end;
        if aso201.fAsignaCartera.rbColegio.Checked then
        begin
             xTipUbi:='1';
        end;

      //Transaccion
      for i := 0 to ASO201.fAsignaCartera.dtgAsignacion.SelectedList.Count -1 do
      begin
        ASO201.fAsignaCartera.dtgAsignacion.datasource.dataset.GotoBookmark(ASO201.fAsignaCartera.dtgAsignacion.SelectedList.items[i]);
        xCodGen := DM1.cdsConsultaCartera.FieldByName('CODGEN').AsString;
        xCodUsu := dblcdResponsable.Text;
        xPerCar := DM1.cdsConsultaCartera.FieldByName('PERCAR').AsString;
        xAsoId := DM1.cdsConsultaCartera.FieldByName('ASOID').AsString;

         //Actualiza Usuario a que se asigna Flag de asignacion.
            xSQL := ' UPDATE ASO_GENERA_ASIGNA_CARTERA_MOV GAC'
                    +'   SET GAC.ESTASIG=1,'
                    +'   GAC.CODUSUASI ='+ QuotedStr(xCodUsu)+','
                    +'   GAC.TIPGES='+xTipoGest+','
                    +'   GAC.TIPUBI='+xTipUbi+','
                    +'   GAC.FECASI=SYSDATE,'
                    +'   GAC.USUMOD='+QuotedStr(DM1.wUsuario)+','
                    +'   GAC.FECMOD=SYSDATE'
                    +'   WHERE GAC.CODGEN='+xCodGen;
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);

            //Inserta Historial de Asignaciones
            xSQL :=' INSERT INTO ASO_USU_ASIG_REASIG_HIS(CODUSU,ASOID,CANASI,FECASIG,PERCAR,ESTREG,USUREG,FECREG,USUMOD,FECMOD,CODGEN) '
                   +' VALUES ('+QuotedStr(xCodUsu)+','+QuotedStr(xAsoId)+','+IntToStr(DM1.cdsConsultaCartera.RecordCount)+',SYSDATE,'+QuotedStr(xPerCar)+',1,'+QuotedStr(DM1.wUsuario)+',SYSDATE,NULL,NULL,'+xCodgen+')';
            DM1.DCOM1.AppServer.EjecutaSql(xSQL);
      end;
    end;
  ASO201.xflg:=0;
  ASO201.fAsignaCartera.Buscar;
  Close;

end;
//Fin: SPP_201407_ASO  
procedure TfAsignacionResponsable.dblcdResponsableChange(Sender: TObject);
begin
      if dblcdResponsable.Text<>'' then
         medesResponsable.Text:= DM1.cdsResponsable.fieldbyname('USERNOM').AsString
      else
      begin
         medesResponsable.Text :='';
      end;
end;

end.
