unit ASO950;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, StdCtrls, Dialogs,
  wwdbdatetimepicker, Buttons, Db, ppDB, ppDBPipe, ppBands, ppClass,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppStrtch, ppSubRpt;

type
  TfRepRes = class(TForm)
    pnlDptos: TPanel;
    dbgprevio: TwwDBGrid;
    PnFecGen: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DtpFecIni: TwwDBDateTimePicker;
    DtpFecFin: TwwDBDateTimePicker;
    BitMostrar: TBitBtn;
    RepDepDet: TppReport;
    ppHeaderBand1: TppHeaderBand;
    TitRes01: TppLabel;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable3: TppSystemVariable;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel10: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText6: TppDBText;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel16: TppLabel;
    ppDBCalc5: TppDBCalc;
    ppLine5: TppLine;
    ppLine6: TppLine;
    dbpPrevio: TppDBPipeline;
    ppLine4: TppLine;
    ppLabel50: TppLabel;
    rgseleccion: TRadioGroup;
    rgtipo: TRadioGroup;
    BitSalir: TBitBtn;
    btnimprimir: TBitBtn;
    RepDepRes1: TppReport;
    ppHeaderBand2: TppHeaderBand;
    TitDes03: TppLabel;
    ppLabel1: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel629: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    ppLabel21: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine7: TppLine;
    ppLine8: TppLine;
    RepDepRes: TppReport;
    ppHeaderBand3: TppHeaderBand;
    TitDes01: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppSystemVariable9: TppSystemVariable;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel13: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppLabel35: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppLine13: TppLine;
    ppLine14: TppLine;
    RepDes02: TppReport;
    ppHeaderBand4: TppHeaderBand;
    TitRes02: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel46: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLine17: TppLine;
    ppLine18: TppLine;
    RepGenDet: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel3: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    ppSystemVariable14: TppSystemVariable;
    ppSystemVariable15: TppSystemVariable;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLine19: TppLine;
    ppLabel59: TppLabel;
    ppLine20: TppLine;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLine21: TppLine;
    ppLabel64: TppLabel;
    ppLine22: TppLine;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLine23: TppLine;
    ppLabel65: TppLabel;
    ppLine24: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppSummaryBand5: TppSummaryBand;
    procedure BitSalirClick(Sender: TObject);
    procedure BitMostrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure rgseleccionClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  // inicio: HPP_201003_ASO
  // Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  // Fin: HPP_201003_ASO
  private
    boton:Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRepRes: TfRepRes;

implementation

uses ASODM;

{$R *.dfm}

procedure TfRepRes.BitSalirClick(Sender: TObject);
begin
   Close;
end;

Procedure TfRepRes.BitMostrarClick(Sender: TObject);
Var xSql:String;
  xTotal, xMasculino,xFemenino,xNulo :Integer;
Begin
  If DtpFecIni.Date > DtpFecFin.Date Then
  Begin
    MessageDlg('Fecha inicial mayor a la fecha final', mtError, [mbOk], 0);
    Exit;
  End;
  If (rgseleccion.ItemIndex <> 0) And (rgseleccion.ItemIndex <> 1) And (rgseleccion.ItemIndex <> 2) Then
  Begin
    MessageDlg('No ha realizado ningún tipo de selección', mtError, [mbOk], 0);
    Exit;
  End;
  If ((rgtipo.ItemIndex <> 0) And (rgtipo.ItemIndex <> 1)) And (rgseleccion.ItemIndex <> 1) Then
  Begin
    MessageDlg('No ha seleccionado tipo de reporte', mtError, [mbOk], 0);
    Exit;
  End;
  Boton := Application.MessageBox ('¿Seguro de procesar reporte?','Mantenimiento y Control De Asociados',MB_YESNO+MB_ICONQUESTION);
  If Boton = ID_YES Then
  Begin
    DM1.cdsReporte.Close;
    dbgprevio.Refresh;
    Screen.Cursor:=crHourGlass;
    If (rgseleccion.ItemIndex = 0) And (rgtipo.ItemIndex = 0) Then
    Begin
      xSql := 'SELECT NVL(D.DPTOID,''00'') DPTOID,  NVL(D.DPTODES,''POR IDENTIFICAR'') DPTODES,  NVL(C.USEID,''00'') USEID, NVL(C.USENOM,''POR IDENTIFICAR'') USENOM,'
      +' COUNT(*) REGISTROS FROM (SELECT ASOID FROM APO201_LOG WHERE TO_DATE(REGISTRO_AUD) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)
      +' AND MODULOID = ''ASO'' GROUP BY ASOID) A, APO201 B, APO101 C, APO158 D WHERE A.ASOID = B.ASOID AND B.USEID = C.USEID(+) AND B.UPAGOID = C.UPAGOID(+) AND B.UPROID = C.UPROID(+)'
      +' AND C.DPTOID = D.DPTOID(+) GROUP BY NVL(D.DPTOID,''00''),  NVL(D.DPTODES,''POR IDENTIFICAR''),  NVL(C.USEID,''00''), NVL(C.USENOM,''POR IDENTIFICAR'')';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      xTotal := 0; While Not DM1.cdsReporte.Eof Do Begin xTotal := xTotal + DM1.cdsReporte.FieldByName('REGISTROS').AsInteger; DM1.cdsReporte.Next; End;
      dbgprevio.Selected.Clear;
      dbgprevio.Selected.Add('DPTOID'#9'2'#9'Código de~Departamento'#9#9);
      dbgprevio.Selected.Add('DPTODES'#9'25'#9'Descripción de Departamento'#9#9);
      dbgprevio.Selected.Add('USEID'#9'2'#9'Código de~UGEL'#9#9);
      dbgprevio.Selected.Add('USENOM'#9'35'#9'Descripción de UGEL'#9#9);
      dbgprevio.Selected.Add('REGISTROS'#9'10'#9'Cantidad de~Registros'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('REGISTROS')).DisplayFormat:='###,###';
      dbgprevio.ColumnByName('USENOM').FooterValue := 'Totales :';
      dbgprevio.ColumnByName('REGISTROS').FooterValue := FormatFloat('##,###.##',xTotal);
    End;
    If (rgseleccion.ItemIndex = 0) And (rgtipo.ItemIndex = 1) Then
    Begin
      xSql := 'SELECT NVL(D.DPTOID,''00'') DPTOID, NVL(D.DPTODES,''POR IDENTIFICAR'') DPTODES,'
      +' COUNT(*) REGISTROS FROM (SELECT ASOID FROM APO201_LOG WHERE TO_DATE(REGISTRO_AUD) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)
      +' AND MODULOID = ''ASO'' GROUP BY ASOID) A, APO201 B, APO101 C, APO158 D WHERE A.ASOID = B.ASOID AND B.USEID = C.USEID(+) AND B.UPAGOID = C.UPAGOID(+) AND B.UPROID = C.UPROID(+)'
      +' AND C.DPTOID = D.DPTOID(+) GROUP BY NVL(D.DPTOID,''00''),  NVL(D.DPTODES,''POR IDENTIFICAR'')';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      xTotal := 0; While Not DM1.cdsReporte.Eof Do Begin xTotal := xTotal + DM1.cdsReporte.FieldByName('REGISTROS').AsInteger; DM1.cdsReporte.Next; End;
      dbgprevio.Selected.Clear;
      dbgprevio.Selected.Add('DPTOID'#9'2'#9'Código de~Departamento'#9#9);
      dbgprevio.Selected.Add('DPTODES'#9'25'#9'Descripción de Departamento'#9#9);
      dbgprevio.Selected.Add('REGISTROS'#9'10'#9'Cantidad de~Registros'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('REGISTROS')).DisplayFormat:='###,###';
      dbgprevio.ColumnByName('DPTODES').FooterValue := 'Totales :';
      dbgprevio.ColumnByName('REGISTROS').FooterValue := FormatFloat('##,###.##',xTotal);
    End;
    If rgseleccion.ItemIndex = 1 Then
    Begin
      xSql := 'SELECT A.USUARIO_AUD, B.USERNOM, COUNT(*) REGISTROS FROM (SELECT A.ASOID, A.USUARIO_AUD FROM APO201_LOG A'
      +' WHERE TO_DATE(REGISTRO_AUD) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)
      +' AND MODULOID = ''ASO'' GROUP BY A.ASOID, A.USUARIO_AUD) A, TGE006 B WHERE A.USUARIO_AUD = B.USERID GROUP BY A.USUARIO_AUD, B.USERNOM';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      xTotal := 0; While Not DM1.cdsReporte.Eof Do Begin xTotal := xTotal + DM1.cdsReporte.FieldByName('REGISTROS').AsInteger; DM1.cdsReporte.Next; End;
      dbgprevio.Selected.Clear;
      dbgprevio.Selected.Add('USUARIO_AUD'#9'15'#9'Código de~Usuario'#9#9);
      dbgprevio.Selected.Add('USERNOM'#9'35'#9'Apellidos y Nombre(s)~del Usuario'#9#9);
      dbgprevio.Selected.Add('REGISTROS'#9'10'#9'Cantidad de~Registros'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('REGISTROS')).DisplayFormat:='###,###';
      dbgprevio.ColumnByName('DPTODES').FooterValue := 'Totales :';
      dbgprevio.ColumnByName('REGISTROS').FooterValue := FormatFloat('##,###.##',xTotal);
    End;
    If (rgseleccion.ItemIndex = 2) And (rgtipo.ItemIndex = 0) Then
    Begin
      xSql := 'SELECT DPTOID, DPTODES, USEID, USENOM, SUM(NVL(MASCULINO,0)) MASCULINO, SUM(NVL(FEMENINO,0)) FEMENINO, SUM(NVL(NULO,0)) NULO, SUM(NVL(MASCULINO,0)+NVL(FEMENINO,0)+NVL(NULO,0)) TOTAL'
      +' FROM (SELECT NVL(D.DPTOID,''00'') DPTOID,  NVL(D.DPTODES,''POR IDENTIFICAR'') DPTODES, NVL(C.USEID,''00'') USEID, NVL(C.USENOM,''POR IDENTIFICAR'') USENOM,'
      +' CASE WHEN B.ASOSEXO=''M'' THEN 1 END MASCULINO, CASE WHEN B.ASOSEXO=''F'' THEN 1 END FEMENINO, CASE WHEN B.ASOSEXO IS NULL THEN 1 END NULO'
      +' FROM (SELECT ASOID FROM APO201_LOG WHERE TO_DATE(REGISTRO_AUD) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)
      +' AND MODULOID = ''ASO'' GROUP BY ASOID) A, APO201 B, APO101 C, APO158 D WHERE A.ASOID = B.ASOID AND B.USEID = C.USEID(+) AND B.UPAGOID = C.UPAGOID(+) AND B.UPROID = C.UPROID(+)'
      +' AND NVL(C.FDESHABILITADO,''S'') =''N'' AND C.DPTOID = D.DPTOID(+)) GROUP BY DPTOID, DPTODES, USEID, USENOM';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      xMasculino := 0; xFemenino := 0; xNulo := 0; xTotal := 0;
      While Not DM1.cdsReporte.Eof Do
      Begin
        xMasculino := xMasculino + DM1.cdsReporte.FieldByName('MASCULINO').AsInteger;
        xFemenino  := xFemenino  + DM1.cdsReporte.FieldByName('FEMENINO').AsInteger;
        xNulo      := xNulo      + DM1.cdsReporte.FieldByName('NULO').AsInteger;
        xTotal := xTotal + (DM1.cdsReporte.FieldByName('MASCULINO').AsInteger+DM1.cdsReporte.FieldByName('FEMENINO').AsInteger+DM1.cdsReporte.FieldByName('NULO').AsInteger);
        DM1.cdsReporte.Next;
      End;
      dbgprevio.Selected.Clear;
      dbgprevio.Selected.Add('DPTOID'#9'2'#9'Código de~Departamento'#9#9);
      dbgprevio.Selected.Add('DPTODES'#9'25'#9'Descripción de Departamento'#9#9);
      dbgprevio.Selected.Add('USEID'#9'2'#9'Código de~UGEL'#9#9);
      dbgprevio.Selected.Add('USENOM'#9'35'#9'Descripción de UGEL'#9#9);
      dbgprevio.Selected.Add('MASCULINO'#9'10'#9'Cantidad~Masculino'#9#9);
      dbgprevio.Selected.Add('FEMENINO'#9'10'#9'Cantidad~Femenino'#9#9);
      dbgprevio.Selected.Add('NULO'#9'10'#9'Cantidad~Nulo'#9#9);
      dbgprevio.Selected.Add('TOTAL'#9'10'#9'Cantidad~Total'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('MASCULINO')).DisplayFormat:='###,###';
      TNumericField(DM1.cdsReporte.FieldByName('FEMENINO')).DisplayFormat:='###,###';
      TNumericField(DM1.cdsReporte.FieldByName('NULO')).DisplayFormat:='###,###';
      TNumericField(DM1.cdsReporte.FieldByName('TOTAL')).DisplayFormat:='###,###';
      dbgprevio.ColumnByName('USENOM').FooterValue := 'Totales :';
      dbgprevio.ColumnByName('MASCULINO').FooterValue := FormatFloat('##,###',xMasculino);
      dbgprevio.ColumnByName('FEMENINO').FooterValue := FormatFloat('##,###',xFemenino);
      dbgprevio.ColumnByName('NULO').FooterValue := FormatFloat('##,###',xNulo);
      dbgprevio.ColumnByName('TOTAL').FooterValue := FormatFloat('##,###',xTotal);
    End;
    If (rgseleccion.ItemIndex = 2) And (rgtipo.ItemIndex = 1) Then
    Begin
      xSql := 'SELECT DPTOID, DPTODES, SUM(NVL(MASCULINO,0)) MASCULINO, SUM(NVL(FEMENINO,0)) FEMENINO, SUM(NVL(NULO,0)) NULO, SUM(NVL(MASCULINO,0)+NVL(FEMENINO,0)+NVL(NULO,0)) TOTAL'
      +' FROM (SELECT NVL(D.DPTOID,''00'') DPTOID,  NVL(D.DPTODES,''POR IDENTIFICAR'') DPTODES,'
      +' CASE WHEN B.ASOSEXO=''M'' THEN 1 END MASCULINO, CASE WHEN B.ASOSEXO=''F'' THEN 1 END FEMENINO, CASE WHEN B.ASOSEXO IS NULL THEN 1 END NULO'
      +' FROM (SELECT ASOID FROM APO201_LOG WHERE TO_DATE(REGISTRO_AUD) BETWEEN '+QuotedStr(DtpFecIni.Text)+' AND '+QuotedStr(DtpFecFin.Text)
      +' AND MODULOID = ''ASO'' GROUP BY ASOID) A, APO201 B, APO101 C, APO158 D WHERE A.ASOID = B.ASOID AND B.USEID = C.USEID(+) AND B.UPAGOID = C.UPAGOID(+) AND B.UPROID = C.UPROID(+)'
      +' AND NVL(C.FDESHABILITADO,''S'') =''N'' AND C.DPTOID = D.DPTOID(+)) GROUP BY DPTOID, DPTODES';
      DM1.cdsReporte.Close;
      DM1.cdsReporte.DataRequest(xSql);
      DM1.cdsReporte.Open;
      xMasculino := 0; xFemenino := 0; xNulo := 0; xTotal := 0;
      While Not DM1.cdsReporte.Eof Do
      Begin
        xMasculino := xMasculino + DM1.cdsReporte.FieldByName('MASCULINO').AsInteger;
        xFemenino  := xFemenino  + DM1.cdsReporte.FieldByName('FEMENINO').AsInteger;
        xNulo      := xNulo      + DM1.cdsReporte.FieldByName('NULO').AsInteger;
        xTotal := xTotal + (DM1.cdsReporte.FieldByName('MASCULINO').AsInteger+DM1.cdsReporte.FieldByName('FEMENINO').AsInteger+DM1.cdsReporte.FieldByName('NULO').AsInteger);
        DM1.cdsReporte.Next;
      End;
      dbgprevio.Selected.Clear;
      dbgprevio.Selected.Add('DPTOID'#9'2'#9'Código de~Departamento'#9#9);
      dbgprevio.Selected.Add('DPTODES'#9'25'#9'Descripción de Departamento'#9#9);
      dbgprevio.Selected.Add('MASCULINO'#9'10'#9'Cantidad~Masculino'#9#9);
      dbgprevio.Selected.Add('FEMENINO'#9'10'#9'Cantidad~Femenino'#9#9);
      dbgprevio.Selected.Add('NULO'#9'10'#9'Cantidad~Nulo'#9#9);
      dbgprevio.Selected.Add('TOTAL'#9'10'#9'Cantidad~Total'#9#9);
      dbgprevio.ApplySelected;
      TNumericField(DM1.cdsReporte.FieldByName('MASCULINO')).DisplayFormat:='###,###';
      TNumericField(DM1.cdsReporte.FieldByName('FEMENINO')).DisplayFormat:='###,###';
      TNumericField(DM1.cdsReporte.FieldByName('NULO')).DisplayFormat:='###,###';
      TNumericField(DM1.cdsReporte.FieldByName('TOTAL')).DisplayFormat:='###,###';
      dbgprevio.ColumnByName('USENOM').FooterValue := 'Totales :';
      dbgprevio.ColumnByName('MASCULINO').FooterValue := FormatFloat('##,###',xMasculino);
      dbgprevio.ColumnByName('FEMENINO').FooterValue := FormatFloat('##,###',xFemenino);
      dbgprevio.ColumnByName('NULO').FooterValue := FormatFloat('##,###',xNulo);
      dbgprevio.ColumnByName('TOTAL').FooterValue := FormatFloat('##,###',xTotal);
    End;
    Screen.Cursor:= crDefault;
    If DM1.cdsReporte.RecordCount = 0 Then
    Begin
      MessageDlg('No ha encontrado información para imprimir', mtError, [mbOk], 0);
      btnimprimir.Visible := False;
      Exit;
    End
    Else btnimprimir.Visible := True;
  End;
End;


procedure TfRepRes.FormActivate(Sender: TObject);
begin
  If DM1.cdsReporte.Active = True Then DM1.cdsReporte.Close;
  btnimprimir.Visible := False;
  DtpFecIni.Date:=DM1.FechaSys;
  DtpFecFin.Date:=DM1.FechaSys;
  DtpFecIni.SetFocus;
end;

procedure TfRepRes.btnimprimirClick(Sender: TObject);
begin

  If (rgseleccion.ItemIndex = 0) And (rgtipo.ItemIndex = 0) Then
  Begin
   TitRes01.Caption := 'ESTADISTICA DE ACTUALIZACION DE DATOS DEL '+DtpFecIni.Text+' AL '+DtpFecFin.Text+' (POR DEPARTAMENTO)';
   RepDepDet.Print;
  End;

  If (rgseleccion.ItemIndex = 0) And (rgtipo.ItemIndex = 1) Then
  Begin
   TitDes01.Caption := 'ESTADISTICA DE ACTUALIZACION DE DATOS DEL '+DtpFecIni.Text+' AL '+DtpFecFin.Text+' (POR DEPARTAMENTO)';
   RepDepRes.Print;
  End;
  If (rgseleccion.ItemIndex = 1) Then
  Begin
    TitRes02.Caption := 'ESTADISTICA DE ACTUALIZACION DE DATOS DEL '+DtpFecIni.Text+' AL '+DtpFecFin.Text+' (POR USUARIO)';
    RepDes02.Print;
  End;

  If (rgseleccion.ItemIndex = 2) And (rgtipo.ItemIndex = 0) Then
  Begin
    ppLabel3.Caption := 'ESTADISTICA DE ACTUALIZACION DE DATOS DEL '+DtpFecIni.Text+' AL '+DtpFecFin.Text+' (POR GENERO)';
    RepGenDet.Print;
  End;

  If (rgseleccion.ItemIndex = 2) And (rgtipo.ItemIndex = 1) Then
  Begin
    TitDes03.Caption := 'ESTADISTICA DE ACTUALIZACION DE DATOS DEL '+DtpFecIni.Text+' AL '+DtpFecFin.Text+' (POR GENERO)';
    RepDepRes1.Print;
  End;
end;

procedure TfRepRes.rgseleccionClick(Sender: TObject);
begin
 If rgseleccion.ItemIndex = 1 Then rgtipo.Visible := False Else rgtipo.Visible := True;
end;

procedure TfRepRes.FormKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  begin
    Key := #0;
    Perform(CM_DIALOGKEY, VK_TAB, 0);
  end;
end;

procedure TfRepRes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
// inicio: HPP_201003_ASO
// Memorándum 063-2009-DM-EPS - SAR-200910-0890 - DAD-DF-2009-0077
   DM1.cdsReporte.Close;
   DM1.cdsReporte.Filter:='';
   DM1.cdsReporte.Filtered:=False;
   DM1.cdsReporte.IndexFieldNames:='';
// Fin: HPP_201003_ASO
end;

end.
