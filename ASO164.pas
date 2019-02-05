Unit ASO164;

// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO164.pas
// Formulario              :  Fdeparcmig
// Fecha de Creación       :  2008
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Depuración de Padrones
//    		               :  Permite depurar el archivo importado
//                            1. Identificar los registros de asociado correspondientes a los datos obtenidos del padrón.
//                            2. Identificar las inconsistencias o diferencias entre los datos obtenidos del padrón y los
//                               que figuran en el maestro de asociados.
//                            3. Realizar cambios manuales de los datos obtenidos del padrón para su correcta importación
//                               al maestro de asociados.

// Actualizaciones:
// HPP_00024_ASO  - 23/09/2008
// HPP_200906_ASO - Chequeando COLEGIOS inconsistentes
// HPP_200908_ASO - SAR2009-0256
// HPP_200909_ASO, se retira, para que el colegio no sea obligatorio para ningun Tipo de Asociado
// HPC_201102_ASO SAR_2010_0155
//                marca como inconsistente con valor 'H' a aquellos registros que tienen el Año+Mes de Fecha Actualización datos Socio Económicos
//                mayor al Año+Mes del Padrón a descargar
// HPP_201104_ASO
// HPC_201201_ASO  13/10/2011  DFERNANDEZ Se cambia para que identifique un Tipo de Asociado diferente respecto al maestro de asociado
// HPC_201201_ASO  06/01/2012  DFERNANDEZ Se agregó el par cuenta bancaria/situación y régimen de pensión como columnas.

//DPP_201202_ASO : Se realiza el pase de acuerdo al HPC_201201_ASO

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Buttons, ExtCtrls, Mask;

Type
   Tfdeparcmig = Class(TForm)
      dbgdepurar: TwwDBGrid;
      btncerrar: TBitBtn;
      btneliinc: TBitBtn;
      btnelireg: TBitBtn;
      btnreemplazar: TBitBtn;
      pnlreemplazar: TPanel;
      GroupBox1: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      sbaceptar: TSpeedButton;
      sbcancelar: TSpeedButton;
      StaticText1: TStaticText;
      mebusca: TMaskEdit;
      mereemplaza: TMaskEdit;
      btnanadirasoid: TBitBtn;
      BitBtn1: TBitBtn;
      Procedure FormActivate(Sender: TObject);
      Procedure btneliincClick(Sender: TObject);
      Procedure dbgdepurarTitleButtonClick(Sender: TObject;
         AFieldName: String);
      Procedure btneliregClick(Sender: TObject);
      Procedure btnreemplazarClick(Sender: TObject);
      Procedure sbaceptarClick(Sender: TObject);
      Procedure sbcancelarClick(Sender: TObject);
      Procedure btncerrarClick(Sender: TObject);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
      Procedure btnanadirasoidClick(Sender: TObject);
      Procedure BitBtn1Click(Sender: TObject);
   Private
      Function esnumero(strNumero: String): Boolean;
      Procedure actdet;
      { Private declarations }
   Public
      { Public declarations }
   End;

Var
   fdeparcmig: Tfdeparcmig;

Implementation

Uses ASODM, ASO163;

{$R *.dfm}

Procedure Tfdeparcmig.FormActivate(Sender: TObject);
Begin
   pnlreemplazar.Visible := False;
   actdet;
End;

Function Tfdeparcmig.esnumero(strNumero: String): Boolean;
Var
   currNumero: Currency;
Begin
   result := True;
   Try
      currNumero := StrToCurr(strNumero);
   Except
      result := False;
   End;
End;

Procedure Tfdeparcmig.btneliincClick(Sender: TObject);
Var
   xSql: String;
Begin
// Chequeando codigo modular
   Screen.Cursor := crHourGlass;

// BORRA CODIGOS MODULARES ERRADOS
   DM1.cdsQry20.First;
   While Not DM1.cdsQry20.Eof Do
   Begin
      If esnumero(DM1.cdsQry20.FieldByName('ASOCODMOD').AsString) = False Then
      Begin
         xSql := 'DELETE FROM ASO_PAD_DES_DET WHERE ROWID = ' + QuotedStr(DM1.cdsQry20.FieldByName('FILA').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      End;
      DM1.cdsQry20.Next;
   End;
   actdet;
   Screen.Cursor := crDefault;
End;

Procedure Tfdeparcmig.actdet;
Var
   xSql: String;
Begin
   Screen.Cursor := crHourGlass;
   xSql := 'SELECT ROWID FILA, ASOID, ' + DM1.cdsCreditos.FieldByName('DESCAM').AsString
      + ' FROM ASO_PAD_DES_DET'
      + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.cdsQry20.Close;
   DM1.cdsQry20.DataRequest(xSql);
   DM1.cdsQry20.Open;
   Screen.Cursor := crDefault;
End;

Procedure Tfdeparcmig.dbgdepurarTitleButtonClick(Sender: TObject;
   AFieldName: String);
Var
   xindexo, xfindexo: String;
Begin
   If AFieldName = 'ASOCODMOD' Then
   Begin
      xindexo := 'S';
      xfindexo := 'ASOCODMOD';
   End;
   If xindexo = 'S' Then Dm1.cdsQry20.IndexFieldNames := xfindexo;
End;

Procedure Tfdeparcmig.btneliregClick(Sender: TObject);
Var
   xSql: String;
Begin
   If MessageDlg('¿ Seguro de eliminar el registro ?', mtconfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      Screen.Cursor := crHourGlass;
      xSql := 'DELETE FROM ASO_PAD_DES_DET WHERE ROWID = ' + QuotedStr(DM1.cdsQry20.FieldByName('FILA').AsString);
      DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      actdet;
      Screen.Cursor := crDefault;
   End;
End;

Procedure Tfdeparcmig.btnreemplazarClick(Sender: TObject);
Begin
   // buscar y reemplazar
   pnlreemplazar.Visible := True;
   mebusca.SetFocus;
   pnlreemplazar.Top := 217;
   pnlreemplazar.Left := 281;
End;

Procedure Tfdeparcmig.sbaceptarClick(Sender: TObject);
Var
   xSql: String;
Begin
   If Trim(mebusca.Text) = '' Then
   Begin
      MessageDlg('Ingrese caracter a buscar', mtError, [mbOk], 0);
      mebusca.SetFocus;
      Exit;
   End;
   If Trim(mereemplaza.Text) = '' Then
   Begin
      MessageDlg('Ingrese caracter a reemplazar', mtError, [mbOk], 0);
      mereemplaza.SetFocus;
      Exit;
   End;
   If MessageDlg('Seguro de modificar los caracteres', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then
   Begin
      Screen.Cursor := crHourGlass;
      xSql := 'UPDATE ASO_PAD_DES_DET '
         + '   SET ASOAPENOM = REPLACE(ASOAPENOM,' + QuotedStr(Trim(mebusca.Text)) + ',' + QuotedStr(Trim(mereemplaza.Text)) + ')'
         + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
      DM1.DCOM1.AppServer.EjecutaSql(xSql);
      actdet;
      Screen.Cursor := crDefault;
   End;
   pnlreemplazar.Visible := False;
End;

Procedure Tfdeparcmig.sbcancelarClick(Sender: TObject);
Begin
   pnlreemplazar.Visible := False;
End;

Procedure Tfdeparcmig.btncerrarClick(Sender: TObject);
Begin
   fdeparcmig.Close;
End;

Procedure Tfdeparcmig.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
   Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
   End;
End;

Procedure Tfdeparcmig.btnanadirasoidClick(Sender: TObject);
Var
   xSql: String;
   xAnoMes_en_Maestro : String;
Begin
   // Marcando inconsistencias
   // Marcando asociados sin dni
   // Inconsistencias
   // E = el registro no contiene DNI
   // A = Asociados repetidos por COD. MOD.
   // D = DNI es inconsistente con relación al COD. MOD.
   // B = Asociados repetidos por DNI
   // Y = Asociados con DNI iguales y las 5 primeras letras del apellido+nombre diferente
   // U = Unidad de gestión no es consistente por la tabla de APO101
   // W = Ugel es diferente a las dos primeras letras de la unidad de pago
   // X = Ugel no pertenece al departamento del padron
   // R = Regimen de pension inconsistente
   // S = Afp sin código de AFP
   // C = ASOID repetidos
   // F = tipo de asotipid diferente al apo201
   // G = NO EXISTE EL COLEGIO

   // L = Cargo laboral
   // M = Situación actual
   // T = Tipo de servicio
// Inicio: DPP_201202_ASO
   // V = Registrar Número de Cuenta y Situación
// Fin: DPP_201202_ASO

   Screen.Cursor := crHourGlass;
   xSQL := 'update ASO_PAD_DES_DET '
          +'set FLAINC=null, FLAINC_DETCOL=null '
         + 'WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

// E = el registro no contiene DNI
   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''E'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '   AND ASODNI IS NULL AND FLAINC IS NULL';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Marcando asociados repetidos por código modular
   // A = Asociados repetidos por COD. MOD.
   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''A'' WHERE ASOCODMOD||SUBSTR(ASOAPENOM,1,5)'
      + '    IN (SELECT ASOCODMOD||SUBSTR(ASOAPENOM,1,5) FROM ASO_PAD_DES_DET WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + ' GROUP BY ASOCODMOD||SUBSTR(ASOAPENOM,1,5) HAVING COUNT(*) > 1 ) AND NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ' AND FLAINC IS NULL';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Marcando para la no actualización aquellos que tienen DNI inconsistentes
   // D = DNI es inconsistente con relación al COD. MOD.
   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''D'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ' AND ASODNI IS NOT NULL'
      + '   AND SUBSTR(ASOCODMOD,1,2) = ''10'' AND SUBSTR(ASOCODMOD,3,8) <> ASODNI'
      + '   AND FLAINC IS NULL';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Marcando asociados con dni repetidos
   // B = Asociados repetidos por DNI
   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''B'' WHERE ASODNI||SUBSTR(ASOAPENOM,1,5)'
      + '    IN (SELECT ASODNI||SUBSTR(ASOAPENOM,1,5) FROM ASO_PAD_DES_DET WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + ' GROUP BY ASODNI||SUBSTR(ASOAPENOM,1,5) HAVING COUNT(*) > 1 ) AND NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ' AND FLAINC IS NULL';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Chequeando UPROID, UPAGOID, USEIS inconsistentes
   xSql := 'SELECT UPROID, UPAGOID, USEID'
      + '  FROM ASO_PAD_DES_DET '
      + ' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + ' GROUP BY UPROID, UPAGOID, USEID';
   DM1.cdsUSE.Close;
   DM1.cdsUSE.DataRequest(xSql);
   DM1.cdsUSE.Open;
   DM1.cdsUSE.First;
   While Not DM1.cdsUSE.Eof Do
   Begin
      xSql := 'SELECT COUNT(*) CUENTA '
         + '  FROM APO101 '
         + ' WHERE NVL(FDESHABILITADO,''S'') =''N'' AND UPROID = ' + QuotedStr(DM1.cdsUSE.FieldByName('UPROID').AsString)
         + '   AND UPAGOID = ' + QuotedStr(DM1.cdsUSE.FieldByName('UPAGOID').AsString)
         + '   AND USEID = ' + QuotedStr(DM1.cdsUSE.FieldByName('USEID').AsString);
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      // Marcando Ugeles inconsistentes
      If DM1.cdsQry.FieldByName('CUENTA').AsInteger <> 1 Then
      Begin
         // U = Unidad de gestión no es consistente por la tabla de APO101
         xSql := 'UPDATE ASO_PAD_DES_DET '
            + '   SET FLAINC  = ''U'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
         If TRIM(DM1.cdsUSE.FieldByName('UPROID').AsString) = '' Then
            xSql := xSql + '   AND UPROID  IS NULL '
         Else
            xSql := xSql + '   AND UPROID  = ' + QuotedStr(DM1.cdsUSE.FieldByName('UPROID').AsString);
         If TRIM(DM1.cdsUSE.FieldByName('UPAGOID').AsString) = '' Then
            xSql := xSql + '   AND UPAGOID  IS NULL '
         Else
            xSql := xSql + '   AND UPAGOID  = ' + QuotedStr(DM1.cdsUSE.FieldByName('UPAGOID').AsString);
         If TRIM(DM1.cdsUSE.FieldByName('USEID').AsString) = '' Then
            xSql := xSql + '   AND USEID  IS NULL '
         Else
            xSql := xSql + '   AND USEID  = ' + QuotedStr(DM1.cdsUSE.FieldByName('USEID').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      End
      Else
      Begin
         // Verificando si la UGEL pertenece al departamento
         // X = Ugel no pertenece al departamento del padron
         xSql := 'SELECT DPTOID '
            + '  FROM APO101 '
            + ' WHERE NVL(FDESHABILITADO,''S'') = ''N'' AND UPROID = ' + QuotedStr(DM1.cdsUSE.FieldByName('UPROID').AsString)
            + '   AND UPAGOID = ' + QuotedStr(DM1.cdsUSE.FieldByName('UPAGOID').AsString)
            + '   AND USEID = ' + QuotedStr(DM1.cdsUSE.FieldByName('USEID').AsString);
         DM1.cdsQry.Close;
         DM1.cdsQry.DataRequest(xSql);
         DM1.cdsQry.Open;
         If DM1.cdsQry.FieldByName('DPTOID').AsString <> DM1.cdsCreditos.FieldByName('DPTOID').AsString Then
         Begin
            xSql := 'UPDATE ASO_PAD_DES_DET '
               + '   SET FLAINC = ''X'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
               + '   AND UPROID = ' + QuotedStr(DM1.cdsUSE.FieldByName('UPROID').AsString)
               + '   AND UPAGOID = ' + QuotedStr(DM1.cdsUSE.FieldByName('UPAGOID').AsString)
               + '   AND USEID = ' + QuotedStr(DM1.cdsUSE.FieldByName('USEID').AsString);
            DM1.DCOM1.AppServer.EjecutaSQL(xSql);
         End;
      End;

      DM1.cdsUSE.Next;
   End;

   // Ugel es diferente a las dos primeras letras de la unidad de pago
   // W = Ugel es diferente a las dos primeras letras de la unidad de pago
   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''W'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '   AND SUBSTR(ASOCODPAGO,1,2) <> USEID';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // R = Regimenes de pensión inconsistentes
   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''R'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '   AND REGPENID NOT IN (''01'', ''02'', ''99'',''03'')';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

// Inicio: DPP_201202_ASO
   // S = Afp sin código de AFP
   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''S'' '
      + '   WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '     AND REGPENID = ''03'' '
      + '     AND CODAFP IS NOT NULL '
      + '     AND CODAFP NOT IN (SELECT SUBSTR(PROV,4,2) '
      + '                        FROM TGE201 A '
      + '                        WHERE SUBSTR(PROV,1,1)=''A'' AND CLAUXID = ''A'') ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
// Fin: DPP_201202_ASO

// L = Cargo laboral. Se evalua que los códigos en centro laboral deben estar Ok.
   xSql := 'UPDATE ASO_PAD_DES_DET SET FLAINC = ''L'' WHERE  NUMERO = '+QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
   +' AND CARLAB NOT IN (SELECT COD_SIT FROM ASO_PAD_SIT_ASO WHERE COD_MAE = ''03'' AND COD_SIT IS NOT NULL)';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

// M = Situación actual. Se evalua que los códigos de situación actual deben estar Ok.
   xSql := 'UPDATE ASO_PAD_DES_DET SET FLAINC = ''M'' WHERE  NUMERO = '+QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
   +' AND SITACT NOT IN (SELECT COD_SIT FROM ASO_PAD_SIT_ASO WHERE COD_MAE = ''02'' AND COD_SIT IS NOT NULL)';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

// T = Tipo de servidor. Se evalua que los códigos de tipo de servidor deben estar Ok.
   Xsql := 'UPDATE ASO_PAD_DES_DET SET FLAINC = ''T'' WHERE  NUMERO = '+QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
// se corrige campo de comparación, decía SITACT debe ser TIPSER
   +' AND TIPSER NOT IN (SELECT COD_SIT FROM ASO_PAD_SIT_ASO WHERE COD_MAE = ''01'' AND COD_SIT IS NOT NULL)';


   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Inicio: DPP_201202_ASO
   // T = Registrar Número de Cuenta y Situación
   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''V'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '   AND ((ASONCTA IS NOT NULL AND SITCTA IS NULL) '
      + '   OR (ASONCTA IS NULL AND SITCTA IS NOT NULL)) ';
     DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''V'' WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '   AND SITCTA IS NOT NULL '
      + '   AND SITCTA NOT IN (''A'', ''B'', ''C'', ''V'') ';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);
   //Fin: DPP_201202_ASO

   // Actualizando ASOID por dni + 5 primeras letras del apellido + el nombre
   xSql := 'UPDATE ASO_PAD_DES_DET A '
      + '   SET A.ASOID = (SELECT B.ASOID '
      + '                    FROM APO201 B '
      + '                   WHERE A.ASODNI = B.ASODNI '
      + '                     AND (SUBSTR(A.ASOAPENOM, 1, 5) = SUBSTR(B.ASOAPENOMDNI, 1, 5) '
      + '                          OR SUBSTR(A.ASOAPENOM, 1, 5) = SUBSTR(B.ASOAPENOM, 1, 5))), '
      + '      A.FLAINC = (CASE WHEN (SELECT B.ASOID '
      + '                    FROM APO201 B '
      + '                   WHERE A.ASODNI = B.ASODNI '
      + '                     AND (SUBSTR(A.ASOAPENOM, 1, 5) = SUBSTR(B.ASOAPENOMDNI, 1, 5) '
      + '                          OR SUBSTR(A.ASOAPENOM, 1, 5) = SUBSTR(B.ASOAPENOM, 1, 5))) IS NULL THEN ''Z'' END) '
      + ' WHERE A.NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ' AND A.ASOID IS NULL AND FLAINC IS NULL';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Actualizando ASOID por dni + 5 primeras letras del apellido + el nombre del DNI
   xSql := 'UPDATE ASO_PAD_DES_DET A '
      + '   SET A.ASOID  = (SELECT B.ASOID FROM APO201 B'
      + '                   WHERE A.ASODNI = B.ASODNI AND SUBSTR(A.ASOAPENOM,1,5) = SUBSTR(B.ASOAPENOMDNI,1,5))'
      + ' WHERE A.NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString) + ' AND A.ASOID IS NULL '
      + '   AND FLAINC IS NULL';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

   // Asoid repetidos
   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''C'' '
      + ' WHERE ASOID IN (SELECT ASOID '
      + '                   FROM ASO_PAD_DES_DET '
      + '                  WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '                  GROUP BY ASOID HAVING COUNT(*) > 1)'
      + '   AND NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '   AND FLAINC IS NULL';
   DM1.DCOM1.AppServer.EjecutaSQL(xSql);

// Inicio: DPP_201202_ASO
// Se cambia para que identifique un Tipo de Asociado diferente respecto al maestro de asociado
{

   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''F'' WHERE ASOID IN (SELECT ASOID '
      + '                                        FROM APO201 '
      + '                                       WHERE ASOID IN'
      + '                                             (SELECT ASOID FROM ASO_PAD_DES_DET '
      + '                                               WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + ' AND ASOID IS NOT NULL AND FLAINC IS NULL) '
      + ' AND ASOTIPID <> ' + QuotedStr(DM1.cdsCreditos.FieldByName('ASOTIPID').AsString) + ') AND NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);

}
   xSql := 'UPDATE ASO_PAD_DES_DET '
      + '   SET FLAINC = ''F'' '
      + '   WHERE ASOID IN (SELECT ASOID '
      + '                   FROM APO201 '
      + '                   WHERE ASOID IN'
      + '                        (SELECT ASOID '
      + '                         FROM ASO_PAD_DES_DET '
      + '                         WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '                           AND ASOID IS NOT NULL AND FLAINC IS NULL) '
      + '                     AND ASOTIPID <> '
      + '                        (SELECT ASOTIPID '
      + '                         FROM ASO_PAD_DES_DET '
      + '                         WHERE NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString)
      + '                           AND ASOID=APO201.ASOID AND FLAINC IS NULL) '
      + '                   ) '
      + '     AND NUMERO = ' + QuotedStr(DM1.cdsCreditos.FieldByName('NUMERO').AsString);
   DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
//Fin: DPP_201202_ASO

   actdet;

// marca como inconsistente con valor 'H' a aquellos registros que tienen el Año+Mes de Fecha Actualización datos Socio Económicos
// mayor al Año+Mes del Padrón a descargar

   DM1.cdsQry20.First;
   while not DM1.cdsQry20.Eof do
   begin
   // fecha máxima de actualización de Datos Socio Económicos
      xSQL := 'select max(PERIODO) FEC_ACT_MAE '
             +'from APO206 '
             +'where ASOID= '+ QuotedStr(DM1.cdsQry20.FieldByName('ASOID').AsString)
             +'  and PERIODO is not null '
             +'  and length(PERIODO)=6 ';
      DM1.cdsQry.Close;
      DM1.cdsQry.DataRequest(xSql);
      DM1.cdsQry.Open;
      if DM1.cdsQry.RecordCount > 0 Then
         xAnoMes_en_Maestro := DM1.cdsQry.FieldByName('FEC_ACT_MAE').AsString
      else
         xAnoMes_en_Maestro := '190000';
      if (DM1.cdsCreditos.FieldByName('PERIODO').AsString<=xAnoMes_en_Maestro) Then
      begin
         xSql := 'UPDATE ASO_PAD_DES_DET '
               + 'SET FLAINC = ''H'' '
               + 'WHERE ROWID = ' + QuotedStr(DM1.cdsQry20.FieldByName('FILA').AsString);
         DM1.DCOM1.AppServer.EjecutaSQL(xSql);
      end;
      DM1.cdsQry20.Next;
   end;

   Screen.Cursor := crDefault;
   MessageDlg('Actualización ha concluido', mtInformation, [mbOk], 0);

End;

Procedure Tfdeparcmig.BitBtn1Click(Sender: TObject);
Begin
   DM1.xSgr := 'I';
   Try
      Festadisticas := TFestadisticas.create(Self);
      Festadisticas.ShowModal;
   Finally
      Festadisticas.Free;
   End;
End;

End.

