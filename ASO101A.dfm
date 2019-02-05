object fGrabaDetalle: TfGrabaDetalle
  Left = 478
  Top = 234
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Graba Detalle'
  ClientHeight = 168
  ClientWidth = 347
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 347
    Height = 168
    Align = alClient
    TabOrder = 0
    DesignSize = (
      347
      168)
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 40
      Height = 13
      Caption = 'Nombre:'
    end
    object Label2: TLabel
      Left = 16
      Top = 96
      Width = 75
      Height = 13
      Caption = 'Tipo Resultado:'
    end
    object Label3: TLabel
      Left = 16
      Top = 64
      Width = 59
      Height = 13
      Caption = 'Descripcion:'
    end
    object eNombre: TEdit
      Left = 96
      Top = 24
      Width = 137
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object eDesc: TEdit
      Left = 96
      Top = 56
      Width = 161
      Height = 21
      TabOrder = 1
    end
    object bGrabar: TBitBtn
      Left = 176
      Top = 136
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Grabar'
      TabOrder = 2
      OnClick = bGrabarClick
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
    object dblResul: TwwDBLookupCombo
      Left = 96
      Top = 92
      Width = 49
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object bSalir: TBitBtn
      Left = 264
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Salir'
      TabOrder = 4
      OnClick = bSalirClick
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
end
