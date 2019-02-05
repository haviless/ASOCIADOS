object fTipAso: TfTipAso
  Left = 208
  Top = 255
  BorderStyle = bsDialog
  Caption = 'No Identificados / Homonimias'
  ClientHeight = 166
  ClientWidth = 514
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 5
    Top = -3
    Width = 500
    Height = 163
    TabOrder = 0
    DesignSize = (
      500
      163)
    object dtgData: TDBGrid
      Left = 39
      Top = 81
      Width = 50
      Height = 10
      DataSource = DM1.dsQry2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
    end
    object Panel1: TPanel
      Left = 9
      Top = 47
      Width = 484
      Height = 66
      TabOrder = 0
      object Label1: TLabel
        Left = 201
        Top = 8
        Width = 111
        Height = 13
        Caption = 'Origen De Operaciones'
      end
      object rdbTodaOfic: TRadioButton
        Left = 10
        Top = 6
        Width = 135
        Height = 17
        Caption = 'Todas Las Oficinas'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rdbTodaOficClick
      end
      object rdbOficDesc: TRadioButton
        Left = 9
        Top = 34
        Width = 176
        Height = 17
        Caption = 'Por Oficina Desconcentrada'
        TabOrder = 1
        OnClick = rdbOficDescClick
      end
      object pnlOfDes: TPanel
        Left = 201
        Top = 24
        Width = 270
        Height = 30
        Enabled = False
        TabOrder = 2
        object EdtOfiDes: TEdit
          Left = 47
          Top = 3
          Width = 218
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
        object DBLkOfiDes: TwwDBLookupCombo
          Left = 2
          Top = 3
          Width = 44
          Height = 24
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          DropDownAlignment = taLeftJustify
          Selected.Strings = (
            'OFDESID'#9'2'#9'Codigo'#9'F'
            'OFDESNOM'#9'25'#9'Descripci'#243'n'#9'F')
          LookupTable = DM1.cdsOfdes
          LookupField = 'OFDESID'
          Options = [loColLines, loRowLines]
          ParentFont = False
          TabOrder = 1
          AutoDropDown = False
          ShowButton = True
          PreciseEditRegion = False
          AllowClearKey = False
          OnChange = DBLkOfiDesChange
        end
      end
    end
    object BitPrintAut: TBitBtn
      Left = 273
      Top = 125
      Width = 90
      Height = 27
      Cursor = crHandPoint
      Hint = 'Imprimir Cuentas Por Autorizar'
      Caption = 'Imprime'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitPrintAutClick
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
    object BitSalir: TBitBtn
      Left = 373
      Top = 125
      Width = 91
      Height = 27
      Cursor = crHandPoint
      Caption = '&Salir'
      TabOrder = 2
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
    object Panel3: TPanel
      Left = 9
      Top = 14
      Width = 483
      Height = 27
      TabOrder = 3
      object rdbNoIden: TRadioButton
        Left = 9
        Top = 4
        Width = 107
        Height = 17
        Caption = 'No Identificados'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = rdbNoIdenClick
      end
      object rdbHomon: TRadioButton
        Left = 145
        Top = 3
        Width = 103
        Height = 17
        Caption = 'Homonimias'
        TabOrder = 1
        OnClick = rdbHomonClick
      end
      object rdbDoSin: TRadioButton
        Left = 281
        Top = 4
        Width = 200
        Height = 17
        Caption = 'Docentes Sin Resoluci'#243'n ("DO")'
        TabOrder = 2
        OnClick = rdbDoSinClick
      end
    end
    object BitExporta: TBitBtn
      Left = 174
      Top = 125
      Width = 91
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
  end
  object DBfTipAso: TppDBPipeline
    DataSource = DM1.dsQry2
    UserName = 'DBfTipAso'
    Left = 128
    Top = 128
  end
  object RepVerHomon: TppReport
    AutoStop = False
    DataPipeline = DBfTipAso
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 215900
    PrinterSetup.mmPaperWidth = 279401
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 104
    Top = 128
    Version = '7.02'
    mmColumnWidth = 266701
    DataPipelineName = 'DBfTipAso'
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34131
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label611'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label612'
        Caption = 'Fecha   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 219869
        mmTop = 0
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label614'
        Caption = 'Hora     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 219869
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label615'
        Caption = 'Pag      :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 220134
        mmTop = 8996
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable19: TppSystemVariable
        UserName = 'SystemVariable59'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 232040
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable20: TppSystemVariable
        UserName = 'SystemVariable60'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 231775
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable21: TppSystemVariable
        UserName = 'SystemVariable61'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 232040
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label616'
        Caption = 'Sistema De Mantenimiento De Asociados   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 4763
        mmWidth = 61595
        BandType = 0
      end
      object lblRepVerHomonTitulo: TppLabel
        UserName = 'lblTitulo'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5027
        mmLeft = 27517
        mmTop = 15346
        mmWidth = 198702
        BandType = 0
      end
      object lblRepVerHomonSubTitulo: TppLabel
        UserName = 'lblSubtitulo'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 27781
        mmTop = 22225
        mmWidth = 198702
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line152'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1852
        mmTop = 33867
        mmWidth = 261673
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label5801'
        AutoSize = False
        Caption = 'Apellidos y Nombres D.N.I.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 27781
        mmTop = 28840
        mmWidth = 42863
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label618'
        AutoSize = False
        Caption = 'C'#243'd. Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3704
        mmTop = 28840
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label619'
        AutoSize = False
        Caption = 'Use/Ugel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 93927
        mmTop = 28840
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label621'
        AutoSize = False
        Caption = 'Unidad de Pago'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 127265
        mmTop = 28575
        mmWidth = 24871
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line27'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1852
        mmTop = 26988
        mmWidth = 260880
        BandType = 0
      end
      object ppLabel113: TppLabel
        UserName = 'Label113'
        AutoSize = False
        Caption = 'Unidad Proceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 160073
        mmTop = 28310
        mmWidth = 24871
        BandType = 0
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        AutoSize = False
        Caption = 'D.N.I.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 213784
        mmTop = 28310
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel117: TppLabel
        UserName = 'Label117'
        AutoSize = False
        Caption = 'Tipo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 200555
        mmTop = 28310
        mmWidth = 8202
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        AutoSize = False
        Caption = 'Cuenta Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 236273
        mmTop = 28310
        mmWidth = 24871
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText262'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 26458
        mmTop = 0
        mmWidth = 62442
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText263'
        DataField = 'ASOCODMOD'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 4498
        mmTop = 0
        mmWidth = 21167
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText264'
        DataField = 'USENOM'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 91017
        mmTop = 0
        mmWidth = 32279
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText265'
        DataField = 'UPAGONOM'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 125413
        mmTop = 0
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText39'
        DataField = 'UPRONOM'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 158221
        mmTop = 0
        mmWidth = 37571
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText40'
        DataField = 'ASOTIPID'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 201348
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText401'
        DataField = 'ASODNI'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 211932
        mmTop = 0
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText402'
        DataField = 'ASONCTA'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 235744
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
    end
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand7: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppLabel115: TppLabel
        UserName = 'Label608'
        Caption = 'TOTAL GENERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 158486
        mmTop = 1852
        mmWidth = 26988
        BandType = 7
      end
      object ppLabel116: TppLabel
        UserName = 'Label609'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 217753
        mmTop = 1852
        mmWidth = 4498
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc216'
        DataField = 'ASOID'
        DataPipeline = DBfTipAso
        DisplayFormat = '###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 225425
        mmTop = 1852
        mmWidth = 26194
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line151'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 155575
        mmTop = 794
        mmWidth = 102659
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line150'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 155575
        mmTop = 6879
        mmWidth = 102659
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line1501'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 155575
        mmTop = 7673
        mmWidth = 102659
        BandType = 7
      end
    end
  end
  object RepVerNI: TppReport
    AutoStop = False
    DataPipeline = DBfTipAso
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279401
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 72
    Top = 128
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBfTipAso'
    object ppHeaderBand35: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLabel713: TppLabel
        UserName = 'Label611'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel714: TppLabel
        UserName = 'Label612'
        Caption = 'Fecha   :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel715: TppLabel
        UserName = 'Label614'
        Caption = 'Hora     :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel716: TppLabel
        UserName = 'Label615'
        Caption = 'Pag      :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 11113
        BandType = 0
      end
      object ppSystemVariable74: TppSystemVariable
        UserName = 'SystemVariable59'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable75: TppSystemVariable
        UserName = 'SystemVariable60'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175419
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable76: TppSystemVariable
        UserName = 'SystemVariable61'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel717: TppLabel
        UserName = 'Label616'
        Caption = 'Sistema De Mantenimiento De Asociados   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 0
        mmTop = 4763
        mmWidth = 61595
        BandType = 0
      end
      object lblTitulo: TppLabel
        UserName = 'lblTitulo'
        AutoSize = False
        Caption = 'LISTADO DE DOCENTES ASOCIADOS TIPO: "NI"'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 1058
        mmTop = 15346
        mmWidth = 198702
        BandType = 0
      end
      object lblSubtitulo: TppLabel
        UserName = 'lblSubtitulo'
        AutoSize = False
        Caption = 'A NIVEL NACIONAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 1323
        mmTop = 22225
        mmWidth = 198702
        BandType = 0
      end
    end
    object ppDetailBand37: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText298: TppDBText
        UserName = 'DBText262'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 52388
        mmTop = 0
        mmWidth = 91546
        BandType = 4
      end
      object ppDBText299: TppDBText
        UserName = 'DBText264'
        DataField = 'ASOCODPAGO'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3598
        mmLeft = 150284
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText300: TppDBText
        UserName = 'DBText265'
        DataField = 'APOSEC'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3598
        mmLeft = 182034
        mmTop = 0
        mmWidth = 13208
        BandType = 4
      end
      object ppDBText301: TppDBText
        UserName = 'DBText1'
        DataField = 'ASOCODMOD'
        DataPipeline = DBfTipAso
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3704
        mmLeft = 28575
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
    end
    object ppFooterBand30: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
    end
    object ppSummaryBand35: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10319
      mmPrintPosition = 0
      object ppLabel720: TppLabel
        UserName = 'Label608'
        Caption = 'TOTAL GENERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 98954
        mmTop = 1852
        mmWidth = 26882
        BandType = 7
      end
      object ppLabel721: TppLabel
        UserName = 'Label609'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 158221
        mmTop = 1852
        mmWidth = 4498
        BandType = 7
      end
      object ppDBCalc199: TppDBCalc
        UserName = 'DBCalc216'
        DataField = 'ASOID'
        DataPipeline = DBfTipAso
        DisplayFormat = '###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DBfTipAso'
        mmHeight = 3810
        mmLeft = 165894
        mmTop = 1852
        mmWidth = 26194
        BandType = 7
      end
      object ppLine185: TppLine
        UserName = 'Line151'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 96044
        mmTop = 794
        mmWidth = 102659
        BandType = 7
      end
      object ppLine186: TppLine
        UserName = 'Line150'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 96044
        mmTop = 6879
        mmWidth = 102659
        BandType = 7
      end
      object ppLine187: TppLine
        UserName = 'Line1501'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 96044
        mmTop = 7673
        mmWidth = 102659
        BandType = 7
      end
    end
    object ppGroup46: TppGroup
      BreakName = 'OFDESNOM'
      DataPipeline = DBfTipAso
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group39'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DBfTipAso'
      object ppGroupHeaderBand46: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBText302: TppDBText
          UserName = 'DBText2601'
          DataField = 'OFDESNOM'
          DataPipeline = DBfTipAso
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBfTipAso'
          mmHeight = 3704
          mmLeft = 37306
          mmTop = 1323
          mmWidth = 82286
          BandType = 3
          GroupNo = 0
        end
        object ppLine188: TppLine
          UserName = 'Line153'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 0
          mmTop = 6615
          mmWidth = 199496
          BandType = 3
          GroupNo = 0
        end
        object ppLabel722: TppLabel
          UserName = 'Label624'
          Caption = 'Oficina Desconcentada :  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 1323
          mmWidth = 36513
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand46: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppDBCalc200: TppDBCalc
          UserName = 'DBCalc215'
          DataField = 'ASOID'
          DataPipeline = DBfTipAso
          DisplayFormat = '###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup46
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DBfTipAso'
          mmHeight = 3810
          mmLeft = 165894
          mmTop = 1852
          mmWidth = 26194
          BandType = 5
          GroupNo = 0
        end
        object ppLabel723: TppLabel
          UserName = 'Label596'
          Caption = 'Total Por Oficina Desconcentrada'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 98954
          mmTop = 1852
          mmWidth = 51181
          BandType = 5
          GroupNo = 0
        end
        object ppLabel724: TppLabel
          UserName = 'Label597'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 158221
          mmTop = 1852
          mmWidth = 4498
          BandType = 5
          GroupNo = 0
        end
        object ppLine189: TppLine
          UserName = 'Line149'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 96044
          mmTop = 794
          mmWidth = 102659
          BandType = 5
          GroupNo = 0
        end
        object ppLine190: TppLine
          UserName = 'Line30'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 95779
          mmTop = 7144
          mmWidth = 102659
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup47: TppGroup
      BreakName = 'USENOM'
      DataPipeline = DBfTipAso
      OutlineSettings.CreateNode = True
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DBfTipAso'
      object ppGroupHeaderBand47: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 14288
        mmPrintPosition = 0
        object ppLine191: TppLine
          UserName = 'Line152'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 27252
          mmTop = 14023
          mmWidth = 172244
          BandType = 3
          GroupNo = 1
        end
        object ppLabel725: TppLabel
          UserName = 'Label5801'
          Caption = 'Apellidos y Nombres D.N.I.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 52388
          mmTop = 9260
          mmWidth = 38365
          BandType = 3
          GroupNo = 1
        end
        object ppLabel726: TppLabel
          UserName = 'Label619'
          Caption = 'C'#243'd. Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 152665
          mmTop = 9790
          mmWidth = 17992
          BandType = 3
          GroupNo = 1
        end
        object ppLabel727: TppLabel
          UserName = 'Label621'
          Caption = 'Primer Aporte'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 177800
          mmTop = 9525
          mmWidth = 20373
          BandType = 3
          GroupNo = 1
        end
        object ppLabel728: TppLabel
          UserName = 'Label93'
          Caption = 'Uses/Ugel :  '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 18521
          mmTop = 1588
          mmWidth = 18288
          BandType = 3
          GroupNo = 1
        end
        object ppDBText303: TppDBText
          UserName = 'DBText34'
          DataField = 'USENOM'
          DataPipeline = DBfTipAso
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DBfTipAso'
          mmHeight = 3704
          mmLeft = 37306
          mmTop = 1588
          mmWidth = 82286
          BandType = 3
          GroupNo = 1
        end
        object ppLine192: TppLine
          UserName = 'Line27'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 26988
          mmTop = 8202
          mmWidth = 172244
          BandType = 3
          GroupNo = 1
        end
        object ppLabel729: TppLabel
          UserName = 'Label1'
          Caption = 'C'#243'd. Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 28575
          mmTop = 9260
          mmWidth = 19050
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand47: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 9525
        mmPrintPosition = 0
        object ppDBCalc202: TppDBCalc
          UserName = 'DBCalc21'
          DataField = 'ASOID'
          DataPipeline = DBfTipAso
          DisplayFormat = '###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          ResetGroup = ppGroup47
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DBfTipAso'
          mmHeight = 3704
          mmLeft = 166159
          mmTop = 2646
          mmWidth = 26194
          BandType = 5
          GroupNo = 1
        end
        object ppLabel730: TppLabel
          UserName = 'Label109'
          Caption = 'Total Por Uses/Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 99219
          mmTop = 2646
          mmWidth = 28533
          BandType = 5
          GroupNo = 1
        end
        object ppLabel731: TppLabel
          UserName = 'Label110'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3704
          mmLeft = 158486
          mmTop = 2646
          mmWidth = 4498
          BandType = 5
          GroupNo = 1
        end
        object ppLine193: TppLine
          UserName = 'Line28'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 96309
          mmTop = 1588
          mmWidth = 102659
          BandType = 5
          GroupNo = 1
        end
        object ppLine194: TppLine
          UserName = 'Line29'
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 96044
          mmTop = 7673
          mmWidth = 102659
          BandType = 5
          GroupNo = 1
        end
      end
    end
  end
end
