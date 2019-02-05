object fRepAutDescuento: TfRepAutDescuento
  Left = 199
  Top = 181
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Autorizaci'#243'n de Descuentos'
  ClientHeight = 199
  ClientWidth = 593
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grbRepfPago: TGroupBox
    Left = 4
    Top = 2
    Width = 581
    Height = 191
    Color = 13165023
    ParentColor = False
    TabOrder = 0
    DesignSize = (
      581
      191)
    object LblUsuarios: TLabel
      Left = 12
      Top = 111
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Label1: TLabel
      Left = 12
      Top = 68
      Width = 97
      Height = 13
      Caption = 'Origen de Registro   '
    end
    object BitPrint: TBitBtn
      Left = 485
      Top = 96
      Width = 83
      Height = 25
      Hint = 'Imprimir'
      Caption = 'Imprimir'
      TabOrder = 6
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
    object BitSalir: TBitBtn
      Left = 485
      Top = 158
      Width = 83
      Height = 27
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
    object DBLUsuarios: TwwDBLookupCombo
      Left = 10
      Top = 125
      Width = 111
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'USUARIO_AUD'#9'12'#9'Usuarios'#9'F'
        'USERNOM'#9'30'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsCtasBco
      LookupField = 'USUARIO_AUD'
      Options = [loColLines, loRowLines]
      MaxLength = 20
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = DBLUsuariosEnter
      OnExit = DBLUsuariosExit
    end
    object PnFecGen: TPanel
      Left = 6
      Top = 11
      Width = 264
      Height = 49
      Color = 13165023
      TabOrder = 0
      object Label3: TLabel
        Left = 12
        Top = 1
        Width = 73
        Height = 13
        Caption = 'Fecha de Inicio'
      end
      object Label4: TLabel
        Left = 134
        Top = 1
        Width = 62
        Height = 13
        Caption = 'Fecha de Fin'
      end
      object DtpFecIni: TwwDBDateTimePicker
        Left = 11
        Top = 15
        Width = 108
        Height = 25
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 0
        DisplayFormat = 'dd/mm/yyyy'
      end
      object DtpFecFin: TwwDBDateTimePicker
        Left = 132
        Top = 15
        Width = 107
        Height = 25
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 1
        DisplayFormat = 'dd/mm/yyyy'
      end
    end
    object DBLkOfiDes: TwwDBLookupCombo
      Left = 10
      Top = 83
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
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = DBLkOfiDesExit
    end
    object rdgGrupo: TRadioGroup
      Left = 487
      Top = 8
      Width = 86
      Height = 78
      Caption = 'Modulos'
      Items.Strings = (
        'Todos'
        'Asociados'
        'Creditos'
        'Cobranzas')
      TabOrder = 9
      Visible = False
    end
    object BitExporta: TBitBtn
      Left = 487
      Top = 126
      Width = 82
      Height = 27
      Anchors = [akTop, akRight]
      Caption = 'Exportar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
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
    object rgTipoReporte: TRadioGroup
      Left = 279
      Top = 9
      Width = 94
      Height = 57
      Caption = 'Tipo de Reporte'
      ItemIndex = 0
      Items.Strings = (
        'Detallado'
        'Resumido')
      TabOrder = 1
      OnClick = rgTipoReporteClick
    end
    object EdtOfiDes: TEdit
      Left = 57
      Top = 83
      Width = 273
      Height = 24
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object EdtUser: TEdit
      Left = 123
      Top = 125
      Width = 257
      Height = 25
      BevelKind = bkFlat
      BorderStyle = bsNone
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object rgTipoFirma: TRadioGroup
      Left = 383
      Top = 9
      Width = 94
      Height = 56
      Caption = 'Firma'
      ItemIndex = 0
      Items.Strings = (
        '1ra Vez'
        '2da Vez')
      TabOrder = 10
      OnClick = rgTipoReporteClick
    end
  end
  object dtgData: TDBGrid
    Left = 15
    Top = 201
    Width = 50
    Height = 10
    DataSource = DM1.dsQry
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object DataDet: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'DataIndMor1'
    Left = 144
    Top = 64
  end
  object rpResumen: TppReport
    AutoStop = False
    DataPipeline = dbResumen
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
    Left = 112
    Top = 96
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbResumen'
    object ppHeaderBand7: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53446
      mmPrintPosition = 0
      object ppLabel114: TppLabel
        UserName = 'Label37'
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
      object ppLabel115: TppLabel
        UserName = 'Label47'
        Caption = 'Sistema  de  Asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3175
        mmTop = 4498
        mmWidth = 29803
        BandType = 0
      end
      object ppLabel116: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 'RESUMEN DE ASOCIADOS CON AUTORIZACION  DE DESCUENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 34396
        mmTop = 22225
        mmWidth = 128852
        BandType = 0
      end
      object ppLabel118: TppLabel
        UserName = 'Label77'
        Caption = 'Cantidad '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 142082
        mmTop = 45773
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel120: TppLabel
        UserName = 'Label84'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel121: TppLabel
        UserName = 'Label85'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel122: TppLabel
        UserName = 'Label501'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable19: TppSystemVariable
        UserName = 'SystemVariable13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180975
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable20: TppSystemVariable
        UserName = 'SystemVariable14'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180711
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable21: TppSystemVariable
        UserName = 'SystemVariable15'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 181505
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel123: TppLabel
        UserName = 'Label87'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel124: TppLabel
        UserName = 'Label88'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel125: TppLabel
        UserName = 'Label89'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line26'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 45508
        mmTop = 49742
        mmWidth = 109273
        BandType = 0
      end
      object ppLabel127: TppLabel
        UserName = 'Label1101'
        Caption = 'Orig'#233'n de Registro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 47625
        mmTop = 44979
        mmWidth = 23749
        BandType = 0
      end
      object Tit02: TppLabel
        UserName = 'Label113'
        AutoSize = False
        Caption = 'RESUMEN DE ASOCIADOS CON AUTORIZARON  DE DESCUENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 34660
        mmTop = 31221
        mmWidth = 128852
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line33'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 45773
        mmTop = 43392
        mmWidth = 109273
        BandType = 0
      end
      object Cab02: TppLabel
        UserName = 'Cab02'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47361
        mmTop = 38100
        mmWidth = 66675
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText41: TppDBText
        UserName = 'DBText20'
        DataField = 'REGISTROS'
        DataPipeline = dbResumen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumen'
        mmHeight = 3704
        mmLeft = 125148
        mmTop = 265
        mmWidth = 23813
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText40'
        DataField = 'OFDESNOM'
        DataPipeline = dbResumen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbResumen'
        mmHeight = 3704
        mmLeft = 55827
        mmTop = 0
        mmWidth = 66940
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText401'
        DataField = 'OFDESID'
        DataPipeline = dbResumen
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbResumen'
        mmHeight = 3704
        mmLeft = 48683
        mmTop = 0
        mmWidth = 5292
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
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel130: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 96573
        mmTop = 2117
        mmWidth = 15610
        BandType = 7
      end
      object ppLabel131: TppLabel
        UserName = 'Label57'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 115623
        mmTop = 2117
        mmWidth = 4498
        BandType = 7
      end
      object ppDBCalc22: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'REGISTROS'
        DataPipeline = dbResumen
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumen'
        mmHeight = 3703
        mmLeft = 125148
        mmTop = 2117
        mmWidth = 23813
        BandType = 7
      end
      object ppLine35: TppLine
        UserName = 'Line27'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 46038
        mmTop = 794
        mmWidth = 107421
        BandType = 7
      end
      object ppLine36: TppLine
        UserName = 'Line28'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 46038
        mmTop = 7144
        mmWidth = 107421
        BandType = 7
      end
    end
  end
  object dbResumen: TppDBPipeline
    DataSource = DM1.dsQry
    UserName = 'dbResumen'
    Left = 112
    Top = 64
    object dbResumenppField1: TppField
      FieldAlias = 'OFDESID'
      FieldName = 'OFDESID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 0
    end
    object dbResumenppField2: TppField
      FieldAlias = 'OFDESNOM'
      FieldName = 'OFDESNOM'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object dbResumenppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'REGISTROS'
      FieldName = 'REGISTROS'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 2
    end
  end
  object RepDeta: TppReport
    AutoStop = False
    DataPipeline = DataDet
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
    Left = 144
    Top = 96
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DataDet'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53446
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label37'
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
      object ppLabel4: TppLabel
        UserName = 'Label47'
        Caption = 'Sistema  de Asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 3175
        mmTop = 4498
        mmWidth = 28998
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 'DETALLE DE ASOCIADOS CON AUTORIZACION  DE DESCUENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 4763
        mmTop = 22225
        mmWidth = 191030
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label75'
        Caption = 'D.N.I.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 34131
        mmTop = 48683
        mmWidth = 7408
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label77'
        Caption = 'Usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 124354
        mmTop = 48683
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label81'
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 11377
        mmTop = 44186
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label84'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label85'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167482
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label501'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 167746
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable13'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180975
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable14'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 180711
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable15'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 181505
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label87'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label88'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label89'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179123
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line25'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 8996
        mmTop = 42863
        mmWidth = 185209
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line26'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 8996
        mmTop = 52652
        mmWidth = 185209
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label110'
        Caption = 'Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 11113
        mmTop = 48683
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label1101'
        Caption = 'Apellidos y Nombres '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 54769
        mmTop = 48683
        mmWidth = 26839
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label112'
        Caption = 'Fecha y Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 148696
        mmTop = 48948
        mmWidth = 20193
        BandType = 0
      end
      object Tit01: TppLabel
        UserName = 'Tit01'
        AutoSize = False
        Caption = 'DETALLE DE ASOCIADOS CON AUTORIZACION  DE DESCUENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 5027
        mmTop = 31221
        mmWidth = 191030
        BandType = 0
      end
      object Cab01: TppLabel
        UserName = 'Cab01'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 11113
        mmTop = 37835
        mmWidth = 66675
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5027
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText20'
        DataField = 'ASOCODMOD'
        DataPipeline = DataDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DataDet'
        mmHeight = 3704
        mmLeft = 11113
        mmTop = 794
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText22'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = DataDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DataDet'
        mmHeight = 3704
        mmLeft = 55033
        mmTop = 794
        mmWidth = 66940
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText24'
        DataField = 'FECREGAUTDESAPO'
        DataPipeline = DataDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DataDet'
        mmHeight = 3704
        mmLeft = 148696
        mmTop = 529
        mmWidth = 42863
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText204'
        DataField = 'ASODNI'
        DataPipeline = DataDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DataDet'
        mmHeight = 3704
        mmLeft = 33338
        mmTop = 794
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText39'
        DataField = 'USUREGAUTDESAPO'
        DataPipeline = DataDet
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DataDet'
        mmHeight = 3704
        mmLeft = 123825
        mmTop = 529
        mmWidth = 22754
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel18: TppLabel
        UserName = 'Label56'
        AutoSize = False
        Caption = 'Cantidad Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 82550
        mmTop = 2117
        mmWidth = 24077
        BandType = 7
      end
      object ppLabel19: TppLabel
        UserName = 'Label57'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3810
        mmLeft = 120386
        mmTop = 2117
        mmWidth = 4498
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'ASOID'
        DataPipeline = DataDet
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DataDet'
        mmHeight = 3704
        mmLeft = 127265
        mmTop = 1852
        mmWidth = 17992
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line27'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 9260
        mmTop = 794
        mmWidth = 185209
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line28'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 9260
        mmTop = 7144
        mmWidth = 185209
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'OFDESNOM'
      DataPipeline = DataDet
      OutlineSettings.CreateNode = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DataDet'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppDBText6: TppDBText
          UserName = 'DBText40'
          DataField = 'OFDESNOM'
          DataPipeline = DataDet
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'DataDet'
          mmHeight = 4191
          mmLeft = 11113
          mmTop = 1588
          mmWidth = 66940
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppLine37: TppLine
          UserName = 'Line37'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 9790
          mmTop = 265
          mmWidth = 185209
          BandType = 5
          GroupNo = 0
        end
        object ppLabel126: TppLabel
          UserName = 'Label126'
          AutoSize = False
          Caption = 'Cantidad x OfiDes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 83079
          mmTop = 1588
          mmWidth = 33867
          BandType = 5
          GroupNo = 0
        end
        object ppLabel139: TppLabel
          UserName = 'Label139'
          AutoSize = False
          Caption = ':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3810
          mmLeft = 120386
          mmTop = 1588
          mmWidth = 4498
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc38: TppDBCalc
          UserName = 'DBCalc38'
          DataField = 'ASOID'
          DataPipeline = DataDet
          DisplayFormat = '###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DataDet'
          mmHeight = 3704
          mmLeft = 127794
          mmTop = 1323
          mmWidth = 17992
          BandType = 5
          GroupNo = 0
        end
        object ppLine45: TppLine
          UserName = 'Line45'
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 10054
          mmTop = 5821
          mmWidth = 185209
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
