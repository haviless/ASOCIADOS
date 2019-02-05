object FrmAutxCenEdu: TFrmAutxCenEdu
  Left = 338
  Top = 197
  BorderStyle = bsDialog
  Caption = 'Autorizacion de descuentos por Centros Educativos'
  ClientHeight = 482
  ClientWidth = 869
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grbRepfPago: TGroupBox
    Left = 0
    Top = 0
    Width = 869
    Height = 65
    Align = alTop
    Color = 13165023
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      869
      65)
    object Label1: TLabel
      Left = 12
      Top = 12
      Width = 67
      Height = 13
      Caption = 'Departamento'
    end
    object BitPrint: TBitBtn
      Left = 781
      Top = 22
      Width = 83
      Height = 27
      Hint = 'Imprimir'
      Caption = 'Imprimir'
      Enabled = False
      TabOrder = 1
      OnClick = BitPrintClick
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
    object Panel2: TPanel
      Left = 53
      Top = 25
      Width = 275
      Height = 25
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 0
      object EdtDpto: TEdit
        Left = 1
        Top = 0
        Width = 273
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object BitExporta: TBitBtn
      Left = 687
      Top = 22
      Width = 83
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitExportaClick
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
        000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
        0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
        080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
      Spacing = 10
    end
    object btnProcesar: TBitBtn
      Left = 335
      Top = 25
      Width = 78
      Height = 28
      Caption = 'Procesar'
      TabOrder = 3
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
    object dblcddptoid: TwwDBLookupComboDlg
      Left = 5
      Top = 26
      Width = 45
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
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      MaxLength = 3
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcddptoidExit
    end
    object dtgData: TDBGrid
      Left = 592
      Top = 8
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
  end
  object dbgprevio: TwwDBGrid
    Left = 0
    Top = 65
    Width = 869
    Height = 417
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
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
  object ppbdAutxCenEdu: TppBDEPipeline
    UserName = 'BDEPReporte'
    Left = 480
    Top = 16
  end
  object pprAutxCenEdu: TppReport
    AutoStop = False
    DataPipeline = ppbdAutxCenEdu
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
      'C:\Documents and Settings\JUDELACRUZ\Escritorio\ASOCIADOS URGENT' +
      'E\rpthOJAcARGO.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPageWidth
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 512
    Top = 16
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdAutxCenEdu'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 15346
      mmPrintPosition = 0
      object ppltitulo: TppLabel
        UserName = 'ltitulo'
        Caption = 
          'HOJA DE CARGO POR ENTREGA DE ESTADOS DE CUENTA INDIVIDUAL POR CO' +
          'LEGIOS - '#39'LAMBAYEQUE'#39
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3895
        mmLeft = 50933
        mmTop = 9525
        mmWidth = 179917
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3703
        mmLeft = 8467
        mmTop = 3440
        mmWidth = 41010
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUM'
        DataPipeline = ppbdAutxCenEdu
        DisplayFormat = '#0;-#0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdAutxCenEdu'
        mmHeight = 3006
        mmLeft = 529
        mmTop = 0
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'APELLIDOS_NOMBRES'
        DataPipeline = ppbdAutxCenEdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdAutxCenEdu'
        mmHeight = 3006
        mmLeft = 8467
        mmTop = 0
        mmWidth = 39158
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'CPO_CEN_EDUCATIVO'
        DataPipeline = ppbdAutxCenEdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdAutxCenEdu'
        mmHeight = 2910
        mmLeft = 101865
        mmTop = 0
        mmWidth = 34660
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'AUTORIZO_DSCTO'
        DataPipeline = ppbdAutxCenEdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdAutxCenEdu'
        mmHeight = 3006
        mmLeft = 48419
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CENTRO_EDUCATIVO'
        DataPipeline = ppbdAutxCenEdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdAutxCenEdu'
        mmHeight = 3006
        mmLeft = 53975
        mmTop = 0
        mmWidth = 37042
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'DIR_CEN_EDUCATIVO'
        DataPipeline = ppbdAutxCenEdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdAutxCenEdu'
        mmHeight = 2910
        mmLeft = 144463
        mmTop = 0
        mmWidth = 44450
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 3704
        mmWidth = 283634
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 282840
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 241300
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 223573
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 188384
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 143140
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine19: TppLine
        UserName = 'Line19'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 100277
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line101'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 52652
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line21'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 47096
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 7144
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 207698
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 137054
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 90488
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'NIV_CEN_EDUCATIVO'
        DataPipeline = ppbdAutxCenEdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdAutxCenEdu'
        mmHeight = 2910
        mmLeft = 92075
        mmTop = 0
        mmWidth = 8202
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'ASODNI'
        DataPipeline = ppbdAutxCenEdu
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdAutxCenEdu'
        mmHeight = 2910
        mmLeft = 209021
        mmTop = 529
        mmWidth = 15081
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'PROVINCIA'
      DataPipeline = ppbdAutxCenEdu
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdAutxCenEdu'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel25: TppLabel
          UserName = 'Label25'
          Caption = 'PROVINCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3344
          mmLeft = 3704
          mmTop = 265
          mmWidth = 16298
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3344
          mmLeft = 20902
          mmTop = 0
          mmWidth = 931
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          DataField = 'PROVINCIA'
          DataPipeline = ppbdAutxCenEdu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdAutxCenEdu'
          mmHeight = 3440
          mmLeft = 24342
          mmTop = 0
          mmWidth = 37835
          BandType = 3
          GroupNo = 0
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          Caption = 'PROMOTOR(ES)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 64823
          mmTop = 0
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          Caption = 
            '................................................................' +
            '................................................................' +
            '.......'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4149
          mmLeft = 91281
          mmTop = 0
          mmWidth = 120015
          BandType = 3
          GroupNo = 0
        end
        object ppLabel14: TppLabel
          UserName = 'Label14'
          Caption = 'FECHA : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3895
          mmLeft = 215636
          mmTop = 0
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          Caption = '..................................................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4149
          mmLeft = 233098
          mmTop = 0
          mmWidth = 44450
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'DISTRITO'
      DataPipeline = ppbdAutxCenEdu
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdAutxCenEdu'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 13229
        mmPrintPosition = 0
        object ppLabel26: TppLabel
          UserName = 'Label26'
          Caption = 'DISTRITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 3440
          mmTop = 0
          mmWidth = 13758
          BandType = 3
          GroupNo = 1
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 20638
          mmTop = 0
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          DataField = 'DISTRITO'
          DataPipeline = ppbdAutxCenEdu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdAutxCenEdu'
          mmHeight = 3440
          mmLeft = 25135
          mmTop = 0
          mmWidth = 36513
          BandType = 3
          GroupNo = 1
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'N'#176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 1852
          mmTop = 7408
          mmWidth = 3387
          BandType = 3
          GroupNo = 1
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'NOMBRE COLEGIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 54240
          mmTop = 7408
          mmWidth = 23707
          BandType = 3
          GroupNo = 1
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          Caption = 'CENTRO POBLADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 101600
          mmTop = 7408
          mmWidth = 23707
          BandType = 3
          GroupNo = 1
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'DIRECCION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 144463
          mmTop = 7408
          mmWidth = 15240
          BandType = 3
          GroupNo = 1
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'FIRMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 190765
          mmTop = 9525
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'DNI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 212196
          mmTop = 9790
          mmWidth = 5080
          BandType = 3
          GroupNo = 1
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'RECEPCION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 196850
          mmTop = 5292
          mmWidth = 15240
          BandType = 3
          GroupNo = 1
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'TELEFONO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 224896
          mmTop = 7408
          mmWidth = 13547
          BandType = 3
          GroupNo = 1
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          Caption = 'OBSERVACION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 243682
          mmTop = 7408
          mmWidth = 18627
          BandType = 3
          GroupNo = 1
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'NOMBRE ASOCIADO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 8731
          mmTop = 7408
          mmWidth = 25400
          BandType = 3
          GroupNo = 1
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 0
          mmTop = 5027
          mmWidth = 283634
          BandType = 3
          GroupNo = 1
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 12964
          mmWidth = 283634
          BandType = 3
          GroupNo = 1
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 282840
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 241036
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 223309
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 188384
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 143140
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 100277
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLine10: TppLine
          UserName = 'Line10'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 52652
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLine11: TppLine
          UserName = 'Line11'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 47096
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 7144
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 0
          mmTop = 5027
          mmWidth = 265
          BandType = 3
          GroupNo = 1
        end
        object ppLine25: TppLine
          UserName = 'Line25'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 3969
          mmLeft = 207963
          mmTop = 9260
          mmWidth = 794
          BandType = 3
          GroupNo = 1
        end
        object ppLine26: TppLine
          UserName = 'Line20'
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 189177
          mmTop = 8996
          mmWidth = 35190
          BandType = 3
          GroupNo = 1
        end
        object ppLine27: TppLine
          UserName = 'Line27'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 137054
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = 'NIVEL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 91811
          mmTop = 7408
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLine29: TppLine
          UserName = 'Line29'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8202
          mmLeft = 90488
          mmTop = 5027
          mmWidth = 1058
          BandType = 3
          GroupNo = 1
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = 'TUR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 138377
          mmTop = 7673
          mmWidth = 5027
          BandType = 3
          GroupNo = 1
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'FIR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 48154
          mmTop = 7408
          mmWidth = 5080
          BandType = 3
          GroupNo = 1
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          Caption = 
            '................................................................' +
            '................................................................' +
            '.......'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Times New Roman'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4149
          mmLeft = 91281
          mmTop = 0
          mmWidth = 120015
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList1: TppParameterList
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
    Report = pprAutxCenEdu
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 448
    Top = 16
  end
end
