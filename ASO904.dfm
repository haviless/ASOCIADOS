object Frepautdesuniges: TFrepautdesuniges
  Left = 144
  Top = 187
  BorderStyle = bsDialog
  Caption = 'Autorizaci'#243'n de descuento seg'#250'n Unidad de proceso'
  ClientHeight = 411
  ClientWidth = 792
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbseleccion: TGroupBox
    Left = 4
    Top = 1
    Width = 600
    Height = 114
    Caption = ' Seleccione opci'#243'n '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 18
      Width = 59
      Height = 13
      Caption = 'Fecha inicial'
    end
    object Label2: TLabel
      Left = 8
      Top = 57
      Width = 52
      Height = 13
      Caption = 'Fecha final'
    end
    object Label3: TLabel
      Left = 102
      Top = 40
      Width = 90
      Height = 13
      Caption = 'Unidad de proceso'
    end
    object Label4: TLabel
      Left = 102
      Top = 65
      Width = 76
      Height = 13
      Caption = 'Unidad de pago'
    end
    object Label5: TLabel
      Left = 102
      Top = 92
      Width = 88
      Height = 13
      Caption = 'Unidad de Gesti'#243'n'
    end
    object Label6: TLabel
      Left = 102
      Top = 15
      Width = 67
      Height = 13
      Caption = 'Departamento'
    end
    object Label7: TLabel
      Left = 196
      Top = 40
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label8: TLabel
      Left = 196
      Top = 65
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label9: TLabel
      Left = 196
      Top = 90
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label10: TLabel
      Left = 196
      Top = 15
      Width = 3
      Height = 13
      Caption = ':'
    end
    object btnprocesar: TBitBtn
      Left = 514
      Top = 21
      Width = 80
      Height = 28
      Caption = 'Procesar'
      TabOrder = 6
      OnClick = btnprocesarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
    object dbdtpinicio: TwwDBDateTimePicker
      Left = 8
      Top = 34
      Width = 89
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
    object dbdtpfinal: TwwDBDateTimePicker
      Left = 8
      Top = 73
      Width = 89
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
      OnExit = dbdtpfinalExit
    end
    object pnluniprodes: TPanel
      Left = 258
      Top = 36
      Width = 250
      Height = 23
      Caption = 'pnluniprodes'
      Enabled = False
      TabOrder = 7
      object meunipro: TMaskEdit
        Left = 1
        Top = 1
        Width = 248
        Height = 21
        TabOrder = 0
      end
    end
    object pnlunipagdes: TPanel
      Left = 258
      Top = 61
      Width = 250
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 8
      object meunipag: TMaskEdit
        Left = 1
        Top = 1
        Width = 248
        Height = 21
        TabOrder = 0
      end
    end
    object pnlunigesdes: TPanel
      Left = 258
      Top = 87
      Width = 250
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 9
      object meuniges: TMaskEdit
        Left = 1
        Top = 1
        Width = 248
        Height = 21
        TabOrder = 0
      end
    end
    object dblcddptoid: TwwDBLookupComboDlg
      Left = 202
      Top = 11
      Width = 42
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      Enabled = False
      MaxLength = 2
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcddptoidChange
      OnExit = dblcddptoidExit
    end
    object pnldepdes: TPanel
      Left = 258
      Top = 11
      Width = 250
      Height = 23
      Enabled = False
      TabOrder = 10
      object medep: TMaskEdit
        Left = 1
        Top = 1
        Width = 248
        Height = 21
        TabOrder = 0
      end
    end
    object dblcdunipro: TwwDBLookupComboDlg
      Left = 202
      Top = 36
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      Enabled = False
      MaxLength = 3
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcduniproChange
      OnExit = dblcduniproExit
    end
    object dblcdunipag: TwwDBLookupComboDlg
      Left = 202
      Top = 61
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGONOM'
      Enabled = False
      MaxLength = 2
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdunipagChange
      OnExit = dblcdunipagExit
    end
    object dblcduniges: TwwDBLookupComboDlg
      Left = 202
      Top = 87
      Width = 52
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUSE
      LookupField = 'USEID'
      Enabled = False
      MaxLength = 2
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdunigesChange
      OnExit = dblcdunigesExit
    end
  end
  object dbgprevio: TwwDBGrid
    Left = 3
    Top = 120
    Width = 782
    Height = 253
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object btnAExcel: TBitBtn
    Left = 534
    Top = 379
    Width = 80
    Height = 28
    Caption = 'A Excel'
    TabOrder = 2
    OnClick = btnAExcelClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
      333333333333337FF3333333333333903333333333333377FF33333333333399
      03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
      99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
      99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
      03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
      33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
      33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object btnImprimir: TBitBtn
    Left = 620
    Top = 379
    Width = 80
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 3
    OnClick = btnImprimirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object btnSalir: TBitBtn
    Left = 705
    Top = 379
    Width = 80
    Height = 28
    Caption = 'Salir'
    TabOrder = 4
    OnClick = btnSalirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object dtgData: TDBGrid
    Left = 608
    Top = 8
    Width = 84
    Height = 29
    DataSource = DM1.dsReporte
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object ppbdereporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdereporte'
    Left = 616
    Top = 48
    object ppbdereporteppField1: TppField
      FieldAlias = 'ASOID'
      FieldName = 'ASOID'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppbdereporteppField2: TppField
      FieldAlias = 'ASOCODMOD'
      FieldName = 'ASOCODMOD'
      FieldLength = 10
      DisplayWidth = 10
      Position = 1
    end
    object ppbdereporteppField3: TppField
      FieldAlias = 'ASOCODAUX'
      FieldName = 'ASOCODAUX'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object ppbdereporteppField4: TppField
      FieldAlias = 'ASOCODPAGO'
      FieldName = 'ASOCODPAGO'
      FieldLength = 25
      DisplayWidth = 25
      Position = 3
    end
    object ppbdereporteppField5: TppField
      FieldAlias = 'ASOAPEPAT'
      FieldName = 'ASOAPEPAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 4
    end
    object ppbdereporteppField6: TppField
      FieldAlias = 'ASOAPEMAT'
      FieldName = 'ASOAPEMAT'
      FieldLength = 30
      DisplayWidth = 30
      Position = 5
    end
    object ppbdereporteppField7: TppField
      FieldAlias = 'ASONOMBRES'
      FieldName = 'ASONOMBRES'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object ppbdereporteppField8: TppField
      FieldAlias = 'ASOAPENOM'
      FieldName = 'ASOAPENOM'
      FieldLength = 90
      DisplayWidth = 90
      Position = 7
    end
    object ppbdereporteppField9: TppField
      FieldAlias = 'USEID'
      FieldName = 'USEID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 8
    end
    object ppbdereporteppField10: TppField
      FieldAlias = 'UPROID'
      FieldName = 'UPROID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 9
    end
    object ppbdereporteppField11: TppField
      FieldAlias = 'UPAGOID'
      FieldName = 'UPAGOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 10
    end
    object ppbdereporteppField12: TppField
      FieldAlias = 'ASORESNOM'
      FieldName = 'ASORESNOM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object ppbdereporteppField13: TppField
      FieldAlias = 'ASOFRESNOM'
      FieldName = 'ASOFRESNOM'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 12
    end
    object ppbdereporteppField14: TppField
      FieldAlias = 'RESID'
      FieldName = 'RESID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 13
    end
    object ppbdereporteppField15: TppField
      FieldAlias = 'REGPENID'
      FieldName = 'REGPENID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 14
    end
    object ppbdereporteppField16: TppField
      FieldAlias = 'ASOSITID'
      FieldName = 'ASOSITID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object ppbdereporteppField17: TppField
      FieldAlias = 'ASOFACT'
      FieldName = 'ASOFACT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 16
    end
    object ppbdereporteppField18: TppField
      FieldAlias = 'ASOTIPID'
      FieldName = 'ASOTIPID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 17
    end
    object ppbdereporteppField19: TppField
      FieldAlias = 'VIAID'
      FieldName = 'VIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 18
    end
    object ppbdereporteppField20: TppField
      FieldAlias = 'VIANOMBRE'
      FieldName = 'VIANOMBRE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 19
    end
    object ppbdereporteppField21: TppField
      FieldAlias = 'ASONUMDIR'
      FieldName = 'ASONUMDIR'
      FieldLength = 5
      DisplayWidth = 5
      Position = 20
    end
    object ppbdereporteppField22: TppField
      FieldAlias = 'ASOFDPTO'
      FieldName = 'ASOFDPTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object ppbdereporteppField23: TppField
      FieldAlias = 'ASODPTO'
      FieldName = 'ASODPTO'
      FieldLength = 5
      DisplayWidth = 5
      Position = 22
    end
    object ppbdereporteppField24: TppField
      FieldAlias = 'ZONAID'
      FieldName = 'ZONAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 23
    end
    object ppbdereporteppField25: TppField
      FieldAlias = 'ZONANOMB'
      FieldName = 'ZONANOMB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 24
    end
    object ppbdereporteppField26: TppField
      FieldAlias = 'UBIGEOID'
      FieldName = 'UBIGEOID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 25
    end
    object ppbdereporteppField27: TppField
      FieldAlias = 'DPTOID'
      FieldName = 'DPTOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 26
    end
    object ppbdereporteppField28: TppField
      FieldAlias = 'PAISID'
      FieldName = 'PAISID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 27
    end
    object ppbdereporteppField29: TppField
      FieldAlias = 'REFDOM'
      FieldName = 'REFDOM'
      FieldLength = 80
      DisplayWidth = 80
      Position = 28
    end
    object ppbdereporteppField30: TppField
      FieldAlias = 'ASOFECNAC'
      FieldName = 'ASOFECNAC'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 29
    end
    object ppbdereporteppField31: TppField
      FieldAlias = 'ASOTELF1'
      FieldName = 'ASOTELF1'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppbdereporteppField32: TppField
      FieldAlias = 'ASOTELF2'
      FieldName = 'ASOTELF2'
      FieldLength = 20
      DisplayWidth = 20
      Position = 31
    end
    object ppbdereporteppField33: TppField
      FieldAlias = 'TIPDOCCOD'
      FieldName = 'TIPDOCCOD'
      FieldLength = 2
      DisplayWidth = 2
      Position = 32
    end
    object ppbdereporteppField34: TppField
      FieldAlias = 'ASODOCNUM'
      FieldName = 'ASODOCNUM'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppbdereporteppField35: TppField
      FieldAlias = 'ASOLIBMIL'
      FieldName = 'ASOLIBMIL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 34
    end
    object ppbdereporteppField36: TppField
      FieldAlias = 'ASORUC'
      FieldName = 'ASORUC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 35
    end
    object ppbdereporteppField37: TppField
      FieldAlias = 'ESTCIVID'
      FieldName = 'ESTCIVID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 36
    end
    object ppbdereporteppField38: TppField
      FieldAlias = 'ASOSEXO'
      FieldName = 'ASOSEXO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 37
    end
    object ppbdereporteppField39: TppField
      FieldAlias = 'ASOEMAIL'
      FieldName = 'ASOEMAIL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 38
    end
    object ppbdereporteppField40: TppField
      FieldAlias = 'BANCOID'
      FieldName = 'BANCOID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 39
    end
    object ppbdereporteppField41: TppField
      FieldAlias = 'ASONCTA'
      FieldName = 'ASONCTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppbdereporteppField42: TppField
      FieldAlias = 'SITCTA'
      FieldName = 'SITCTA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 41
    end
    object ppbdereporteppField43: TppField
      FieldAlias = 'ASODNI'
      FieldName = 'ASODNI'
      FieldLength = 10
      DisplayWidth = 10
      Position = 42
    end
    object ppbdereporteppField44: TppField
      FieldAlias = 'GRAACID'
      FieldName = 'GRAACID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 43
    end
    object ppbdereporteppField45: TppField
      FieldAlias = 'GRAINSID'
      FieldName = 'GRAINSID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 44
    end
    object ppbdereporteppField46: TppField
      FieldAlias = 'PROFID'
      FieldName = 'PROFID'
      FieldLength = 3
      DisplayWidth = 3
      Position = 45
    end
    object ppbdereporteppField47: TppField
      FieldAlias = 'ASOFMOV'
      FieldName = 'ASOFMOV'
      FieldLength = 1
      DisplayWidth = 1
      Position = 46
    end
    object ppbdereporteppField48: TppField
      FieldAlias = 'ASOFLUGING'
      FieldName = 'ASOFLUGING'
      FieldLength = 1
      DisplayWidth = 1
      Position = 47
    end
    object ppbdereporteppField49: TppField
      FieldAlias = 'ASODIR'
      FieldName = 'ASODIR'
      FieldLength = 250
      DisplayWidth = 250
      Position = 48
    end
    object ppbdereporteppField50: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 49
    end
    object ppbdereporteppField51: TppField
      FieldAlias = 'HREG'
      FieldName = 'HREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 50
    end
    object ppbdereporteppField52: TppField
      FieldAlias = 'FREG'
      FieldName = 'FREG'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 51
    end
    object ppbdereporteppField53: TppField
      FieldAlias = 'ASOLUGEST'
      FieldName = 'ASOLUGEST'
      FieldLength = 90
      DisplayWidth = 90
      Position = 52
    end
    object ppbdereporteppField54: TppField
      FieldAlias = 'FECTEREST'
      FieldName = 'FECTEREST'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 53
    end
    object ppbdereporteppField55: TppField
      FieldAlias = 'TIEMPOEST'
      FieldName = 'TIEMPOEST'
      FieldLength = 2
      DisplayWidth = 2
      Position = 54
    end
    object ppbdereporteppField56: TppField
      FieldAlias = 'ASOLNACID'
      FieldName = 'ASOLNACID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 55
    end
    object ppbdereporteppField57: TppField
      FieldAlias = 'ASORESCESE'
      FieldName = 'ASORESCESE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 56
    end
    object ppbdereporteppField58: TppField
      FieldAlias = 'ASOFRESCESE'
      FieldName = 'ASOFRESCESE'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 57
    end
    object ppbdereporteppField59: TppField
      FieldAlias = 'FGARANTE'
      FieldName = 'FGARANTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 58
    end
    object ppbdereporteppField60: TppField
      FieldAlias = 'ZIPID'
      FieldName = 'ZIPID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 59
    end
    object ppbdereporteppField61: TppField
      FieldAlias = 'CIUDID'
      FieldName = 'CIUDID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 60
    end
    object ppbdereporteppField62: TppField
      FieldAlias = 'ARCHIVOFTP'
      FieldName = 'ARCHIVOFTP'
      FieldLength = 12
      DisplayWidth = 12
      Position = 61
    end
    object ppbdereporteppField63: TppField
      FieldAlias = 'CIAID'
      FieldName = 'CIAID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 62
    end
    object ppbdereporteppField64: TppField
      FieldAlias = 'FLAGVAR'
      FieldName = 'FLAGVAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 63
    end
    object ppbdereporteppField65: TppField
      FieldAlias = 'ASOAPNCRE'
      FieldName = 'ASOAPNCRE'
      FieldLength = 90
      DisplayWidth = 90
      Position = 64
    end
    object ppbdereporteppField66: TppField
      FieldAlias = 'FLGFSOL'
      FieldName = 'FLGFSOL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object ppbdereporteppField67: TppField
      FieldAlias = 'ESTCLF'
      FieldName = 'ESTCLF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 66
    end
    object ppbdereporteppField68: TppField
      FieldAlias = 'OBSERVA'
      FieldName = 'OBSERVA'
      FieldLength = 40
      DisplayWidth = 40
      Position = 67
    end
    object ppbdereporteppField69: TppField
      FieldAlias = 'USR_CREA'
      FieldName = 'USR_CREA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 68
    end
    object ppbdereporteppField70: TppField
      FieldAlias = 'FEC_CREA'
      FieldName = 'FEC_CREA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 69
    end
    object ppbdereporteppField71: TppField
      FieldAlias = 'USR_BEN'
      FieldName = 'USR_BEN'
      FieldLength = 10
      DisplayWidth = 10
      Position = 70
    end
    object ppbdereporteppField72: TppField
      FieldAlias = 'FEC_BEN'
      FieldName = 'FEC_BEN'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 71
    end
    object ppbdereporteppField73: TppField
      FieldAlias = 'CTASER'
      FieldName = 'CTASER'
      FieldLength = 7
      DisplayWidth = 7
      Position = 72
    end
    object ppbdereporteppField74: TppField
      FieldAlias = 'CARGO'
      FieldName = 'CARGO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 73
    end
    object ppbdereporteppField75: TppField
      FieldAlias = 'VARIASCUOT'
      FieldName = 'VARIASCUOT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 74
    end
    object ppbdereporteppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRENCUOTA'
      FieldName = 'CRENCUOTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 75
    end
    object ppbdereporteppField77: TppField
      FieldAlias = 'NFUSION'
      FieldName = 'NFUSION'
      FieldLength = 9
      DisplayWidth = 9
      Position = 76
    end
    object ppbdereporteppField78: TppField
      FieldAlias = 'IDIMAGE'
      FieldName = 'IDIMAGE'
      FieldLength = 7
      DisplayWidth = 7
      Position = 77
    end
    object ppbdereporteppField79: TppField
      FieldAlias = 'FSINLIQ'
      FieldName = 'FSINLIQ'
      FieldLength = 1
      DisplayWidth = 1
      Position = 78
    end
    object ppbdereporteppField80: TppField
      FieldAlias = 'ASODESCOL'
      FieldName = 'ASODESCOL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 79
    end
    object ppbdereporteppField81: TppField
      FieldAlias = 'ASODIRCOL'
      FieldName = 'ASODIRCOL'
      FieldLength = 60
      DisplayWidth = 60
      Position = 80
    end
    object ppbdereporteppField82: TppField
      FieldAlias = 'ASOZIPCOL'
      FieldName = 'ASOZIPCOL'
      FieldLength = 6
      DisplayWidth = 6
      Position = 81
    end
    object ppbdereporteppField83: TppField
      FieldAlias = 'ASOAPEPATDNI'
      FieldName = 'ASOAPEPATDNI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 82
    end
    object ppbdereporteppField84: TppField
      FieldAlias = 'ASOAPEMATDNI'
      FieldName = 'ASOAPEMATDNI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 83
    end
    object ppbdereporteppField85: TppField
      FieldAlias = 'ASONOMDNI'
      FieldName = 'ASONOMDNI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 84
    end
    object ppbdereporteppField86: TppField
      FieldAlias = 'ASOAPENOMDNI'
      FieldName = 'ASOAPENOMDNI'
      FieldLength = 90
      DisplayWidth = 90
      Position = 85
    end
    object ppbdereporteppField87: TppField
      FieldAlias = 'ASODESLAB'
      FieldName = 'ASODESLAB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 86
    end
    object ppbdereporteppField88: TppField
      FieldAlias = 'ASODIRLAB'
      FieldName = 'ASODIRLAB'
      FieldLength = 60
      DisplayWidth = 60
      Position = 87
    end
    object ppbdereporteppField89: TppField
      FieldAlias = 'ASODPTLABID'
      FieldName = 'ASODPTLABID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 88
    end
    object ppbdereporteppField90: TppField
      FieldAlias = 'ASOPRVLABID'
      FieldName = 'ASOPRVLABID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 89
    end
    object ppbdereporteppField91: TppField
      FieldAlias = 'ASODSTLABID'
      FieldName = 'ASODSTLABID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 90
    end
    object ppbdereporteppField92: TppField
      FieldAlias = 'ASOTELLAB'
      FieldName = 'ASOTELLAB'
      FieldLength = 12
      DisplayWidth = 12
      Position = 91
    end
    object ppbdereporteppField93: TppField
      FieldAlias = 'DPTNACID'
      FieldName = 'DPTNACID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 92
    end
    object ppbdereporteppField94: TppField
      FieldAlias = 'PRVNACID'
      FieldName = 'PRVNACID'
      FieldLength = 4
      DisplayWidth = 4
      Position = 93
    end
    object ppbdereporteppField95: TppField
      FieldAlias = 'DSTNACID'
      FieldName = 'DSTNACID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 94
    end
    object ppbdereporteppField96: TppField
      FieldAlias = 'VIALABID'
      FieldName = 'VIALABID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 95
    end
    object ppbdereporteppField97: TppField
      FieldAlias = 'ZONALABID'
      FieldName = 'ZONALABID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 96
    end
    object ppbdereporteppField98: TppField
      FieldAlias = 'FECACT'
      FieldName = 'FECACT'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 97
    end
    object ppbdereporteppField99: TppField
      FieldAlias = 'INDICADOR'
      FieldName = 'INDICADOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 98
    end
    object ppbdereporteppField100: TppField
      FieldAlias = 'CCOSID'
      FieldName = 'CCOSID'
      FieldLength = 15
      DisplayWidth = 15
      Position = 99
    end
    object ppbdereporteppField101: TppField
      FieldAlias = 'PASSWORD'
      FieldName = 'PASSWORD'
      FieldLength = 4
      DisplayWidth = 4
      Position = 100
    end
    object ppbdereporteppField102: TppField
      FieldAlias = 'CODAFP'
      FieldName = 'CODAFP'
      FieldLength = 2
      DisplayWidth = 2
      Position = 101
    end
    object ppbdereporteppField103: TppField
      FieldAlias = 'DESHABILITADO'
      FieldName = 'DESHABILITADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 102
    end
    object ppbdereporteppField104: TppField
      FieldAlias = 'VALIDA_CI'
      FieldName = 'VALIDA_CI'
      FieldLength = 1
      DisplayWidth = 1
      Position = 103
    end
    object ppbdereporteppField105: TppField
      FieldAlias = 'TCREACION'
      FieldName = 'TCREACION'
      FieldLength = 2
      DisplayWidth = 2
      Position = 104
    end
    object ppbdereporteppField106: TppField
      FieldAlias = 'REGVERIF'
      FieldName = 'REGVERIF'
      FieldLength = 1
      DisplayWidth = 1
      Position = 105
    end
    object ppbdereporteppField107: TppField
      FieldAlias = 'CODMODANT'
      FieldName = 'CODMODANT'
      FieldLength = 10
      DisplayWidth = 10
      Position = 106
    end
    object ppbdereporteppField108: TppField
      FieldAlias = 'VALCODMODDNI'
      FieldName = 'VALCODMODDNI'
      FieldLength = 1
      DisplayWidth = 1
      Position = 107
    end
    object ppbdereporteppField109: TppField
      FieldAlias = 'ACTARCRENANT'
      FieldName = 'ACTARCRENANT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 108
    end
    object ppbdereporteppField110: TppField
      FieldAlias = 'ACTARCREN'
      FieldName = 'ACTARCREN'
      FieldLength = 1
      DisplayWidth = 1
      Position = 109
    end
    object ppbdereporteppField111: TppField
      FieldAlias = 'REINGRESO'
      FieldName = 'REINGRESO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 110
    end
    object ppbdereporteppField112: TppField
      FieldAlias = 'AUTDESAPO'
      FieldName = 'AUTDESAPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 111
    end
    object ppbdereporteppField113: TppField
      FieldAlias = 'FECAUTDESAPO'
      FieldName = 'FECAUTDESAPO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 112
    end
    object ppbdereporteppField114: TppField
      FieldAlias = 'USUREGAUTDESAPO'
      FieldName = 'USUREGAUTDESAPO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 113
    end
    object ppbdereporteppField115: TppField
      FieldAlias = 'OFIREGAUTDESAPO'
      FieldName = 'OFIREGAUTDESAPO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 114
    end
    object ppbdereporteppField116: TppField
      FieldAlias = 'CODMODAUTDESAPO'
      FieldName = 'CODMODAUTDESAPO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 115
    end
    object ppbdereporteppField117: TppField
      FieldAlias = 'CODARCHIVO'
      FieldName = 'CODARCHIVO'
      FieldLength = 21
      DisplayWidth = 21
      Position = 116
    end
    object ppbdereporteppField118: TppField
      FieldAlias = 'GENCODBAR'
      FieldName = 'GENCODBAR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 117
    end
    object ppbdereporteppField119: TppField
      FieldAlias = 'ENVAUTDES'
      FieldName = 'ENVAUTDES'
      FieldLength = 6
      DisplayWidth = 6
      Position = 118
    end
    object ppbdereporteppField120: TppField
      FieldAlias = 'CORENVAUTDES'
      FieldName = 'CORENVAUTDES'
      FieldLength = 5
      DisplayWidth = 5
      Position = 119
    end
    object ppbdereporteppField121: TppField
      FieldAlias = 'CODTIPLUG'
      FieldName = 'CODTIPLUG'
      FieldLength = 2
      DisplayWidth = 2
      Position = 120
    end
    object ppbdereporteppField122: TppField
      FieldAlias = 'NUMDIRVIV'
      FieldName = 'NUMDIRVIV'
      FieldLength = 6
      DisplayWidth = 6
      Position = 121
    end
    object ppbdereporteppField123: TppField
      FieldAlias = 'NUMMANVIV'
      FieldName = 'NUMMANVIV'
      FieldLength = 3
      DisplayWidth = 3
      Position = 122
    end
    object ppbdereporteppField124: TppField
      FieldAlias = 'NUMLOTVIV'
      FieldName = 'NUMLOTVIV'
      FieldLength = 3
      DisplayWidth = 3
      Position = 123
    end
    object ppbdereporteppField125: TppField
      FieldAlias = 'DESINTVIV'
      FieldName = 'DESINTVIV'
      FieldLength = 12
      DisplayWidth = 12
      Position = 124
    end
    object ppbdereporteppField126: TppField
      FieldAlias = 'DESREFVIV'
      FieldName = 'DESREFVIV'
      FieldLength = 65
      DisplayWidth = 65
      Position = 125
    end
    object ppbdereporteppField127: TppField
      FieldAlias = 'CODURBVIV'
      FieldName = 'CODURBVIV'
      FieldLength = 2
      DisplayWidth = 2
      Position = 126
    end
    object ppbdereporteppField128: TppField
      FieldAlias = 'DESURBVIV'
      FieldName = 'DESURBVIV'
      FieldLength = 50
      DisplayWidth = 50
      Position = 127
    end
    object ppbdereporteppField129: TppField
      FieldAlias = 'NUMETAVIV'
      FieldName = 'NUMETAVIV'
      FieldLength = 6
      DisplayWidth = 6
      Position = 128
    end
    object ppbdereporteppField130: TppField
      FieldAlias = 'DESETAVIV'
      FieldName = 'DESETAVIV'
      FieldLength = 50
      DisplayWidth = 50
      Position = 129
    end
    object ppbdereporteppField131: TppField
      FieldAlias = 'NUMINTVIV'
      FieldName = 'NUMINTVIV'
      FieldLength = 8
      DisplayWidth = 8
      Position = 130
    end
    object ppbdereporteppField132: TppField
      FieldAlias = 'NOMDIRVIV'
      FieldName = 'NOMDIRVIV'
      FieldLength = 45
      DisplayWidth = 45
      Position = 131
    end
    object ppbdereporteppField133: TppField
      FieldAlias = 'ANOENV'
      FieldName = 'ANOENV'
      FieldLength = 4
      DisplayWidth = 4
      Position = 132
    end
    object ppbdereporteppField134: TppField
      FieldAlias = 'ENVIO'
      FieldName = 'ENVIO'
      FieldLength = 4
      DisplayWidth = 4
      Position = 133
    end
    object ppbdereporteppField135: TppField
      FieldAlias = 'CODOTRDOCIDE'
      FieldName = 'CODOTRDOCIDE'
      FieldLength = 2
      DisplayWidth = 2
      Position = 134
    end
    object ppbdereporteppField136: TppField
      FieldAlias = 'NUMOTRDOCIDE'
      FieldName = 'NUMOTRDOCIDE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 135
    end
    object ppbdereporteppField137: TppField
      FieldAlias = 'CODMOTDESTAPO'
      FieldName = 'CODMOTDESTAPO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 136
    end
    object ppbdereporteppField138: TppField
      FieldAlias = 'AUTDESCUO'
      FieldName = 'AUTDESCUO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 137
    end
    object ppbdereporteppField139: TppField
      FieldAlias = 'FECAUTDESCUO'
      FieldName = 'FECAUTDESCUO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 138
    end
    object ppbdereporteppField140: TppField
      FieldAlias = 'USUREGAUTDESCUO'
      FieldName = 'USUREGAUTDESCUO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 139
    end
    object ppbdereporteppField141: TppField
      FieldAlias = 'OFIREGAUTDESCUO'
      FieldName = 'OFIREGAUTDESCUO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 140
    end
    object ppbdereporteppField142: TppField
      FieldAlias = 'CODMODAUTDESCUO'
      FieldName = 'CODMODAUTDESCUO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 141
    end
    object ppbdereporteppField143: TppField
      FieldAlias = 'MDFASODIR'
      FieldName = 'MDFASODIR'
      FieldLength = 250
      DisplayWidth = 250
      Position = 142
    end
    object ppbdereporteppField144: TppField
      FieldAlias = 'MDFZIPID'
      FieldName = 'MDFZIPID'
      FieldLength = 6
      DisplayWidth = 6
      Position = 143
    end
    object ppbdereporteppField145: TppField
      FieldAlias = 'MDFCNTREG'
      FieldName = 'MDFCNTREG'
      FieldLength = 1
      DisplayWidth = 1
      Position = 144
    end
    object ppbdereporteppField146: TppField
      FieldAlias = 'MDFUSRMOD'
      FieldName = 'MDFUSRMOD'
      FieldLength = 20
      DisplayWidth = 20
      Position = 145
    end
    object ppbdereporteppField147: TppField
      FieldAlias = 'MDFFECMOD'
      FieldName = 'MDFFECMOD'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 146
    end
    object ppbdereporteppField148: TppField
      FieldAlias = 'EMICARTA'
      FieldName = 'EMICARTA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 147
    end
    object ppbdereporteppField149: TppField
      FieldAlias = 'DESMANVIV'
      FieldName = 'DESMANVIV'
      FieldLength = 8
      DisplayWidth = 8
      Position = 148
    end
    object ppbdereporteppField150: TppField
      FieldAlias = 'CODMOTDESTCUO'
      FieldName = 'CODMOTDESTCUO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 149
    end
  end
  object pprreporte: TppReport
    AutoStop = False
    DataPipeline = ppbdereporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 624
    Top = 56
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdereporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35983
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 8996
        mmLeft = 19315
        mmTop = 26194
        mmWidth = 68527
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 232834
        mmTop = 1852
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 232834
        mmTop = 5821
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 232834
        mmTop = 9790
        mmWidth = 13228
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 6350
        mmTop = 1852
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Equipo de Previsi'#243'n Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 6350
        mmTop = 5821
        mmWidth = 50800
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'AUTORIZACION DE DESCUENTO DE APORTES REGISTRADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 78317
        mmTop = 14023
        mmWidth = 104511
        BandType = 0
      end
      object pplfechas: TppLabel
        UserName = 'lfechas'
        Caption = 'DEL 01/01/2008 AL 30/04/2008'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 100806
        mmTop = 18256
        mmWidth = 59267
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Apellidos y Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 20373
        mmTop = 26723
        mmWidth = 24077
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 8996
        mmLeft = 87577
        mmTop = 26194
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3439
        mmLeft = 88900
        mmTop = 26723
        mmWidth = 6085
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 8996
        mmLeft = 105040
        mmTop = 26194
        mmWidth = 32278
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3439
        mmLeft = 106098
        mmTop = 26988
        mmWidth = 23283
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 8996
        mmLeft = 137054
        mmTop = 26194
        mmWidth = 52916
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 138113
        mmTop = 27252
        mmWidth = 10319
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 8997
        mmLeft = 189707
        mmTop = 26194
        mmWidth = 41539
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Fecha de autorizaci'#243'n de descuento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 190765
        mmTop = 26988
        mmWidth = 39688
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 8997
        mmLeft = 230982
        mmTop = 26194
        mmWidth = 19314
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Primer envio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 231775
        mmTop = 26988
        mmWidth = 15346
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 8996
        mmLeft = 250032
        mmTop = 26194
        mmWidth = 19314
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Ultimo aporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 250561
        mmTop = 26988
        mmWidth = 15346
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 8996
        mmLeft = 6350
        mmTop = 26194
        mmWidth = 13228
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 8731
        mmTop = 26723
        mmWidth = 3440
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 248973
        mmTop = 1852
        mmWidth = 20373
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 248973
        mmTop = 5821
        mmWidth = 15346
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 248973
        mmTop = 9790
        mmWidth = 7144
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 246592
        mmTop = 1852
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 246592
        mmTop = 5821
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 246592
        mmTop = 9790
        mmWidth = 1588
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMERO'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 6879
        mmTop = 0
        mmWidth = 10054
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 19844
        mmTop = 0
        mmWidth = 67469
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASODNI'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'DPTODES'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 105569
        mmTop = 0
        mmWidth = 31221
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'USENOM'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 137584
        mmTop = 0
        mmWidth = 51858
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'FECAUTDESAPO'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 190236
        mmTop = 0
        mmWidth = 40481
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ENVIO'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 231511
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'APORTE'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 250561
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 6350
        mmTop = 265
        mmWidth = 257440
        BandType = 7
      end
      object pplimpresopor: TppLabel
        UserName = 'Label11'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 6350
        mmTop = 1058
        mmWidth = 59267
        BandType = 7
      end
    end
  end
end
