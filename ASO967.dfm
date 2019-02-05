object FDocCon: TFDocCon
  Left = 239
  Top = 184
  BorderStyle = bsDialog
  Caption = 'Detalles por Tipo de Asociados'
  ClientHeight = 466
  ClientWidth = 744
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
  object lblNroRegEncontrados: TLabel
    Left = 7
    Top = 436
    Width = 139
    Height = 13
    Caption = '0 Registros encontrados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnSalir: TBitBtn
    Left = 659
    Top = 430
    Width = 78
    Height = 28
    Caption = 'Cerrar'
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
  object btnAExcel: TBitBtn
    Left = 567
    Top = 430
    Width = 78
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
  object dbgreporte: TwwDBGrid
    Left = 6
    Top = 153
    Width = 731
    Height = 270
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
  object dtgData: TDBGrid
    Left = 429
    Top = 428
    Width = 57
    Height = 33
    DataSource = DM1.dsReporte
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 4
    Width = 731
    Height = 148
    Caption = ' Filtrar Informaci'#243'n '
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 22
      Width = 83
      Height = 13
      Caption = 'Tipo de Asociado'
    end
    object Label2: TLabel
      Left = 99
      Top = 23
      Width = 3
      Height = 13
      Caption = ':'
    end
    object Label3: TLabel
      Left = 12
      Top = 48
      Width = 67
      Height = 13
      Caption = 'Departamento'
    end
    object Label4: TLabel
      Left = 98
      Top = 49
      Width = 3
      Height = 13
      Caption = ':'
    end
    object lblFiltrarPor: TLabel
      Left = 407
      Top = 49
      Width = 116
      Height = 13
      Caption = 'Filtrar por Departamento:'
    end
    object Label5: TLabel
      Left = 15
      Top = 120
      Width = 300
      Height = 13
      Caption = 'La informaci'#243'n no incluye a los Asociados Fallecidos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnProcesar: TBitBtn
      Left = 625
      Top = 87
      Width = 88
      Height = 28
      Caption = 'Procesar'
      TabOrder = 5
      OnClick = btnProcesarClick
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
    object dblcdAsoTipId: TwwDBLookupComboDlg
      Left = 106
      Top = 19
      Width = 48
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTAso
      LookupField = 'ASOTIPID'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdAsoTipIdExit
    end
    object rgTipDep: TRadioGroup
      Left = 529
      Top = 37
      Width = 184
      Height = 31
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        'Domiciliario'
        'Laboral')
      TabOrder = 4
      OnClick = rgTipDepClick
    end
    object dblcdDptoId: TwwDBLookupComboDlg
      Left = 106
      Top = 45
      Width = 48
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
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdDptoIdExit
    end
    object edtTipAso: TEdit
      Left = 157
      Top = 19
      Width = 231
      Height = 21
      Enabled = False
      TabOrder = 1
    end
    object edtDesDep: TEdit
      Left = 157
      Top = 45
      Width = 231
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object rgOrden: TRadioGroup
      Left = 14
      Top = 76
      Width = 511
      Height = 39
      Caption = 'Ordenar por '
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Nombre del Asociado'
        'DNI                           '
        'Centro Educativo      ')
      TabOrder = 6
      OnClick = rgOrdenClick
    end
  end
end
