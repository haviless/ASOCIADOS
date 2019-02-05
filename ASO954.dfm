object fCtrlReg: TfCtrlReg
  Left = 232
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Control De Registro'
  ClientHeight = 446
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 4
    Top = 7
    Width = 672
    Height = 438
    Caption = 'Panel1'
    Color = 10207162
    TabOrder = 0
    object BitSalir: TBitBtn
      Left = 564
      Top = 405
      Width = 99
      Height = 28
      Cursor = crHandPoint
      Caption = 'Salir'
      TabOrder = 5
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
    object dtgAsoMan: TwwDBGrid
      Left = 8
      Top = 48
      Width = 658
      Height = 107
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOCODMOD'#9'12'#9'Codigo~Modular'
        'ASOAPENOM'#9'40'#9'Apellidos y Nombres'
        'USEID'#9'5'#9'Uses/Ugel.'
        'UPROID'#9'5'#9'Unidad~De Proceso.'
        'ASONCTA'#9'12'#9'Cuenta~De Ahorros'
        'SITCTA'#9'1'#9'Sit~Aso'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dtgAsoManRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsAso
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgAsoManDblClick
    end
    object Panel2: TPanel
      Left = 10
      Top = 8
      Width = 655
      Height = 35
      Color = 15269887
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 60
        Height = 13
        Caption = 'Buscar  :  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblFallecido: TLabel
        Left = 440
        Top = 8
        Width = 68
        Height = 13
        Caption = 'FALLECIDO'
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object EdtBuscar: TEdit
        Left = 70
        Top = 5
        Width = 363
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object BitMostrar: TBitBtn
        Left = 518
        Top = 2
        Width = 89
        Height = 28
        Hint = 'Salir'
        Caption = 'Mostar'
        TabOrder = 1
        OnClick = BitMostrarClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33033333333333333F7F3333333333333000333333333333F777333333333333
          000333333333333F777333333333333000333333333333F77733333333333300
          033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
          33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
          3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
          33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
          333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
          333333773FF77333333333370007333333333333777333333333}
        NumGlyphs = 2
      end
    end
    object BitGrabar: TBitBtn
      Left = 459
      Top = 405
      Width = 97
      Height = 28
      Cursor = crHandPoint
      Hint = 'Grabar'
      Caption = 'Grabar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
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
    object Panel3: TPanel
      Left = 8
      Top = 161
      Width = 660
      Height = 67
      Enabled = False
      TabOrder = 2
      object Label2: TLabel
        Left = 10
        Top = 3
        Width = 127
        Height = 16
        AutoSize = False
        Caption = 'Codigo Modular '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 10
        Top = 23
        Width = 120
        Height = 16
        AutoSize = False
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 139
        Top = 3
        Width = 15
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 139
        Top = 23
        Width = 15
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object lblCodMod: TLabel
        Left = 164
        Top = 5
        Width = 84
        Height = 19
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAsoApeNom: TLabel
        Left = 164
        Top = 24
        Width = 389
        Height = 19
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 270
        Top = 5
        Width = 107
        Height = 16
        AutoSize = False
        Caption = 'Tipo De Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 381
        Top = 3
        Width = 14
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object lblTipAso: TLabel
        Left = 408
        Top = 4
        Width = 209
        Height = 19
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 11
        Top = 45
        Width = 120
        Height = 16
        AutoSize = False
        Caption = 'D.N.I'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 139
        Top = 45
        Width = 15
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object lblDni: TLabel
        Left = 164
        Top = 45
        Width = 84
        Height = 19
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 270
        Top = 45
        Width = 120
        Height = 16
        AutoSize = False
        Caption = 'Cuenta De Ahorros '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 379
        Top = 45
        Width = 15
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object lblCtaAhorros: TLabel
        Left = 407
        Top = 44
        Width = 209
        Height = 19
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object Panel4: TPanel
      Left = 8
      Top = 345
      Width = 659
      Height = 54
      Caption = 'Panel4'
      TabOrder = 3
      object rdbActivo: TRadioButton
        Left = 8
        Top = 5
        Width = 90
        Height = 17
        Caption = 'Activo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object rdbInactivo: TRadioButton
        Left = 8
        Top = 29
        Width = 90
        Height = 17
        Caption = 'Inactivo'
        Checked = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
      object mObservacion: TMemo
        Left = 110
        Top = 3
        Width = 543
        Height = 46
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Lines.Strings = (
          '')
        ParentFont = False
        TabOrder = 2
      end
    end
    object dtgDetReg: TwwDBGrid
      Left = 7
      Top = 233
      Width = 658
      Height = 105
      DisableThemesInTitle = False
      Selected.Strings = (
        'ESTADO'#9'8'#9'Estado'
        'OBSERVACION'#9'45'#9'Observaci'#243'n'
        'USUREG'#9'13'#9'Registado Por'
        'FREG'#9'20'#9'Fecha y Hora'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsAsociados
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 6
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDrawDataCell = dtgDetRegDrawDataCell
      OnDblClick = dtgDetRegDblClick
    end
  end
end
