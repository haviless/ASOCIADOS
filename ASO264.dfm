object FvalregCADAPS: TFvalregCADAPS
  Left = 437
  Top = 251
  BorderStyle = bsDialog
  Caption = 'Recepci'#243'n del CADAPS'
  ClientHeight = 172
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = 0
    Width = 471
    Height = 173
    Caption = ' Actualizaci'#243'n de recepci'#243'n registro CADAPS '
    Color = 12114134
    ParentColor = False
    TabOrder = 0
    object Label6: TLabel
      Left = 12
      Top = 103
      Width = 107
      Height = 17
      Caption = 'Fecha de recepci'#243'n:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 12
      Top = 23
      Width = 119
      Height = 17
      Caption = 'Usuario que registra:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 12
      Top = 49
      Width = 73
      Height = 17
      Caption = 'Fecha actual:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 12
      Top = 76
      Width = 46
      Height = 17
      Caption = 'Oficina:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbdtpfecrecCADAPS: TwwDBDateTimePicker
      Left = 145
      Top = 100
      Width = 99
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 0
      UnboundDataType = wwDTEdtDate
      OnExit = dbdtpfecrecCADAPSExit
    end
    object BitGrabar: TBitBtn
      Left = 242
      Top = 133
      Width = 108
      Height = 27
      Cursor = crHandPoint
      Hint = 'Grabar Cambios'
      Caption = '&Validar y registrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitGrabarClick
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
    object Bitsalir: TBitBtn
      Left = 359
      Top = 133
      Width = 85
      Height = 27
      Caption = '&Salir'
      TabOrder = 2
      OnClick = BitsalirClick
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
    object Panel8: TPanel
      Left = 145
      Top = 19
      Width = 312
      Height = 25
      Color = clRed
      Enabled = False
      TabOrder = 3
      object lblusureg: TLabel
        Left = 2
        Top = 2
        Width = 308
        Height = 21
        AutoSize = False
        Color = clWhite
        ParentColor = False
      end
    end
    object Panel1: TPanel
      Left = 145
      Top = 45
      Width = 111
      Height = 25
      Color = clRed
      Enabled = False
      TabOrder = 4
      object lblfecact: TLabel
        Left = 2
        Top = 2
        Width = 107
        Height = 21
        AutoSize = False
        Color = clWhite
        ParentColor = False
      end
    end
    object Panel2: TPanel
      Left = 145
      Top = 72
      Width = 312
      Height = 25
      Color = clRed
      Enabled = False
      TabOrder = 5
      object lblofireg: TLabel
        Left = 2
        Top = 2
        Width = 308
        Height = 21
        AutoSize = False
        Color = clWhite
        ParentColor = False
      end
    end
  end
end
