// Inicio Uso Estándares:	01/08/2011
// Unidad		            : ASO162.pas
// Formulario		        : FDetMig
// Fecha de Creación	     : 2009
// Autor			         : Equipo de Desarrollo de Sistemas DM
// Objetivo		          : Actualizar los datos del maestro de asociados

// Actualizaciones:
//HPC             FECHA       AUTOR      DESCRIPCION
//-------------------------------------------------------------------------------------------------------------------------
//HPC_201201_ASO  20/01/2012  DFERNANDEZ Se permite la actualización cuando la inconsistencia es por tipo de asociado diferente.
//                                       Se actualiza la situación de cuenta.

//DPP_201202_ASO : Se realiza el pase de acuerdo al HPC_201201_ASO

Unit ASO162;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, db, ExtCtrls, Mask;

Type
   TFDetMig = Class(TForm)
      dbgdetalle: TwwDBGrid;
      btnregact: TBitBtn;
      btnactualiza: TBitBtn;
      btnestadistica: TBitBtn;
      btncerrar: TBitBtn;

      btnProcesar: TBitBtn;
      btnCerPro: TBitBtn;
      rgTipChe: TRadioGroup;
      StaticText1: TStaticText;
      pnlCheRegAct: TPanel;

      Procedure FormActivate(Sender: TObject);
      Procedure BitBtn4Click(Sender: TObject);
      Procedure btnregactClick(Sender: TObject);
      Procedure btnactualizaClick(Sender: TObject);
      Procedure btnestadisticaClick(Sender: TObject);
      Procedure btncerrarClick(Sender: TObject);

      Procedure btnProcesarClick(Sender: TObject);
    procedure btnCerProClick(Sender: TObject);

   Private
      Procedure actualizadetalle(xactualiza: String);
      Procedure Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
      Function CodReg(): String;
      Procedure actasoncta;
      Function ValidaCuenta(xCuenta: String): String;
    { Private declarations }
   Public
    { Public declarations }
   End;
Var
   FDetMig: TFDetMig;

Implementation

Uses ASODM, ASO163;

{$R *.dfm}

Procedure TFDetMig.FormActivate(Sender: TObject);
Begin
   actualizadetalle('2');
   pnlCheRegAct.Visible := False;
End;

Procedure TFDetMig.BitBtn4Click(Sender: TObject);
Var
   xSql: String;
Begin
   xSql := 'UPDATE ASO_PAD_DES_DET A SET A.ASOID = (SELECT B.ASOID FROM APO201 B'
      + ' WHERE A.ASODNI = B.ASODNI AND SUBSTR(A.ASOAPENOM,1,5) = SUBSTR(B.ASOAPENOM,1,5)) WHERE ASOID IS NULL';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   MessageDlg('Actualización ha concluido', mtInformation, [mbOk], 0);
End;

Procedure TFDetMig.btnregactClick(Sender: TObject);
Begin
   pnlCheRegAct.visible := true;
// se añade panel: pnlCheRegAct, y se transfiere control de registros
// a actualizar a botón Procesar.
End;

Procedure TFDetMig.actualizadetalle(xactualiza: String);
Var
   xSql: String;
   xuseid, xasocodmod, xasocodpago, xcargo, xasoncta, xregpen, xasodeslab, xcolegio, xcarlab, xsitact, xtipser : Double;
Begin
   //Inicio: DPP_201202_ASO
   If xactualiza = '1' Then
      xSql := ' SELECT ROWID FILA, NUMERO, ASODNI, ASOCODMOD, ASOAPENOM, ASOAPEPAT, ASOAPEMAT,ASONOMBRES, ASONCTA,'
            + '       CARGO, ASOCODPAGO, ASOID, ASODESLAB, REGPENID, CODAFP, TOTHAB, TOTLIQ, CARLAB, SITACT, TIPSER,'
            + '       FLAACTASOCODMOD, FLAACTASOAPENOM, FLAACTASONCTA, FLAACTCARGO, FLAACTASOCODPAGO, FLAINC,'
            + '       FLAACTUSEID, FLAACTREGPEN, FLAACTASODESLAB, UPROID, UPAGOID, USEID, CODMODCOLEGIO, NIVEDU_IDCOLEGIO, '
            + '       FLAACTCOLEGIO, FLAACTCARLAB, FLAACTSITACT, FLAACTTIPSER, SITCTA '
            + ' FROM ASO_PAD_DES_DET '
            + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
   Else
      If xactualiza = '2' Then // de FormActivate, botón Procesar,
         xSql := ' SELECT ROWID FILA, NUMERO, ASODNI, ASOCODMOD, ASOAPENOM, ASOAPEPAT,ASOAPEMAT,ASONOMBRES, ASONCTA,'
                +'        CARGO, ASOCODPAGO, ASOID, ASODESLAB, REGPENID, CODAFP, TOTHAB, TOTLIQ, CARLAB, SITACT, TIPSER,'
                +'        FLAACTREGPEN, FLAACTASODESLAB, FLAACTASOCODMOD, FLAACTASOAPENOM, FLAACTASONCTA,'
                +'        FLAACTCARGO, FLAACTASOCODPAGO, FLAINC, FLAACTUSEID, UPROID, UPAGOID, USEID, CODMODCOLEGIO, NIVEDU_IDCOLEGIO, '
                +'        FLAACTCOLEGIO, FLAACTCARLAB, FLAACTSITACT, FLAACTTIPSER, SITCTA '
                +' FROM ASO_PAD_DES_DET'
                +' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
                +'   AND ASOID IS NOT NULL AND (FLAINC IS NULL OR FLAINC = ''F'')'
      Else
         If xactualiza = '3' Then // botón: Actualiza en Asociados
           xSql := ' SELECT ROWID FILA, NUMERO, ASODNI, ASOCODMOD, ASOAPENOM, ASOAPEPAT,ASOAPEMAT,ASONOMBRES, ASONCTA,'
                  +'        CARGO, ASOCODPAGO, ASOID, ASODESLAB, REGPENID, CODAFP, TOTHAB, TOTLIQ, CARLAB, SITACT, TIPSER,'
                  +'        FLAACTREGPEN, FLAACTASODESLAB, FLAACTASOCODMOD, FLAACTASOAPENOM, FLAACTASONCTA, FLAACTCARGO,'
                  +'        FLAACTASOCODPAGO, FLAINC, FLAACTUSEID, UPROID, UPAGOID, USEID, CODMODCOLEGIO, NIVEDU_IDCOLEGIO, '
                  +'        FLAACTCOLEGIO, FLAACTCARLAB, FLAACTSITACT, FLAACTTIPSER, SITCTA '
                  +' FROM ASO_PAD_DES_DET'
                  +' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
                  +'   AND ASOID IS NOT NULL AND (FLAINC IS NULL OR FLAINC = ''F'') AND REGACT IS NULL';
   //Fin: DPP_201202_ASO
   DM1.cdsCuotas.Close;
   DM1.cdsCuotas.DataRequest(xSql);
   DM1.cdsCuotas.Open;
   xasocodmod := 0;
   xasocodpago := 0;
   xcargo := 0;
   xasoncta := 0;
   xuseid := 0;
   xregpen := 0;
   xasodeslab := 0;
   xcolegio := 0;
   DM1.cdsCuotas.First;
   While Not DM1.cdsCuotas.Eof Do
   Begin
      If DM1.cdsCuotas.FieldByName('FLAACTASOCODMOD').AsString = 'S' Then xasocodmod := xasocodmod + 1;
      If DM1.cdsCuotas.FieldByName('FLAACTCARGO').AsString = 'S' Then xcargo := xcargo + 1;
      If DM1.cdsCuotas.FieldByName('FLAACTASOCODPAGO').AsString = 'S' Then xasocodpago := xasocodpago + 1;
      If DM1.cdsCuotas.FieldByName('FLAACTASONCTA').AsString = 'S' Then xasoncta := xasoncta + 1;
      If DM1.cdsCuotas.FieldByName('FLAACTUSEID').AsString = 'S' Then xuseid := xuseid + 1;
      If DM1.cdsCuotas.FieldByName('FLAACTREGPEN').AsString = 'S' Then xregpen := xregpen + 1;
      If DM1.cdsCuotas.FieldByName('FLAACTASODESLAB').AsString = 'S' Then xasodeslab := xasodeslab + 1;
      If DM1.cdsCuotas.FieldByName('FLAACTCOLEGIO').AsString = 'S' Then xcolegio := xcolegio + 1;
      DM1.cdsCuotas.Next;
   End;
   dbgdetalle.Selected.Clear;
   dbgdetalle.Selected.Add('UPROID'#9'5'#9'Uni.~Pro.'#9#9);
   dbgdetalle.Selected.Add('UPAGOID'#9'5'#9'Uni.~Pag.'#9#9);
   dbgdetalle.Selected.Add('USEID'#9'5'#9'Uni.~Ges.'#9#9);
   dbgdetalle.Selected.Add('ASOID'#9'10'#9'Identificación'#9#9);
   dbgdetalle.Selected.Add('ASODNI'#9'8'#9'DNI del~asociado'#9#9);
   dbgdetalle.Selected.Add('ASOCODMOD'#9'10'#9'Código~modular'#9#9);
   dbgdetalle.Selected.Add('ASOAPENOM'#9'50'#9'Apellidos~y Nombre(s)'#9#9);
   dbgdetalle.Selected.Add('ASONCTA'#9'10'#9'Cuenta de~ahorros'#9#9);
   //Inicio: DPP_201202_ASO
   dbgdetalle.Selected.Add('SITCTA'#9'6'#9'Sit.Cta.'#9#9);
   //Fin: DPP_201202_ASO
   dbgdetalle.Selected.Add('CARGO'#9'6'#9'Cargo'#9#9);
   dbgdetalle.Selected.Add('ASOCODPAGO'#9'20'#9'Código~de pago'#9#9);
   dbgdetalle.Selected.Add('ASODESLAB'#9'60'#9'Descripción del colegio'#9#9);
   dbgdetalle.Selected.Add('REGPENID'#9'2'#9'Reg.~Pen.'#9#9);
   dbgdetalle.Selected.Add('CODAFP'#9'2'#9'Cod.~AFP.'#9#9);
   dbgdetalle.Selected.Add('TOTHAB'#9'8'#9'Ingreso~Bruto'#9#9);
   dbgdetalle.Selected.Add('TOTLIQ'#9'8'#9'Ingreso~Neto'#9#9);
   dbgdetalle.Selected.Add('CARLAB'#9'2'#9'Cargo~Laboral'#9#9);
   dbgdetalle.Selected.Add('SITACT'#9'2'#9'Situación~Actual'#9#9);
   dbgdetalle.Selected.Add('TIPSER'#9'2'#9'Tipo~Servidor'#9#9);
   dbgdetalle.Selected.Add('FLAACTASOCODMOD'#9'1'#9'Flag~Cod.Mod.'#9#9);
   dbgdetalle.Selected.Add('FLAACTASONCTA'#9'1'#9'Flag~Cuenta'#9#9);
   dbgdetalle.Selected.Add('FLAACTCARGO'#9'1'#9'Flag~Cargo'#9#9);
   dbgdetalle.Selected.Add('FLAACTASOCODPAGO'#9'1'#9'Flag~Cod.Pago'#9#9);
   dbgdetalle.Selected.Add('FLAACTUSEID'#9'1'#9'Flag~Uni.Ges.'#9#9);
   dbgdetalle.Selected.Add('FLAACTREGPEN'#9'1'#9'Flag~Reg.Pen.'#9#9);
   dbgdetalle.Selected.Add('FLAACTASODESLAB'#9'1'#9'Flag~Des.Lab.'#9#9);
   dbgdetalle.Selected.Add('FLAACTCOLEGIO'#9'1'#9'Flag~Des.Col.'#9#9);
   dbgdetalle.ApplySelected;
   dbgdetalle.ColumnByName('FLAACTASOCODMOD').FooterValue := FloatToStrF(xasocodmod, ffNumber, 6, 0);
   dbgdetalle.ColumnByName('FLAACTASONCTA').FooterValue := FloatToStrF(xasoncta, ffNumber, 6, 0);
   dbgdetalle.ColumnByName('FLAACTCARGO').FooterValue := FloatToStrF(xcargo, ffNumber, 6, 0);
   dbgdetalle.ColumnByName('FLAACTASOCODPAGO').FooterValue := FloatToStrF(xasocodpago, ffNumber, 6, 0);
   dbgdetalle.ColumnByName('FLAACTUSEID').FooterValue := FloatToStrF(xuseid, ffNumber, 6, 0);
   dbgdetalle.ColumnByName('FLAACTREGPEN').FooterValue := FloatToStrF(xregpen, ffNumber, 6, 0);
   dbgdetalle.ColumnByName('FLAACTASODESLAB').FooterValue := FloatToStrF(xasodeslab, ffNumber, 6, 0);
   dbgdetalle.ColumnByName('FLAACTCOLEGIO').FooterValue := FloatToStrF(xcolegio, ffNumber, 6, 0);

   dbgdetalle.ColumnByName('FLAACTCARLAB').FooterValue := FloatToStrF(xcarlab, ffNumber, 6, 0);
   dbgdetalle.ColumnByName('FLAACTSITACT').FooterValue := FloatToStrF(xsitact, ffNumber, 6, 0);
   dbgdetalle.ColumnByName('FLAACTTIPSER').FooterValue := FloatToStrF(xtipser, ffNumber, 6, 0);
   TNumericField(DM1.cdsCuotas.FieldByName('TOTHAB')).DisplayFormat:='#,##0.#0';
   TNumericField(DM1.cdsCuotas.FieldByName('TOTLIQ')).DisplayFormat:='#,##0.#0'; 

   DM1.cdsCuotas.First;
   dbgdetalle.Refresh;
End;

Procedure TFDetMig.btnactualizaClick(Sender: TObject);
Var
   xItem, xAsoid, xCodReg, xfila, xSql, xSqlUpdate: String;
   xCENEDUID: String;
Begin
   If DM1.cdsCreditos.FieldByName('FLAACT').AsString = 'S' Then
   Begin
      MessageDlg('Información ya fue actualizada', mtInformation, [mbOk], 0);
      Exit;
   End;
   If DM1.cdsCreditos.FieldByName('FLACHE').AsString <> 'S' Then
   Begin
      MessageDlg('Ejecute primero chequear registros a actualizar', mtInformation, [mbOk], 0);
      Exit;
   End;

   xSQL := 'SELECT COUNT(*) CANTIDAD '
      + '     FROM ASO_PAD_DES_DET '
      + '    WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '      AND (NVL(FLAACTASOCODMOD,''X'')    = ''S'' '
      + '          OR NVL(FLAACTCARGO,''X'')      = ''S'' '
      + '          OR NVL(FLAACTASOCODPAGO,''X'') = ''S'''
      + '          OR NVL(FLAACTUSEID,''X'')      = ''S'' '
      + '          OR NVL(FLAACTASONCTA,''X'')    = ''S'' '
      + '          OR NVL(FLAACTREGPEN,''X'')     = ''S'' '
      + '          OR NVL(FLAACTASODESLAB,''X'')  = ''S'' '
      + '          OR NVL(FLAACTASOAPENOM,''X'')  = ''S'' '
      + '          OR NVL(FLAACTCOLEGIO,''X'')    = ''S'') ';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('CANTIDAD').AsInteger = 0 Then
   Begin
      MessageDlg('No existe registros para actualizar', mtInformation, [mbOk], 0);
      Exit;
   End;

   // actualizar en asociados
   actualizadetalle('3');
   DM1.cdsCuotas.First;
   While Not DM1.cdsCuotas.Eof Do
   Begin
      xSqlUpdate := '';
      xSql := '';
      xfila := 'N';
      If DM1.cdsCuotas.FieldByName('FLAACTASOCODMOD').AsString = 'S' Then
      Begin
         xSqlUpdate := xSqlUpdate + 'ASOCODMOD = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString);
         xfila := 'S';
      End;
      If DM1.cdsCuotas.FieldByName('FLAACTASONCTA').AsString = 'S' Then
      Begin
         If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
         //Inicio: DPP_201202_ASO
         xSqlUpdate := xSqlUpdate + 'ASONCTA = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASONCTA').AsString)+', SITCTA = ' + QuotedStr(DM1.cdsCuotas.FieldByName('SITCTA').AsString);
         //Fin: DPP_201202_ASO
         xfila := 'S';
      End;
      If DM1.cdsCuotas.FieldByName('FLAACTCARGO').AsString = 'S' Then
      Begin
         If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
         xSqlUpdate := xSqlUpdate + 'CARGO = ' + QuotedStr(DM1.cdsCuotas.FieldByName('CARGO').AsString);
         xfila := 'S';
      End;

      If DM1.cdsCuotas.FieldByName('FLAACTASOCODPAGO').AsString = 'S' Then
      Begin
         If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
         xSqlUpdate := xSqlUpdate + 'ASOCODPAGO = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODPAGO').AsString);
         xfila := 'S';
      End;

      If DM1.cdsCuotas.FieldByName('FLAACTUSEID').AsString = 'S' Then
      Begin
         If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
         xSqlUpdate := xSqlUpdate + 'UPROID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('UPROID').AsString)
            + ', UPAGOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('UPAGOID').AsString)
            + ', USEID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('USEID').AsString);
         xfila := 'S';
      End;

      If DM1.cdsCuotas.FieldByName('FLAACTASOAPENOM').AsString = 'S' Then
      Begin
         If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
         xSqlUpdate := xSqlUpdate + 'ASOAPEPAT = TRIM(' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPEPAT').AsString) + ')'
            + ', ASOAPEMAT = TRIM(' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPEMAT').AsString) + ')'
            + ', ASONOMBRES = TRIM(' + QuotedStr(DM1.cdsCuotas.FieldByName('ASONOMBRES').AsString) + ')'
            + ', ASOAPENOM = TRIM(' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString) + ')';
         xfila := 'S';
      End;

      If DM1.cdsCuotas.FieldByName('FLAACTCOLEGIO').AsString = 'S' Then
      Begin
         If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';

         XSQL := 'SELECT CENEDUID '
            + '  FROM ASO_CEN_EDU '
            + ' WHERE CODMOD =' + QuotedStr(Trim(DM1.cdsCuotas.FieldByName('CODMODCOLEGIO').AsString))
            + '   AND NIVEDU_ID=' + QuotedStr(Trim(DM1.cdsCuotas.FieldByName('NIVEDU_IDCOLEGIO').AsString));
         DM1.cdsQry22.Close;
         DM1.cdsQry22.DataRequest(xSql);
         DM1.cdsQry22.Open;
         xCENEDUID := DM1.cdsQry22.FieldByName('CENEDUID').asstring;
         xSqlUpdate := xSqlUpdate + 'CENEDUID = ' + QuotedStr(xCENEDUID);
         xfila := 'S';
      End;

      If DM1.cdsCuotas.FieldByName('FLAACTREGPEN').AsString = 'S' Then
      Begin
         If xFila = 'S' Then xSqlUpdate := xSqlUpdate + ',';
         //Inicio: DPP_201202_ASO
         xSqlUpdate := xSqlUpdate + 'REGPENID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('REGPENID').AsString);
         If DM1.cdsCuotas.FieldByName('REGPENID').AsString = '03' Then
         Begin
           If DM1.cdsCuotas.FieldByName('CODAFP').AsString <> '' Then
           Begin
              xSqlUpdate := xSqlUpdate + ', CODAFP = ' + QuotedStr(DM1.cdsCuotas.FieldByName('CODAFP').AsString);
           End;
         End
         Else
         Begin
            xSqlUpdate := xSqlUpdate + ', CODAFP = NULL';
         End;
         //Fin: DPP_201202_ASO
         xfila := 'S';
      End;

      // Actualiza MONTO_BRUTO, MONTO_LIQUIDO.
      // Siempre Inserta a la tabla APO206

// permite el descargo de Monto Bruto y Neto en 0
      If (DM1.cdsCuotas.FieldByName('TOTHAB').AsInteger >= 0) Or (DM1.cdsCuotas.FieldByName('TOTLIQ').AsInteger >= 0) Then
      Begin
        xSql := 'SELECT LPAD(MAX(ITEM+1),2,''0'') ITEM FROM APO206 WHERE ASOID = '+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
        DM1.cdsQry.Close;
        DM1.cdsQry.DataRequest(xSql);
        DM1.cdsQry.Open;
        If DM1.cdsQry.FieldByName('ITEM').AsString = '' Then xItem := '01' Else xItem := DM1.cdsQry.FieldByName('ITEM').AsString;
        xSql := 'INSERT INTO APO206(ASOID, ITEM, ASOCODMOD, AINGFAM, AINGMAG, FREG, HREG, USUARIO, IDE_PAD, CARLAB, TIPSER, SITACT, PERIODO )'
               +' VALUES ('+QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString)+','
                           +QuotedStr(xItem)+','
                           +QuotedStr(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)+','
                           +FloatToStr(DM1.cdsCuotas.FieldByName('TOTHAB').AsFloat)+','
                           +FloatToStr(DM1.cdsCuotas.FieldByName('TOTLIQ').AsFloat)+','
                           +' TRunc(SYSDATE), SYSDATE, '
                           +QuotedStr(DM1.wUsuario)+','
                           +QuotedStr(DM1.cdsCuotas.FieldByName('NUMERO').AsString)+','
                           +QuotedStr(DM1.cdsCuotas.FieldByName('CARLAB').AsString)+','
                           +QuotedStr(DM1.cdsCuotas.FieldByName('TIPSER').AsString)+','
                           +QuotedStr(DM1.cdsCuotas.FieldByName('SITACT').AsString)+','
                           +Quotedstr(DM1.cdsCreditos.FieldByName('PERIODO').AsString)+')';
        DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      End;
      // Fin Actualiza monto MONTO_BRUTO, MONTO_LIQUIDO.
      If xfila = 'S' Then
      Begin
         xAsoid := DM1.cdsCuotas.FieldByName('ASOID').AsString;
         xCodReg := CodReg;
         DM1.DCOM1.AppServer.SOLStartTransaction;
         Try
            Registro_Aud(xAsoId, '0', xCodReg);
            xSql := 'UPDATE APO201 SET ' + xSqlUpdate
               + ' WHERE ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            Registro_Aud(xAsoId, '1', xCodReg);
            If DM1.cdsCuotas.FieldByName('FLAACTASONCTA').AsString = 'S' Then actasoncta;
            xSql := 'UPDATE ASO_PAD_DES_DET SET REGACT = ''S'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
               + ' AND ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
            //HPP_200908_ASO - realizado por JDCRUZ
            DM1.DCOM1.AppServer.SolCommit;
         Except
            DM1.DCOM1.AppServer.SOLRollBack;
         End;
      End;
      DM1.cdsCuotas.Next;
   End;

  // Actualizando registro para estadisticas
   xSql := 'SELECT DPTOID, UPROID, UPAGOID, USEID,'
      + '       SUM(NVL(CANREGREC,0)) CANREGREC, '
      + '       SUM(NVL(CANREGUBI,0)) CANREGUBI, '
      + '       SUM(NVL(CANREGNOUBI,0)) CANREGNOUBI,'
      + '       SUM(NVL(CANREGMOD_ASOCODMOD,0)) CANREGMOD_ASOCODMOD, '
      + '       SUM(NVL(CANREGMOD_CARGO,0)) CANREGMOD_CARGO,'
      + '       SUM(NVL(CANREGMOD_USEID,0)) CANREGMOD_USEID,'
      + '       SUM(NVL(CANREGMOD_ASODESLAB,0)) CANREGMOD_ASODESLAB, '
      + '       SUM(NVL(CANREGMOD_REGPEN,0)) CANREGMOD_REGPEN,'
      + '       SUM(NVL(CANREGMOD_ASOCODPAGO,0)) CANREGMOD_ASOCODPAGO,'
      + '       SUM(NVL(CANREGMOD_ASONCTA,0)) CANREGMOD_ASONCTA, '
      + '       SUM(NVL(CANREGMOD,0)) CANREGMOD, '
      + '       SUM(NVL(CANREGMOD_COLEGIO,0)) CANREGMOD_COLEGIO, '

      + '       SUM(NVL(CANREGMOD_CARLAB,0)) CANREGMOD_CARLAB, '
      + '       SUM(NVL(CANREGMOD_SITACT,0)) CANREGMOD_SITACT, '
      + '       SUM(NVL(CANREGMOD_TIPSER,0)) CANREGMOD_TIPSER, '  
      + '       SUM(NVL(CANREGMOD_ASOAPENOM,0)) CANREGMOD_ASOAPENOM '
      + '       FROM ( SELECT C.DPTOID, B.UPROID, B.UPAGOID, B.USEID, 1 CANREGREC,'
      + '                     CASE WHEN ASOID IS NOT NULL THEN 1 ELSE 0 END CANREGUBI,'
      + '                     CASE WHEN ASOID IS NULL THEN 1 ELSE 0 END CANREGNOUBI,'
      + '                     CASE WHEN NVL(FLAACTASOCODMOD,''X'')  = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASOCODMOD,'
      + '                     CASE WHEN NVL(FLAACTCARGO,''X'')      = ''S'' THEN 1 ELSE 0 END CANREGMOD_CARGO,'
      + '                     CASE WHEN NVL(FLAACTUSEID,''X'')      = ''S'' THEN 1 ELSE 0 END CANREGMOD_USEID,'
      + '                     CASE WHEN NVL(FLAACTASOCODPAGO,''X'') = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASOCODPAGO,'
      + '                     CASE WHEN NVL(FLAACTASONCTA,''X'')    = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASONCTA,'
      + '                     CASE WHEN NVL(FLAACTREGPEN,''X'')     = ''S'' THEN 1 ELSE 0 END CANREGMOD_REGPEN,'
      + '                     CASE WHEN NVL(FLAACTASODESLAB,''X'')  = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASODESLAB,'
      + '                     CASE WHEN NVL(FLAACTASOAPENOM,''X'')  = ''S'' THEN 1 ELSE 0 END CANREGMOD_ASOAPENOM,'
      + '                     CASE WHEN NVL(FLAACTCOLEGIO,''X'')  = ''S'' THEN 1 ELSE 0 END CANREGMOD_COLEGIO,'

      + '                     CASE WHEN NVL(FLAACTCARLAB,''X'')  = ''S'' THEN 1 ELSE 0 END CANREGMOD_CARLAB,'
      + '                     CASE WHEN NVL(FLAACTSITACT,''X'')  = ''S'' THEN 1 ELSE 0 END CANREGMOD_SITACT,'
      + '                     CASE WHEN NVL(FLAACTTIPSER,''X'')  = ''S'' THEN 1 ELSE 0 END CANREGMOD_TIPSER,' 
      + '                     CASE WHEN (NVL(FLAACTASOCODMOD,''X'') = ''S'' '
      + '                                OR NVL(FLAACTCARGO,''X'') = ''S'' '
      + '                                OR NVL(FLAACTUSEID,''X'') = ''S'''
      + '                                OR NVL(FLAACTASOCODPAGO,''X'') = ''S'''
      + '                                OR NVL(FLAACTASONCTA,''X'') = ''S'' '
      + '                                OR NVL(FLAACTREGPEN,''X'') = ''S'''
      + '                                OR NVL(FLAACTASODESLAB,''X'') = ''S'''
      + '                                OR NVL(FLAACTASOAPENOM,''X'') = ''S'''
      + '                                OR NVL(FLAACTCOLEGIO,''X'') = ''S'''

      + '                                OR NVL(FLAACTCARLAB,''X'') = ''S'''
      + '                                OR NVL(FLAACTTIPSER,''X'') = ''S'''
      + '                                OR NVL(FLAACTSITACT,''X'') = ''S'''
      + '                                ) THEN 1 ELSE 0 END CANREGMOD '
      + '                FROM ASO_PAD_DES_CAB A, ASO_PAD_DES_DET B, APO101 C '
      + '               WHERE A.NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
   + ' AND A.NUMERO = B.NUMERO AND B.UPROID = C.UPROID AND B.UPAGOID = C.UPAGOID AND B.USEID = C.USEID AND NVL(C.FDESHABILITADO,''S'') = ''N'') GROUP BY DPTOID, UPROID, UPAGOID, USEID';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   DM1.cdsQry.First;
   While Not DM1.cdsQry.Eof Do
   Begin
      xSql := 'SELECT COUNT(*) CANTIDAD FROM (SELECT ASOID FROM CRE301 WHERE ASOID IN (SELECT ASOID FROM ASO_PAD_DES_DET'
         + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
         + ' AND UPROID = ' + QuotedStr(DM1.cdsQry.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsQry.FieldByName('UPAGOID').AsString) + ' AND USEID = ' + QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString)
         + ' AND (NVL(FLAACTASOCODMOD,''X'') = ''S'' OR NVL(FLAACTCARGO,''X'') = ''S'' OR NVL(FLAACTASOCODPAGO,''X'') = ''S'''
         + ' OR NVL(FLAACTUSEID,''X'') = ''S'') GROUP BY ASOID) AND CREESTID = ''02'' GROUP BY ASOID)';
      DM1.cdsQry1.Close;
      DM1.cdsQry1.DataRequest(xSql);
      DM1.cdsQry1.Open;
      xSql := 'SELECT COUNT(*) CANTIDAD FROM APO201 WHERE ASOID IN (SELECT ASOID FROM ASO_PAD_DES_DET'
         + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
         + ' AND UPROID = ' + QuotedStr(DM1.cdsQry.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsQry.FieldByName('UPAGOID').AsString) + ' AND USEID = ' + QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString)
         + ' AND (NVL(FLAACTASOCODMOD,''X'') = ''S'' OR NVL(FLAACTCARGO,''X'') = ''S'' OR NVL(FLAACTASOCODPAGO,''X'') = ''S'''
         + ' OR NVL(FLAACTUSEID,''X'') = ''S'') GROUP BY ASOID) AND NVL(AUTDESAPO,''X'') = ''S''';
      DM1.cdsQry2.Close;
      DM1.cdsQry2.DataRequest(xSql);
      DM1.cdsQry2.Open;
      xSql := 'SELECT COUNT(*) CANTIDAD FROM APO201'
         + ' WHERE UPROID = ' + QuotedStr(DM1.cdsQry.FieldByName('UPROID').AsString) + ' AND UPAGOID = ' + QuotedStr(DM1.cdsQry.FieldByName('UPAGOID').AsString) + ' AND USEID = ' + QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString)
         + ' AND ASOTIPID = ' + QuotedStr(DM1.cdsCreditos.FieldByName('ASOTIPID').AsString);
      DM1.cdsQry3.Close;
      DM1.cdsQry3.DataRequest(xSql);
      DM1.cdsQry3.Open;

      xSql := 'INSERT INTO ASO_RES_ACT_PAD (NUMERO, FECHOR, ASOTIPID, DPTOID, UPROID, UPAGOID, USEID,'
         + ' CANREGREC, CANREGUBI, CANREGNOUBI, CANREGMOD_ASOCODMOD, CANREGMOD_CARGO,'
         + ' CANREGMOD_USEID, CANREGMOD_REGPEN, CANREGMOD_ASODESLAB, CANREGMOD_ASOCODPAGO, CANREGMOD_ASONCTA, CANREGMOD, CANREGUGEL, '
         + ' MODCONCREVIG, MODCONAUTDES, PORACT, CANREGMOD_ASOAPENOM, CANREGMOD_COLEGIO, CANREGMOD_CARLAB, CANREGMOD_TIPSER, CANREGMOD_SITACT ) VALUES ('
         + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ','
         + QuotedStr(DateToStr(DM1.cdsCreditos.FieldByName('FECHOR').AsDateTime)) + ','
         + QuotedStr(DM1.cdsCreditos.FieldByName('ASOTIPID').AsString) + ','
         + QuotedStr(DM1.cdsQry.FieldByName('DPTOID').AsString) + ','
         + QuotedStr(DM1.cdsQry.FieldByName('UPROID').AsString) + ','
         + QuotedStr(DM1.cdsQry.FieldByName('UPAGOID').AsString) + ','
         + QuotedStr(DM1.cdsQry.FieldByName('USEID').AsString) + ','
         + DM1.cdsQry.FieldByName('CANREGREC').AsString + ','
         + DM1.cdsQry.FieldByName('CANREGUBI').AsString + ','
         + DM1.cdsQry.FieldByName('CANREGNOUBI').AsString + ','
         + DM1.cdsQry.FieldByName('CANREGMOD_ASOCODMOD').AsString + ','
         + DM1.cdsQry.FieldByName('CANREGMOD_CARGO').AsString + ','
         + DM1.cdsQry.FieldByName('CANREGMOD_USEID').AsString + ','
         + DM1.cdsQry.FieldByName('CANREGMOD_REGPEN').AsString + ','
         + DM1.cdsQry.FieldByName('CANREGMOD_ASODESLAB').AsString + ','
         + DM1.cdsQry.FieldByName('CANREGMOD_ASOCODPAGO').AsString + ','
         + DM1.cdsQry.FieldByName('CANREGMOD_ASONCTA').AsString + ','
         + DM1.cdsQry.FieldByName('CANREGMOD').AsString + ','
         + DM1.cdsQry3.FieldByName('CANTIDAD').AsString + ','
         + DM1.cdsQry1.FieldByName('CANTIDAD').AsString + ','
           + DM1.cdsQry2.FieldByName('CANTIDAD').AsString + ',';
           If DM1.cdsQry3.FieldByName('CANTIDAD').AsFloat = 0 Then
             xSql := xSql + '0,'
           Else
             xSql := xSql + FloatToStr(DM1.cdsQry.FieldByName('CANREGMOD').AsFloat / DM1.cdsQry3.FieldByName('CANTIDAD').AsFloat) + ',';
           xSql := xSql + DM1.cdsQry.FieldByName('CANREGMOD_ASOAPENOM').AsString + ','
                        + DM1.cdsQry.FieldByName('CANREGMOD_COLEGIO').AsString + ','
                        + DM1.cdsQry.FieldByName('CANREGMOD_CARLAB').AsString + ','
                        + DM1.cdsQry.FieldByName('CANREGMOD_TIPSER').AsString + ','
                        + DM1.cdsQry.FieldByName('CANREGMOD_SITACT').AsString + ')';
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      DM1.cdsQry.Next;
   End;
  // Actualizando cabecera de padrones
  // Marcando flag de concluido en el caso que se hayan actualizado
  // todos los registros
   xSql := 'SELECT COUNT(*) CANTIDAD FROM ASO_PAD_DES_DET WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + ' AND REGACT IS NULL AND (NVL(FLAACTASOCODMOD, ''X'') = ''S'' OR NVL(FLAACTASONCTA, ''X'')   = ''S'''
      + 'OR NVL(FLAACTASONCTA,''X'') = ''S'' OR NVL(FLAACTASOCODPAGO,''X'') = ''S'' OR NVL(FLAACTASOAPENOM,''X'') = ''S'''
      + ' OR NVL(FLAACTREGPEN,''X'') = ''S'' OR NVL(FLAACTASODESLAB,''X'') = ''S'' OR NVL(FLAACTUSEID,''X'') = ''S'' OR NVL(FLAACTCOLEGIO,''X'') = ''S'')';
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('CANTIDAD').AsInteger = 0 Then
   Begin
      xSql := 'UPDATE ASO_PAD_DES_CAB '
         + '   SET FLAACT = ''S'', '
         + '       FECHOR_ACT = SYSDATE '
         + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);

      xSql := 'SELECT FECHOR_ACT '
         + '  FROM ASO_PAD_DES_CAB '
         + '  WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;

      DM1.cdsCreditos.Edit;
      DM1.cdsCreditos.FieldByName('FLAACT').AsString := 'S';
      DM1.cdsCreditos.FieldByName('FECHOR_ACT').Value := DM1.cdsQry.FieldByName('FECHOR_ACT').Value;
      DM1.cdsCreditos.Post;
   End;
  // Actualizacion de asociados
   xSql := 'UPDATE APO201 SET FECACTPAD = SYSDATE WHERE ASOID IN (SELECT ASOID FROM ASO_PAD_DES_DET WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + ' GROUP BY ASOID)';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   MessageDlg('Actualización ha concluido', mtInformation, [mbOk], 0);
End;

//Registra Log de Asociados

Procedure TFDetMig.Registro_Aud(xAsoId, xSecuencia, xCodReg: String);
Var
   xSQL: String;
Begin
   If Length(Trim(xCodReg)) = 0 Then
   Begin
      MessageDlg(' No Se Grabo Log De USUARIO Informe al Equipo De Sistemas ', mtError, [mbOk], 0);
      Exit;
   End;
   Screen.Cursor := crHourGlass;
   xSql := 'INSERT INTO APO201_LOG(ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID,  ASOFACT,  ASOTIPID,'
      + ' VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL,'
      + ' BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID,'
      + ' CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL,'
      + ' ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID,'
      + ' PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO,'
      + ' GENCODBAR, ENVAUTDES, CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, ANOENV, ENVIO, USUARIO_AUD, REGISTRO_AUD,'
      + ' SECUENCIA, CODREG, MODULOID, CODOTRDOCIDE, NUMOTRDOCIDE,CENEDUID)'
      + ' SELECT ASOID, ASOCODMOD, ASOCODAUX, ASOCODPAGO, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASOAPENOM, USEID, UPROID, UPAGOID, ASORESNOM, ASOFRESNOM, RESID, REGPENID, ASOSITID,  ASOFACT,  ASOTIPID,'
      + ' VIAID, VIANOMBRE, ASONUMDIR, ASOFDPTO, ASODPTO, ZONAID, ZONANOMB, UBIGEOID, DPTOID, PAISID, REFDOM, ASOFECNAC, ASOTELF1, ASOTELF2, TIPDOCCOD, ASODOCNUM, ASOLIBMIL, ASORUC, ESTCIVID, ASOSEXO, ASOEMAIL,'
      + ' BANCOID, ASONCTA, SITCTA, ASODNI, GRAACID, GRAINSID, PROFID, ASOFMOV, ASOFLUGING, ASODIR, USUARIO, HREG, FREG, ASOLUGEST, FECTEREST, TIEMPOEST, ASOLNACID, ASORESCESE, ASOFRESCESE, FGARANTE, ZIPID,'
      + ' CIUDID, ARCHIVOFTP, CIAID, FLAGVAR, ASOAPNCRE, FLGFSOL, ESTCLF, OBSERVA, USR_CREA, FEC_CREA, USR_BEN, FEC_BEN, CTASER, CARGO, VARIASCUOT, CRENCUOTA, NFUSION, IDIMAGE, FSINLIQ, ASODESCOL, ASODIRCOL, ASOZIPCOL,'
      + ' ASOAPEPATDNI, ASOAPEMATDNI, ASONOMDNI, ASOAPENOMDNI, ASODESLAB, ASODIRLAB, ASODPTLABID, ASOPRVLABID, ASODSTLABID, ASOTELLAB, DPTNACID, PRVNACID, DSTNACID, VIALABID, ZONALABID, FECACT, INDICADOR, CCOSID,'
      + ' PASSWORD, CODAFP, DESHABILITADO, VALIDA_CI, TCREACION, REGVERIF, CODMODANT, VALCODMODDNI, ACTARCRENANT, ACTARCREN, REINGRESO, AUTDESAPO, FECAUTDESAPO, USUREGAUTDESAPO, OFIREGAUTDESAPO, CODMODAUTDESAPO, CODARCHIVO,'
      + ' GENCODBAR, ENVAUTDES, CORENVAUTDES, CODTIPLUG, NUMDIRVIV, NUMMANVIV, NUMLOTVIV, DESINTVIV, DESREFVIV, CODURBVIV, DESURBVIV, NUMETAVIV, DESETAVIV, NUMINTVIV, NOMDIRVIV, ANOENV, ENVIO,'
      + QuotedStr(DM1.wUsuario) + ',SYSDATE,' + QuotedStr(xSecuencia) + ',' + QuotedStr(xCodReg) + ',''ASO'', CODOTRDOCIDE, NUMOTRDOCIDE,CENEDUID FROM APO201'
      + ' WHERE ASOID=' + QuotedStr(xAsoId);
   DM1.DCOM1.AppServer.EjecutaSql(xSQL);
   Screen.Cursor := crDefault;
End;

Function TFDetMig.CodReg: String;
Var
   xSQL, xResAbn: String;
   xCorAbn: Integer;
Begin
   DM1.cdsListaCred.Close;
   xSQL := 'SELECT CREAREA,CORREANO,TIPO,ASOID FROM CRE206 WHERE CORREANO=' + QuotedStr(Copy(DateToStr(DM1.FechaSys), 7, 4)) + ' AND CREAREA=''ASO'' AND TIPO=''1''';
   DM1.cdsListaCred.DataRequest(xSQL);
   DM1.cdsListaCred.Open;
   If DM1.cdsListaCred.RecordCount = 1 Then
   Begin
      xCorAbn := StrToInt(DM1.cdsListaCred.fieldbyname('ASOID').AsString) + 1;
      xResAbn := Format('%.10d', [xCorAbn]);
      DM1.cdsListaCred.Edit;
      DM1.cdsListaCred.fieldbyname('ASOID').AsString := xResAbn;
      DM1.cdsListaCred.ApplyUpdates(0);
      Result := xResAbn;
   End;
   DM1.cdsListaCred.Close;
End;

Procedure TFDetMig.actasoncta;
Var
   xMaxItem, xSql: String;
Begin
  // actualiza asoncta
   xSql := 'SELECT * FROM APO201 WHERE ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
   DM1.cdsAso.Close;
   DM1.cdsAso.DataRequest(xSql);
   DM1.cdsAso.Open;
   xSql := 'UPDATE APO207 SET SITCTA = ''C'' WHERE ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
   xSql := 'SELECT LPAD(NVL(MAX(ASOITEM)+1,0),3,''0'') ITEM FROM APO207 WHERE ASOID =' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   If DM1.cdsQry.FieldByName('ITEM').AsString = '000' Then
      xMaxItem := '001'
   Else
      xMaxItem := DM1.cdsQry.FieldByName('ITEM').AsString;
   xSql := 'INSERT INTO APO207 (ASOID, ASOCODMOD, ASOCODAUX,  ASOAPENOM, ASONCTA, ASOITEM, SITCTA, BANCOID, USUARIO, FREG, HREG, MOTCTA)'
      + ' VALUES (' + QuotedStr(DM1.cdsAso.FieldByName('ASOID').AsString)
      + ',' + QuotedStr(DM1.cdsAso.FieldByName('ASOCODMOD').AsString)
      + ',' + QuotedStr(DM1.cdsAso.FieldByName('ASOCODAUX').AsString)
      + ',' + QuotedStr(DM1.cdsAso.FieldByName('ASOAPENOM').AsString)
      + ',' + QuotedStr(DM1.cdsCuotas.FieldByName('ASONCTA').AsString)
      + ',' + QuotedStr(xMaxItem)
      + ',''A'',''04'''
      + ',' + QuotedStr(DM1.wUsuario)
      + ', TO_DATE(SYSDATE), SYSDATE'
      + ',' + QuotedStr('ACTUALIZACION SEGUN PADRON ENVIADO POR LA UGEL') + ')';
   DM1.DCOM1.AppServer.EjecutaSql(xSql);
End;

Procedure TFDetMig.btnestadisticaClick(Sender: TObject);
Begin
   DM1.xSgr := '';
   Try
      Festadisticas := TFestadisticas.create(Self);
      Festadisticas.ShowModal;
   Finally
      Festadisticas.Free;
   End;
End;

Procedure TFDetMig.btncerrarClick(Sender: TObject);
Begin
   FDetMig.Close;
End;

Function TFDetMig.ValidaCuenta(xCuenta: String): String;
Var
   y, x, z, Resto, Suma: Integer;
Begin
   If xCuenta = '0000000000' Then Result := 'N';
   y := 0;
   Suma := 0;
   For x := 7 Downto 1 Do
   Begin
      y := y + 1;
      Suma := Suma + StrToInt(Copy(xCuenta, x + 3, 1)) * y;
   End;
   y := 1;
   For z := 3 Downto 1 Do
   Begin
      y := y + 1;
      Suma := Suma + StrtoInt(Copy(xCuenta, z, 1)) * y;
   End;
   Resto := Suma Mod 11;
   If Resto <> 0 Then
      Result := 'N'
   Else
      Result := 'S';
End;

Procedure TFDetMig.btnProcesarClick(Sender: TObject);
Var
   xSql: String;
   xflaactasocodmod, xflaactcargo, xflaactasocodpago: String;
   xflaactasoapenom, xflaactasodeslab, xflaactregpen, xflaactasoncta, xflaactuseid, xflaactcolegio: String;
   xCENEDUID: String;
Begin
   If DM1.cdsCreditos.FieldByName('FLAACT').AsString = 'S' Then
   Begin
      MessageDlg('Información ya fue actualizada', mtInformation, [mbOk], 0);
      Exit;
   End;
   // Para el caso que se elija reemplazar la información del padrón por los campos del APO201.
   screen.Cursor := crHourGlass;
   DM1.cdsCuotas.First;
   // Limpiando los flag de actualizacion antes de evaluar que se va a actualizar
   xSql := 'UPDATE ASO_PAD_DES_DET SET'
      + '       FLAACTASOCODMOD  = NULL,'
      + '       FLAACTCARGO      = NULL,'
      + '       FLAACTUSEID      = NULL,'
      + '       FLAACTASONCTA    = NULL,'
      + '       FLAACTREGPEN     = NULL,'
      + '       FLAACTASOAPENOM  = NULL,'
      + '       FLAACTASODESLAB  = NULL, '
      + '       FLAACTCOLEGIO    = NULL '
      + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

// actualiza por Reemplazo
   If rgTipChe.ItemIndex = 0 Then
   Begin
      While Not DM1.cdsCuotas.Eof Do
      Begin
         xflaactasocodmod := 'N';
         xflaactcargo := 'N';
         xflaactasocodpago := 'N';
         xflaactasoncta := 'N';
         xflaactuseid := 'N';
         xflaactasodeslab := 'N';
         xflaactregpen := 'N';
         xflaactasoapenom := 'N';
         xflaactcolegio := 'N';
         //Inicio: DPP_201202_ASO
         xSql := 'SELECT ASOCODMOD, ASOAPENOM, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASODESLAB, '
                +'       UPROID, UPAGOID, USEID, '
                +'       CENEDUID, REGPENID, CODAFP, CARGO, ASOCODPAGO, ASONCTA, SITCTA '
                +'FROM APO201 '
                +'WHERE ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
         //Fin: DPP_201202_ASO
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
         // Verificando si el colegio es diferente
            If (Trim(DM1.cdsCuotas.FieldByName('ASODESLAB').AsString) <> '')
               and (Trim(DM1.cdsCuotas.FieldByName('ASODESLAB').AsString) <> Trim(DM1.cdsQry.FieldByName('ASODESLAB').AsString)) then
            Begin
               xflaactasodeslab := 'S';
            End;
         // Verificando si el colegio es diferente
            xSql := 'SELECT CENEDUID '
               + '  FROM ASO_CEN_EDU '
               + ' WHERE CODMOD =' + QuotedStr(Trim(DM1.cdsCuotas.FieldByName('CODMODCOLEGIO').AsString))
               + '   AND NIVEDU_ID=' + QuotedStr(Trim(DM1.cdsCuotas.FieldByName('NIVEDU_IDCOLEGIO').AsString));
            DM1.cdsQry22.Close;
            DM1.cdsQry22.DataRequest(xSql);
            DM1.cdsQry22.Open;
            xCENEDUID := DM1.cdsQry22.FieldByName('CENEDUID').asstring;
            If (Trim(xCENEDUID) <> '')
               And (xCENEDUID <> Trim(DM1.cdsQry.FieldByName('CENEDUID').AsString)) Then
            Begin
               xflaactcolegio := 'S';
            End;
         // Verificando si el regimen de pension es diferente
            If (Trim(DM1.cdsCuotas.FieldByName('REGPENID').AsString + DM1.cdsCuotas.FieldByName('CODAFP').AsString) <> '')
               And (Trim(DM1.cdsCuotas.FieldByName('REGPENID').AsString + DM1.cdsCuotas.FieldByName('CODAFP').AsString) <> Trim(DM1.cdsQry.FieldByName('REGPENID').AsString + DM1.cdsQry.FieldByName('CODAFP').AsString)) Then
            Begin
               xflaactregpen := 'S';
            End;
         // Verificando si el código modular es diferente y que su longitud sea 10
            If (Length(Trim(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)) = 10)
               And (DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString <> DM1.cdsQry.FieldByName('ASOCODMOD').AsString) Then
            Begin
               xflaactasocodmod := 'S';
            End;
         // Verificando si los cargos son diferentes y que su longitud sea 6
            If (Length(Trim(DM1.cdsCuotas.FieldByName('CARGO').AsString)) = 6)
               And (DM1.cdsCuotas.FieldByName('CARGO').AsString <> DM1.cdsQry.FieldByName('CARGO').AsString) Then
            Begin
               xflaactcargo := 'S';
            End;
         // Verificando si los codigos de pago son diferentes
            If (Trim(DM1.cdsCuotas.FieldByName('ASOCODPAGO').AsString) <> '')
               And (Trim(DM1.cdsCuotas.FieldByName('ASOCODPAGO').AsString) <> Trim(DM1.cdsQry.FieldByName('ASOCODPAGO').AsString)) Then
            Begin
               xflaactasocodpago := 'S';
            End;

         // Verificando si el apellido y nombre es diferente
            If (Trim(DM1.cdsQry.FieldByName('ASOAPENOM').AsString) = '')
               Or
               (Trim(DM1.cdsQry.FieldByName('ASOAPEPAT').AsString) = '')
               Or
               (Trim(DM1.cdsQry.FieldByName('ASOAPEMAT').AsString) = '')
               Or
               (Trim(DM1.cdsQry.FieldByName('ASONOMBRES').AsString) = '')
               Or
               ((Trim(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString) <> '')
               And (Trim(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString) <> Trim(DM1.cdsQry.FieldByName('ASOAPENOM').AsString))) Then
            Begin
               xflaactasoapenom := 'S';
            End;
         // Inicio: DPP_201202_ASO
         // Verificando si la cuenta son diferentes y que su longitud sea 10 y validacion de cuenta
            If ((Length(Trim(DM1.cdsCuotas.FieldByName('ASONCTA').AsString)) = 10)
               And (DM1.cdsCuotas.FieldByName('ASONCTA').AsString <> DM1.cdsQry.FieldByName('ASONCTA').AsString)
               And (ValidaCuenta(DM1.cdsCuotas.FieldByName('ASONCTA').AsString) = 'S'))
               Or (DM1.cdsCuotas.FieldByName('SITCTA').AsString <> DM1.cdsQry.FieldByName('SITCTA').AsString) Then
         // Fin: DPP_201202_ASO
            Begin
               xSql := 'SELECT ASONCTA FROM APO201 WHERE ASONCTA = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASONCTA').AsString);
               DM1.cdsQry2.Close;
               DM1.cdsQry2.DataRequest(xSql);
               DM1.cdsQry2.Open;
               //Inicio: DPP_201202_ASO
               If (DM1.cdsQry2.RecordCount = 0)
                Or (DM1.cdsCuotas.FieldByName('SITCTA').AsString <> DM1.cdsQry.FieldByName('SITCTA').AsString) Then
                  xflaactasoncta := 'S';
               //Fin: DPP_201202_ASO
            End;
         // Verifica que existen información de uproid, upagoid y useid
            If (Trim(DM1.cdsCuotas.FieldByName('UPROID').AsString) <> '') And (Trim(DM1.cdsCuotas.FieldByName('UPAGOID').AsString) <> '')
               And (Trim(DM1.cdsCuotas.FieldByName('USEID').AsString) <> '') Then
            Begin
           // verifica que la ugel exista en la tabla de ugeles
               xSql := 'SELECT COUNT(*) CANTIDAD FROM APO101'
                  + ' WHERE UPROID  = ' + QuotedStr(DM1.cdsCuotas.FieldByName('UPROID').AsString)
                  + '   AND UPAGOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('UPAGOID').AsString)
                  + '   AND USEID   = ' + QuotedStr(DM1.cdsCuotas.FieldByName('USEID').AsString)
                  + '   AND NVL(FDESHABILITADO,''S'') = ''N'' ';
               DM1.cdsUSES.Close;
               DM1.cdsUSES.DataRequest(xSql);
               DM1.cdsUSES.Open;
               If DM1.cdsUSES.FieldByName('CANTIDAD').AsInteger = 1 Then
               Begin
           // verificando si la use es diferente
                  If (Trim(DM1.cdsCuotas.FieldByName('UPROID').AsString) <> Trim(DM1.cdsQry.FieldByName('UPROID').AsString)) Or
                     (Trim(DM1.cdsCuotas.FieldByName('UPAGOID').AsString) <> Trim(DM1.cdsQry.FieldByName('UPAGOID').AsString)) Or
                     (Trim(DM1.cdsCuotas.FieldByName('USEID').AsString) <> Trim(DM1.cdsQry.FieldByName('USEID').AsString)) Then
                  Begin
                     xflaactuseid := 'S';
                  End;
               End;
            End;
         End;
         xSql := 'UPDATE ASO_PAD_DES_DET SET '
            + '       FLAACTASOCODMOD  = ' + QuotedStr(xflaactasocodmod)
            + '      ,FLAACTCARGO      = ' + QuotedStr(xflaactcargo)
            + '      ,FLAACTASONCTA    = ' + QuotedStr(xflaactasoncta)
            + '      ,FLAACTASOCODPAGO = ' + QuotedStr(xflaactasocodpago)
            + '      ,FLAACTUSEID      = ' + QuotedStr(xflaactuseid)
            + '      ,FLAACTREGPEN     = ' + QuotedStr(xflaactregpen)
            + '      ,FLAACTASODESLAB  = ' + QuotedStr(xflaactasodeslab)
            + '      ,FLAACTASOAPENOM  = ' + QuotedStr(xflaactasoapenom)
            + '      ,FLAACTCOLEGIO  = ' + QuotedStr(xflaactcolegio)
            + ' WHERE ROWID            = ' + QuotedStr(DM1.cdsCuotas.FieldByName('FILA').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         DM1.cdsCuotas.Next;
      End;
   End;

// Para el caso que se elija solo actualizar registros en blanco
   If rgTipChe.ItemIndex = 1 Then
   Begin
      While Not DM1.cdsCuotas.Eof Do
      Begin
         xflaactasocodmod := 'N';
         xflaactcargo := 'N';
         xflaactasocodpago := 'N';
         xflaactasoncta := 'N';
         xflaactuseid := 'N';
         xflaactasodeslab := 'N';
         xflaactregpen := 'N';
         xflaactasoapenom := 'N';
         xflaactcolegio := 'N';
         xSQL := 'SELECT ASOCODMOD, ASOAPENOM, ASOAPEPAT, ASOAPEMAT, ASONOMBRES, ASODESLAB, '
                +'       UPROID, UPAGOID, USEID, '
                +'       CENEDUID, REGPENID, CODAFP, CARGO, ASOCODPAGO, ASONCTA '
                +'FROM APO201 '
                +'WHERE ASOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASOID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         If DM1.cdsQry.RecordCount > 0 Then
         Begin
         // Verificando si el colegio es diferente
            If (Trim(DM1.cdsCuotas.FieldByName('ASODESLAB').AsString) <> '') And (Trim(DM1.cdsQry.FieldByName('ASODESLAB').AsString) = '') Then
            Begin
               xflaactasodeslab := 'S';
            End;
         // Verificando si el colegio es diferente
            If Trim(DM1.cdsQry.FieldByName('CENEDUID').AsString) = '' Then
            Begin
               If (DM1.cdsCuotas.FieldByName('CODMODCOLEGIO').AsString <> '') And (DM1.cdsCuotas.FieldByName('NIVEDU_IDCOLEGIO').AsString <> '') Then
               Begin
             // Verificando si existe el colegio en la tabla de colegios
                  XSQL := 'SELECT CENEDUID FROM ASO_CEN_EDU WHERE CODMOD =' + QuotedStr(Trim(DM1.cdsCuotas.FieldByName('CODMODCOLEGIO').AsString))
                     + ' AND NIVEDU_ID=' + QuotedStr(Trim(DM1.cdsCuotas.FieldByName('NIVEDU_IDCOLEGIO').AsString));
                  DM1.cdsQry22.Close;
                  DM1.cdsQry22.DataRequest(xSql);
                  DM1.cdsQry22.Open;
                  If DM1.cdsQry22.RecordCount = 1 Then
                  Begin
                     xflaactcolegio := 'S';
                  End;
               End;
            End;
         // Verificando si el regimen de pension es diferente
            If (Trim(DM1.cdsCuotas.FieldByName('REGPENID').AsString + DM1.cdsCuotas.FieldByName('CODAFP').AsString) <> '')
               And (Trim(DM1.cdsQry.FieldByName('REGPENID').AsString + DM1.cdsQry.FieldByName('CODAFP').AsString) = '') Then
            Begin
               xflaactregpen := 'S';
            End;
         // Verificando si el código modular es diferente y que su longitud sea 10
            If (Length(Trim(DM1.cdsCuotas.FieldByName('ASOCODMOD').AsString)) = 10) And (Trim(DM1.cdsQry.FieldByName('ASOCODMOD').AsString) = '') Then
            Begin
               xflaactasocodmod := 'S';
            End;
         // Verificando si los cargos son diferentes y que su longitud sea 6
            If (Length(Trim(DM1.cdsCuotas.FieldByName('CARGO').AsString)) = 6) And (DM1.cdsQry.FieldByName('CARGO').AsString = '') Then
            Begin
               xflaactcargo := 'S';
            End;
         // Verificando si los codigos de pago son diferentes
            If (Trim(DM1.cdsCuotas.FieldByName('ASOCODPAGO').AsString) <> '') And (Trim(DM1.cdsQry.FieldByName('ASOCODPAGO').AsString) = '') Then
            Begin
               xflaactasocodpago := 'S';
            End;

         // Verificando si el apellido y nombre es diferente
            If (Trim(DM1.cdsCuotas.FieldByName('ASOAPENOM').AsString) <> '') And
               ((Trim(DM1.cdsQry.FieldByName('ASOAPENOM').AsString) = '') Or (Trim(DM1.cdsQry.FieldByName('ASOAPEPAT').AsString) = '')
               Or (Trim(DM1.cdsQry.FieldByName('ASOAPEMAT').AsString) = '') Or (Trim(DM1.cdsQry.FieldByName('ASONOMBRES').AsString) = '')) Then
            Begin
               xflaactasoapenom := 'S';
            End;

         // Verificando si la cuenta son diferentes y que su longitud sea 10 y validacion de cuenta
         //Inicio: DPP_201202_ASO
            If ((Length(Trim(DM1.cdsCuotas.FieldByName('ASONCTA').AsString)) = 10) And (Trim(DM1.cdsQry.FieldByName('ASONCTA').AsString) = '')
               And (ValidaCuenta(DM1.cdsCuotas.FieldByName('ASONCTA').AsString) = 'S'))
               or ((DM1.cdsCuotas.FieldByName('SITCTA').AsString <> '') And (DM1.cdsQry.FieldByName('SITCTA').AsString = '')) Then
         //Fin: DPP_201202_ASO
            Begin
               xSql := 'SELECT ASONCTA FROM APO201 WHERE ASONCTA = ' + QuotedStr(DM1.cdsCuotas.FieldByName('ASONCTA').AsString);
               DM1.cdsQry2.Close;
               DM1.cdsQry2.DataRequest(xSql);
               DM1.cdsQry2.Open;
               //Inicio: DPP_201202_ASO
               If (DM1.cdsQry2.RecordCount = 0) Or (DM1.cdsQry.FieldByName('SITCTA').AsString = '') Then xflaactasoncta := 'S';
               //Fin: DPP_201202_ASO
            End;
         // Verifica que existen información de uproid, upagoid y useid
            If (Trim(DM1.cdsCuotas.FieldByName('UPROID').AsString) <> '') And (Trim(DM1.cdsCuotas.FieldByName('UPAGOID').AsString) <> '') And (Trim(DM1.cdsCuotas.FieldByName('USEID').AsString) <> '') Then
            Begin
           // verifica que la ugel exista en la tabla de ugeles
               xSql := 'SELECT COUNT(*) CANTIDAD FROM APO101'
                  + ' WHERE UPROID  = ' + QuotedStr(DM1.cdsCuotas.FieldByName('UPROID').AsString)
                  + '   AND UPAGOID = ' + QuotedStr(DM1.cdsCuotas.FieldByName('UPAGOID').AsString)
                  + '   AND USEID   = ' + QuotedStr(DM1.cdsCuotas.FieldByName('USEID').AsString)
                  + '   AND NVL(FDESHABILITADO,''S'') = ''N'' ';
               DM1.cdsUSES.Close;
               DM1.cdsUSES.DataRequest(xSql);
               DM1.cdsUSES.Open;
               If DM1.cdsUSES.FieldByName('CANTIDAD').AsInteger = 1 Then
               Begin
           // verificando si la use es diferente
                  If (Trim(DM1.cdsQry.FieldByName('UPROID').AsString) = '') Or (Trim(DM1.cdsQry.FieldByName('UPAGOID').AsString) = '') Or
                     (Trim(DM1.cdsQry.FieldByName('USEID').AsString) = '') Then
                  Begin
                     xflaactuseid := 'S';
                  End;
               End;
            End;
         End;
         xSql := 'UPDATE ASO_PAD_DES_DET SET '
            + '       FLAACTASOCODMOD  = ' + QuotedStr(xflaactasocodmod)
            + '      ,FLAACTCARGO      = ' + QuotedStr(xflaactcargo)
            + '      ,FLAACTASONCTA    = ' + QuotedStr(xflaactasoncta)
            + '      ,FLAACTASOCODPAGO = ' + QuotedStr(xflaactasocodpago)
            + '      ,FLAACTUSEID      = ' + QuotedStr(xflaactuseid)
            + '      ,FLAACTREGPEN     = ' + QuotedStr(xflaactregpen)
            + '      ,FLAACTASODESLAB  = ' + QuotedStr(xflaactasodeslab)
            + '      ,FLAACTASOAPENOM  = ' + QuotedStr(xflaactasoapenom)
            + '      ,FLAACTCOLEGIO  = ' + QuotedStr(xflaactcolegio)
            + ' WHERE ROWID            = ' + QuotedStr(DM1.cdsCuotas.FieldByName('FILA').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         DM1.cdsCuotas.Next;
      End;
   End;
   actualizadetalle('2');
   xSql := 'UPDATE ASO_PAD_DES_CAB '
      + '   SET FLACHE = ''S'', '
      + '       FECHOR_CHE = SYSDATE '
      + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   xSql := 'SELECT FECHOR_CHE '
      + '  FROM ASO_PAD_DES_CAB '
      + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.cdsQry.Close;
   DM1.cdsQry.DataRequest(xSql);
   DM1.cdsQry.Open;
   DM1.cdsCreditos.Edit;
   DM1.cdsCreditos.FieldByName('FLACHE').AsString := 'S';
   DM1.cdsCreditos.FieldByName('FECHOR_CHE').Value := DM1.cdsQry.FieldByName('FECHOR_CHE').Value;
   DM1.cdsCreditos.Post;
   screen.Cursor := crDefault;
   MessageDlg('El proceso de chequeo ha concluido', mtInformation, [mbOk], 0);
   pnlCheRegAct.Visible := False;
End;

procedure TFDetMig.btnCerProClick(Sender: TObject);
begin
   pnlCheRegAct.Visible := False;
end;

End.

