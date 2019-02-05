object fAutDesApo: TfAutDesApo
  Left = 175
  Top = 116
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'AUTORIZACIONES DE DESCUENTOS'
  ClientHeight = 558
  ClientWidth = 796
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblInicio: TLabel
    Left = 136
    Top = 528
    Width = 81
    Height = 17
    AutoSize = False
    Color = clCaptionText
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object lblFin: TLabel
    Left = 231
    Top = 528
    Width = 81
    Height = 17
    AutoSize = False
    Color = clCaptionText
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Label1: TLabel
    Left = 136
    Top = 513
    Width = 33
    Height = 13
    AutoSize = False
    Caption = 'Inicio'
    Visible = False
  end
  object Label2: TLabel
    Left = 232
    Top = 513
    Width = 33
    Height = 13
    AutoSize = False
    Caption = 'Fin'
    Visible = False
  end
  object lblTitulo: TLabel
    Left = 6
    Top = 32
    Width = 235
    Height = 13
    AutoSize = False
    Caption = 'Captaci'#243'n por Oficina Desconcentrada'
  end
  object bitGenerar: TBitBtn
    Left = 11
    Top = 523
    Width = 113
    Height = 25
    Caption = '&Generar'
    TabOrder = 0
    Visible = False
    OnClick = bitGenerarClick
  end
  object dtgCabAut01: TwwDBGrid
    Left = 2
    Top = 47
    Width = 506
    Height = 461
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'OFDESID'#9'2'#9'Id'
      'OFDESNOM'#9'18'#9'Oficina~Desconcentrada'
      'POBLACION'#9'9'#9'Poblaci'#243'n'
      'AUTORIZARON'#9'9'#9'Autorizaron~Descuento'
      'SALDO'#9'9'#9'No Autorizaron~Descuento'
      'AVANCE'#9'5'#9'     (%)~Efectuado'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsConsulta
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDrawDataCell = dtgCabAut01DrawDataCell
    OnDblClick = dtgCabAut01DblClick
    OnDrawFooterCell = dtgCabAut01DrawFooterCell
    OnDrawTitleCell = dtgCabAut01DrawTitleCell
  end
  object BitMostrar: TBitBtn
    Left = 5
    Top = 3
    Width = 257
    Height = 25
    Caption = 'Mostrar Datos Al'
    TabOrder = 2
    OnClick = BitMostrarClick
  end
  object dtgCabAut02: TwwDBGrid
    Left = 512
    Top = 77
    Width = 277
    Height = 431
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'OFDESID'#9'2'#9'Id'
      'OFDESNOM'#9'20'#9'Oficina~Desconcentrada'
      'POBLACION'#9'10'#9'Poblaci'#243'n'
      'AUTORIZARON'#9'10'#9'Autorizar'#243'n~Descuento'
      'AVANCE'#9'5'#9'(%)Efectuado'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    ShowVertScrollBar = False
    DataSource = DM1.dsReporte
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dtgCabAut02DblClick
  end
  object BitSalir: TBitBtn
    Left = 659
    Top = 524
    Width = 113
    Height = 25
    Caption = '&Salir'
    TabOrder = 4
    OnClick = BitSalirClick
  end
  object BitPrint: TBitBtn
    Left = 400
    Top = 19
    Width = 107
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 5
    OnClick = BitPrintClick
  end
  object BitImpr: TBitBtn
    Left = 692
    Top = 50
    Width = 96
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = BitImprClick
  end
  object dtgCabAut03: TwwDBGrid
    Left = 513
    Top = 123
    Width = 277
    Height = 384
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'OFDESNOM'#9'20'#9'Fecha de~Registro'
      'AUTORIZARON'#9'10'#9'Autorizar'#243'n~Descuento'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = False
    ShowVertScrollBar = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 7
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    Visible = False
    OnDblClick = dtgCabAut03DblClick
  end
  object pnlFecha: TPanel
    Left = 513
    Top = 79
    Width = 277
    Height = 45
    TabOrder = 8
    Visible = False
    object Label3: TLabel
      Left = 7
      Top = 5
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object Label4: TLabel
      Left = 113
      Top = 5
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object dtpFecha: TwwDBDateTimePicker
      Left = 5
      Top = 19
      Width = 104
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Date = 39164.000000000000000000
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 0
      OnChange = dtpFechaChange
    end
    object dtpHasta: TwwDBDateTimePicker
      Left = 112
      Top = 19
      Width = 104
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Date = 39170.000000000000000000
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      ShowButton = True
      TabOrder = 1
      OnChange = dtpHastaChange
    end
    object BitMstDatos: TButton
      Left = 221
      Top = 16
      Width = 49
      Height = 25
      Caption = 'Mostrar'
      TabOrder = 2
      OnClick = BitMstDatosClick
    end
  end
  object BitDptoSex: TButton
    Left = 404
    Top = 513
    Width = 133
    Height = 38
    Caption = 'Autorizaciones por Departamento y G'#233'nero'
    TabOrder = 9
    WordWrap = True
    OnClick = BitDptoSexClick
  end
  object rgProduccion: TRadioGroup
    Left = 518
    Top = 9
    Width = 165
    Height = 63
    Caption = 'Producci'#243'n'
    Items.Strings = (
      'Por Origen de Registro'
      'Por Rango de Fechas')
    TabOrder = 10
    OnClick = rgProduccionClick
  end
  object dbResPoblacion: TppDBPipeline
    DataSource = DM1.dsConsulta
    UserName = 'dbResPoblacion'
    Left = 280
    Top = 248
  end
  object rpResPoblacion: TppReport
    AutoStop = False
    DataPipeline = dbResPoblacion
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
    Left = 280
    Top = 216
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbResPoblacion'
    object ppHeaderBand9: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clGrayText
        mmHeight = 5292
        mmLeft = 125677
        mmTop = 34660
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel108: TppLabel
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
      object Titulos01: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 4763
        mmTop = 17992
        mmWidth = 191030
        BandType = 0
      end
      object ppLabel159: TppLabel
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
      object ppLabel160: TppLabel
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
      object ppLabel161: TppLabel
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
      object ppSystemVariable25: TppSystemVariable
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
      object ppSystemVariable26: TppSystemVariable
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
      object ppSystemVariable27: TppSystemVariable
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
      object ppLabel162: TppLabel
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
      object ppLabel163: TppLabel
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
      object ppLabel164: TppLabel
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
      object Titulos02: TppLabel
        UserName = 'xTit01'
        AutoSize = False
        Caption = 'DEL  XX/XX/XXXXX   AL   XX/XX/XXXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 32015
        mmTop = 25665
        mmWidth = 131234
        BandType = 0
      end
      object ppLabel170: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'Poblaci'#243'n '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 66940
        mmTop = 35719
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label157'
        AutoSize = False
        Caption = 'Autorizar'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 97631
        mmTop = 35719
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel172: TppLabel
        UserName = 'Label158'
        AutoSize = False
        Caption = '% Efectividad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 164307
        mmTop = 35719
        mmWidth = 20373
        BandType = 0
      end
      object ppLine48: TppLine
        UserName = 'Line46'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 9260
        mmTop = 34660
        mmWidth = 177536
        BandType = 0
      end
      object ppLine49: TppLine
        UserName = 'Line47'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 9525
        mmTop = 39688
        mmWidth = 176742
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Orig'#233'n de Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 13758
        mmTop = 35719
        mmWidth = 40481
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'NO AUTORIZARON'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4106
        mmLeft = 127265
        mmTop = 35190
        mmWidth = 32015
        BandType = 0
      end
    end
    object ppDetailBand9: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        mmHeight = 4763
        mmLeft = 125677
        mmTop = 0
        mmWidth = 34925
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText204'
        DataField = 'POBLACION'
        DataPipeline = dbResPoblacion
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResPoblacion'
        mmHeight = 3704
        mmLeft = 59267
        mmTop = 529
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText36'
        DataField = 'AUTORIZARON'
        DataPipeline = dbResPoblacion
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResPoblacion'
        mmHeight = 3704
        mmLeft = 92075
        mmTop = 529
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText37'
        DataField = 'AVANCE'
        DataPipeline = dbResPoblacion
        DisplayFormat = '##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResPoblacion'
        mmHeight = 3704
        mmLeft = 163248
        mmTop = 529
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText40'
        DataField = 'OFDESNOM'
        DataPipeline = dbResPoblacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbResPoblacion'
        mmHeight = 3969
        mmLeft = 13758
        mmTop = 529
        mmWidth = 42598
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'SALDO'
        DataPipeline = dbResPoblacion
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResPoblacion'
        mmHeight = 3704
        mmLeft = 127000
        mmTop = 265
        mmWidth = 29898
        BandType = 4
      end
    end
    object ppFooterBand9: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLabel13: TppLabel
        UserName = 'Label4'
        Caption = 
          '* La informaci'#243'n mostrada no considera a los Asociados Fallecido' +
          's'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 2381
        mmTop = 529
        mmWidth = 95208
        BandType = 8
      end
    end
    object ppSummaryBand9: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 27252
      mmPrintPosition = 0
      object ppLine29: TppLine
        UserName = 'Line27'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 10054
        mmTop = 794
        mmWidth = 177536
        BandType = 7
      end
      object ppLine30: TppLine
        UserName = 'Line28'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 9790
        mmTop = 7673
        mmWidth = 177007
        BandType = 7
      end
      object ppLabel166: TppLabel
        UserName = 'Label96'
        AutoSize = False
        Caption = 'TOTAL GENERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 15610
        mmTop = 2381
        mmWidth = 33602
        BandType = 7
      end
      object ppLabel167: TppLabel
        UserName = 'Label111'
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
        mmLeft = 51065
        mmTop = 2381
        mmWidth = 4498
        BandType = 7
      end
      object ppDBCalc21: TppDBCalc
        UserName = 'DBCalc44'
        DataField = 'POBLACION'
        DataPipeline = dbResPoblacion
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResPoblacion'
        mmHeight = 3704
        mmLeft = 59267
        mmTop = 2381
        mmWidth = 30163
        BandType = 7
      end
      object ppDBCalc51: TppDBCalc
        UserName = 'DBCalc46'
        DataField = 'AUTORIZARON'
        DataPipeline = dbResPoblacion
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResPoblacion'
        mmHeight = 3704
        mmLeft = 91281
        mmTop = 2381
        mmWidth = 30692
        BandType = 7
      end
      object lblPorFin: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = '000.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 163513
        mmTop = 2381
        mmWidth = 20902
        BandType = 7
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clGrayText
        mmHeight = 6879
        mmLeft = 125677
        mmTop = 794
        mmWidth = 34925
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'SALDO'
        DataPipeline = dbResPoblacion
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResPoblacion'
        mmHeight = 4106
        mmLeft = 126207
        mmTop = 2381
        mmWidth = 30692
        BandType = 7
      end
    end
  end
  object dbResProduccion: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbResProduccion'
    Left = 592
    Top = 312
    object dbeResumenppField1: TppField
      FieldAlias = 'OFDESID'
      FieldName = 'OFDESID'
      FieldLength = 2
      DisplayWidth = 2
      Position = 0
    end
    object dbeResumenppField2: TppField
      FieldAlias = 'OFDESNOM'
      FieldName = 'OFDESNOM'
      FieldLength = 40
      DisplayWidth = 40
      Position = 1
    end
    object dbeResumenppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'POBLACION'
      FieldName = 'POBLACION'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 2
    end
    object dbeResumenppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'AUTORIZARON'
      FieldName = 'AUTORIZARON'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 3
    end
    object dbeResumenppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'AVANCE'
      FieldName = 'AVANCE'
      FieldLength = 8
      DataType = dtDouble
      DisplayWidth = 33
      Position = 4
    end
  end
  object rpResProduccion: TppReport
    AutoStop = False
    DataPipeline = dbResProduccion
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
    Left = 592
    Top = 280
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbResProduccion'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
      object ppLabel2: TppLabel
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
      object xTitulos01: TppLabel
        UserName = 'Label54'
        AutoSize = False
        Caption = 'RESUMEN DE COBRANZA EFECTUADO EN EFECTIVO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 4763
        mmTop = 17992
        mmWidth = 191030
        BandType = 0
      end
      object ppLabel3: TppLabel
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
      object ppLabel4: TppLabel
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
      object ppLabel5: TppLabel
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
      object ppLabel6: TppLabel
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
      object ppLabel7: TppLabel
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
      object ppLabel8: TppLabel
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
      object xTitulos02: TppLabel
        UserName = 'xTit01'
        AutoSize = False
        Caption = 'DEL  XX/XX/XXXXX   AL   XX/XX/XXXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3598
        mmLeft = 35983
        mmTop = 24871
        mmWidth = 110596
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label157'
        AutoSize = False
        Caption = 'Cantidad'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 138642
        mmTop = 35719
        mmWidth = 23813
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line46'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 24342
        mmTop = 34660
        mmWidth = 148167
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line47'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 24606
        mmTop = 39688
        mmWidth = 147373
        BandType = 0
      end
      object sTitulo: TppLabel
        UserName = 'sTitulo'
        AutoSize = False
        Caption = 'Orig'#233'n de Registro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 29369
        mmTop = 35719
        mmWidth = 40481
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4763
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText36'
        DataField = 'AUTORIZARON'
        DataPipeline = dbResProduccion
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResProduccion'
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 529
        mmWidth = 29898
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText40'
        DataField = 'OFDESNOM'
        DataPipeline = dbResProduccion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbResProduccion'
        mmHeight = 3969
        mmLeft = 29633
        mmTop = 529
        mmWidth = 84667
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 
          '* La informaci'#243'n mostrada no considera a los Asociados Fallecido' +
          's'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 3704
        mmTop = 265
        mmWidth = 95250
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line27'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 25135
        mmTop = 794
        mmWidth = 148167
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line28'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 24871
        mmTop = 7673
        mmWidth = 147638
        BandType = 7
      end
      object ppLabel10: TppLabel
        UserName = 'Label96'
        AutoSize = False
        Caption = 'TOTAL GENERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 35190
        mmTop = 2381
        mmWidth = 29369
        BandType = 7
      end
      object ppLabel11: TppLabel
        UserName = 'Label111'
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
        mmLeft = 67998
        mmTop = 2381
        mmWidth = 4498
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc44'
        DataField = 'AUTORIZARON'
        DataPipeline = dbResProduccion
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResProduccion'
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 2910
        mmWidth = 30163
        BandType = 7
      end
    end
  end
end
