object fInfDirecc: TfInfDirecc
  Left = 445
  Top = 218
  BorderStyle = bsDialog
  Caption = 'Direcciones'
  ClientHeight = 223
  ClientWidth = 792
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grpDetDir: TGroupBox
    Left = 3
    Top = -2
    Width = 787
    Height = 223
    TabOrder = 0
    object Label5: TLabel
      Left = 7
      Top = 8
      Width = 77
      Height = 17
      Caption = 'Departamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 228
      Top = 9
      Width = 50
      Height = 17
      Caption = 'Provincia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 490
      Top = 9
      Width = 47
      Height = 17
      Caption = 'Distrito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 8
      Top = 54
      Width = 53
      Height = 17
      Caption = 'Direcci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 122
      Width = 80
      Height = 17
      Caption = 'Observaciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lkcDpto: TwwDBLookupCombo
      Left = 6
      Top = 26
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DPTOID'#9'2'#9'DPTOID'#9'F'
        'DPTODES'#9'30'#9'DPTODES'#9'F')
      LookupTable = DM1.cdsPadre
      LookupField = 'DPTOID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcDptoChange
    end
    object Panel1: TPanel
      Left = 49
      Top = 25
      Width = 175
      Height = 28
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 1
      object edtDpto: TEdit
        Left = 2
        Top = 2
        Width = 170
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtDptoChange
      end
    end
    object lkcProv: TwwDBLookupCombo
      Left = 228
      Top = 26
      Width = 57
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PROVID'#9'5'#9'PROVID'#9'F'
        'PROVDES'#9'30'#9'PROVDES'#9'F')
      LookupTable = DM1.cdsHijo
      LookupField = 'PROVID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcProvChange
    end
    object Panel2: TPanel
      Left = 284
      Top = 25
      Width = 203
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 3
      object edtProv: TEdit
        Left = 1
        Top = 1
        Width = 199
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edtProvChange
      end
    end
    object lkcDist: TwwDBLookupCombo
      Left = 490
      Top = 26
      Width = 72
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ZIPID'#9'6'#9'ZIPID'#9'F'
        'ZIPDES'#9'35'#9'ZIPDES'#9'F')
      LookupTable = DM1.cdsSAso
      LookupField = 'ZIPID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcDistChange
    end
    object Panel3: TPanel
      Left = 562
      Top = 25
      Width = 219
      Height = 27
      Caption = 'Panel1'
      Color = 13165023
      Enabled = False
      TabOrder = 5
      object edtDist: TEdit
        Left = 2
        Top = 1
        Width = 215
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object mDireccion: TMemo
      Left = 7
      Top = 70
      Width = 771
      Height = 45
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 150
      ParentFont = False
      TabOrder = 6
    end
    object chkActivo: TCheckBox
      Left = 440
      Top = 197
      Width = 101
      Height = 17
      Caption = 'Validado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
    end
    object BitGrabar: TBitBtn
      Left = 549
      Top = 193
      Width = 100
      Height = 25
      Caption = '&Grabar'
      TabOrder = 9
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
    object mObsDir: TMemo
      Left = 8
      Top = 140
      Width = 770
      Height = 43
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        '')
      MaxLength = 100
      ParentFont = False
      TabOrder = 7
    end
  end
  object BitSalir: TBitBtn
    Left = 658
    Top = 191
    Width = 100
    Height = 26
    Hint = 'Salir'
    Caption = '&Salir'
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
end
