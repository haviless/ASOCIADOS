object fDetAutDes: TfDetAutDes
  Left = 212
  Top = 172
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 
    'Detalle de Autorizaci'#243'n de Descuento - Distribuci'#243'n por UGELES q' +
    'ue administra la Oficina Desconcentrada'
  ClientHeight = 447
  ClientWidth = 745
  Color = cl3DLight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblDescripcion: TLabel
    Left = 10
    Top = 6
    Width = 113
    Height = 20
    Caption = 'lblDescripcion'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dtgDetAut01: TwwDBGrid
    Left = 4
    Top = 40
    Width = 733
    Height = 369
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'USEID'#9'2'#9'ID'
      'USENOM'#9'35'#9'Descripci'#243'n'
      'POBLACION'#9'9'#9'Poblaci'#243'n'
      'AUTORIZARON'#9'9'#9'Autorizar'#243'n~Descuento'
      'SALDO'#9'9'#9'No Autorizar'#243'n~Descuento'
      'AVANCE'#9'5'#9'     (%)~Efectuado'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsDetalle
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDrawDataCell = dtgDetAut01DrawDataCell
    OnDrawFooterCell = dtgDetAut01DrawFooterCell
    OnDrawTitleCell = dtgDetAut01DrawTitleCell
  end
  object BitSalir: TBitBtn
    Left = 647
    Top = 416
    Width = 86
    Height = 25
    Caption = '&Salir'
    TabOrder = 1
    OnClick = BitSalirClick
  end
  object BitPrint: TBitBtn
    Left = 546
    Top = 416
    Width = 85
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BitPrintClick
  end
  object dtgDetAut02: TwwDBGrid
    Left = 4
    Top = 40
    Width = 725
    Height = 369
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'USEID'#9'2'#9'ID'
      'USENOM'#9'60'#9'Descripci'#243'n'
      'AUTORIZARON'#9'9'#9'Autorizar'#243'n~Descuento'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsDetalle
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
    Left = 144
    Top = 192
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbResPoblacion'
    object ppHeaderBand9: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 41275
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = clGrayText
        mmHeight = 6350
        mmLeft = 139965
        mmTop = 34131
        mmWidth = 35719
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
        mmHeight = 3704
        mmLeft = 57415
        mmTop = 23813
        mmWidth = 88636
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
        mmLeft = 85461
        mmTop = 35719
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel171: TppLabel
        UserName = 'Label157'
        AutoSize = False
        Caption = 'Autorizaron'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 115623
        mmTop = 35719
        mmWidth = 22490
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
        mmLeft = 177271
        mmTop = 35719
        mmWidth = 20373
        BandType = 0
      end
      object ppLine48: TppLine
        UserName = 'Line46'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 4233
        mmTop = 33867
        mmWidth = 194734
        BandType = 0
      end
      object ppLine49: TppLine
        UserName = 'Line47'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 4498
        mmTop = 40481
        mmWidth = 194205
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'Uses / Ugel '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 4763
        mmTop = 35719
        mmWidth = 71702
        BandType = 0
      end
      object Titulo03: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'DEL  XX/XX/XXXXX   AL   XX/XX/XXXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 29898
        mmWidth = 67733
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'NO AUTORIZARON'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Name = 'Times New Roman'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 141552
        mmTop = 35719
        mmWidth = 32544
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
        mmLeft = 139964
        mmTop = 0
        mmWidth = 35720
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
        mmLeft = 77788
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
        mmLeft = 110067
        mmTop = 529
        mmWidth = 28575
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
        mmLeft = 176213
        mmTop = 529
        mmWidth = 21431
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText40'
        DataField = 'USENOM'
        DataPipeline = dbResPoblacion
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbResPoblacion'
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 529
        mmWidth = 71967
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
        mmLeft = 142611
        mmTop = 529
        mmWidth = 29898
        BandType = 4
      end
    end
    object ppFooterBand9: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand9: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 20902
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = clGrayText
        mmHeight = 6879
        mmLeft = 139964
        mmTop = 794
        mmWidth = 35720
        BandType = 7
      end
      object ppLine29: TppLine
        UserName = 'Line27'
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 5027
        mmTop = 794
        mmWidth = 193940
        BandType = 7
      end
      object ppLine30: TppLine
        UserName = 'Line28'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 4763
        mmTop = 7673
        mmWidth = 193940
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
        mmLeft = 6615
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
        mmLeft = 42069
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
        mmLeft = 77788
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
        mmLeft = 109273
        mmTop = 2381
        mmWidth = 29369
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
        mmLeft = 176477
        mmTop = 2381
        mmWidth = 20902
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
        mmLeft = 141817
        mmTop = 2381
        mmWidth = 30692
        BandType = 7
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 
          '* La informaci'#243'n mostrada no considera a los Asociados Fallecido' +
          's'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 5556
        mmTop = 14023
        mmWidth = 90752
        BandType = 7
      end
    end
  end
  object dbResPoblacion: TppDBPipeline
    DataSource = DM1.dsDetalle
    UserName = 'dbResPoblacion'
    Left = 152
    Top = 224
  end
  object dbResProduccion: TppDBPipeline
    DataSource = DM1.dsDetalle
    UserName = 'dbResProduccion'
    Left = 264
    Top = 232
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
    Left = 264
    Top = 200
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
      object xTitulo03: TppLabel
        UserName = 'xTitulo03'
        AutoSize = False
        Caption = 'Uses / Ugel '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 29104
        mmTop = 30427
        mmWidth = 80169
        BandType = 0
      end
      object sTitulo: TppLabel
        UserName = 'sTitulo'
        AutoSize = False
        Caption = 'Uses / Ugel '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 29104
        mmTop = 35719
        mmWidth = 80169
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
        DataField = 'USENOM'
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
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 22225
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
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 
          '* La informaci'#243'n mostrada no considera a los Asociados Fallecido' +
          's'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 6350
        mmTop = 15610
        mmWidth = 90488
        BandType = 7
      end
    end
  end
end
