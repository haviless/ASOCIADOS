object FActNuevo: TFActNuevo
  Left = 259
  Top = 213
  Width = 625
  Height = 290
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Nuevo Asociado'
  Color = 12114134
  Constraints.MaxHeight = 290
  Constraints.MaxWidth = 625
  Constraints.MinHeight = 290
  Constraints.MinWidth = 625
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object gbIdentidadAso: TGroupBox
    Left = 9
    Top = 6
    Width = 598
    Height = 247
    Caption = 'Datos del Asociado ( Igual a D.N.I. )'
    Color = 12114134
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label6: TLabel
      Left = 38
      Top = 98
      Width = 128
      Height = 17
      Caption = 'Apellido Paterno (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 188
      Top = 98
      Width = 132
      Height = 17
      Caption = 'Apellido Materno (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 344
      Top = 97
      Width = 86
      Height = 17
      Caption = 'Nombres (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 42
      Top = 33
      Width = 97
      Height = 19
      Caption = 'Doc. Identidad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label26: TLabel
      Left = 40
      Top = 160
      Width = 84
      Height = 17
      Caption = 'Fec.Nacimiento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 191
      Top = 160
      Width = 27
      Height = 17
      Caption = 'Sexo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Panel14: TPanel
      Left = 226
      Top = 179
      Width = 81
      Height = 25
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 3
      object dbeSexo: TwwDBEdit
        Left = 2
        Top = 2
        Width = 76
        Height = 21
        CharCase = ecUpperCase
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object pnlRENIEC1: TPanel
      Left = 37
      Top = 119
      Width = 526
      Height = 25
      Color = clRed
      TabOrder = 0
      object EdtApePatDni: TwwDBEdit
        Left = 2
        Top = 2
        Width = 147
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ASOAPEPATDNI'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object EdtApeMatDni: TwwDBEdit
        Left = 150
        Top = 2
        Width = 156
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ASOAPEMATDNI'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object EdtAsoNomDni: TwwDBEdit
        Left = 307
        Top = 2
        Width = 217
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ASONOMDNI'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object pnlRENIEC2: TPanel
      Left = 37
      Top = 179
      Width = 91
      Height = 25
      Color = clRed
      TabOrder = 1
      object dbdtFecNac: TwwDBDateTimePicker
        Left = 2
        Top = 2
        Width = 87
        Height = 29
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'ASOFECNAC'
        DataSource = DM1.dsAso
        Date = 23146.000000000000000000
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 0
        DisplayFormat = 'dd/mm/yyyy'
      end
    end
    object pnlRENIEC3: TPanel
      Left = 180
      Top = 179
      Width = 44
      Height = 25
      Color = clRed
      TabOrder = 2
      object DbLlSexo: TwwDBLookupCombo
        Left = 2
        Top = 2
        Width = 40
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ID'#9'2'#9'Codigo'#9'F'
          'DESCRIP'#9'20'#9'Descripci'#243'n'#9'F')
        DataField = 'ASOSEXO'
        DataSource = DM1.dsAso
        LookupTable = DM1.cdsSexo
        LookupField = 'ID'
        Options = [loColLines, loRowLines, loTitles]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DbLlSexoChange
      end
    end
    object Panel1: TPanel
      Left = 38
      Top = 52
      Width = 124
      Height = 32
      Color = clRed
      Enabled = False
      TabOrder = 4
      object dbeLibDni: TwwDBEdit
        Left = 2
        Top = 2
        Width = 119
        Height = 28
        DataField = 'ASODNI'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object BitGrabar: TBitBtn
      Left = 432
      Top = 214
      Width = 70
      Height = 27
      Cursor = crHandPoint
      Hint = 'Grabar Cambios'
      Caption = '&Grabar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
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
      Left = 509
      Top = 214
      Width = 70
      Height = 27
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
end
