object FPadronEstadisticas: TFPadronEstadisticas
  Left = 270
  Top = 165
  BorderStyle = bsDialog
  Caption = 'Estad'#237'sticas de actualizaci'#243'n'
  ClientHeight = 465
  ClientWidth = 912
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object rgest: TRadioGroup
    Left = 3
    Top = 1
    Width = 286
    Height = 64
    Caption = ' Tipo de reporte '
    ItemIndex = 0
    Items.Strings = (
      'Estad'#237'sticas de actualizaci'#243'n'
      'Registros inconsistentes'
      'Campos modificados')
    TabOrder = 0
    OnClick = rgestClick
  end
  object btnimprime: TBitBtn
    Left = 750
    Top = 430
    Width = 76
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 8
    OnClick = btnimprimeClick
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
  object btnsale: TBitBtn
    Left = 829
    Top = 430
    Width = 76
    Height = 28
    Caption = '&Salir'
    TabOrder = 9
    OnClick = btnsaleClick
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
  object rgtipinc: TRadioGroup
    Left = 291
    Top = 1
    Width = 494
    Height = 95
    Caption = 'Seleccione el campo'
    Columns = 3
    Ctl3D = True
    Items.Strings = (
      'C'#243'digo modular'
      'Cargo'
      'C'#243'digo de Pago'
      'Ugel'
      'Cuenta de Ahorros'
      'Regimen de Pensi'#243'n'
      'Centro laboral'
      'Apellidos y nombres'
      'Colegios'
      'Tipo de asociado'
      'Registros modificados')
    ParentCtl3D = False
    TabOrder = 1
    Visible = False
    OnClick = rgtipincClick
  end
  object dbgprevio: TwwDBGrid
    Left = 3
    Top = 152
    Width = 902
    Height = 272
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    OnTitleButtonClick = dbgprevioTitleButtonClick
  end
  object btnfiltrar: TBitBtn
    Left = 838
    Top = 118
    Width = 65
    Height = 28
    Caption = 'Filtrar'
    TabOrder = 3
    OnClick = btnfiltrarClick
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
  object dtgData: TDBGrid
    Left = 831
    Top = 39
    Width = 57
    Height = 33
    DataSource = DM1.dsReporte
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object btnaExcel: TBitBtn
    Left = 671
    Top = 430
    Width = 76
    Height = 28
    Caption = 'A Excel'
    TabOrder = 7
    OnClick = btnaExcelClick
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
  object btnVerErrores: TBitBtn
    Left = 575
    Top = 430
    Width = 89
    Height = 28
    Caption = 'Ver errores'
    TabOrder = 6
    OnClick = btnVerErroresClick
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
  object grpInconsistencias: TGroupBox
    Left = 291
    Top = 96
    Width = 494
    Height = 95
    Caption = 'Seleccione las inconsistencias'
    TabOrder = 2
    Visible = False
    object chklstInconsistencias: TCheckListBox
      Left = 8
      Top = 16
      Width = 481
      Height = 76
      BorderStyle = bsNone
      Color = 10207162
      ItemHeight = 13
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 67
    Width = 286
    Height = 78
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    object Label2: TLabel
      Left = 7
      Top = 22
      Width = 52
      Height = 15
      Caption = 'Departam.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 7
      Top = 54
      Width = 45
      Height = 15
      Caption = 'Tipo Aso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcddptoid: TwwDBLookupComboDlg
      Left = 59
      Top = 18
      Width = 47
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Departamento'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcddptoidChange
    end
    object edtdptodes: TMaskEdit
      Left = 110
      Top = 18
      Width = 170
      Height = 22
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dblcdTipoAso: TwwDBLookupComboDlg
      Left = 59
      Top = 50
      Width = 47
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Tipo Aso.'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTAso
      LookupField = 'ASOTIPID'
      MaxLength = 3
      ParentFont = False
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdTipoAsoChange
    end
    object edtTipoAso: TMaskEdit
      Left = 110
      Top = 50
      Width = 170
      Height = 22
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object ppbdereporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdereporte'
    Left = 799
    Top = 7
  end
  object pprregincon: TppReport
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
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 5
    Top = 432
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdereporte'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30692
      mmPrintPosition = 0
      object ppShape27: TppShape
        UserName = 'Shape27'
        mmHeight = 9525
        mmLeft = 11113
        mmTop = 19579
        mmWidth = 16934
        BandType = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        mmHeight = 9525
        mmLeft = 49213
        mmTop = 19579
        mmWidth = 70115
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        mmHeight = 9525
        mmLeft = 152929
        mmTop = 19579
        mmWidth = 21961
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        mmHeight = 9525
        mmLeft = 133615
        mmTop = 19579
        mmWidth = 19578
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        mmHeight = 9525
        mmLeft = 119063
        mmTop = 19579
        mmWidth = 14816
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label1'
        Caption = 'CODIGO DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 134673
        mmTop = 20638
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        Caption = 'CUENTA DE AHORROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 153988
        mmTop = 20638
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        Caption = 'CARGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 120121
        mmTop = 20638
        mmWidth = 10583
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        mmHeight = 9525
        mmLeft = 174625
        mmTop = 19579
        mmWidth = 25135
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        Caption = 'UNIDAD DE GESTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 175684
        mmTop = 20638
        mmWidth = 18785
        BandType = 0
      end
      object ppltituloincon: TppLabel
        UserName = 'ltituloincon'
        Caption = 'REGISTROS INCONSISTENTES : NOM_ARC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 11113
        mmTop = 14288
        mmWidth = 259028
        BandType = 0
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        mmHeight = 9525
        mmLeft = 200819
        mmTop = 19579
        mmWidth = 69850
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'DESCRIPCION DE LA INCONSISTENCIA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7409
        mmLeft = 201877
        mmTop = 20638
        mmWidth = 32544
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 7408
        mmLeft = 12171
        mmTop = 20638
        mmWidth = 8467
        BandType = 0
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        mmHeight = 9525
        mmLeft = 27781
        mmTop = 19579
        mmWidth = 21697
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 50271
        mmTop = 20638
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label104'
        Caption = 'CODIGO MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 28840
        mmTop = 20638
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label3'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 231246
        mmTop = 1323
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label4'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 231246
        mmTop = 5556
        mmWidth = 10319
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 231246
        mmTop = 9525
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label5'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 245798
        mmTop = 1323
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 245798
        mmTop = 5556
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label7'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 245798
        mmTop = 9525
        mmWidth = 1588
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 249503
        mmTop = 1323
        mmWidth = 20638
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
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 249503
        mmTop = 5556
        mmWidth = 16933
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
        mmHeight = 3704
        mmLeft = 249503
        mmTop = 9525
        mmWidth = 5027
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label8'
        Caption = 'ACEPTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7144
        mmLeft = 235744
        mmTop = 20638
        mmWidth = 15610
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 'TIP-ASO MAESTRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 252942
        mmTop = 20373
        mmWidth = 14288
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ASODNI'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3439
        mmLeft = 11642
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3439
        mmLeft = 28310
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3439
        mmLeft = 49742
        mmTop = 0
        mmWidth = 69056
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CARGO'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3439
        mmLeft = 119592
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'ASOCODPAGO'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3439
        mmLeft = 134144
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'ASONCTA'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3439
        mmLeft = 153459
        mmTop = 0
        mmWidth = 20902
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'UPROID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 175684
        mmTop = 0
        mmWidth = 7145
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'UPAGOID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3439
        mmLeft = 183886
        mmTop = 0
        mmWidth = 7145
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText33'
        DataField = 'USEID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3439
        mmLeft = 192352
        mmTop = 0
        mmWidth = 7145
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText34'
        DataField = 'DESCRIPCION'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 201348
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'ACEPTADO'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 239184
        mmTop = 265
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        DataField = 'TIPASOMAE'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3440
        mmLeft = 255323
        mmTop = 265
        mmWidth = 7673
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 11113
        mmTop = 529
        mmWidth = 259028
        BandType = 7
      end
      object pplimpresopor: TppLabel
        UserName = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 11113
        mmTop = 1323
        mmWidth = 69056
        BandType = 7
      end
    end
  end
  object pprmodificados: TppReport
    AutoStop = False
    DataPipeline = ppbdereporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 36
    Top = 432
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdereporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 26194
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 9525
        mmLeft = 2646
        mmTop = 16669
        mmWidth = 16670
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 9525
        mmLeft = 39688
        mmTop = 16669
        mmWidth = 74348
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 9525
        mmLeft = 145521
        mmTop = 16669
        mmWidth = 23284
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 9525
        mmLeft = 127265
        mmTop = 16669
        mmWidth = 18522
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 9525
        mmLeft = 113771
        mmTop = 16669
        mmWidth = 13759
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'CODIGO DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 128323
        mmTop = 17727
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'CUENTA DE AHORROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 146579
        mmTop = 17727
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'CARGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 114829
        mmTop = 17727
        mmWidth = 10319
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 9525
        mmLeft = 168540
        mmTop = 16669
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'UNIDAD DE GESTION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 170392
        mmTop = 17727
        mmWidth = 18785
        BandType = 0
      end
      object pplnomarc: TppLabel
        UserName = 'ltitutloincon1'
        Caption = 'NOMBRE DEL ARCHIVO: XXXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 45244
        mmTop = 1588
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label501'
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 7408
        mmLeft = 3704
        mmTop = 17727
        mmWidth = 8467
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 9525
        mmLeft = 19050
        mmTop = 16669
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'APELLIDOS Y NOMBRES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 40746
        mmTop = 17727
        mmWidth = 29104
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = 'CODIGO MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 20108
        mmTop = 17727
        mmWidth = 14552
        BandType = 0
      end
      object pplcampomodificado: TppLabel
        UserName = 'lcampomodificado'
        Caption = 'CAMPO MODIFICADO : XXXXXXX'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 45244
        mmTop = 6085
        mmWidth = 33867
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3970
        mmLeft = 157692
        mmTop = 1588
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label1'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 157692
        mmTop = 6085
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label2'
        Caption = 'p'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3970
        mmLeft = 157692
        mmTop = 10583
        mmWidth = 11906
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 1588
        mmWidth = 19315
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 6085
        mmWidth = 15346
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 173567
        mmTop = 10583
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label3'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 1588
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label4'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 6085
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label5'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 170657
        mmTop = 10583
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'Nombre del archivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 1588
        mmWidth = 38894
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        Caption = 'Campo modificado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2646
        mmTop = 6085
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 42069
        mmTop = 1588
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 42069
        mmTop = 6085
        mmWidth = 2117
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
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
        mmLeft = 3175
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 19579
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOAPENOM'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 40217
        mmTop = 0
        mmWidth = 73290
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'CARGO'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 114300
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ASOCODPAGO'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 127794
        mmTop = 0
        mmWidth = 17463
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'ASONCTA'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 146050
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'UPROID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 169069
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText101'
        DataField = 'UPAGOID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3703
        mmLeft = 176477
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'USEID'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3703
        mmLeft = 183621
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5821
      mmPrintPosition = 0
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'REGISTROS MODIFICADOS :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 43392
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'ASODNI'
        DataPipeline = ppbdereporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppbdereporte'
        mmHeight = 3704
        mmLeft = 48419
        mmTop = 1058
        mmWidth = 12700
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2646
        mmTop = 0
        mmWidth = 187590
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2646
        mmTop = 5292
        mmWidth = 187590
        BandType = 7
      end
    end
  end
  object ppReport1: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 209815
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 68
    Top = 432
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 54504
      mmPrintPosition = 0
      object ppLabel62: TppLabel
        UserName = 'Label62'
        Caption = 'Nombre del archivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 5292
        mmTop = 14288
        mmWidth = 33602
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        Caption = 'Tipo de asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 5292
        mmTop = 18785
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label64'
        Caption = 'A'#241'o y mes del padr'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 5292
        mmTop = 23283
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 48419
        mmTop = 14288
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label66'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 48419
        mmTop = 18785
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 48419
        mmTop = 23283
        mmWidth = 1058
        BandType = 0
      end
      object pplnomarc_ne: TppLabel
        UserName = 'lnomarc_ne'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51329
        mmTop = 14288
        mmWidth = 97367
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label68'
        Caption = 'ESTADISTICA DE ACTUALIZACION DE PADRONES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 60590
        mmTop = 1588
        mmWidth = 85260
        BandType = 0
      end
      object ppltipaso_ne: TppLabel
        UserName = 'lnomarc_ne1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51329
        mmTop = 18785
        mmWidth = 39158
        BandType = 0
      end
      object pplanomespad_ne: TppLabel
        UserName = 'lanomespad_ne'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51329
        mmTop = 23283
        mmWidth = 20373
        BandType = 0
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 5292
        mmTop = 28840
        mmWidth = 143140
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label69'
        Caption = 'Registros recepcionados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 5292
        mmTop = 30163
        mmWidth = 41995
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label70'
        Caption = 'Registros ubicados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 5292
        mmTop = 34660
        mmWidth = 32639
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label701'
        Caption = 'Registros no ubicados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 5292
        mmTop = 39158
        mmWidth = 37931
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 48419
        mmTop = 29898
        mmWidth = 1185
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 48419
        mmTop = 34660
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 48419
        mmTop = 39158
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'lanomespad_ne1'
        Caption = 'lanomespad_ne1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51329
        mmTop = 29898
        mmWidth = 19844
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label76'
        Caption = 'lanomespad_ne1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51858
        mmTop = 34396
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label77'
        Caption = 'lanomespad_ne1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 51065
        mmTop = 38894
        mmWidth = 19579
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
  end
  object pprresactpad: TppReport
    AutoStop = False
    DataPipeline = ppbdDetalleUndGes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Documents and Settings\JUDELACRUZ\Escritorio\MASIVA.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 100
    Top = 433
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdDetalleUndGes'
    object ppTitleBand2: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 79640
      mmPrintPosition = 0
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0A544A504547496D616765451C0000FFD8FFE000104A46494600010101006000
          600000FFE100164578696600004D4D002A00000008000000000000FFEC001144
          75636B7900010004000000640000FFE10380687474703A2F2F6E732E61646F62
          652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D22
          EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B6339
          64223F3E0D0A3C783A786D706D65746120786D6C6E733A783D2261646F62653A
          6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
          6520352E332D633031312036362E3134353636312C20323031322F30322F3036
          2D31343A35363A32372020202020202020223E0D0A093C7264663A5244462078
          6D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F31393939
          2F30322F32322D7264662D73796E7461782D6E7323223E0D0A09093C7264663A
          4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A78
          6D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E
          302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E6164
          6F62652E636F6D2F7861702F312E302F73547970652F5265736F757263655265
          66232220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E63
          6F6D2F7861702F312E302F2220786D704D4D3A4F726967696E616C446F63756D
          656E7449443D22786D702E6469643A3838424232313941384536394533313139
          3530364335414333303344354330382220786D704D4D3A446F63756D656E7449
          443D22786D702E6469643A344245303343444136393938313145333832354638
          46314639373642313741362220786D704D4D3A496E7374616E636549443D2278
          6D702E6969643A34424530334344393639393831314533383235463846314639
          373642313741362220786D703A43726561746F72546F6F6C3D2241646F626520
          50686F746F73686F7020435336202857696E646F777329223E0D0A0909093C78
          6D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549
          443D22786D702E6969643A384642423231394138453639453331313935303643
          3541433330334435433038222073745265663A646F63756D656E7449443D2278
          6D702E6469643A38384242323139413845363945333131393530364335414333
          30334435433038222F3E0D0A09093C2F7264663A4465736372697074696F6E3E
          0D0A093C2F7264663A5244463E0D0A3C2F783A786D706D6574613E0D0A3C3F78
          7061636B657420656E643D2777273F3EFFDB0043000201010201010202020202
          020202030503030303030604040305070607070706070708090B0908080A0807
          070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303
          060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800
          2A010403012200021101031101FFC4001F000001050101010101010000000000
          0000000102030405060708090A0BFFC400B51000020103030204030505040400
          00017D01020300041105122131410613516107227114328191A1082342B1C115
          52D1F02433627282090A161718191A25262728292A3435363738393A43444546
          4748494A535455565758595A636465666768696A737475767778797A83848586
          8788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2
          C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5
          F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405
          060708090A0BFFC400B511000201020404030407050404000102770001020311
          04052131061241510761711322328108144291A1B1C109233352F0156272D10A
          162434E125F11718191A262728292A35363738393A434445464748494A535455
          565758595A636465666768696A737475767778797A82838485868788898A9293
          9495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8
          C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA00
          0C03010002110311003F00F9ABFE0E1FFF0082967C41FDA93F6E5F1EFC396D73
          52D2BE1B7C36D626D02C341B79DA3B6BA9ED98C535DDC2A902691A557D858109
          1ED0A012ECFF009DC667ECCFF9D7D01FF0563FF949E7ED05FF0065075BFF00D2
          D96B4F4AFF00823CFED39AD7C0D1F11ED3E0BF8CE5F0A3DA7DBD26F2231792DB
          1008992CCB7DA9E32A7707588A95F987CBCD4DF503E6CF35F19DEDF9D2F9ADFD
          F7AFB4BF6A2FF82737883E2FFED73E16F017C01F86FA8EAF737BF0D7C31E22BD
          B2D3D99A2864BAD26DA6B8BA9A699F642AF34A725DD53738031902BCCFC3DFF0
          49AFDA3BC53F1FB53F85D65F087C5CDE36D16DD6F2F6CA5863860B6B762C1276
          BA765B7F29CAB849049B1CA90A5882286070DFB277ED8FF11BF623F8B9A778DB
          E1B789B51F0FEB1612A3C91C5337D97518C364C17310216685B1CA37D460E08F
          EC6BF663F8D317ED1FFB38F807E214366DA745E38F0F586BCB68CFBCDAFDA6DD
          26F2F7606EDBBF19C0CE2BF8C5F8E7F00FC67FB32FC4CD4BC1BE3EF0DEADE13F
          13E9440B9D3F5084C52A06195707A3A30C15752558104120D7F5F5FF0004B1FF
          009468FECFFF00F64F342FFD20868881EF545799FED23FB647C2BFD90345B3D4
          3E27F8FF00C2DE08B7D498A598D56F9219AF0A901BCA8FEFC81772EE2AA42E46
          715F9B9FF0516FF82B37C42F0C7FC1537F657F0CFC18F89DA45EFC1CF8B0DA3F
          DB9B4CB5B1D4AD357136B525ADC05B868DDD4F96A10847528C0F46CD55C0FD6F
          A2BCA7F690FDB83E107EC7E2C47C4EF88FE12F04CDA902F696FA9EA0915CDCA0
          382E9172EC80F0582E01EA6B6744FDA8FE1BF897E095C7C4AD3BC79E13D43E1F
          DA4125D4FE22B7D521974D8238FF00D633CEAC5176F4604820F071401DED15E3
          FA7FEDFBF04F57D3BC1F7967F153C0D796BF102F27D3FC392DBEAD14A9ACCF06
          44E909527708C8C337DD562A09058034E0FF00828EFC05BBF8751F8BADFE2F7C
          3FBAF0CCBAD47E1C8F52B7D6619ADE5D4A45564B456563BA528C1F68C9099638
          504800F6CA2BC37E2BFF00C14CBF67BF819E329BC3BE2EF8D1F0DB41D7AD6630
          5CE9F73AFDB8B8B4901C149503131303D43E0D765E2BFDAAFE19F81BE0DDBFC4
          5D5FC7FE0EB0F00DDF97E4788A5D5A01A5CFE636D4D9701BCB6DCDC0C1393401
          E814578578EBFE0A6FFB3DFC33D43C2B6BAF7C65F879A4CDE36B38B51D17ED1A
          CC2A97D6B2E7CAB90D9DA90B9042C8E5558A9C1383573E34FF00C1453E04FECE
          5F12AD3C1DE3BF8B5E03F0AF89EF7632E9DA8EAD1453C2AE0146941388558105
          5A42A08E4645007B4D15C2FC63FDA6FE1CFECF3E15B5D77C77E3BF08F83F48BE
          CFD96EF58D5A0B38AEFE50D888C8C3CC3820E172706B13F67AFDB83E0FFED617
          7796DF0D7E25F82FC6D7BA7C7E75CDA693AAC571736F1EE0BE63C40EF54DC40D
          C57193D6803D568AA9AAEB365A1C514B7B776B671CF3476D1B4F2AC6B24B2384
          8E3049E59988551D49200E4D721E13FDA7BE1AF8F7E276A5E09D0BE21781F5AF
          19E8C6417FA0D8EBB6B71A9D918D82C825B6473226D62036E51827071401DD51
          5C1FFC3527C32FF85C1FF0AF3FE162F817FE13FCEDFF00846BFB7AD7FB5F3B3C
          CC7D977F9B9D9F3E36FDDE7A735AFF0014BE32F843E06F865B5BF1B78AFC37E0
          FD151C46D7FADEA7069F6C18F45F326655C9F4CD0074B4573FF0D3E2B785FE33
          F84A0D7FC1DE24D07C59A0DD332C3A8E8FA8437F692953860B2C4CC8483C100F
          15CE78FF00F6B9F853F0A3C7D6BE14F14FC4DF87BE1AF145F797F67D1F55F115
          9D9DFCFE61C47B20924591B71E170393D33401E879A01CF4AF3CF8F9AB6ABAE7
          C30F1058F82BC7DE1AF0478A74FB9B385B56D4ADA3D46DF4A669A0768A681A48
          FE69A06D881994E664619E01B9F18BF695F873FB3BC7A7BF8FFC7DE0AF0326AC
          CC9627C41ADDB6982F5971B847E73AEF2372E42E7191EB401DBD15F367EDC1FF
          000510F0EFEC8D79F06D575AF04CD0FC4DF19D86897326A3ACC56E2D7499E1B8
          797528CEEC3471B4712EF3FBBFDE8C91915ECDE16F8F7E05F1D7816FFC53A1F8
          D3C27ACF85F4A328BDD62C757B7B8B0B3F294349E64E8E634D8A4336E2368393
          8A00EB68271D6B8BF83BFB45FC3EFDA26C2F2EFE1FF8EFC1DE39B4D3A458AEA6
          F0FEB36DA9C76CEC32AAED0BB05247201C671577C49F19FC1FE0EF0F43ABEAFE
          2CF0D695A45CDE8D321BDBCD4E082DA5BB329885BAC8CC14CBE62B26C0776E05
          71918A00E9F70F514138EB5E77F0BB5DD47C0BF0EB5ED4FC7BE3DF0CEBD0D86A
          FA94EDABC30C5A6D9E9766B7327976B31F31943DBA0F2DE4620968C9600E6AEF
          C1EFDA57E1CFED0F1DF3F803C7FE0AF1CA696CAB78DE1FD72DB531685B3B449E
          43B6C270719C6706803B7A2BE73FD80FE3B78AFE34EB9F1FA1F13EAA9A947E0A
          F8B5AB78674602DA387EC7A7416B6324507C806FDAD34877B658EEE4F0305007
          E067C3BF0A784FC6FF00F07416BFA5F8D6DF4CBCD1AE7E2CEBC61B5D40E2D2F3
          50592EDF4F8641FC4B25EADB2143C36EDA7209AF8E7C7DF1CFE345D7ED8BA8F8
          C75BD7FC6D6DF1B61D79D67BAF3268758B5D4965319811570F1B238F2C44A005
          002050005AE9FF00E0AB1712597FC150FE3FCD0BBC5345F10F5A747462AC8C2F
          A52083D88EB9AEDED3FE0B7DF1DEDB4C86E5EEBC0579E3AB6B75B383E20DD783
          F4E9BC63142B0F92146A4D1194BF97C79CD99BBEFCF352D81F63FF00C16EBE22
          78866FD95BE2AEAF75796DA678A3C5FF0014FC2BE1EF1C0D26E0795797363E0A
          B59A7D3A468D8ABC56D7D2CC7CB390B2E7F8901AF95BE31FED03E38D73FE0855
          F083C3179E2BD66E7C3E3E256BFA71B07B8631B5B5AD969B35B40DDDA38A5BBB
          8754276A99781F2AEDF9BF5FFDAC3C6DE2AFD9DEE3E186A7A926A3E1BBCF184B
          E3AB896E63F36FEE75596D85B4934970C4BB868C64827963BBAD666B7F1FFC43
          AF7ECFBA0FC31B896CCF85BC39ADDEF882C904004E2EAEE1B78662D27565296D
          1617B1CFAF05C0FA63F6E6D5AEBC71FF0004A9FD8D3C43ACCF36A9AF2AF8C342
          FED2BA632DD369F67A85AFD92D4C87E66860134A234271187217038AFE96BFE0
          965FF28D2FD9FF00FEC9EE85FF00A6F86BF915F1E7ED29E28F893F017C01F0DF
          549EC9FC2FF0D26D4E7D1238ED9639A36D4258E5B9F324EB265E24C67EE8AFEB
          ABFE0963FF0028D1FD9FFF00EC9E685FFA410D34C0FC7CF853F00BC39FF0574F
          F8391FE37E83F1DAEAF356F0FF00C3CFED38348F0F3DEC96D1DE416175159DBD
          B2956574882CAF72CB1152EFB98F0CF9E53F6E9FD817E1AFEC17FF000707FECC
          BE19F86493695E1BF13F88BC35ADCBA1B5E49729A3CCFAC792CB1348CCE12410
          870ACC4862D8C2ED51FA07FF000527FF00837D21FDAD7F6A9B7F8E9F093E28EB
          1F057E28BEC6D46F6CA091E2BD9523112DCC6F14B1496F3794363952CB20032A
          AC5D9FCE7C23FF0006C3EA9A1FED55F0B3E30EAFFB42788BC5DE34F096B563E2
          0F13DFEBBA5BDEDC788AEAD6ED26458A47B8DD046228E3886F3291B7770308A5
          80FCFAFD9EBC6B6BFB5DFF00C141FF00685F88BF167F66CF8A7FB506B69AC3DA
          DAE8BA24B31B5F0C46D71711A4770B1297F922852284676A88A4C866DACBDE7E
          CE5F05BE297ECEBF0B7F6E0D20FC24F8B9F0A3F67DF18FC31D5B58D1F4CF17D9
          CA12C2FE27805B47E7BA2A993CB96E1300976444DE5CC61ABF40FF006BCFF837
          DB56F15FED69ADFC6CFD9D7E367887E0278CFC5AD249E2082CA2964B5BF96560
          F3488D14B1B2091C091E36122349F30D9802BA9F80FF00F0448F15FC3AFD8EBE
          3AF807C5FF00B4178D3E2178BFE3C593DBEA5AC6AF1C93E9DA64A6329F688AD6
          4999DA665215E4328DC9142A15446322407C07FF000412FF008256685F10FF00
          63DBEFDA8BC61AFEBFA86B9E064D5C781F468AEB6E9DA72DAC13334B329059B7
          5C492B0894A27CA59B7F9842F9E7FC1B99FF00049CF0B7EDE5A17893E247C4BF
          13F886D3C1BF0B75D89F48D1B4DBE36B136A2122B89AE66720EC458E3817F77B
          5DBBBA88C06FD97FF827DFFC1346E3F61CFF0082765FFC079BC6A9E249AF63D5
          506B71E97F6410FDB43F22132BEED9BF3CBF3ED581FF00047AFF008248FF00C3
          AD3E0178DBC09A9F8D2DFE215AF8CB563A8C920D20E9C9121B6481A22A669776
          42939C8EBD28480FCC5D4E1F809FF0527F8EBF18BC53F08BF610F889F19B48D4
          359BABAD67C716FE3CB8D0A517330DD24F6768C0C3E6B3933AC2C59CF980BA28
          6D83E5DFD9FBC5FABDD7FC10ABF6AEF075E5C5F0D13C27E38F0B5E69B63743F7
          9633DCDD4F15C647F0B32DB45B80C0DCA4F739FD51F821FF0006ECFC50FD953C
          69E27D0BE147ED65E35F00FC1CF17DF9B9D4343D3F4B51AB2424E36457464291
          5C796153ED51A2B10AA4A10A16B33E18FF00C1B0173F0D7F632F8D5F0862F8D1
          1DD47F16357D175183527F0C90DA647A6CD3C811D3ED3FBD6904C012190294CE
          0E700480F8D3F688FF008247FC1FF00FFC1BA7E14FDA02CECF5A7F8AB3D9E95A
          BDCEAF2EA32C8974977791DB9B43016312C51C728DA5555F744B96209531FC41
          FF00824FFC23B7FF00836FACFF0068C7B6D76EBE2F4B15B6AF2EB72EA533ACC9
          26AAB63F6468198C5E4AC2C0821449BD01DFB7295FACDF17FF00E092377F153F
          E08EDA3FECAA3C7F158DCE97A669BA7B7894E8C64497EC77515C67ECDE702037
          97B7FD664673CF4A8BC53FF0485BAF127FC118ADFF0064B1F10628AE60B0B7B3
          FF00849FFB1B28DE56A4B7D9FB2F9C0E0EDF2FFD6E7F8BDA8B01F99B7BFB4DFC
          1CF177FC130FF62EF863F147E0EF8AFF0068EF8B379637B75E19F0DE9FABCFA5
          C91599D42EEC208E4BA8834A6375B68D5228C118B352C5155437974DF0F2FF00
          F633FF0082D27ECC77FE19F807E2DFD976EFC43E23D32C6EF42BCF141F10596A
          114F7A96B70D6D75CB14782729246588524602E79FD01F1E7FC1B4FAA3FC23F8
          152F827E385FF84BE2F7C0EB0974CB5F1541A3B2C3A8C0D7F737B08F244FBA16
          85AEA540DBDC3A1C32E0F1A37FFF0006F178FBE227ED6BF08FE35FC44FDA6BC4
          1E3FF1B780757B1D57546D4FC3E82DAED2D2F12E62B5B28E39956D2221595B87
          0CEECF8192B4580FA5FF00E0B41E125F1FFEC85A2787CEA3A968FF00DBFF0011
          3C23A77F6869D39B7BDB0F375CB34334128E63954312AE3953CD723FF0542FD8
          BBE187C1BFF826D78DF5CF02F83B41F01788FE13E8AFE20F08EB9E1EB28AC353
          D0EF6D4078E58EE1009097DBB64DCC4C8AEDBB24E6BE90FDADFF0067093F6A1F
          87BA1E851EB23426D1BC57A2789BCF36BF68F3469DA84179E4EDDCB8F33C9D9B
          B276EECE0E3153FED91FB3E3FED61FB2B78FFE1AC7AB8D05FC6FA2DC69035136
          DF69167E6A15F33CBDCBBF19E9B87D6981E27F1BFF00E09C5F06BC25FF0004FE
          F15F8674DF04E8760FA37866EF51B3D752D233AE5B6A515BBCC9AA0BD204C6F4
          4CA25F38BEE2E3938245793F877F683D2FF69FF87FF05615F805A17ED23F1D2D
          7E19687E23D7AF3561A7D969BE158B53B48E4DD3DE5CC7208A6BA92391D60822
          77288CC42260B7DD5F127C00DF107E116BFE151786CDF5CD1EE34AFB508F7F91
          E6C0D1799B33CE376719ED8CD7CB1E02FF0082727C48FD94DBC33AE7C17F88FE
          17B5F12C1E07D0BC17E2CB1F15787E5BBD1BC52DA4DB0B7B4D45041711CF6772
          B19950859248DD19032EE8C3900F9B3C77E3FF001E7EC81FB4478DBC59A1FC0D
          D33F67BD7358F81FE31D5E4D3F47D6ACB56D07C53A968E96B71617296F6A910F
          B5DBF9F286926855A48A7D8376DE3EBFFD903F602F81D6FF00B2A7858B782BC1
          BF108F8C346B6D5F59F12EBDA6C1AC5FF8BEE2EA159A5BEBAB99D5DE7699A467
          CB31501C2A8550A052F879FB0FFC42D33F6ABD07E3AFC49F8A47C6BE26D0FC37
          AA6853F86F47D0458E8705B5C9B69122B081E6924493CC818C92CD24AF3EE897
          F7491AAD7CC7E10F883FB36F84BC25E20D37C2FF00B587C52FD9A7C3570F2CDA
          AFC2ED46FAD343D4BC2B33AEF9AD6C2D750B492F2C8798CEDE5D9BBC7BD9BC9C
          0DB401E5FF001B7E0EF86FE06FECD7FB7B7837C2D7B77AAF86F40F1E7812D6C4
          DEDF3EA1258461F4561A7895C96315A13E446AC498D234427E4CD7D55F1DBE09
          EB5F02BF6CDF897F143C55F0047ED21E08F1F59D89B5BFD361B3D4FC45E0A82D
          2D1607D323D3AF64559AD2597CCB906CC890C93CA248E4211AB86FD9BFFE09D9
          6BFB4BFECAFF001FACBC3565AB7C25F027C67F16E8BA878463D574D965D45F4D
          D24E9E4EA57114EEB3997509ED6E26DD7044C44EB2BEE66C1FA87E257C19FDA2
          740F89DAF6B3F0D7E2FF00836E3C3DE2099664F0FF008EBC2926A09A0B840ADF
          63B9B3B9B690C4C406F2A612608387193401F23FED21E14FD9F3E2E7C27FD94E
          F7E167827C270F8547ED0165A3DDE913787D6D27D167913519350D32E2D2640F
          6A44EA1A4B62AA995460A57613D17ED9F6DE13F0EFEDF7F0F7E0A41F06358F14
          FC28D07C2379F12EFBC13E04D1AC12D3C43AB9BF86CADE6D46D6478229ADEDC0
          7902EE21E6922675611AE3D7F58FF825ADDDFF00ECFF00169EBF10AE25F8B70F
          C438BE2CFF00C26371A52B59CDE238D56205AC16400597D9545B0804BB9630A7
          7971B8ECF8CBF635F8ABF19BC3FE16F16F897E247857C35F1DBC03A95D4FE1BF
          127853C3B3C7A3C5A7DCA42971A5DED8DCDD48D796F3888339F362747585A328
          D16E7480F12F1B59DD78B3F68DF847E32F845FB337C55F84FE38D07C516161AC
          EB12E81A5695A6EA9E19B89562D4ECEFCDBDE912C51C245C45BA391926B68CC6
          1773137FFE094FFB0FF853C7FE1DD77E2578EECEC3C7571A4FC40F165A7802CF
          55B58EE2CBC17A7C7E21BC2CD6B0B2EC5BC9AE925964BA20CA54429B82C6057B
          B7C3FF0081FF00B4278CBE25787B58F8A5F167C2761E1FF0C5C7DAD740F87DA0
          4FA626BF301B57EDF7377717121B75F98FD9E10818B0DCEC1003DEFEC81FB3A3
          FECAFF0005878464D67FB79FFB7359D67ED62D7ECDFF00210D52EAFF00CBD9B9
          BFD5FDA76673F36CCE0670181F117C2BF893E03D1BF66793C15E25F85717C6EF
          1778E3E35F8E6E7C25E0A6B5B591751BAB3D6AFA596F247BB220861811FE795C
          9DA65550ACCC0565FC76D17C6BF0C7E2C7C17F1B1FD95BC39F03B58D27E23681
          A3FF00C25FE0EF14E997709D3B51BF8ACAEEC6FE18ADA096682649F6AA856093
          18E4DC9B486F7D9BFE0983AFF84F44F0F6BBE0BF8931E8BF143C0FE30F13F8A3
          41D5EEF47373A5CB6DAEDEC97377A5DED98994CB030312F9892248AF0AC89B79
          429E3FFD83BE347ED51AD782B56F8B9F177C37663E1F78BF47F15E93A0782BC3
          B2D9E91732D8DE24CED7AF733CB3DC33C41D1155E28E266121599954000BDFF0
          4B2FF9197F6A7FFB2EFAEFFE90E99457ABFECA9FB2BBFECD1A9FC56B97D786B5
          FF000B33C7B7FE3655FB2080E9C2E60B5885B6773799B3ECD9DFF2E77E368C64
          9401FCE07FC1C35FF04EAF1F7ECADFB7A78FFC7777A2EA57FF000F7E25EB536B
          FA5EBF0DBB3DA24D74ED2CB672B8C88E6490C802B105D00619E42FE7EF94FF00
          DC6FCABFB9E9A14B8568E44492371F32B0041FA8AABFF08B699FF40DB0E3FE9D
          D3FC2803F86BF29FFB8DF951E53FF71BF2AFEE53FE117D33FE81D61FF80E9FE1
          47FC22FA67FD03AC3FF01D3FC2803F8ADFD993F652F881FB62FC5BD33C11F0EF
          C33A9F8935FD525588476F0B18AD51980334F2636C512E72CEE42802BFB23FD9
          6FE0AAFECDDFB357C3FF0087A97A7521E07F0ED86826EF695FB49B6B6484C983
          9C06284E32719AEDACB4DB6D3908B7B78200DC911C6141FCAA7A4900514514C0
          28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002A9DE681
          63A95F5BDD5CD95A5C5CDA12609A4895E4849EEAC4657F0AB945001451450014
          51450014514500146E1EA28A2800A28A2803FFD9}
        mmHeight = 12700
        mmLeft = 10583
        mmTop = 1852
        mmWidth = 58473
        BandType = 1
      end
      object pplcanregrec: TppLabel
        UserName = 'ltotregmig'
        Caption = '3,011'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 136261
        mmTop = 49213
        mmWidth = 15081
        BandType = 1
      end
      object pplcanregubi: TppLabel
        UserName = 'ltotregmig1'
        Caption = '2,919'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 136261
        mmTop = 52917
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel94: TppLabel
        UserName = 'Label9'
        Caption = 'REPORTE DE LA ACTUALIZACI'#211'N MASIVA DE REGISTROS SEG'#218'N PADRONES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 36777
        mmTop = 14023
        mmWidth = 134938
        BandType = 1
      end
      object pplcanregnoubi: TppLabel
        UserName = 'lcanregnoubi'
        Caption = '92'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 136261
        mmTop = 56621
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        Caption = 'PADRON MES :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3344
        mmLeft = 11113
        mmTop = 23813
        mmWidth = 20574
        BandType = 1
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        Caption = 'I. SEG'#218'N PADRON:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 11642
        mmTop = 45244
        mmWidth = 25929
        BandType = 1
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        Caption = 'N'#186' DE DNIs RECEPCIONADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3344
        mmLeft = 16404
        mmTop = 49477
        mmWidth = 38142
        BandType = 1
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        Caption = 'N'#186' DE REGISTROS UBICADOS EN EL SISTEMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 53181
        mmWidth = 72496
        BandType = 1
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        Caption = 'N'#186' DE REGISTROS NO UBICADOS EN EL SISTEMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 56886
        mmWidth = 72496
        BandType = 1
      end
      object ppLabel135: TppLabel
        UserName = 'Label135'
        Caption = 'CANTIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 136261
        mmTop = 44979
        mmWidth = 15081
        BandType = 1
      end
      object ppLabel136: TppLabel
        UserName = 'Label136'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 170127
        mmTop = 44979
        mmWidth = 2910
        BandType = 1
      end
      object pplanomes: TppLabel
        UserName = 'lanomes'
        Caption = 'ENERO-2009'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 38894
        mmTop = 23813
        mmWidth = 34396
        BandType = 1
      end
      object pplcanregrecpor: TppLabel
        UserName = 'ltotregmig3'
        Caption = '100.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 162454
        mmTop = 49213
        mmWidth = 10583
        BandType = 1
      end
      object pplcanregubipor: TppLabel
        UserName = 'Label8'
        Caption = '96.94'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 162454
        mmTop = 52917
        mmWidth = 10583
        BandType = 1
      end
      object pplcanregnoubipor: TppLabel
        UserName = 'Label10'
        Caption = '3.06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 162454
        mmTop = 56621
        mmWidth = 10583
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label12'
        Caption = 'UNIDADES DE GESTION ABARCADAS POR EL PADRON'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 35454
        mmWidth = 80963
        BandType = 1
      end
      object ppLabel8: TppLabel
        UserName = 'Label14'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 93663
        mmTop = 35454
        mmWidth = 1058
        BandType = 1
      end
      object pplundgestabar: TppLabel
        UserName = 'Label28'
        AutoSize = False
        Caption = 'CM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 4763
        mmLeft = 11642
        mmTop = 39688
        mmWidth = 184150
        BandType = 1
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'SEGUN BASE DE DATOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 70379
        mmWidth = 41275
        BandType = 1
      end
      object pplcobertura: TppLabel
        UserName = 'lcobertura'
        Caption = 'DO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 74877
        mmWidth = 18256
        BandType = 1
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        Caption = 'COBERTURA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 70379
        mmWidth = 17992
        BandType = 1
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        Caption = 'CO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 151871
        mmTop = 74877
        mmWidth = 4233
        BandType = 1
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'CE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 138113
        mmTop = 74877
        mmWidth = 3969
        BandType = 1
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        Caption = 'DO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 124090
        mmTop = 74877
        mmWidth = 4233
        BandType = 1
      end
      object ppLabel56: TppLabel
        UserName = 'Label401'
        Caption = 'DETALLE POR UNIDADES DE GESTION ABARCADAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 15346
        mmTop = 70379
        mmWidth = 72496
        BandType = 1
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        Caption = 'SEGUN PADRON'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 93398
        mmTop = 70379
        mmWidth = 22490
        BandType = 1
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 91811
        mmTop = 70115
        mmWidth = 794
        BandType = 1
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 116681
        mmTop = 70115
        mmWidth = 794
        BandType = 1
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4763
        mmLeft = 131763
        mmTop = 74348
        mmWidth = 794
        BandType = 1
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5027
        mmLeft = 145521
        mmTop = 74348
        mmWidth = 794
        BandType = 1
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 161925
        mmTop = 70115
        mmWidth = 794
        BandType = 1
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 183357
        mmTop = 70115
        mmWidth = 794
        BandType = 1
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 14552
        mmTop = 79111
        mmWidth = 169598
        BandType = 1
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 14288
        mmTop = 69850
        mmWidth = 169863
        BandType = 1
      end
      object ppLine19: TppLine
        UserName = 'Line102'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 13758
        mmTop = 70115
        mmWidth = 794
        BandType = 1
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 117211
        mmTop = 74348
        mmWidth = 66940
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label6'
        Caption = 'N'#186' DE REGISTROS ACTUALIZABLES AL SISTEMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 60854
        mmWidth = 72496
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label17'
        Caption = 'N'#186' DE REGISTROS NO ACTUALIZABLES AL SISTEMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 64823
        mmWidth = 72496
        BandType = 1
      end
      object pplcanregactualiza: TppLabel
        UserName = 'lcanregnoubi1'
        Caption = '92'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 136261
        mmTop = 60590
        mmWidth = 15081
        BandType = 1
      end
      object pplcanregactualizapor: TppLabel
        UserName = 'Label105'
        Caption = '3.06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 162454
        mmTop = 60590
        mmWidth = 10583
        BandType = 1
      end
      object pplcanregnoactualiza: TppLabel
        UserName = 'Label24'
        Caption = '92'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 136261
        mmTop = 64558
        mmWidth = 15081
        BandType = 1
      end
      object pplcanregnoactualizapor: TppLabel
        UserName = 'Label25'
        Caption = '3.06'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 162454
        mmTop = 64558
        mmWidth = 10583
        BandType = 1
      end
      object ppLabel39: TppLabel
        UserName = 'Label27'
        Caption = 'REGI'#211'N /DPTO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 30163
        mmWidth = 24606
        BandType = 1
      end
      object pplRegionDpto: TppLabel
        UserName = 'lanomes1'
        Caption = 'LIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 38894
        mmTop = 30163
        mmWidth = 34396
        BandType = 1
      end
      object ppLabel40: TppLabel
        UserName = 'Label47'
        Caption = 'TIPO ASOCIADO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 97896
        mmTop = 24077
        mmWidth = 26723
        BandType = 1
      end
      object pplTipoAso: TppLabel
        UserName = 'Label49'
        Caption = 'DO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 127000
        mmTop = 24077
        mmWidth = 11377
        BandType = 1
      end
    end
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText28: TppDBText
        UserName = 'DBText202'
        DataField = 'USENOM'
        DataPipeline = ppbdDetalleUndGes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdDetalleUndGes'
        mmHeight = 3440
        mmLeft = 25929
        mmTop = 0
        mmWidth = 51065
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'CANT_PADRON'
        DataPipeline = ppbdDetalleUndGes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdDetalleUndGes'
        mmHeight = 3440
        mmLeft = 93663
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'CANT_DO'
        DataPipeline = ppbdDetalleUndGes
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdDetalleUndGes'
        mmHeight = 3440
        mmLeft = 119856
        mmTop = 0
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'USEID'
        DataPipeline = ppbdDetalleUndGes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdDetalleUndGes'
        mmHeight = 3440
        mmLeft = 16140
        mmTop = 0
        mmWidth = 8996
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
        DataField = 'CANT_CE'
        DataPipeline = ppbdDetalleUndGes
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdDetalleUndGes'
        mmHeight = 3440
        mmLeft = 133879
        mmTop = 0
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText35'
        DataField = 'CANT_CO'
        DataPipeline = ppbdDetalleUndGes
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdDetalleUndGes'
        mmHeight = 3440
        mmLeft = 148167
        mmTop = 0
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText36'
        DataField = 'COBERTURA'
        DataPipeline = ppbdDetalleUndGes
        DisplayFormat = '##0.#0%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdDetalleUndGes'
        mmHeight = 3440
        mmLeft = 167217
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 91811
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine12: TppLine
        UserName = 'Line12'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 116681
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 131763
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3704
        mmLeft = 145521
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 161925
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line101'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 183357
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3440
        mmLeft = 14023
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 14288
        mmTop = 3440
        mmWidth = 169863
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLabel6: TppLabel
        UserName = 'Label29'
        Caption = 'USUARIO QUE PROCESA :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2381
        mmLeft = 12171
        mmTop = 1058
        mmWidth = 29369
        BandType = 8
      end
      object pplusrproc: TppLabel
        UserName = 'lfechoract2'
        Caption = 'DFERNANDEZ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 43127
        mmTop = 1058
        mmWidth = 14012
        BandType = 8
      end
    end
    object ppSummaryBand5: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 92869
      mmPrintPosition = 0
      object ppLabel51: TppLabel
        UserName = 'Label5'
        Caption = 'CODIGO MODULAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 23813
        mmWidth = 25665
        BandType = 7
      end
      object pplcanregmod_asocodmod: TppLabel
        UserName = 'lasocodmodcan'
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 23813
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_asocodmod_por: TppLabel
        UserName = 'lporregenc1'
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 23813
        mmWidth = 9261
        BandType = 7
      end
      object ppLabel81: TppLabel
        UserName = 'Label7'
        Caption = 'CODIGO DE CARGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 27517
        mmWidth = 25929
        BandType = 7
      end
      object pplcanregmod_cargo: TppLabel
        UserName = 'lcancodmoddif1'
        Caption = '13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 27517
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_cargo_por: TppLabel
        UserName = 'lcargopor'
        Caption = '0.45'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 27517
        mmWidth = 9261
        BandType = 7
      end
      object ppLabel85: TppLabel
        UserName = 'Label11'
        Caption = 'CODIGO DE PAGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 31221
        mmWidth = 23548
        BandType = 7
      end
      object pplcanregmod_asocodpago: TppLabel
        UserName = 'lasocodpagocan'
        Caption = '14'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 31221
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_asocodpago_por: TppLabel
        UserName = 'Label101'
        Caption = '0.48'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 31221
        mmWidth = 9261
        BandType = 7
      end
      object ppLabel89: TppLabel
        UserName = 'Label15'
        Caption = 'CUENTA DE AHORROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 38629
        mmWidth = 30163
        BandType = 7
      end
      object pplcanregmod_useid: TppLabel
        UserName = 'luseidcan'
        Caption = '12'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 34925
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_useid_por: TppLabel
        UserName = 'luseidpor'
        Caption = '0.41'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 34925
        mmWidth = 9261
        BandType = 7
      end
      object ppLabel93: TppLabel
        UserName = 'Label26'
        Caption = 'III. CAMPOS MODIFICADOS SEG'#218'N REG. UBICADOS EN EL SISTEMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 10319
        mmTop = 19315
        mmWidth = 111390
        BandType = 7
      end
      object ppLabel96: TppLabel
        UserName = 'Label31'
        Caption = 'N'#186' DE REGISTROS EN EL SISTEMA (DOCENTES)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 17198
        mmTop = 6615
        mmWidth = 61913
        BandType = 7
      end
      object pplcanregdo: TppLabel
        UserName = 'ltotregmig2'
        Caption = '5,936'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 6350
        mmWidth = 11377
        BandType = 7
      end
      object ppLabel99: TppLabel
        UserName = 'Label1'
        Caption = 'UNI.PROC./UNI.PAGO/UNI.GES.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 34925
        mmWidth = 40217
        BandType = 7
      end
      object ppLabel100: TppLabel
        UserName = 'Label2'
        Caption = 'CANTIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 135996
        mmTop = 19844
        mmWidth = 16934
        BandType = 7
      end
      object ppLabel101: TppLabel
        UserName = 'Label3'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 170921
        mmTop = 19844
        mmWidth = 2910
        BandType = 7
      end
      object pplcanregmod_asoncta: TppLabel
        UserName = 'lcancuedif1'
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 38629
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_asoncta_por: TppLabel
        UserName = 'lporcuedif1'
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 38629
        mmWidth = 9261
        BandType = 7
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        Caption = 'II. SEG'#218'N BASE DE DATOS DM. :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 12435
        mmTop = 2381
        mmWidth = 57150
        BandType = 7
      end
      object ppLabel138: TppLabel
        UserName = 'Label138'
        Caption = 'N'#186' DE REGISTROS EN EL SISTEMA (CESANTES)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 17198
        mmTop = 10319
        mmWidth = 61383
        BandType = 7
      end
      object ppLabel139: TppLabel
        UserName = 'Label139'
        Caption = 'CANTIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 135996
        mmTop = 2381
        mmWidth = 16934
        BandType = 7
      end
      object ppLabel140: TppLabel
        UserName = 'Label140'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 170921
        mmTop = 2381
        mmWidth = 2910
        BandType = 7
      end
      object pplcanregce: TppLabel
        UserName = 'lcanregce'
        Caption = '2,309'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 10054
        mmWidth = 11377
        BandType = 7
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        Caption = 'IV. REGISTROS MODIFICADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 11377
        mmTop = 65352
        mmWidth = 53975
        BandType = 7
      end
      object ppLabel86: TppLabel
        UserName = 'Label86'
        Caption = 'N'#186' DE REGISTROS MODIFICADOS CON CREDITO VIGENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 73025
        mmWidth = 75671
        BandType = 7
      end
      object ppLabel90: TppLabel
        UserName = 'Label90'
        Caption = 'N'#186' DE REGISTROS MODIFICADOS CON AUTORIZACION DE DSCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 76729
        mmWidth = 86254
        BandType = 7
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = 'N'#186' DE REGISTROS MODIFICADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 69321
        mmWidth = 43392
        BandType = 7
      end
      object ppLabel98: TppLabel
        UserName = 'Label98'
        Caption = 'CANTIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 135996
        mmTop = 65088
        mmWidth = 16934
        BandType = 7
      end
      object ppLabel102: TppLabel
        UserName = 'Label4'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 170921
        mmTop = 65088
        mmWidth = 2910
        BandType = 7
      end
      object pplcanregmod: TppLabel
        UserName = 'lasocodmodcan1'
        Caption = '2,766'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 69056
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_por: TppLabel
        UserName = 'lcanregmod_por'
        Caption = '94.76'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 68792
        mmWidth = 9261
        BandType = 7
      end
      object pplcanregmodconcre: TppLabel
        UserName = 'lcanregmodconcre'
        Caption = '7'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 72761
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmodconcre_por: TppLabel
        UserName = 'lcanregmodconcre_por'
        Caption = '0.24'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 72496
        mmWidth = 9261
        BandType = 7
      end
      object pplcanregmodconaut: TppLabel
        UserName = 'Label1201'
        Caption = '13'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 76465
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmodconaut_por: TppLabel
        UserName = 'lcanregmodconaut_por'
        Caption = '0.45'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 76200
        mmWidth = 9261
        BandType = 7
      end
      object pplcanregdopor: TppLabel
        UserName = 'Label102'
        Caption = '72.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 6350
        mmWidth = 9261
        BandType = 7
      end
      object pplcanregcepor: TppLabel
        UserName = 'Label103'
        Caption = '28.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 10054
        mmWidth = 9261
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label13'
        Caption = 'REGIMEN DE PENSION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 42333
        mmWidth = 29898
        BandType = 7
      end
      object pplcanregmod_regpen: TppLabel
        UserName = 'Label16'
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 42333
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_regpen_por: TppLabel
        UserName = 'Label18'
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 42333
        mmWidth = 9261
        BandType = 7
      end
      object ppLabel2: TppLabel
        UserName = 'Label19'
        Caption = 'APELLIDOS Y NOMBRES(PLANILLAS)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 46038
        mmWidth = 48948
        BandType = 7
      end
      object pplcanregmod_asoapenom: TppLabel
        UserName = 'Label20'
        Caption = '435'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 46038
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_asoapenom_por: TppLabel
        UserName = 'Label21'
        Caption = '14.90'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 46038
        mmWidth = 9261
        BandType = 7
      end
      object ppLabel3: TppLabel
        UserName = 'Label22'
        Caption = 'CENTROS EDUCATIVOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 49742
        mmWidth = 31485
        BandType = 7
      end
      object pplcanregmod_colegio: TppLabel
        UserName = 'Label201'
        Caption = '2,766'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 49742
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_colegio_por: TppLabel
        UserName = 'Label23'
        Caption = '94.76'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 49742
        mmWidth = 9261
        BandType = 7
      end
      object ppLabel12: TppLabel
        UserName = 'Label32'
        Caption = 'V. INCONSISTENCIAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 11642
        mmTop = 83344
        mmWidth = 34925
        BandType = 7
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppbdInconsistencias'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 87842
        mmWidth = 197379
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppbdInconsistencias
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297127
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppbdInconsistencias'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand1: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              DataField = 'DESCRIPCION'
              DataPipeline = ppbdInconsistencias
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppbdInconsistencias'
              mmHeight = 3440
              mmLeft = 16669
              mmTop = 265
              mmWidth = 115888
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              DataField = 'CANT'
              DataPipeline = ppbdInconsistencias
              DisplayFormat = '#,0;-#,0'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbdInconsistencias'
              mmHeight = 3440
              mmLeft = 136525
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              DataField = 'PORC'
              DataPipeline = ppbdInconsistencias
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbdInconsistencias'
              mmHeight = 3440
              mmLeft = 157163
              mmTop = 529
              mmWidth = 17198
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppLabel15: TppLabel
        UserName = 'Label33'
        Caption = 'CANTIDAD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 135996
        mmTop = 83079
        mmWidth = 16934
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label34'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 170921
        mmTop = 83079
        mmWidth = 2910
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label35'
        Caption = 'N'#186' DE REGISTROS EN EL SISTEMA (CONTRATADOS)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3344
        mmLeft = 17198
        mmTop = 14023
        mmWidth = 68072
        BandType = 7
      end
      object pplcanregco: TppLabel
        UserName = 'lcanregce1'
        Caption = '2,309'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 13758
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregcopor: TppLabel
        UserName = 'Label37'
        Caption = '28.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 13758
        mmWidth = 9261
        BandType = 7
      end
      object ppLabel26: TppLabel
        UserName = 'Label38'
        Caption = 'CARGO LABORAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3323
        mmLeft = 16933
        mmTop = 53446
        mmWidth = 25929
        BandType = 7
      end
      object ppLabel29: TppLabel
        UserName = 'Label39'
        Caption = 'SITUACION ACTUAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3323
        mmLeft = 16933
        mmTop = 57150
        mmWidth = 29633
        BandType = 7
      end
      object ppLabel30: TppLabel
        UserName = 'Label40'
        Caption = 'TIPO DE SERVIDOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16933
        mmTop = 60854
        mmWidth = 28310
        BandType = 7
      end
      object pplcanregmod_carlab: TppLabel
        UserName = 'Label41'
        Caption = '2,766'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 53446
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_sitact: TppLabel
        UserName = 'Label43'
        Caption = '2,766'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 57150
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_tipser: TppLabel
        UserName = 'Label45'
        Caption = '2,766'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 141552
        mmTop = 60854
        mmWidth = 11377
        BandType = 7
      end
      object pplcanregmod_carlab_por: TppLabel
        UserName = 'Label46'
        Caption = '94.76'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 53446
        mmWidth = 9260
        BandType = 7
      end
      object pplcanregmod_sitact_por: TppLabel
        UserName = 'lcanregmod_sitact_por'
        Caption = '94.76'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 57150
        mmWidth = 9260
        BandType = 7
      end
      object pplcanregmod_tipser_por: TppLabel
        UserName = 'lcanregmod_tipser_por'
        Caption = '94.76'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 164571
        mmTop = 60854
        mmWidth = 9260
        BandType = 7
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprresactpad
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 168
    Top = 432
  end
  object ppbdInconsistencias: TppBDEPipeline
    DataSource = DM1.dsQry22
    UserName = 'bdereporte1'
    Left = 863
    Top = 7
  end
  object ppbdDetalleUndGes: TppBDEPipeline
    UserName = 'bdDetalleUndGes'
    Left = 831
    Top = 7
    MasterDataPipelineName = 'ppbdInconsistencias'
  end
end
