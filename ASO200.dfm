object FSeleccionaAso: TFSeleccionaAso
  Left = 318
  Top = 233
  BorderStyle = bsDialog
  Caption = 'Seleccionar Asociado'
  ClientHeight = 206
  ClientWidth = 761
  Color = clBtnFace
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
  object GbAsociados: TGroupBox
    Left = 2
    Top = 0
    Width = 757
    Height = 204
    Caption = 'Buscar'
    TabOrder = 0
    object BitMostrar: TBitBtn
      Left = 490
      Top = 32
      Width = 92
      Height = 27
      Cursor = crHandPoint
      Caption = 'Resultados'
      TabOrder = 5
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
    object gbBuscar: TGroupBox
      Left = 10
      Top = 23
      Width = 137
      Height = 40
      TabOrder = 4
      object edtBuscar: TEdit
        Left = 10
        Top = 10
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
        OnKeyDown = edtBuscarKeyDown
      end
    end
    object dtgAsociado: TwwDBGrid
      Left = 5
      Top = 68
      Width = 747
      Height = 130
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOCODMOD'#9'10'#9'Cod.Modular'
        'ASOCODAUX'#9'6'#9'Orden'
        'ASOAPENOMDNI'#9'45'#9'Apellidos y Nombres(D.N.I.)'#9'F'
        'ASOTIPID'#9'3'#9'Tipo'
        'USEID'#9'3'#9'Use'
        'UPROID'#9'3'#9'Lug.Proceso'
        'ASODNI'#9'10'#9'D.N.I.'
        'ASONCTA'#9'10'#9'Cta.Ahorros')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
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
      TabOrder = 7
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDrawDataCell = dtgAsociadoDrawDataCell
      OnDblClick = dtgAsociadoDblClick
    end
    object BitSalir: TBitBtn
      Left = 603
      Top = 32
      Width = 91
      Height = 27
      Cursor = crHandPoint
      Caption = '&Salir'
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
    object rbtDni: TRadioButton
      Left = 459
      Top = 8
      Width = 57
      Height = 17
      Caption = 'D.N.I.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbtDniClick
    end
    object rbtCuenta: TRadioButton
      Left = 528
      Top = 8
      Width = 89
      Height = 17
      Caption = 'Cuenta Ahorros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbtCuentaClick
    end
    object rbtCodMod: TRadioButton
      Left = 624
      Top = 9
      Width = 89
      Height = 17
      Caption = 'Codigo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbtCodModClick
    end
    object rbtApeNom: TRadioButton
      Left = 307
      Top = 8
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
      TabOrder = 0
      TabStop = True
      OnClick = rbtApeNomClick
    end
  end
end
