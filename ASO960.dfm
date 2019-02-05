object fDesacValid: TfDesacValid
  Left = 488
  Top = 158
  BorderStyle = bsDialog
  Caption = 'Desactiva Validaciones de Asociado'
  ClientHeight = 454
  ClientWidth = 663
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grbAso: TGroupBox
    Left = 13
    Top = 130
    Width = 641
    Height = 137
    Caption = 'Asociado :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object dtgAsociado: TwwDBGrid
      Left = 11
      Top = 20
      Width = 620
      Height = 101
      DisableThemesInTitle = False
      ControlType.Strings = (
        'VALCODMODDNI;CheckBox;S;N'
        'ACTARCREN;CheckBox;S;N')
      Selected.Strings = (
        'ASOCODMOD'#9'10'#9'Cod.Modular'
        'ASODNI'#9'10'#9'D.N.I.'
        'ASOAPENOM'#9'40'#9'Apellidos y Nombres'#9'F'
        'VALCODMODDNI'#9'1'#9'CM-DNI'#9#9
        'ACTARCREN'#9'1'#9'RENIEC'#9#9
        'USEID'#9'3'#9'Use'
        'UPROID'#9'3'#9'Lug.Proceso')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dtgAsociadoRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsAso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      OnDblClick = dtgAsociadoDblClick
    end
  end
  object grbVal: TGroupBox
    Left = 12
    Top = 276
    Width = 643
    Height = 175
    Caption = 'Validaciones :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object dtgValidaciones: TwwDBGrid
      Left = 10
      Top = 20
      Width = 622
      Height = 121
      DisableThemesInTitle = False
      Selected.Strings = (
        'USUVAL'#9'11'#9'Usuario Val.'
        'FECVAL'#9'24'#9'Fecha Validaci'#243'n'
        'OFDESNOM'#9'15'#9'Oficina'#9'F'
        'CAMPO'#9'15'#9'Campo'#9#9
        'DATVAL'#9'50'#9'Validaci'#243'n'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object BitBtn2: TBitBtn
      Left = 386
      Top = 145
      Width = 247
      Height = 25
      Caption = 'Desactiva todos los campos valiados'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object GbAsociados: TGroupBox
    Left = 15
    Top = 11
    Width = 638
    Height = 112
    Caption = 'Busqueda :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object gbBuscar: TGroupBox
      Left = 11
      Top = 25
      Width = 137
      Height = 40
      TabOrder = 0
      object edtBuscar: TEdit
        Left = 10
        Top = 11
        Width = 114
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
    object rbtApeNom: TRadioButton
      Left = 237
      Top = 12
      Width = 135
      Height = 17
      Caption = 'Apellidos y Nombres(D.N.I.)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = True
      OnClick = rbtApeNomClick
    end
    object rbtDni: TRadioButton
      Left = 389
      Top = 12
      Width = 57
      Height = 17
      Caption = 'D.N.I.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = rbtDniClick
    end
    object rbtCuenta: TRadioButton
      Left = 451
      Top = 12
      Width = 89
      Height = 17
      Caption = 'Cuenta Ahorros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = rbtCuentaClick
    end
    object rbtCodMod: TRadioButton
      Left = 544
      Top = 13
      Width = 89
      Height = 17
      Caption = 'Codigo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = rbtCodModClick
    end
    object BitMostrar: TBitBtn
      Left = 454
      Top = 39
      Width = 94
      Height = 27
      Caption = 'Resultados'
      TabOrder = 1
      OnClick = BitMostrarClick
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
      Left = 552
      Top = 39
      Width = 80
      Height = 27
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
    object rgTipoMaestro: TRadioGroup
      Left = 12
      Top = 68
      Width = 185
      Height = 33
      Caption = 'Tipo de Maestro'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Maestro'
        'Nuevos')
      ParentFont = False
      TabOrder = 7
    end
  end
  object pnlDesactivaFlag: TPanel
    Left = 180
    Top = 141
    Width = 289
    Height = 97
    Color = 13165023
    TabOrder = 3
    Visible = False
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 287
      Height = 21
      Align = alTop
      Brush.Color = 12615680
    end
    object Label2: TLabel
      Left = 5
      Top = 3
      Width = 106
      Height = 16
      Caption = 'Desactiva Flag'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object BitBtn1: TBitBtn
      Left = 205
      Top = 71
      Width = 72
      Height = 21
      Caption = 'Actualiza'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object Button1: TButton
      Left = 269
      Top = 2
      Width = 17
      Height = 17
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox3: TGroupBox
      Left = 10
      Top = 24
      Width = 269
      Height = 45
      Caption = 'Desactivar Flag :'
      TabOrder = 2
      object chkDatActRen: TCheckBox
        Left = 143
        Top = 13
        Width = 121
        Height = 27
        Caption = 'Datos RENIEC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        WordWrap = True
        OnClick = chkDatActRenClick
      end
      object chkCodModDni: TCheckBox
        Left = 11
        Top = 19
        Width = 97
        Height = 16
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = chkCodModDniClick
      end
    end
  end
  object pnlDesactivaCamposValid: TPanel
    Left = 155
    Top = 262
    Width = 335
    Height = 107
    Color = 13165023
    TabOrder = 4
    Visible = False
    object Shape2: TShape
      Left = 1
      Top = 1
      Width = 333
      Height = 21
      Align = alTop
      Brush.Color = 12615680
    end
    object Label1: TLabel
      Left = 5
      Top = 3
      Width = 207
      Height = 16
      Caption = 'Desactiva Campos Validados'
      Color = clWindow
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Button2: TButton
      Left = 318
      Top = 4
      Width = 17
      Height = 17
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object BitBtn3: TBitBtn
      Left = 254
      Top = 81
      Width = 74
      Height = 21
      Caption = 'Actualiza'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn3Click
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
    object GroupBox4: TGroupBox
      Left = 8
      Top = 30
      Width = 321
      Height = 49
      Caption = 'Observaci'#243'n :'
      TabOrder = 2
      object edtObs: TEdit
        Left = 3
        Top = 17
        Width = 313
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
      end
    end
  end
end
