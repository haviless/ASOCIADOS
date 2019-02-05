object Festpadr: TFestpadr
  Left = 191
  Top = 185
  BorderStyle = bsDialog
  Caption = 'Estadistica de padrones'
  ClientHeight = 401
  ClientWidth = 785
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
  object dbgprevio: TwwDBGrid
    Left = 4
    Top = 130
    Width = 777
    Height = 234
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 1
    Width = 465
    Height = 125
    Caption = ' Seleccione parametros '
    TabOrder = 1
    object Label1: TLabel
      Left = 5
      Top = 21
      Width = 66
      Height = 13
      Caption = 'Fecha Inicial :'
    end
    object Label2: TLabel
      Left = 5
      Top = 46
      Width = 61
      Height = 13
      Caption = 'Fecha Final :'
    end
    object Label3: TLabel
      Left = 172
      Top = 19
      Width = 73
      Height = 13
      Caption = 'Departamento :'
    end
    object dbdtpinicio: TwwDBDateTimePicker
      Left = 74
      Top = 17
      Width = 91
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
      Left = 74
      Top = 42
      Width = 91
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
    object rgtipaso: TRadioGroup
      Left = 6
      Top = 66
      Width = 106
      Height = 53
      Caption = ' Tipo de asociado '
      Items.Strings = (
        'Docente'
        'Cesante')
      TabOrder = 2
    end
    object rgtiprep: TRadioGroup
      Left = 117
      Top = 66
      Width = 127
      Height = 53
      Caption = ' Tipo de reporte '
      ItemIndex = 0
      Items.Strings = (
        'Por Ugel'
        'Por Departamento')
      TabOrder = 3
      OnClick = rgtiprepClick
    end
    object btnprocesar: TBitBtn
      Left = 381
      Top = 89
      Width = 76
      Height = 27
      Caption = 'Procesar'
      TabOrder = 4
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
    object dblcddepdes: TwwDBLookupComboDlg
      Left = 250
      Top = 15
      Width = 46
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcddepdesExit
    end
    object pnldepdes: TPanel
      Left = 249
      Top = 39
      Width = 210
      Height = 23
      Caption = 'pnldepdes'
      Enabled = False
      TabOrder = 6
      object medepdes: TMaskEdit
        Left = 1
        Top = 1
        Width = 207
        Height = 21
        TabOrder = 0
      end
    end
  end
  object btncerrar: TBitBtn
    Left = 706
    Top = 369
    Width = 76
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 2
    OnClick = btncerrarClick
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
  object btnaExcel: TBitBtn
    Left = 624
    Top = 369
    Width = 76
    Height = 28
    Caption = 'A Excel'
    TabOrder = 3
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
  object dtgData: TDBGrid
    Left = 496
    Top = 8
    Width = 57
    Height = 33
    DataSource = DM1.dsReporte
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object btnimprimir: TBitBtn
    Left = 544
    Top = 369
    Width = 76
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 5
    Visible = False
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
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'BDEPReporte'
    Left = 496
    Top = 48
  end
  object pprestugel: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
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
    Template.FileName = 'C:\Documents and Settings\JUDELACRUZ\Escritorio\POR UGEL.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 528
    Top = 48
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39688
      mmPrintPosition = 0
      object ppShape40: TppShape
        UserName = 'Shape40'
        mmHeight = 10583
        mmLeft = 204259
        mmTop = 29104
        mmWidth = 11906
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 10583
        mmLeft = 0
        mmTop = 29104
        mmWidth = 25665
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 7938
        mmLeft = 794
        mmTop = 30427
        mmWidth = 24077
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 10583
        mmLeft = 25400
        mmTop = 29104
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Uni. Pro.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 25929
        mmTop = 30427
        mmWidth = 7408
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 10583
        mmLeft = 41804
        mmTop = 29104
        mmWidth = 37835
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Unidad de gesti'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 42598
        mmTop = 30427
        mmWidth = 24342
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 10583
        mmLeft = 79375
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Reg. carg.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 80169
        mmTop = 30427
        mmWidth = 9525
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 10583
        mmLeft = 93134
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Inv. Ugel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 93927
        mmTop = 30427
        mmWidth = 9525
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 10583
        mmLeft = 106892
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Reg. Ubi.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 107686
        mmTop = 30427
        mmWidth = 7938
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 10583
        mmLeft = 120650
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Reg.No Ubi.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 121444
        mmTop = 30427
        mmWidth = 11377
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 10583
        mmLeft = 134409
        mmTop = 29104
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Cod. Mod.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 135202
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 5556
        mmLeft = 134409
        mmTop = 23813
        mmWidth = 81756
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 10583
        mmLeft = 146050
        mmTop = 29104
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 147109
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        mmHeight = 10583
        mmLeft = 157692
        mmTop = 29104
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Uni. Ges.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 159544
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 10583
        mmLeft = 169334
        mmTop = 29104
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'C'#243'd. pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 170127
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 10583
        mmLeft = 33602
        mmTop = 29104
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Uni. Pag.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 34131
        mmTop = 30427
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label11'
        Caption = 'NUMERO DE CAMPOS MODIFICADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 142346
        mmTop = 24871
        mmWidth = 56621
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 10583
        mmLeft = 180975
        mmTop = 29104
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Cta. aho.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 181505
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 10583
        mmLeft = 215900
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Modi- ficado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 216694
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 10583
        mmLeft = 229659
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Mod. / Inv.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 230453
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 10583
        mmLeft = 243417
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Con cr'#233'd.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 244211
        mmTop = 30427
        mmWidth = 8467
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 10583
        mmLeft = 257176
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Con aut. desc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 257969
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 5556
        mmLeft = 215900
        mmTop = 23813
        mmWidth = 67998
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'NUMERO DE REGISTROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 217488
        mmTop = 24871
        mmWidth = 46567
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 1323
        mmWidth = 41010
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'EQUIPO DE PREVISION SOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 4763
        mmWidth = 49742
        BandType = 0
      end
      object ppltitulo: TppLabel
        UserName = 'ltitulo'
        Caption = 
          'ESTADISTICA DE ACTUALIZACION DE PADRONES DEL DD/MM/YYYY AL DD/MM' +
          '/YYYY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 64558
        mmTop = 9260
        mmWidth = 155311
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = '(Por Ugel)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 13494
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'DEPARTAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 19579
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'TIPO DE ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 23548
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 31221
        mmTop = 19579
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 31221
        mmTop = 23548
        mmWidth = 1588
        BandType = 0
      end
      object ppldptodes: TppLabel
        UserName = 'ldptodes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 33602
        mmTop = 19579
        mmWidth = 29633
        BandType = 0
      end
      object pplasotipidesugel: TppLabel
        UserName = 'ldptodes1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 33602
        mmTop = 23548
        mmWidth = 29633
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        mmHeight = 10583
        mmLeft = 192617
        mmTop = 29104
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        Caption = 'Reg. pen.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 193411
        mmTop = 30427
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'Cen. Edu.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 205052
        mmTop = 30427
        mmWidth = 6879
        BandType = 0
      end
      object ppShape41: TppShape
        UserName = 'Shape41'
        mmHeight = 10583
        mmLeft = 270934
        mmTop = 29104
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        Caption = 'Incon sisten.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 271463
        mmTop = 30692
        mmWidth = 11377
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTODES'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'UPROID'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 25135
        mmTop = 265
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'UPAGOID'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 33338
        mmTop = 265
        mmWidth = 7408
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'USEID'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 41804
        mmTop = 265
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'USENOM'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 47625
        mmTop = 265
        mmWidth = 31750
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CANREGREC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 79375
        mmTop = 265
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CANREGUGEL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 93134
        mmTop = 265
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CANREGUBI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 106892
        mmTop = 265
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'CANREGNOUBI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 120386
        mmTop = 265
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CANREGMOD_ASOCODMOD'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 133615
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'CANREGMOD_CARGO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CANREGMOD_USEID'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 156898
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CANREGMOD_ASOCODPAGO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 168540
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CANREGMOD_ASONCTA'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'CANREGMOD'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 215107
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'PORACT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 228865
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'MODCONCREVIG'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 242623
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'MODCONAUTDES'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 256382
        mmTop = 265
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'CANREGMOD_REGPEN'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 191823
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'CANREGMOD_COLEGIO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 203465
        mmTop = 265
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'CANT_INC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 270405
        mmTop = 265
        mmWidth = 13229
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 283898
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CANREGREC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 79375
        mmTop = 794
        mmWidth = 12435
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 5027
        mmWidth = 284163
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'CANREGUGEL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 93134
        mmTop = 794
        mmWidth = 12435
        BandType = 7
      end
      object ppDBText19: TppDBText
        UserName = 'DBText11'
        DataField = 'CANREGUBI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 106892
        mmTop = 794
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CANREGNOUBI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 120386
        mmTop = 794
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'CANREGMOD_ASOCODMOD'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 133615
        mmTop = 794
        mmWidth = 11377
        BandType = 7
      end
      object ppLabel20: TppLabel
        UserName = 'Label13'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 60325
        mmTop = 794
        mmWidth = 14552
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'CANREGMOD_CARGO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 145257
        mmTop = 794
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'CANREGMOD_USEID'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 156898
        mmTop = 794
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CANREGMOD_ASOCODPAGO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 168540
        mmTop = 794
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'CANREGMOD'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 215107
        mmTop = 794
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'MODCONCREVIG'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 242623
        mmTop = 794
        mmWidth = 13494
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'MODCONAUTDES'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 256382
        mmTop = 794
        mmWidth = 13229
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'CANREGMOD_ASONCTA'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 794
        mmWidth = 11377
        BandType = 7
      end
      object pplimpresopor: TppLabel
        UserName = 'Label20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 5821
        mmWidth = 67469
        BandType = 7
      end
      object ppDBCalc23: TppDBCalc
        UserName = 'DBCalc23'
        DataField = 'CANREGMOD_REGPEN'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 191823
        mmTop = 794
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc27'
        DataField = 'CANREGMOD_COLEGIO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 203465
        mmTop = 794
        mmWidth = 11377
        BandType = 7
      end
      object ppDBCalc28: TppDBCalc
        UserName = 'DBCalc28'
        DataField = 'CANT_INC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 270405
        mmTop = 794
        mmWidth = 13229
        BandType = 7
      end
    end
  end
  object pprdep: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 560
    Top = 48
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39688
      mmPrintPosition = 0
      object ppShape39: TppShape
        UserName = 'Shape39'
        mmHeight = 10583
        mmLeft = 239448
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape1'
        mmHeight = 10584
        mmLeft = 4763
        mmTop = 29104
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label1'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 7938
        mmLeft = 5556
        mmTop = 30427
        mmWidth = 24077
        BandType = 0
      end
      object ppShape23: TppShape
        UserName = 'Shape4'
        mmHeight = 10584
        mmLeft = 33073
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label4'
        Caption = 'Reg. carg.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 33867
        mmTop = 30427
        mmWidth = 12436
        BandType = 0
      end
      object ppShape24: TppShape
        UserName = 'Shape5'
        mmHeight = 10584
        mmLeft = 46831
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label5'
        Caption = 'Inv. Ugel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 47625
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape6'
        mmHeight = 10584
        mmLeft = 60590
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label6'
        Caption = 'Reg. Ubi.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 61383
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape26: TppShape
        UserName = 'Shape7'
        mmHeight = 10584
        mmLeft = 74348
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label7'
        Caption = 'Reg.No Ubi.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 74877
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape27: TppShape
        UserName = 'Shape8'
        mmHeight = 10584
        mmLeft = 88106
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label8'
        Caption = 'Cod. Mod.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 88900
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape28: TppShape
        UserName = 'Shape9'
        mmHeight = 5556
        mmLeft = 88106
        mmTop = 23813
        mmWidth = 96573
        BandType = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape10'
        mmHeight = 10584
        mmLeft = 101865
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label9'
        Caption = 'Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 102659
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape30: TppShape
        UserName = 'Shape101'
        mmHeight = 10584
        mmLeft = 115623
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label10'
        Caption = 'Uni. Ges.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 116417
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape31: TppShape
        UserName = 'Shape12'
        mmHeight = 10584
        mmLeft = 129382
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label101'
        Caption = 'C'#243'd. pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 130175
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label11'
        Caption = 'NUMERO DE CAMPOS MODIFICADOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3703
        mmLeft = 102394
        mmTop = 24871
        mmWidth = 56622
        BandType = 0
      end
      object ppShape33: TppShape
        UserName = 'Shape14'
        mmHeight = 10584
        mmLeft = 143140
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label14'
        Caption = 'Cta. ahorro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 143934
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape34: TppShape
        UserName = 'Shape15'
        mmHeight = 10583
        mmLeft = 184415
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label15'
        Caption = 'Modi- ficado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 185209
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape16'
        mmHeight = 10583
        mmLeft = 198173
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label16'
        Caption = 'Mod. / Inv.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 198967
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape36: TppShape
        UserName = 'Shape17'
        mmHeight = 10583
        mmLeft = 211932
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label17'
        Caption = 'Con cr'#233'dito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 212725
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape37: TppShape
        UserName = 'Shape18'
        mmHeight = 10583
        mmLeft = 225690
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label18'
        Caption = 'Con aut. desc.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 226484
        mmTop = 30427
        mmWidth = 12435
        BandType = 0
      end
      object ppShape38: TppShape
        UserName = 'Shape19'
        mmHeight = 5556
        mmLeft = 184415
        mmTop = 23813
        mmWidth = 69056
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label19'
        Caption = 'NUMERO DE REGISTROS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 185209
        mmTop = 24871
        mmWidth = 53181
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label21'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3703
        mmLeft = 6350
        mmTop = 1323
        mmWidth = 41010
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label22'
        Caption = 'EQUIPO DE PREVISION SOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3703
        mmLeft = 6350
        mmTop = 4763
        mmWidth = 49742
        BandType = 0
      end
      object ppltitulodep: TppLabel
        UserName = 'ltitulo'
        Caption = 
          'ESTADISTICA DE ACTUALIZACION DE PADRONES DEL DD/MM/YYYY AL DD/MM' +
          '/YYYY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 29633
        mmTop = 9260
        mmWidth = 155311
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label24'
        Caption = '(Por Departamento)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 88106
        mmTop = 13494
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label26'
        Caption = 'TIPO DE ASOCIADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 19579
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label28'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3703
        mmLeft = 35983
        mmTop = 19579
        mmWidth = 1693
        BandType = 0
      end
      object pplasotipdesdep: TppLabel
        UserName = 'ldptodes1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3683
        mmLeft = 38365
        mmTop = 19579
        mmWidth = 29633
        BandType = 0
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        mmHeight = 10583
        mmLeft = 156898
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Reg. Pen.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 157692
        mmTop = 30427
        mmWidth = 7673
        BandType = 0
      end
      object ppShape32: TppShape
        UserName = 'Shape32'
        mmHeight = 10583
        mmLeft = 170657
        mmTop = 29104
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label301'
        Caption = 'Cen. Edu.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 171980
        mmTop = 30427
        mmWidth = 6879
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        Caption = 'Incon sisten.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 239978
        mmTop = 30427
        mmWidth = 11906
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText20: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTODES'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3703
        mmLeft = 5292
        mmTop = 0
        mmWidth = 27516
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText6'
        DataField = 'CANREGREC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 33867
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText7'
        DataField = 'CANREGUGEL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 47625
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText8'
        DataField = 'CANREGUBI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 61383
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText9'
        DataField = 'CANREGNOUBI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 74877
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText10'
        DataField = 'CANREGMOD_ASOCODMOD'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText101'
        DataField = 'CANREGMOD_CARGO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 102394
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText12'
        DataField = 'CANREGMOD_USEID'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 116152
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText13'
        DataField = 'CANREGMOD_ASOCODPAGO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 129911
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText14'
        DataField = 'CANREGMOD_ASONCTA'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText15'
        DataField = 'CANREGMOD'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 184944
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText16'
        DataField = 'PORACT'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '##0.#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 198702
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText17'
        DataField = 'MODCONCREVIG'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 212461
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText18'
        DataField = 'MODCONAUTDES'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 226219
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'CANREGMOD_REGPEN'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'CANREGMOD_COLEGIO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'CANT_INC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 240242
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 4763
        mmTop = 0
        mmWidth = 248709
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CANREGREC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 33867
        mmTop = 794
        mmWidth = 12435
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 4763
        mmTop = 5027
        mmWidth = 248709
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'CANREGUGEL'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 47625
        mmTop = 794
        mmWidth = 12435
        BandType = 7
      end
      object ppDBText38: TppDBText
        UserName = 'DBText11'
        DataField = 'CANREGUBI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 61383
        mmTop = 794
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CANREGNOUBI'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 74877
        mmTop = 794
        mmWidth = 12435
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'CANREGMOD_ASOCODMOD'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 88106
        mmTop = 794
        mmWidth = 14023
        BandType = 7
      end
      object ppLabel57: TppLabel
        UserName = 'Label13'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 794
        mmWidth = 14552
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'CANREGMOD_CARGO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 102394
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'CANREGMOD_USEID'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 116152
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc18: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CANREGMOD_ASOCODPAGO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 129911
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'CANREGMOD'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 184944
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc20: TppDBCalc
        UserName = 'DBCalc10'
        DataField = 'MODCONCREVIG'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 212461
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc11'
        DataField = 'MODCONAUTDES'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 226219
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'CANREGMOD_ASONCTA'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object pplimpresopordep: TppLabel
        UserName = 'Label20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 5821
        mmWidth = 67469
        BandType = 7
      end
      object ppDBCalc24: TppDBCalc
        UserName = 'DBCalc24'
        DataField = 'CANREGMOD_REGPEN'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 157427
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc25: TppDBCalc
        UserName = 'DBCalc25'
        DataField = 'CANREGMOD_COLEGIO'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 171450
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object ppDBCalc26: TppDBCalc
        UserName = 'DBCalc26'
        DataField = 'CANT_INC'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 240242
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
    end
  end
end
