// Inicio Uso Estándares : 14/12/2017
// Unidad                : ASO260N.pas
// Formulario            : FMantRegalo
// Fecha de Creación     : 14/12/2017
// Autor                 : Equipo de Desarrollo de Sistemas DM
// HPC_201713_ASO        : Registro de Obsequio para el asociado
// HPC_201714_ASO        : Mejoras en el Mantenimiento de Asociados para Fallecidos no Liquidados 
// ASO_201808_HPC        : Cambio de regla para entrega de obsequio de PANETONES
unit ASO260N;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
  Dialogs, StdCtrls, Grids, Wwdbigrd, Wwdbgrid, wwdblook,
  wwdbdatetimepicker;
//Fin ASO_201808_HPC

type
  TFMantRegalo = class(TForm)
    dbgListRegalos: TwwDBGrid;
    btnAceptar: TButton;
    btnCancelar: TButton;
    lblAsociado: TLabel;
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    dblOficina: TwwDBLookupCombo;
    dblINCURSION: TwwDBLookupCombo;
    dbdFecentrega: TwwDBDateTimePicker;
    lbloficina: TLabel;
    lblINCURSION: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure ListarRegalos();
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);
    procedure dblINCURSIONChange(Sender: TObject);
    procedure dblINCURSIONExit(Sender: TObject);
    procedure dblOficinaChange(Sender: TObject);
    procedure dblOficinaKeyPress(Sender: TObject; var Key: Char);
    procedure dblINCURSIONKeyPress(Sender: TObject; var Key: Char);
//Fin ASO_201808_HPC
  private
    { Private declarations }
  public
    { Public declarations }
    sOficinaId : String;
    sUserReg : String;
    sAsociadoId : String;
  end;

var
  FMantRegalo: TFMantRegalo;

implementation

uses ASODM;

{$R *.dfm}

//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
procedure TFMantRegalo.FormActivate(Sender: TObject);
   var xSQL :String;
begin

    dbgListRegalos.Selected.Clear;
    dbgListRegalos.Selected.Add('CAMPANA'#9'10'#9'Campaña'#9'F');
    dbgListRegalos.Selected.Add('OFDESNOM'#9'25'#9'Oficina'#9'F');
    dbgListRegalos.Selected.Add('DESREG'#9'25'#9'Regalo'#9'F');
    dbgListRegalos.Selected.Add('STOINI'#9'11'#9'Stock~Inicial'#9'F');
    dbgListRegalos.Selected.Add('STOFIN'#9'11'#9'Stock~Actual'#9'F');
    dbgListRegalos.Selected.Add('USUREG'#9'11'#9'Usuario'#9'F');
    dbgListRegalos.Selected.Add('FECREG'#9'10'#9'Fecha'#9'F');
    dbgListRegalos.Selected.Add('ACTIVO'#9'10'#9'Activo'#9'F');

    xSQL:='SELECT DISTINCT A.CODOFI, B.OFDESNOM FROM ASO_CAT_REG_DET A, APO110 B WHERE A.ACTIVO = ''S'' AND A.CODOFI = B.OFDESID ORDER BY B.OFDESNOM ';
    DM1.cdsQry26.Close;
    DM1.cdsQry26.DataRequest( xSQL );
    DM1.cdsQry26.Open;
    DM1.cdsQry26.Locate('CODOFI',VarArrayof([dm1.xOfiDes]),[]);
    dblOficina.LookupField :='CODOFI';
    dblOficina.LookupTable :=DM1.cdsQry26;
    dblOficina.Text        := DM1.cdsQry26.Fieldbyname('CODOFI').AsString;
    lblOficina.Caption     := DM1.cdsQry26.Fieldbyname('OFDESNOM').AsString;
    dblOficina.Selected.Clear;
    dblOficina.Selected.Add('CODOFI'#9'4'#9'ID'#9'F'#9);
    dblOficina.Selected.Add('OFDESNOM'#9'30'#9'Oficina'#9'F'#9);
    dbdFecentrega.Date := DM1.FechaSys;

    ListarRegalos();

    lblAsociado.Caption:= DM1.cdsAso.FieldByName('ASOAPENOM').AsString + ' - ' +  sAsociadoId;

end;
//Fin ASO_201808_HPC



procedure TFMantRegalo.ListarRegalos();
var
    xSQL :String;
begin
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    xSQL := ' select c.CODOFI, a.OFDESNOM, c.CODREG, c.DESREG, c.STOINI, c.STOFIN, c.USUREG, c.FECREG, c.ACTIVO, c.CAMPANA '
           + ' from ASO_CAT_REG_DET c, APO110 a '
           + ' where c.CODOFI = ' + QuotedStr(dblOficina.Text)
           + ' and   a.OFDESID = c.CODOFI and c.ACTIVO=''S'' '
           + ' order by c.CODOFI, c.DESREG, c.CAMPANA ';
//Fin ASO_201808_HPC
    dbgListRegalos.Datasource := DM1.dsQry15;
    DM1.cdsQry15.Close;
    DM1.cdsQry15.DataRequest( xSQL );
    DM1.cdsQry15.Open;

    If (DM1.cdsQry15.RecordCount = 0 ) Then
    Begin
        btnAceptar.Enabled := False;
    End;

end;


procedure TFMantRegalo.btnCancelarClick(Sender: TObject);
begin
    close;
end;

procedure TFMantRegalo.btnAceptarClick(Sender: TObject);
var
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    xSQL,xfecini,xfecfin :String;
//Fin ASO_201808_HPC
begin

//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    xfecini := Copy(DateToStr(DM1.FechaSys), 7, 4) +
               Copy(DateToStr(DM1.FechaSys), 4, 2) +
               Copy(DateToStr(DM1.FechaSys),1, 2);

    xfecfin := Copy(DateToStr(dbdFecentrega.Date), 7, 4) +
               Copy(DateToStr(dbdFecentrega.Date), 4, 2) +
               Copy(DateToStr(dbdFecentrega.Date), 1,2);

    if (xfecini < xfecfin) Then
    Begin
        MessageDlg('Fecha de Entrega no puede ser mayor que la Fecha de Registro', mtError,
        [mbOk], 0);
        exit;
    End;
//Fin ASO_201808_HPC
    If (DM1.cdsQry15.FieldByName('ACTIVO').AsString = 'N' ) Then
    Begin
        MessageDlg('Obsequio no Activo.', mtError,
        [mbOk], 0);
        screen.Cursor := crDefault;
        exit;
    End;

    xSQL := ' SELECT TO_CHAR(FECREG,''DD/MM/YYYY'') fecreg,  a.usureg '
              + ' FROM ASO_CAT_REG_MOV a '
              + ' WHERE a.ASOID = ' + QuotedStr(sAsociadoId)
              + ' AND   a.CAMPANA = ' + QuotedStr(DM1.cdsQry15.FieldByName('CAMPANA').AsString)
              + ' AND   a.CODREG = ' + QuotedStr(DM1.cdsQry15.FieldByName('CODREG').AsString);
// Inicio HPC_201714_ASO
// Mejoras en el Mantenimiento de Asociados para Fallecidos no Liquidados
    {DM1.cdsQry20.Close;
    DM1.cdsQry20.DataRequest( xSQL );
    DM1.cdsQry20.Open; }

    DM1.cdsQryRegalo.Close;
    DM1.cdsQryRegalo.DataRequest( xSQL );
    DM1.cdsQryRegalo.Open;

    {If (DM1.cdsQry20.RecordCount > 0 ) Then
    Begin
        MessageDlg('Asociado ya cuenta con el obsequio.' + #13 +
                   'Fecha de entrega: ' + DM1.cdsQry20.FieldByName('fecreg').AsString + #13 +
                   'Usuario de entrega: ' + DM1.cdsQry20.FieldByName('usureg').AsString
                   , mtError,
        [mbOk], 0);
        screen.Cursor := crDefault;
        exit;
    End;}

    If (DM1.cdsQryRegalo.RecordCount > 0 ) Then
    Begin
        MessageDlg('Asociado ya cuenta con el obsequio.' + #13 +
                   'Fecha de entrega: ' + DM1.cdsQryRegalo.FieldByName('fecreg').AsString + #13 +
                   'Usuario de entrega: ' + DM1.cdsQryRegalo.FieldByName('usureg').AsString
                   , mtError,
        [mbOk], 0);
        screen.Cursor := crDefault;
        exit;
    End;
// Fin HPC_201714_ASO
//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
    If MessageDlg('Se procederá con el registro del obsequio. Desea continuar ? - Incursión: '+ lblINCURSION.Caption , mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
        exit;

    DM1.DCOM1.AppServer.SOLStartTransaction;
    Try
        Screen.Cursor := crHourGlass;

        // Inserta en tabla movimientos
        xSQL := 'INSERT INTO ASO_CAT_REG_MOV (CODOFI, ASOID, CAMPANA, CODREG, CANTIDAD, USUREG, FECREG,FECENT,CODINC) ' +
                'VALUES (' + QuotedStr(sOficinaId) + ',' +
                         QuotedStr(sAsociadoId)+ ',' +
                         QuotedStr(DM1.cdsQry15.FieldByName('CAMPANA').AsString)+ ',' +
                         QuotedStr(DM1.cdsQry15.FieldByName('CODREG').AsString)+ ',' +
                         '1' + ',' +
                         QuotedStr(sUserReg)+ ',SYSDATE,' +
                         QuotedStr(dbdFecentrega.Text) + ',' +
                         QuotedStr(dblINCURSION.Text )+ ')';

        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        // Actualiza Stock Final
        xSQL := 'UPDATE ASO_CAT_REG_DET SET  STOFIN = STOFIN - 1 '
              + ' WHERE CODOFI = ' + QuotedStr(dblOficina.Text)
              + ' AND   CODREG = ' + QuotedStr(DM1.cdsQry15.FieldByName('CODREG').AsString)
              + ' AND   CAMPANA = ' + QuotedStr(DM1.cdsQry15.FieldByName('CAMPANA').AsString);
//Fin ASO_201808_HPC
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);

        ListarRegalos();
        btnAceptar.Enabled := False;
        screen.Cursor := crDefault;

        DM1.DCOM1.AppServer.SOLCommit;
    Except
        DM1.DCOM1.AppServer.SOLRollBack;
        showmessage('No se pudo completar el proceso, por favor intente nuevamente.');
        screen.Cursor := crDefault;
        exit;
    End;

//Inicio ASO_201808_HPC : Cambio de regla para entrega de obsequio de PANETONES
end;

procedure TFMantRegalo.dblINCURSIONChange(Sender: TObject);
begin
 lblINCURSION.Caption := DM1.cdsQry25.Fieldbyname('DESINC').AsString;
end;

procedure TFMantRegalo.dblINCURSIONExit(Sender: TObject);
begin
 lblINCURSION.Caption := DM1.cdsQry25.Fieldbyname('DESINC').AsString;
end;

procedure TFMantRegalo.dblOficinaChange(Sender: TObject);
var xSQL:String;
begin
    xSQL:=' SELECT CODINC,DESINC,OBSINC FROM ASO_CAT_REG_INC WHERE  ofdesid='''+DM1.cdsQry26.fieldByname('CODOFI').AsString+''' AND ACTIVO=''S'' ORDER BY DESINC  ';
    DM1.cdsQry25.Close;
    DM1.cdsQry25.DataRequest( xSQL );
    DM1.cdsQry25.Open;
    DM1.cdsQry25.Locate('OBSINC',VarArrayof(['Oficina']),[]);
    dblINCURSION.LookupField :='CODINC';
    dblINCURSION.LookupTable :=DM1.cdsQry25;
    dblINCURSION.Text    := DM1.cdsQry25.Fieldbyname('CODINC').AsString;
    lblINCURSION.Caption := DM1.cdsQry25.Fieldbyname('DESINC').AsString;
    dblINCURSION.Selected.Clear;
    dblINCURSION.Selected.Add('CODINC'#9'4'#9'ID'#9'F'#9);
    dblINCURSION.Selected.Add('DESINC'#9'30'#9'Incursión'#9'F'#9);

    lblOficina.Caption     := DM1.cdsQry26.Fieldbyname('OFDESNOM').AsString;
    ListarRegalos();
end;

procedure TFMantRegalo.dblOficinaKeyPress(Sender: TObject; var Key: Char);
begin
     Key:=#0;
 end;

procedure TFMantRegalo.dblINCURSIONKeyPress(Sender: TObject;
  var Key: Char);
begin
Key:=#0;
//Fin ASO_201808_HPC
end;

end.
