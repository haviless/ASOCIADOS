// Inicio Uso Estándares   :  01/08/2011
// Unidad                  :  ASO260F.pas
// Formulario              :  FMantAsociadoCompara
// Fecha de Creación       :  01/08/2011
// Autor                   :  Equipo de Desarrollo de Sistemas DM
// Objetivo                :  Comparación de Datos
// Actualizaciones         :
// SPP_201402_ASO          : IMPLEMENTACION RENIEC (CAMBIO DE LA VERSION 1.0 A VERSION 2.0)
// SPP_201402_ASO          : Se realiza el pase a producción a partir del HPC_201401_ASO
//HPC_201508_ASO            : Renovación de Reglas para el acceso a Captura de Reniec

unit ASO260F;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, ComCtrls, Animate, GIFCtrl, sipclient,
  Math, Types, rxgif, jpeg, db, SIPSvc; // SPP_201402_ASO

type
  TFMantAsociadoCompara = class(TForm)
    pnlComparacion: TPanel;
    lisTCompara: TListView;
    Panel12: TPanel;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    imgFotoDerrCompara: TImage;
    imgFirmaDerrCompara: TImage;
    GroupBox2: TGroupBox;
    imgFotoRenCompara: TImage;
    imgFirmaRenCompara: TImage;
    procedure lisTComparaCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure imgFotoDerrComparaDblClick(Sender: TObject);
    procedure imgFotoRenComparaDblClick(Sender: TObject);
    procedure imgFirmaDerrComparaDblClick(Sender: TObject);
    procedure imgFirmaRenComparaDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    // Inicio: SPP_201402_ASO
    sDocument:String;
    sLastName1: string;
    sLastName2: string;
    sFirstName: string;
    sMerriedName:String;
    sMotherName:String;
    sFatherName:String;
    sCivilState: string;
    sGender: string;
    sAltDocumentType:String;
    sAltDocument:String;
    sVoteStatus:String;
    sRegisterDate:String;
    sExpeditionDate:String;
    sExpirationDate:String;
    sInstGrade:String;
    sRestrictionCode:String;
    sRestrictionDes:String;
    sAddDepUbigCode:String;
    sDepartmentAddress:String;
    sAddProvUbigCode:String;
    sProvinceAddress:String;
    sAddDistUbigCode:String;
    sDistritAddress:String;
    sAddressUrbPrefix:String;
    sAddressUrbPrefixDes:String;
    sAddressUrb:String;
    sAddPrefix:String;
    sAddPrefixDes:String;
    sAddress:String;
    sAddressEt:String;
    sAddressBlock:String;
    sAddressBlockPrefix:String;
    sAddressBlockPrefixDes:String;
    sAddressInterior:String;
    sAddressIntPrefix:String;
    sAddressIntPrefixDes:String;
    sAddressLt:String;
    sAddressMz:String;
    sAddressNumber:String;
    sBornDate:String;
    sBornDepartmentUbigCode:String;
    sBornDepartment:String;
    sBonrProvinceUbigCode:String;
    sBornProvince:String;
    sBonrDistritUbigCode:String;
    sBornDistrit:String;
    nHeight:Double;
    xdbeLibDni: String;
    xgrabo: string;
    //Inicio HPC_201508_ASO
    sAsoapepat: String;
    sAsoapepatTIT: String;
    sAsoapemat: String;
    sAsoapematTIT: String;
    sAsoapenom: String;
    sAsoapenomTIT: String;    
    sFlag:String;
    //Final HPC_201508_ASO
    // SearchResult         : PersonDataRecordType;
    SearchResult: CPersonData2;
    Reg : CPersonData2;
    // Fin: SPP_201402_ASO
    Photo, Signature     : TByteDynArray;
    bConfirmado: boolean;
    procedure MuestraDatos;
  end;

var
  FMantAsociadoCompara: TFMantAsociadoCompara;
  SearchResult  : PersonDataRecordType;

implementation

uses ASODM, ASO260D;

{$R *.dfm}

procedure TFMantAsociadoCompara.lisTComparaCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
 Begin
   if TListItems.ClassNameIs('INFORMACION') THEN
      Begin
       lisTCompara.Canvas.Brush.Color := clBtnFace;
       lisTCompara.Canvas.Font.Color  := $00FF8000;
      End;
 end;
end;

procedure TFMantAsociadoCompara.FormCreate(Sender: TObject);
begin
//Inicio HPC_201508_ASO
 If sFlag='R' Then
 Begin
  If (Trim(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString) = '') And
     (Trim(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString) = '') And
     (Trim(DM1.cdsAso.FieldByName('ASONOMDNI').AsString) = '') Then
    //Datos de reniec nuevos
    Panel12.Caption := 'Registrar datos de RENIEC. Confirme'
  Else
  Panel12.Caption := 'Existen diferencias en los datos de RENIEC a reemplazar. Confirme.';
 End
 Else Panel12.Caption := 'Existen diferencias en los datos de RENIEC a reemplazar. Confirme.';
//Final HPC_201508_ASO

 lisTCompara.Column[0].Width := 180;
 lisTCompara.Column[1].Width := 180;
 lisTCompara.Column[2].Width := 180;
 bConfirmado := false;
end;

// Inicio: SPP_201402_ASO
procedure TFMantAsociadoCompara.MuestraDatos;
var
  fila: TListItem;
// Inicio: HPP_201110_ASO
//  estcivid: string;
//  xSql, xtmp: String;
 xtmp: String;
// Fin: HPP_201110_ASO
begin
   // Documento DNI
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Documento';
   fila.SubItems.Add(DM1.cdsAso.FieldByName('ASODNI').AsString);
   fila.SubItems.Add(Trim(sDocument));
   // Apellido Paterno
   fila := lisTCompara.Items.Add;
 //Inicio HPC_201508_ASO
 //fila.Caption := 'Apellido Paterno';
 //fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOAPEPATDNI').AsString);
   fila.Caption := sAsoapepatTIT;
   fila.SubItems.Add(sAsoapepat);
//Final HPC_201508_ASO
   fila.SubItems.Add(Trim(sLastName1));
   // Apellido Materno
   fila := lisTCompara.Items.Add;
 //Inicio HPC_201508_ASO
 //fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOAPEMATDNI').AsString);  }
 //fila.Caption := 'Apellido Materno';
   fila.Caption :=  sAsoapematTIT;
   fila.SubItems.Add(sAsoapemat);
//Final HPC_201508_ASO
   fila.SubItems.Add(Trim(sLastName2));
   // Nombre(s)
   fila := lisTCompara.Items.Add;
 //Inicio HPC_201508_ASO
 //fila.SubItems.Add(DM1.cdsAso.FieldByName('ASONOMDNI').AsString);
 //fila.Caption := 'Nombre(s)';
   fila.Caption := sAsoapenomTIT;
   fila.SubItems.Add(sAsoapenom);
 //Final HPC_201508_ASO
   fila.SubItems.Add(trim(sFirstName));

   // Apellidos de casada
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Apellidos de casada';
   fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOAPECASDNI').AsString);
   fila.SubItems.Add(trim(sMerriedName));
   // Nombre de la madre
   // fila := lisTCompara.Items.Add;
   // fila.Caption := 'Nombre de la madre';
   // fila.SubItems.Add(DM1.cdsAso.FieldByName('ASONOMMADDNI').AsString);
   // fila.SubItems.Add(trim(sMotherName));
   // Nombre del padre
   // fila := lisTCompara.Items.Add;
   // fila.Caption := 'Nombre de la Padre';
   // fila.SubItems.Add(DM1.cdsAso.FieldByName('ASONOMPADDNI').AsString);
   // fila.SubItems.Add(trim(sFatherName));
   // Estado civil
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Estado civil';
   fila.SubItems.Add(DM1.cdsAso.FieldByName('ESTCIVID').AsString+'-'+DM1.CrgDescrip('ESTCIVID='+QuotedStr(Trim(DM1.cdsAso.FieldByName('ESTCIVID').AsString)),'TGE125','ESTCIVDES'));
   fila.SubItems.Add(sCivilState+'-'+DM1.CrgDescrip('ESTCIVID='+QuotedStr(DM1.StrZero(sCivilState,2)),'TGE125','ESTCIVDES'));
   // Sexo
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Sexo';
   xtmp := '';
   If DM1.cdsAso.FieldByName('ASOSEXO').AsString = 'M' Then xtmp := 'MASCULINO';
   If DM1.cdsAso.FieldByName('ASOSEXO').AsString = 'F' Then xtmp := 'FEMENINO';
   fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOSEXO').AsString+'-'+xtmp);
   xtmp := '';
   If sGender = '1' Then xtmp := 'MASCULINO';
   If sGender = '2' Then xtmp := 'FEMENINO';
   fila.SubItems.Add(sGender+'-'+xtmp);
   // Código de otro documento
   // fila := lisTCompara.Items.Add;
   // fila.Caption := 'Documento sustentatorio';
   // fila.SubItems.Add(DM1.cdsAso.FieldByName('ASODOCSUSDNI').AsString+'-'+DM1.CrgDescrip('CODDOCSUS='+QuotedStr(DM1.cdsAso.FieldByName('ASODOCSUSDNI').AsString),'ASO_DOC_SUS','DESDOCSUS'));
   // fila.SubItems.Add(sAltDocumentType+'-'+DM1.CrgDescrip('CODDOCSUS='+QuotedStr(sAltDocumentType),'ASO_DOC_SUS','DESDOCSUS'));
   // Número de otro documento
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Número de otro tipo de documento';
   fila.SubItems.Add(DM1.cdsAso.FieldByName('ASODOCNUM').AsString);
   fila.SubItems.Add(sAltDocument);
   // Registro de votación
   // fila := lisTCompara.Items.Add;
   // fila.Caption := 'Constancia de votación';
   // fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOCONVOTDNI').AsString);
   // fila.SubItems.Add(sVoteStatus);
   // Fecha de registro del DNI
   // fila := lisTCompara.Items.Add;
   // fila.Caption := 'Fecha de registro del DNI';
   // fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOFECREGDNI').AsString);
   // fila.SubItems.Add(Copy(sRegisterDate,7,2)+'/'+Copy(sRegisterDate,5,2)+'/'+Copy(sRegisterDate,1,4));
   // Fecha de ùltima expedición del DNI
   // fila := lisTCompara.Items.Add;
   // fila.Caption := 'Fecha de expedición del DNI';
   // fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOFECEXPDNI').AsString);
   // fila.SubItems.Add(Copy(sExpeditionDate,7,2)+'/'+Copy(sExpeditionDate,5,2)+'/'+Copy(sExpeditionDate,1,4));
   // Fecha de expiración del DNI
   // fila := lisTCompara.Items.Add;
   // fila.Caption := 'Fecha de caducidad del DNI';
   // fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOFECCADDNI').AsString);
   // fila.SubItems.Add(Copy(sExpirationDate,7,2)+'/'+Copy(sExpirationDate,5,2)+'/'+Copy(sExpirationDate,1,4));
   // Grado de instrucciòn del DNI
   // fila := lisTCompara.Items.Add;
   // fila.Caption := 'Grado de Instrucción del DNI';
   // fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOGRAINSDNI').AsString+'-'+DM1.CrgDescrip('CODGRAINS='+QuotedStr(DM1.cdsAso.FieldByName('ASOGRAINSDNI').AsString),'ASO_GRA_INS','DESGRAINS'));
   // fila.SubItems.Add(sInstGrade+'-'+DM1.CrgDescrip('CODGRAINS='+QuotedStr(sInstGrade),'ASO_GRA_INS','DESGRAINS'));
   // Código de restricción
   // fila := lisTCompara.Items.Add;
   // fila.Caption := 'Código de Restricción';
   // fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOCODRESDNI').AsString);
   // fila.SubItems.Add(sRestrictionCode);
   // vlisConfirme.InsertRow('Descripción de restricción', sRestrictionDes, True);

   // Departamento domiciliario
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Departamento domiciliario';
   fila.SubItems.Add(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,1,2)+'-'+DM1.CrgDescrip('DPTOID='+QuotedStr(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,1,2)),'APO158','DPTODES'));
   fila.SubItems.Add(Trim(sAddDepUbigCode)+'-'+Trim(sDepartmentAddress));
   // Provincia domiciliario
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Provincia domiciliario';
   fila.SubItems.Add(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,3,2)+'-'+DM1.CrgDescrip('CIUDID='+QuotedStr(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,1,4)),'APO123','CIUDDES'));
   fila.SubItems.Add(Trim(sAddProvUbigCode)+'-'+Trim(sProvinceAddress));
   // Distrito domiciliario
   fila := lisTCompara.Items.Add;
   fila.Caption := 'Distrito domiciliario';
   fila.SubItems.Add(Copy(DM1.cdsAso.FieldByName('ZIPID').AsString,5,2)+'-'+DM1.CrgDescrip('ZIPID='+QuotedStr(DM1.cdsAso.FieldByName('ZIPID').AsString),'APO122','ZIPDES'));
   fila.SubItems.Add(Trim(sAddDistUbigCode)+'-'+Trim(sDistritAddress));
   // Tipo de Urbanización
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Urbanización';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('CODURBVIV').AsString);
  fila.SubItems.Add(Trim(sAddressUrbPrefix)+'-'+Trim(sAddressUrb));

  // vlisConfirme.InsertRow('Código de la dirección', sAddPrefix+'-'+sAddPrefixDes, True);
  // vlisConfirme.InsertRow('Dirección', sAddress, True);
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Dirección';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('CODTIPLUG').AsString+'-'+DM1.cdsAso.FieldByName('NOMDIRVIV').AsString);
  fila.SubItems.Add(Trim(sAddPrefix)+'-'+Trim(sAddress));

  // vlisConfirme.InsertRow('Etapa', sAddressEt, True);
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Etapa';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('NUMETAVIV').AsString+'-'+DM1.cdsAso.FieldByName('DESETAVIV').AsString);
  fila.SubItems.Add(Trim(sAddressEt));

  // vlisConfirme.InsertRow('Código de bloque', sAddressBlockPrefix+'-'+sAddressBlockPrefixDes, True);
  // vlisConfirme.InsertRow('Bloque', sAddressBlock, True);

  // vlisConfirme.InsertRow('Código de interior', sAddressIntPrefix+'-'+sAddressIntPrefixDes, True);
  // vlisConfirme.InsertRow('Interior', sAddressInterior, True);

  // Manzana
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Manzana';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('NUMMANVIV').AsString);
  fila.SubItems.Add(sAddressMz);

  // Lote
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Lote';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('NUMLOTVIV').AsString);
  fila.SubItems.Add(sAddressLt);

  // Número de la direcciòn
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Número';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('NUMDIRVIV').AsString);
  fila.SubItems.Add(sAddressNumber);

  // Fecha de nacimiento
  fila := lisTCompara.Items.Add;
  fila.Caption := 'Fecha de nacimiento';
  fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOFECNAC').AsString);
  fila.SubItems.Add(Copy(sBornDate,7,2)+'/'+Copy(sBornDate,5,2)+'/'+Copy(sBornDate,1,4));

  // Departamento nacimiento
  // fila := lisTCompara.Items.Add;
  // fila.Caption := 'Departamento de nacimiento';
  // fila.SubItems.Add(Copy(DM1.cdsAso.FieldByName('ASOUBINACDNI').AsString,1,2)+'-'+DM1.CrgDescrip('DPTOID='+QuotedStr(Copy(DM1.cdsAso.FieldByName('ASOUBINACDNI').AsString,1,2)),'APO158','DPTODES'));
  // fila.SubItems.Add(Trim(sBornDepartmentUbigCode)+'-'+Trim(sBornDepartment));
  // Provincia nacimiento
  // fila := lisTCompara.Items.Add;
  // fila.Caption := 'Provincia de nacimiento';
  // fila.SubItems.Add(Copy(DM1.cdsAso.FieldByName('ASOUBINACDNI').AsString,3,2)+'-'+DM1.CrgDescrip('CIUDID='+QuotedStr(Copy(DM1.cdsAso.FieldByName('ASOUBINACDNI').AsString,1,4)),'APO123','CIUDDES'));
  // fila.SubItems.Add(Trim(sBonrProvinceUbigCode)+'-'+Trim(sBornProvince));
  // Distrito nacimiento
  // fila := lisTCompara.Items.Add;
  // fila.Caption := 'Distrito de nacimiento';
  // fila.SubItems.Add(Copy(DM1.cdsAso.FieldByName('ASOUBINACDNI').AsString,5,2)+'-'+DM1.CrgDescrip('ZIPID='+QuotedStr(DM1.cdsAso.FieldByName('ASOUBINACDNI').AsString),'APO122','ZIPDES'));
  // fila.SubItems.Add(Trim(sBonrDistritUbigCode)+'-'+Trim(sBornDistrit));
  // Estatura
  // fila := lisTCompara.Items.Add;
  // fila.Caption := 'Estatura(cm.)';
  // fila.SubItems.Add(DM1.cdsAso.FieldByName('ASOESTATURADNI').AsString);
  // fila.SubItems.Add(FloatToStr(nHeight));
end;
// Fin: SPP_201402_ASO

procedure TFMantAsociadoCompara.imgFotoDerrComparaDblClick(
  Sender: TObject);
begin
  imgFotoRenComparaDblClick(self);
end;

procedure TFMantAsociadoCompara.imgFotoRenComparaDblClick(Sender: TObject);
begin
  try
    FMantAsociadoZoom := TFMantAsociadoZoom.create(self);
    FMantAsociadoZoom.imgDerramaFoto.Picture := imgFotoDerrCompara.Picture;
    FMantAsociadoZoom.imgDerramafirma.Picture := imgFirmaDerrCompara.Picture;
    FMantAsociadoZoom.imgReniecFoto.Picture := imgFotoRenCompara.Picture;
    FMantAsociadoZoom.imgReniecFirma.Picture := imgFirmaRenCompara.Picture;
    FMantAsociadoZoom.ShowModal;
  finally
    FMantAsociadoZoom.Free;
  end
end;

procedure TFMantAsociadoCompara.imgFirmaDerrComparaDblClick(
  Sender: TObject);
begin
  imgFotoRenComparaDblClick(self);
end;

procedure TFMantAsociadoCompara.imgFirmaRenComparaDblClick(
  Sender: TObject);
begin
  imgFotoRenComparaDblClick(self);
end;

procedure TFMantAsociadoCompara.BitBtn1Click(Sender: TObject);
begin
  bConfirmado := true;
  self.Close;
end;

end.

