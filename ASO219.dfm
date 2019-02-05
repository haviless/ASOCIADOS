object FPadronRegistro: TFPadronRegistro
  Left = 275
  Top = 110
  BorderStyle = bsDialog
  Caption = 'Comparativo Registro Original vs Modificado'
  ClientHeight = 551
  ClientWidth = 883
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpdBActMas: TSpeedButton
    Left = 56
    Top = 520
    Width = 145
    Height = 27
    Cursor = crHandPoint
    Caption = 'Maestro De Asociados'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFE1CAC448737300497C1524405F5D55818181FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C8C9747A7B311F1A009FC600
      7EF600B1FF0079FF2003133E45333B3B3BADADADFFFFFFFFFFFFFFFFFFC5C6C7
      544B497B4E49B1736E2E000000EEFF0077E300A7FF006FFF623E631C007C4449
      3A444444121212FFFFFFFFFFFF666D6EEDACA39B6763AB757130000000E9FF00
      77E300A9FF0072FF5C3B583500AC0C1300B2B2B2FFFFFFFFFFFFFFFFFF6E7576
      E1A69F986562AB757133000000E9FF0074E30091F4004CF45C3E5B27009E8C92
      81FFFFFFFFFFFFFFFFFFFFFFFF6E7576E1A69F986562AA6D670E2F3A00E1FF00
      9FF100E7FF002EE165435B2600A0828776FFFFFFFFFFFFFFFFFFFFFFFF717B7D
      E1A69F8D5C59D18A8200617F00D7FF00D0FF00D7FF0070FF0020693E0E7B878B
      7CFFFFFFFFFFFFFFFFFFFFFFFF4D2B27DEA6A0D8A39DEEA69C00597600D7FF00
      CCFF00D7FF0069FF0036737B3CCA3A304FFFFFFFFFFFFFFFFFFFFFFFFF50332F
      DEA6A0D39E97EAA39900597600D7FF00C8FF00D4FF0063FF0034727D42C70000
      26FFFFFFFFFFFFFFFFFFFFFFFF50332FDEA6A0D39E97E79D92005F7E00D4FFAF
      FFFFF2FFFF39AFFF0025727D42C700002AFFFFFFFFFFFFFFFFFFFFFFFF50332F
      DBA099D3978FFFF6F0000418FBF9FA00036E001973004AD87091716E36C50000
      26FFFFFFFFFFFFFFFFFFFFFFFF4A251FFFF3EEBAA8A8C5878B884F4D0331458B
      82766862585F5C3D9C53F4985CE51A0044FFFFFFFFFFFFFFFFFFFFFFFF686F6F
      A9858A000000000707685B5A6A6665FFFFFFD1D0D0090909081100493D64D2D5
      CAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F1412E1DCE1A5A8A5000000848384FF
      FFFF9E9E9D2F2B2FB4B6B4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      5F5A5FFFFFFFE3DDE1000000FFFFFF6B6C6B201D20FFFFFFE3DDE1000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D8D75F5D5F252825E1E1E1FFFFFFFF
      FFFFDCDEDC5F5D5F252825E1E1E1FFFFFFFFFFFFFFFFFFFFFFFF}
    Margin = 1
    ParentFont = False
    OnClick = SpdBActMasClick
  end
  object grpDatosOriginales: TGroupBox
    Left = 8
    Top = 8
    Width = 425
    Height = 505
    Caption = 'Registro original'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object Label3: TLabel
      Left = 16
      Top = 48
      Width = 73
      Height = 13
      Caption = 'C'#243'digo modular'
    end
    object Label5: TLabel
      Left = 16
      Top = 72
      Width = 53
      Height = 13
      Caption = 'Secuencial'
    end
    object Label6: TLabel
      Left = 16
      Top = 96
      Width = 19
      Height = 13
      Caption = 'DNI'
    end
    object Label7: TLabel
      Left = 16
      Top = 120
      Width = 56
      Height = 13
      Caption = 'Ap. Paterno'
    end
    object Label8: TLabel
      Left = 16
      Top = 144
      Width = 58
      Height = 13
      Caption = 'Ap. Materno'
    end
    object Label9: TLabel
      Left = 16
      Top = 168
      Width = 42
      Height = 13
      Caption = 'Nombres'
    end
    object Label10: TLabel
      Left = 16
      Top = 192
      Width = 33
      Height = 13
      Caption = 'Planilla'
    end
    object Label11: TLabel
      Left = 16
      Top = 216
      Width = 27
      Height = 13
      Caption = 'Fiscal'
    end
    object Label12: TLabel
      Left = 16
      Top = 240
      Width = 44
      Height = 13
      Caption = 'Situaci'#243'n'
    end
    object Label13: TLabel
      Left = 16
      Top = 264
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object Label14: TLabel
      Left = 16
      Top = 288
      Width = 33
      Height = 13
      Caption = 'Oficina'
    end
    object Label15: TLabel
      Left = 16
      Top = 312
      Width = 39
      Height = 13
      Caption = 'Servidor'
    end
    object Label16: TLabel
      Left = 16
      Top = 336
      Width = 76
      Height = 13
      Caption = 'Instit. Educativa'
    end
    object Label17: TLabel
      Left = 16
      Top = 360
      Width = 28
      Height = 13
      Caption = 'Cargo'
    end
    object Label18: TLabel
      Left = 16
      Top = 384
      Width = 44
      Height = 13
      Caption = 'Reg. Lab'
    end
    object Label19: TLabel
      Left = 16
      Top = 408
      Width = 72
      Height = 13
      Caption = 'Cuenta ahorros'
    end
    object Label20: TLabel
      Left = 16
      Top = 432
      Width = 29
      Height = 13
      Caption = 'Haber'
    end
    object Label21: TLabel
      Left = 16
      Top = 456
      Width = 52
      Height = 13
      Caption = 'Descuento'
    end
    object Label22: TLabel
      Left = 16
      Top = 480
      Width = 36
      Height = 13
      Caption = 'L'#237'quido'
    end
    object edtCODITEM1: TwwDBEdit
      Left = 102
      Top = 18
      Width = 91
      Height = 22
      TabStop = False
      DataField = 'CODITEM'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtASOCODMOD1: TwwDBEdit
      Left = 102
      Top = 42
      Width = 91
      Height = 22
      TabStop = False
      DataField = 'MODULAR'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtSECUENCIAL1: TwwDBEdit
      Left = 102
      Top = 66
      Width = 91
      Height = 22
      TabStop = False
      DataField = 'SECUENCIAL'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtASODNI1: TwwDBEdit
      Left = 102
      Top = 90
      Width = 91
      Height = 22
      TabStop = False
      DataField = 'DNI'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtPATERNO1: TwwDBEdit
      Left = 102
      Top = 114
      Width = 203
      Height = 22
      TabStop = False
      DataField = 'PATERNO'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtMATERNO1: TwwDBEdit
      Left = 102
      Top = 138
      Width = 203
      Height = 22
      TabStop = False
      DataField = 'MATERNO'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtNOMBRES1: TwwDBEdit
      Left = 102
      Top = 162
      Width = 203
      Height = 22
      TabStop = False
      DataField = 'NOMBRES'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtPLANILLA1: TwwDBEdit
      Left = 102
      Top = 186
      Width = 51
      Height = 22
      TabStop = False
      DataField = 'PLANILLA'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtFISCAL1: TwwDBEdit
      Left = 102
      Top = 210
      Width = 51
      Height = 22
      TabStop = False
      DataField = 'FISCAL'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtSITUACION1: TwwDBEdit
      Left = 102
      Top = 234
      Width = 51
      Height = 22
      TabStop = False
      DataField = 'SITUACION'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCOD_EMPRESA1: TwwDBEdit
      Left = 102
      Top = 258
      Width = 51
      Height = 22
      TabStop = False
      DataField = 'COD_EMPRESA'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtEMPRESA1: TwwDBEdit
      Left = 158
      Top = 258
      Width = 147
      Height = 22
      TabStop = False
      DataField = 'EMPRESA'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCOD_OFICINA1: TwwDBEdit
      Left = 102
      Top = 282
      Width = 51
      Height = 22
      TabStop = False
      DataField = 'COD_OFICINA'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtOFICINA1: TwwDBEdit
      Left = 158
      Top = 282
      Width = 147
      Height = 22
      TabStop = False
      DataField = 'OFICINA'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCOD_SERVIDOR1: TwwDBEdit
      Left = 102
      Top = 306
      Width = 51
      Height = 22
      TabStop = False
      DataField = 'COD_SERVIDOR'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtDESC_SERVIDOR1: TwwDBEdit
      Left = 158
      Top = 306
      Width = 147
      Height = 22
      TabStop = False
      DataField = 'DESC_SERVIDOR'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCOD_IE1: TwwDBEdit
      Left = 102
      Top = 330
      Width = 75
      Height = 22
      TabStop = False
      DataField = 'COD_IE'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtNOMBRE_IE1: TwwDBEdit
      Left = 182
      Top = 330
      Width = 235
      Height = 22
      TabStop = False
      DataField = 'NOMBRE_IE'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCOD_CARGO1: TwwDBEdit
      Left = 102
      Top = 354
      Width = 51
      Height = 22
      TabStop = False
      DataField = 'COD_CARGO'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtDES_CARGO1: TwwDBEdit
      Left = 158
      Top = 354
      Width = 235
      Height = 22
      TabStop = False
      DataField = 'DES_CARGO'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCOD_REGLAB1: TwwDBEdit
      Left = 102
      Top = 378
      Width = 51
      Height = 22
      TabStop = False
      DataField = 'COD_REGLAB'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtREGLAB1: TwwDBEdit
      Left = 158
      Top = 378
      Width = 147
      Height = 22
      TabStop = False
      DataField = 'REGLAB'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCTA_AHORROS1: TwwDBEdit
      Left = 102
      Top = 402
      Width = 170
      Height = 22
      TabStop = False
      DataField = 'CTA_AHORROS'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtHABER1: TwwDBEdit
      Left = 102
      Top = 426
      Width = 170
      Height = 22
      TabStop = False
      DataField = 'HABER'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 23
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtDESCUENTO1: TwwDBEdit
      Left = 102
      Top = 450
      Width = 170
      Height = 22
      TabStop = False
      DataField = 'DESCUENTO'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 24
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtLIQUIDO1: TwwDBEdit
      Left = 102
      Top = 474
      Width = 170
      Height = 22
      TabStop = False
      DataField = 'LIQUIDO'
      DataSource = DM1.dsPadron1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 25
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object btnDetDcto: TBitBtn
      Left = 72
      Top = 449
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 26
      OnClick = btnDetDctoClick
    end
  end
  object grpDatosModificados: TGroupBox
    Left = 448
    Top = 8
    Width = 425
    Height = 505
    Caption = 'Registro modificado'
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object Label4: TLabel
      Left = 16
      Top = 48
      Width = 73
      Height = 13
      Caption = 'C'#243'digo modular'
    end
    object Label23: TLabel
      Left = 16
      Top = 72
      Width = 86
      Height = 13
      Caption = 'Secuencial/Cargo'
    end
    object Label24: TLabel
      Left = 16
      Top = 96
      Width = 19
      Height = 13
      Caption = 'DNI'
    end
    object Label25: TLabel
      Left = 16
      Top = 120
      Width = 56
      Height = 13
      Caption = 'Ap. Paterno'
    end
    object Label26: TLabel
      Left = 16
      Top = 144
      Width = 58
      Height = 13
      Caption = 'Ap. Materno'
    end
    object Label27: TLabel
      Left = 16
      Top = 168
      Width = 42
      Height = 13
      Caption = 'Nombres'
    end
    object Label28: TLabel
      Left = 16
      Top = 192
      Width = 33
      Height = 13
      Caption = 'Planilla'
    end
    object Label29: TLabel
      Left = 16
      Top = 216
      Width = 82
      Height = 13
      Caption = 'R'#233'gimen pensi'#243'n'
    end
    object Label30: TLabel
      Left = 16
      Top = 240
      Width = 78
      Height = 13
      Caption = 'Situaci'#243'n laboral'
    end
    object Label31: TLabel
      Left = 16
      Top = 264
      Width = 80
      Height = 13
      Caption = 'Regi'#243'n/Empresa'
    end
    object Label32: TLabel
      Left = 16
      Top = 288
      Width = 60
      Height = 13
      Caption = 'Ugel/Oficina'
    end
    object Label33: TLabel
      Left = 16
      Top = 312
      Width = 86
      Height = 13
      Caption = 'Servidor/Tipo Aso'
    end
    object Label34: TLabel
      Left = 16
      Top = 336
      Width = 76
      Height = 13
      Caption = 'Instit. Educativa'
    end
    object Label35: TLabel
      Left = 16
      Top = 360
      Width = 62
      Height = 13
      Caption = 'Cargo laboral'
    end
    object Label36: TLabel
      Left = 16
      Top = 384
      Width = 44
      Height = 13
      Caption = 'Reg. Lab'
    end
    object Label37: TLabel
      Left = 16
      Top = 408
      Width = 72
      Height = 13
      Caption = 'Cuenta ahorros'
    end
    object Label38: TLabel
      Left = 16
      Top = 432
      Width = 29
      Height = 13
      Caption = 'Haber'
    end
    object Label39: TLabel
      Left = 16
      Top = 456
      Width = 52
      Height = 13
      Caption = 'Descuento'
    end
    object Label40: TLabel
      Left = 16
      Top = 480
      Width = 36
      Height = 13
      Caption = 'L'#237'quido'
    end
    object Label41: TLabel
      Left = 288
      Top = 456
      Width = 56
      Height = 13
      Caption = 'Cod.Mod.IE'
    end
    object Label42: TLabel
      Left = 352
      Top = 456
      Width = 51
      Height = 13
      Caption = 'Niv.Edu.IE'
    end
    object Label43: TLabel
      Left = 288
      Top = 408
      Width = 50
      Height = 13
      Caption = 'U.Proceso'
    end
    object Label44: TLabel
      Left = 352
      Top = 408
      Width = 36
      Height = 13
      Caption = 'U.Pago'
    end
    object Label45: TLabel
      Left = 224
      Top = 24
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label46: TLabel
      Left = 216
      Top = 48
      Width = 92
      Height = 13
      Caption = 'Actualizar'#225' maestro'
    end
    object Label47: TLabel
      Left = 272
      Top = 96
      Width = 32
      Height = 13
      Caption = 'Nuevo'
    end
    object edtCODITEM2: TwwDBEdit
      Left = 102
      Top = 18
      Width = 91
      Height = 22
      TabStop = False
      Color = 15269887
      DataField = 'CODITEM'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtASOCODMOD2: TwwDBEdit
      Left = 102
      Top = 42
      Width = 91
      Height = 22
      DataField = 'ASOCODMOD'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtSECUENCIAL2: TwwDBEdit
      Left = 102
      Top = 66
      Width = 91
      Height = 21
      DataField = 'SECUENCIAL'
      DataSource = DM1.dsPadron2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnChange = edtSECUENCIAL2Change
    end
    object edtASODNI2: TwwDBEdit
      Left = 102
      Top = 90
      Width = 91
      Height = 22
      DataField = 'ASODNI'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtASOAPEPAT2: TwwDBEdit
      Left = 102
      Top = 114
      Width = 203
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ASOAPEPAT'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtASOAPEMAT2: TwwDBEdit
      Left = 102
      Top = 138
      Width = 203
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ASOAPEMAT'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtASONOMBRES2: TwwDBEdit
      Left = 102
      Top = 162
      Width = 203
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ASONOMBRES'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtFISCAL2: TwwDBEdit
      Left = 307
      Top = 210
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'FISCAL'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtSITUACION2: TwwDBEdit
      Left = 307
      Top = 234
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'SITUACION'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCOD_EMPRESA2: TwwDBEdit
      Left = 102
      Top = 258
      Width = 51
      Height = 22
      CharCase = ecUpperCase
      DataField = 'COD_EMPRESA'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnChange = edtCOD_EMPRESA2Change
    end
    object edtEMPRESA2: TwwDBEdit
      Left = 158
      Top = 258
      Width = 147
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'EMPRESA'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtUSENOM2: TwwDBEdit
      Left = 158
      Top = 282
      Width = 147
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'USENOM'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtDESC_SERVIDOR2: TwwDBEdit
      Left = 158
      Top = 306
      Width = 147
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 21
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtNOMBRE_IE2: TwwDBEdit
      Left = 182
      Top = 330
      Width = 235
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtDES_CARGO2: TwwDBEdit
      Left = 158
      Top = 354
      Width = 235
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCOD_REGLAB2: TwwDBEdit
      Left = 102
      Top = 378
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'COD_REGLAB'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 27
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtREGLAB2: TwwDBEdit
      Left = 158
      Top = 378
      Width = 147
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'REGLAB'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 28
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtASONCTA2: TwwDBEdit
      Left = 102
      Top = 402
      Width = 170
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ASONCTA'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtHABER2: TwwDBEdit
      Left = 102
      Top = 426
      Width = 170
      Height = 22
      TabStop = False
      Color = 15269887
      DataField = 'HABER'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 30
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtDESCUENTO2: TwwDBEdit
      Left = 102
      Top = 450
      Width = 170
      Height = 22
      TabStop = False
      Color = 15269887
      DataField = 'DESCUENTO'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 31
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtLIQUIDO2: TwwDBEdit
      Left = 102
      Top = 474
      Width = 170
      Height = 22
      TabStop = False
      Color = 15269887
      DataField = 'LIQUIDO'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 32
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtDESPLANILLA2: TwwDBEdit
      Left = 158
      Top = 186
      Width = 147
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtDESFISCAL2: TwwDBEdit
      Left = 158
      Top = 210
      Width = 147
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtDESSITUACION2: TwwDBEdit
      Left = 158
      Top = 234
      Width = 147
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcdPLANILLA2: TwwDBLookupComboDlg
      Left = 102
      Top = 186
      Width = 51
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Planilla'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'PLANILLA'
      DataSource = DM1.dsPadron2
      LookupTable = DM1.cdsPlanilla
      LookupField = 'PLANILLA'
      MaxLength = 3
      ParentFont = False
      TabOrder = 8
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdPLANILLA2Change
    end
    object dblcdREGPENID2: TwwDBLookupComboDlg
      Left = 102
      Top = 210
      Width = 51
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Regi'#243'n'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'REGPENID'
      DataSource = DM1.dsPadron2
      LookupTable = DM1.cdsRegPen
      LookupField = 'REGPENID'
      MaxLength = 3
      ParentFont = False
      TabOrder = 10
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdREGPENID2Change
    end
    object dblcdSITACT2: TwwDBLookupComboDlg
      Left = 102
      Top = 234
      Width = 51
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Regi'#243'n'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'SITACT'
      DataSource = DM1.dsPadron2
      LookupTable = DM1.cdsSitLab
      LookupField = 'COD_SIT'
      MaxLength = 3
      ParentFont = False
      TabOrder = 13
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdSITACT2Change
    end
    object edtASOTIPID2: TwwDBEdit
      Left = 307
      Top = 306
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 22
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcdUSEID2: TwwDBLookupComboDlg
      Left = 102
      Top = 282
      Width = 51
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Regi'#243'n'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'USEID'
      DataSource = DM1.dsPadron2
      LookupTable = DM1.cdsUgelPadron
      LookupField = 'USEID'
      MaxLength = 3
      ParentFont = False
      TabOrder = 18
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdUSEID2Change
    end
    object edtCARGO2: TwwDBEdit
      Left = 198
      Top = 66
      Width = 107
      Height = 22
      TabStop = False
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcdTIPSER2: TwwDBLookupComboDlg
      Left = 102
      Top = 306
      Width = 51
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Tipo de Servidor'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'TIPSER'
      DataSource = DM1.dsPadron2
      LookupTable = DM1.cdsTipSer
      LookupField = 'COD_SIT'
      MaxLength = 3
      ParentFont = False
      TabOrder = 20
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdTIPSER2Change
    end
    object dblcdCARLAB2: TwwDBLookupComboDlg
      Left = 102
      Top = 354
      Width = 51
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Cargo laboral'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'CARLAB'
      DataSource = DM1.dsPadron2
      LookupTable = DM1.cdsCarLab
      LookupField = 'COD_SIT'
      MaxLength = 4
      ParentFont = False
      TabOrder = 25
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdCARLAB2Change
    end
    object edtASOCODPAGO2: TwwDBEdit
      Left = 102
      Top = 330
      Width = 75
      Height = 22
      CharCase = ecUpperCase
      DataField = 'ASOCODPAGO'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 23
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnChange = edtASOCODPAGO2Change
    end
    object edtUPROID2: TwwDBEdit
      Left = 291
      Top = 426
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 33
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtUPAGOID2: TwwDBEdit
      Left = 355
      Top = 426
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 34
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCODMOD2: TwwDBEdit
      Left = 291
      Top = 474
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'CODMOD'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 35
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtNIVEDU_ID2: TwwDBEdit
      Left = 355
      Top = 474
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'NIVEDU_ID'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 36
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtEstado2: TwwDBEdit
      Left = 310
      Top = 18
      Width = 99
      Height = 22
      TabStop = False
      Color = 15269887
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 37
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dblcdCODEST2: TwwDBLookupComboDlg
      Left = 262
      Top = 18
      Width = 51
      Height = 22
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Estado'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'CODEST'
      DataSource = DM1.dsPadron2
      LookupTable = DM1.cdsEstCiv
      LookupField = 'CODEST'
      Color = 15269887
      MaxLength = 3
      ParentFont = False
      ReadOnly = True
      TabOrder = 38
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdCODEST2Change
    end
    object edtACTUALIZA: TwwDBEdit
      Left = 310
      Top = 42
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'ACTUALIZADES'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 39
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtASOID2: TwwDBEdit
      Left = 342
      Top = 138
      Width = 59
      Height = 21
      TabStop = False
      DataField = 'ASOID'
      DataSource = DM1.dsPadron2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 40
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
    object edtNUEVO: TwwDBEdit
      Left = 310
      Top = 90
      Width = 51
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'NUEVODES'
      DataSource = DM1.dsPadron2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 41
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object btnSalir: TBitBtn
    Left = 784
    Top = 520
    Width = 89
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 8
    OnClick = btnSalirClick
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      0400000000006801000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
      F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
      000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
      338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
      45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
      3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
      F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
      000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
      338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
      4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
      8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
      333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
      0000}
    NumGlyphs = 2
  end
  object btnModificar: TBitBtn
    Left = 208
    Top = 520
    Width = 89
    Height = 27
    Caption = '&Modificar'
    TabOrder = 2
    OnClick = btnModificarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
      555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
      05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
      FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
      FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
      FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
      05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
      555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
      9055575757575757775505050505055505557575757575557555}
    NumGlyphs = 2
  end
  object btnGrabar: TBitBtn
    Left = 304
    Top = 520
    Width = 89
    Height = 27
    Cursor = crHandPoint
    Hint = 'Grabar Cambios'
    Caption = '&Grabar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = btnGrabarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
    Spacing = 1
  end
  object btnAceptar: TBitBtn
    Left = 400
    Top = 520
    Width = 89
    Height = 27
    Caption = '&Aceptar'
    TabOrder = 4
    OnClick = btnAceptarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
      555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
      05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
      FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
      FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
      FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
      05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
      555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
      9055575757575757775505050505055505557575757575557555}
    NumGlyphs = 2
  end
  object btnEliminar: TBitBtn
    Left = 496
    Top = 520
    Width = 89
    Height = 27
    Caption = '&Eliminar'
    TabOrder = 5
    OnClick = btnEliminarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
      555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
      05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
      FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
      FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
      FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
      05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
      555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
      9055575757575757775505050505055505557575757575557555}
    NumGlyphs = 2
  end
  object btnReabrir: TBitBtn
    Left = 592
    Top = 520
    Width = 89
    Height = 27
    Caption = '&Reabrir'
    TabOrder = 6
    OnClick = btnReabrirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
      555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
      05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
      FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
      FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
      FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
      05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
      555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
      9055575757575757775505050505055505557575757575557555}
    NumGlyphs = 2
  end
  object btnRestaurar: TBitBtn
    Left = 688
    Top = 520
    Width = 89
    Height = 27
    Caption = 'Re&staurar'
    TabOrder = 7
    OnClick = btnRestaurarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
      555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
      05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
      FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
      FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
      FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
      05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
      555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
      9055575757575757775505050505055505557575757575557555}
    NumGlyphs = 2
  end
end
