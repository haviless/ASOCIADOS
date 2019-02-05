unit ASO204B;
// Inicio Uso Estándares: 01/08/2011
// Unidad               : ASO204B
// Formulario           : fConsultaProcesaLoteReniec
// Fecha de Creación    : 20/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Consulta y Procesa el lote de Datos a Reniec.
// Actualizaciones      :
// SPP_201405_ASO       : Se realiza el pase a producción a partir del HPC_201404_ASO
// HPC_201406_ASO       : Se agrega confirmacion de procesamiento.	   
// SPP_201406_ASO       : Se realiza el pase a producción a partir del HPC_201406_ASO.
// HPC_201411_ASO       : Se agrgea el campo observacion para mostrar lso errores de Reniec.
// SPP_201408_ASO       : Se realiza el pase a producción a partir del HPC_201411_ASO.
// HPC_201705_ASO       : Se corrige un error al momento de mostrar mensaje.

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, wwdblook, Wwdbdlg, Wwdbigrd, Grids,
  Wwdbgrid, ComCtrls, ExtCtrls, ppParameter, ppBands, ppCtrls, jpeg,
  ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppReport, ppRelatv, ppDB,
  ppDBPipe, ppDBBDE, ppComm, ppEndUsr,wwExport,shellapi,SOAPHTTPClient, xmldom, types, rxgif, ValEdit, DB, DBClient,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, IniFiles, ppStrtch, ppSubRpt,
  Wwdatsrc, wwclient, DBGrids, XSBuiltIns, ImageDLLLoader, LinarBitmap, ExtDlgs, FileUtils, SIPSvc,
  SIPSvcUTIL, ICOLoader, JPEGLoader, PNGLoader, HIPSLoader, BMPLoader, PCXLoader, WMFLoader,WSUbicabilidad;

type
  TfConsultaProcesaLoteReniec = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    bSalir: TBitBtn;
    pcGestion: TPageControl;
    tsNombresIguales: TTabSheet;
    dtgIguales: TwwDBGrid;
    dtgAsociadoIButton: TwwIButton;
    pnlPersonal: TPanel;
    tsNombresDiferentes: TTabSheet;
    dtgDiferentes: TwwDBGrid;
    wwIButton2: TwwIButton;
    bProcesar: TBitBtn;
    bExportarI: TBitBtn;
    Panel3: TPanel;
    bExportarD: TBitBtn;
    bImprimirI: TBitBtn;
    bImpirmirD: TBitBtn;
    GroupBox1: TGroupBox;
    bRefrescar: TBitBtn;
    grbProceso: TGroupBox;
    lblPor: TLabel;
    prbAvance: TProgressBar;
    ppDesignerIguales: TppDesigner;
    ppbdReporteIguales: TppBDEPipeline;
    pprReporteIguales: TppReport;
    ppParameterList2: TppParameterList;
    ppbdReporteDiferente: TppBDEPipeline;
    ppDesignerDiferente: TppDesigner;
    pprReporteDiferente: TppReport;
    ppParameterList1: TppParameterList;
    bProcesarMarcas: TBitBtn;
    grbProceso2: TGroupBox;
    lblPor2: TLabel;
    prbAvance2: TProgressBar;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppLabel41: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppImage2: TppImage;
    ppLine32: TppLine;
    ppLine33: TppLine;
    ppLine34: TppLine;
    ppLine37: TppLine;
    ppLine38: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLine40: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLine42: TppLine;
    ppLabel58: TppLabel;
    ppLine56: TppLine;
    pplTitulo: TppLabel;
    ppLine41: TppLine;
    ppLine1: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine27: TppLine;
    ppLine3: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLabel22: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppLine44: TppLine;
    ppLine46: TppLine;
    ppLine47: TppLine;
    ppLine48: TppLine;
    ppLine49: TppLine;
    ppLine51: TppLine;
    ppLine52: TppLine;
    ppLine54: TppLine;
    ppLine55: TppLine;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine30: TppLine;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppPageStyle1: TppPageStyle;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppLabel3: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppImage1: TppImage;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine9: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine10: TppLine;
    ppLabel13: TppLabel;
    ppLine11: TppLine;
    ppLabel14: TppLabel;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLine17: TppLine;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLine50: TppLine;
    ppLabel28: TppLabel;
    ppLine53: TppLine;
    ppLabel29: TppLabel;
    ppLine57: TppLine;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine61: TppLine;
    ppLine62: TppLine;
    ppDetailBand1: TppDetailBand;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine31: TppLine;
    ppLine35: TppLine;
    ppLine36: TppLine;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppLine39: TppLine;
    ppLine43: TppLine;
    ppLine45: TppLine;
    ppDBCalc2: TppDBCalc;
    ppLine58: TppLine;
    ppLine59: TppLine;
    ppLine60: TppLine;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppPageStyle2: TppPageStyle;
    procedure bSalirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure bProcesarClick(Sender: TObject);
    procedure bRefrescarClick(Sender: TObject);
    procedure bImprimirIClick(Sender: TObject);
    procedure bImpirmirDClick(Sender: TObject);
    procedure bExportarIClick(Sender: TObject);
    procedure bExportarDClick(Sender: TObject);
    procedure dtgDiferentesDblClick(Sender: TObject);
    procedure bProcesarMarcasClick(Sender: TObject);
    function ActualizaDatosASociados(xCodDet:Integer; xAsoDni:String): Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fConsultaProcesaLoteReniec: TfConsultaProcesaLoteReniec;

implementation
uses ASO204,ASO204A, ASODM;
{$R *.dfm}

procedure TfConsultaProcesaLoteReniec.bSalirClick(Sender: TObject);
begin
     Close;
end;
// Inicio: SPP_201408_ASO
procedure TfConsultaProcesaLoteReniec.FormActivate(Sender: TObject);
Var xSql :String;
begin

    //Nombres Iguales
    xSql:=' select ROWNUM,A.* from (   '
    +' SELECT '
+'       D.ASODNI,'
+'       D.ASOCODMOD,'
+'       D.LIQUID,'
+'       MAESTRO.ASOAPEPATDNI,'
+'       MAESTRO.ASOAPEMATDNI,'
+'       MAESTRO.ASONOMDNI,'
+'       I.APEPAT,'
+'       I.APEMAT,'
+'       I.NOMBRE,'
+'       D.ESTCAPREN,'
+'       ECR.NOMVAL EST_CAP,'
+'       D.ESTACT,'
+'       EA.NOMVAL EST_ACT,'
+'       D.ESTLOTREG,'
+'       EL.NOMVAL EST_LOT,'
+'       D.FLGNOM,'
+'       E.DESERR,'
+'       D.USUREG,'
+'       D.FECREG,'
+'       D.TIPPRO'
+'  FROM ASO_CAPT_RENIEC_DET D'
+' INNER JOIN(SELECT A.ASOID, A.ASODNI, A.ASOAPEPATDNI, A.ASOAPEMATDNI, A.ASONOMDNI'
+'            FROM APO201 A'
+'            WHERE A.FALLECIDO = ''N'''
+'            UNION ALL'
+'            SELECT N.ASOID, N.ASODNI, N.ASOAPEPATDNI, N.ASOAPEMATDNI, N.ASONOMDNI'
+'            FROM ASO_NUE_CLI N'
+'            WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO ON MAESTRO.ASOID = D.ASOID'
+' INNER JOIN (SELECT R.DNI,'
+'                    R.APEPAT,'
+'                    R.APEMAT,'
+'                    R.NOMBRE,'
+'                    R.FECACT,'
+'                    R.FECEMIDOC,'
+'                    R.FECEXP,'
+'                    ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK'
+'               FROM INF_RENIEC_CAP R) I ON I.DNI = D.ASODNI    AND DRK = 1'
+'  LEFT JOIN ASO_GENERICA_DET ECR ON ECR.CODCAB=''ESTADOCAPTRENIEC'' AND ECR.VALDES01=D.ESTCAPREN AND ECR.ESTREG=1'
+'  LEFT JOIN ASO_GENERICA_CAB C1 ON C1.CODCAB=ECR.CODCAB AND C1.ESTREG=1'
+'  LEFT JOIN ASO_GENERICA_DET EA ON EA.CODCAB=''ESTADOACTUALIZA'' AND EA.VALDES01=D.ESTACT AND EA.ESTREG=1'
+'  LEFT JOIN ASO_GENERICA_CAB C2 ON C2.CODCAB=EA.CODCAB AND C2.ESTREG=1'
+'  LEFT JOIN ASO_GENERICA_DET EL ON EL.CODCAB=''ESTADOLOTE'' AND EL.VALDES01=D.ESTLOTREG AND EL.ESTREG=1'
+'  LEFT JOIN ASO_GENERICA_CAB C3 ON C3.CODCAB=EL.CODCAB AND C3.ESTREG=1'
+'  LEFT JOIN ASO_ERR_REN E ON E.CODERR=D.OBSREG'
+' WHERE D.CODCAB ='+IntToStr(ASO204A.xCodCab)
+' )A where FLGNOM=''I'' OR FLGNOM IS NULL' ;


         Screen.Cursor := crHourGlass;
         DM1.cdsConsulta4.Close;
         DM1.cdsConsulta4.DataRequest(xSql);
         DM1.cdsConsulta4.Open;
         dtgIguales.DataSource := DM1.dsConsulta4;

         dtgIguales.Selected.Clear;
         dtgIguales.Selected.Add('ROWNUM'#9'4'#9'Numero'#9#9);
         dtgIguales.Selected.Add('ASODNI'#9'10'#9'D.N.I'#9#9);
         dtgIguales.Selected.Add('ASOCODMOD'#9'10'#9'Cod. Modular'#9#9);
         dtgIguales.Selected.Add('LIQUID'#9'6'#9'Liquidez(%)'#9#9);
         dtgIguales.Selected.Add('ASOAPEPATDNI'#9'15'#9'Ape. Pat.'#9'F'#9'DERRAMA');
         dtgIguales.Selected.Add('ASOAPEMATDNI'#9'15'#9'Ape. Mat.'#9'F'#9'DERRAMA');
         dtgIguales.Selected.Add('ASONOMDNI'#9'20'#9'Nombres'#9'F'#9'DERRAMA');
         dtgIguales.Selected.Add('APEPAT'#9'15'#9'Ape. Pat.'#9'F'#9'RENIEC');
         dtgIguales.Selected.Add('APEMAT'#9'15'#9'Ape. Mat.'#9'F'#9'RENIEC');
         dtgIguales.Selected.Add('NOMBRE'#9'20'#9'Nombres'#9'F'#9'RENIEC');
         dtgIguales.Selected.Add('EST_CAP'#9'8'#9'Estado Captura'#9#9);
         dtgIguales.Selected.Add('EST_ACT'#9'8'#9'Estado Actualizac.'#9#9);
         dtgIguales.Selected.Add('EST_LOT'#9'6'#9'Estado Registro'#9#9);
         dtgIguales.Selected.Add('DESERR'#9'20'#9'Observación'#9#9);
         dtgIguales.Selected.Add('USUREG'#9'10'#9'Usu. Reg.'#9#9);
         dtgIguales.Selected.Add('FECREG'#9'10'#9'Fec. Reg.'#9#9);
         dtgIguales.Selected.Add('TIPPRO'#9'10'#9'Tipo de Proceso'#9#9);
         dtgIguales.ApplySelected;
         Screen.Cursor := crDefault;

     //Nombres Diferentes
     xSql:=' SELECT ROWNUM,       '
+'       D.CODDET,'
+'       D.ASODNI,'
+'       D.ASOCODMOD,'
+'       D.LIQUID,'
+'       MAESTRO.ASOAPEPATDNI,'
+'       MAESTRO.ASOAPEMATDNI,'
+'       MAESTRO.ASONOMDNI,'
+'       I.APEPAT,'
+'       I.APEMAT,'
+'       I.NOMBRE,'
+'       D.ESTCAPREN,'
+'       ECR.NOMVAL EST_CAP,'
+'       D.ESTACT,'
+'       EA.NOMVAL EST_ACT,'
+'       D.ESTLOTREG,'
+'       EL.NOMVAL EST_LOT,'
+'       E.DESERR,'
+'       D.USUREG,'
+'       D.FECREG,'
+'       D.TIPPRO,'
+'       D.CHK '
+'  FROM ASO_CAPT_RENIEC_DET D'
+' INNER JOIN(SELECT A.ASOID, A.ASODNI, A.ASOAPEPATDNI, A.ASOAPEMATDNI, A.ASONOMDNI'
+'            FROM APO201 A'
+'            WHERE A.FALLECIDO = ''N'''
+'            UNION ALL'
+'            SELECT N.ASOID, N.ASODNI, N.ASOAPEPATDNI, N.ASOAPEMATDNI, N.ASONOMDNI'
+'            FROM ASO_NUE_CLI N'
+'            WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO ON MAESTRO.ASOID = D.ASOID'
+' INNER JOIN (SELECT R.DNI,'
+'                    R.APEPAT,'
+'                    R.APEMAT,'
+'                    R.NOMBRE,'
+'                    R.FECACT,'
+'                    R.FECEMIDOC,'
+'                    R.FECEXP,'
+'                    ROW_NUMBER() OVER(PARTITION BY DNI ORDER BY DNI, FECACT DESC) DRK'
+'               FROM INF_RENIEC_CAP R) I ON I.DNI = D.ASODNI    AND DRK = 1'
+'  LEFT JOIN ASO_GENERICA_DET ECR ON ECR.CODCAB=''ESTADOCAPTRENIEC'' AND ECR.VALDES01=D.ESTCAPREN AND ECR.ESTREG=1'
+'  LEFT JOIN ASO_GENERICA_CAB C1 ON C1.CODCAB=ECR.CODCAB AND C1.ESTREG=1'
+'  LEFT JOIN ASO_GENERICA_DET EA ON EA.CODCAB=''ESTADOACTUALIZA'' AND EA.VALDES01=D.ESTACT AND EA.ESTREG=1'
+'  LEFT JOIN ASO_GENERICA_CAB C2 ON C2.CODCAB=EA.CODCAB AND C2.ESTREG=1'
+'  LEFT JOIN ASO_GENERICA_DET EL ON EL.CODCAB=''ESTADOLOTE'' AND EL.VALDES01=D.ESTLOTREG AND EL.ESTREG=1'
+'  LEFT JOIN ASO_GENERICA_CAB C3 ON C3.CODCAB=EL.CODCAB AND C3.ESTREG=1'
+'  LEFT JOIN ASO_ERR_REN E ON E.CODERR=D.OBSREG'
+' WHERE D.CODCAB ='+IntToStr(ASO204A.xCodCab)
+' AND (D.FLGNOM = ''D'' or D.FLGNOM = ''E'') ' ;


         Screen.Cursor := crHourGlass;
         DM1.cdsConsulta5.Close;
         DM1.cdsConsulta5.DataRequest(xSql);
         DM1.cdsConsulta5.Open;
         dtgDiferentes.DataSource := DM1.dsConsulta5;

         dtgDiferentes.Selected.Clear;
         dtgDiferentes.Selected.Add('ROWNUM'#9'4'#9'Numero'#9#9);
         dtgDiferentes.Selected.Add('ASODNI'#9'10'#9'D.N.I'#9#9);
         dtgDiferentes.Selected.Add('ASOCODMOD'#9'10'#9'Cod. Modular'#9#9);
         dtgDiferentes.Selected.Add('LIQUID'#9'6'#9'Liquidez(%)'#9#9);
         dtgDiferentes.Selected.Add('ASOAPEPATDNI'#9'15'#9'Ape. Pat.'#9'F'#9'DERRAMA');
         dtgDiferentes.Selected.Add('ASOAPEMATDNI'#9'15'#9'Ape. Mat.'#9'F'#9'DERRAMA');
         dtgDiferentes.Selected.Add('ASONOMDNI'#9'20'#9'Nombres'#9'F'#9'DERRAMA');
         dtgDiferentes.Selected.Add('APEPAT'#9'15'#9'Ape. Pat.'#9'F'#9'RENIEC');
         dtgDiferentes.Selected.Add('APEMAT'#9'15'#9'Ape. Mat.'#9'F'#9'RENIEC');
         dtgDiferentes.Selected.Add('NOMBRE'#9'20'#9'Nombres'#9'F'#9'RENIEC');
         dtgDiferentes.Selected.Add('EST_CAP'#9'8'#9'Estado Captura'#9#9);
         dtgDiferentes.Selected.Add('EST_ACT'#9'8'#9'Estado Actualizac.'#9#9);
         dtgDiferentes.Selected.Add('EST_LOT'#9'6'#9'Estado Registro'#9#9);
         dtgDiferentes.Selected.Add('DESERR'#9'20'#9'Observación'#9#9);
         dtgDiferentes.Selected.Add('USUREG'#9'10'#9'Usu. Reg.'#9#9);
         dtgDiferentes.Selected.Add('FECREG'#9'10'#9'Fec. Reg.'#9#9);
         dtgDiferentes.Selected.Add('CHK'#9'5'#9'Marca'#9#9);
         dtgDiferentes.SetControlType('CHK',fctCheckBox, 'S;N');

         dtgDiferentes.ApplySelected;            
         Screen.Cursor := crDefault;

         pcGestion.ActivePage:= tsNombresIguales;
end;
// Fin: SPP_201408_ASO
procedure TfConsultaProcesaLoteReniec.bProcesarClick(Sender: TObject);
Var xSql :String;
Var xCodDet :integer;
Var xDni,xAsoApePat,xAsoApeMat,xAsoNombres :String;
begin
     //Validacion de fecha de ejecucion
     If dm1.verificahorario = False Then
     Begin
        MessageDlg('Horario no permitido para la ejecución de este proceso', mtError, [mbOk], 0);
        Exit;
     End; 

     Screen.Cursor := crHourGlass;
     
    //Captura de Datos de Reniec y Actualizacion de Datos al Maestro
       xSql := ' SELECT D.CODDET,D.ASODNI,MAESTRO.ASOAPEPATDNI, MAESTRO.ASOAPEMATDNI, MAESTRO.ASONOMDNI'
                +'   FROM ASO_CAPT_RENIEC_DET D'
                +'   INNER JOIN (SELECT A.ASOID, A.ASOAPEPATDNI, A.ASOAPEMATDNI, A.ASONOMDNI'
                +'              FROM APO201 A'
                +'              WHERE A.FALLECIDO = ''N'''
                +'              UNION ALL'
                +'              SELECT N.ASOID, N.ASOAPEPATDNI, N.ASOAPEMATDNI, N.ASONOMDNI'
                +'              FROM ASO_NUE_CLI N'
                +'              WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO'
                +' ON MAESTRO.ASOID = D.ASOID'
                +' WHERE D.CODCAB='+IntToStr(ASO204A.xCodCab)+' AND D.ESTCAPREN=1';
        DM1.cdsTemp2.Close;
        DM1.cdsTemp2.DataRequest(xSql);
        DM1.cdsTemp2.Open;

        grbProceso.Visible := True;
        lblPor.Visible := True;
        prbAvance.Position := 0;
        prbAvance.Max := DM1.cdsTemp2.RecordCount;
        prbAvance.Position := 1;

        While Not DM1.cdsTemp2.Eof Do
        Begin
                Refresh;
                prbAvance.Position := prbAvance.Position + 1;
                xCodDet:=DM1.cdsTemp2.FieldByName('CODDET').AsInteger;
                xDni:=trim(DM1.cdsTemp2.FieldByName('ASODNI').AsString);
                xAsoApePat:=DM1.cdsTemp2.FieldByName('ASOAPEPATDNI').AsString;
                xAsoApeMat:=DM1.cdsTemp2.FieldByName('ASOAPEMATDNI').AsString;
                xAsoNombres:=DM1.cdsTemp2.FieldByName('ASONOMDNI').AsString;
                //Captura de Datos de Reniec
                 ASO204.fGeneraLote.ActDatReniec(xCodDet, xDni, xAsoApePat, xAsoApeMat, xAsoNombres);
                  //borrar foto
                DeleteFile(PChar(ASO204.xfotoJpg));
                DeleteFile(Pchar(ASO204.xFirmaTif));
                DeleteFile(Pchar(ASO204.xFirmaJpg));

                lblPor.Caption := FormatFloat('#,###,###', prbAvance.Position) + '  De  ' + FormatFloat('#,###,###', prbAvance.Max) + '  Registros';

                DM1.cdsTemp2.Next;
         end;

         prbAvance.Position := 0;
         grbProceso.Visible := False;

        //Actualiza estado de Cabecera
       xSQL := 'SELECT COUNT(*) CONT FROM ASO_CAPT_RENIEC_DET D WHERE D.CODCAB='+IntToStr(ASO204A.xCodCab)+' AND  D.ESTLOTREG=1';
       DM1.cdstemp.Close;
       DM1.cdstemp.DataRequest(xSQL);
       DM1.cdstemp.Open;
       if DM1.cdstemp.FieldByName('CONT').AsInteger = 0 then
       begin
            xSql:='UPDATE ASO_CAPT_RENIEC_CAB C SET C.ESTLOT=2 WHERE C.CODCAB='+IntToStr(ASO204A.xCodCab);
            DM1.DCOM1.AppServer.EjecutaSql(xSql);
       end;

      Screen.Cursor := crDefault;
      fConsultaProcesaLoteReniec.FormActivate(sender);
      //--Inicio: SPP_201406_ASO
      // Inicio: HPC_201705_ASO 
      // Se corrige el mensaje de "error", por el de "información",
      // MessageDlg('Se proceso satisfactoriamente los datos.', mtError, [mbOk], 0);
      MessageDlg(' Se procesó satisfactoriamente los datos.', mtInformation, [mbOk], 0);
      // Fin: HPC_201705_ASO 
      //--Fin: SPP_201406_ASO
end;

procedure TfConsultaProcesaLoteReniec.bRefrescarClick(Sender: TObject);
begin
    fConsultaProcesaLoteReniec.FormActivate(sender);
end;

procedure TfConsultaProcesaLoteReniec.bImprimirIClick(Sender: TObject);
Var xSql :String;
begin
         //--Reporte--//
         ppbdReporteIguales.DataSource:=DM1.dsConsulta4;
         pplTitulo.Caption:=IntToStr(ASO204A.xCodCab);
         pprReporteIguales.Print;
         //ppDesignerIguales.Show;
         Screen.Cursor := crDefault;
end;

procedure TfConsultaProcesaLoteReniec.bImpirmirDClick(Sender: TObject);
begin
        //--Reporte--//
         ppbdReporteDiferente.DataSource:=DM1.dsConsulta5;
         pplTitulo.Caption:=IntToStr(ASO204A.xCodCab);
         pprReporteDiferente.Print;
         //ppDesignerDiferente.Show;
         Screen.Cursor := crDefault;
end;

procedure TfConsultaProcesaLoteReniec.bExportarIClick(Sender: TObject);
begin

   With dtgIguales, dtgIguales.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Act_Masiva_Reniec.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dtgIguales.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;

end;

procedure TfConsultaProcesaLoteReniec.bExportarDClick(Sender: TObject);
begin
      With dtgDiferentes, dtgDiferentes.ExportOptions Do
   Begin
      ExportType := wwgetSYLK;
      FileName := 'Act_Masiva_Reniec_NoActualizados.slk';
      Save;
      If Not (esoClipboard In Options) Then
         ShellExecute(Handle, 'Open', PChar(dtgDiferentes.exportoptions.Filename), Nil, Nil, sw_shownormal);
   End;
end;

procedure TfConsultaProcesaLoteReniec.dtgDiferentesDblClick(
  Sender: TObject);
  Var xSql:String;
begin
   If dtgDiferentes.DataSource.DataSet.RecordCount=0 Then Exit;

   If DM1.cdsConsulta5.FieldByName('CHK').AsString='S' Then
   Begin
     DM1.cdsConsulta5.Edit;
     DM1.cdsConsulta5.FieldByName('CHK').AsString:='';

     xSql:='UPDATE ASO_CAPT_RENIEC_DET D SET D.CHK=null WHERE d.CODDET='+IntToStr(DM1.cdsConsulta5.FieldByName('CODDET').AsInteger);
     DM1.DCOM1.AppServer.EjecutaSql(xSql);
   End
   Else
   Begin
      DM1.cdsConsulta5.Edit;
      DM1.cdsConsulta5.FieldByName('CHK').AsString:='S';

     xSql:='UPDATE ASO_CAPT_RENIEC_DET D SET D.CHK=''S'' WHERE d.CODDET='+IntToStr(DM1.cdsConsulta5.FieldByName('CODDET').AsInteger);
     DM1.DCOM1.AppServer.EjecutaSql(xSql);
   End;  

end;

procedure TfConsultaProcesaLoteReniec.bProcesarMarcasClick(
  Sender: TObject);
  Var xSql :String;
  Var xCodDet : Integer;
Var xDni : String;  
begin
      //Validacion de fecha de ejecucion
     If dm1.verificahorario = False Then
     Begin
        MessageDlg('Horario no permitido para la ejecución de este proceso', mtError, [mbOk], 0);
        Exit;
     End;
     
      //Captura Actualizacion de Datos al Maestro de nombres diferentes
       xSql := ' SELECT D.CODDET,D.ASODNI,MAESTRO.ASOAPEPATDNI, MAESTRO.ASOAPEMATDNI, MAESTRO.ASONOMDNI'
                +'   FROM ASO_CAPT_RENIEC_DET D'
                +'   INNER JOIN (SELECT A.ASOID, A.ASOAPEPATDNI, A.ASOAPEMATDNI, A.ASONOMDNI'
                +'              FROM APO201 A'
                +'              WHERE A.FALLECIDO = ''N'''
                +'              UNION ALL'
                +'              SELECT N.ASOID, N.ASOAPEPATDNI, N.ASOAPEMATDNI, N.ASONOMDNI'
                +'              FROM ASO_NUE_CLI N'
                +'              WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)) MAESTRO'
                +' ON MAESTRO.ASOID = D.ASOID'
                +' WHERE D.CODCAB='+IntToStr(ASO204A.xCodCab)+' AND D.ESTACT=1 AND D.FLGNOM=''D'' AND D.CHK=''S'' ';
        DM1.cdsTemp3.Close;
        DM1.cdsTemp3.DataRequest(xSql);
        DM1.cdsTemp3.Open;

        grbProceso2.Visible := True;
        lblPor2.Visible := True;
        prbAvance2.Position := 0;
        prbAvance2.Max := DM1.cdsTemp3.RecordCount;
        prbAvance2.Position := 1;

        While Not DM1.cdsTemp3.Eof Do
        Begin
                Refresh;
                prbAvance2.Position := prbAvance.Position + 1;
                xCodDet:=DM1.cdsTemp3.FieldByName('CODDET').AsInteger;
                xDni:=trim(DM1.cdsTemp3.FieldByName('ASODNI').AsString); 
                //Captura de Datos de Reniec
                 ActualizaDatosASociados(xCodDet, xDni);
                 lblPor2.Caption := FormatFloat('#,###,###', prbAvance2.Position) + '  De  ' + FormatFloat('#,###,###', prbAvance2.Max) + '  Registros';

                DM1.cdsTemp3.Next;
         end;

         prbAvance2.Position := 0;
         grbProceso2.Visible := False; 

      Screen.Cursor := crDefault;
      fConsultaProcesaLoteReniec.FormActivate(sender);
       //--Inicio: SPP_201406_ASO
	   // Inicio: HPC_201705_ASO
	   // MessageDlg(' Se proceso satisfactoriamente los datos.', mtError, [mbOk], 0);
       MessageDlg(' Se procesó satisfactoriamente los datos.', mtInformation, [mbOk], 0);
	  // Fin: HPC_201705_ASO
      //--Fin: SPP_201406_ASO
end;


function TfConsultaProcesaLoteReniec.ActualizaDatosASociados(xCodDet:Integer; xAsoDni:String): Boolean;
Var
xsql, xAsoid, xSolicitud: String;
xSexo, xEstCiv, xrestriccion, xgrains:String;
xItem : String;
xAsoApeNomDni: String;
wsUbica: WSUbicabilidadSoap;
dir: ASO_UBICA_DIR_HIS;
fecAct: TXSDateTime;
hayRegReniec: boolean;
hayRegPrevioReniec: boolean;
Var xTABLA  :String;
Begin

   DM1.DCOM1.AppServer.SOLStartTransaction;
Try
   //Se actualiza el campo ESTCIVID desde RENIEC solo si el campo esta vacio.
      XSQL := ' SELECT TABLA,ASOID,ASOCODMOD,ESTCIVID FROM ( '
             +' SELECT ''APO201'' TABLA,A.ASOID,A.ASODNI,A.ASOCODMOD,A.ESTCIVID FROM APO201 A  WHERE A.FALLECIDO = ''N'''
             +' UNION ALL'
             +' SELECT ''ASO_NUE_CLI'' TABLA,N.ASOID,N.ASODNI,N.ASOCODMOD,N.ESTCIVID FROM ASO_NUE_CLI N'
             +' WHERE NOT EXISTS (SELECT 1 FROM APO201 WHERE ASOID = N.ASOID)'
             +' )T WHERE T.ASODNI='+QuotedStr(xAsoDni);
      DM1.cdstemp.Close;
      DM1.cdstemp.DataRequest(XSQL);
      DM1.cdstemp.Open;
      xTABLA:=DM1.cdstemp.FieldByName('TABLA').AsString;
      xasoid:=DM1.cdstemp.FieldByName('ASOID').AsString;

   If Length(Trim(DM1.cdstemp.FieldByName('ESTCIVID').AsString)) = 0 Then
   Begin
      // Actualizando en el APO201 o ASO_NUE_CLI

      XSQL := 'SELECT I.ESTCIV '
                +' FROM INF_RENIEC_CAP I'
                +' WHERE I.DNI='+QuotedStr(xAsoDni)+' AND I.FECACT=(SELECT MAX(FECACT) FROM INF_RENIEC_CAP WHERE I.DNI=DNI) ';
      DM1.cdstemp.Close;
      DM1.cdstemp.DataRequest(XSQL);
      DM1.cdstemp.Open;
      
      XSQL := 'UPDATE ' + xTABLA+ ' SET ESTCIVID = ' + QuotedStr(DM1.cdsTemp.FieldByName('ESTCIV').AsString)+' WHERE ASOID = '+QuotedStr(xAsoid);
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);

      // Tomando valor para el campo Item
      XSQL := 'SELECT LPAD(MAX(ITEM+1),2,''0'') ITEM FROM APO206 WHERE ASOID = '+QuotedStr(xAsoid);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(XSQL);
      DM1.cdsQry.Open;
      If DM1.cdsQry.FieldByName('ITEM').AsString = '' Then xItem := '01' Else xItem := DM1.cdsQry.FieldByName('ITEM').AsString;

      // Insertando registro en el APO206
      XSQL := 'INSERT INTO APO206 (ASOID, ASOCODMOD, FREG, HREG, PERIODO, ESTCIVID, USUARIO, ITEM) VALUES ('
      +QuotedStr(DM1.cdsTemp.FieldByName('ASOID').AsString)+','
      +QuotedStr(DM1.cdsTemp.FieldByName('ASOCODMOD').AsString)+', TO_DATE(SYSDATE), SYSDATE, TO_CHAR(SYSDATE,''YYYYMM''),'
      +QuotedStr(DM1.cdsTemp.FieldByName('ESTCIVID').AsString)+','
      +QuotedStr(DM1.wUsuario)+','
      +QuotedStr(xItem)+')';
      DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   End;
   
    //APO201
    XSQL := 'SELECT I.APEPAT,I.APEMAT,I.NOMBRE,I.APECAS,I.APEPAT||'' ''||I.APEMAT||'' ''||I.NOMBRE APENOMDNI,I.SEXO,I.DNI,I.FECNAC '
                +' FROM INF_RENIEC_CAP I'
                +' WHERE I.DNI='+QuotedStr(xAsoDni)+' AND I.FECACT=(SELECT MAX(FECACT) FROM INF_RENIEC_CAP WHERE I.DNI=DNI) ';
      DM1.cdstemp.Close;
      DM1.cdstemp.DataRequest(XSQL);
      DM1.cdstemp.Open; 

   xSQL := 'UPDATE ' + xTABLA
   + ' SET ASOAPEPATDNI = ' + QuotedStr(DM1.cdsTemp.FieldByName('APEPAT').AsString)+ ','
   + ' ASOAPEMATDNI = ' + QuotedStr(DM1.cdsTemp.FieldByName('APEMAT').AsString)+','
   + ' ASONOMDNI = ' + QuotedStr(DM1.cdsTemp.FieldByName('NOMBRE').AsString) + ','
   + ' ASOAPECASDNI = ' + QuotedStr(DM1.cdsTemp.FieldByName('APECAS').AsString) + ','
   + ' ASOAPENOMDNI = ' + QuotedStr(DM1.cdsTemp.FieldByName('APENOMDNI').AsString) + ','
   + ' ASOSEXO = ' + QuotedStr(DM1.cdsTemp.FieldByName('SEXO').AsString)+','
   + ' ASODNI = ' + QuotedStr(DM1.cdsTemp.FieldByName('DNI').AsString)+','
   + ' ACTARCREN = ' + QuotedStr('S')+', '
   + ' ASOFECNAC = ' + QuotedStr(DM1.cdsTemp.FieldByName('FECNAC').AsString)
   + ' WHERE  ASOID = ' + QuotedStr(xasoid);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);

   //aqui Cambiar flags de actualizado , NOMBRE IGUAL y  cerrado del registro.
    xSql:='UPDATE ASO_CAPT_RENIEC_DET D'
         +' SET D.ESTACT=2,'
         +' D.FLGNOM=''I'','
         +' D.TIPPRO=''M'' WHERE D.CODDET='+IntToStr(xCodDet) +' AND D.ASODNI='+QuotedStr(xAsoDni);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
   
   DM1.DCOM1.AppServer.SOLCommit;
Except
   DM1.DCOM1.AppServer.SOLRollBack;
   exit;
End;

END;

end.
