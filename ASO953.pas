unit ASO953;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, wwdblook, ExtCtrls, Buttons, ppBands, ppClass,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDB, ppDBPipe, Grids, DBGrids, Wwdbigrd, Wwdbgrid;

type
  TfTipAso = class(TForm)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    rdbTodaOfic: TRadioButton;
    rdbOficDesc: TRadioButton;
    Label1: TLabel;
    pnlOfDes: TPanel;
    EdtOfiDes: TEdit;
    DBLkOfiDes: TwwDBLookupCombo;
    BitPrintAut: TBitBtn;
    BitSalir: TBitBtn;
    Panel3: TPanel;
    rdbNoIden: TRadioButton;
    rdbHomon: TRadioButton;
    DBfTipAso: TppDBPipeline;
    RepVerHomon: TppReport;
    ppHeaderBand7: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel111: TppLabel;
    ppSystemVariable19: TppSystemVariable;
    ppSystemVariable20: TppSystemVariable;
    ppSystemVariable21: TppSystemVariable;
    ppLabel112: TppLabel;
    lblRepVerHomonTitulo: TppLabel;
    lblRepVerHomonSubTitulo: TppLabel;
    ppLine33: TppLine;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLine34: TppLine;
    ppLabel113: TppLabel;
    ppLabel114: TppLabel;
    ppLabel117: TppLabel;
    ppLabel124: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppFooterBand7: TppFooterBand;
    ppSummaryBand7: TppSummaryBand;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    dtgData: TDBGrid;
    BitExporta: TBitBtn;
    RepVerNI: TppReport;
    ppHeaderBand35: TppHeaderBand;
    ppLabel713: TppLabel;
    ppLabel714: TppLabel;
    ppLabel715: TppLabel;
    ppLabel716: TppLabel;
    ppSystemVariable74: TppSystemVariable;
    ppSystemVariable75: TppSystemVariable;
    ppSystemVariable76: TppSystemVariable;
    ppLabel717: TppLabel;
    lblTitulo: TppLabel;
    lblSubtitulo: TppLabel;
    ppDetailBand37: TppDetailBand;
    ppDBText298: TppDBText;
    ppDBText299: TppDBText;
    ppDBText300: TppDBText;
    ppDBText301: TppDBText;
    ppFooterBand30: TppFooterBand;
    ppSummaryBand35: TppSummaryBand;
    ppLabel720: TppLabel;
    ppLabel721: TppLabel;
    ppDBCalc199: TppDBCalc;
    ppLine185: TppLine;
    ppLine186: TppLine;
    ppLine187: TppLine;
    ppGroup46: TppGroup;
    ppGroupHeaderBand46: TppGroupHeaderBand;
    ppDBText302: TppDBText;
    ppLine188: TppLine;
    ppLabel722: TppLabel;
    ppGroupFooterBand46: TppGroupFooterBand;
    ppDBCalc200: TppDBCalc;
    ppLabel723: TppLabel;
    ppLabel724: TppLabel;
    ppLine189: TppLine;
    ppLine190: TppLine;
    ppGroup47: TppGroup;
    ppGroupHeaderBand47: TppGroupHeaderBand;
    ppLine191: TppLine;
    ppLabel725: TppLabel;
    ppLabel726: TppLabel;
    ppLabel727: TppLabel;
    ppLabel728: TppLabel;
    ppDBText303: TppDBText;
    ppLine192: TppLine;
    ppLabel729: TppLabel;
    ppGroupFooterBand47: TppGroupFooterBand;
    ppDBCalc202: TppDBCalc;
    ppLabel730: TppLabel;
    ppLabel731: TppLabel;
    ppLine193: TppLine;
    ppLine194: TppLine;
    rdbDoSin: TRadioButton;
    procedure DBLkOfiDesChange(Sender: TObject);
    procedure BitPrintAutClick(Sender: TObject);
    procedure rdbTodaOficClick(Sender: TObject);
    procedure rdbOficDescClick(Sender: TObject);
    procedure BitSalirClick(Sender: TObject);
    procedure rdbHomonClick(Sender: TObject);
    procedure rdbNoIdenClick(Sender: TObject);
    procedure BitExportaClick(Sender: TObject);
    procedure rdbDoSinClick(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTipAso: TfTipAso;

implementation

uses ASODM;

{$R *.dfm}

procedure TfTipAso.DBLkOfiDesChange(Sender: TObject);
begin
   If DM1.cdsOfdes.Locate('OFDESID',VarArrayof([DBLkOfiDes.Text]),[]) Then
      Begin
        EdtOfiDes.Text  := DM1.cdsOfdes.fieldbyname('OFDESNOM').AsString ;
      End
   Else
      Begin
        if Length(DBLkOfiDes.Text) <> 2 then
           Begin
              Beep;
              EdtOfiDes.Text  :='';
           End;
      End;

end;

procedure TfTipAso.BitPrintAutClick(Sender: TObject);
var xSQL:String;
    xOficina:String;
begin
  Screen.Cursor:=crHourGlass;

  If rdbDoSin.Checked Then
     Begin
      xOficina:='';
      lblSubtitulo.Caption := 'A NIVEL NACIONAL';
      if rdbOficDesc.Checked then
        begin
        if Length(DBLkOfiDes.Text) = 0 then
          begin
          MessageDlg('No Ha Ingresado La Oficina', mtInformation,[mbOk],0);
          exit;
          end;
        xOficina := ' AND C.OFDESID = ' + QuotedStr(DBLkOfiDes.Text);
        lblSubtitulo.Caption := 'Oficina Desconcentrada : ' + EdtOfiDes.Text;
        end;
      //Cambio por HPP_00024_ASO - 23/09/2008
      xSQL:= 'SELECT C.OFDESID, D.OFDESNOM, C.USEID, C.USENOM, A.ASOID, A.ASOCODMOD, A.ASOAPENOMDNI,A.ASOCODPAGO, ''xxx'' APOSEC ' +
             ' FROM ' +
               ' (SELECT ASOID,ASOCODMOD,ASOAPENOMDNI,ASOCODPAGO,USEID,UPAGOID,UPROID FROM APO201 WHERE ' +
               ' ASOTIPID =''DO'' AND ASOFRESNOM IS NULL ) A , APO101 C, APO110 D ' +
             ' WHERE A.USEID = C.USEID(+) AND A.UPAGOID = C.UPAGOID(+) ' +
               ' AND A.UPROID = C.UPROID(+) AND NVL(C.FDESHABILITADO,''S'') =''N'' AND C.OFDESID = D.OFDESID(+) ' + xOficina +
             ' GROUP BY D.OFDESNOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOMDNI,A.ASOCODPAGO,C.OFDESID,C.USEID, C.USENOM ' +
             ' ORDER BY OFDESID,USEID,ASOAPENOMDNI';


        DM1.cdsQry2.Close;
        DM1.cdsQry2.DataRequest(xSQL);
        DM1.cdsQry2.Open;
          If  DM1.cdsQry2.Recordcount> 0 Then
              Begin
                 lblTitulo.Caption:='LISTADO DE DOCENTES SIN FECHA DE NOMBRAMIENTO ';
                 ppDBText300.Visible:=False;  ppLabel727.Visible:=False;   
                 RepVerNI.Print;
                 RepVerNI.Cancel;
              End
          Else
                 MessageDlg('No Existe Información Para Esta Consulta ', mtInformation,[mbOk],0);



     End;


  If rdbNoIden.Checked then  // Para la opcion de No Identificados NI
     Begin
      xOficina:='';
      lblSubtitulo.Caption := 'A NIVEL NACIONAL';
      if rdbOficDesc.Checked then
        begin
        if Length(DBLkOfiDes.Text) = 0 then
          begin
          MessageDlg('No Ha Ingresado La Oficina', mtInformation,[mbOk],0);
          exit;
          end;
        xOficina := ' AND C.OFDESID = ' + QuotedStr(DBLkOfiDes.Text);
        lblSubtitulo.Caption := 'Oficina Desconcentrada : ' + EdtOfiDes.Text;
        end;
      //Cambio por HPP_00024_ASO - 23/09/2008
      xSQL:= 'SELECT C.OFDESID,D.OFDESNOM, C.USEID, C.USENOM,A.ASOID,A.ASOCODMOD, A.ASOAPENOMDNI,A.ASOCODPAGO,' +
               ' MIN(B.APOSEC) AS APOSEC ' +
             ' FROM ' +
               ' (SELECT ASOID,ASOCODMOD,ASOAPENOMDNI,ASOCODPAGO,USEID,UPAGOID,UPROID  FROM APO201 WHERE ' +
               ' ASOTIPID =''NI'') A , ' +
               ' (SELECT ASOID,APOSEC FROM APO301 WHERE EXISTS (SELECT ASOID FROM APO201 ' +
               ' WHERE ASOTIPID=''NI'' ) AND TRANSINTID=''APO'') B, APO101 C, APO110 D ' +
             ' WHERE  A.ASOID=B.ASOID(+)  AND A.USEID = C.USEID(+) AND A.UPAGOID = C.UPAGOID(+) ' +
               ' AND A.UPROID = C.UPROID(+) AND NVL(C.FDESHABILITADO,''S'') =''N'' AND C.OFDESID = D.OFDESID(+) ' + xOficina +
             ' GROUP BY D.OFDESNOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOMDNI,A.ASOCODPAGO,C.OFDESID,C.USEID, C.USENOM ' +
             ' ORDER BY OFDESID,USEID,ASOAPENOMDNI';


        DM1.cdsQry2.Close;
        DM1.cdsQry2.DataRequest(xSQL);
        DM1.cdsQry2.Open;
          If  DM1.cdsQry2.Recordcount> 0 Then
              Begin
                 lblTitulo.Caption:='LISTADO DE ASOCIADOS TIPO "NI"(NO-IDENTIFICADOS)';
                 RepVerNI.Print;
                 RepVerNI.Cancel;
              End
          Else
                 MessageDlg('No Existe Información Para Esta Consulta ', mtInformation,[mbOk],0);


        end

  else
    if rdbHomon.Checked then  // Para la opcion de Homónimos
      begin
        xSQL:= 'SELECT A.ASOID,A.ASOCODMOD,A.ASOAPENOMDNI,B.USENOM,C.UPRONOM,D.UPAGONOM,A.ASOTIPID' +
               ',A.ASODNI,A.ASONCTA ' +
               ' FROM APO201 A, APO101 B, APO102 C, APO103 D  ' +
               ' WHERE A.ASOAPENOMDNI IN( SELECT  ASOAPENOMDNI FROM APO201 ' +
                                  ' GROUP BY (ASOAPENOMDNI) HAVING COUNT(ASOAPENOMDNI) > 1) ' +
               ' AND A.USEID=B.USEID(+) AND A.UPROID= B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) ' +
               //Cambio por HPP_00024_ASO - 23/09/2008
               ' AND NVL(B.FDESHABILITADO,''S'') =''N'' AND A.UPROID= C.UPROID(+) AND A.UPROID= D.UPROID(+) AND A.UPAGOID = D.UPAGOID(+) ' +
               ' ORDER BY ASOAPENOMDNI';

            DM1.cdsQry2.Close;
            DM1.cdsQry2.DataRequest(xSQL);
            DM1.cdsQry2.Open;

          If  DM1.cdsQry2.Recordcount> 0 Then
              Begin
                 lblRepVerHomonTitulo.Caption:='LISTADO DE ASOCIADOS HOMÓNIMOS';
                 RepVerHomon.Print;
                 RepVerHomon.Cancel;
              End
          Else
              Begin
                 MessageDlg('No Existe Información Para Esta Consulta ', mtInformation,[mbOk],0);
              End;

      end;
  Screen.Cursor:=crDefault;
end;

procedure TfTipAso.rdbTodaOficClick(Sender: TObject);
begin
   DBLkOfiDes.Text:='';
   pnlOfDes.Enabled:=False;
end;

procedure TfTipAso.rdbOficDescClick(Sender: TObject);
begin
   pnlOfDes.Enabled:=True;
end;

procedure TfTipAso.BitSalirClick(Sender: TObject);
begin
  fTipAso.Close;
end;

procedure TfTipAso.rdbHomonClick(Sender: TObject);
begin
  DBLkOfiDes.Text:='';  Panel1.Enabled:=false;  rdbTodaOfic.Checked:=False;
  rdbOficDesc.Checked := False ;
end;

procedure TfTipAso.rdbNoIdenClick(Sender: TObject);
begin
   rdbTodaOfic.Checked:=True; Panel1.Enabled:=True;
end;

procedure TfTipAso.BitExportaClick(Sender: TObject);
var xOficina,xSQL:String;
begin
  Screen.Cursor:=crHourGlass;
  If rdbNoIden.Checked then  // Para la opcion de No Identificados NI
     begin
      xOficina:='';
      lblSubtitulo.Caption := 'A NIVEL NACIONAL';
      if rdbOficDesc.Checked then
        begin
        if Length(DBLkOfiDes.Text) = 0 then
          begin
          MessageDlg('No ha ingresado la Oficina', mtInformation,[mbOk],0);
          exit;
          end;
        xOficina := ' AND C.OFDESID = ' + QuotedStr(DBLkOfiDes.Text);
        lblSubtitulo.Caption := 'Oficina Desconcentrada : ' + EdtOfiDes.Text;
        end;
      // C es la tabla APO101
      xSQL:= 'SELECT C.OFDESID,D.OFDESNOM, C.USEID, C.USENOM,A.ASOID,A.ASOCODMOD, A.ASOAPENOMDNI,A.ASOCODPAGO,' +
               ' MIN(B.APOSEC) AS APOSEC ' +
             ' FROM ' +
               ' (SELECT ASOID,ASOCODMOD,ASOAPENOMDNI,ASOCODPAGO,USEID,UPAGOID,UPROID  FROM APO201 WHERE ' +
               ' ASOTIPID =''NI'') A , ' +
               ' (SELECT ASOID,APOSEC FROM APO301 WHERE EXISTS (SELECT ASOID FROM APO201 ' +
               ' WHERE ASOTIPID=''NI'' ) AND TRANSINTID=''APO'') B, APO101 C, APO110 D ' +
               ' WHERE  A.ASOID=B.ASOID(+)  AND A.USEID = C.USEID(+) AND A.UPAGOID = C.UPAGOID(+) ' +
               ' AND A.UPROID = C.UPROID(+) AND NVL(C.FDESHABILITADO,''S'') =''N'' AND C.OFDESID = D.OFDESID(+) ' + xOficina +
             ' GROUP BY D.OFDESNOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOMDNI,A.ASOCODPAGO,C.OFDESID,C.USEID, C.USENOM ' +
             ' ORDER BY OFDESID,USEID,ASOAPENOMDNI';
        DM1.cdsQry2.Close;
        DM1.cdsQry2.DataRequest(xSQL);
        DM1.cdsQry2.Open;
        If DM1.cdsQry2.RecordCount > 0 Then
           Begin
            	try
                DM1.HojaExcel('No Identificados',DM1.dsQry2, dtgData);
            	except
          		on Ex: Exception do
          			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
            	end;

           End
        Else
           MessageDlg('No Existe Infromación Para Esta Consulta ', mtInformation,[mbOk],0);

        Screen.Cursor:=crDefault;

      end

  else if rdbHomon.Checked then  // Para la opcion de Homónimos
      begin
        xSQL:= 'SELECT A.ASOID,A.ASOCODMOD,A.ASOAPENOMDNI,B.USENOM,C.UPRONOM,D.UPAGONOM,A.ASOTIPID' +
               ',A.ASODNI,A.ASONCTA ' +
               ' FROM APO201 A, APO101 B, APO102 C, APO103 D  ' +
               ' WHERE A.ASOAPENOMDNI IN( SELECT  ASOAPENOMDNI FROM APO201 ' +
                                  ' GROUP BY (ASOAPENOMDNI) HAVING COUNT(ASOAPENOMDNI) > 1) ' +
               ' AND A.USEID=B.USEID(+) AND A.UPROID= B.UPROID(+) AND A.UPAGOID = B.UPAGOID(+) ' +
               //Cambio por HPP_00024_ASO - 23/09/2008
               ' AND NVL(B.FDESHABILITADO,''S'') =''N'' AND A.UPROID= C.UPROID(+) AND A.UPROID= D.UPROID(+) AND A.UPAGOID = D.UPAGOID(+) ' +
               ' ORDER BY ASOAPENOMDNI';

            DM1.cdsQry2.Close;
            DM1.cdsQry2.DataRequest(xSQL);
            DM1.cdsQry2.Open;

          If DM1.cdsQry2.Recordcount> 0 Then
              Begin
              	try
                  DM1.HojaExcel('Homonimias',DM1.dsQry2, dtgData);
              	except
            		on Ex: Exception do
            			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
              	end;
              End
          Else
              Begin
                 MessageDlg('No Existe Infromación Para Esta Consulta ', mtInformation,[mbOk],0);
              End;

      end

    else If rdbDoSin.Checked Then
      Begin
        //Cambio por HPP_00024_ASO - 23/09/2008
        xSQL:= 'SELECT C.OFDESID,D.OFDESNOM, C.USEID, C.USENOM,A.ASOID,A.ASOCODMOD, A.ASOAPENOMDNI,A.ASOCODPAGO' +
               ' FROM ' +
               ' (SELECT ASOID,ASOCODMOD,ASOAPENOMDNI,ASOCODPAGO,USEID,UPAGOID,UPROID  FROM APO201 WHERE ' +
               ' ASOTIPID =''DO'' AND ASOFRESNOM IS NULL ) A , APO101 C, APO110 D ' +
               ' WHERE  A.USEID = C.USEID(+) AND A.UPAGOID = C.UPAGOID(+) ' +
               ' AND A.UPROID = C.UPROID(+) AND NVL(C.FDESHABILITADO,''S'') =''N'' AND C.OFDESID = D.OFDESID(+) ' + xOficina +
               ' GROUP BY D.OFDESNOM,A.ASOID,A.ASOCODMOD,A.ASOAPENOMDNI,A.ASOCODPAGO,C.OFDESID,C.USEID, C.USENOM ' +
               ' ORDER BY OFDESID,USEID,ASOAPENOMDNI';

            DM1.cdsQry2.Close;
            DM1.cdsQry2.DataRequest(xSQL);
            DM1.cdsQry2.Open;

          If DM1.cdsQry2.Recordcount> 0 Then
              Begin
              	try
                  DM1.HojaExcel('Docentes sin Resolución (DO)',DM1.dsQry2, dtgData);
              	except
            		on Ex: Exception do
            			Application.MessageBox(PChar(Ex.Message), 'ERROR', 16);
              	end;
              End
          Else
              Begin
                 MessageDlg('No Existe Infromación Para Esta Consulta ', mtInformation,[mbOk],0);
              End;
      End;

  Screen.Cursor:=crDefault;

end;

procedure TfTipAso.rdbDoSinClick(Sender: TObject);
begin
  rdbTodaOfic.Checked:=True; Panel1.Enabled:=True;
end;

procedure TfTipAso.wwDBGrid1DblClick(Sender: TObject);
begin
ShowMessage(IntToStr(DM1.cdsAso.RecordCount));
end;

end.
