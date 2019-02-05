// ************************************************************************ //
// The types declared in this file were generated from data read from the
// WSDL File described below:
// WSDL     : http://10.14.10.32/WcfServiceEmail/ServicioEmail.svc?singleWsdl
// Encoding : utf-8
// Version  : 1.0
// (31/10/2017 13:40:20 - 1.33.2.5)
// ************************************************************************ //
// Inicio Uso Estándares :	01/08/2011
// Unidad		             :	EmailSvc.pas
// Formulario		         :	WebService Emvío Email
// Fecha de Creación	   :	03/11/2017
// Autor			           :	Juan Contreras Arteaga
// Objetivo		           :  Reporte de resumen de envíos de generación de clave web
// Actualizaciones:
// HPC             FECHA       AUTOR      DESCRIPCION
// -------------------------------------------------------------------------------------------------------------------------
// HPC_201710_ASO  : Implementación de la opción de generación de clave Web

// Inicio HPC_201710_ASO  : Implementación de la opción de generación de clave Web

unit EmailSvc;

interface

uses InvokeRegistry, SOAPHTTPClient, Types, XSBuiltIns;

type

  // ************************************************************************ //
  // The following types, referred to in the WSDL document are not being represented
  // in this file. They are either aliases[@] of other types represented or were referred
  // to but never[!] declared in the document. The types from the latter category
  // typically map to predefined/known XML or Borland types; however, they could also 
  // indicate incorrect WSDL documents that failed to declare or import a schema type.
  // ************************************************************************ //
  // !:string          - "http://www.w3.org/2001/XMLSchema"
  // !:boolean         - "http://www.w3.org/2001/XMLSchema"

  Motivo               = class;                 { "http://schemas.datacontract.org/2004/07/WcfServicioEmail" }
  CID                  = class;                 { "http://schemas.datacontract.org/2004/07/WcfServicioEmail" }
  EmailType            = class;                 { "http://schemas.datacontract.org/2004/07/WcfServicioEmail" }



  // ************************************************************************ //
  // Namespace : http://schemas.datacontract.org/2004/07/WcfServicioEmail
  // ************************************************************************ //
  Motivo = class(TRemotable)
  private
    Fmensaje: WideString;
    Frespuesta: Boolean;
  published
    property mensaje: WideString read Fmensaje write Fmensaje;
    property respuesta: Boolean read Frespuesta write Frespuesta;
  end;



  // ************************************************************************ //
  // Namespace : http://schemas.datacontract.org/2004/07/WcfServicioEmail
  // ************************************************************************ //
  CID = class(TRemotable)
  private
    FcontentID: WideString;
    FpathImg: WideString;
  published
    property contentID: WideString read FcontentID write FcontentID;
    property pathImg: WideString read FpathImg write FpathImg;
  end;

  ArrayOfCID = array of CID;                    { "http://schemas.datacontract.org/2004/07/WcfServicioEmail" }
  ArrayOfstring = array of WideString;          { "http://schemas.microsoft.com/2003/10/Serialization/Arrays" }


  // ************************************************************************ //
  // Namespace : http://schemas.datacontract.org/2004/07/WcfServicioEmail
  // ************************************************************************ //
  EmailType = class(TRemotable)
  private
    FAdjuntos: ArrayOfstring;
    FAsunto: WideString;
    FCc: ArrayOfstring;
    FCco: ArrayOfstring;
    FCids: ArrayOfCID;
    FDe: WideString;
    FHtml: Boolean;
    FMensaje: WideString;
    FPara: ArrayOfstring;
  public
    destructor Destroy; override;
  published
    property Adjuntos: ArrayOfstring read FAdjuntos write FAdjuntos;
    property Asunto: WideString read FAsunto write FAsunto;
    property Cc: ArrayOfstring read FCc write FCc;
    property Cco: ArrayOfstring read FCco write FCco;
    property Cids: ArrayOfCID read FCids write FCids;
    property De: WideString read FDe write FDe;
    property Html: Boolean read FHtml write FHtml;
    property Mensaje: WideString read FMensaje write FMensaje;
    property Para: ArrayOfstring read FPara write FPara;
  end;


  // ************************************************************************ //
  // Namespace : http://tempuri.org/
  // soapAction: http://tempuri.org/IServicioEmail/%operationName%
  // transport : http://schemas.xmlsoap.org/soap/http
  // binding   : BasicHttpBinding_IServicioEmail
  // service   : ServicioEmail
  // port      : BasicHttpBinding_IServicioEmail
  // URL       : http://10.14.10.32/WcfServiceEmail/ServicioEmail.svc
  // ************************************************************************ //
  IServicioEmail = interface(IInvokable)
  ['{D0C2F6FC-16DD-AF23-1E08-9CB4D0C65651}']
    function  EnviaEmail(const email: EmailType): Motivo; stdcall;
    function  EnviaEmailDelphi(const de: WideString; const para: WideString; const asunto: WideString; const bodyHtml: WideString): Motivo; stdcall;
  end;

function GetIServicioEmail(UseWSDL: Boolean=System.False; Addr: string=''; HTTPRIO: THTTPRIO = nil): IServicioEmail;


implementation

function GetIServicioEmail(UseWSDL: Boolean; Addr: string; HTTPRIO: THTTPRIO): IServicioEmail;
const
  defWSDL = 'http://10.14.10.32/WcfServiceEmail/ServicioEmail.svc?singleWsdl';
  defURL  = 'http://10.14.10.32/WcfServiceEmail/ServicioEmail.svc';
  defSvc  = 'ServicioEmail';
  defPrt  = 'BasicHttpBinding_IServicioEmail';
var
  RIO: THTTPRIO;
begin
  Result := nil;
  if (Addr = '') then
  begin
    if UseWSDL then
      Addr := defWSDL
    else
      Addr := defURL;
  end;
  if HTTPRIO = nil then
    RIO := THTTPRIO.Create(nil)
  else
    RIO := HTTPRIO;
  try
    Result := (RIO as IServicioEmail);
    if UseWSDL then
    begin
      RIO.WSDLLocation := Addr;
      RIO.Service := defSvc;
      RIO.Port := defPrt;
    end else
      RIO.URL := Addr;
  finally
    if (Result = nil) and (HTTPRIO = nil) then
      RIO.Free;
  end;
end;


destructor EmailType.Destroy;
var
  I: Integer;
begin
  for I := 0 to Length(FCids)-1 do
    if Assigned(FCids[I]) then
      FCids[I].Free;
  SetLength(FCids, 0);
  inherited Destroy;
end;

initialization
  InvRegistry.RegisterInterface(TypeInfo(IServicioEmail), 'http://tempuri.org/', 'utf-8');
  InvRegistry.RegisterDefaultSOAPAction(TypeInfo(IServicioEmail), 'http://tempuri.org/IServicioEmail/%operationName%');
  RemClassRegistry.RegisterXSClass(Motivo, 'http://schemas.datacontract.org/2004/07/WcfServicioEmail', 'Motivo');
  RemClassRegistry.RegisterXSClass(CID, 'http://schemas.datacontract.org/2004/07/WcfServicioEmail', 'CID');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfCID), 'http://schemas.datacontract.org/2004/07/WcfServicioEmail', 'ArrayOfCID');
  RemClassRegistry.RegisterXSInfo(TypeInfo(ArrayOfstring), 'http://schemas.microsoft.com/2003/10/Serialization/Arrays', 'ArrayOfstring');
  RemClassRegistry.RegisterXSClass(EmailType, 'http://schemas.datacontract.org/2004/07/WcfServicioEmail', 'EmailType');
  InvRegistry.RegisterInvokeOptions(TypeInfo(IServicioEmail),ioDocument);
// Fin HPC_201710_ASO  : Implementación de la opción de generación de clave Web
end.