// Inicio Uso Estándares   :	01/08/2011
// Unidad		            :	ASO213.pas
// Formulario		         :	FGenSobres
// Fecha de Creación	      :	15/12/2011
// Autor			            :	Daniel Fernández
// Objetivo		            :  Permite generar e imprimir los números de serie de los sobres con clave

// Actualizaciones:
// HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
// HPC_201120_ASO  15/12/2011  DFERNANDEZ Creación del formulario.
// HPP_201110_ASO     : Se realiza el pase a partir del HPC_201120_ASO
// HPC_201121_ASO     : Se cambia el Orden en que se muestran las OFIDES, Se asigna clientdataset a grid de cabecera de generación de Sobres.
// DPP_201201_ASO     : Se realiza el pase a partir del doc. HPC_201121_ASO
// HPC_201708_ASO     : Mejoras en la generación e impresión de sobres

Unit ASO213;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, wwdbedit,
   fcImgBtn, fcShapeBtn, ppBands, ppCache, ppClass, ppProd,
   ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppDBBDE, ppPrnabl, ppCtrls,
   //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
   ppParameter, fcButton, wwdblook, DB, ExtCtrls, Spin;
   // Fin HPC_201708_ASO

Type
   TFGenSobres = Class(TForm)
      grbImprime: TGroupBox;
      grbGenera: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label5: TLabel;
      Label6: TLabel;
      dblOficina: TwwDBLookupCombo;
      edtOficina: TEdit;
      //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
      //dbeNumSobres: TwwDBEdit;
      // Fin HPC_201708_ASO
      dbeFinal: TwwDBEdit;
      dbeInicial: TwwDBEdit;
      sbtnGenera: TfcShapeBtn;
      sbtnAbajo: TfcShapeBtn;
      sbtnIprime: TfcShapeBtn;
      spbtnArriva: TfcShapeBtn;
      grbFiltra: TGroupBox;
      dblOficina2: TwwDBLookupCombo;
      Label3: TLabel;
      edtOficina1: TEdit;
      Label4: TLabel;
      edtSecuen: TEdit;
      fcShapeBtn1: TfcShapeBtn;
      ppBDE1: TppBDEPipeline;
      pprSobre: TppReport;
      ppDetailBand1: TppDetailBand;
      ppDBText1: TppDBText;
      ppParameterList1: TppParameterList;
      ppDBText2: TppDBText;
      dbgSecuencia: TDBGrid;
      //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
      dbeNumSobres: TSpinEdit;
      //Fin HPC_201708_ASO
      Procedure edtSecuenExit(Sender: TObject);
      Procedure dblOficinaExit(Sender: TObject);
      Procedure dblOficinaChange(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure sbtnAbajoClick(Sender: TObject);
      Procedure dblOficina2Change(Sender: TObject);
      Procedure dblOficina2Exit(Sender: TObject);
      Procedure spbtnArrivaClick(Sender: TObject);
      Procedure sbtnGeneraClick(Sender: TObject);
      Procedure fcShapeBtn1Click(Sender: TObject);
      Procedure sbtnIprimeClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      Procedure dbgSecuenciaDrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure DBGrid1DrawDataCell(Sender: TObject; Const Rect: TRect;
         Field: TField; State: TGridDrawState);
      Procedure DBGrid1DblClick(Sender: TObject);
      Procedure Timer1Timer(Sender: TObject);
   Private
      Function CalDig(nPass: Real): Real;
      Procedure RefresSec();
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FGenSobres: TFGenSobres;

Implementation

Uses Math, ASODM;

{$R *.dfm}

Procedure TFGenSobres.edtSecuenExit(Sender: TObject);
Begin
   //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
   //edtSecuen.Text := Format('%.4d', [StrToInt(edtSecuen.Text)]);
   //Fin HPC_201708_ASO
End;

Procedure TFGenSobres.dblOficinaExit(Sender: TObject);
Begin
   If edtOficina.Text <> '' Then edtOficina.Text := DM1.cdsOficina.FieldByname('OFDESNOM').AsString;
End;

Procedure TFGenSobres.dblOficinaChange(Sender: TObject);
Begin
   edtOficina.Text := DM1.cdsOficina.FieldByname('OFDESNOM').AsString;
End;

Procedure TFGenSobres.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      If (ActiveControl Is TwwDBLookupCombo) Or
         (ActiveControl Is TCheckBox) Then
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End
      Else
      Begin
         Key := #0;
         Perform(CM_DialogKey, VK_TAB, 0);
      End;
End;

Procedure TFGenSobres.sbtnAbajoClick(Sender: TObject);
Begin
   grbGenera.Enabled := False;
   grbFiltra.Enabled := True;
   grbImprime.Enabled := True;
   dblOficina2.SetFocus;
End;

Procedure TFGenSobres.dblOficina2Change(Sender: TObject);
Begin
   edtOficina1.Text := DM1.cdsOficina.FieldByname('OFDESNOM').AsString;
End;

Procedure TFGenSobres.dblOficina2Exit(Sender: TObject);
Begin
   If dblOficina2.Text <> '' Then edtOficina1.Text := DM1.cdsOficina.FieldByname('OFDESNOM').AsString;
End;

Procedure TFGenSobres.spbtnArrivaClick(Sender: TObject);
Var
   xSQL: String;
Begin
   grbImprime.Enabled := False;
   grbGenera.Enabled := True;
   dblOficina.SetFocus;

   xSQL := 'select COD_OFI OFICINA,COD_SEQ SECUEN,INICIO INICIO,FIN FINAL,PRINTER '
          +'from CAB_PASS '
          +'where COD_OFI=''AA'' ';
   DM1.cdsDbgCPass.Close;
   DM1.cdsDbgCPass.DataRequest(xSQL);
   DM1.cdsDbgCPass.Open;
End;

Procedure TFGenSobres.sbtnGeneraClick(Sender: TObject);
Var
   xSQL, vUltSeq: String;
   vInicio, nInicio, nFin, I: Integer;
   nPass, nDigVer: Real;
   sigue: boolean;
Begin
   //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
   xSQL := 'select COD_OFI,MAX(FIN) ULTIMO,MAX(TO_NUMBER(COD_SEQ)) ULTSEQ '
          +' from CAB_PASS '
          +' where COD_OFI='+quotedstr(trim(dblOficina.Text))
          +' group by COD_OFI';
   //Fin HPC_201708_ASO
   sigue := True;
   DM1.cdsCPass3.Close;
   DM1.cdsCPass3.DataRequest(xSQL);
   DM1.cdsCPass3.Open;
   Randomize;

   If DM1.cdsCPass3.RecordCount = 1 Then
   Begin
      nInicio := DM1.cdsCPass3.FieldByname('ULTIMO').AsInteger + 1;
      vInicio := nInicio;
      nFin := (nInicio + StrToInt(dbeNumSobres.Text)) - 1;
      vUltSeq := DM1.cdsCPass3.FieldByname('ULTSEQ').AsString;
   End
   Else
   Begin
      nInicio := 1;
      vInicio := nInicio;
      nFin := (nInicio + StrToInt(dbeNumSobres.Text)) - 1;
      vUltSeq := '00';
   End;

   For i := 1 To StrToInt(dbeNumSobres.Text) Do

   Begin

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
         DM1.cdsPass3.Close;
         DM1.cdsPass3.DataRequest('Select * from PASSWORD WHERE id_passwor=''' + FloaTTostr(nPass) + ''' ');
         DM1.cdsPass3.Open;
         If DM1.cdsPass3.RecordCount = 0 Then
         Begin
            DM1.cdsPass3.Insert;
            DM1.cdsPass3.FieldByName('PASSWORD').AsString := Format('%.4d', [StrToInt(FloatToStr(int(Random * 10000)))]);
            DM1.cdsPass3.FieldByName('ID_PASSWOR').AsFloat := nPass;
            DM1.cdsPass3.FieldByName('FEC_GEN').AsString := DateToStr(date);
            DM1.cdsPass3.FieldByName('COD_OFI').AsString := dblOficina.Text;
            //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
            //DM1.cdsPass3.FieldByName('COD_SEQ').AsString := Format('%.4d', [StrToInt(vUltSeq) + 1]);
            DM1.cdsPass3.FieldByName('COD_SEQ').AsString := IntToStr(StrToInt(vUltSeq) + 1);
            //Fin HPC_201708_ASO
            DM1.cdsPass3.FieldByName('CORRELATIV').AsString := IntToStr(nInicio);
            nInicio := nInicio + 1;
            sigue := False;
            if DM1.cdsPass3.ApplyUpdates(0)>0 then
            begin
               xSQL := 'insert into PASSWORD(PASSWORD, ID_PASSWOR, FEC_GEN, COD_OFI, COD_SEQ, CORRELATIV) '
                      +'values ('
                      +quotedstr(DM1.cdsPass3.FieldByName('PASSWORD').AsString)+','
                      +floattostr(DM1.cdsPass3.FieldByName('ID_PASSWOR').AsFloat)+','
                      +quotedstr(DM1.cdsPass3.FieldByName('FEC_GEN').AsString)+','
                      +quotedstr(DM1.cdsPass3.FieldByName('COD_OFI').AsString)+','
                      +quotedstr(DM1.cdsPass3.FieldByName('COD_SEQ').AsString)+','
                      +quotedstr(DM1.cdsPass3.FieldByName('CORRELATIV').AsString)+')';
               DM1.DCOM1.AppServer.EjecutaSql(xSQL);
            end;;
         End;
      End;
   End;

 //Actualiza la cabecera del archivo PASSWORD
   DM1.cdsCPass3.Close;
   DM1.cdsCPass3.DataRequest('SELECT * FROM CAB_PASS');
   DM1.cdsCPass3.Open;
   DM1.cdsCPass3.Insert;
   DM1.cdsCPass3.FieldByName('COD_OFI').AsString := dblOficina.Text;
   //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
   //DM1.cdsCPass3.FieldByName('COD_SEQ').AsString := Format('%.4d', [StrToInt(vUltSeq) + 1]);
   DM1.cdsCPass3.FieldByName('COD_SEQ').AsString := IntToStr(StrToInt(vUltSeq) + 1);
   //Fin HPC_201708_ASO
   DM1.cdsCPass3.FieldByName('INICIO').AsString := IntToStr(vInicio);
   DM1.cdsCPass3.FieldByName('FIN').AsString := IntToStr(nFin);
   DM1.cdsCPass3.FieldByName('FECCREA').AsDateTime := Date;
   DM1.cdsCPass3.FieldByName('USUCREA').AsString := COPY(TRIM(DM1.wUsuario), 1, 10);

   DM1.cdsCPass3.ApplyUpdates(-1);
   ShowMessage('Generación concluida');
   //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
   DM1.cdsCPass3.Close;
   dblOficina.SetFocus;
   //Fin HPC_201708_ASO
End;

Function TFGenSobres.CalDig(nPass: Real): Real;
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

Procedure TFGenSobres.fcShapeBtn1Click(Sender: TObject);
Begin
   RefresSec;
   edtSecuen.Text := '';
   dbeInicial.Text := '';
   dbeFinal.Text := '';
End;

Procedure TFGenSobres.sbtnIprimeClick(Sender: TObject);
Var
   xSQL: String;
Begin
   If (edtSecuen.Text = '') Or (dbeInicial.Text = '') Or (dbeFinal.Text = '') Then
   Begin
      ShowMessage('Falta datos para imprimir');
      exit;
   End;

   If DM1.cdsDbgCPass.FieldByName('PRINTER').AsString = 'S' Then
   Begin
      ShowMessage('Secuencia de sobres ya fue impresa');
      exit;
   End;
   //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
   xSQL := 'select COD_MOD, LIBELE, PASSWORD, ID_PASSWOR, FEC_GEN, COD_OFI, '
          +'      COD_SEQ, CORRELATIV, IMPRESO, CHK, USUARIO, EQUIPO, FEC_FOTO, '
          +'      ASOID, ASOCODMOD, ASOCODAUX, OFDESID_FOTO, SCAFOT, SCAFIR '
          +'from PASSWORD '
          +'where COD_OFI='+quotedstr(trim(dblOficina2.Text))
          +'  and COD_SEQ='+quotedstr(edtSecuen.Text)
          +'  and CORRELATIV>='+quotedstr(dbeInicial.Text)
          +'  and CORRELATIV<='+quotedstr(dbeFinal.Text);
   //Fin HPC_201708_ASO

   DM1.cdsPass3.Close;
   DM1.cdsPass3.DataRequest(xSQL);
   DM1.cdsPass3.Open;
   pprSobre.DeviceType := 'Printer';
   pprSobre.ShowPrintDialog := False;
   pprSobre.Print;

   DM1.cdsDbgCPass.Edit;
   DM1.cdsDbgCPass.FieldByName('PRINTER').AsString := 'S';
   //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
   xSQL := 'Update CAB_PASS '
          +'   set PRINTER=''S'',FECPRINT=''' + DateToStr(DATE) + ''',USUPRINT=''' + DM1.wUsuario + ''''
          +' where COD_OFI='+quotedstr(DM1.cdsDbgCPass.FieldByName('OFICINA').AsString)
          +'   and COD_SEQ='+quotedstr(DM1.cdsDbgCPass.FieldByName('SECUEN').AsString)
          +'   and INICIO='+quotedstr(DM1.cdsDbgCPass.FieldByName('INICIO').AsString);
   //Fin HPC_201708_ASO

   DM1.cdsPass3.Close;
   DM1.cdsPass3.DataRequest(xSQL);
   DM1.cdsPass3.Execute;

   edtSecuen.Text := '';
   dbeInicial.Text := '';
   dbeFinal.Text := '';
End;

Procedure TFGenSobres.FormActivate(Sender: TObject);
Var
   xSQL: String;
Begin
   //Inicio HPC_201708_ASO: Mejoras en la generación e impresión de sobres
   grbGenera.Enabled := True;
   grbFiltra.Enabled := False;
   grbImprime.Enabled := False;
   //Fin HPC_201708_ASO

//Inicio: DPP_201201_ASO
   xSQL := 'Select OFDESID,OFDESNOM from APO110 ORDER BY OFDESID';
   DM1.cdsOficina.Close;
   DM1.cdsOficina.DataRequest(xSQL);
   DM1.cdsOficina.Open;
//Fin: DPP_201201_ASO

   xSQL := 'Select COD_OFI OFICINA, COD_SEQ SECUEN, INICIO INICIO, FIN FINAL, PRINTER '
          +'from CAB_PASS '
          +'where COD_OFI = ''AA'' ';
   DM1.cdsDbgCPass.Close;
   DM1.cdsDbgCPass.DataRequest(xSQL);
   DM1.cdsDbgCPass.Open;
   //Inicio HPC_201708_ASO : Mejoras en la generación e impresión de sobres
   //dbeNumSobres.Text := '20';
   dbeNumSobres.Text := '5';
   //Fin HPC_201708_ASO
End;

Procedure TFGenSobres.dbgSecuenciaDrawDataCell(Sender: TObject;
   Const Rect: TRect; Field: TField; State: TGridDrawState);
Begin
   If DM1.cdsCPass3.FieldByName('PRINTER').AsString = 'S' Then
   Begin
      If (Field.DisplayName = 'Oficina') Or
         (Field.DisplayName = 'Secuen.') Or
         (Field.DisplayName = 'Inicio') Or
         (Field.DisplayName = 'Final') Then
      Begin
         dbgSecuencia.Canvas.Font.Color := clRed;
         dbgSecuencia.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;
End;

Procedure TFGenSobres.DBGrid1DrawDataCell(Sender: TObject; Const Rect: TRect;
   Field: TField; State: TGridDrawState);
Begin
   If DM1.cdsDbgCPass.FieldByName('PRINTER').AsString = 'S' Then
   Begin
      If (Field.DisplayName = 'OFICINA') Or
         (Field.DisplayName = 'SECUEN') Or
         (Field.DisplayName = 'INICIO') Or
         (Field.DisplayName = 'FINAL') Then
      Begin
         dbgSecuencia.Canvas.Font.Color := clRed;
         dbgSEcuencia.DefaultDrawDataCell(Rect, Field, State);
      End;
   End;
End;

Procedure TFGenSobres.DBGrid1DblClick(Sender: TObject);
Begin
   If DM1.cdsDbgCPass.FieldByName('PRINTER').AsString = 'S' Then
   Begin
      ShowMessage('Secuencia de sobres ya fue impresa');
      exit;
   End;

   edtSecuen.Text := DM1.cdsDbgCPass.FieldByName('SECUEN').AsString;
   dbeInicial.Text := DM1.cdsDbgCPass.FieldByName('INICIO').AsString;
   dbeFinal.Text := DM1.cdsDbgCPass.FieldByName('FINAL').AsString;
End;

//Refresca cabecera de secuencia

Procedure TFGenSobres.RefresSec;
Var
   xSQL: String;
Begin
   xSQL := 'Select COD_OFI OFICINA, COD_SEQ SECUEN, INICIO INICIO, FIN FINAL,PRINTER '
          +'from CAB_PASS '
          +'Where COD_OFI = '+quotedstr(dblOficina2.Text)
          +'  and USUCREA = '+quotedstr(DM1.wUsuario)
          +'  and PRINTER is null '
          +'order by COD_OFI, COD_SEQ';
   DM1.cdsDbgCPass.Close;
   DM1.cdsDbgCPass.DataRequest(xSQL);
   DM1.cdsDbgCPass.Open;
   DM1.cdsDbgCPass.Last;
End;

Procedure TFGenSobres.Timer1Timer(Sender: TObject);
Begin
   RefresSec;
End;

End.

