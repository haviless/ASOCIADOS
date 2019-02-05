object fEstDepSex: TfEstDepSex
  Left = 147
  Top = 148
  Width = 798
  Height = 522
  Caption = 'Estadistica Por Departamento y Sexo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object BitSalir: TBitBtn
    Left = 708
    Top = 463
    Width = 77
    Height = 27
    Caption = '&Salir'
    TabOrder = 0
    OnClick = BitSalirClick
  end
  object dtgEstDepSex: TwwDBGrid
    Left = 2
    Top = 4
    Width = 783
    Height = 454
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'DPTODES'#9'15'#9'Departamento'
      'USENOM'#9'20'#9'Uses/Ugel'
      'POBLACION'#9'9'#9'Poblaci'#243'n'
      'TOTAL_A'#9'9'#9'Autorizar'#243'n~Descuento~Total'
      'NUMMAS_A'#9'9'#9'Autorizar'#243'n~Descuento~Masculino'
      'NUMFEM_A'#9'9'#9'Autorizar'#243'n~Descuento~Femenino'
      'NUMSIF_A'#9'9'#9'Autorizar'#243'n~Descuento~No Identificado'
      'TOTAL_N'#9'9'#9'No Autorizar'#243'n~Descuento~Total'
      'NUMMAS_N'#9'9'#9'No Autorizar'#243'n~Descuento~Masculino'
      'NUMFEM_N'#9'9'#9'No Autorizar'#243'n~Descuento~Femenino'
      'NUMSIF_N'#9'9'#9'No Autorizar'#243'n~Descuento~No Identificado'
      'PORC'#9'5'#9'     (%)~Efectuado'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsSobrino
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -11
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
    TitleLines = 3
    TitleButtons = False
    OnDrawDataCell = dtgEstDepSexDrawDataCell
  end
  object BitImprimir: TBitBtn
    Left = 530
    Top = 463
    Width = 75
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 2
    OnClick = BitImprimirClick
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
  object BitExcel: TBitBtn
    Left = 619
    Top = 463
    Width = 75
    Height = 28
    Caption = 'A Excel'
    TabOrder = 3
    OnClick = BitExcelClick
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
  object dtgData: TDBGrid
    Left = 680
    Top = 160
    Width = 33
    Height = 16
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object Reporte: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline5
    PassSetting = psTwoPass
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
    Template.FileName = 
      'D:\Desarrollo DM\ASOCIADOS\HPC_200909_ASO\Resumen Aut Descuento ' +
      'por depto y Sexo.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 512
    Top = 264
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline5'
    object ppHeaderBand16: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 32015
      mmPrintPosition = 0
      object ppLabel347: TppLabel
        UserName = 'LblTitCal4'
        AutoSize = False
        Caption = 
          'RESUMEN DE AUTORIZACIONES DE DESCUENTO A NIVEL NACIONAL POR DEPA' +
          'RTAMENTO Y GENERO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 19579
        mmWidth = 262203
        BandType = 0
      end
      object ppLabel349: TppLabel
        UserName = 'Label930'
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
      object ppLabel351: TppLabel
        UserName = 'Label931'
        Caption = 'Sistema De Informaci'#243'n Gerencial '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4498
        mmWidth = 44111
        BandType = 0
      end
      object ppLabel353: TppLabel
        UserName = 'Label932'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233363
        mmTop = 265
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel354: TppLabel
        UserName = 'Label933'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233363
        mmTop = 4763
        mmWidth = 11377
        BandType = 0
      end
      object ppLabel355: TppLabel
        UserName = 'Label934'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 233628
        mmTop = 9260
        mmWidth = 10054
        BandType = 0
      end
      object ppSystemVariable46: TppSystemVariable
        UserName = 'SystemVariable92'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 246857
        mmTop = 529
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable47: TppSystemVariable
        UserName = 'SystemVariable93'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 246592
        mmTop = 5292
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable48: TppSystemVariable
        UserName = 'SystemVariable94'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 247386
        mmTop = 9525
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel356: TppLabel
        UserName = 'Label935'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245005
        mmTop = 9260
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel357: TppLabel
        UserName = 'Label5304'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245005
        mmTop = 4763
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel358: TppLabel
        UserName = 'Label937'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 245005
        mmTop = 265
        mmWidth = 1588
        BandType = 0
      end
      object xTit01: TppLabel
        UserName = 'xTit02'
        AutoSize = False
        Caption = 'INFORMACION PROCESADA AL : 18/02/2010 03:22:57 p.m.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 25665
        mmWidth = 262203
        BandType = 0
      end
    end
    object ppDetailBand16: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3440
      mmPrintPosition = 0
      object ppDBText133: TppDBText
        UserName = 'DBText62'
        DataField = 'USENOM'
        DataPipeline = ppDBPipeline5
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3175
        mmLeft = 5292
        mmTop = 265
        mmWidth = 47625
        BandType = 4
      end
      object ppDBText136: TppDBText
        UserName = 'DBText71'
        DataField = 'POBLACION'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3260
        mmLeft = 54240
        mmTop = 180
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText138: TppDBText
        UserName = 'DBText82'
        DataField = 'TOTAL_A'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3175
        mmLeft = 95250
        mmTop = 265
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText131: TppDBText
        UserName = 'DBText131'
        DataField = 'NUMMAS_A'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3175
        mmLeft = 115888
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText132: TppDBText
        UserName = 'DBText132'
        DataField = 'NUMFEM_A'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3175
        mmLeft = 135996
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText134: TppDBText
        UserName = 'DBText134'
        DataField = 'NUMSIF_A'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3175
        mmLeft = 156634
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText135: TppDBText
        UserName = 'DBText135'
        DataField = 'TOTAL_N'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3175
        mmLeft = 178330
        mmTop = 265
        mmWidth = 19579
        BandType = 4
      end
      object ppDBText137: TppDBText
        UserName = 'DBText137'
        DataField = 'NUMMAS_N'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3175
        mmLeft = 199232
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText139: TppDBText
        UserName = 'DBText139'
        DataField = 'NUMFEM_N'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3175
        mmLeft = 219340
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText140: TppDBText
        UserName = 'DBText140'
        DataField = 'NUMSIF_N'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3175
        mmLeft = 239978
        mmTop = 265
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText118: TppDBText
        UserName = 'DBText118'
        DataField = 'PORC'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3260
        mmLeft = 82095
        mmTop = 0
        mmWidth = 7070
        BandType = 4
      end
    end
    object ppFooterBand16: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6615
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'La informaci'#243'n procesada no considera a los Asociados fallecidos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 8202
        mmTop = 794
        mmWidth = 102786
        BandType = 8
      end
    end
    object ppSummaryBand16: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9525
      mmPrintPosition = 0
      object ppLine4: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 4233
        mmTop = 529
        mmWidth = 262996
        BandType = 7
      end
      object ppLabel379: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'TOTAL GENERAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 5027
        mmTop = 1852
        mmWidth = 38100
        BandType = 7
      end
      object ppDBCalc121: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'TOTAL_A'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3387
        mmLeft = 96573
        mmTop = 1852
        mmWidth = 18256
        BandType = 7
      end
      object ppDBCalc123: TppDBCalc
        UserName = 'DBCalc66'
        DataField = 'POBLACION'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3387
        mmLeft = 54504
        mmTop = 1852
        mmWidth = 18785
        BandType = 7
      end
      object ppLine56: TppLine
        UserName = 'Line66'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 4233
        mmTop = 6879
        mmWidth = 262996
        BandType = 7
      end
      object ppDBCalc122: TppDBCalc
        UserName = 'DBCalc122'
        DataField = 'NUMMAS_A'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3440
        mmLeft = 116946
        mmTop = 1852
        mmWidth = 18256
        BandType = 7
      end
      object ppDBCalc124: TppDBCalc
        UserName = 'DBCalc124'
        DataField = 'NUMFEM_A'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3440
        mmLeft = 137054
        mmTop = 1852
        mmWidth = 18256
        BandType = 7
      end
      object ppDBCalc125: TppDBCalc
        UserName = 'DBCalc125'
        DataField = 'NUMSIF_A'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3440
        mmLeft = 157163
        mmTop = 1852
        mmWidth = 18256
        BandType = 7
      end
      object ppDBCalc126: TppDBCalc
        UserName = 'DBCalc126'
        DataField = 'TOTAL_N'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3440
        mmLeft = 179652
        mmTop = 1588
        mmWidth = 18256
        BandType = 7
      end
      object ppDBCalc127: TppDBCalc
        UserName = 'DBCalc127'
        DataField = 'NUMMAS_N'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3440
        mmLeft = 200290
        mmTop = 1588
        mmWidth = 18256
        BandType = 7
      end
      object ppDBCalc128: TppDBCalc
        UserName = 'DBCalc128'
        DataField = 'NUMFEM_N'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3440
        mmLeft = 220134
        mmTop = 1588
        mmWidth = 18256
        BandType = 7
      end
      object ppDBCalc129: TppDBCalc
        UserName = 'DBCalc129'
        DataField = 'NUMSIF_N'
        DataPipeline = ppDBPipeline5
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline5'
        mmHeight = 3440
        mmLeft = 240507
        mmTop = 1588
        mmWidth = 18256
        BandType = 7
      end
    end
    object ppGroup13: TppGroup
      BreakName = 'DPTODES'
      DataPipeline = ppDBPipeline5
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group13'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBPipeline5'
      object ppGroupHeaderBand13: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12700
        mmPrintPosition = 0
        object ppShape45: TppShape
          UserName = 'Shape45'
          mmHeight = 5027
          mmLeft = 178859
          mmTop = 6615
          mmWidth = 82286
          BandType = 3
          GroupNo = 0
        end
        object ppShape44: TppShape
          UserName = 'Shape44'
          mmHeight = 6615
          mmLeft = 178859
          mmTop = 265
          mmWidth = 82286
          BandType = 3
          GroupNo = 0
        end
        object ppShape43: TppShape
          UserName = 'Shape43'
          mmHeight = 5027
          mmLeft = 53711
          mmTop = 6615
          mmWidth = 19579
          BandType = 3
          GroupNo = 0
        end
        object ppShape42: TppShape
          UserName = 'Shape42'
          mmHeight = 6615
          mmLeft = 95779
          mmTop = 265
          mmWidth = 82286
          BandType = 3
          GroupNo = 0
        end
        object ppShape41: TppShape
          UserName = 'Shape15'
          mmHeight = 5027
          mmLeft = 95779
          mmTop = 6615
          mmWidth = 82286
          BandType = 3
          GroupNo = 0
        end
        object ppDBText144: TppDBText
          UserName = 'DBText144'
          DataField = 'DPTODES'
          DataPipeline = ppDBPipeline5
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'ppDBPipeline5'
          mmHeight = 3387
          mmLeft = 5556
          mmTop = 5821
          mmWidth = 27517
          BandType = 3
          GroupNo = 0
        end
        object ppLabel365: TppLabel
          UserName = 'Label3'
          AutoSize = False
          Caption = 'Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold, fsUnderline]
          Transparent = True
          mmHeight = 3387
          mmLeft = 5556
          mmTop = 1058
          mmWidth = 27252
          BandType = 3
          GroupNo = 0
        end
        object ppLabel381: TppLabel
          UserName = 'Label381'
          AutoSize = False
          Caption = 'Poblaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 55827
          mmTop = 7408
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppLabel382: TppLabel
          UserName = 'Label382'
          AutoSize = False
          Caption = 'Autorizar'#243'n Descuento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 98425
          mmTop = 2381
          mmWidth = 78052
          BandType = 3
          GroupNo = 0
        end
        object ppLabel383: TppLabel
          UserName = 'Label383'
          AutoSize = False
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 96573
          mmTop = 7673
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppLabel384: TppLabel
          UserName = 'Label384'
          AutoSize = False
          Caption = 'Masculino'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 116152
          mmTop = 7673
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
        end
        object ppLabel385: TppLabel
          UserName = 'Label385'
          AutoSize = False
          Caption = 'Femenino'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 136525
          mmTop = 7673
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel386: TppLabel
          UserName = 'Label386'
          AutoSize = False
          Caption = 'No Especifica'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 155311
          mmTop = 7673
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object ppLabel387: TppLabel
          UserName = 'Label387'
          AutoSize = False
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 179652
          mmTop = 7673
          mmWidth = 16404
          BandType = 3
          GroupNo = 0
        end
        object ppLabel388: TppLabel
          UserName = 'Label388'
          AutoSize = False
          Caption = 'Masculino'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 199232
          mmTop = 7673
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
        end
        object ppLabel389: TppLabel
          UserName = 'Label389'
          AutoSize = False
          Caption = 'Femenino'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 219605
          mmTop = 7673
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
        object ppLabel390: TppLabel
          UserName = 'Label390'
          AutoSize = False
          Caption = 'No Especifica'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 238390
          mmTop = 7673
          mmWidth = 21960
          BandType = 3
          GroupNo = 0
        end
        object ppLabel391: TppLabel
          UserName = 'Label391'
          AutoSize = False
          Caption = 'No Autorizar'#243'n Descuento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3440
          mmLeft = 180711
          mmTop = 2381
          mmWidth = 78052
          BandType = 3
          GroupNo = 0
        end
        object ppLabel360: TppLabel
          UserName = 'Label360'
          AutoSize = False
          Caption = 'Efectividad %'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 7
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2921
          mmLeft = 75142
          mmTop = 7673
          mmWidth = 18521
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand13: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppDBCalc130: TppDBCalc
          UserName = 'DBCalc130'
          DataField = 'POBLACION'
          DataPipeline = ppDBPipeline5
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline5'
          mmHeight = 3440
          mmLeft = 54240
          mmTop = 1852
          mmWidth = 18785
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc131: TppDBCalc
          UserName = 'DBCalc131'
          DataField = 'TOTAL_A'
          DataPipeline = ppDBPipeline5
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline5'
          mmHeight = 3440
          mmLeft = 96309
          mmTop = 1852
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc132: TppDBCalc
          UserName = 'DBCalc132'
          DataField = 'NUMMAS_A'
          DataPipeline = ppDBPipeline5
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline5'
          mmHeight = 3440
          mmLeft = 116681
          mmTop = 1852
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc133: TppDBCalc
          UserName = 'DBCalc133'
          DataField = 'NUMFEM_A'
          DataPipeline = ppDBPipeline5
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline5'
          mmHeight = 3440
          mmLeft = 136790
          mmTop = 1852
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc134: TppDBCalc
          UserName = 'DBCalc134'
          DataField = 'NUMSIF_A'
          DataPipeline = ppDBPipeline5
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline5'
          mmHeight = 3440
          mmLeft = 157427
          mmTop = 1852
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc135: TppDBCalc
          UserName = 'DBCalc135'
          DataField = 'TOTAL_N'
          DataPipeline = ppDBPipeline5
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline5'
          mmHeight = 3440
          mmLeft = 179388
          mmTop = 1588
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc136: TppDBCalc
          UserName = 'DBCalc136'
          DataField = 'NUMMAS_N'
          DataPipeline = ppDBPipeline5
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline5'
          mmHeight = 3440
          mmLeft = 200025
          mmTop = 1588
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc137: TppDBCalc
          UserName = 'DBCalc137'
          DataField = 'NUMFEM_N'
          DataPipeline = ppDBPipeline5
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline5'
          mmHeight = 3440
          mmLeft = 219869
          mmTop = 1588
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc138: TppDBCalc
          UserName = 'DBCalc138'
          DataField = 'NUMSIF_N'
          DataPipeline = ppDBPipeline5
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup13
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBPipeline5'
          mmHeight = 3440
          mmLeft = 240507
          mmTop = 1588
          mmWidth = 18256
          BandType = 5
          GroupNo = 0
        end
        object ppLabel380: TppLabel
          UserName = 'Label380'
          AutoSize = False
          Caption = 'SUB TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 5027
          mmTop = 1323
          mmWidth = 38100
          BandType = 5
          GroupNo = 0
        end
        object ppLine65: TppLine
          UserName = 'Line65'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4498
          mmTop = 265
          mmWidth = 262996
          BandType = 5
          GroupNo = 0
        end
        object ppLine67: TppLine
          UserName = 'Line67'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4763
          mmTop = 5821
          mmWidth = 262996
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline5: TppDBPipeline
    DataSource = DM1.dsSobrino
    UserName = 'DBPipeline5'
    Left = 512
    Top = 232
  end
end
