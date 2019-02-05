object Festadisticas: TFestadisticas
  Left = 312
  Top = 177
  BorderStyle = bsDialog
  Caption = 'Estadisticas de actualizaci'#243'n'
  ClientHeight = 437
  ClientWidth = 784
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
  object rgest: TRadioGroup
    Left = 3
    Top = 1
    Width = 197
    Height = 64
    Caption = ' Tipo de reporte '
    ItemIndex = 0
    Items.Strings = (
      'Estadistica a actualizar'
      'Registros inconsistentes'
      'Campos modificados')
    TabOrder = 0
    OnClick = rgestClick
  end
  object btnimprime: TBitBtn
    Left = 622
    Top = 406
    Width = 76
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 1
    OnClick = btnimprimirClick
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
    Left = 701
    Top = 406
    Width = 76
    Height = 28
    Caption = 'Salir'
    TabOrder = 2
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
    Left = 203
    Top = 1
    Width = 494
    Height = 95
    Caption = ' Seleccione el campo '
    Columns = 3
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
      'Registros modificados')
    TabOrder = 3
    OnClick = rgtipincClick
  end
  object dbgprevio: TwwDBGrid
    Left = 3
    Top = 101
    Width = 774
    Height = 299
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
    TitleButtons = False
  end
  object btnfiltrar: TBitBtn
    Left = 710
    Top = 6
    Width = 65
    Height = 28
    Caption = 'Filtrar'
    TabOrder = 5
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
    Left = 727
    Top = 47
    Width = 57
    Height = 33
    DataSource = DM1.dsReporte
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object btnaExcel: TBitBtn
    Left = 543
    Top = 406
    Width = 76
    Height = 28
    Caption = 'A Excel'
    TabOrder = 7
    OnClick = btnExcelClick
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
  object ppbdereporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdereporte'
    Left = 727
    Top = 39
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
    Top = 392
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
        mmWidth = 76728
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        mmHeight = 9525
        mmLeft = 159544
        mmTop = 19579
        mmWidth = 21961
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        mmHeight = 9525
        mmLeft = 140229
        mmTop = 19579
        mmWidth = 19578
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        mmHeight = 9525
        mmLeft = 125677
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
        mmLeft = 141288
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
        mmLeft = 160602
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
        mmLeft = 126736
        mmTop = 20638
        mmWidth = 10583
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        mmHeight = 9525
        mmLeft = 181240
        mmTop = 19579
        mmWidth = 27781
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
        mmLeft = 182298
        mmTop = 20638
        mmWidth = 18785
        BandType = 0
      end
      object ppltitutloincon: TppLabel
        UserName = 'ltitutloincon'
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
        mmLeft = 208757
        mmTop = 19579
        mmWidth = 61382
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
        mmLeft = 209815
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
        mmWidth = 75671
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
        mmLeft = 126207
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
        mmLeft = 140759
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
        mmLeft = 160073
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
        mmLeft = 182298
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
        mmLeft = 191294
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
        mmLeft = 200290
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
        mmHeight = 3439
        mmLeft = 209286
        mmTop = 0
        mmWidth = 60325
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
    Top = 392
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
    Top = 392
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
    Top = 393
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdDetalleUndGes'
    object ppTitleBand2: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 79640
      mmPrintPosition = 0
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
        mmHeight = 3344
        mmLeft = 144865
        mmTop = 55827
        mmWidth = 6477
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
        mmHeight = 3344
        mmLeft = 144865
        mmTop = 59531
        mmWidth = 6477
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
        mmHeight = 4106
        mmLeft = 25775
        mmTop = 24871
        mmWidth = 135001
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
        mmHeight = 3344
        mmLeft = 148463
        mmTop = 63236
        mmWidth = 2879
        BandType = 1
      end
      object pplnomarcest: TppLabel
        UserName = 'ltitulo1'
        Caption = 'UGEL CHICLAYO 01 2009-TODO.txt'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 77258
        mmTop = 41804
        mmWidth = 44979
        BandType = 1
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        Caption = 'PADRON MES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 28310
        mmTop = 38365
        mmWidth = 19050
        BandType = 1
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        Caption = 'NOMBRE DEL ARCHIVO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 28310
        mmTop = 42069
        mmWidth = 38365
        BandType = 1
      end
      object ppLabel126: TppLabel
        UserName = 'Label17'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 75142
        mmTop = 41804
        mmWidth = 1058
        BandType = 1
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 75142
        mmTop = 38100
        mmWidth = 1058
        BandType = 1
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        Caption = 'TIPO DOC.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 129117
        mmTop = 33602
        mmWidth = 16669
        BandType = 1
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 146579
        mmTop = 33602
        mmWidth = 1058
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
        mmTop = 51858
        mmWidth = 25929
        BandType = 1
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        Caption = 'N'#186' DE REGISTROS RECEPCIONADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 16404
        mmTop = 56092
        mmWidth = 47361
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
        mmTop = 59796
        mmWidth = 59531
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
        mmTop = 63500
        mmWidth = 64558
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
        mmTop = 51594
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
        mmTop = 51594
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
        mmLeft = 77258
        mmTop = 38100
        mmWidth = 16140
        BandType = 1
      end
      object ppltipasoest: TppLabel
        UserName = 'Label6'
        Caption = 'ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 148696
        mmTop = 33602
        mmWidth = 14288
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
        mmLeft = 165100
        mmTop = 55827
        mmWidth = 7938
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
        mmHeight = 3344
        mmLeft = 166561
        mmTop = 59531
        mmWidth = 6477
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
        mmHeight = 3344
        mmLeft = 168000
        mmTop = 63236
        mmWidth = 5038
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label24'
        Caption = 'DEPARTAMENTO DEL PADRON'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 28310
        mmTop = 34660
        mmWidth = 45244
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label25'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 75142
        mmTop = 34660
        mmWidth = 1058
        BandType = 1
      end
      object ppldptopadron: TppLabel
        UserName = 'Label27'
        Caption = 'LAMBAYEQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 77258
        mmTop = 34660
        mmWidth = 19579
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
        mmLeft = 28310
        mmTop = 45773
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
        mmLeft = 110861
        mmTop = 45773
        mmWidth = 1058
        BandType = 1
      end
      object pplundgestabar: TppLabel
        UserName = 'Label28'
        Caption = 'CM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3344
        mmLeft = 112977
        mmTop = 45773
        mmWidth = 4445
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
        mmLeft = 171450
        mmTop = 74877
        mmWidth = 4233
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
      object ppImage1: TppImage
        UserName = 'Image1'
        AutoSize = True
        MaintainAspectRatio = True
        Stretch = True
        Picture.Data = {
          07544269746D617062BB0000424D62BB0000000000003600000028000000A100
          00006300000001001800000000002CBB00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC686868FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF7A7A7A0000000000000000000000
          00999999FFFFFFD7D7D75353530000003939396868687A7A7AF5F5F5E1E1E168
          6868000000000000A7A7A7FFFFFFFFFFFF535353D7D7D7C0C0C07A7A7AFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B8B8B000000000000686868ECECECFFFF
          FFFFFFFFFFFFFFFFFFFF5353530000000000000000008B8B8BFFFFFFFFFFFF00
          0000000000000000000000000000C0C0C0FFFFFFFFFFFFFFFFFF535353D7D7D7
          FFFFFFFFFFFFFFFFFFFFFFFF999999B4B4B4FFFFFFFFFFFFFFFFFF7A7A7AB4B4
          B4B4B4B4000000000000000000000000535353FFFFFFFFFFFFB4B4B4000000F5
          F5F5FFFFFFFFFFFF999999B4B4B4FFFFFFD7D7D7393939000000000000B4B4B4
          FFFFFF999999B4B4B4FFFFFFFFFFFF8B8B8B000000000000686868ECECECFFFF
          FF999999B4B4B4FFFFFFFFFFFFD7D7D7000000ECECECFFFFFFFFFFFFFFFFFFD7
          D7D7393939000000000000B4B4B4FFFFFFFFFFFFD7D7D7535353000000000000
          B4B4B4FFFFFFFFFFFFF5F5F57A7A7A0000000000008B8B8BFFFFFFECECEC0000
          00CCCCCC393939FFFFFFFFFFFFFFFFFFF5F5F5000000C0C0C000000000000000
          0000000000D7D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF7A7A7AD7D7D7FFFFFFFF
          FFFFFFFFFFFFFFFFECECEC000000C0C0C0D7D7D7686868000000CCCCCCFFFFFF
          7A7A7A999999FFFFFFE1E1E1393939D7D7D7FFFFFF535353D7D7D7C0C0C07A7A
          7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7686868ECECECFFFFFF7A7A7A68
          6868FFFFFFFFFFFFFFFFFFFFFFFF535353D7D7D7FFFFFFF5F5F5686868B4B4B4
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5353
          53D7D7D7FFFFFFFFFFFFFFFFFFFFFFFF999999B4B4B4FFFFFFFFFFFFD7D7D739
          3939F5F5F5B4B4B4B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF686868
          535353CCCCCCFFFFFFFFFFFF999999B4B4B4ECECEC000000B4B4B4FFFFFFE1E1
          E1393939E1E1E1999999B4B4B4FFFFFFA7A7A7686868ECECECFFFFFF7A7A7A68
          6868FFFFFF999999B4B4B4FFFFFFFFFFFF535353000000ECECECFFFFFFFFFFFF
          ECECEC000000B4B4B4FFFFFFE1E1E1393939E1E1E1ECECEC393939B4B4B4FFFF
          FFD7D7D7393939CCCCCCFFFFFF999999686868F5F5F5F5F5F5686868B4B4B4EC
          ECEC000000F5F5F5393939E1E1E1FFFFFFFFFFFFCCCCCC393939C0C0C07A7A7A
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF7A7A7AD7D7D7
          FFFFFFFFFFFFFFFFFFFFFFFFA7A7A7A7A7A7FFFFFFE1E1E1C0C0C0B4B4B48B8B
          8BFFFFFF000000ECECECFFFFFFFFFFFFA7A7A7A7A7A7FFFFFF535353D7D7D7C0
          C0C07A7A7AFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5000000ECECECFFFFFFFFFFFF
          FFFFFF535353D7D7D7FFFFFFFFFFFFFFFFFF535353D7D7D7FFFFFFFFFFFFD7D7
          D7393939FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF535353D7D7D7FFFFFFFFFFFFFFFFFFFFFFFF999999B4B4B4FFFFFFFFFFFF
          7A7A7AB4B4B4FFFFFFB4B4B4B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5
          F5393939B4B4B4999999FFFFFFFFFFFF999999B4B4B4C0C0C0686868FFFFFFFF
          FFFFFFFFFF7A7A7AC0C0C0999999B4B4B4F5F5F5000000ECECECFFFFFFFFFFFF
          FFFFFF535353D7D7D7999999B4B4B4FFFFFFC0C0C0535353000000ECECECFFFF
          FFFFFFFFC0C0C0686868FFFFFFFFFFFFFFFFFF7A7A7AC0C0C0A7A7A7999999FF
          FFFFFFFFFFFFFFFFC0C0C07A7A7AF5F5F5000000F5F5F5FFFFFFFFFFFFE1E1E1
          393939ECECEC000000FFFFFF8B8B8BB4B4B4FFFFFFFFFFFFA7A7A7999999C0C0
          C07A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF7A7A
          7AD7D7D7FFFFFFFFFFFFFFFFFFFFFFFF686868CCCCCCFFFFFFFFFFFFFFFFFFE1
          E1E1393939ECECEC000000FFFFFFFFFFFFFFFFFFB4B4B4999999FFFFFF535353
          D7D7D7C0C0C07A7A7AFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC686868FFFFFFFFFF
          FFFFFFFFFFFFFF999999B4B4B4FFFFFFFFFFFFFFFFFF535353D7D7D7FFFFFFFF
          FFFFF5F5F5000000F5F5F5000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF535353D7D7D7FFFFFFFFFFFFFFFFFFFFFFFF999999B4B4B4FFFF
          FFB4B4B4535353FFFFFFFFFFFFB4B4B4B4B4B4FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFB4B4B48B8B8BE1E1E1393939FFFFFFFFFFFF999999B4B4B4FFFFFFFFFFFF
          FFFFFFFFFFFFECECEC393939CCCCCC999999B4B4B4CCCCCC686868FFFFFFFFFF
          FFFFFFFFFFFFFF999999B4B4B4999999B4B4B4FFFFFF535353C0C0C0000000EC
          ECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC393939CCCCCC686868
          CCCCCCFFFFFFFFFFFFFFFFFFECECEC000000CCCCCC686868FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFECECEC000000FFFFFFC0C0C0000000000000000000000000CC
          CCCCC0C0C07A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFF7A7A7A000000000000000000000000D7D7D7535353D7D7D7FFFFFFFFFFFF
          FFFFFFECECEC000000ECECEC000000FFFFFFFFFFFFFFFFFFB4B4B4999999FFFF
          FF535353D7D7D7C0C0C0000000000000000000000000C0C0C0C0C0C07A7A7AFF
          FFFFFFFFFFFFFFFFFFFFFFB4B4B4B4B4B4FFFFFFFFFFFFFFFFFF535353D7D7D7
          FFFFFFFFFFFFFFFFFF000000ECECEC000000000000000000000000000000FFFF
          FFFFFFFFFFFFFFFFFFFF535353000000000000000000686868F5F5F599999900
          0000000000000000686868F5F5F5FFFFFFB4B4B4000000000000000000000000
          B4B4B4FFFFFF8B8B8BB4B4B4FFFFFF393939E1E1E1FFFFFF999999B4B4B4FFFF
          FFECECEC999999393939000000999999FFFFFF999999B4B4B4C0C0C07A7A7AFF
          FFFFFFFFFFFFFFFFFFFFFFB4B4B4B4B4B4999999B4B4B4C0C0C0535353FFFFFF
          000000ECECECFFFFFFFFFFFFFFFFFFECECEC999999393939000000999999FFFF
          FF535353D7D7D7FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C07A7A7AFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFECECEC000000FFFFFFF5F5F5000000F5F5F5E1E1E1
          393939F5F5F5C0C0C07A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFF7A7A7AD7D7D7FFFFFFFFFFFFFFFFFFFFFFFF686868CCCCCCFFFF
          FFFFFFFFFFFFFFE1E1E1393939ECECEC000000FFFFFFFFFFFFFFFFFFB4B4B499
          9999FFFFFF535353D7D7D7C0C0C07A7A7AFFFFFFFFFFFFD7D7D7000000CCCCCC
          686868FFFFFFFFFFFFFFFFFFFFFFFF999999B4B4B4FFFFFFFFFFFFFFFFFF5353
          53D7D7D7FFFFFFFFFFFFFFFFFF000000ECECEC000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF535353D7D7D7FFFFFFFFFFFF7A7A7AA7A7A7
          999999B4B4B4FFFFFFFFFFFFCCCCCC535353FFFFFFB4B4B4B4B4B4FFFFFFFFFF
          FFFFFFFFFFFFFFF5F5F5393939F5F5F5FFFFFFA7A7A7A7A7A7FFFFFF999999B4
          B4B4FFFFFF5353538B8B8BE1E1E1FFFFFFFFFFFFFFFFFF999999B4B4B4D7D7D7
          686868FFFFFFFFFFFFFFFFFFFFFFFF999999B4B4B4999999B4B4B4535353C0C0
          C0FFFFFF000000ECECECFFFFFFFFFFFFFFFFFF5353538B8B8BE1E1E1FFFFFFFF
          FFFFFFFFFF7A7A7ACCCCCCFFFFFFFFFFFFFFFFFFECECEC000000CCCCCC686868
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECEC000000FFFFFFFFFFFF7A7A7AC0C0
          C0B4B4B48B8B8BFFFFFFC0C0C07A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFF7A7A7AD7D7D7FFFFFFFFFFFFFFFFFFFFFFFF999999A7
          A7A7FFFFFFFFFFFFFFFFFFB4B4B48B8B8BECECEC000000FFFFFFFFFFFFFFFFFF
          B4B4B4999999FFFFFF535353D7D7D7C0C0C07A7A7AFFFFFFFFFFFFFFFFFF5353
          53CCCCCC000000ECECECFFFFFFFFFFFFFFFFFF393939CCCCCCFFFFFFFFFFFFFF
          FFFF535353D7D7D7FFFFFFFFFFFFD7D7D7393939FFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF535353D7D7D7FFFFFFFFFFFFC0C0
          C07A7A7A999999B4B4B4FFFFFFFFFFFFFFFFFF393939E1E1E1B4B4B4B4B4B4FF
          FFFFFFFFFFFFFFFFFFFFFFCCCCCC686868FFFFFFFFFFFFCCCCCC686868FFFFFF
          999999B4B4B4ECECEC000000FFFFFFFFFFFFF5F5F5000000ECECEC999999B4B4
          B4F5F5F5000000ECECECFFFFFFFFFFFFFFFFFF393939CCCCCC99999953535353
          5353FFFFFFFFFFFF000000ECECECFFFFFFFFFFFFECECEC000000FFFFFFFFFFFF
          F5F5F5000000ECECECA7A7A7999999FFFFFFFFFFFFFFFFFFB4B4B4686868ECEC
          EC000000F5F5F5FFFFFFFFFFFFC0C0C0686868ECECEC000000FFFFFFFFFFFFB4
          B4B48B8B8B8B8B8BC0C0C0FFFFFFC0C0C07A7A7AFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFF7A7A7AD7D7D7FFFFFFFFFFFFFFFFFFFFFFFF
          ECECEC000000C0C0C0FFFFFFD7D7D7393939D7D7D7ECECEC000000FFFFFFFFFF
          FFFFFFFFB4B4B4999999FFFFFF535353D7D7D7C0C0C07A7A7AFFFFFFFFFFFFE1
          E1E1000000F5F5F5A7A7A7686868ECECECFFFFFF7A7A7A686868FFFFFFFFFFFF
          FFFFFFFFFFFF535353D7D7D7FFFFFFF5F5F5686868B4B4B4FFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF535353D7D7D7FFFFFFFF
          FFFF8B8B8BA7A7A7999999B4B4B4FFFFFFFFFFFFCCCCCC000000F5F5F5B4B4B4
          B4B4B4FFFFFFFFFFFFFFFFFFFFFFFF999999A7A7A7FFFFFFFFFFFFF5F5F50000
          00ECECEC999999B4B4B4F5F5F5393939CCCCCCFFFFFFB4B4B4535353FFFFFF99
          9999B4B4B4FFFFFFA7A7A7686868ECECECFFFFFF7A7A7A686868FFFFFF999999
          000000C0C0C0FFFFFFFFFFFF000000ECECECFFFFFFFFFFFFF5F5F5393939CCCC
          CCFFFFFFB4B4B4535353FFFFFFECECEC393939B4B4B4FFFFFFD7D7D7393939CC
          CCCCFFFFFF8B8B8B686868F5F5F5ECECEC535353C0C0C0ECECEC000000FFFFFF
          FFFFFFE1E1E1393939000000F5F5F5FFFFFFC0C0C07A7A7AFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF7A7A7A0000000000000000000000
          00B4B4B4FFFFFFD7D7D7535353000000393939C0C0C0FFFFFFECECEC000000FF
          FFFFFFFFFFFFFFFFB4B4B4999999FFFFFF535353D7D7D7C0C0C0000000000000
          000000000000B4B4B4FFFFFFFFFFFF8B8B8B0000000000007A7A7AECECECFFFF
          FFFFFFFFFFFFFFFFFFFF5353530000000000000000007A7A7AFFFFFFFFFFFF00
          0000000000000000000000000000D7D7D7FFFFFFFFFFFFFFFFFF535353000000
          000000000000686868ECECEC999999000000000000000000000000B4B4B4FFFF
          FFB4B4B40000000000000000000000007A7A7A393939CCCCCCFFFFFFFFFFFFFF
          FFFF7A7A7AB4B4B4999999B4B4B4FFFFFFC0C0C0393939000000535353E1E1E1
          FFFFFF999999B4B4B4FFFFFFFFFFFF8B8B8B0000000000007A7A7AECECECFFFF
          FF9999997A7A7AFFFFFFFFFFFFFFFFFF000000ECECECFFFFFFFFFFFFFFFFFFC0
          C0C0393939000000535353E1E1E1FFFFFFFFFFFFD7D7D7535353000000393939
          B4B4B4FFFFFFFFFFFFFFFFFF8B8B8B000000000000999999FFFFFFECECEC0000
          00FFFFFFFFFFFFFFFFFF6868687A7A7AFFFFFFFFFFFFC0C0C07A7A7AFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
          000000007A7A7AF5F5F5FFFFFFD7D7D700000000000000000000000000000099
          9999FFFFFF7A7A7AC0C0C0FFFFFFFFFFFFFFFFFFC0C0C0535353FFFFFF000000
          ECECECFFFFFFFFFFFFFFFFFF9999999999997A7A7AB4B4B4FFFFFFFFFFFFFFFF
          FFF5F5F5000000E1E1E17A7A7AC0C0C0FFFFFF393939686868FFFFFFB4B4B499
          9999D7D7D7393939FFFFFFFFFFFFFFFFFFFFFFFFA7A7A78B8B8BFFFFFFFFFFFF
          FFFFFFD7D7D7535353FFFFFFB4B4B4000000CCCCCCFFFFFF000000ECECEC7A7A
          7AB4B4B4FFFFFFFFFFFFFFFFFFF5F5F5000000E1E1E1FFFFFFD7D7D768686800
          0000000000686868D7D7D7FFFFFFECECEC000000ECECECFFFFFFC0C0C0393939
          000000000000A7A7A7FFFFFFFFFFFFFFFFFFECECEC000000ECECECFFFFFFFFFF
          FFD7D7D7000000000000000000000000000000999999FFFFFF000000ECECECFF
          FFFFFFFFFFFFFFFF999999999999FFFFFF535353C0C0C07A7A7AB4B4B4FFFFFF
          FFFFFFFFFFFFF5F5F5000000E1E1E1535353000000000000000000000000ECEC
          ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000EC
          ECECFFFFFFFFFFFF7A7A7A7A7A7AFFFFFFD7D7D7535353FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF7A7A7AC0C0C0FFFFFFFFFFFFF5F5F5535353D7D7D7FFFF
          FF000000ECECECFFFFFFFFFFFFE1E1E1393939F5F5F5B4B4B4686868FFFFFFFF
          FFFFFFFFFFCCCCCC535353FFFFFF7A7A7AC0C0C0E1E1E1000000000000F5F5F5
          B4B4B4999999FFFFFF393939CCCCCCFFFFFFFFFFFFFFFFFF686868C0C0C0FFFF
          FFFFFFFFFFFFFFD7D7D7535353FFFFFF8B8B8B000000A7A7A7FFFFFF000000EC
          ECECB4B4B4686868FFFFFFFFFFFFFFFFFFCCCCCC535353FFFFFFE1E1E1000000
          A7A7A7FFFFFFF5F5F58B8B8B000000E1E1E1ECECEC000000ECECECD7D7D70000
          00C0C0C0FFFFFFECECEC535353C0C0C0FFFFFFFFFFFFECECEC000000ECECECFF
          FFFFFFFFFFD7D7D7535353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          ECECECFFFFFFFFFFFFE1E1E1393939F5F5F5FFFFFF535353C0C0C0B4B4B46868
          68FFFFFFFFFFFFFFFFFFCCCCCC535353FFFFFF535353C0C0C0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000ECECECFFFFFFFFFFFFF5F5F5000000E1E1E1D7D7D7535353FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7AC0C0C0FFFFFFFFFFFFB4B4B47A7A7AFF
          FFFFFFFFFF000000ECECECFFFFFFFFFFFF7A7A7AB4B4B4FFFFFFF5F5F5000000
          F5F5F5FFFFFFFFFFFF8B8B8BA7A7A7FFFFFF7A7A7AC0C0C0B4B4B48B8B8B6868
          68B4B4B4B4B4B4999999FFFFFFA7A7A7A7A7A7FFFFFFFFFFFFE1E1E1000000F5
          F5F5FFFFFFFFFFFFFFFFFFD7D7D7535353FFFFFF393939B4B4B4393939FFFFFF
          000000ECECECF5F5F5000000F5F5F5FFFFFFFFFFFF8B8B8BA7A7A7FFFFFF8B8B
          8B999999FFFFFFFFFFFFFFFFFFFFFFFF535353D7D7D7ECECEC000000ECECECA7
          A7A78B8B8BFFFFFFFFFFFFFFFFFFB4B4B4999999FFFFFFFFFFFFECECEC000000
          ECECECFFFFFFFFFFFFD7D7D7535353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000ECECECFFFFFFFFFFFF7A7A7AB4B4B4FFFFFFFFFFFF535353C0C0C0F5
          F5F5000000F5F5F5FFFFFFFFFFFF8B8B8BA7A7A7FFFFFF535353C0C0C0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF000000ECECECFFFFFFFFFFFFFFFFFF686868C0C0C0D7D7D7535353FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7AC0C0C0FFFFFFD7D7D7393939
          E1E1E1FFFFFFFFFFFF000000ECECECFFFFFFB4B4B4535353F5F5F5FFFFFFFFFF
          FF7A7A7A000000000000000000000000E1E1E1FFFFFF7A7A7AC0C0C0686868B4
          B4B4A7A7A78B8B8BB4B4B4999999FFFFFFD7D7D7000000000000000000000000
          8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7535353CCCCCC393939F5F5F50000
          00E1E1E1000000ECECECFFFFFF7A7A7A000000000000000000000000E1E1E1FF
          FFFF393939CCCCCCFFFFFFFFFFFFFFFFFFFFFFFF535353D7D7D7ECECEC000000
          ECECECFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5686868A7A7A7FFFFFFFFFFFFECEC
          EC000000ECECECFFFFFFFFFFFFD7D7D7535353FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000ECECECFFFFFFB4B4B4535353F5F5F5FFFFFFFFFFFF535353
          C0C0C0FFFFFF7A7A7A000000000000000000000000E1E1E1FFFFFF535353C0C0
          C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000ECECECFFFFFFFFFFFFFFFFFF7A7A7AC0C0C0D7D7D7
          000000000000000000000000000000D7D7D7FFFFFF7A7A7A0000000000000000
          00686868ECECECFFFFFFFFFFFF0000000000000000000000007A7A7AFFFFFFFF
          FFFFFFFFFFB4B4B47A7A7AFFFFFFD7D7D7535353FFFFFFFFFFFF7A7A7AB4B4B4
          000000E1E1E1D7D7D7393939A7A7A7999999FFFFFFFFFFFF393939D7D7D7FFFF
          FF7A7A7AC0C0C0FFFFFFFFFFFFFFFFFFFFFFFFD7D7D7535353A7A7A78B8B8BFF
          FFFF7A7A7AB4B4B4000000ECECECFFFFFFB4B4B47A7A7AFFFFFFD7D7D7535353
          FFFFFFFFFFFF000000D7D7D7FFFFFFD7D7D7000000000000000000D7D7D7ECEC
          EC000000ECECECFFFFFFE1E1E19999993939390000007A7A7AF5F5F5FFFFFFFF
          FFFFECECEC000000ECECECFFFFFFFFFFFFD7D7D7000000000000000000000000
          000000D7D7D7FFFFFF0000000000000000000000007A7A7AFFFFFFFFFFFFFFFF
          FF535353C0C0C0FFFFFFB4B4B47A7A7AFFFFFFD7D7D7535353FFFFFFFFFFFF53
          5353C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000ECECECFFFFFFFFFFFFFFFFFF686868C0C0
          C0D7D7D7535353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7AC0C0C0FF
          FFFFFFFFFFE1E1E1393939ECECECFFFFFF000000ECECECFFFFFFFFFFFFC0C0C0
          535353FFFFFFFFFFFFF5F5F5000000F5F5F5A7A7A7A7A7A7FFFFFFFFFFFF7A7A
          7A8B8B8B393939FFFFFFFFFFFF393939686868999999FFFFFFFFFFFFA7A7A7A7
          A7A7F5F5F5000000F5F5F5FFFFFFFFFFFFFFFFFFFFFFFFD7D7D7535353686868
          B4B4B4FFFFFFB4B4B4686868000000ECECECFFFFFFF5F5F5000000F5F5F5A7A7
          A7A7A7A7FFFFFFFFFFFF393939CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFECECEC000000ECECECECECEC393939999999ECECECFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFECECEC000000ECECECFFFFFFFFFFFFD7D7D7535353FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF000000ECECECFFFFFFFFFFFFC0C0C0535353FF
          FFFFFFFFFF535353C0C0C0FFFFFFF5F5F5000000F5F5F5A7A7A7A7A7A7FFFFFF
          FFFFFF535353C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ECECECFFFFFFFFFFFFF5F5F500
          0000E1E1E1D7D7D7535353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7A7A
          C0C0C0FFFFFFFFFFFFFFFFFF7A7A7AB4B4B4FFFFFF000000ECECECFFFFFFFFFF
          FFFFFFFF000000E1E1E1FFFFFFFFFFFF7A7A7AB4B4B4393939E1E1E1FFFFFFFF
          FFFF7A7A7A393939999999FFFFFFFFFFFF8B8B8B000000999999FFFFFFFFFFFF
          D7D7D7393939B4B4B48B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D73939
          39000000ECECECFFFFFFE1E1E1000000000000ECECECFFFFFFFFFFFF7A7A7AB4
          B4B4393939E1E1E1FFFFFFFFFFFF8B8B8B999999FFFFFFFFFFFFFFFFFFE1E1E1
          000000F5F5F5ECECEC000000ECECECC0C0C0535353FFFFFFFFFFFFFFFFFF6868
          68C0C0C0FFFFFFFFFFFFECECEC000000ECECECFFFFFFFFFFFFD7D7D7535353FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ECECECFFFFFFFFFFFFFFFFFF
          000000E1E1E1FFFFFF535353C0C0C0FFFFFFFFFFFF7A7A7AB4B4B4393939E1E1
          E1FFFFFFFFFFFF535353C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ECECECFFFFFFFFFFFF
          7A7A7A7A7A7AFFFFFFD7D7D7535353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF7A7A7AC0C0C0FFFFFFFFFFFFECECEC393939CCCCCCFFFFFF000000ECECECFF
          FFFFFFFFFFCCCCCC000000F5F5F5FFFFFFFFFFFFB4B4B4535353535353FFFFFF
          FFFFFFFFFFFF7A7A7A000000CCCCCCFFFFFFFFFFFFCCCCCC000000999999FFFF
          FFFFFFFFFFFFFF393939535353C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7
          D7D7000000686868FFFFFFFFFFFFFFFFFF686868000000ECECECFFFFFFFFFFFF
          B4B4B4535353535353FFFFFFFFFFFFFFFFFFE1E1E1000000B4B4B4FFFFFFF5F5
          F5686868999999FFFFFFECECEC000000ECECECE1E1E1000000D7D7D7FFFFFFC0
          C0C0000000F5F5F5FFFFFFFFFFFFECECEC000000ECECECFFFFFFFFFFFFD7D7D7
          535353FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000ECECECFFFFFFFFFF
          FFCCCCCC000000F5F5F5FFFFFF535353C0C0C0FFFFFFFFFFFFB4B4B453535353
          5353FFFFFFFFFFFFFFFFFF535353C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
          00000000686868ECECECFFFFFFD7D7D7000000000000000000000000000000B4
          B4B4FFFFFF7A7A7A0000000000000000000000007A7A7AFFFFFFFFFFFF000000
          000000000000000000000000B4B4B4FFFFFFFFFFFFFFFFFFF5F5F5000000A7A7
          A7FFFFFFFFFFFFFFFFFF7A7A7A000000F5F5F5FFFFFFFFFFFFF5F5F500000099
          9999FFFFFFFFFFFFFFFFFFA7A7A7000000F5F5F5FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFD7D7D7000000A7A7A7FFFFFFFFFFFFFFFFFFA7A7A7000000ECECECFFFF
          FFFFFFFFF5F5F5000000A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFD7D7D768686800
          00000000007A7A7AF5F5F5FFFFFFECECEC000000ECECECFFFFFFB4B4B4000000
          000000393939C0C0C0FFFFFF9999990000000000000000000000000000009999
          99D7D7D7000000000000000000000000000000B4B4B4FFFFFF00000000000000
          0000000000000000B4B4B4FFFFFFFFFFFF535353C0C0C0FFFFFFFFFFFFF5F5F5
          000000A7A7A7FFFFFFFFFFFFFFFFFF535353C0C0C0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFEFEFEFEFFFEFEFFFEFEFFFFFFFF
          FFFEFEFEFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFEFEFFFEFCFFFFFCFFFFFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFEFEFFFEFFFFFFFFFFFFFEFFFFFEFFFF
          FEFFFEFEFFFEFEFEFEFFFEFEFFFFFFFFFFFFFFFFFFFEFFFFFDFFFFFDFFFFFDFF
          FFFEFFFFFEFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFEFFFFFE
          FFFEFEFFFFFEFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFBFFFFF9FFFFF8FFFFF7FFFFF6FFFFF7FF
          FFFAFFFEFDFFFEFDFDFCFFFEFDFEFEFCFDFDFAFAFBF8F7FAF7F5FBF8F4FDFAF6
          FFFCFEFBFEFAF7FAFEFDFDFFFFFAFFFFF4FFFFF2FFFFF4FCFFF6F2FFF9E6FFFD
          E8FFFFF2FEFFFBFCFFFEFCFFFFFDFDFBFEF8F6FFF3F7FFF4FFFEFEFFFEFEF8FF
          FEF5FEFBF2FBFAF2FBFAF6F9F8FBFAF9FFFEFDFEFCFBFDFCFBF5FEFBF1FFFBF0
          FFFBF0FFFBF4FEFBF8FDFBFCFBFCFFF9FFFFF8FFFFFAFFFFFBFFFFFFFEFDFFFE
          F6FEFCF2FFFAF4FFFCF8FEFFFDFCFEFEFAFEFFFBFFFFFDFFFFFDFFF8FFFFF4FD
          FDFAFDFEFFFDFFFFFDFFFEFEFFFBFFFFF8FFFFF8FFFFF8FEFFFAFEFFFEFDFFFF
          FCFFFFFCFFFFFCFFFFFCFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFBFFFFF9FFFFF8FFFFF7FFFFF6
          FFFFF7FFFFFAFFFEFDFFFEFFFFFEFFFEFDFFFFFCFFFFFCFEFFFCFCFFFCF9FFFC
          F6FFFCF6FFFCFFFCFFFFFCFFFFFEFEFEFFF8FEFDF1FFFDF0FFFFF4FAFDF3E6F5
          EED3EEEAD4EDF1E6F2FAF3F5FEFBF2F9FDF0F2F6F5EDF0FDEDF3FBEFFAF2F2F8
          F0F0ECF5F2E9F2EFF3FCFAF6FFFEF3F7F6F3F1F0F8F6F5F9F7F6F8F7F6F0F9F6
          ECFAF6EBFAF6EBFAF6EFF9F6F3F9F6F5F5F9F4EDFEF1E6F9EFE5F1F6EEF5FEFE
          FDFDFFFEF7FFFDF2FFFAF3FFFCF8FEFFFDFDFFFFFBFFFFFBFFFFFDFFFFFCFFF8
          FEFFF6FFFFFBFEFFFFFDFFFFFDFFFEFEFFFBFFFFF8FFFFF8FFFFF8FEFFFAFEFF
          FEFDFFFFFCFFFFFCFFFFFCFFFFFCFFFFFDFFFFFDFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFFBFEFFFDFEFFFEFEFF
          FEFEFFFEFEFFFEFEFFFFFFFCFFFFFCFFFFFCFFFFFCFBFCF8F9FAF6FBFBF8FDFD
          FAFDFDFAFAFBF8F7F8F8F5F9FCFAFEFFF9FFFFF8FFFEFAFFFEFBFEFEF4FAFADA
          EBEDAACED65F9BAD3C89A03788A5398CA93487A32D839D28879C278F9D2F8C9D
          36869E35859D30829B31849C4FA2BA5DB0C84C9CB53A87A03887A03789A2348A
          A2308AA2308AA2308AA2308AA23489A23789A22E85922A898354ACA49FD4D0D9
          F1F1FCFEFBFFFFFCFEFDF9FCFCF8FAFEFAF7FFFCF4FFFCF1FEFDF0FDFCF1FCFB
          F5FDFCF4FDFCF7FDFCF9FEFEFCFFFFFDFFFFFDFFFFFFFFFFFEFDFFFEFDFFFEFD
          FFFFFDFFFFFDFFFFFDFFFEFEFFFDFFFFFDFFFFFBFFFFFBFFFFFBFFFFFBFFFFFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFEFFFBFEFFFEFE
          FFFFFDFFFFFDFFFFFEFFFFFEFEFFFFFCFFFFFCFFFFFCFFFFFCFDFEFAFCFDF9FD
          FEFAFFFFFCFFFFFCFEFEFCFDFEFEF6FBFEF6FBFDF3FAFAEFF7F6F2F8F7F7FBFB
          F7FDFEE7F8FCC0E7F061A0B4267891156B8A146E8D0F6A880A6985066F860473
          84086D80126984146B860D66810E6782368FAA49A2BD3188A3186C88166B8712
          6B860F6C860B6C860B6C860B6C860B6C86106C86126B8613717F22898159BAB0
          B2EDE7E1FCFCFDFFFCFEFAF7FFFAF7FFFDF9FBFFFBF7FFFCF3FFFCF0FFFDF1FF
          FEF2FEFDF5FFFEF6FFFEF8FFFEFAFFFEFBFFFFFDFFFFFDFFFFFFFFFFFFFDFFFF
          FDFFFFFDFFFFFDFFFFFDFFFFFDFFFEFEFFFDFFFFFDFFFFFBFFFFFBFFFFFBFFFF
          FBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFFFE
          FBFFFFFCFFFFFCFFFFFDFFFFFEFEFFFFFDFCFFFBFCFFFBF7FCF6F9FDF8FCFEFB
          FEFFFDFFFFFEFFFDFEFEFBFDFEFBFDFFFCFFFCFCFCFCFCFCFBFDFDF9FCFCF7FB
          FCF1FBFEE3F6FDC7E8F596CEDF4698AC0E6E86056580046B8603698503698503
          6E87027186016981046681086B8608658109617E358AA74A9FBC2C83A00D6884
          0A6A86046B86046B86036B86036B86056B86076A860A6A860B6A86096C82137B
          8840A2AD86CFDEBDEEFEDDFAFEEEF9FCF4FAFDF8FBFDF8FBFDF6FBFCF9FDFCFA
          FFFCFBFFFDFBFEFAFCFEFAFBFEFBFDFFFCFEFFFEFEFEFEFEFFFEFFFFFEFFFFFE
          FFFEFEFFFEFEFFFEFFFFFEFFFEFEFFFEFEFFFCFFFFFBFFFFFBFFFFFAFFFFFAFF
          FFFAFFFFFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFBFFFFFAFFFFFBFFFFFCFFFFFDFFFFFEFEFEFFFCFBFFFBFBFFFBF6FDF6F9FE
          F9FCFFFBFEFFFEFFFEFEFFFCFEFFFBFFFEFAFEFFFBFFFFFDFCFFFCFBFEFBFBF4
          F3F6E1E5E9C6D2DAA4BCC879A0B146859927809402677F00688200718B006F89
          006B86016D87027088016C84026B8609708B0E6C890C63813589A84C9FBE2D85
          A30C6A87096D89026D88026D88026D88026D88066D88086D880A6C880B6C8807
          6B85046D8215798C38879E669FB592B8C9BED0DFDCE6F3F1F6FCF5F8FCF4F8FB
          FCFEFDFDFFFCFFFFFCFFFFFAFAFAF4FAFBF6FDFEFAFFFEFDFFFEFEFFFEFEFFFF
          FEFFFFFEFFFFFEFFFFFEFFFFFFFFFFFFFEFFFFFDFFFFFCFFFFFAFFFFFAFFFFFA
          FFFFFAFFFFFAFFFFFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFCFFFFFBFFFFFDFFFFFEFEFEFEFEFCFFFDFCFFFCFAFFFCFAFFFCFC
          FFFBFCFFFCFCFEFDFCFEFEF9FDFFF5FCFEF2FBFFEDFAFFE4F6FFD5EEFABFDCEB
          AACADB8FB7C9719FB4558AA33D7B96276E8A1062800D6F8A006886036F8B0575
          9103708C006A86036985076A85066A8502708909728A10708B0D6581358AA74F
          A2C02F89A50B6D88086E87016E86016E86016E86016D86046D86056D86066C86
          076C86066D88056C8A0469860A66841C69853378924F8DA56CA6B985B8C5A3CE
          D6BFE4E8D2EFEFE1F7F7F0FDFEF7FFFDF8FBF9F8FBFAFCFCFCFFFDFEFFFCFFFF
          FDFFFFFEFFFFFFFEFEFFFEFCFFFEFBFFFEFBFFFEFBFFFEFCFFFEFDFFFEFDFFFF
          FDFEFFFDFEFFFDFEFFFCFEFFFCFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFCFFFFFCFFFFFEFEFFFFFEFDFFFDFAFFFCFAFFFCFAFFFC
          FAFFFCFDFEFCFCFBFCFAFCFEF8FDFFF3FCFFE6F6FCD3E8F2BBD6E19FC5D67EAE
          C65C95B34384A32D7899176B8E07618701618800658C00678D006B8D006D8F03
          718E06708E036D8A026A860868850F67850C6A86017288046F850E6F890A647F
          3489A550A4C02F8CA7086D86036C83006F85006F85006F85006E85036D85036D
          85036D85036D85046D8A056C92026B9000698D006686006783046B850E72871D
          78893E8D9963A6AC7EB3B59FC6C9C4DDE1E2F2F4F6FAFEF8FDFFFCFAFFFEFAFF
          FFFBFFFFFCFFFFFDFFFFFEFFFDFFFEFAFFFEF8FFFEF8FFFEF9FFFEFCFFFEFEFF
          FEFFFFFEFFFEFFFFFEFFFFFDFFFDFDFFFDFDFFFEFEFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFCFCFDFEFEFDFEFFFCFDFFFCFCFFFCFCFF
          FDFCFFFDFAFDFCF7FAF9F4F9FBEFFAFDE5F7FDCEE8F2A9CDDC81AEC26094A743
          7A922D6C851B61801462811267880C688B05658A02638A01678D036D93046B8F
          046A8D036987046886066A87096C890D6C89106A870C6A86027287006D830D6D
          8709617C3487A353A4C0318BA5076B83026B8200708600708600718701708706
          6F87066E86046C84036B8304698606678B06688C056B8D066C8C056E89076D86
          076C810A6B7C116B771B6D742C737846858A689AA191B8C2BDD7E3D5EBF6E9F4
          FDF5F9FFFAFCFFFCFCFFFCFDFFFDFEFFFEFEFEFBFEFEF9FDFDFAFEFEFBFFFEFD
          FFFEFEFFFEFEFFFFFEFEFFFFFEFFFFFDFFFEFDFFFEFDFFFFFEFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F7F4F8FDF9F9FDF8FBFDF8FEFEFAFF
          FFFCFFFEFEFFFEFFFCFAFCF2F7F8E7F8FCD3F0F4AFDBE977B3C738849A0F6983
          076B8305617D0B6783086A8A056B8B036C8D046F93046D9303688E05688E0C72
          99106D9411678B116686156A8A18718F19759216738F0D6C8607698105718600
          7287106E870B5E793987A257A4BF3389A30A6B83066F85017186007085007086
          0673890F758C10748C0D71890A6D850E6B86156C8C156C8C136D8B136D8B126F
          890F70870A728507748304758101717C006B76016F7A046774136779478BA37B
          B5CFAFD8E8D6EEF6EDF9FDF5FDFFF6FCFFF8FBFEFDFBFEFEFDFEFCFBFCFEFDFE
          FFFEFEFFFFFEFEFFFEFDFFFFFDFFFFFFFFFFFFFDFFFFFCFFFFFCFFFFFEFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFEFAFAFFFAF5F9F3F8FAF6
          FFFEFBFEFEFBFDFDFDFBFEFFF9FDFFEAF9FBC6E1EC92B9C86396A837788D1464
          7B05627C0C718A0F738F03607A177795177A97157B9A1981A31983A61680A315
          7FA21B80A52682A72B80A42E82A33285A63089A82A87A41F7D9A12728C086A84
          016C8305748B0E69840F607C418EAB5CA8C4388CA70F6E8809718903748B006F
          86006E850D788F20849D2C8EA82F91AA2C8EA82886A3277D9F267D9F257E9D25
          7E9D25809B2282991E83971B84951584920C7B89026F7D04738210748411677B
          1A637C2F6F8A5A8CA899BBCFCDE3EDE6F6FAEEF9FEEFF5FCF6F5FBFEFCFEFEFC
          FEFFFCFEFFFEFEFFFFFEFEFFFEFCFFFFFCFFFFFEFFFFFFFDFFFFFCFFFFFCFFFF
          FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F6F0FDFCF6FFFF
          FBFFFEFDFCFBFCF7F8FAEFFBFDE1FDFECEFBFB91D3E14EA1B113768801627700
          637B036C870971900B6C8C0164841978884DA0B24E9CAE4D99AB4FA2B34FA8B7
          49A8B744A9B940A2B74BA0BA4D9DBC4E9BBB4C98BB3E93B62B89AA197C9C0A6F
          8D0266840666881972941365881E698D529ABF65ACD1408DB114688B07618205
          64850261820261820E6D8E237D9F358DAF3F96B84198BA4398BE4697C44698C3
          4699BF469ABD489DB8489DB7499DB7499DB7459BB6308BAA107192036889136F
          901075930269870064810E728C27869A4FA0B188C8D8C1F0FCE1FBFEF6FCFFF6
          F2F6FBF2FAFEFAFEFFFEFEFEFFFEFAFFFEF6FFFEF7FFFEFAFFFFFFFDFFFFFCFF
          FFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF8FF
          FFF8FFFEFAFFFDFCFFFDFEFCFEFFECF8FBBFDBE57AA7B52A6C7B106474086B7D
          057085027188006E890068870061820266863695A55BAEC03B889A216D7F1366
          76086170026170066A7A05667B0C617B10607F1461811561840E638606658501
          658400658302668408698A0C658706587B307B9F71B9DE8BD2F768B4D82C80A3
          0A63850E6D8E0C6B8C086788036283045F80065E80085F810A61830C61870E5F
          8C0E5F8B0E61870E628510657F10657F11657F11657F368CA851ABCA288AAB02
          6B8C005C7D006583006987006885056B850C6B7F17687937778875A4B5BED7E7
          F5FBFFFFFAFFFFF6FEFFF8FDFFFDFEFEFFFEFAFFFEF6FFFEF7FFFEFAFFFFFFFD
          FFFFFCFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFDFFFBF8FBF9FAFCEFFEFED8FAFEAFE5F06FB7C52F879606697E066D83066F
          890A708B056B870064810364820E6E8B227E9B3992AF52ADC26AC3D26EA3B26C
          9AA46EA0A1679B985A989353A59D52A49D509C9C539A9F5B95A45B93A35593A2
          5094A24E97A24E9BA25098A253899A6EA4B57EB7C77BB3C3669EAE5B93A3689E
          AF7BB0C176ADBE5992A25794A45497A55395A45294A35594A35995A45C97A757
          97A54D94A04D959F4D97994D9A94529B90559B905A99935C95986FA8B57EB9D0
          69AACA4591B7247A9E0C6A8B0765860C69830E6B82066A8401658107637E186D
          873C819675ACBEC2E7F4DEFCFEECFFFFF1FFFFF5FFFFF9FFFFFBFFFEFDFFFEFF
          FFFFFFFEFFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF4F6FEF8FCFBFCFFD9E8ED9DC1CA5E98A3277381066170006A7F01
          6A81016B850267830B738F2087A43193B13897B5419DBA449CBA16718627808F
          42768558858F68989866989456938D4A9B924999914D999851989C5C95A35D94
          A35895A35496A35098A24E9AA05299A16195A5588C9C4E85943F76852A617026
          5D6C356B7A4377874C81905B93A25591A050919F5394A25899A75D9BA95E99A7
          5C95A45694A14E959F4E969E4E98984E9B93549C90579C8F5C99925E9698477E
          8B326B823B7A9A438EB3489EC23C99BA308DAE27849D137087076B85026B8705
          6884106781186075316B7E6C93A19DBDC5DDF1F3F0FFFFF5FFFFF9FFFFFBFFFE
          FDFFFEFFFFFFFFFEFFFFFDFFFFFDFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFF6F7F9F2FBFDD1EFF384BAC238838E14717E077183006D81
          0274910D6B8C297B9F3C83A85CA0C46DB5D758A6C52B849F147990126F833775
          704767545E54407C543B90573592542A885422815B23815B238459258A572794
          542A96542B9256298E57288859278459278558278F59298A5425845A27835A27
          805925815A278357258453228753228C59288856277C57267F5A27815E2A845F
          2B855C2A85582884562885572A89572A8F59258F5A24905A23905A238458296C
          56355459483E5F5D276571156E851D779326809F49A1BF75B6D16AA5C0418BAD
          1E79A00D7194086E8C05687E096D7D17717A33858A87C6C6C9F2F1EBFFFFF8FF
          FFFEFEFEFFFEFEFFFDFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFF6FBFEEFFDFFBCE2E760A2AB166D780069760075
          8801758B1186A53791B64893BB4683AB5E98BE6CAACD4A93B1156C85066E830C
          7181467B6D505E40694C2C8844219C4114A3410A9F4705984C04974A039E4D09
          A24808A94307AB4308A94606A64905A24C039E4D009E4B01A14904A04803964E
          06954D05A05A12A661189F550D9D4B05A24D079F4A049F4C06944F07944F0691
          4D04904C03944B03994B059B4A079A46089F4707A74801A74801A64801A64801
          95470A744519554A2F40584E2D6B711573850C68810B65834096B478B0CD6090
          AC4587AB3990BA2E92B8208BAA07748C007180006C730F717561ADADB8E9E8E7
          FFFFF8FFFFFFFEFEFFFEFEFFFDFFFFFDFFFFFEFFFFFEFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFF8FBFFB4E2E84DA0A80A6D7900
          6C7D0271890D72914AAED12D8BAF2981A5206F933F88AB5BA2C3458DAC10647F
          036D83087488317678465A4C764C1F95480FA54708AA4805A34B04964F039850
          02A05206A34F05A54808A64708A54A06A44C04A04E039B50019E4F02AA4B05A7
          47049E4B06934906845723835E2F8D54189B4B05A54D07A54A06A64C08A15105
          A05004A04D02A04B029B4C049B4E069D4D079D4B059F4C04A14D00A14E00A450
          00A85000A24D0594480F6D4B26425B4C2E6F7618718B0868840166822F93AF63
          A8C33E7B95247292217FA33694B754ABCB1F79930F73870A6D7A0C6B7557A8AF
          B6E7EAEAFEFFFAFCFFFFFCFFFEFDFFFCFEFFFCFEFFFFFFFEFFFFFEFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFFFF6FFAEE1E83F9FA7
          026E7B007084036E8A166E936DC5EA17789A096B8D0764843086A658A6C54992
          B0136480006B82017087217281405857814D159E4B02AC4D00B04D00A44C0092
          4F009753009E5300A15200A14B06A14A07A14B04A14C029C4D02954F029A4E03
          AF4905AA4403A4490694490A6E5430655A3F7F54219A4C04A54A06A94907A949
          07A74E00A74E00AB4C00AC4B01A04C04994D059B4D049E4E019D4F009A4F009A
          5100A15500A85400AB5000AC4A06824E20475F4C2A6F76156A89056886006D89
          2996B25AAAC3337B930E6582066989308AAA71B8D92D7794156F870E6A7D0C67
          7651A7B4B5E6EBECFCFFFBFBFFFFFBFFFEFDFFFAFFFFFAFFFFFFFFFEFFFFFEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFEFFF6FFAEDF
          E6419DA5066D7A056F83086D881C709370C3E6177A9A096E8D0767842F88A659
          A7C54B92B1146381026983046E88247181405956824D15A04A02AE4C00B14C00
          A64C00944F009853009F5300A25200A24B05A44A06A54B03A64C01A24D019D4E
          019F4E02AA4B05A54503A249069849097353306A593F8353219C4B04A34B06A5
          4A07A34A07A04F00A04F00A74D00A94B01A04C049B4C059C4C059E4C049E4D04
          9C4D049D4E04A35101A85100AA4E02AA480A804D23465F4E2C6F76186A880968
          86046D892D95B15BA9C3337A930E6681066B87308BA96FB6D52B759113697F13
          6B7C146B7953A5B0B6E5EAEDFDFFFBFBFFFFFBFFFEFDFFFAFFFFFAFFFFFFFFFD
          FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFDFE
          FBFFB5E4E94DA1A9126D7A0C6A7D0E678126719177C2E2167D9808718C056A84
          2E8AA45BA8C64F92B31762830567850A6B89287082415956854C16A34902B14B
          00B54C00A94B00964E009B5200A15200A55200A54C04A84A04AC4B01AE4C00AD
          4C00AB4C00A84D01A24C059D46039F4A069F48087C512F73573F8C5121A04A04
          A04B069D4B079A4C07935200935200A04F00A34D01A04C039E4C059E4B079E4A
          099E490B9E490BA1480BA84C02A94C01A84A05A7450F7C4B28445F502F6F751F
          6A860F67850B6C883495B15CA9C4337A950F6881076E852E8AA36BB2CD2F7691
          18677A1C6D7C22727E5DA8B0BAE6E9EEFDFFFBFCFFFFFCFFFEFDFFFAFFFEFAFF
          FEFFFFFCFFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F7F7F9FCFAFDB8E4E955A2AB196C790E647610617A2F76937AC2DD177E960871
          8A056A822E8BA45AA8C54E92B3166283046785096B8A277083405957844B17A3
          4903B04B01B44B01A84A00954E009A5201A05200A35200A34C04A64B05AA4B02
          AD4C00AC4C00AB4C00A84D01A34C049F4602A04A059F49077B512E73583E8C51
          20A24B04A24B05A14B069D4C06985100985100A54E00A74C01A44C03A14B059F
          4B069E4B079E4A099F4909A24909A84C01A94C01A74A05A5450F7A4C28425F4F
          2D6F751D6A850D68850A6C883295B15AA9C4307A950B647C01687D2B869D6FB4
          CD3D829B19647714606F226D7861A8B0BDE7E9EFFEFFFBFCFFFFFCFFFEFEFFFA
          FFFEFAFFFEFFFFFCFFFFFBFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFAFBFCFCFCFEBEDCE16998A13A67753A6678477388699BAEA3DCE01C
          818E0B7283066B7D2B8CA155A9C34992B1136284016689066B8E236F863F575A
          814A1BA04609AD4806B14805A54702924B01964F049A51009A51009A4D069A4C
          07A14C04A74B02A94B02AA4B02AA4B02AB4C02A64700A44B019E4B047A532B71
          593B8D531DA74C00AD4B01B04A02B04A02AE4F00AE4F00B84C00BA4A00B44A01
          AE4A01A64D01A05000A04F00A14C02A54C02A94E00A94E00A54C039D480C6E4F
          2537624D247272136D82066A83046D882D96B151AAC6277B970764780669773A
          90A090CADD71A9BC3E7786245A652F666F6CA1A8C6E4E6F4FEFFFCFEFFFFFEFF
          FEFFFEFBFFFCFBFFFCFFFFF9FFFFF9FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFDFEFFFDFDFFCBE9ED8FBEC777A5B283AFC195C1D6ADE0F3
          C2FBFF1B808D096F8004697B2A8A9F54A8C24992B1136284016689066B8E236F
          863F575A814A1BA04609AD4806B14805A54702924B01964F049A51009A51009A
          4D069A4C07A14C04A74B02A94B02AA4B02AA4B02AB4C02A64700A44B019E4B04
          7A532B71593B8D531DA74C00AD4B01B04A02B04A02AE4F00AE4F00B84C00BA4A
          00B44A01AE4A01A64D01A05000A04F00A14C02A54C02A94E00A94E00A54C039D
          480C6E4F2537624D247272136D82066A83046D882D96B151AAC6277B97106C80
          1174824298A8A6E0F3ACE4F78CC5D472A8B36DA4AD91C5CCD0EFF1F4FEFFFCFE
          FFFFFEFFFEFFFEFBFFFCFBFFFCFFFFF9FFFFF9FFFFFDFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFAF7F9FDF9FDF7FDFFEFF9FEF1F7FEF8F9FEF6F9
          FEECFBFEC9EBF82F7B811C6D7313676E35889555A8BB4293AD0D6483006B8A01
          708E24727F4D5C4B8A4D12A94902B94900BD4900B24800A04B00A45000A35400
          A354009B51009A51009F5200A35200A75100AA5000AA4F00A94C02A14603A24A
          049C480979522F71583E8B5220A24B03A64B04A74A05A74A05A35000A35000AE
          4D00B04B01A94B03A54B04A64D02A75000A75000A74E00A74E00AF4F00B04F00
          AD4D00AA47097B4D253F5F4F266F77106C880C68850D6B883694B16BA6C44479
          91286976226D734D8B92B8DAE2E6FEFFEAFDFEEAFDFEE1F7FDE7FCFEF3FFFFFC
          FFFFFFFFFFFFFFFDFFFFFBFDFFF9FDFFF9FFFFF8FFFFF8FFFFFDFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFEFFFBFFF8FDFFEFF9FEEFF5FEF6
          F7FFF5F7FFECFBFEC0E2EF2C787E196B7011656C33879455A7BB4293AD0D6483
          006B8A01718F24727F4D5C4B8A4D12A94902B94900BE4900B24800A04B00A450
          00A35400A354009B51009A51009F5200A35200A75100AA5000AA4F00A94C02A1
          4603A24A049C480979522F71583E8B5220A24B03A64B04A74A05A74A05A35000
          A35000AE4D00B04B01A94B03A54B04A64D02A75000A75000A74E00A74E00AF4F
          00B04F00AD4D00AA47097C4D253F5F4F266F770F6B880C68850D6B883694B16B
          A6C44579912465721E686E4C8A91B7D8E1E4FBFFE7F9FFEAFCFFE3F9FEE8FDFF
          F3FFFFFCFFFFFFFFFFFFFFFDFFFFFBFDFFF9FDFFF9FFFFF8FFFFF8FFFFFDFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFDFDFFFAFCFF
          FBFAFFFDFAFFFDFAFFFBFCFFE9F8FB82ABAC6B9D9F699CA180B4B97DB6C24C90
          A514698209738B08728A18717D425D527E51179E4B08AF4908B54708AB46069F
          4806A34C08A55001A550019A4E03994E039B4F029E4F01A04F01A14E02A44E05
          A8520AA14805A74C09A3480B7D4C2C77553E915323A24A059C4603994C07944E
          068B5300895200974D00994B00994B02994B049B4C069D4D069C4D05974F0397
          5001A05301A55201A64F01A6480B774B26345B4E176C770D75930B6F8D066C85
          2E8FA184B7C082A8AD709B9E76A2A49BBCBDD5E2E5F6F8FCFAFBFFFBFCFFF9FD
          FFFAFDFEFCFEFEFEFFFEFFFFFDFFFFFCFFFFFBFFFFF9FFFFF9FFFFF9FFFFF9FF
          FFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFFFEFD
          FFFDFDFFFEFCFFFFFBFFFFFBFFFEFCFFF4FEFFCAE9E9BAE3E4B7E2E6BEEAEC9F
          D2DB5595AA12677E046D84036C8317737E4260577F551C9C4C0AAB4709B14609
          AB4608A24A0AA64E0DA44E00A44E009A4D03984C03994E019C4E009D4D009E4D
          01A24D05A8530CA14805A34805A042067C492A7A553F965627A64E099F4A0698
          4E09915108875700865600945101974F02984F04984E07994D08994B06984C06
          924E03924F009B5300A15200A44F00A4470A784D28386054186F7C04708E0369
          870169813293A2AADCDFC5E8E8C0E4E5C3E7E8D5EEEFEFF6F7FEFAFEFFFCFFFF
          FCFFFFFEFFFFFEFFFFFFFEFFFFFEFFFFFDFFFFFCFFFFFBFFFFF9FFFFF9FFFFF9
          FFFFF9FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC
          FEFFF9FEFFF8FEFFFAFDFFFEFCFFFFFCFFFFFDFFFBFDFFEFFEFEE9FDFEE8FDFE
          E8FEFFBED9E16994A31F637509687B0E6D7F237276405E4B7D5515994B05A646
          03AC4404A94606A34907A84D0AAF4F04AF4F04A54D05A44D05A44F04A64F04A8
          4E04AA4D04AD4C05AF4C06B04A02AC4D059D490476522A705C3C8B5922A45105
          A94D03A74A05A64B05A25101A45101AB4F01AC4E01A24E029C4E04A24E06AB4F
          06AA4F06A05105A05104A45604A85604AA5204AB4B0A7E4F244262502772790D
          6C840D69810E6A7B3B919BBCE9EBE3FFFFE6FFFFE9FFFFF2FDFFFAFBFDFCF9FC
          FCF9FCFDFAFDFFFDFFFFFEFFFFFFFEFFFFFEFFFFFDFFFFFCFFFFFCFFFFFBFFFF
          FBFEFFFAFEFFFAFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FDFFFFFBFFFFF6FFFFF4FFFFF8FEFFFEFDFFFFFDFFFFFDFFFFFDFFF9FEFEF9FE
          FEF8FFFFF6FCFECBD7DF7C98A4346D7B1A72822178883278783C5B4079520D99
          4D01A84903AD4805A94705A14603A74A07B34D03B34D03AA4B03A94B03A94C03
          AB4D03AD4C03AF4A03B14803B44601BC4E02B451059B4D02705728675E388158
          1DA15002B04E01B04601B34601B34C01B74C01B94C00B94C00A94C009D4C00A6
          4C02B54E03B34E03A75003A75003A75503A95503AB5103AC4A087F4D1E455F49
          2F727620768A1F75892377834A999FBEEAEAE7FFFEEDFEFEF2FDFEFAFCFEFEFA
          FDFDFAFDFDFAFDFDFAFDFFFDFFFFFDFEFFFEFEFFFFFEFFFFFDFFFFFCFFFFFCFF
          FFFCFFFFFCFDFFFBFDFFFBFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFDFFFFFAFFFFF5FFFFF3FFFFF5FFFFFBFEFFFEFDFFFFFDFFFFFDFFFB
          FDFDFAFCFCFBFCFCF8FBFDDFE6ECB0C1C980A8B16DAEB871B2BC568D89425F40
          7D510C9C5103A95208AC500AA34B079848049F4D06AA4D00AA4D00A34B01A24B
          01A24C01A34C01A64B01A84902AA4805AC4909AC4C0B9D49068447066159345C
          6447725A278E4D06A04906A74709AC4508AD4903B04A04B24B06B34B07A04C08
          924B079D4A05B14B02AF4B03A64B06A44B06A14F04A34F04A44C05A5470B7C4B
          204F604B5A838476AAB87BAFBC7BAEB896C4C9D8F2F2F0FEFEF2FEFEF4FDFDFA
          FDFDFFFDFEFFFDFFFFFDFFFFFDFFFFFEFFFEFDFEFDFEFEFDFFFEFEFFFDFFFFFD
          FFFFFDFFFFFDFFFFFDFCFFFCFCFFFCFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFCFFFEF9FFFEF4FFFFF1FFFFF2FFFFF6FFFFFCFEFFFFFDFF
          FFFDFFFCFCFBFCFAF9FEF8F8FFFBFBFEFCFDF5F7F9E5F3F4DAFAFADAFAFB85A4
          9B4D674285530D9B5404A15508A15308974D068B4A05955207A25200A252009C
          50039B4F039B50039E5002A14E03A24D05A24B0B9E49128F431280420C74511D
          65765E68897A74774F7F55198B430E9C4816A24413A54607A54607A6480DA748
          11924A1282491193490CAF4A05AE4A07A8470FA4470F9E4B0B9D4B0A9F490E9F
          4614794B26606450999C9AEDEEF3F6F7FBF1F2F9F9F8FAFDF8FAFEFCFEFCFEFE
          F9FFFDFAFEFCFEFDFCFFFDFDFFFDFDFFFEFEFFFFFEFDFFFEFBFFFEFAFFFEFCFF
          FEFFFFFEFFFFFEFFFFFEFFFFFEFBFFFEFBFFFEFEFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFCFFFEFAFFFEF5FFFFF2FFFFF3FFFFF7FFFFFCFE
          FFFFFDFFFFFDFFFFFFFEFFFEFCFEF9F8FEFBFAFFFDFDFCFEFFF3FEFFE5FFFFE0
          FBFC7EA5A241645079531B8C510F8C4F0F8A4D11824A1276491282521690540F
          90540F8951138851148951138B51138E5014904E168E4B1985461A7C441C8A59
          2E9D8259A3B8A7AACEC4ACB294A07F5090592E8B4E268B49208949128849128E
          491791491C814A1E754A1D824A19984D15974D169349209049208A4C1B8A4D1A
          8D4C1C8E49206B4D2E546351929D9AF7F8FCFBFBFFF9F9FEFEFDFEFAF3F4FCF9
          FAFAFEFEF7FEFCF7FCFAFAFAF9FEFBFAFEFDFCFEFEFEFCFFFEFAFEFCF9FEFDF9
          FFFEFBFFFEFFFFFEFFFFFEFFFFFEFFFFFEFBFFFEFBFFFEFEFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFBFFFFF8FFFFF8FFFFF9
          FEFFFCFEFFFFFDFFFFFDFFFEFEFEFFFFFCFFFFFBFFFFFBFFFFFBFFFEFDFFFEFF
          FEFFFFF5FAFD569CB1206693636964746A596A655961645F5665644764614E6A
          655767565767564F645E4E645F4F645F52635F55626157606459636661726E6B
          7C789D9F9FC5C4C7C8EAF3C8F6FFD0E5E8C6C5C4969D9B5C74704C7068396F58
          376D564C6B5B596A605E68635E656257645F4D665C4D655E505D6B505D6B4D5F
          684D616457635E5B635C49676043797380A8A6F3F0F3FFFAFFFFFDFCFFFDFCFB
          FAF8F9FDFAF6FFFDF4FFFEF5FFFEF7FFFEFAFFFEFAFFFEFAFFFEF3FDFCF1FCFB
          F2FEFDF3FFFFF7FFFFFEFFFFFFFEFFFFFDFFFFFDFFFAFFFFFAFFFFFEFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFBFFFFF8FFFF
          F8FFFFF9FEFFFCFEFFFFFDFFFFFDFFF3F3F3FCFDF9FFFFFBFFFFFBFFFDFAFFFB
          F9FFFBFCFEFDFDF7FCFFA4EAFF84CAF7DBE1DCF1E7D6E5E0D4DDE0DBD5E4E3C4
          E1DEC7E2DED5E5D4D5E5D4CDE2DCCCE2DDCDE2DDD0E1DDD3E0DFD5DEE2D5DFE2
          D4E5E1DDEEEAFCFFFFFDFCFFD3F5FFC7F5FFE4F9FDFEFDFCF5FBF9D9F0ECC7EB
          E4B3E9D2AFE5CEC4E2D3D2E3D9D8E1DCD8DFDCD2E0DACBE4DACBE3DCCEDBE9CE
          DBE9CBDDE6CBDFE2D5E1DCD9E1DAC3E1DAACE1DCC3EAE8FFFDFFFFFAFFFFFDFC
          FFFDFCFFFFFCFAFFFCF6FFFDF4FFFEF4FFFDF4FFFCF6FDFAF6FDFAF8FFFCF4FF
          FEF4FFFEF3FFFFF3FFFFF7FFFFFEFFFFFFFEFFFFFDFFFFFDFFFAFFFFFAFFFFFE
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFF00}
        mmHeight = 23813
        mmLeft = 0
        mmTop = 0
        mmWidth = 36777
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
      mmHeight = 10319
      mmPrintPosition = 0
      object ppLabel105: TppLabel
        UserName = 'Label36'
        Caption = 'FECHA Y HORA DE ACTUALIZACION :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2381
        mmLeft = 12171
        mmTop = 3969
        mmWidth = 41010
        BandType = 8
      end
      object pplfechoract: TppLabel
        UserName = 'lfechoract'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 56092
        mmTop = 3969
        mmWidth = 21960
        BandType = 8
      end
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
        mmTop = 6615
        mmWidth = 29369
        BandType = 8
      end
      object ppLabel11: TppLabel
        UserName = 'Label30'
        Caption = 'FECHA Y HORA DE CHEQUEO :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2381
        mmLeft = 12171
        mmTop = 1323
        mmWidth = 34396
        BandType = 8
      end
      object pplfechorche: TppLabel
        UserName = 'lfechoract1'
        Caption = '11/03/2009 05:59:43 p.m.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2498
        mmLeft = 48683
        mmTop = 1323
        mmWidth = 22013
        BandType = 8
      end
      object pplusrproc: TppLabel
        UserName = 'lfechoract2'
        Caption = 'JDCRUZ'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Times New Roman'
        Font.Size = 6
        Font.Style = []
        Transparent = True
        mmHeight = 2381
        mmLeft = 43127
        mmTop = 6615
        mmWidth = 7938
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
              mmWidth = 74877
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText18'
              DataField = 'CANT'
              DataPipeline = ppbdInconsistencias
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Times New Roman'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppbdInconsistencias'
              mmHeight = 3440
              mmLeft = 136790
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
              mmLeft = 158750
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
    Left = 184
    Top = 328
  end
  object ppbdInconsistencias: TppBDEPipeline
    UserName = 'bdereporte1'
    Left = 751
    Top = 63
  end
  object ppbdDetalleUndGes: TppBDEPipeline
    UserName = 'bdDetalleUndGes'
    Left = 751
    Top = 39
    MasterDataPipelineName = 'ppbdInconsistencias'
  end
end
