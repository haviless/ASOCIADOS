Unit ASO939A;
// Inicio Uso Estándares: 07/07/2014
// Unidad               : ASO939A
// Formulario           : fNivUsu
// Fecha de Creación    : 07/07/2014
// Autor                : Area de desarrollo de sistemas.
// Objetivo             : Asignar niveles de permiso a los usuarios.
//  
// Actualizaciones      :
// SPP_201404_ASO       : Se realiza el pase a producción a partir del HPC_201403_ASO
// HPC_201513_ASO	  : MEJORAS PARA OPTIMIZAR OPCIONES

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, Grids, Wwdbigrd, Wwdbgrid, Buttons, fcButton, fcImgBtn,
// INICIO HPC_201513_ASO
   fcShapeBtn, wwdblook, StdCtrls, ExtCtrls, Mask, DBCtrls, DB;
// FIN HPC_201513_ASO

Type
   TfNivUsu = Class(TForm)
      dtgOfiDes: TwwDBGrid;
      dtgUsuarios: TwwDBGrid;
      BitAsignar: TButton;
      pnlNivel: TPanel;
      Shape2: TShape;
      Shape1: TShape;
      lblUser: TLabel;
      lblUserNOm: TLabel;
      Label1: TLabel;
      Label2: TLabel;
      Panel1: TPanel;
      edtDesEqpUsr: TEdit;
      dblNiveles: TwwDBLookupCombo;
      BitGraba: TfcShapeBtn;
      lblNivel: TLabel;
      dtgUserNiv: TwwDBGrid;
      BitQuitar: TButton;
      BitSalir: TBitBtn;
      BitNiv1: TButton;
      BitNiv2: TButton;
      BitNiv3: TButton;
      gbOfides: TGroupBox;
      Label3: TLabel;
      Label5: TLabel;
      BitGrabaOF: TfcShapeBtn;
      Button1: TButton;
      meTel: TMaskEdit;
      Label6: TLabel;
      meFax: TMaskEdit;
      Label7: TLabel;
      lblOfdes: TLabel;
      lblofdesnom: TLabel;
      Shape3: TShape;
      Shape4: TShape;
      meDir: TMemo;
      BitNiv4: TButton;
      //INICIO HPC_201513_ASO
      GroupBox1: TGroupBox;
      Label10: TLabel;
      edtBuscarUsuarioPorAsignar: TEdit;
      GroupBox2: TGroupBox;
      Label4: TLabel;
      edtBuscarUsuarioAsignado: TEdit;
      //FIN HPC_201513_ASO
      Procedure dtgOfiDesRowChanged(Sender: TObject);
      Procedure BitSalirClick(Sender: TObject);
      Procedure BitAsignarClick(Sender: TObject);
      Procedure dblNivelesChange(Sender: TObject);
      Procedure BitGrabaClick(Sender: TObject);
      Procedure BitNiv4Click(Sender: TObject);
      Procedure BitNiv1Click(Sender: TObject);
      Procedure BitNiv2Click(Sender: TObject);
      Procedure BitNiv3Click(Sender: TObject);
      Procedure BitQuitarClick(Sender: TObject);
      Procedure FormActivate(Sender: TObject);
      // INICIO HPC_201513_ASO
      procedure edtBuscarUsuarioPorAsignarChange(Sender: TObject);
      procedure edtBuscarUsuarioAsignadoChange(Sender: TObject);
      // FIN HPC_201513_ASO
   Private
    { Private declarations }
      Procedure CargaUsers;
      Procedure CargaUsersNivel(xNivel: String);
   Public
    { Public declarations }
   End;

Var
   fNivUsu: TfNivUsu;

Implementation

Uses ASODM;

{$R *.dfm}

{ TfNivUsu }

Procedure TfNivUsu.CargaUsers;
Var
   xSQL: String;
Begin
   // INICIO HPC_201513_ASO
   xSQL := 'SELECT A.USERID, UPPER(A.USERNOM) USERNOM, C.OFDESID ORIGEN FROM TGE007 A, TGE006 C WHERE GRUPOID=''GRPMANASO'' AND C.OFDESID IS NOT NULL AND C.OFDESID=' +DM1.cdsUSES.FieldByName('ORIGEN').AsString + ' AND A.USERID=C.USERID(+) AND C.FECEXP IS NULL ORDER BY A.USERNOM ';
   // FIN HPC_201513_ASO   
   DM1.cdsDLabo.Close;
   DM1.cdsDLabo.DataRequest(xSQL);
   DM1.cdsDLabo.Open;

End;

Procedure TfNivUsu.dtgOfiDesRowChanged(Sender: TObject);
Begin
   CargaUsers;
End;

Procedure TfNivUsu.BitSalirClick(Sender: TObject);
Begin
   Close;
End;

Procedure TfNivUsu.BitAsignarClick(Sender: TObject);
Var
   xSQL: String;
Begin
   lblUser.Caption := DM1.cdsDLabo.FieldByName('USERID').AsString;
   lblUserNom.Caption := DM1.cdsDLabo.FieldByName('USERNOM').AsString;
   xSQL := 'SELECT DISTINCT CODNIV,DESNIV FROM ASO_NIV_USU ORDER BY CODNIV';
   DM1.cdsConsultaCartera.Close;
   DM1.LimpiaClientDataset(DM1.cdsConsultaCartera);  
   DM1.cdsConsultaCartera.DataRequest(xSQL);
   DM1.cdsConsultaCartera.Open;
   dblNiveles.LookupTable := DM1.cdsConsultaCartera;
   dblNiveles.LookupField := 'CODNIV';
   dblNiveles.Selected.Clear;
   dblNiveles.Selected.Add('CODNIV'#9'2'#9'Nivel');
   dblNiveles.Selected.Add('DESNIV'#9'15'#9'Descripción');
   BitGraba.Enabled := True;
   pnlNivel.Enabled := True;
End;

Procedure TfNivUsu.dblNivelesChange(Sender: TObject);
Begin
   If DM1.cdsConsultaCartera.Locate('CODNIV', VarArrayof([dblNiveles.Text]), []) Then

   Else
      Begin
         If Length(dblNiveles.Text) <> 2 Then
            Begin
               Beep;
               edtDesEqpUsr.Text := '';
            End;
      End;

End;

Procedure TfNivUsu.CargaUsersNivel(xNivel: String);
Var
   xSQL: String;
Begin
   // INICIO HPC_201513_ASO
   xSQL := 'SELECT A.USERID,UPPER(A.USERNOM) USERNOM,A.USERNIV FROM ASO_NIV_USU_OTO A, TGE006 B '
      + 'WHERE A.USERID=B.USERID(+) AND A.USERNIV=' + QuotedStr(xNivel)
      + ' AND B.OFDESID=' + QuotedStr(Copy(DM1.CrgArea(DM1.wUsuario),4,2));
   // FIN HCP_201513_ASO
   DM1.cdsResultado.Close;
   DM1.cdsResultado.DataRequest(xSQL);
   DM1.cdsResultado.Open;
   // INICIO HPC_201513_ASO
   edtBuscarUsuarioAsignado.Text := '';
   // FIN HCP_201513_ASO
End;

Procedure TfNivUsu.BitGrabaClick(Sender: TObject);
Var
   xSQL, xUser, xNomUser, xTipAct: String;
   Boton: Integer;
Begin
   If Length(Trim(dblNiveles.Text)) = 0 Then
      Begin
         MessageDlg('Debe Seleccionar Un Nivel De USUARIO !!!', mtError, [mbOk], 0);
         Exit;
      End;
   Boton := Application.MessageBox('Seguro De GRABAR NIVEL DE AUTONOMIA ', 'Autonomia De Usuarios', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
      Begin
         xUser := DM1.cdsDLabo.FieldByName('USERID').AsString;
         xNomUser := DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUser)), 'TGE006', 'USERNOM');

         If Length(Trim(DM1.CrgDescrip('USERID=' + QuotedStr(Trim(xUser)), 'ASO_NIV_USU_OTO', 'USERNIV'))) = 0 Then
            Begin
               xSQL := 'INSERT INTO ASO_NIV_USU_OTO(USERID, USERNIV, USUAUT, FECAUT, USERNOM, TIPACT) VALUES (' + QuotedStr(xUser) + ',' + QuotedStr(dblNiveles.Text) + ',' + QuotedStr(DM1.wUsuario) + ', SYSDATE,' + QuotedStr(xNomUser) + ',' + QuotedStr(xTipAct) + ' )  ';
            End
         Else
            Begin
               xSQL := 'UPDATE ASO_NIV_USU_OTO SET USERNIV=' + QuotedStr(dblNiveles.Text) + ',TIPACT=' + QuotedStr(xTipAct) + ' WHERE USERID=' + QuotedStr(Trim(xUser));
            End;
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         CargaUsersNivel(dblNiveles.Text);
         lblNivel.Caption := edtDesEqpUsr.Text;
         lblUser.Caption := '';
         lblUserNom.Caption := '';
         dblNiveles.Text := '';
         pnlNivel.Enabled := False;
         BitGraba.Enabled := False;
      End;
   lblUser.Caption := '';
   lblUserNom.Caption := '';
   dblNiveles.Text := '';
   pnlNivel.Enabled := False;
   BitGraba.Enabled := False;

End;

Procedure TfNivUsu.BitNiv4Click(Sender: TObject);
Begin
   lblNivel.Caption := BitNiv4.Caption;
   CargaUsersNivel('N4');

End;

Procedure TfNivUsu.BitNiv1Click(Sender: TObject);
Begin
   lblNivel.Caption := BitNiv1.Caption;
   CargaUsersNivel('N1');

End;

Procedure TfNivUsu.BitNiv2Click(Sender: TObject);
Begin
   lblNivel.Caption := BitNiv2.Caption;
   CargaUsersNivel('N2');

End;

Procedure TfNivUsu.BitNiv3Click(Sender: TObject);
Begin
   lblNivel.Caption := BitNiv3.Caption;
   CargaUsersNivel('N3');

End;

Procedure TfNivUsu.BitQuitarClick(Sender: TObject);
Var
   xSQL, xUser, xNivel: String;
   Boton: Integer;
Begin
   If dtgUserNiv.DataSource.DataSet.RecordCount = 0 Then Exit;
   xUser := DM1.cdsResultado.FieldByName('USERID').AsString;
   xNivel := DM1.cdsResultado.FieldByName('USERNIV').AsString;
   Boton := Application.MessageBox('Seguro De QUITAR NIVEL DE AUTONOMIA ', 'Autonomia De Usuarios', MB_YESNO + MB_ICONQUESTION);
   If Boton = ID_YES Then
      Begin
         xSQL := 'DELETE FROM ASO_NIV_USU_OTO WHERE USERID=' + QuotedStr(xUser);
         DM1.DCOM1.AppServer.EjecutaSql(xSQL);
         CargaUsersNivel(xNivel);
      End;
   // INICIO HPC_201513_ASO
   edtBuscarUsuarioAsignado.Text := '';
   // FIN HCP_201513_ASO
End;

Procedure TfNivUsu.FormActivate(Sender: TObject);
Var xSQL :String;
Begin
   xSQL := 'SELECT OFDESID ORIGEN,OFDESNOM, OFDESDIR, OFDESMAIL, OFDESTEL, OFDESFAX FROM APO110 WHERE SUBSTR(OFDESID,1,1)<>''M'' ORDER BY OFDESID';
   DM1.cdsUSES.Close;
   DM1.cdsUSES.DataRequest(xSQL);
   DM1.cdsUSES.Open;

   CargaUsers;
   CargaUsersNivel('XX');
End;

// INICIO HPC_201513_ASO
(******************************************************************************)
procedure TfNivUsu.edtBuscarUsuarioPorAsignarChange(Sender: TObject);
begin
  WITH DM1.cdsDLabo DO BEGIN
    IF RecordCount = 0 THEN exit;
    IF edtBuscarUsuarioPorAsignar.Text <> '' THEN
      IF NOT Locate('USERID', VarArrayOf([TRIM(edtBuscarUsuarioPorAsignar.Text)]), [loPartialKey]) THEN
         Locate('USERNOM', VarArrayOf([TRIM(edtBuscarUsuarioPorAsignar.Text)]), [loPartialKey]);
  END;
end;
(******************************************************************************)
procedure TfNivUsu.edtBuscarUsuarioAsignadoChange(Sender: TObject);
begin
  WITH DM1.cdsResultado DO BEGIN
    IF RecordCount = 0 THEN exit;
    IF edtBuscarUsuarioAsignado.Text <> '' THEN
      IF NOT Locate('USERID', VarArrayOf([TRIM(edtBuscarUsuarioAsignado.Text)]), [loPartialKey]) THEN
         Locate('USERNOM', VarArrayOf([TRIM(edtBuscarUsuarioAsignado.Text)]), [loPartialKey]);
  END;
end;
(******************************************************************************)
// FIN HPC_201513_ASO

End.

