object fNueAsociado: TfNueAsociado
  Left = 226
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Crear Nuevos Asociados, Cesantes y Contratados'
  ClientHeight = 286
  ClientWidth = 749
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grpNueAso: TGroupBox
    Left = 4
    Top = 1
    Width = 744
    Height = 281
    TabOrder = 0
    object Label8: TLabel
      Left = 189
      Top = 161
      Width = 188
      Height = 16
      Caption = '( Para Descargo Planillas )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 8
      Top = 16
      Width = 257
      Height = 41
      Caption = 'Panel1'
      Color = clWindow
      Enabled = False
      TabOrder = 0
      object Label2: TLabel
        Left = 6
        Top = 10
        Width = 91
        Height = 16
        Caption = 'Codigo Derrama'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtAsoId: TwwDBEdit
        Left = 103
        Top = 7
        Width = 141
        Height = 28
        CharCase = ecUpperCase
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
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
    object Pan01: TPanel
      Left = 272
      Top = 10
      Width = 464
      Height = 47
      Caption = 'Pan01'
      Color = 13165023
      TabOrder = 1
      object Label3: TLabel
        Left = 9
        Top = 1
        Width = 84
        Height = 17
        Caption = 'Procesado En : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcunipro: TwwDBLookupComboDlg
        Left = 11
        Top = 18
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsQry20
        LookupField = 'UPROID'
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcuniproChange
      end
      object Panel4: TPanel
        Left = 61
        Top = 16
        Width = 394
        Height = 23
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 1
        object medesunipro: TMaskEdit
          Left = 1
          Top = 1
          Width = 391
          Height = 21
          TabOrder = 0
        end
      end
    end
    object Pan02: TPanel
      Left = 7
      Top = 62
      Width = 729
      Height = 47
      Color = 13165023
      TabOrder = 2
      object Label4: TLabel
        Left = 13
        Top = 2
        Width = 84
        Height = 17
        Caption = 'Unidad De Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 348
        Top = 2
        Width = 60
        Height = 17
        Caption = 'Use / Ugel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dblcunipag: TwwDBLookupComboDlg
        Left = 12
        Top = 19
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsQry21
        LookupField = 'UPAGOID'
        Enabled = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcunipagChange
      end
      object Panel2: TPanel
        Left = 62
        Top = 18
        Width = 265
        Height = 23
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 1
        object medesunipag: TMaskEdit
          Left = 1
          Top = 1
          Width = 262
          Height = 21
          TabOrder = 0
        end
      end
      object dblcduniges: TwwDBLookupComboDlg
        Left = 347
        Top = 19
        Width = 49
        Height = 21
        CharCase = ecUpperCase
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsQry22
        LookupField = 'USEID'
        Enabled = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdunigesChange
      end
      object Panel3: TPanel
        Left = 397
        Top = 18
        Width = 322
        Height = 23
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 3
        object medesuniges: TMaskEdit
          Left = 1
          Top = 1
          Width = 319
          Height = 21
          TabOrder = 0
        end
      end
    end
    object Pan03: TPanel
      Left = 5
      Top = 183
      Width = 123
      Height = 47
      Color = 13165023
      TabOrder = 3
      object Label1: TLabel
        Left = 9
        Top = 3
        Width = 83
        Height = 17
        Caption = 'Codigo Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object EdtCodMod: TwwDBEdit
        Left = 6
        Top = 20
        Width = 110
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnExit = EdtCodModExit
      end
    end
    object Pan04: TPanel
      Left = 131
      Top = 183
      Width = 605
      Height = 48
      Color = 13165023
      TabOrder = 4
      object Label6: TLabel
        Left = 4
        Top = 3
        Width = 90
        Height = 17
        Caption = 'Apellido Paterno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 278
        Top = 3
        Width = 94
        Height = 17
        Caption = 'Apellido Materno'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object EdtApePat: TwwDBEdit
        Left = 4
        Top = 20
        Width = 271
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object EdtApeMat: TwwDBEdit
        Left = 278
        Top = 21
        Width = 321
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object BitGrabar: TBitBtn
      Left = 416
      Top = 244
      Width = 97
      Height = 27
      Cursor = crHandPoint
      Hint = 'Grabar'
      Caption = '&Grabar'
      TabOrder = 6
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
    object BitMasDat: TBitBtn
      Left = 519
      Top = 244
      Width = 97
      Height = 27
      Cursor = crHandPoint
      Hint = 'Datos Complementarios'
      Caption = '&Mas Datos'
      Enabled = False
      TabOrder = 7
      Visible = False
      OnClick = BitMasDatClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFD3D3D3
        8181818888888888888888888888888888888888888888888888888888888888
        889090907D7D7DFFFFFFFFFFFF0F0F0F7783836F77776F77776F77776F77776F
        77776F77777179796F77776F77777985851616163F3F3FFFFFFFFFFFFF687474
        991919A85F5FA65959A65959A65959BD7171BF73739F5151A15353A157579919
        19808B8B3D3D3DFFFFFFFFFFFF606868A86060CBD9D9C7CECEC7CECEDDE4E400
        0000000000262F2FFFFFFFFFFFFFA15858767E7E3D3D3DFFFFFFFFFFFF606868
        A85C5CCBD2D2C7C7C7C7C7C7D2D2D25F5F5F6969696B6B6BF1F1F1EDF3F3A458
        58767E7E3D3D3DFFFFFFFFFFFF626A6A934646AAB2B2A2A2A29A9A9A9A9A9AA8
        A8A8B4B4B4ACACAC969696989F9F9346467880803D3D3DFFFFFFFFFFFF606868
        B56A6A555D5D9A9A9AFFFFFFF4F4F4CECECE4040408A8A8AF5F5F5F4FAFAA65A
        5A767E7E3D3D3DFFFFFFFFFFFF626A6A9F5252343C3C383838202020A2A2A2C4
        C4C4CACACAC5C5C5BCBCBCC2C8C88F42427880803D3D3DFFFFFFFFFFFF606868
        B46868636B6B6B6B6B616161B9B9B9EBEBEBE5E5E5E5E5E5E5E5E5EDF3F3A458
        58767E7E3D3D3DFFFFFFFFFFFF606868B266665F67676767675D5D5DB7B7B7E7
        E7E7E1E1E1E1E1E1E1E1E1E9EFEFA65656767E7E3D3D3DFFFFFFFFFFFF606868
        B46C6C5767675F6767555D5DBBC3C3EEF5F5E9EFEFE9EFEFE9EFEFF7FEFE835C
        5C8084843D3D3DFFFFFFFFFFFF626E6E8D1919A46B6BA26565A4676783434396
        5757945555945555A255557F57570812123D3D3D424242FFFFFFFFFFFF5A6666
        E28C8CFB8787F88787F88787F98888F88787F88787FF8787876F6F8C9494FFFF
        FF5D6969545454FFFFFFFFFFFF5C7474C50000FF0000FF0000FF0000FF0000FF
        0000FF0000690000B5C7C7D3D6D64E2828630000707C7CFFFFFFFFFFFF5C6464
        BF8383B08383B08383B08383B08383B78A8A5D24245A72721F1F1F0000006F73
        736D7979060606FFFFFFFFFFFF79797981888881888881888881888881888881
        8888818888CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BitSalir: TBitBtn
      Left = 637
      Top = 244
      Width = 97
      Height = 27
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      TabOrder = 8
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
    object pan05: TPanel
      Left = 6
      Top = 235
      Width = 387
      Height = 37
      Color = 13165023
      TabOrder = 5
      object Label24: TLabel
        Left = 7
        Top = 12
        Width = 48
        Height = 17
        Caption = 'Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object EdtAsoNom: TwwDBEdit
        Left = 62
        Top = 8
        Width = 314
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object pnlFecha: TPanel
      Left = 412
      Top = 115
      Width = 323
      Height = 61
      Color = 13165023
      Enabled = False
      TabOrder = 9
      object lblFecUlt: TLabel
        Left = 6
        Top = 7
        Width = 145
        Height = 17
        Caption = 'Ultima Fecha Reasignaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblFecAct: TLabel
        Left = 6
        Top = 36
        Width = 150
        Height = 17
        Caption = 'Ultima Fecha Actualizaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object dtpFecha: TwwDBDateTimePicker
        Left = 164
        Top = 5
        Width = 153
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 0
      end
      object dtpFecAct: TwwDBDateTimePicker
        Left = 164
        Top = 34
        Width = 153
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 7
      Top = 113
      Width = 160
      Height = 38
      Color = 13165023
      TabOrder = 10
      object Label7: TLabel
        Left = 11
        Top = 11
        Width = 74
        Height = 17
        Caption = 'C'#243'digo Cargo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object mecodcargo: TMaskEdit
        Left = 91
        Top = 7
        Width = 57
        Height = 24
        EditMask = '999999;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 6
        ParentFont = False
        TabOrder = 0
      end
    end
  end
end
