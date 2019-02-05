object fRepAvances: TfRepAvances
  Left = 394
  Top = 183
  Width = 858
  Height = 546
  Caption = 'fRepAvances'
  Color = 10207162
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
  DesignSize = (
    842
    508)
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 345
    Height = 57
    Caption = 'Fecha de Asignaci'#243'n de Hoja: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label18: TLabel
      Left = 8
      Top = 33
      Width = 60
      Height = 16
      Caption = 'Fec.Inicio:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 183
      Top = 33
      Width = 47
      Height = 16
      Caption = 'Fec Fin:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dtpInicio: TwwDBDateTimePicker
      Left = 73
      Top = 25
      Width = 96
      Height = 24
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
    end
    object dtpFin: TwwDBDateTimePicker
      Left = 233
      Top = 25
      Width = 96
      Height = 24
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
  object gbColegios: TGroupBox
    Left = 8
    Top = 71
    Width = 697
    Height = 74
    Caption = 'Ubigeo de Colegio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 12
      Top = 20
      Width = 89
      Height = 16
      Caption = 'Departamento:'
    end
    object Label2: TLabel
      Left = 212
      Top = 20
      Width = 59
      Height = 16
      Caption = 'Provincia:'
    end
    object Label3: TLabel
      Left = 437
      Top = 20
      Width = 44
      Height = 16
      Caption = 'Distrito:'
    end
    object dblcdcoddep: TwwDBLookupComboDlg
      Left = 12
      Top = 34
      Width = 41
      Height = 24
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      Color = clWhite
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdcoddepChange
      OnExit = dblcdcoddepExit
    end
    object medesdep: TMaskEdit
      Left = 57
      Top = 34
      Width = 150
      Height = 24
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 1
    end
    object dblcdcodpro: TwwDBLookupComboDlg
      Left = 212
      Top = 34
      Width = 50
      Height = 24
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsProvin
      LookupField = 'CIUDID'
      Color = clWhite
      MaxLength = 4
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdcodproChange
      OnExit = dblcdcodproExit
    end
    object medespro: TMaskEdit
      Left = 264
      Top = 34
      Width = 167
      Height = 24
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 3
    end
    object dblcdcoddis: TwwDBLookupComboDlg
      Left = 437
      Top = 34
      Width = 66
      Height = 24
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDist
      LookupField = 'ZIPID'
      Color = clWhite
      MaxLength = 6
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdcoddisChange
    end
    object medesdis: TMaskEdit
      Left = 507
      Top = 34
      Width = 176
      Height = 24
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 5
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 194
    Width = 817
    Height = 263
    TabOrder = 2
    object DBGRESHOJARUTA: TwwDBGrid
      Left = 16
      Top = 21
      Width = 785
      Height = 228
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      KeyOptions = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 3
      TitleButtons = False
    end
    object dtgExcel: TwwDBGrid
      Left = 16
      Top = 104
      Width = 113
      Height = 81
      Cursor = crHandPoint
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = []
      MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 3
      TitleButtons = False
      Visible = False
      object wwIButton3: TwwIButton
        Left = 0
        Top = 0
        Width = 26
        Height = 29
        Hint = 'Crear Nuevo Asociado'
        AllowAllUp = True
        Enabled = False
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Visible = False
      end
    end
  end
  object gbTipoCar: TGroupBox
    Left = 9
    Top = 150
    Width = 377
    Height = 41
    Caption = 'Tipo de Cartera'
    TabOrder = 3
    object cbAfiliacion: TCheckBox
      Left = 40
      Top = 16
      Width = 81
      Height = 17
      Caption = 'Afiliaci'#243'n'
      TabOrder = 0
    end
    object cbNoveles: TCheckBox
      Left = 128
      Top = 16
      Width = 73
      Height = 17
      Caption = 'Noveles'
      TabOrder = 1
    end
    object cbFamiliarizada: TCheckBox
      Left = 208
      Top = 16
      Width = 89
      Height = 17
      Caption = 'Familirizada'
      TabOrder = 2
    end
    object cbPrecese: TCheckBox
      Left = 304
      Top = 16
      Width = 65
      Height = 17
      Caption = 'Pre-Cese'
      TabOrder = 3
    end
  end
  object bFiltrar: TBitBtn
    Left = 734
    Top = 96
    Width = 75
    Height = 35
    Caption = 'Filtrar'
    TabOrder = 4
    OnClick = bFiltrarClick
    Glyph.Data = {
      42080000424D4208000000000000420000002800000020000000200000000100
      1000030000000008000000000000000000000000000000000000007C0000E003
      00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000018631863
      1863186318631863186318631863186318631863186318631042104210420000
      000010421863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
      1863186318631863186300400040186318631863186310421042104200000000
      10421863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
      18631863186318631863007C0040186318631863104210421042000000001042
      1863FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
      1863186318631863186318631863186318631042104210420000000010421863
      FF7F00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
      18631863186318631863007C004018631042104210420000000010421863FF7F
      000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
      18631863186318631863007C00401042104210420000000010421863FF7F0000
      000000001863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000018631863
      18631863186318631863007C1042104210420000000010421863FF7F00000000
      000018631863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000010421042
      104210421042104210421042104210420000000010421863FF7F000000000000
      186318631863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10421042000010421042
      10421042104210421042104210420000000000000000FF7F0000000000001863
      186318631863FF7FFF7FFF7FFF7FFF7FFF7F1042104210421042000010421042
      1042104210421042104210420000000000001042000000000000000018631863
      186318631863FF7FFF7FFF7FFF7FFF7F10421042104200000000000010421863
      FF7F186310420000000000000000000010421863FF7F00000000186318631863
      186318631863FF7FFF7FFF7F1042104210420000000000000000000000000000
      104200000000000000000000000010421863FF7F000000000040186318631863
      186318631863FF7FFF7F10421042104200000000000000001863186318631863
      007C007C004000000000000000000000FF7F00000000007C0040186318631863
      186318631863FF7F104210420000000000000000186318631863186318631863
      007C007C004018631863000000000000000000000000007C0040186318631863
      186318631863FF7F104200000000000000001863186318631863186318631863
      007C007C007C0040186318630000000000000000007C007C0040186318631863
      1863186318631042104200000000000018631863186318631863186318631863
      1863007C007C007C004018631863000000000000007C007C1863186318631863
      18631863186310420000000000000000FF7F1863186318631863186318631863
      18631863007C007C007C00401863186300000000000018631863186318631863
      18631863186310420000000000000000FF7F1863186318631863186318631863
      186318631863007C007C007C0040186300001042000018631863186318631863
      186318631863000000000000FF7F0000FF7F1863186318631863004000400040
      1863186318631863007C007C0040186318630000000000001863186318631863
      186318631863000010420000FF7F0000186318631863186318631F7C007C0040
      1863186318631863007C007C0040186318630000104200001863FF7FFF7FFF7F
      FF7FFF7F1863000010420000FF7F0000104210421042186318631F7C007C007C
      004018631863007C007C007C0040186318630000104200000000000000000000
      000000000000000010420000FF7F00001042104210421042186318631F7C007C
      007C00400040007C007C007C004018631863000010420000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F000010420000FF7F000000000000000000000000000018631F7C
      007C007C007C007C007C1F7C186318631863000010420000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F000000000000FF7FFF7F0000104210421863FF7F000018631863
      1F7C1F7C1F7C1F7C1F7C1863186318631863000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000010420000FF7FFF7F0000104218631863000018631863
      18631863186318631863186318631863000010420000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F000010421863000018631863
      18631863186318631863186318631863000000000000FF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F00001863000018631863
      1863186318631863186318631863000000000000FF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F000000001863FF7F
      FF7FFF7FFF7FFF7F18631863000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F000000000000
      00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000FF7FFF7FFF7FFF7F
      FF7FFF7FFF7F0000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000010421863FF7F
      186310420000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000001042
      0000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
      FF7FFF7FFF7F}
  end
  object gbResponsables: TGroupBox
    Left = 9
    Top = 73
    Width = 561
    Height = 71
    Caption = 'Asesor'
    TabOrder = 5
    object dblcdResponsable: TwwDBLookupComboDlg
      Left = 18
      Top = 28
      Width = 97
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsResponsable
      LookupField = 'USERID'
      Color = clWhite
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdResponsableChange
    end
    object mdesResponsable: TMaskEdit
      Left = 120
      Top = 28
      Width = 183
      Height = 21
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 1
    end
  end
  object rdbColegios: TRadioButton
    Left = 364
    Top = 24
    Width = 113
    Height = 17
    Caption = 'Ubigeo Laboral'
    TabOrder = 6
    OnClick = rdbColegiosClick
  end
  object rdbResponsable: TRadioButton
    Left = 364
    Top = 44
    Width = 125
    Height = 17
    Caption = 'Asesor'
    TabOrder = 7
    OnClick = rdbResponsableClick
  end
  object bExportar: TBitBtn
    Left = 591
    Top = 467
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Exportar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = bExportarClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
      000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
      0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
      080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
  end
  object bImprimir: TBitBtn
    Left = 671
    Top = 468
    Width = 76
    Height = 23
    Anchors = [akRight, akBottom]
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = bImprimirClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      0003377777777777777308888888888888807F33333333333337088888888888
      88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
      8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
      8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
  object bSalir: TBitBtn
    Left = 751
    Top = 468
    Width = 75
    Height = 23
    Anchors = [akRight, akBottom]
    Caption = 'Salir'
    TabOrder = 10
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
  object RepResumenColegio: TppReport
    AutoStop = False
    DataPipeline = DBPP1
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
    Template.FileName = 
      'D:\Desarrollo DM\ASOCIADOS\FUENTES_CLIENTE_201501\FUENTES_CLIENT' +
      'E_201501\rptResumenAsesoriaPrevCole.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = RepResumenColegioPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 384
    Top = 472
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBPP1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 12171
        mmLeft = 0
        mmTop = 23813
        mmWidth = 99748
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 12171
        mmLeft = 187590
        mmTop = 23813
        mmWidth = 51065
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 12171
        mmLeft = 238390
        mmTop = 23813
        mmWidth = 45773
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 12171
        mmLeft = 143669
        mmTop = 23813
        mmWidth = 44186
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 12171
        mmLeft = 99484
        mmTop = 23813
        mmWidth = 44450
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 31221
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Provincia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 31221
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Distrito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 53446
        mmTop = 31221
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Asesor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 79111
        mmTop = 31221
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 31221
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Colegios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 113771
        mmTop = 25400
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Asesorado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 127529
        mmTop = 31221
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Asignado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 112184
        mmTop = 31221
        mmWidth = 13335
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 265
        mmLeft = 99484
        mmTop = 29369
        mmWidth = 184415
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 110596
        mmTop = 29633
        mmWidth = 265
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 127000
        mmTop = 29633
        mmWidth = 265
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Docentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 151077
        mmTop = 25400
        mmWidth = 14288
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 158221
        mmTop = 29633
        mmWidth = 265
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Asignado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 30956
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = 'Ases/Afilia.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 172244
        mmTop = 30956
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = '% Cober.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 189442
        mmTop = 30956
        mmWidth = 13123
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Colegios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 204788
        mmTop = 25400
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = '% Avance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 206111
        mmTop = 30956
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = '% Asignac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 221986
        mmTop = 30956
        mmWidth = 15081
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 204788
        mmTop = 29633
        mmWidth = 265
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 220928
        mmTop = 29633
        mmWidth = 265
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Docentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 258234
        mmTop = 25135
        mmWidth = 14288
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 268023
        mmTop = 29633
        mmWidth = 265
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = '% Asignac.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 268553
        mmTop = 30956
        mmWidth = 15081
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = '% Avance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 254001
        mmTop = 30956
        mmWidth = 14023
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 26194
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 52123
        mmTop = 23813
        mmWidth = 265
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 76994
        mmTop = 23813
        mmWidth = 265
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'REPORTE DE AVANCE DE HOJA DE RUTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 14
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6879
        mmLeft = 93927
        mmTop = 10583
        mmWidth = 118798
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D616765EA1D0000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108002F00FD03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FA9F
          FE0AADFF000587F1A7C33F8E5AD7C35F879711E86BE1F716F7DA92AEEB9926C0
          2CAA4F0A064723935F24E95FF0547F8F12B7EF3E2978A0F3DE75FF000AE3BFE0
          AA77DB3FE0A39F1717FEA3EE07AFDC4AC1F08FECCBF10522D0F57D63C0BE30B1
          F0CEA377044DA94BA5CD1C06391D5776F2B80083C13C57F4564D94E5787CBE8B
          9D385E514EED26DB6937BEFE87E7B99D4C4CEB4ED37BBD9B565F23DF743FF829
          7FC6CB82BE67C4AF1237AE665FF0AEDFC3FF00F0511F8BD75B777C40F1039EE0
          CC3FC2BC37E247ECDDAF41FB45F8CBC2BF0FFC33E23F11587866ECC58B3B592E
          DE140A08DECA3DCF5A77C35F851E3AF191BEFEC8F08789B513A4394BD16FA74A
          FF006461D55C63861DC75AF4E9E17299D353F674D2693D6315A3DAFDAE7C4E65
          4B31BB50A93F94A5FE67DB9FB3BFFC149FC75E1EF15D8AEBFAD4BAF69734A16E
          16ED81655240E1B1C63935FA65A56A31EAFA6DBDD43CC7711AC887D411915F81
          7E1CF103DBDCF972EF8648C9578DC6D6523B11D88AFDDCF852FE67C34D058670
          D6109E7FDC15F99788F95E170CE8D6C3C145CB993B2B276B5B45EA7D078678CC
          74E788C362AA39C63CAD7336DABDEFABD6DA1D0515CCF8E3E34783FE195E5BDB
          F893C55E1DD06E2EFF00D445A86A315B3CBDBE50EC09FC2BE48F87BFF0515F18
          F8C3FE0AD1AD7C133168B27836C6CA4BAB7B88A2CDC4988E3653BF3820EF3D2B
          E0F0393E2B170A95292D211736DE9A2B5EDDDEA7E8D8CCDB0F869C2151EB3928
          AB6BABDAFDB63EDDA2B93F13FC79F03F827C47168FACF8CBC2FA4EAD31023B3B
          CD56082E189E9F23306E7E9CD6A78A7E22787FC0D656F73ADEBBA3E8F6F7476C
          12DF5EC76E931EB852EC037E15C1EC2AE9EEBD76D1EBE9DCEEF6D4F5F7969BEB
          B7A9B14572BAB7C73F04E8179756F7DE30F0BD94F63B3ED31CFAAC11B5BEF04A
          6F0CC36EE0AC467AE0D5A8FE2BF85E6D524B14F12684F790DA0BF9215BF88C89
          6E718988DD9119C8C31E0E7AD3FABD5B5F95FDCC5EDE9EDCCBEF3A0A2B94F0E7
          C78F03F8C359FECDD27C65E15D535019FF0045B4D5A09A6E3AFC8AE4FE957EFB
          E26786F4CF12368D73E20D0EDF5858CCC6C65BE892E42052E5BCB2DBB68505B3
          8C6013D28961EAA7CAE2EFBECF6EE0ABD36B99495B6DFA9B94572FE18F8DFE0B
          F1B586A177A3F8B7C33AADAE9209BE9AD3538668ECC0EA646562107079381C54
          DE02F8BDE13F8A905C49E19F13683E218ECDB6CEDA6DFC574213FED6C63B7F1A
          2587AB14DCA2F4DF47A7A846BD36D2525AEDAEFE8745457217FF00B41F8074AD
          77FB2EEBC6FE11B6D4B76CFB24BAC5BA4DBBA63617CE7DB15D723ACA8ACAC195
          864107208A99D29C2CE69ABF74546A42775169D85A2B3F54F16E95A1A235EEA7
          A7D9AC92794867B848C33FF74648C9E0F1D69DAD789B4DF0DD9ADC6A3A858D85
          BB90AB2DCCEB12313D002C40A9E493D96E3E78F72F514D4B88E4816557568D97
          70707E523AE73E95534AF12E9DAECB2A58EA16578F09C48B04EB218CFB804E3F
          1A5CAF71F32D8BB4552D73C49A77866D966D4AFECB4F859B6AC9733AC2A4FA02
          C40CD3356D51DB4799B4D9AC64BC781A4B5F3A4FDD39C7CA4E39DB9C648ED4D4
          589C923428AE7FC37E24B9D2FC05A75EF8B2EF43B1D41A0437B25BCFB6C84A47
          3E5B39CEDCF4CF35CFFED01F1FEC3E067C324F1298EDF53865BBB7B68D12E963
          12096454DC1B9040CE78F4AD69E1EA54A8A9415DB765E6FD4CE788A70A6EA4DD
          92577E48F40A2ABD96B169A944F25BDD5BDC471FDF68E40C17EA41A8744F13E9
          BE25491B4DD42C750585B6486DA759421F43B49C1FAD65CAF7B1A7322F51556E
          75BB3B5B632C9776B1C7BB607795557774C673D73DAB17E1E6ADAE3785A6B8F1
          5C9A1437D1CF2E5B4E958DBA4218EC259F9DDB71BBB6734D41B8F309D45CDCA7
          49587E33FF00976FF817F4A9A6F15D9DF786EFAFB4DBCB3BE5B585DC3C12ACA9
          B9549C12A4FA579D7C0EF89DA87C65F807E13F136A8B047A86AD0CD24CB0AED8
          C159590607D1455FD5E7ECDD5E89A5F369B5F9323DBC3DA2A7D5A6FE49A5FAA3
          F203C6FA6D86B7FF0005CAF8ADF68B58352D534EBBD4AFB44B19977ADDEA315B
          2B40BB49C310C090B8392A38AF14FD98FF006BFF008C177FB5DF87EF6DFC4DE2
          8D5BC4BAB6B515ADDE9F717524AB761A5024864809DBB40CFCA46171DB1581FF
          000551F185FF0083FF00E0AA3F16752D2EFAE74DD4F4EF1334F6B756D218E582
          4544219581C8228D47FE0A99F167C43A1DCC3F6AF08E9FAD6A101B6BEF1269FE
          17B2B4D7EFA36186592F1104872382C30C7B9AFE84C2E0AA4F0B4E518466A54E
          11F79DADA7A3BA77D76775F77CF62695A6DDDAD6FA1F56FF00C14DBE2DEA5E10
          D2F416F0AEB33E9367E22D7756D4EF9F4CB8310BCB98EE3CB56675396D817032
          4818E2B23F6C7FDAB3C756FE1DF83B343E29D56CE49BC296BAB4D25A5C181AE6
          ED89CCD214237B9C0E4F35F17EBFF1D35BF1E780FC33E1CD4A7B79B4BF09A4C9
          60163C4AA2572EE5DB24B12DDCD745E35F8E7ADFC57B1F0EDAEB135B347E17D3
          23D234FF0026211E2DD33B431CFCCDCF5AEAC164AA946946A252E472BBB6B677
          B74ED6B9E0E3A5CCA5CB7574BEF56EC7D4BFB6BEB3143FB448BC558E3B8D5F49
          B0D42E8A0C09A69605677EDCB1249AFDADF85772D6DF06B43995199A3D2A270B
          9FBC4460FEB5FCE8F8D3E3B6B5F183C536DAAEB925B497905A4162A608844A63
          850226541E4ED0327BD7F461F050EEF843E1938C674CB73D7FE99AD7C0F88546
          5470583A53DE3CCBEE513AB8528A58CC4548FDAB7E6CFC8CFF00827D7ECBDA0F
          FC1583F6A4F8BBE2CF8C3AAEADAADC68B7A62B7D2E0BE7B63186770AD9521822
          85015460707AF4AE13E1FF00867FE184BFE0A7DF16AD3C29AA5D6B6DE07F09EA
          B26973DD49E74D095863F2D1CE79316467FDCE82BED6F8E5FF000440BAD47F68
          5D4FE20FC21F8ADAF7C28BBF1048D26A56D6492EDCBFDFF29E39508527276364
          03D08ED7FF0065DFF821EE93FB377ED3975E3C9BC757DE2DD3751D32E34EBED3
          F54B2DF3DF9B845599E49BCCE7710C71B7F8BAF7AF5E7C5D96B8D6A8F12DD29D
          2518D0E595A2D25757B72EB67AADEFABD11F350E17CC14A94161D2A90A8E52AD
          CC9B926DD9DAF7D2EB47B5B4DD9F9D1FB38780341F8FDF027C47E20F157C20F8
          F1F13BC77E229EE5ADBC51A1453DC59D94F93B36ED24390D82E1C13D40C7156B
          F6A9D5FE2959FF00C1343C05E1FF00899A3F8AB42D4BC33E2EBBB1D346B9692D
          ADD4D666DE274E24C12AA5990761B71DB8FBAAFBFE0887E35F85DAF6B569F06F
          E3F78A3E1F782FC43334B73A30595BC8DDC108D1CA81BE5E33856C000935DC7E
          D21FF04736F8F3FB2BF807E19FFC2CED799BC137525D1D5F57B73A85C5E6F006
          C03CC5D88B8F9465B03039EB5DB538DB2A58CA557DAA953F68A493551CA9AE56
          B66B963BA8F2C2E9EE71C783F32FAAD5A7EC9A9F272DD382537CC9EE9DDED7BC
          ACD6C7C47FF0501FF827B43FB1C7FC13AEC7C5B7DE26D6BC45E36F1EEBDA64BA
          D4F7520F223716F76F8887DEEB2364B31CFA0E95E9DE0CFD947E1A7EC4DFB025
          F7C54F8D9E26F18789355F8B1A0DAE9B3D8D8CE81879BB2E2282DCB0C8641129
          2ECDB404385E82BED8FDBFFF00E09F9FF0DC3FB33E87F0F17C51FF0008EFF635
          FDBDF7DB8D97DA7CDF2A2923DBB37AE33BF3D78C537F6A0FF826E687FB537EC6
          1E1FF84BAC6B573673F8620B5FECFD62183734771044620E622DCAB296CAEEE3
          23078AF9BA3C691AD85A147195DA72AADD571566A0B9796CEDA2D1691D745A6C
          7BD5384654B135AAE1A8A7CB492A7CCEE9CDDF9AEAFABD5EAF4D59F907FB5AFC
          2AD2BE137C1CF0BFC44F02FC1FF8BFF09266D46092C75ED5757375697A8C8D22
          37CC15E294950CB8C02037B63D7FE327C358FF006C8FF82C4FC3DD07C49A96A5
          616BE30F0B69B75AA4B6337932CA0E8FE74881B3C2BE0A9FF6588FA7D2BF11BF
          E0885F123E3BFC1FD37C2DE3CFDA3B5ED7ADF409E33A55AB6923EC36D12214CB
          AF981E493180199BE51B873BB8F56F09FF00C1285BC2FF00B71F82BE327FC26D
          E70F07E8B6FA40D2CE9A7FD24C5606D3CCF33CCF9739DF8DA71D33DEBDDAFC65
          97C693947109D58D3AD18C92A8F5928F22E69ABBD575D13EC8F1E8F0963A5514
          5D06A94A749B4FD9AD23CCA6ED076D9F4D5AEECFCFABBFF827CF867C27FF0005
          906F80BA7EBDE26B1F87BAE40B717B0C77E5669E0167F6BF21DC1F997CD41C91
          9007A8C8ECFE01783BC3FF00F04D4FF82D9F897C33A5EB77D65F0EF4BF0E5EDF
          EA1F6D94CBE5DA0D2FEDAEAF8FBFB1D3E5E33F281D735F786ABFF04D89353FF8
          299DAFED11FF00097045B5B5FB30D13EC04EEFF4336D9F3BCCF53BB1B3B63E98
          3F163FE091FA6FC68FDBAFC43F1775CF14B4BA3F897439F42BBD063B22B218A5
          D38D9165B8F338619DE3E4E0802BCE971AE1F111F618CAEDD39617966ACF5AD7
          DF6D656DA5B799DF1E11C4507EDB0B4529C711CD1775A52E9D748DF78EFE47E7
          0F8CFE13FC29F8E7F04BC77E32F86BF027E374FA4E9EB7B716DE313AC2B41692
          C61A4CBDBE361853F8B6B1654079C8E3F46FFE0841F13B59F89FFF0004EDF0EC
          9AE6A136A571A3DFDDE990CB33EF90408E0C6A4F70A1F68F40A076C0F31F03FF
          00C1117E207823E1A7887E1BD9FED19E22B2F85DAA25CF95A35A696B1BB34A3E
          ECAE64388C9E5D1080E370C2EEC8FA8BFE09DBFB1A1FD84BF67183C05FF0902F
          89962BF9EF85E8B4FB367CDDBF2EDDEFD36F5CD7271771065D8BCAE585A15BDA
          49548B85FDA36A3CAD3BB9AB27B5D46CBB1D5C2F91E3B0B98C7135697B34E125
          2B7B34B9AE9AB283BB5BD9CAEFB9E71FB1A7ECB1E0DF8A565F11B5EF186956BE
          2EBCBAF1CEBD6B6B16AC82EA1D2EDD6F641E5C28D954DCC198B001893C9C2801
          9FB207ECADE15F17F8B7E265BF8AEDCF8D34DF05F89A6F0E786ACB5B3F6DB7D0
          AC0430DC79312C991F7AE19771CB6C48D738502BE83FD9FF00E0D7FC28EF0F6B
          7A69D45752FED7D7F51D743795E59885DDC3CDE5E3273B776DCF7C6703A52FC1
          6F82FF00F0A8B57F1C5D7F687DBBFE131F10C9AEEDF2BCBFB2EF8208BCBCE4EE
          C7939CF1F7B18E2BE37119D4E4EBF2547695B977E8D6DDB4BF6BABF73EAF0F94
          412A1CF4D5D5F9B6EA9EFDF5B77B1F3769BE20F087C13D33E2D7C31D6F4CD5BC
          43E11B6F135869FE19F0D59B34B757125E5AA5C7D86025D76C424491F0CCA889
          BF2428C0E57E2FF86AF3E0DDBF87FC59A0FC03BAF855A8E8DAD58247ADE97AC6
          9CF1F932DC471C90DDC30C81A489D19948C3E09078C647BC7C43FD8865F1778F
          3C49E2BD3BC55368BE24BDD72C3C43A25DA5989934BB8B5B56B52B22336268E5
          8DDD5972A70FC10403599F133F654F89FF00B43F87ADEC3C75F11B42B3B1D3EF
          AD6FE1B2F0EE8D25B4177241324A1AE1E599DD97E5E110A80D824B6315E8E1F3
          2C2A9C26EA2B3B73A6E7ABE58A95A31B4657D6EE57BBBDF4B5FCFAF97E25C250
          507757E4B7268B99B5772F795B4B28DACAD6D76CEFD9DBE10F86FF006A6F13F8
          F3C69F10B4FB1F176AD63E28BFD06CAC7528C5C5B6876B6CE238E38E16CA2B48
          312B3E373798BCE000391F117C21D17E077ED9B71A4F86F529ADB47BAF877AC5
          DA787C4E5A0D29CCB002F0A93FBB4931F7461728481D6B4BE36EB1F0EFC1BF1E
          35FBE6F1A7C43F81FE24BE318BFBDB5B554D2BC4CA10059C09A196DE49147C9B
          C6D906307200AA7FB387C1DD2FE2AFC78D73C53E1A93C4DA86831F86AE7449BC
          5DAF877BCF11DE5CBC64B26F084C30A4781B156305F0A3EF1AD2329C233C4CE5
          28D370D22D3E55749249FC3E9CB793EA96A4CA3094A3878462EA296B24D5DEB7
          6DADFD79AC9746F439DF0E7C32D6752F871F063C5DAC7C3FBAF8BDE05B1F04DB
          DA4DA25BCD14B73A65D32C67ED6B6D3B2C7704A02B8DDBD73C039355FE39F833
          E08FC49FD953556F07F8560B1934BF1369EBA8689AA584B6B75A1DC493A2B235
          ACDFEA77A13F700461C826BDFB48FD9CBE23FC2CF07F8534FF0003FC46D3E18F
          C39A35BE93369DACE882E74FBC312EDF3D7CB91268DCF71BD97A703AD67DD7EC
          3B79E35F0378DBFE12AF16FDB3C69E3692D679755D3EC7ECD6DA6B5A92D6C90C
          0CEC591189277B12D9EA38C44337A2AA2AB2AB651926B95CD69CF77CD16ADA26
          DDE36F9B6CA965755D374D52BB7169F328BD796DEECAF7D5A4ACEFF2563CE7F6
          AEF08F85FE0FFC44F027C3AF0FF81F588BC23E2B92E754D7B4BF07E9C3ED1AC2
          DB27C904815D0F9459B2F86E5411D0D66EBF6D69E1EF1D78475CF849F03FE25F
          827C45A7EA70437817C3F1E9FA7EA160CC1678EE76CBB58053B95882410306BD
          A75AFD9B3C6DF147C336375E2AF1B68D6FE38F0DDE0BCF0F6BDA068ED6EB62C1
          4A3ACB14B2C8264901C3A6546338C1C11A3E19F859F17B5CF1569973E30F889A
          1C3A4E932898D97867467B36D5187417124D2CA421EE91819FEF5614F32A50A5
          18F3A938A6A5773B49BBEB64BDEBA696B67A745666D2CBEA4AAC9A838A934E36
          50BC52B697BE96777A5D3BF577478CFEC57FB2FE93F1734DF1078A7C75BBC4BF
          D97E2BD4D741D3AE5D9ACF4B55B827CD11E76B4ACDFC6C09000031593F0DBC53
          E13D63E01E87E11D7BC1FA8FC4AD7B57F116AD73A6F87ED997F78B15CC9BA59D
          A47589615E065C919E00278AFA97E00FC186F821E09BED1DB51FED2179A9DDEA
          225F27CBD9E7C85F663273B738CF7AF2AD37F61AD6FC016FA1EADE11F1A41A77
          8C3C3B737ED05CDE69BF68B1BEB6BB98CAF6D3C22456C02461D1C10477E947F6
          B52AD5AA3AB51A5CC9C3E249594BB2BA4DB57B6AEF7F32BFB2EAD2A34FD9435B
          353D9B7771EEECDA49DAF74BF03C8756D32FFE0D7C74F04DDE95F082E7E10C7E
          2296E749D48D9EAB6571A6EA909818AAC9140F9F31586558A71EB5EE1FB199CF
          EC7FF0FF00FEBD6E3FF4A1EAAEBBFB2478F3E2CF8F7C2FE26F1CFC40D3E7BAF0
          BDD49716BA568FA4BDB69AA1E328490F2BC8F273F798E00E8BDEBBAF861F0A1B
          E077C1DF0D7851AFBFB49B478A58CDCF97E5F9BBA42F9DB938FBD8EBDAB9F36C
          C28D6C2469A9273BC6F6E66B4E7EB2BB764D75F25A236CAF035A962A53716A16
          76BF2ADF93A46C95ECFA7AEACFC7BFF82E37FC126BE255B7ED35E26F8B1E0FD1
          2F3C53E1AF16DC0BCBA5B14335C584E5407DE839D9C0C115F0AD87ECADF14147
          CDE04F15291DCE9D2FF857F549FF0009EE93FF003F7FF909FF00C28FF84F749F
          F9FBFF00C84FFE15EE65BE2262B0B868E1E7494B95593BB5A2D1773D8A9838CB
          A9FCB9D87ECC1F12D08FF8A1FC4FEE3FB3E5E3F4ADCD3BF66CF88CBF7BC13E27
          51EFA7C9C7E95FD387FC27BA4FFCFDFF00E427FF000A3FE13DD27FE7EFFF0021
          3FF85777FC450ADFF40EBFF027FE470D5C9613FB5F81FCFCFEC93FF04E9F8A5F
          B457C4FD334A5F0AEB1A5E96675FB7EA37903430DB4591B892C3EF63A01D4D7F
          41BE11F0EC5E11F0B69FA5C24B45A7DB476EA4F70AA067F4A83FE13DD27FE7EF
          FF00213FF851FF0009EE93FF003F7FF909FF00C2BE4F8938A2BE71283A91518C
          6F64B5D5EEEFF237CBF2BA784E671776CD8A2B1FFE13DD27FE7EFF00F213FF00
          851FF09EE93FF3F7FF00909FFC2BE64F4CD8A2B1FF00E13DD27FE7EFFF00213F
          F851FF0009EE93FF003F7FF909FF00C2803628AC7FF84F749FF9FBFF00C84FFE
          147FC27BA4FF00CFDFFE427FF0A00D2D4676B5D3E79630ACF1C6CCA18ED5240C
          8C9ED5E1B6BFB4C6BD710C166D6B62BAA48F234CC90B3456A16347099CE1CB6F
          C8607EEA938CF15EBEDE3BD1DD4AB5D06561820C4FCFE9599E7783FEC0D6BF65
          D3BECCD279A62FB17C85FF00BD8DB8CFBD7A181C461E926ABD3E6EDE5BFF0056
          3C5CDB038CC438BC2D6F676BDFCF6FBB6B5FA5DD95F55E7F37ED0FAF4B6AF786
          1D1F4DFB3DC595A3E9F70ECD75319BCADD2211C151E671EBB0F229F7DFB47EA9
          75A66871E9D0E9726A9AA5A879E37662B6D29BD82D8060390312B1E79CAD6F6B
          BE13F0DF88BC4F15F5C6A931B58648A55B316D85531952A036CDC177283B41C7
          15D1DBEA1E14B5B879A382C639647F31DD6CC8666C839276F5C807EA01AEF963
          300945AA577BDBA6D6B3EFAEBFA9E452CB339939C6588B2D93766DEB7E64968B
          4B2B7ABB2EBE6F6FF13B58D2FC41AB6911C9A459CE27BA9EEEEEF6490DBCED14
          708648813F2E4B9381C003A1C9AC8F05FED09A8783FC1BE1C82DED5352B4B7B1
          B7B79E108C26F34DA79DC313CFF0F006307AF6AF61BED57C2FA9A85B98ACEE15
          65F3C092D0B7CFFDEE57AF4E7DA9915F784E0BD5B8482C56E10055905A10CA07
          0003B7B0E294733C2F272CE8DFBEBD7557BEFD7E43964398AA8A74B136B5EDA6
          C9B4ED6DB75AF7EA715F0D3C61A8789BE2F0B9BEBBD2AF1BFE11CF3C0B191B64
          5BA653B5B27AFA1FD0551D17F684D6F54962D3E67D16C751B8B9D8F2CAAFF66B
          34D9238CB83890B6CC0208EF9C57A369BAAF85F46776B38ACED5A4CEF30DA14D
          D9EB9C2F3508B8F088B092D7ECBA78B699FCC922165F23B7A91B719ACFFB430A
          E4DCA9696496DA5AFF002EBB75B6F6B9B4727C7C69C630AF6779396FADED657D
          FA5AFD2EECAF66B83B1F8E3AB78D2DAE63DDA2E9715ADB6665B891F76A197910
          B40463E5223C83D7E61F5AE7F57F8E77D71E0F8F4C8638DB4FBAD3BEC8C30FE6
          C127D93CCFBEC72D8E39C77EB9AF60B9D4FC2B7925BB4D0D8C8D6A31096B327C
          A1E8BF2F03E94D5BEF09ADC9985BD8F9CC3697FB19DC46318CEDE98E2B4A7996
          1232BAA3A7457D9FEBDEFF002D8C6AE45994E1CAF13AECDDB56BD2F65DADD77D
          CE5FC59F10F52F0F49E1DD26D26D1AD63BCD29AE9E6D44965CC6130A00EA4EE3
          F4AE7EE3F69ED50C767716F696BE4CA891CD0346C0C32321230D9E47008C0E87
          AD771AD58F863C41E2BB3D4AEE686E23B2B692D92DA4B52F19DCCADBB95E08DB
          C7D6B4A5D43C293DDFDA1E1B169B684DE6D0EEC0E00CEDED514F19838C22A74B
          99D9DFD5B7FA5BD2DEA695B2BCD27524E9D7E48DD5BAE892FBB5BE9D6FAEC8E0
          752F8F1AFE811E99F6A4D366B89E182E6E6086270234988DA0313D7AF407A56A
          7C4AF8D5AB786BC773695A7D8C7247690C72B798BCDC9724615B3818C75E7922
          BACB8D5BC2F773C524B1D9C9242BB6366B525A31E80EDE053B50D73C35AB5CC5
          35D2DADC4D01CC6F25A96643EC4AF159FD770BCCA4E97477F9DADF76BF7F91BB
          CAF31E49423897AB8D9DB549277D5DF7D1F6BAECD9C4F85FC5FAA685F0BF465D
          356DDAF352D5A5B5CDD6E658434F27271C9C7A5518BE3D6BDA5DA24DAA0D2516
          E84F145E44723149227DA091DC37A76AF484F14E811C71A2C90AAC4C5D145BB6
          15BAE47CBD79A8A7D6BC3373079722DAC91FCDF2B5A923E6EBFC3DE88E3F0EDB
          75295EEDBF3D6FA7E5F7798A593636308C68E21C79629256D2E92576BCECFEFF
          0023CB13F699F10CF70D6B1E9B6FF68B56977B98CEC9F6150147CDF29F9B9393
          8C533C49F1D7C517DF68B78E4D3747B88E68A4542865DB1165077383B7BE08E0
          8AF516BBF093C10C6D6FA7B476EDBE353664843EA06DEB47DB3C279B83F67B0F
          F4CE27FF00433FBEFF007BE5E7F1ADE39960934D505F9F5F3D3F0F238E591E6B
          28B8CB16F5F974B74B3DFADF5DDAB9C4BFC67F1201966D06DE1B8BD96CE2B897
          788E3F29771673D3E6E80575965E2593C61E0DD1F52961FB3C9771B33203900E
          40E3D8E323D8D5E9758F0BCFA77D8E48ECDED73BBC96B52533EB8DB8A75FDEDB
          F88638934D2B22DA82195576040718EA07A1E95C18AC451A9051A74F95DF7F2F
          EBF2F367B597E071546AB9D6ACE716B67DF4FCB5FBFC91FFD9}
        mmHeight = 13229
        mmLeft = 265
        mmTop = 794
        mmWidth = 67204
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 241036
        mmTop = 2117
        mmWidth = 10245
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 239978
        mmTop = 10848
        mmWidth = 11377
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 252413
        mmTop = 2117
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 252678
        mmTop = 10583
        mmWidth = 1778
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label101'
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 147373
        mmTop = 30956
        mmWidth = 6731
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line25'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 253736
        mmTop = 29369
        mmWidth = 265
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label23'
        Caption = '% Cober.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 239713
        mmTop = 30956
        mmWidth = 13123
        BandType = 0
      end
      object pplblSubtitulo2: TppLabel
        UserName = 'lblSubtitulo2'
        Caption = 
          'FECHA DE ASIGNACI'#211'N DE HOJA DE RUTA, DEL 01/05/2015 AL 20/05/201' +
          '5'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4572
        mmLeft = 0
        mmTop = 18785
        mmWidth = 112946
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label202'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 243153
        mmTop = 6615
        mmWidth = 8202
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 252678
        mmTop = 6615
        mmWidth = 19981
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'Modulo se Asociados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 0
        mmTop = 14288
        mmWidth = 33147
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 284163
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTODES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 794
        mmTop = 1058
        mmWidth = 24077
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'CIUDDES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 27517
        mmTop = 1323
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ZIPDES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 52917
        mmTop = 1323
        mmWidth = 23283
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'TOTCOLE'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 99748
        mmTop = 1323
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'COLEASIG'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 112184
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'COLEASES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 130440
        mmTop = 1323
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ASOASIG'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 159279
        mmTop = 1323
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'ASOASES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 174096
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'COBERCOLE'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 189707
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'AVANCOLE'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 207963
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'AVANASO'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 254530
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'ASIGCOL'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 223309
        mmTop = 1058
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText11'
        DataField = 'ASIGASO'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 270405
        mmTop = 1058
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText13'
        DataField = 'CODUSUAS1'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 77788
        mmTop = 1588
        mmWidth = 19315
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 26194
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 52123
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line102'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 76994
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 99484
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 110596
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 127000
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 143669
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 170921
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 187590
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 204788
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 220928
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 238125
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine49: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 268023
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText14'
        DataField = 'TOTASO'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
      end
      object ppLine50: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 158221
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine51: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 253736
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText16'
        DataField = 'COBERASO'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 239448
        mmTop = 1058
        mmWidth = 12171
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object PPUSUARIOIMP1: TppLabel
        UserName = 'Label21'
        Caption = 'USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 794
        mmTop = 1323
        mmWidth = 15875
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 11906
      mmPrintPosition = 0
      object ppShape15: TppShape
        UserName = 'Shape8'
        mmHeight = 5292
        mmLeft = 99484
        mmTop = 0
        mmWidth = 88371
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'TOTCOLE'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 100277
        mmTop = 1058
        mmWidth = 8996
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'COLEASIG'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 110331
        mmTop = 1058
        mmWidth = 13758
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'COLEASES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 127529
        mmTop = 1058
        mmWidth = 13758
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'TOTASO'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 1058
        mmWidth = 13758
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'ASOASIG'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 156634
        mmTop = 1058
        mmWidth = 13758
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'ASOASES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 172509
        mmTop = 1058
        mmWidth = 13758
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DBPP1: TppDBPipeline
    DataSource = DM1.dsQry1
    UserName = 'DBPP1'
    Left = 520
    Top = 472
  end
  object PPD1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = RepResumenColegio
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 336
    Top = 472
  end
  object RepResumenAsesor: TppReport
    AutoStop = False
    DataPipeline = DBPP1
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
    Template.FileName = 
      'D:\Desarrollo DM\ASOCIADOS\FUENTES_CLIENTE_201501\FUENTES_CLIENT' +
      'E_201501\rptResumenAsesoriaPrevAses.rtm'
    DeviceType = 'Screen'
    OnPreviewFormCreate = RepResumenAsesorPreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 424
    Top = 472
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBPP1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape6'
        mmHeight = 12171
        mmLeft = 0
        mmTop = 23813
        mmWidth = 99748
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape4'
        mmHeight = 12171
        mmLeft = 201613
        mmTop = 23813
        mmWidth = 64029
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape3'
        mmHeight = 12171
        mmLeft = 143669
        mmTop = 23813
        mmWidth = 58208
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape1'
        mmHeight = 12171
        mmLeft = 99484
        mmTop = 23813
        mmWidth = 44450
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label1'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 28310
        mmTop = 30692
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label2'
        Caption = 'Provincia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 56621
        mmTop = 30692
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label3'
        Caption = 'Distrito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 83608
        mmTop = 30692
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label4'
        Caption = 'Asesor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 30692
        mmWidth = 11113
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label6'
        Caption = 'Colegios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 113771
        mmTop = 25400
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label7'
        Caption = 'Asesorado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 114565
        mmTop = 31221
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label8'
        Caption = 'Asignado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 100542
        mmTop = 31221
        mmWidth = 13335
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape2'
        mmHeight = 265
        mmLeft = 99484
        mmTop = 29369
        mmWidth = 102394
        BandType = 0
      end
      object ppLine23: TppLine
        UserName = 'Line2'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 114300
        mmTop = 29633
        mmWidth = 265
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label9'
        Caption = 'Docentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 165365
        mmTop = 24871
        mmWidth = 14288
        BandType = 0
      end
      object ppLine24: TppLine
        UserName = 'Line3'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 158221
        mmTop = 29633
        mmWidth = 265
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label10'
        Caption = 'Asignado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 30956
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label11'
        Caption = 'Ases/Afilia.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 158750
        mmTop = 30956
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label13'
        Caption = 'Colegios'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 203465
        mmTop = 25400
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label15'
        Caption = '% No Exito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 248709
        mmTop = 31221
        mmWidth = 15706
        BandType = 0
      end
      object ppLine25: TppLine
        UserName = 'Line4'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 185473
        mmTop = 29633
        mmWidth = 529
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label16'
        Caption = 'Docentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 232834
        mmTop = 25665
        mmWidth = 14288
        BandType = 0
      end
      object ppLine26: TppLine
        UserName = 'Line6'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 218017
        mmTop = 23813
        mmWidth = 265
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label17'
        Caption = '% Pend.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 234686
        mmTop = 30956
        mmWidth = 12065
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label18'
        Caption = '% Avance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 202936
        mmTop = 30692
        mmWidth = 14023
        BandType = 0
      end
      object ppLine27: TppLine
        UserName = 'Line7'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 26194
        mmTop = 24077
        mmWidth = 265
        BandType = 0
      end
      object ppLine28: TppLine
        UserName = 'Line8'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 52123
        mmTop = 23813
        mmWidth = 265
        BandType = 0
      end
      object ppLine29: TppLine
        UserName = 'Line9'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 76994
        mmTop = 23813
        mmWidth = 265
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label19'
        Caption = 'REPORTE DE AVANCE DE HOJA DE RUTA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Black'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        mmHeight = 6879
        mmLeft = 94456
        mmTop = 7408
        mmWidth = 117475
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D616765EA1D0000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108002F00FD03012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FA9F
          FE0AADFF000587F1A7C33F8E5AD7C35F879711E86BE1F716F7DA92AEEB9926C0
          2CAA4F0A064723935F24E95FF0547F8F12B7EF3E2978A0F3DE75FF000AE3BFE0
          AA77DB3FE0A39F1717FEA3EE07AFDC4AC1F08FECCBF10522D0F57D63C0BE30B1
          F0CEA377044DA94BA5CD1C06391D5776F2B80083C13C57F4564D94E5787CBE8B
          9D385E514EED26DB6937BEFE87E7B99D4C4CEB4ED37BBD9B565F23DF743FF829
          7FC6CB82BE67C4AF1237AE665FF0AEDFC3FF00F0511F8BD75B777C40F1039EE0
          CC3FC2BC37E247ECDDAF41FB45F8CBC2BF0FFC33E23F11587866ECC58B3B592E
          DE140A08DECA3DCF5A77C35F851E3AF191BEFEC8F08789B513A4394BD16FA74A
          FF006461D55C63861DC75AF4E9E17299D353F674D2693D6315A3DAFDAE7C4E65
          4B31BB50A93F94A5FE67DB9FB3BFFC149FC75E1EF15D8AEBFAD4BAF69734A16E
          16ED81655240E1B1C63935FA65A56A31EAFA6DBDD43CC7711AC887D411915F81
          7E1CF103DBDCF972EF8648C9578DC6D6523B11D88AFDDCF852FE67C34D058670
          D6109E7FDC15F99788F95E170CE8D6C3C145CB993B2B276B5B45EA7D078678CC
          74E788C362AA39C63CAD7336DABDEFABD6DA1D0515CCF8E3E34783FE195E5BDB
          F893C55E1DD06E2EFF00D445A86A315B3CBDBE50EC09FC2BE48F87BFF0515F18
          F8C3FE0AD1AD7C133168B27836C6CA4BAB7B88A2CDC4988E3653BF3820EF3D2B
          E0F0393E2B170A95292D211736DE9A2B5EDDDEA7E8D8CCDB0F869C2151EB3928
          AB6BABDAFDB63EDDA2B93F13FC79F03F827C47168FACF8CBC2FA4EAD31023B3B
          CD56082E189E9F23306E7E9CD6A78A7E22787FC0D656F73ADEBBA3E8F6F7476C
          12DF5EC76E931EB852EC037E15C1EC2AE9EEBD76D1EBE9DCEEF6D4F5F7969BEB
          B7A9B14572BAB7C73F04E8179756F7DE30F0BD94F63B3ED31CFAAC11B5BEF04A
          6F0CC36EE0AC467AE0D5A8FE2BF85E6D524B14F12684F790DA0BF9215BF88C89
          6E718988DD9119C8C31E0E7AD3FABD5B5F95FDCC5EDE9EDCCBEF3A0A2B94F0E7
          C78F03F8C359FECDD27C65E15D535019FF0045B4D5A09A6E3AFC8AE4FE957EFB
          E26786F4CF12368D73E20D0EDF5858CCC6C65BE892E42052E5BCB2DBB68505B3
          8C6013D28961EAA7CAE2EFBECF6EE0ABD36B99495B6DFA9B94572FE18F8DFE0B
          F1B586A177A3F8B7C33AADAE9209BE9AD3538668ECC0EA646562107079381C54
          DE02F8BDE13F8A905C49E19F13683E218ECDB6CEDA6DFC574213FED6C63B7F1A
          2587AB14DCA2F4DF47A7A846BD36D2525AEDAEFE8745457217FF00B41F8074AD
          77FB2EEBC6FE11B6D4B76CFB24BAC5BA4DBBA63617CE7DB15D723ACA8ACAC195
          864107208A99D29C2CE69ABF74546A42775169D85A2B3F54F16E95A1A235EEA7
          A7D9AC92794867B848C33FF74648C9E0F1D69DAD789B4DF0DD9ADC6A3A858D85
          BB90AB2DCCEB12313D002C40A9E493D96E3E78F72F514D4B88E4816557568D97
          70707E523AE73E95534AF12E9DAECB2A58EA16578F09C48B04EB218CFB804E3F
          1A5CAF71F32D8BB4552D73C49A77866D966D4AFECB4F859B6AC9733AC2A4FA02
          C40CD3356D51DB4799B4D9AC64BC781A4B5F3A4FDD39C7CA4E39DB9C648ED4D4
          589C923428AE7FC37E24B9D2FC05A75EF8B2EF43B1D41A0437B25BCFB6C84A47
          3E5B39CEDCF4CF35CFFED01F1FEC3E067C324F1298EDF53865BBB7B68D12E963
          12096454DC1B9040CE78F4AD69E1EA54A8A9415DB765E6FD4CE788A70A6EA4DD
          92577E48F40A2ABD96B169A944F25BDD5BDC471FDF68E40C17EA41A8744F13E9
          BE25491B4DD42C750585B6486DA759421F43B49C1FAD65CAF7B1A7322F51556E
          75BB3B5B632C9776B1C7BB607795557774C673D73DAB17E1E6ADAE3785A6B8F1
          5C9A1437D1CF2E5B4E958DBA4218EC259F9DDB71BBB6734D41B8F309D45CDCA7
          49587E33FF00976FF817F4A9A6F15D9DF786EFAFB4DBCB3BE5B585DC3C12ACA9
          B9549C12A4FA579D7C0EF89DA87C65F807E13F136A8B047A86AD0CD24CB0AED8
          C159590607D1455FD5E7ECDD5E89A5F369B5F9323DBC3DA2A7D5A6FE49A5FAA3
          F203C6FA6D86B7FF0005CAF8ADF68B58352D534EBBD4AFB44B19977ADDEA315B
          2B40BB49C310C090B8392A38AF14FD98FF006BFF008C177FB5DF87EF6DFC4DE2
          8D5BC4BAB6B515ADDE9F717524AB761A5024864809DBB40CFCA46171DB1581FF
          000551F185FF0083FF00E0AA3F16752D2EFAE74DD4F4EF1334F6B756D218E582
          4544219581C8228D47FE0A99F167C43A1DCC3F6AF08E9FAD6A101B6BEF1269FE
          17B2B4D7EFA36186592F1104872382C30C7B9AFE84C2E0AA4F0B4E518466A54E
          11F79DADA7A3BA77D76775F77CF62695A6DDDAD6FA1F56FF00C14DBE2DEA5E10
          D2F416F0AEB33E9367E22D7756D4EF9F4CB8310BCB98EE3CB56675396D817032
          4818E2B23F6C7FDAB3C756FE1DF83B343E29D56CE49BC296BAB4D25A5C181AE6
          ED89CCD214237B9C0E4F35F17EBFF1D35BF1E780FC33E1CD4A7B79B4BF09A4C9
          60163C4AA2572EE5DB24B12DDCD745E35F8E7ADFC57B1F0EDAEB135B347E17D3
          23D234FF0026211E2DD33B431CFCCDCF5AEAC164AA946946A252E472BBB6B677
          B74ED6B9E0E3A5CCA5CB7574BEF56EC7D4BFB6BEB3143FB448BC558E3B8D5F49
          B0D42E8A0C09A69605677EDCB1249AFDADF85772D6DF06B43995199A3D2A270B
          9FBC4460FEB5FCE8F8D3E3B6B5F183C536DAAEB925B497905A4162A608844A63
          850226541E4ED0327BD7F461F050EEF843E1938C674CB73D7FE99AD7C0F88546
          5470583A53DE3CCBEE513AB8528A58CC4548FDAB7E6CFC8CFF00827D7ECBDA0F
          FC1583F6A4F8BBE2CF8C3AAEADAADC68B7A62B7D2E0BE7B63186770AD9521822
          85015460707AF4AE13E1FF00867FE184BFE0A7DF16AD3C29AA5D6B6DE07F09EA
          B26973DD49E74D095863F2D1CE79316467FDCE82BED6F8E5FF000440BAD47F68
          5D4FE20FC21F8ADAF7C28BBF1048D26A56D6492EDCBFDFF29E39508527276364
          03D08ED7FF0065DFF821EE93FB377ED3975E3C9BC757DE2DD3751D32E34EBED3
          F54B2DF3DF9B845599E49BCCE7710C71B7F8BAF7AF5E7C5D96B8D6A8F12DD29D
          2518D0E595A2D25757B72EB67AADEFABD11F350E17CC14A94161D2A90A8E52AD
          CC9B926DD9DAF7D2EB47B5B4DD9F9D1FB38780341F8FDF027C47E20F157C20F8
          F1F13BC77E229EE5ADBC51A1453DC59D94F93B36ED24390D82E1C13D40C7156B
          F6A9D5FE2959FF00C1343C05E1FF00899A3F8AB42D4BC33E2EBBB1D346B9692D
          ADD4D666DE274E24C12AA5990761B71DB8FBAAFBFE0887E35F85DAF6B569F06F
          E3F78A3E1F782FC43334B73A30595BC8DDC108D1CA81BE5E33856C000935DC7E
          D21FF04736F8F3FB2BF807E19FFC2CED799BC137525D1D5F57B73A85C5E6F006
          C03CC5D88B8F9465B03039EB5DB538DB2A58CA557DAA953F68A493551CA9AE56
          B66B963BA8F2C2E9EE71C783F32FAAD5A7EC9A9F272DD382537CC9EE9DDED7BC
          ACD6C7C47FF0501FF827B43FB1C7FC13AEC7C5B7DE26D6BC45E36F1EEBDA64BA
          D4F7520F223716F76F8887DEEB2364B31CFA0E95E9DE0CFD947E1A7EC4DFB025
          F7C54F8D9E26F18789355F8B1A0DAE9B3D8D8CE81879BB2E2282DCB0C8641129
          2ECDB404385E82BED8FDBFFF00E09F9FF0DC3FB33E87F0F17C51FF0008EFF635
          FDBDF7DB8D97DA7CDF2A2923DBB37AE33BF3D78C537F6A0FF826E687FB537EC6
          1E1FF84BAC6B573673F8620B5FECFD62183734771044620E622DCAB296CAEEE3
          23078AF9BA3C691AD85A147195DA72AADD571566A0B9796CEDA2D1691D745A6C
          7BD5384654B135AAE1A8A7CB492A7CCEE9CDDF9AEAFABD5EAF4D59F907FB5AFC
          2AD2BE137C1CF0BFC44F02FC1FF8BFF09266D46092C75ED5757375697A8C8D22
          37CC15E294950CB8C02037B63D7FE327C358FF006C8FF82C4FC3DD07C49A96A5
          616BE30F0B69B75AA4B6337932CA0E8FE74881B3C2BE0A9FF6588FA7D2BF11BF
          E0885F123E3BFC1FD37C2DE3CFDA3B5ED7ADF409E33A55AB6923EC36D12214CB
          AF981E493180199BE51B873BB8F56F09FF00C1285BC2FF00B71F82BE327FC26D
          E70F07E8B6FA40D2CE9A7FD24C5606D3CCF33CCF9739DF8DA71D33DEBDDAFC65
          97C693947109D58D3AD18C92A8F5928F22E69ABBD575D13EC8F1E8F0963A5514
          5D06A94A749B4FD9AD23CCA6ED076D9F4D5AEECFCFABBFF827CF867C27FF0005
          906F80BA7EBDE26B1F87BAE40B717B0C77E5669E0167F6BF21DC1F997CD41C91
          9007A8C8ECFE01783BC3FF00F04D4FF82D9F897C33A5EB77D65F0EF4BF0E5EDF
          EA1F6D94CBE5DA0D2FEDAEAF8FBFB1D3E5E33F281D735F786ABFF04D89353FF8
          299DAFED11FF00097045B5B5FB30D13EC04EEFF4336D9F3BCCF53BB1B3B63E98
          3F163FE091FA6FC68FDBAFC43F1775CF14B4BA3F897439F42BBD063B22B218A5
          D38D9165B8F338619DE3E4E0802BCE971AE1F111F618CAEDD39617966ACF5AD7
          DF6D656DA5B799DF1E11C4507EDB0B4529C711CD1775A52E9D748DF78EFE47E7
          0F8CFE13FC29F8E7F04BC77E32F86BF027E374FA4E9EB7B716DE313AC2B41692
          C61A4CBDBE361853F8B6B1654079C8E3F46FFE0841F13B59F89FFF0004EDF0EC
          9AE6A136A571A3DFDDE990CB33EF90408E0C6A4F70A1F68F40A076C0F31F03FF
          00C1117E207823E1A7887E1BD9FED19E22B2F85DAA25CF95A35A696B1BB34A3E
          ECAE64388C9E5D1080E370C2EEC8FA8BFE09DBFB1A1FD84BF67183C05FF0902F
          89962BF9EF85E8B4FB367CDDBF2EDDEFD36F5CD7271771065D8BCAE585A15BDA
          49548B85FDA36A3CAD3BB9AB27B5D46CBB1D5C2F91E3B0B98C7135697B34E125
          2B7B34B9AE9AB283BB5BD9CAEFB9E71FB1A7ECB1E0DF8A565F11B5EF186956BE
          2EBCBAF1CEBD6B6B16AC82EA1D2EDD6F641E5C28D954DCC198B001893C9C2801
          9FB207ECADE15F17F8B7E265BF8AEDCF8D34DF05F89A6F0E786ACB5B3F6DB7D0
          AC0430DC79312C991F7AE19771CB6C48D738502BE83FD9FF00E0D7FC28EF0F6B
          7A69D45752FED7D7F51D743795E59885DDC3CDE5E3273B776DCF7C6703A52FC1
          6F82FF00F0A8B57F1C5D7F687DBBFE131F10C9AEEDF2BCBFB2EF8208BCBCE4EE
          C7939CF1F7B18E2BE37119D4E4EBF2547695B977E8D6DDB4BF6BABF73EAF0F94
          412A1CF4D5D5F9B6EA9EFDF5B77B1F3769BE20F087C13D33E2D7C31D6F4CD5BC
          43E11B6F135869FE19F0D59B34B757125E5AA5C7D86025D76C424491F0CCA889
          BF2428C0E57E2FF86AF3E0DDBF87FC59A0FC03BAF855A8E8DAD58247ADE97AC6
          9CF1F932DC471C90DDC30C81A489D19948C3E09078C647BC7C43FD8865F1778F
          3C49E2BD3BC55368BE24BDD72C3C43A25DA5989934BB8B5B56B52B22336268E5
          8DDD5972A70FC10403599F133F654F89FF00B43F87ADEC3C75F11B42B3B1D3EF
          AD6FE1B2F0EE8D25B4177241324A1AE1E599DD97E5E110A80D824B6315E8E1F3
          2C2A9C26EA2B3B73A6E7ABE58A95A31B4657D6EE57BBBDF4B5FCFAF97E25C250
          507757E4B7268B99B5772F795B4B28DACAD6D76CEFD9DBE10F86FF006A6F13F8
          F3C69F10B4FB1F176AD63E28BFD06CAC7528C5C5B6876B6CE238E38E16CA2B48
          312B3E373798BCE000391F117C21D17E077ED9B71A4F86F529ADB47BAF877AC5
          DA787C4E5A0D29CCB002F0A93FBB4931F7461728481D6B4BE36EB1F0EFC1BF1E
          35FBE6F1A7C43F81FE24BE318BFBDB5B554D2BC4CA10059C09A196DE49147C9B
          C6D906307200AA7FB387C1DD2FE2AFC78D73C53E1A93C4DA86831F86AE7449BC
          5DAF877BCF11DE5CBC64B26F084C30A4781B156305F0A3EF1AD2329C233C4CE5
          28D370D22D3E55749249FC3E9CB793EA96A4CA3094A3878462EA296B24D5DEB7
          6DADFD79AC9746F439DF0E7C32D6752F871F063C5DAC7C3FBAF8BDE05B1F04DB
          DA4DA25BCD14B73A65D32C67ED6B6D3B2C7704A02B8DDBD73C039355FE39F833
          E08FC49FD953556F07F8560B1934BF1369EBA8689AA584B6B75A1DC493A2B235
          ACDFEA77A13F700461C826BDFB48FD9CBE23FC2CF07F8534FF0003FC46D3E18F
          C39A35BE93369DACE882E74FBC312EDF3D7CB91268DCF71BD97A703AD67DD7EC
          3B79E35F0378DBFE12AF16FDB3C69E3692D679755D3EC7ECD6DA6B5A92D6C90C
          0CEC591189277B12D9EA38C44337A2AA2AB2AB651926B95CD69CF77CD16ADA26
          DDE36F9B6CA965755D374D52BB7169F328BD796DEECAF7D5A4ACEFF2563CE7F6
          AEF08F85FE0FFC44F027C3AF0FF81F588BC23E2B92E754D7B4BF07E9C3ED1AC2
          DB27C904815D0F9459B2F86E5411D0D66EBF6D69E1EF1D78475CF849F03FE25F
          827C45A7EA70437817C3F1E9FA7EA160CC1678EE76CBB58053B95882410306BD
          A75AFD9B3C6DF147C336375E2AF1B68D6FE38F0DDE0BCF0F6BDA068ED6EB62C1
          4A3ACB14B2C8264901C3A6546338C1C11A3E19F859F17B5CF1569973E30F889A
          1C3A4E932898D97867467B36D5187417124D2CA421EE91819FEF5614F32A50A5
          18F3A938A6A5773B49BBEB64BDEBA696B67A745666D2CBEA4AAC9A838A934E36
          50BC52B697BE96777A5D3BF577478CFEC57FB2FE93F1734DF1078A7C75BBC4BF
          D97E2BD4D741D3AE5D9ACF4B55B827CD11E76B4ACDFC6C09000031593F0DBC53
          E13D63E01E87E11D7BC1FA8FC4AD7B57F116AD73A6F87ED997F78B15CC9BA59D
          A47589615E065C919E00278AFA97E00FC186F821E09BED1DB51FED2179A9DDEA
          225F27CBD9E7C85F663273B738CF7AF2AD37F61AD6FC016FA1EADE11F1A41A77
          8C3C3B737ED05CDE69BF68B1BEB6BB98CAF6D3C22456C02461D1C10477E947F6
          B52AD5AA3AB51A5CC9C3E249594BB2BA4DB57B6AEF7F32BFB2EAD2A34FD9435B
          353D9B7771EEECDA49DAF74BF03C8756D32FFE0D7C74F04DDE95F082E7E10C7E
          2296E749D48D9EAB6571A6EA909818AAC9140F9F31586558A71EB5EE1FB199CF
          EC7FF0FF00FEBD6E3FF4A1EAAEBBFB2478F3E2CF8F7C2FE26F1CFC40D3E7BAF0
          BDD49716BA568FA4BDB69AA1E328490F2BC8F273F798E00E8BDEBBAF861F0A1B
          E077C1DF0D7851AFBFB49B478A58CDCF97E5F9BBA42F9DB938FBD8EBDAB9F36C
          C28D6C2469A9273BC6F6E66B4E7EB2BB764D75F25A236CAF035A962A53716A16
          76BF2ADF93A46C95ECFA7AEACFC7BFF82E37FC126BE255B7ED35E26F8B1E0FD1
          2F3C53E1AF16DC0BCBA5B14335C584E5407DE839D9C0C115F0AD87ECADF14147
          CDE04F15291DCE9D2FF857F549FF0009EE93FF003F7FF909FF00C28FF84F749F
          F9FBFF00C84FFE15EE65BE2262B0B868E1E7494B95593BB5A2D1773D8A9838CB
          A9FCB9D87ECC1F12D08FF8A1FC4FEE3FB3E5E3F4ADCD3BF66CF88CBF7BC13E27
          51EFA7C9C7E95FD387FC27BA4FFCFDFF00E427FF000A3FE13DD27FE7EFFF0021
          3FF85777FC450ADFF40EBFF027FE470D5C9613FB5F81FCFCFEC93FF04E9F8A5F
          B457C4FD334A5F0AEB1A5E96675FB7EA37903430DB4591B892C3EF63A01D4D7F
          41BE11F0EC5E11F0B69FA5C24B45A7DB476EA4F70AA067F4A83FE13DD27FE7EF
          FF00213FF851FF0009EE93FF003F7FF909FF00C2BE4F8938A2BE71283A91518C
          6F64B5D5EEEFF237CBF2BA784E671776CD8A2B1FFE13DD27FE7EFF00F213FF00
          851FF09EE93FF3F7FF00909FFC2BE64F4CD8A2B1FF00E13DD27FE7EFFF00213F
          F851FF0009EE93FF003F7FF909FF00C2803628AC7FF84F749FF9FBFF00C84FFE
          147FC27BA4FF00CFDFFE427FF0A00D2D4676B5D3E79630ACF1C6CCA18ED5240C
          8C9ED5E1B6BFB4C6BD710C166D6B62BAA48F234CC90B3456A16347099CE1CB6F
          C8607EEA938CF15EBEDE3BD1DD4AB5D06561820C4FCFE9599E7783FEC0D6BF65
          D3BECCD279A62FB17C85FF00BD8DB8CFBD7A181C461E926ABD3E6EDE5BFF0056
          3C5CDB038CC438BC2D6F676BDFCF6FBB6B5FA5DD95F55E7F37ED0FAF4B6AF786
          1D1F4DFB3DC595A3E9F70ECD75319BCADD2211C151E671EBB0F229F7DFB47EA9
          75A66871E9D0E9726A9AA5A879E37662B6D29BD82D8060390312B1E79CAD6F6B
          BE13F0DF88BC4F15F5C6A931B58648A55B316D85531952A036CDC177283B41C7
          15D1DBEA1E14B5B879A382C639647F31DD6CC8666C839276F5C807EA01AEF963
          300945AA577BDBA6D6B3EFAEBFA9E452CB339939C6588B2D93766DEB7E64968B
          4B2B7ABB2EBE6F6FF13B58D2FC41AB6911C9A459CE27BA9EEEEEF6490DBCED14
          708648813F2E4B9381C003A1C9AC8F05FED09A8783FC1BE1C82DED5352B4B7B1
          B7B79E108C26F34DA79DC313CFF0F006307AF6AF61BED57C2FA9A85B98ACEE15
          65F3C092D0B7CFFDEE57AF4E7DA9915F784E0BD5B8482C56E10055905A10CA07
          0003B7B0E294733C2F272CE8DFBEBD7557BEFD7E43964398AA8A74B136B5EDA6
          C9B4ED6DB75AF7EA715F0D3C61A8789BE2F0B9BEBBD2AF1BFE11CF3C0B191B64
          5BA653B5B27AFA1FD0551D17F684D6F54962D3E67D16C751B8B9D8F2CAAFF66B
          34D9238CB83890B6CC0208EF9C57A369BAAF85F46776B38ACED5A4CEF30DA14D
          D9EB9C2F3508B8F088B092D7ECBA78B699FCC922165F23B7A91B719ACFFB430A
          E4DCA9696496DA5AFF002EBB75B6F6B9B4727C7C69C630AF6779396FADED657D
          FA5AFD2EECAF66B83B1F8E3AB78D2DAE63DDA2E9715ADB6665B891F76A197910
          B40463E5223C83D7E61F5AE7F57F8E77D71E0F8F4C8638DB4FBAD3BEC8C30FE6
          C127D93CCFBEC72D8E39C77EB9AF60B9D4FC2B7925BB4D0D8C8D6A31096B327C
          A1E8BF2F03E94D5BEF09ADC9985BD8F9CC3697FB19DC46318CEDE98E2B4A7996
          1232BAA3A7457D9FEBDEFF002D8C6AE45994E1CAF13AECDDB56BD2F65DADD77D
          CE5FC59F10F52F0F49E1DD26D26D1AD63BCD29AE9E6D44965CC6130A00EA4EE3
          F4AE7EE3F69ED50C767716F696BE4CA891CD0346C0C32321230D9E47008C0E87
          AD771AD58F863C41E2BB3D4AEE686E23B2B692D92DA4B52F19DCCADBB95E08DB
          C7D6B4A5D43C293DDFDA1E1B169B684DE6D0EEC0E00CEDED514F19838C22A74B
          99D9DFD5B7FA5BD2DEA695B2BCD27524E9D7E48DD5BAE892FBB5BE9D6FAEC8E0
          752F8F1AFE811E99F6A4D366B89E182E6E6086270234988DA0313D7AF407A56A
          7C4AF8D5AB786BC773695A7D8C7247690C72B798BCDC9724615B3818C75E7922
          BACB8D5BC2F773C524B1D9C9242BB6366B525A31E80EDE053B50D73C35AB5CC5
          35D2DADC4D01CC6F25A96643EC4AF159FD770BCCA4E97477F9DADF76BF7F91BB
          CAF31E49423897AB8D9DB549277D5DF7D1F6BAECD9C4F85FC5FAA685F0BF465D
          356DDAF352D5A5B5CDD6E658434F27271C9C7A5518BE3D6BDA5DA24DAA0D2516
          E84F145E44723149227DA091DC37A76AF484F14E811C71A2C90AAC4C5D145BB6
          15BAE47CBD79A8A7D6BC3373079722DAC91FCDF2B5A923E6EBFC3DE88E3F0EDB
          75295EEDBF3D6FA7E5F7798A593636308C68E21C79629256D2E92576BCECFEFF
          0023CB13F699F10CF70D6B1E9B6FF68B56977B98CEC9F6150147CDF29F9B9393
          8C533C49F1D7C517DF68B78E4D3747B88E68A4542865DB1165077383B7BE08E0
          8AF516BBF093C10C6D6FA7B476EDBE353664843EA06DEB47DB3C279B83F67B0F
          F4CE27FF00433FBEFF007BE5E7F1ADE39960934D505F9F5F3D3F0F238E591E6B
          28B8CB16F5F974B74B3DFADF5DDAB9C4BFC67F1201966D06DE1B8BD96CE2B897
          788E3F29771673D3E6E80575965E2593C61E0DD1F52961FB3C9771B33203900E
          40E3D8E323D8D5E9758F0BCFA77D8E48ECDED73BBC96B52533EB8DB8A75FDEDB
          F88638934D2B22DA82195576040718EA07A1E95C18AC451A9051A74F95DF7F2F
          EBF2F367B597E071546AB9D6ACE716B67DF4FCB5FBFC91FFD9}
        mmHeight = 13229
        mmLeft = 265
        mmTop = 794
        mmWidth = 67204
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label20'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 241036
        mmTop = 2117
        mmWidth = 10245
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label201'
        Caption = 'Pagina:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 240242
        mmTop = 10319
        mmWidth = 11472
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 252413
        mmTop = 2117
        mmWidth = 17727
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 252678
        mmTop = 10054
        mmWidth = 1778
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line14'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 130704
        mmTop = 29898
        mmWidth = 265
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label5'
        Caption = 'Pend.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 132292
        mmTop = 31221
        mmWidth = 8340
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label22'
        Caption = 'Pend.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 176477
        mmTop = 30956
        mmWidth = 8467
        BandType = 0
      end
      object ppLine31: TppLine
        UserName = 'Line24'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 174096
        mmTop = 29633
        mmWidth = 265
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label23'
        Caption = 'No Exitoso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 186267
        mmTop = 30956
        mmWidth = 15346
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line20'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 233363
        mmTop = 29633
        mmWidth = 265
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label24'
        Caption = '% Avance'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 218811
        mmTop = 30956
        mmWidth = 14023
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 218017
        mmTop = 29633
        mmWidth = 47096
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line202'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 247650
        mmTop = 29898
        mmWidth = 265
        BandType = 0
      end
      object pplblSubtitulo1: TppLabel
        UserName = 'lblSubtitulo1'
        Caption = 
          'FECHA DE ASIGNACI'#211'N DE HOJA DE RUTA, DEL 99/99/9999 AL 99/99/999' +
          '9'#39
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 265
        mmTop = 19050
        mmWidth = 113506
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label203'
        Caption = 'Hora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 243153
        mmTop = 6350
        mmWidth = 8202
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 252413
        mmTop = 6350
        mmWidth = 19981
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Modulo de Asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial Narrow'
        Font.Size = 11
        Font.Style = []
        Transparent = True
        mmHeight = 4572
        mmLeft = 0
        mmTop = 13494
        mmWidth = 30607
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppShape13: TppShape
        UserName = 'Shape7'
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 265642
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText2'
        DataField = 'CIUDDES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 52917
        mmTop = 1323
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText3'
        DataField = 'ZIPDES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 77788
        mmTop = 1323
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText5'
        DataField = 'COLEASIG'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 100542
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText6'
        DataField = 'COLEASES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 116152
        mmTop = 1323
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText7'
        DataField = 'ASOASIG'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 145521
        mmTop = 1323
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText8'
        DataField = 'ASOASES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 159809
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText101'
        DataField = 'AVANASO'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 219340
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText13'
        DataField = 'CODUSUAS1'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 2381
        mmTop = 1323
        mmWidth = 19315
        BandType = 4
      end
      object ppLine35: TppLine
        UserName = 'Line10'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 26194
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine36: TppLine
        UserName = 'Line101'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 52123
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine37: TppLine
        UserName = 'Line102'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 76994
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine38: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 99484
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine39: TppLine
        UserName = 'Line15'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 114300
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine40: TppLine
        UserName = 'Line16'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 130704
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine41: TppLine
        UserName = 'Line17'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 158221
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine42: TppLine
        UserName = 'Line18'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 185473
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine43: TppLine
        UserName = 'Line201'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 233363
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line22'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 247650
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTODES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 27252
        mmTop = 1323
        mmWidth = 21167
        BandType = 4
      end
      object ppLine45: TppLine
        UserName = 'Line1'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6350
        mmLeft = 143669
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOPEND'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 131498
        mmTop = 1323
        mmWidth = 11906
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line23'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 173832
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText14'
        DataField = 'ASOPEND'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 174625
        mmTop = 1323
        mmWidth = 10583
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line19'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 5821
        mmLeft = 201613
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText9'
        DataField = 'ASOASESNOEXITO'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 187061
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText10'
        DataField = 'AVANCOLE'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 203730
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
      end
      object ppLine48: TppLine
        UserName = 'Line5'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6085
        mmLeft = 218017
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText11'
        DataField = 'PORASOPEND'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 234950
        mmTop = 1323
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText12'
        DataField = 'PORASONOEXIT'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 249503
        mmTop = 1058
        mmWidth = 12171
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object PPUSUARIOIMP2: TppLabel
        UserName = 'PPUSUARIOIMP2'
        Caption = 'USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 2381
        mmWidth = 14552
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppShape14: TppShape
        UserName = 'Shape5'
        mmHeight = 5292
        mmLeft = 99484
        mmTop = 0
        mmWidth = 102394
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'COLEASIG'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 100542
        mmTop = 1058
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'COLEASES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 113771
        mmTop = 1058
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'ASOPEND'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 126207
        mmTop = 1058
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'ASOASIG'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 142611
        mmTop = 1058
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'ASOASES'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 157957
        mmTop = 1058
        mmWidth = 14023
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'ASOPEND'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 173038
        mmTop = 1058
        mmWidth = 12171
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'ASOASESNOEXITO'
        DataPipeline = DBPP1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DBPP1'
        mmHeight = 3704
        mmLeft = 187061
        mmTop = 1058
        mmWidth = 12171
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
end
