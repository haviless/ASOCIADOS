object FMigraAso: TFMigraAso
  Left = 211
  Top = 222
  BorderStyle = bsDialog
  Caption = 'FMigraAso'
  ClientHeight = 235
  ClientWidth = 715
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GbAsociados: TGroupBox
    Left = 6
    Top = 1
    Width = 706
    Height = 182
    Color = 13165023
    Enabled = False
    ParentColor = False
    TabOrder = 0
    object Label18: TLabel
      Left = 23
      Top = 22
      Width = 91
      Height = 16
      Caption = 'C'#243'digo Modular:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 23
      Top = 54
      Width = 103
      Height = 16
      Caption = 'Apellido Paterno :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 23
      Top = 85
      Width = 108
      Height = 16
      Caption = 'Apellido Materno :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 23
      Top = 115
      Width = 64
      Height = 16
      Caption = 'Nombre(s):'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 431
      Top = 22
      Width = 185
      Height = 16
      Caption = 'DATOS DE LA LIQUIDACION'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 407
      Top = 90
      Width = 117
      Height = 16
      Caption = 'A'#241'o del Expediente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 407
      Top = 118
      Width = 137
      Height = 16
      Caption = 'N'#250'mero de Expediente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 407
      Top = 146
      Width = 137
      Height = 16
      Caption = 'N'#250'mero de Expediente:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 407
      Top = 57
      Width = 103
      Height = 16
      Caption = 'Tipo de beneficio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 23
      Top = 147
      Width = 46
      Height = 16
      Caption = 'D.N.I.:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel3: TPanel
      Left = 136
      Top = 18
      Width = 96
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 0
      object edtCodMod: TEdit
        Left = 2
        Top = 2
        Width = 92
        Height = 24
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Panel1: TPanel
        Left = 135
        Top = 0
        Width = 96
        Height = 27
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 1
        object Edit1: TEdit
          Left = 2
          Top = 2
          Width = 92
          Height = 24
          Color = 15269887
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object Panel2: TPanel
      Left = 136
      Top = 49
      Width = 203
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 1
      object edtApePat: TEdit
        Left = 2
        Top = 1
        Width = 200
        Height = 24
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 136
      Top = 80
      Width = 203
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 2
      object edtApeMat: TEdit
        Left = 2
        Top = 1
        Width = 200
        Height = 24
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 136
      Top = 111
      Width = 203
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 3
      object edtNomCli: TEdit
        Left = 2
        Top = 1
        Width = 200
        Height = 24
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 550
      Top = 84
      Width = 52
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 4
      object edtAno: TEdit
        Left = 2
        Top = 1
        Width = 49
        Height = 24
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Panel7: TPanel
        Left = 135
        Top = 0
        Width = 96
        Height = 27
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 1
        object Edit3: TEdit
          Left = 2
          Top = 2
          Width = 92
          Height = 24
          Color = 15269887
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object Panel8: TPanel
      Left = 550
      Top = 113
      Width = 96
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 5
      object edtNumExp: TEdit
        Left = 2
        Top = 2
        Width = 92
        Height = 24
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Panel9: TPanel
        Left = 135
        Top = 0
        Width = 96
        Height = 27
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 1
        object Edit5: TEdit
          Left = 2
          Top = 2
          Width = 92
          Height = 24
          Color = 15269887
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object Panel10: TPanel
      Left = 550
      Top = 142
      Width = 96
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 6
      object edtFecExp: TEdit
        Left = 2
        Top = 2
        Width = 92
        Height = 24
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Panel11: TPanel
        Left = 135
        Top = 0
        Width = 96
        Height = 27
        Caption = 'Panel1'
        Color = 13165023
        Enabled = False
        TabOrder = 1
        object Edit7: TEdit
          Left = 2
          Top = 2
          Width = 92
          Height = 24
          Color = 15269887
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object Panel12: TPanel
      Left = 521
      Top = 52
      Width = 158
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 7
      object edtTipBen: TEdit
        Left = 1
        Top = 1
        Width = 156
        Height = 24
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object Panel13: TPanel
      Left = 136
      Top = 143
      Width = 107
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 8
      object edtDNI: TEdit
        Left = 2
        Top = 1
        Width = 103
        Height = 24
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object BtnMigrar: TBitBtn
    Left = 494
    Top = 196
    Width = 92
    Height = 27
    Cursor = crHandPoint
    Caption = 'Migrar'
    TabOrder = 1
    Visible = False
    OnClick = BtnMigrarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
      33333333373F33333333333330B03333333333337F7F33333333333330F03333
      333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
      333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
      333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
      3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
      33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
      33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
      03333337777777F7F33333330000000003333337777777773333}
    NumGlyphs = 2
  end
  object BitSalir: TBitBtn
    Left = 597
    Top = 196
    Width = 91
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 2
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
end
