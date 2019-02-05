object FConfirma: TFConfirma
  Left = 340
  Top = 176
  Width = 722
  Height = 522
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Confirmaci'#243'n de Autorizaci'#243'n'
  Color = 12114134
  Constraints.MaxHeight = 522
  Constraints.MaxWidth = 722
  Constraints.MinHeight = 522
  Constraints.MinWidth = 722
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object BitGrabar: TBitBtn
    Left = 403
    Top = 451
    Width = 110
    Height = 29
    Cursor = crHandPoint
    Hint = 'Confirmar Asociado'
    Caption = 'Validar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
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
  end
  object BitSalir: TBitBtn
    Left = 536
    Top = 451
    Width = 110
    Height = 29
    Cursor = crHandPoint
    Hint = 'Salir'
    Caption = '&Salir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitSalirClick
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
  object Panel1: TPanel
    Left = 12
    Top = 11
    Width = 684
    Height = 435
    BevelOuter = bvNone
    Color = 12114134
    Enabled = False
    TabOrder = 2
    object Label1: TLabel
      Left = 12
      Top = 8
      Width = 659
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = 'VERIFICACION DE UGEL'
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 120
      Width = 659
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = 'VERIFICACION DE PADRON'
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label3: TLabel
      Left = 12
      Top = 231
      Width = 659
      Height = 23
      Alignment = taCenter
      AutoSize = False
      Caption = 'OTRAS VERIFICACIONES'
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dbmObs1: TDBMemo
      Left = 12
      Top = 339
      Width = 660
      Height = 82
      DataField = 'obs_aut_cli'
      DataSource = DM1.dsAso
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 200
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object DBMemo3: TDBMemo
      Left = 12
      Top = 254
      Width = 660
      Height = 55
      DataField = 'obs_aut_cli_otr'
      DataSource = DM1.dsAso
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object DBMemo2: TDBMemo
      Left = 12
      Top = 143
      Width = 660
      Height = 63
      DataField = 'obs_aut_cli_pad'
      DataSource = DM1.dsAso
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 150
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 12
      Top = 30
      Width = 660
      Height = 63
      DataField = 'obs_aut_cli_uge'
      DataSource = DM1.dsAso
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 150
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
end
