object FOtorPre: TFOtorPre
  Left = 417
  Top = 111
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Otorgamiento De Creditos'
  ClientHeight = 524
  ClientWidth = 801
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grpDatos: TGroupBox
    Left = 1
    Top = -4
    Width = 797
    Height = 186
    Cursor = crHandPoint
    TabOrder = 0
    object TLabel
      Left = 158
      Top = 6
      Width = 119
      Height = 15
      Caption = 'Origen de Operaci'#243'nes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 668
      Top = 7
      Width = 102
      Height = 15
      Caption = 'Fecha de Operaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object bFoto: TBevel
      Left = 7
      Top = 9
      Width = 146
      Height = 123
    end
    object bFirma: TBevel
      Left = 7
      Top = 134
      Width = 146
      Height = 46
      Cursor = crHandPoint
    end
    object TLabel
      Left = 295
      Top = 48
      Width = 138
      Height = 15
      Caption = 'Apellidos y Nombres (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 157
      Top = 49
      Width = 80
      Height = 15
      Caption = 'Codigo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object ImagAso: TImage
      Left = 12
      Top = 14
      Width = 137
      Height = 117
      Cursor = crHandPoint
      Hint = 'Click Para Maximizar'
      ParentShowHint = False
      ShowHint = True
      Stretch = True
      OnClick = ImagAsoClick
    end
    object ImaFirma: TImage
      Left = 12
      Top = 137
      Width = 137
      Height = 41
      Cursor = crHandPoint
      Hint = 'Click Para Maximizar'
      ParentShowHint = False
      ShowHint = True
      Stretch = True
      OnClick = ImaFirmaClick
    end
    object lblPreferente: TLabel
      Left = 356
      Top = 24
      Width = 131
      Height = 23
      Caption = 'PREFERENTE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object lblMtoPre: TLabel
      Left = 496
      Top = 24
      Width = 91
      Height = 22
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object EdtCodMod: TEdit
      Left = 156
      Top = 66
      Width = 111
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnChange = EdtCodModChange
      OnExit = EdtCodModExit
      OnKeyPress = EdtCodModKeyPress
    end
    object BitBuscar: TButton
      Left = 267
      Top = 67
      Width = 22
      Height = 24
      Cursor = crHandPoint
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBuscarClick
    end
    object BitAsociado: TBitBtn
      Left = 687
      Top = 64
      Width = 93
      Height = 30
      Cursor = crHandPoint
      Caption = 'Asociado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitAsociadoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033BBBBBBBBBB
        BB33337777777777777F33BB00BBBBBBBB33337F77333333F37F33BB0BBBBBB0
        BB33337F73F33337FF7F33BBB0BBBB000B33337F37FF3377737F33BBB00BB00B
        BB33337F377F3773337F33BBBB0B00BBBB33337F337F7733337F33BBBB000BBB
        BB33337F33777F33337F33EEEE000EEEEE33337F3F777FFF337F33EE0E80000E
        EE33337F73F77773337F33EEE0800EEEEE33337F37377F33337F33EEEE000EEE
        EE33337F33777F33337F33EEEEE00EEEEE33337F33377FF3337F33EEEEEE00EE
        EE33337F333377F3337F33EEEEEE00EEEE33337F33337733337F33EEEEEEEEEE
        EE33337FFFFFFFFFFF7F33EEEEEEEEEEEE333377777777777773}
      NumGlyphs = 2
    end
    object Panel3: TPanel
      Left = 154
      Top = 97
      Width = 641
      Height = 86
      BevelInner = bvLowered
      Color = 13165023
      Enabled = False
      TabOrder = 3
      object TLabel
        Left = 10
        Top = 2
        Width = 94
        Height = 15
        Caption = 'Unidad de Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 220
        Top = 2
        Width = 78
        Height = 15
        Caption = 'Unidad de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 421
        Top = 2
        Width = 23
        Height = 15
        Caption = 'USE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 8
        Top = 42
        Width = 118
        Height = 15
        Caption = 'Situaci'#243'n del Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 297
        Top = 42
        Width = 32
        Height = 15
        Caption = 'D.N.I.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 417
        Top = 42
        Width = 79
        Height = 15
        Caption = 'Cuenta Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 148
        Top = 41
        Width = 94
        Height = 15
        Caption = 'Tipo De Beneficio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object EdtLugPro: TEdit
        Left = 10
        Top = 17
        Width = 38
        Height = 23
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edtUProceso: TEdit
        Left = 51
        Top = 17
        Width = 157
        Height = 23
        BevelInner = bvLowered
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object EdtUPago: TEdit
        Left = 218
        Top = 17
        Width = 33
        Height = 23
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object edtDesPago: TEdit
        Left = 253
        Top = 17
        Width = 149
        Height = 23
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
      end
      object EdtCodUse: TEdit
        Left = 418
        Top = 17
        Width = 33
        Height = 23
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
      object edtDesUse: TEdit
        Left = 456
        Top = 17
        Width = 182
        Height = 23
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
      end
      object EdtTipAso: TEdit
        Left = 9
        Top = 57
        Width = 33
        Height = 27
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object edtSituacion: TEdit
        Left = 44
        Top = 57
        Width = 101
        Height = 27
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object dbeDNI: TwwDBEdit
        Left = 295
        Top = 57
        Width = 101
        Height = 27
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeCtaAhorro: TwwDBEdit
        Left = 414
        Top = 57
        Width = 112
        Height = 27
        Color = clWhite
        DataSource = DM1.dsAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeSitCta: TwwDBEdit
        Left = 528
        Top = 56
        Width = 106
        Height = 27
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object edtLiquidado: TEdit
        Left = 149
        Top = 57
        Width = 141
        Height = 27
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
    end
    object GroupBox5: TGroupBox
      Left = 293
      Top = 64
      Width = 388
      Height = 30
      Enabled = False
      TabOrder = 4
      object dbeApeNom: TwwDBEdit
        Left = 3
        Top = 3
        Width = 383
        Height = 26
        AutoFillDate = False
        AutoSelect = False
        AutoSize = False
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel4: TPanel
      Left = 155
      Top = 20
      Width = 189
      Height = 26
      Caption = 'Panel4'
      Color = 13165023
      Enabled = False
      TabOrder = 5
      object edtOfDes: TEdit
        Left = 3
        Top = -1
        Width = 184
        Height = 27
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 663
      Top = 23
      Width = 120
      Height = 26
      Color = 13165023
      Enabled = False
      TabOrder = 6
      object dbdtpFechaSol: TwwDBDateTimePicker
        Left = 4
        Top = 1
        Width = 115
        Height = 25
        BorderStyle = bsNone
        CalendarAttributes.Alignment = wwdtaCenter
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -8
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        ShowButton = True
        TabOrder = 0
      end
    end
    object pnlCalificacion: TPanel
      Left = 605
      Top = 12
      Width = 41
      Height = 40
      Cursor = crHandPoint
      Color = clWindow
      TabOrder = 7
      Visible = False
      OnClick = pnlCalificacionClick
      object Img01: TImage
        Left = 3
        Top = 2
        Width = 34
        Height = 34
        Cursor = crHandPoint
        Picture.Data = {
          055449636F6E0000010002002020100000000000E80200002600000010101000
          00000000280100000E0300002800000020000000400000000100040000000000
          8002000000000000000000000000000000000000000000000000800000800000
          0080800080000000800080008080000080808000C0C0C0000000FF0000FF0000
          00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
          00000000000000000000BBBBBBBB000000000000000000000BBBBBBBBBBBBBB0
          0000000000000000BBBBBBBBBBBBBBBB00000000000000BBBBBBBBBBBBBBBBBB
          BB00000000000BBBBBBBBB0000BBBBBBBBB000000000BBBBBBBBB099990BBBBB
          BBBB00000000BBBBBBBB09999990BBBBBBBB0000000BBBBBBBB0900000090BBB
          BBBBB00000BBBBBBBB000BBBBBB000BBBBBBBB0000BBBBBBB00BBBBBBBBBB00B
          BBBBBB0000BBBBBBB0BBBBBBBBBBBB0BBBBBBB000BBBBBBB0BBBBBBBBBBBBBB0
          BBBBBBB00BBB0000BBBBBBBBBBBBBBBB0000BBB00BBBBBB0BBBBBBBBBBBBBBBB
          0BBBBBB00BBBBBBB0BBBBBBBBBBBBBB0BBBBBBB00BBBBBBB0BBBBBBBBBBBBBB0
          BBBBBBB00BBBBBBBBBB00BBBBBB00BBBBBBBBBB00BBBBBBBBB0000BBBB0000BB
          BBBBBBB00BBBBBBBBB0000BBBB0000BBBBBBBBB000BBBBBBBB0000BBBB0000BB
          BBBBBB0000BBBBBBBB0000BBBB0000BBBBBBBB0000BBBBBBBB0000BBBB0000BB
          BBBBBB00000BBBBBBBB00BBBBBB00BBBBBBBB0000000BBBBBBBBBBBBBBBBBBBB
          BBBB00000000BBBBBBBBBBBBBBBBBBBBBBBB000000000BBBBBBBBBBBBBBBBBBB
          BBB00000000000BBBBBBBBBBBBBBBBBBBB00000000000000BBBBBBBBBBBBBBBB
          00000000000000000BBBBBBBBBBBBBB000000000000000000000BBBBBBBB0000
          0000000000000000000000000000000000000000FFF00FFFFF8001FFFE00007F
          FC00003FF800001FF000000FE0000007C0000003C00000038000000180000001
          8000000100000000000000000000000000000000000000000000000000000000
          00000000800000018000000180000001C0000003C0000003E0000007F000000F
          F800001FFC00003FFE00007FFF8001FFFFF00FFF280000001000000020000000
          0100040000000000C00000000000000000000000000000000000000000000000
          00008000008000000080800080000000800080008080000080808000C0C0C000
          0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
          0000000000000BBBBBB00000000BBBB00BBBB00000BBBB0990BBBB0000BBB000
          000BBB000BBB00BBBB00BBB00B700BBBBBB007B00BB70BBBBBB07BB00BBB700B
          B007BBB00BBBB00BB00BBBB00BBBB00BB00BBBB000BBB00BB00BBB0000BBBBBB
          BBBBBB00000BBBBBBBBBB00000000BBBBBB000000000000000000000F81F0000
          E0070000C0030000800100008001000000000000000000000000000000000000
          00000000000000008001000080010000C0030000E0070000F81F0000}
        Visible = False
        OnClick = Img01Click
      end
      object Img02: TImage
        Left = 3
        Top = 2
        Width = 34
        Height = 34
        Cursor = crHandPoint
        Picture.Data = {
          055449636F6E0000010002002020100000000000E80200002600000010101000
          00000000280100000E0300002800000020000000400000000100040000000000
          8002000000000000000000000000000000000000000000000000800000800000
          0080800080000000800080008080000080808000C0C0C0000000FF0000FF0000
          00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
          00000000000000000000BBBBBBBB000000000000000000000BBBBBBBBBBBBBB0
          0000000000000000BBBBBBBBBBBBBBBB00000000000000BBBBBBBBBBBBBBBBBB
          BB00000000000BBBBBBBBBBBBBBBBBBBBBB000000000BBBBBBBBB0000000BBBB
          BBBB00000000BBBBBBB00BBBBBBB00BBBBBB0000000BBBBBBB00BBBBBBBBB00B
          BBBBB00000BBBBBBB00BBBBBBBBBBB00BBBBBB0000BBBBBBB0BBBBBBBBBBBBB0
          BBBBBB0000BBBBBB0BBBBBBBBBBBBBBB0BBBBB000BBBBBBB0BBBBBBBBBBBBBBB
          0BBBBBB00BBBBBBB0BBBBBBBBBBBBBBB0BBBBBB00BBBBBBBBBBBBBBBBBBBBBBB
          BBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBB
          BBBBBBB00BBBBBBBBBB00BBBBBB00BBBBBBBBBB00BBBBBBBBB0000BBBB0000BB
          BBBBBBB00BBBBBBBBB0000BBBB0000BBBBBBBBB000BBBBBBBB0000BBBB0000BB
          BBBBBB0000BBBBBBBB0000BBBB0000BBBBBBBB0000BBBBBBBB0000BBBB0000BB
          BBBBBB00000BBBBBBBB00BBBBBB00BBBBBBBB0000000BBBBBBBBBBBBBBBBBBBB
          BBBB00000000BBBBBBBBBBBBBBBBBBBBBBBB000000000BBBBBBBBBBBBBBBBBBB
          BBB00000000000BBBBBBBBBBBBBBBBBBBB00000000000000BBBBBBBBBBBBBBBB
          00000000000000000BBBBBBBBBBBBBB000000000000000000000BBBBBBBB0000
          0000000000000000000000000000000000000000FFF00FFFFF8001FFFE00007F
          FC00003FF800001FF000000FE0000007C0000003C00000038000000180000001
          8000000100000000000000000000000000000000000000000000000000000000
          00000000800000018000000180000001C0000003C0000003E0000007F000000F
          F800001FFC00003FFE00007FFF8001FFFFF00FFF280000001000000020000000
          0100040000000000C00000000000000000000000000000000000000000000000
          00008000008000000080800080000000800080008080000080808000C0C0C000
          0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
          0000000000000BBBBBB00000000BBBBBBBBBB00000BBB000003BBB0000BB00BB
          BB03BB000BBB0BBBBBB0BBB00BBB0BBBBBB0BBB00BBBBBBBBBBBBBB00BBBB00B
          B00BBBB00BBBB00BB00BBBB00BBBB00BB00BBBB000BBB00BB00BBB0000BBBBBB
          BBBBBB00000BBBBBBBBBB00000000BBBBBB000000000000000000000F81F0000
          E0070000C0030000840100008801000000000000000000000000000000000000
          00000000000000008001000080010000C0030000E0070000F81F0000}
        Visible = False
        OnClick = Img02Click
      end
      object Img03: TImage
        Left = 3
        Top = 2
        Width = 34
        Height = 34
        Cursor = crHandPoint
        Picture.Data = {
          055449636F6E0000010002002020100000000000E80200002600000010101000
          00000000280100000E0300002800000020000000400000000100040000000000
          8002000000000000000000000000000000000000000000000000800000800000
          0080800080000000800080008080000080808000C0C0C0000000FF0000FF0000
          00FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000000000000000
          00000000000000000000BBBBBBBB000000000000000000000BBBBBBBBBBBBBB0
          0000000000000000BBBBBBBBBBBBBBBB00000000000000BBBBBBBBBBBBBBBBBB
          BB00000000000BBBBBBBBBBBBBBBBBBBBBB000000000BBBBBBBBBBBBBBBBBBBB
          BBBB00000000BBBBBBBBBBBBBBBBBBBBBBBB0000000BBBBBBBB0000000000BBB
          BBBBB00000BBBBBBBBBBBBBBBBBBBBBBBBBBBB0000BBBBBBBBBBBBBBBBBBBBBB
          BBBBBB0000BBBBBBBBBBBBBBBBBBBBBBBBBBBB000BBBBBBBBBBBBBBBBBBBBBBB
          BBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBB
          BBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBB
          BBBBBBB00BBBBBBBBBB00BBBBBB00BBBBBBBBBB00BBBBBBBBB0000BBBB0000BB
          BBBBBBB00BBBBBBBBB0000BBBB0000BBBBBBBBB000BBBBBBBB0000BBBB0000BB
          BBBBBB0000BBBBBBBB0000BBBB0000BBBBBBBB0000BBBBBBBB0000BBBB0000BB
          BBBBBB00000BBBBBBBB00BBBBBB00BBBBBBBB0000000BBBBBBBBBBBBBBBBBBBB
          BBBB00000000BBBBBBBBBBBBBBBBBBBBBBBB000000000BBBBBBBBBBBBBBBBBBB
          BBB00000000000BBBBBBBBBBBBBBBBBBBB00000000000000BBBBBBBBBBBBBBBB
          00000000000000000BBBBBBBBBBBBBB000000000000000000000BBBBBBBB0000
          0000000000000000000000000000000000000000FFF00FFFFF8001FFFE00007F
          FC00003FF800001FF000000FE0000007C0000003C00000038000000180000001
          8000000100000000000000000000000000000000000000000000000000000000
          00000000800000018000000180000001C0000003C0000003E0000007F000000F
          F800001FFC00003FFE00007FFF8001FFFFF00FFF280000001000000020000000
          0100040000000000C00000000000000000000000000000000000000000000000
          00008000008000000080800080000000800080008080000080808000C0C0C000
          0000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000
          0000000000000BBBBBB00000000BBBBBBBBBB00000BBBBBBBBBBBB0000BBB000
          000BBB000BBBBBBBBBBBBBB00BBBBBBBBBBBBBB00BBBBBBBBBBBBBB00BBBB00B
          B00BBBB00BBBB00BB00BBBB00BBBB00BB00BBBB000BBB00BB00BBB0000BBBBBB
          BBBBBB00000BBBBBBBBBB00000000BBBBBB000000000000000000000F81F0000
          E0070000C0030000800100008001000000000000000000000000000000000000
          00000000000000008001000080010000C0030000E0070000F81F0000}
        Visible = False
        OnClick = Img03Click
      end
      object Img04: TImage
        Left = 3
        Top = 2
        Width = 34
        Height = 34
        Cursor = crHandPoint
        Picture.Data = {
          055449636F6E0000010001002020100000000000E80200001600000028000000
          2000000040000000010004000000000080020000000000000000000000000000
          00000000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF0000
          C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
          FFFFFF0000000000000000000000000000000000000000000000BBBBBBBB0000
          00000000000000000BBBBBBBBBBBBBB00000000000000000BBBBBBBBBBBBBBBB
          00000000000000BBBBBBBBBBBBBBBBBBBB00000000000BBBBBBBBBBBBBBBBBBB
          BBB000000000BBBB0BBBBBBBBBBBBBBB0BBB00000000BBBB0BBBBBBBBBBBBBBB
          0BBB0000000BBBBB0BBBBBBBBBBBBBBB0BBBB00000BBBBBB00BBBBBBBBBBBBB0
          0BBBBB0000BBBBBBB00BBBBBBBBBBB00BBBBBB0000BBBBBBBB00BBBBBBBBB00B
          BBBBBB000BBBBBBBBBB000BBBBB000BBBBBBBBB00BBBBBBBBBBBB0000000BBBB
          BBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBBBBBBBBBBBBBBB
          BBBBBBB00BBBBBBBBBBBBBBBBBBBBBBBBBBBBBB00BBBBBBBBBB00BBBBBB00BBB
          BBBBBBB00BBBBBBBBB0000BBBB0000BBBBBBBBB00BBBBBBBBB0000BBBB0000BB
          BBBBBBB000BBBBBBBB0000BBBB0000BBBBBBBB0000BBBBBBBB0000BBBB0000BB
          BBBBBB0000BBBBBBBB0000BBBB0000BBBBBBBB00000BBBBBBBB00BBBBBB00BBB
          BBBBB0000000BBBBBBBBBBBBBBBBBBBBBBBB00000000BBBBBBBBBBBBBBBBBBBB
          BBBB000000000BBBBBBBBBBBBBBBBBBBBBB00000000000BBBBBBBBBBBBBBBBBB
          BB00000000000000BBBBBBBBBBBBBBBB00000000000000000BBBBBBBBBBBBBB0
          00000000000000000000BBBBBBBB000000000000000000000000000000000000
          00000000FFF00FFFFF8001FFFE00007FFC00003FF800001FF000000FE0000007
          C0000003C0000003800000018000000180000001000000000000000000000000
          0000000000000000000000000000000000000000800000018000000180000001
          C0000003C0000003E0000007F000000FF800001FFC00003FFE00007FFF8001FF
          FFF00FFF}
        Visible = False
        OnClick = Img04Click
      end
    end
  end
  object grpPrest: TGroupBox
    Left = 1
    Top = 181
    Width = 799
    Height = 156
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 6
      Top = 7
      Width = 787
      Height = 145
      Cursor = crHandPoint
      ActivePage = TabSheet1
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Detalles De Prestamos'
        object dtgPrestamos: TwwDBGrid
          Left = 8
          Top = 5
          Width = 763
          Height = 111
          Cursor = crHandPoint
          DisableThemesInTitle = False
          Selected.Strings = (
            'NUMERO'#9'6'#9'N'#250'mero'
            'CREFOTORG'#9'9'#9'Fec.Prestamo'
            'TMONABR'#9'5'#9'Moneda'
            'CREMTOOTOR'#9'10'#9'Mon.Aprobado'
            'CRENUMCUO'#9'7'#9'N'#176' Cuotas'
            'CRESDOACT'#9'10'#9'Saldo'
            'TIPCREDES'#9'30'#9'Motivo'
            'CREESTADO'#9'20'#9'Estado'#9'F')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DM1.dsSolicitud
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyOptions = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDrawDataCell = dtgPrestamosDrawDataCell
          OnKeyPress = dtgPrestamosKeyPress
        end
      end
      object TabSheet5: TTabSheet
        Caption = 'Notas De Abono        '
        ImageIndex = 4
        object dtgNotaAbono: TwwDBGrid
          Left = 123
          Top = 6
          Width = 639
          Height = 107
          DisableThemesInTitle = False
          Selected.Strings = (
            'NUMPRE'#9'8'#9'N'#176'Credito  '#9#9
            'ANOPRE'#9'6'#9'A'#241'o Credito'#9'F'#9
            'TIPPRE'#9'6'#9'Tip.Credito'#9#9
            'CRECUOTA'#9'10'#9'N'#176'Cuota'#9#9
            'CREFVEN'#9'12'#9'Fec.Venct.'#9#9
            'ABONO'#9'12'#9'Nota De Abono'#9#9
            'CREESTADO'#9'25'#9'Estado'#9#9)
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          DataSource = DM1.dsAbonoCreditos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
          ParentFont = False
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          Visible = False
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Preferente            '
        ImageIndex = 2
        object grpSrb000: TGroupBox
          Left = 2
          Top = 0
          Width = 487
          Height = 65
          Enabled = False
          TabOrder = 0
          object LblUsuarios: TLabel
            Left = 8
            Top = 10
            Width = 62
            Height = 13
            Caption = 'Responsable'
          end
          object DBLUsuarios: TwwDBLookupCombo
            Left = 7
            Top = 25
            Width = 107
            Height = 24
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Courier New'
            Font.Style = []
            DropDownAlignment = taLeftJustify
            Selected.Strings = (
              'USERID'#9'10'#9'Usuarios'#9#9
              'USERNOM'#9'15'#9'Descripci'#243'n'#9#9)
            LookupTable = DM1.cdsRegCxP
            LookupField = 'USERID'
            Options = [loColLines, loRowLines]
            ParentFont = False
            TabOrder = 0
            AutoDropDown = False
            ShowButton = True
            PreciseEditRegion = False
            AllowClearKey = False
            OnChange = DBLUsuariosChange
          end
          object Panel6: TPanel
            Left = 117
            Top = 24
            Width = 314
            Height = 24
            Caption = 'Panel6'
            Enabled = False
            TabOrder = 1
            object EdtUsrRes: TwwDBEdit
              Left = 1
              Top = 2
              Width = 313
              Height = 21
              AutoFillDate = False
              AutoSelect = False
              AutoSize = False
              BorderStyle = bsNone
              CharCase = ecUpperCase
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -12
              Font.Name = 'Comic Sans MS'
              Font.Style = []
              Frame.Enabled = True
              Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              UnboundDataType = wwDefault
              WantReturns = False
              WordWrap = False
            end
          end
        end
        object BitPrint: TBitBtn
          Left = 376
          Top = 74
          Width = 90
          Height = 27
          Hint = 'Imprimir'
          Caption = 'Preferente'
          TabOrder = 1
          OnClick = BitPrintClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
      end
    end
  end
  object gpbOtorPre: TGroupBox
    Left = 1
    Top = 336
    Width = 798
    Height = 152
    Enabled = False
    TabOrder = 2
    object TLabel
      Left = 5
      Top = 57
      Width = 82
      Height = 15
      Caption = 'Fecha Ult. Tal'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 98
      Top = 57
      Width = 72
      Height = 15
      Caption = 'Mto Ult Talon.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 512
      Top = 58
      Width = 51
      Height = 15
      Caption = 'Cuota Ini.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 572
      Top = 58
      Width = 51
      Height = 15
      Caption = 'N'#176' Cuotas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 345
      Top = 58
      Width = 56
      Height = 15
      Caption = 'Mto Otorg.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 7
      Top = 109
      Width = 93
      Height = 15
      Caption = 'Forma Desembolso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 580
      Top = 110
      Width = 96
      Height = 15
      Caption = 'Tipo De Descuento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 199
      Top = 109
      Width = 116
      Height = 15
      Caption = 'Agencia a la cual girar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 3
      Top = 7
      Width = 81
      Height = 15
      Caption = 'Tipo De Credito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 342
      Top = 7
      Width = 38
      Height = 15
      Caption = 'Interes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 408
      Top = 7
      Width = 59
      Height = 15
      Caption = 'Gastos/Flat'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 490
      Top = 8
      Width = 46
      Height = 15
      Caption = 'Mto Min.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 647
      Top = 8
      Width = 49
      Height = 15
      Caption = 'Mto Max.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 572
      Top = 7
      Width = 45
      Height = 15
      Caption = 'Cuo Min.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 728
      Top = 8
      Width = 48
      Height = 15
      Caption = 'Cuo Max.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 187
      Top = 58
      Width = 52
      Height = 15
      Caption = 'Cap. Pago '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbseAnoTalon: TwwDBSpinEdit
      Left = 5
      Top = 75
      Width = 55
      Height = 26
      Increment = 1.000000000000000000
      MaxValue = 2050.000000000000000000
      MinValue = 2003.000000000000000000
      Value = 2003.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 4
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
    end
    object dbseMesTalon: TwwDBSpinEdit
      Left = 61
      Top = 75
      Width = 35
      Height = 26
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 2
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      UsePictureMask = False
    end
    object dbeUTalonPago: TwwDBEdit
      Left = 99
      Top = 76
      Width = 72
      Height = 27
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeUTalonPagoExit
      OnKeyPress = dbeUTalonPagoKeyPress
    end
    object dbeCuotaInicial: TwwDBEdit
      Left = 503
      Top = 76
      Width = 75
      Height = 27
      BorderStyle = bsNone
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeCuotaInicialExit
      OnKeyPress = dbeCuotaInicialKeyPress
    end
    object dbeMtoOto: TwwDBEdit
      Left = 330
      Top = 76
      Width = 84
      Height = 27
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeMtoOtoExit
      OnKeyPress = dbeMtoOtoKeyPress
    end
    object DBLkuCTipDes: TwwDBLookupCombo
      Left = 4
      Top = 124
      Width = 48
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TIPDESEID'#9'2'#9'Codigo'#9'F'
        'TIPDESEABR'#9'30'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTipDesem
      LookupField = 'TIPDESEID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 11
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLkuCTipDesChange
    end
    object DBLkCDAgencias: TwwDBLookupComboDlg
      Left = 195
      Top = 124
      Width = 166
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit, dgDblClickColSizing]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Agencias Bancarias'
      MaxWidth = 0
      MaxHeight = 209
      Selected.Strings = (
        'AGENBCODES'#9'25'#9'Agencia'#9'F'
        'DPTODES'#9'20'#9'Departamento'#9'F'
        'AGENBCOID'#9'8'#9'AGENBCOID'#9'F')
      LookupTable = DM1.cdsAgencias
      LookupField = 'AGENBCODES'
      Enabled = False
      ParentFont = False
      TabOrder = 12
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = DBLkCDAgenciasChange
    end
    object DBLCTipCob: TwwDBLookupCombo
      Left = 579
      Top = 124
      Width = 42
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'FORPAGOID'#9'2'#9'Codigo'#9'F'
        'FORPAGODES'#9'20'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTransCre
      LookupField = 'FORPAGOID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 13
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCTipCobChange
      OnExit = DBLCTipCobExit
    end
    object dblTipCre: TwwDBLookupCombo
      Left = 4
      Top = 24
      Width = 44
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TIPCREID'#9'2'#9'Codigo'#9'F'#9
        'TIPCREDES'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsTipCre
      LookupField = 'TIPCREID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblTipCreChange
    end
    object dbsNumCuotas: TwwDBSpinEdit
      Left = 582
      Top = 77
      Width = 37
      Height = 25
      Increment = 1.000000000000000000
      MaxValue = 12.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      LimitEditRect = True
      MaxLength = 2
      ParentFont = False
      TabOrder = 8
      UnboundDataType = wwDefault
      UsePictureMask = False
      OnExit = dbsNumCuotasExit
    end
    object GroupBox1: TGroupBox
      Left = 416
      Top = 51
      Width = 86
      Height = 54
      Enabled = False
      TabOrder = 6
      object TLabel
        Left = 4
        Top = 7
        Width = 77
        Height = 15
        Caption = 'Nota De Abono'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeNtaAbn: TwwDBEdit
        Left = 2
        Top = 25
        Width = 81
        Height = 27
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnExit = dbeNtaAbnExit
      end
    end
    object GroupBox2: TGroupBox
      Left = 625
      Top = 53
      Width = 82
      Height = 52
      Enabled = False
      TabOrder = 9
      object TLabel
        Left = 7
        Top = 6
        Width = 64
        Height = 15
        Caption = 'Monto Cuota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeCuotas: TwwDBEdit
        Left = 4
        Top = 23
        Width = 75
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnExit = dbeCuotasExit
      end
    end
    object GroupBox3: TGroupBox
      Left = 707
      Top = 53
      Width = 88
      Height = 52
      Enabled = False
      TabOrder = 10
      object TLabel
        Left = 14
        Top = 6
        Width = 59
        Height = 15
        Caption = 'Desembolso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeMtoDesem: TwwDBEdit
        Left = 3
        Top = 23
        Width = 82
        Height = 27
        BorderStyle = bsNone
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnExit = dbeMtoDesemExit
      end
    end
    object Panel1: TPanel
      Left = 49
      Top = 22
      Width = 284
      Height = 28
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 14
      object EdtDesCre: TEdit
        Left = 2
        Top = 2
        Width = 279
        Height = 24
        Color = 13165023
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnExit = EdtDesCreExit
      end
    end
    object Panel2: TPanel
      Left = 335
      Top = 23
      Width = 458
      Height = 29
      Color = 13165023
      Enabled = False
      TabOrder = 15
      object EdtInteres: TwwDBEdit
        Left = 6
        Top = 7
        Width = 60
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        EditAlignment = eaRightAlignEditing
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object edtFlat: TwwDBEdit
        Left = 75
        Top = 7
        Width = 60
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        EditAlignment = eaRightAlignEditing
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object EdtMonMin: TwwDBEdit
        Left = 148
        Top = 7
        Width = 74
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        EditAlignment = eaRightAlignEditing
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object EdtCuoMin: TwwDBEdit
        Left = 234
        Top = 7
        Width = 56
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        EditAlignment = eaRightAlignEditing
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object EdtMonMax: TwwDBEdit
        Left = 301
        Top = 7
        Width = 76
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        EditAlignment = eaRightAlignEditing
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object EdtCuoMax: TwwDBEdit
        Left = 396
        Top = 7
        Width = 50
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        EditAlignment = eaRightAlignEditing
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
    end
    object GroupBox4: TGroupBox
      Left = 251
      Top = 52
      Width = 79
      Height = 52
      Enabled = False
      TabOrder = 16
      object TLabel
        Left = 8
        Top = 6
        Width = 58
        Height = 15
        Caption = 'Desct.Disp.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dbeMonDisp: TwwDBEdit
        Left = 3
        Top = 23
        Width = 73
        Height = 27
        BorderStyle = bsNone
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
        OnExit = dbeCapPagoRealExit
        OnKeyPress = dbeCapPagoRealKeyPress
      end
    end
    object dbeCapPagoReal: TwwDBEdit
      Left = 177
      Top = 76
      Width = 72
      Height = 27
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeCapPagoRealExit
      OnKeyPress = dbeCapPagoRealKeyPress
    end
    object Panel7: TPanel
      Left = 52
      Top = 124
      Width = 141
      Height = 24
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 17
      object EdtTipDes: TEdit
        Left = -1
        Top = -1
        Width = 139
        Height = 24
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel8: TPanel
      Left = 621
      Top = 125
      Width = 175
      Height = 23
      Caption = 'Panel8'
      Enabled = False
      TabOrder = 18
      object EdtTipCob: TEdit
        Left = 1
        Top = -1
        Width = 173
        Height = 24
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel9: TPanel
      Left = 360
      Top = 124
      Width = 216
      Height = 23
      Enabled = False
      TabOrder = 19
      object EdtCodAgen: TEdit
        Left = 2
        Top = -1
        Width = 91
        Height = 24
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object EdtDepGir: TEdit
        Left = 96
        Top = -1
        Width = 121
        Height = 24
        Color = 13165023
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object z2bbtnSalir: TfcShapeBtn
    Left = 717
    Top = 489
    Width = 31
    Height = 31
    Cursor = crHandPoint
    Hint = 'Salir'
    Color = 10207162
    DitherColor = clWhite
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
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 3
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnSalirClick
  end
  object z2bbtnImprime: TfcShapeBtn
    Left = 643
    Top = 490
    Width = 32
    Height = 31
    Cursor = crHandPoint
    Hint = '[F8] - Imprimir  '
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 4
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnImprimeClick
  end
  object Z2sbtnParametros: TfcShapeBtn
    Left = 77
    Top = 489
    Width = 32
    Height = 32
    Cursor = crHandPoint
    Hint = 'Parametros Del Credito'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
      1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
      1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
      193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
      11155557F755F777777555000755033305555577755F75F77F55555555503335
      0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
      05555757F75F75557F5505000333555505557F777FF755557F55000000355557
      07557777777F55557F5555000005555707555577777FF5557F55553000075557
      0755557F7777FFF5755555335000005555555577577777555555}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 5
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
  end
  object z2bbtnCrono: TfcShapeBtn
    Left = 123
    Top = 490
    Width = 32
    Height = 31
    Cursor = crHandPoint
    Hint = 'Genera Cronograma'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      33333FFFFFFFFFFFFFFF000000000000000077777777777777770FF7FF7FF7FF
      7FF07FF7FF7FF7F37F3709F79F79F7FF7FF077F77F77F7FF7FF7077777777777
      777077777777777777770FF7FF7FF7FF7FF07FF7FF7FF7FF7FF709F79F79F79F
      79F077F77F77F77F77F7077777777777777077777777777777770FF7FF7FF7FF
      7FF07FF7FF7FF7FF7FF709F79F79F79F79F077F77F77F77F77F7077777777777
      777077777777777777770FFFFF7FF7FF7FF07F33337FF7FF7FF70FFFFF79F79F
      79F07FFFFF77F77F77F700000000000000007777777777777777CCCCCC8888CC
      CCCC777777FFFF777777CCCCCCCCCCCCCCCC7777777777777777}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 6
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnCronoClick
  end
  object z2bbtnNota: TfcShapeBtn
    Left = 168
    Top = 490
    Width = 31
    Height = 31
    Cursor = crHandPoint
    Hint = 'Cobrar Nota de Abono'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5000555555555555577755555555555550B0555555555555F7F7555555555550
      00B05555555555577757555555555550B3B05555555555F7F557555555555000
      3B0555555555577755755555555500B3B0555555555577555755555555550B3B
      055555FFFF5F7F5575555700050003B05555577775777557555570BBB00B3B05
      555577555775557555550BBBBBB3B05555557F555555575555550BBBBBBB0555
      55557F55FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055
      555575F7755557F5555550BB33BBB0555555575F555557F555555507BBBB0755
      55555575FFFF7755555555570000755555555557777775555555}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 7
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnNotaClick
  end
  object fcSpeExt: TfcShapeBtn
    Left = 218
    Top = 490
    Width = 31
    Height = 31
    Cursor = crHandPoint
    Hint = 'Extornar Prestamo'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
      000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
      99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
      0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
      FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
      0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
      000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
      00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
      00FF3777773333F77733333333333000033F3333333337777333}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 8
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = fcSpeExtClick
  end
  object z2bbtnNuevo: TfcShapeBtn
    Left = 302
    Top = 490
    Width = 31
    Height = 31
    Cursor = crHandPoint
    Hint = 'Nuevo Credito'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
      333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
      0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
      07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
      0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
      33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
      B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
      3BB33773333773333773B333333B3333333B7333333733333337}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 9
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnNuevoClick
  end
  object z2bbtnAcepta: TfcShapeBtn
    Left = 372
    Top = 490
    Width = 30
    Height = 31
    Cursor = crHandPoint
    Hint = 'Grabar Nuevo Prestamo'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
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
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeColors.BtnFocus = clNavy
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 10
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnAceptaClick
  end
  object z2bbtnModifica: TfcShapeBtn
    Left = 412
    Top = 490
    Width = 30
    Height = 31
    Cursor = crHandPoint
    Hint = 'Modifica Numero De Cuotas '
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeColors.BtnFocus = clNavy
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 11
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnModificaClick
  end
  object dbsModCuo: TwwDBSpinEdit
    Left = 452
    Top = 494
    Width = 37
    Height = 25
    Increment = 1.000000000000000000
    MaxValue = 12.000000000000000000
    MinValue = 1.000000000000000000
    Value = 1.000000000000000000
    AutoFillDate = False
    AutoSelect = False
    AutoSize = False
    BorderStyle = bsNone
    Color = 13165023
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Frame.Enabled = True
    Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
    LimitEditRect = True
    MaxLength = 2
    ParentFont = False
    TabOrder = 12
    UnboundDataType = wwDefault
    UsePictureMask = False
    Visible = False
  end
  object z2bbtnCancelar: TfcShapeBtn
    Left = 507
    Top = 490
    Width = 31
    Height = 31
    Cursor = crHandPoint
    Hint = 'Cancelar'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      DE010000424DDE01000000000000760000002800000024000000120000000100
      04000000000068010000CE0E0000D80E00001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333333333000033911833333333333333333F333333333333
      0000339111833333911333333388F333333F3333000033911118333911118333
      38F38F333F88F33300003339111183911111833338F338F3F8338F3300003333
      911118111118333338F3338F833338F3000033333911111111833333338F3338
      3333F8330000333333911111183333333338F333333F83330000333333311111
      8333333333338F3333383333000033333339111183333333333338F333833333
      00003333339111118333333333333833338F3333000033333911181118333333
      33338333338F333300003333911183911183333333383338F338F33300003339
      1118333911183333338F33838F338F33000033911183333391118333338FF833
      38F338F300003391183333333911133333388333338FFF830000333913333333
      3391833333333333333888330000333333333333333333333333333333333333
      0000}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 13
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnCancelarClick
  end
  object z2bbtnAnula: TfcShapeBtn
    Left = 555
    Top = 490
    Width = 32
    Height = 31
    Cursor = crHandPoint
    Hint = 'Anular'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
      3333333777333777FF3333993333339993333377FF3333377FF3399993333339
      993337777FF3333377F3393999333333993337F777FF333337FF993399933333
      399377F3777FF333377F993339993333399377F33777FF33377F993333999333
      399377F333777FF3377F993333399933399377F3333777FF377F993333339993
      399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
      99333773FF3333777733339993333339933333773FFFFFF77333333999999999
      3333333777333777333333333999993333333333377777333333}
    NumGlyphs = 2
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 14
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = z2bbtnAnulaClick
  end
  object BitMstApo: TfcShapeBtn
    Left = 258
    Top = 491
    Width = 31
    Height = 31
    Cursor = crHandPoint
    Hint = 'Mostrar Aportes'
    Color = 10207162
    DitherColor = clWhite
    Enabled = False
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FEFEFE3229293E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E
      2E3E2E2E3A29296F6F6FFFFFFFF7F7F7372F2F3B848497FFFF8FFFFF8FFFFF8F
      FFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF97FFFF3B2A2AFEFEFE2F2F2F
      FFFFFF2668688FFFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FF
      FF87FFFF8FFFFF3F2F2F2A2222928A8A7F6F6F2F70708FFFFF8FFFFF87FFFF87
      FFFF87FFFF8FFFFF87FFFF8FFFFF87FFFF8FFFFF8FFFFF3F2F2F3F878797E1E1
      8FD3D397D3D38FFFFF2FB5B597FFFF8FB5B58FFFFF2FB5B597FFFF37676797C4
      C42F5F5F9FD3D33F3737488F8F481D1D3F87873F14149FD3D34878783F70703F
      70709FFFFF3768689FFFFF000B0B9FFFFF48D3D337D3D3483737508787007878
      50D3D300707048CBCB00686850D3D300828248E1E13700009FD3D3000B0BA6D3
      D3000000A6DADA3F37373F78789FFFFF8FFFFF97FFFF8FFFFF97FFFF99FFFF2A
      06064A282897FFFF87FFFF97FFFF87FFFF97FFFF8FFFFF3F2F2F3F78788FFFFF
      87FFFF87FFFF8FFFFF8FFFFF9BFFFF827262000000A6FFFF8FFFFF87FFFF87FF
      FF87FFFF8FFFFF3F2F2F3F78788FFFFF87FFFF8FFFFF3FDAD33F1D0000007300
      008A00009A00001448877397FFFF87FFFF87FFFF8FFFFF3F2F2F3F78788FFFFF
      87FFFF97FFFF000000A6A6FF0000FF00006F0000B800009100005B3F786C8FFF
      FF87FFFF8FFFFF3F2F2F3F78788FFFFF87FFFF97FFFF000000FFF8FF3F3F3300
      00E100004F00006700005F3F786C8FFFFF87FFFF8FFFFF3F2F2F48808097FFFF
      8FFFFF8FFFFFA6E1DA26776FB0A8890000E100008B605033488E839FFFFF8FFF
      FF8FFFFF97FFFF372626001D1D2F6F6F266767266767266F6F4A98942F263700
      001350486F004A2C488E8E2667672667672667671D6767878080FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF1D14005A5AFF0000FF0000FF0000B1807864FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1D300006F00
      007700007B3F3F48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    Layout = blGlyphRight
    Options = [boFocusable]
    ParentClipping = True
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    Shape = bsEllipse
    ShowHint = True
    TabOrder = 15
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = BitMstApoClick
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    Host = '10.10.10.41'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 646
    Top = 61
  end
  object ppR1: TppReport
    AutoStop = False
    DataPipeline = dbp1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'E:\NewSiscre\Reportes\ContCre.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    ShowPrintDialog = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 8
    Top = 491
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbp1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'numcred'
        DataPipeline = dbp1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 7232
        mmLeft = 162719
        mmTop = 12171
        mmWidth = 29104
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'crefotorg'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 166688
        mmTop = 25135
        mmWidth = 23019
        BandType = 0
      end
      object ppLblDesEfe00: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Muy Importante : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 20638
        mmWidth = 29633
        BandType = 0
      end
      object ppLblDesEfe02: TppLabel
        UserName = 'LblPeiodo2'
        AutoSize = False
        Caption = 'el mismo dia de su APROBACION.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 34925
        mmTop = 25929
        mmWidth = 49742
        BandType = 0
      end
      object ppLblDesEfe01: TppLabel
        UserName = 'LblDesEfe01'
        AutoSize = False
        Caption = 'Los DESEMBOLSOS EN EFECTIVO solo podran ser cobrados en CAJA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 17cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 34660
        mmTop = 21167
        mmWidth = 100542
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 158750
      mmPrintPosition = 0
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'Asoapenom'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 32808
        mmTop = 16933
        mmWidth = 139171
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'Asocodmod'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 24342
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'Asodni'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 97102
        mmTop = 23813
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'AsocodpagO'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 160338
        mmTop = 24342
        mmWidth = 32544
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'crenumcta'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 33073
        mmTop = 30956
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'USeid'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 97102
        mmTop = 31485
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'USenom'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 105569
        mmTop = 31485
        mmWidth = 51858
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'cremtootor'
        DataPipeline = dbp1
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 56621
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'cremtonabo'
        DataPipeline = dbp1
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 63765
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'cremtogir'
        DataPipeline = dbp1
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 71173
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText102'
        DataField = 'crecuota'
        DataPipeline = dbp1
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 96044
        mmTop = 64029
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'creinteres'
        DataPipeline = dbp1
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 95515
        mmTop = 71438
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'credflat'
        DataPipeline = dbp1
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 95515
        mmTop = 78581
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'crenumcuo'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 162190
        mmTop = 63765
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'TIPCREDES'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 96044
        mmTop = 56621
        mmWidth = 37042
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'TIPDESEABR'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 160602
        mmTop = 56621
        mmWidth = 33073
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'USUARIO'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 11906
        mmTop = 153988
        mmWidth = 30427
        BandType = 4
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 56621
        mmLeft = 2117
        mmTop = 92869
        mmWidth = 101336
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppMemo2: TppMemo
        UserName = 'Memo2'
        Caption = 'Memo2'
        CharWrap = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 43392
        mmLeft = 103717
        mmTop = 92604
        mmWidth = 93398
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppLbelFecIni: TppLabel
        UserName = 'LbelFecIni'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 71173
        mmWidth = 30956
        BandType = 4
      end
      object ppLbelFecFin: TppLabel
        UserName = 'LbelFecFin'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 78581
        mmWidth = 30956
        BandType = 4
      end
      object ppLblPeiodo: TppLabel
        UserName = 'LblPeiodo'
        AutoSize = False
        Caption = 'Con 3 Meses De Periodo Gracia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 79375
        mmTop = 8467
        mmWidth = 102659
        BandType = 4
      end
      object ppLblCuoIni: TppLabel
        UserName = 'LblPeiodo1'
        AutoSize = False
        Caption = 'Con 3 Meses De Periodo Gracia'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 124354
        mmTop = 45244
        mmWidth = 69321
        BandType = 4
      end
      object lblFrmDesc: TppLabel
        UserName = 'LbelFecFin1'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 103981
        mmTop = 137319
        mmWidth = 92869
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'CRESDOACT'
        DataPipeline = dbp1
        DisplayFormat = '###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 78317
        mmWidth = 29898
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 54504
      mmPrintPosition = 0
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'Asoapenom'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 11642
        mmTop = 12171
        mmWidth = 116417
        BandType = 8
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'Asodni'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 168011
        mmTop = 12171
        mmWidth = 29898
        BandType = 8
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'Asocodmod'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 30956
        mmTop = 19579
        mmWidth = 30427
        BandType = 8
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'Asodir'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 97367
        mmTop = 19579
        mmWidth = 99484
        BandType = 8
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'crenumcta'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 47890
        mmTop = 28575
        mmWidth = 25135
        BandType = 8
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        DataField = 'crefotorg'
        DataPipeline = dbp1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 4233
        mmLeft = 62706
        mmTop = 41540
        mmWidth = 22490
        BandType = 8
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = 'numcred'
        DataPipeline = dbp1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 18
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbp1'
        mmHeight = 7232
        mmLeft = 162454
        mmTop = 0
        mmWidth = 29898
        BandType = 8
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object dbp1: TppDBPipeline
    DataSource = DM1.dsListaCred
    UserName = 'dbp1'
    Left = 32
    Top = 493
  end
  object ppdEgreso: TppDBPipeline
    DataSource = DM1.dsAbonoCreditos
    AutoCreateFields = False
    UserName = 'dEgreso'
    Left = 536
    Top = 224
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppdEgreso
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = '8K'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 140000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 168
    Template.FileName = 'E:\NewSiscre\Reportes\RecEfe.rtm'
    Units = utMillimeters
    DeviceType = 'Printer'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 568
    Top = 224
    Version = '7.02'
    mmColumnWidth = 203200
    DataPipelineName = 'ppdEgreso'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 20373
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 6085
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Sistema de Cr'#232'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 10054
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 6085
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Sistema de Cr'#232'ditos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 10054
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = '(Copia)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8467
        mmWidth = 11853
        BandType = 0
      end
      object ppLbl01: TppLabel
        UserName = 'Lbl01'
        AutoSize = False
        Caption = '15:20'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 14288
        mmWidth = 56621
        BandType = 0
      end
      object ppLbl02: TppLabel
        UserName = 'Lbl02'
        AutoSize = False
        Caption = '15:20'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 112184
        mmTop = 14552
        mmWidth = 57415
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 78052
      mmPrintPosition = 0
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'pr'#233'stamo No '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 27252
        mmWidth = 16669
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 'aprobado con fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 43127
        mmTop = 27252
        mmWidth = 26670
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = '----------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 23918
        mmTop = 40217
        mmWidth = 43180
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'D.N.I./L.E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 54240
        mmWidth = 20373
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'Cod.Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 59267
        mmWidth = 20638
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'V.B. Responsable ...............................'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 43127
        mmTop = 67998
        mmWidth = 40746
        BandType = 4
      end
      object pplDocumento: TppLabel
        UserName = 'lDocumento'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 3704
        mmWidth = 94456
        BandType = 4
      end
      object pplMontosol: TppLabel
        UserName = 'lDocumento1'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 12435
        mmWidth = 94456
        BandType = 4
      end
      object pplCrefotorg: TppLabel
        UserName = 'lCrefotorg'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 70644
        mmTop = 27252
        mmWidth = 20108
        BandType = 4
      end
      object pplCredid: TppLabel
        UserName = 'lCredid'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 27252
        mmWidth = 23072
        BandType = 4
      end
      object pplAsoapenom: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 4233
        mmTop = 44715
        mmWidth = 85196
        BandType = 4
      end
      object pplAsodni: TppLabel
        UserName = 'lAsodni'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 24077
        mmTop = 54240
        mmWidth = 28840
        BandType = 4
      end
      object pplAsocodmod: TppLabel
        UserName = 'lAsocodmod'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 24077
        mmTop = 59267
        mmWidth = 29104
        BandType = 4
      end
      object pplUsuario: TppLabel
        UserName = 'lUsuario'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 73025
        mmWidth = 21960
        BandType = 4
      end
      object pplNumLet: TppLabel
        UserName = 'lNumLet'
        AutoSize = False
        Caption = 'lNumLet'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 16933
        mmWidth = 94192
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'pr'#233'stamo No'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 111654
        mmTop = 27252
        mmWidth = 16933
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'aprobado con fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 152400
        mmTop = 27252
        mmWidth = 26723
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = '----------------------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 135044
        mmTop = 40217
        mmWidth = 43180
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        AutoSize = False
        Caption = 'D.N.I./L.E.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 111390
        mmTop = 54240
        mmWidth = 20373
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Cod.Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 111390
        mmTop = 59267
        mmWidth = 20638
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'V.B. Responsable ...............................'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 149490
        mmTop = 67998
        mmWidth = 40481
        BandType = 4
      end
      object pplDocumento2: TppLabel
        UserName = 'lDocumento2'
        AutoSize = False
        Caption = 'lDocumento2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 111919
        mmTop = 3704
        mmWidth = 89959
        BandType = 4
      end
      object pplMontosol2: TppLabel
        UserName = 'lMontosol2'
        AutoSize = False
        Caption = 'lMontosol2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 111654
        mmTop = 12435
        mmWidth = 90752
        BandType = 4
      end
      object pplCrefotorg2: TppLabel
        UserName = 'lCrefotorg1'
        AutoSize = False
        Caption = 'lCrefotorg1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 27252
        mmWidth = 13970
        BandType = 4
      end
      object pplCredid2: TppLabel
        UserName = 'lCredid1'
        AutoSize = False
        Caption = 'lCredid1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 129382
        mmTop = 27252
        mmWidth = 22225
        BandType = 4
      end
      object pplAsoapenom2: TppLabel
        UserName = 'lAsoapenom2'
        AutoSize = False
        Caption = 'lAsoapenom2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 116417
        mmTop = 44450
        mmWidth = 86519
        BandType = 4
      end
      object pplAsodni2: TppLabel
        UserName = 'lAsodni1'
        AutoSize = False
        Caption = 'lAsodni1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 54240
        mmWidth = 24077
        BandType = 4
      end
      object pplAsocodmod2: TppLabel
        UserName = 'lAsocodmod1'
        AutoSize = False
        Caption = 'lAsocodmod1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 133350
        mmTop = 59267
        mmWidth = 24342
        BandType = 4
      end
      object pplUsuario2: TppLabel
        UserName = 'lUsuario1'
        AutoSize = False
        Caption = 'lUsuario1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 73025
        mmWidth = 22754
        BandType = 4
      end
      object pplNumLet2: TppLabel
        UserName = 'lNumLet1'
        AutoSize = False
        Caption = 'lNumLet'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 111654
        mmTop = 16933
        mmWidth = 90223
        BandType = 4
      end
      object pplblObs01: TppLabel
        UserName = 'lNumLet2'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 21960
        mmWidth = 94986
        BandType = 4
      end
      object pplblObs02: TppLabel
        UserName = 'lNumLet3'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 111654
        mmTop = 21960
        mmWidth = 91017
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object pplFecha: TppLabel
        UserName = 'lFecha'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 9260
        mmTop = 0
        mmWidth = 96309
        BandType = 8
      end
      object pplFecha2: TppLabel
        UserName = 'lFecha1'
        AutoSize = False
        Caption = 'lFecha1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 118269
        mmTop = 265
        mmWidth = 96309
        BandType = 8
      end
    end
  end
end
