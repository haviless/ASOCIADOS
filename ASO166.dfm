object FRepNueAso: TFRepNueAso
  Left = 231
  Top = 170
  BorderStyle = bsDialog
  Caption = 'Estad'#237'stica de Nuevos Asociados'
  ClientHeight = 466
  ClientWidth = 799
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = 1
    Width = 792
    Height = 146
    Caption = ' Opciones del reporte '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object btnprocesar: TBitBtn
      Left = 707
      Top = 111
      Width = 79
      Height = 29
      Caption = 'Procesar'
      TabOrder = 0
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
    object rgtipo: TRadioGroup
      Left = 372
      Top = 102
      Width = 261
      Height = 37
      Columns = 2
      Items.Strings = (
        'Detalle'
        'Resumen')
      TabOrder = 1
      OnClick = rgtipoClick
    end
    object rgtipreppri: TRadioGroup
      Left = 372
      Top = 15
      Width = 260
      Height = 89
      Caption = ' Tipo de Reporte '
      ItemIndex = 0
      Items.Strings = (
        'Nuevos Asociados'
        'Desactivaciones de Flag'#39's'
        'Validaci'#243'n de Actualizaci'#243'n de Registro (N2)'
        'Autorizaci'#243'n de Cuenta de Teleahorro')
      TabOrder = 2
      OnClick = rgtipreppriClick
    end
    object GroupBox2: TGroupBox
      Left = 635
      Top = 15
      Width = 151
      Height = 89
      Caption = ' Fechas '
      TabOrder = 3
      object Label1: TLabel
        Left = 6
        Top = 17
        Width = 35
        Height = 15
        Caption = 'Inicial'
      end
      object Label3: TLabel
        Left = 47
        Top = 43
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label2: TLabel
        Left = 6
        Top = 44
        Width = 25
        Height = 15
        Caption = 'Final'
      end
      object Label4: TLabel
        Left = 47
        Top = 17
        Width = 3
        Height = 15
        Caption = ':'
      end
      object dbdtpinicio: TwwDBDateTimePicker
        Left = 54
        Top = 13
        Width = 93
        Height = 23
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 0
        OnExit = dbdtpinicioExit
      end
      object dbdtpfinal: TwwDBDateTimePicker
        Left = 54
        Top = 39
        Width = 93
        Height = 23
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
    end
    object GroupBox3: TGroupBox
      Left = 7
      Top = 15
      Width = 361
      Height = 124
      Caption = ' Seleccionar Zona '
      TabOrder = 4
      object Label5: TLabel
        Left = 6
        Top = 19
        Width = 27
        Height = 15
        Caption = 'Dpto.'
      end
      object Label6: TLabel
        Left = 6
        Top = 41
        Width = 50
        Height = 15
        Caption = 'Uni. Proc.'
      end
      object Label7: TLabel
        Left = 6
        Top = 67
        Width = 48
        Height = 15
        Caption = 'Uni. Pago'
      end
      object Label8: TLabel
        Left = 6
        Top = 91
        Width = 63
        Height = 15
        Caption = 'Uni. Gesti'#243'n'
      end
      object Label11: TLabel
        Left = 70
        Top = 43
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label9: TLabel
        Left = 71
        Top = 67
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label13: TLabel
        Left = 71
        Top = 19
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label14: TLabel
        Left = 71
        Top = 91
        Width = 3
        Height = 15
        Caption = ':'
      end
      object dblcdDptoId: TwwDBLookupComboDlg
        Left = 77
        Top = 16
        Width = 55
        Height = 23
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsDpto
        LookupField = 'DPTOID'
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdDptoIdExit
      end
      object dblcdUniPro: TwwDBLookupComboDlg
        Left = 77
        Top = 41
        Width = 55
        Height = 23
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUniProExit
      end
      object dblcdUniPag: TwwDBLookupComboDlg
        Left = 77
        Top = 65
        Width = 55
        Height = 23
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUniPagExit
      end
      object dblcdUniGes: TwwDBLookupComboDlg
        Left = 77
        Top = 90
        Width = 55
        Height = 23
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsUSES
        LookupField = 'USEID'
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUniGesExit
      end
      object Panel1: TPanel
        Left = 136
        Top = 16
        Width = 219
        Height = 23
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 4
        object edtdesdep: TEdit
          Left = 1
          Top = 1
          Width = 217
          Height = 23
          TabOrder = 0
        end
      end
      object Panel2: TPanel
        Left = 136
        Top = 41
        Width = 219
        Height = 23
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 5
        object edtunipronom: TEdit
          Left = 1
          Top = 1
          Width = 217
          Height = 23
          TabOrder = 0
        end
      end
      object Panel3: TPanel
        Left = 136
        Top = 65
        Width = 219
        Height = 23
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 6
        object edtunipagnom: TEdit
          Left = 1
          Top = 1
          Width = 217
          Height = 23
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 136
        Top = 90
        Width = 219
        Height = 23
        Caption = 'Panel1'
        Enabled = False
        TabOrder = 7
        object edtunigesnom: TEdit
          Left = 1
          Top = 1
          Width = 217
          Height = 23
          TabOrder = 0
        end
      end
    end
  end
  object dbgreporte: TwwDBGrid
    Left = 3
    Top = 153
    Width = 792
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
  object btnaexcel: TBitBtn
    Left = 627
    Top = 431
    Width = 79
    Height = 29
    Caption = 'A Excel'
    Enabled = False
    TabOrder = 2
    OnClick = btnaexcelClick
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
  object btnimprimir: TBitBtn
    Left = 536
    Top = 431
    Width = 79
    Height = 29
    Caption = 'Imprimir'
    Enabled = False
    TabOrder = 3
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
  object btncerrar: TBitBtn
    Left = 717
    Top = 431
    Width = 79
    Height = 29
    Caption = 'Cerrar'
    TabOrder = 4
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
  object pprrepdet: TppReport
    AutoStop = False
    DataPipeline = ppbdepreporte
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
    Left = 74
    Top = 433
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdepreporte'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43656
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 1852
        mmWidth = 35190
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Equipo de Previsi'#243'n Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 6350
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'NUEVOS ASOCIADOS : AUTORIZADOS - RECHAZADOS - PENDIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 73819
        mmTop = 12700
        mmWidth = 118798
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = ' - REPORTE GENERAL -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 112977
        mmTop = 17463
        mmWidth = 40217
        BandType = 0
      end
      object pplfecha: TppLabel
        UserName = 'lfecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 66675
        mmTop = 22225
        mmWidth = 132821
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 238125
        mmTop = 1852
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 238125
        mmTop = 5556
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 238125
        mmTop = 9260
        mmWidth = 11642
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 253207
        mmTop = 1852
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 253207
        mmTop = 5556
        mmWidth = 23548
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 253207
        mmTop = 9260
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 251090
        mmTop = 1852
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 251090
        mmTop = 5556
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 251090
        mmTop = 9260
        mmWidth = 1058
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 9789
        mmLeft = 2381
        mmTop = 33602
        mmWidth = 25928
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 9789
        mmLeft = 28046
        mmTop = 33602
        mmWidth = 35984
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        mmHeight = 9789
        mmLeft = 63765
        mmTop = 33602
        mmWidth = 35984
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        mmHeight = 9789
        mmLeft = 99484
        mmTop = 33602
        mmWidth = 35984
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4763
        mmLeft = 3440
        mmTop = 34396
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Unidad de proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 29104
        mmTop = 34396
        mmWidth = 28310
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Unidad de pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 64823
        mmTop = 34396
        mmWidth = 30163
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Unidad de gesti'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 100542
        mmTop = 34396
        mmWidth = 28046
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        mmHeight = 9790
        mmLeft = 135202
        mmTop = 33602
        mmWidth = 16934
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 136261
        mmTop = 34396
        mmWidth = 6085
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        mmHeight = 9789
        mmLeft = 151871
        mmTop = 33602
        mmWidth = 21697
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'C'#243'digo Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 152929
        mmTop = 34396
        mmWidth = 18256
        BandType = 0
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        mmHeight = 9790
        mmLeft = 173302
        mmTop = 33602
        mmWidth = 61648
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Apellidos y Nombre(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 174890
        mmTop = 34396
        mmWidth = 36513
        BandType = 0
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        mmHeight = 9789
        mmLeft = 234686
        mmTop = 33602
        mmWidth = 24872
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Tipo de asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 7408
        mmLeft = 236803
        mmTop = 34396
        mmWidth = 13494
        BandType = 0
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        mmHeight = 9789
        mmLeft = 259292
        mmTop = 33602
        mmWidth = 21430
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 261409
        mmTop = 34660
        mmWidth = 10848
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTODES'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'UPRONOM'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 28575
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'UPAGONOM'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 64294
        mmTop = 0
        mmWidth = 32544
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'USENOM'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 100013
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ASODNI'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 135732
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ASOCODMOD'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 152400
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 173832
        mmTop = 0
        mmWidth = 60590
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'ASOTIPDES'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 235215
        mmTop = 0
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'ESTADO'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 259821
        mmTop = 0
        mmWidth = 20373
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object pplimpresopor: TppLabel
        UserName = 'limpresopor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 2646
        mmTop = 1588
        mmWidth = 124884
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2646
        mmTop = 0
        mmWidth = 279136
        BandType = 7
      end
    end
  end
  object ppbdepreporte: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'bdepreporte'
    Left = 10
    Top = 433
  end
  object pprrepres: TppReport
    AutoStop = False
    DataPipeline = ppbdepreporte
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
    Left = 42
    Top = 433
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdepreporte'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 43656
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Derrama Magisterial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2381
        mmTop = 1852
        mmWidth = 35190
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'Equipo de Previsi'#243'n Social'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 6350
        mmWidth = 35719
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'NUEVOS ASOCIADOS : AUTORIZADOS - RECHAZADOS - PENDIENTES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 55563
        mmTop = 13229
        mmWidth = 118798
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = '- RESUMEN -'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 103997
        mmTop = 17992
        mmWidth = 21929
        BandType = 0
      end
      object pplfechares: TppLabel
        UserName = 'lfecha1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 48429
        mmTop = 23019
        mmWidth = 132800
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        Caption = 'Fecha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 209550
        mmTop = 1852
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        Caption = 'Hora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 209550
        mmTop = 5556
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        Caption = 'Pagina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 209550
        mmTop = 9260
        mmWidth = 11642
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 224632
        mmTop = 1852
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable5'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 224632
        mmTop = 5556
        mmWidth = 23548
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 224632
        mmTop = 9260
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 222515
        mmTop = 1852
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label101'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 222515
        mmTop = 5556
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 222515
        mmTop = 9260
        mmWidth = 1058
        BandType = 0
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        mmHeight = 11113
        mmLeft = 2381
        mmTop = 32015
        mmWidth = 25928
        BandType = 0
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        mmHeight = 11113
        mmLeft = 28046
        mmTop = 32015
        mmWidth = 35984
        BandType = 0
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        mmHeight = 11113
        mmLeft = 63765
        mmTop = 32015
        mmWidth = 35984
        BandType = 0
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        mmHeight = 11113
        mmLeft = 99484
        mmTop = 32015
        mmWidth = 35984
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4763
        mmLeft = 3440
        mmTop = 35719
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Unidad de proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4233
        mmLeft = 29104
        mmTop = 35719
        mmWidth = 29898
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        Caption = 'Unidad de pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 3969
        mmLeft = 64823
        mmTop = 35719
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        Caption = 'Unidad de gesti'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 4498
        mmLeft = 100542
        mmTop = 35719
        mmWidth = 28046
        BandType = 0
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        mmHeight = 5556
        mmLeft = 135202
        mmTop = 37571
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        Caption = 'CO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3387
        mmLeft = 141023
        mmTop = 38629
        mmWidth = 7673
        BandType = 0
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        mmHeight = 5821
        mmLeft = 135202
        mmTop = 32015
        mmWidth = 56621
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        Caption = 'N'#186' Docentes Autorizados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 142346
        mmTop = 32808
        mmWidth = 43392
        BandType = 0
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        mmHeight = 5556
        mmLeft = 153988
        mmTop = 37571
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        Caption = 'VO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 159809
        mmTop = 38629
        mmWidth = 7673
        BandType = 0
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        mmHeight = 5556
        mmLeft = 172773
        mmTop = 37571
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        Caption = 'CE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 178594
        mmTop = 38629
        mmWidth = 7673
        BandType = 0
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        mmHeight = 5556
        mmLeft = 191559
        mmTop = 37571
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'CO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 197380
        mmTop = 38629
        mmWidth = 7673
        BandType = 0
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        mmHeight = 5821
        mmLeft = 191559
        mmTop = 32015
        mmWidth = 56621
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        Caption = 'N'#186' Docentes Pendientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 199232
        mmTop = 32808
        mmWidth = 42333
        BandType = 0
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        mmHeight = 5556
        mmLeft = 210344
        mmTop = 37571
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        Caption = 'VO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 216165
        mmTop = 38629
        mmWidth = 7673
        BandType = 0
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        mmHeight = 5556
        mmLeft = 229130
        mmTop = 37571
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        Caption = 'CE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3440
        mmLeft = 234950
        mmTop = 38629
        mmWidth = 7673
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'DPTODES'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 0
        mmWidth = 24871
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText101'
        DataField = 'UPRONOM'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 28575
        mmTop = 0
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'UPAGONOM'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 64294
        mmTop = 0
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'USENOM'
        DataPipeline = ppbdepreporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 100013
        mmTop = 0
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        DataField = 'CO_APRO'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 135732
        mmTop = 0
        mmWidth = 17991
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'VO_APRO'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 154517
        mmTop = 0
        mmWidth = 17991
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'CE_APRO'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 0
        mmWidth = 17991
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'CO_PEND'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 192088
        mmTop = 0
        mmWidth = 17991
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'VO_PEND'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 210873
        mmTop = 0
        mmWidth = 17991
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'CE_PEND'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 229659
        mmTop = 0
        mmWidth = 17991
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2381
        mmTop = 0
        mmWidth = 245534
        BandType = 7
      end
      object pplimpresoporres: TppLabel
        UserName = 'pplimpresoporres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2381
        mmTop = 5292
        mmWidth = 76994
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CO_APRO'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 135732
        mmTop = 794
        mmWidth = 17991
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 2381
        mmTop = 4498
        mmWidth = 245534
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'VO_APRO'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 154517
        mmTop = 794
        mmWidth = 17992
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CE_APRO'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 173302
        mmTop = 794
        mmWidth = 17992
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'CO_PEND'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 192088
        mmTop = 794
        mmWidth = 17992
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'VO_PEND'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 210873
        mmTop = 794
        mmWidth = 17992
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'CE_PEND'
        DataPipeline = ppbdepreporte
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdepreporte'
        mmHeight = 3175
        mmLeft = 229659
        mmTop = 794
        mmWidth = 17992
        BandType = 7
      end
    end
  end
end
