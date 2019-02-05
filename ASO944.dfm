object fRegApor: TfRegApor
  Left = 442
  Top = 152
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Registro De Aportaciones'
  ClientHeight = 513
  ClientWidth = 771
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
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 4
    Top = 1
    Width = 765
    Height = 250
    TabOrder = 0
    object lstAnoApot: TListBox
      Left = 8
      Top = 11
      Width = 64
      Height = 229
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      OnClick = lstAnoApotClick
    end
    object dtgAportes: TwwDBGrid
      Left = 79
      Top = 10
      Width = 634
      Height = 230
      Cursor = crHandPoint
      DisableThemesInTitle = False
      Selected.Strings = (
        'PERIODO'#9'7'#9'Periodo~Mes/A'#241'o'
        'FRMPAG'#9'3'#9'For.~Pago'
        'MONTO'#9'7'#9'Aporte'
        'MONDEV'#9'7'#9'Devol'
        'MONTOT'#9'7'#9'Total'
        'TRANSFOPE'#9'10'#9'Fecha~Documento'
        'USUARIO'#9'16'#9'Registrado~Por'
        'USES'#9'20'#9'Use/Ugel'
        'HREG'#9'21'#9'Fecha y Hora~De Registro'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsCuotas
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
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
    end
    object BitPrint: TBitBtn
      Left = 720
      Top = 16
      Width = 40
      Height = 30
      Cursor = crHandPoint
      Hint = 'Imprimir'
      TabOrder = 2
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
  end
  object Panel1: TPanel
    Left = 4
    Top = 257
    Width = 765
    Height = 221
    Caption = 'Panel1'
    TabOrder = 1
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 763
      Height = 18
      Align = alTop
      Caption = '   Aportes por descontar'
      Color = clNavy
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object dbgApo: TwwDBGrid
      Left = 8
      Top = 26
      Width = 705
      Height = 188
      DisableThemesInTitle = False
      Selected.Strings = (
        'APOANO'#9'6'#9'A'#241'o'
        'APOMES'#9'4'#9'Mes'
        'MESDESL'#9'15'#9'Descripci'#243'n'
        'PORPAGAR'#9'10'#9'Por Pagar'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsQry20
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
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
    object BitBtn1: TBitBtn
      Left = 721
      Top = 33
      Width = 40
      Height = 30
      Cursor = crHandPoint
      Hint = 'Imprimir'
      TabOrder = 1
      OnClick = BitBtn1Click
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
  end
  object BitSalir: TBitBtn
    Left = 676
    Top = 483
    Width = 89
    Height = 28
    Cursor = crHandPoint
    Hint = 'Salir'
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
  object RepAportes: TppReport
    AutoStop = False
    DataPipeline = DbAportes
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
    Left = 296
    Top = 160
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbAportes'
    object ppHeaderBand31: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 52652
      mmPrintPosition = 0
      object lblTitulo: TppLabel
        UserName = 'lblTitulo'
        AutoSize = False
        Caption = 'ESTADO DE CUENTA DE APORTES REGISTRADOS A : XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 14288
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel628: TppLabel
        UserName = 'Label568'
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
      object ppLabel629: TppLabel
        UserName = 'Label569'
        Caption = 'Sistema De Mantenimiento De Asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 0
        mmTop = 4498
        mmWidth = 52451
        BandType = 0
      end
      object ppLabel630: TppLabel
        UserName = 'Label570'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 0
        mmWidth = 8890
        BandType = 0
      end
      object ppLabel631: TppLabel
        UserName = 'Label571'
        Caption = 'Hora     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 11430
        BandType = 0
      end
      object ppLabel632: TppLabel
        UserName = 'Label572'
        Caption = 'Pag     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 10160
        BandType = 0
      end
      object ppSystemVariable62: TppSystemVariable
        UserName = 'SystemVariable53'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable63: TppSystemVariable
        UserName = 'SystemVariable302'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable64: TppSystemVariable
        UserName = 'SystemVariable55'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177536
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel633: TppLabel
        UserName = 'Label573'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel634: TppLabel
        UserName = 'Label4002'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel635: TppLabel
        UserName = 'Label575'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 175155
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLine156: TppLine
        UserName = 'Line154'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 52123
        mmWidth = 201877
        BandType = 0
      end
      object ppLine157: TppLine
        UserName = 'Line155'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 22754
        mmWidth = 201877
        BandType = 0
      end
      object ppDBText260: TppDBText
        UserName = 'DBText251'
        DataField = 'ASOCODMOD'
        DataPipeline = DbAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 40481
        mmWidth = 20373
        BandType = 0
      end
      object ppDBText267: TppDBText
        UserName = 'DBText252'
        DataField = 'ASOAPENOM'
        DataPipeline = DbAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 31485
        mmTop = 44450
        mmWidth = 86519
        BandType = 0
      end
      object lblUse: TppLabel
        UserName = 'lblUse'
        AutoSize = False
        Caption = 'lblUse'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 30956
        mmTop = 32015
        mmWidth = 130175
        BandType = 0
      end
      object lblProc: TppLabel
        UserName = 'lblUse3'
        AutoSize = False
        Caption = 'lblProc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 31221
        mmTop = 36513
        mmWidth = 129646
        BandType = 0
      end
      object lblTipAso: TppLabel
        UserName = 'lblUse4'
        AutoSize = False
        Caption = 'lblTipAso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 102394
        mmTop = 40481
        mmWidth = 36248
        BandType = 0
      end
      object ppLabel636: TppLabel
        UserName = 'Label59'
        AutoSize = False
        Caption = 'Use'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 32015
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel637: TppLabel
        UserName = 'Label60'
        AutoSize = False
        Caption = 'Procesado En'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 36513
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel638: TppLabel
        UserName = 'Label601'
        AutoSize = False
        Caption = 'Cod.Modular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 40481
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel639: TppLabel
        UserName = 'Label62'
        AutoSize = False
        Caption = 'Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 44450
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel640: TppLabel
        UserName = 'Label63'
        AutoSize = False
        Caption = 'Tipo De Asociado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 73819
        mmTop = 40481
        mmWidth = 23283
        BandType = 0
      end
      object ppLabel641: TppLabel
        UserName = 'Label64'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 32544
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel642: TppLabel
        UserName = 'Label65'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 36777
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel643: TppLabel
        UserName = 'Label66'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 40481
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel644: TppLabel
        UserName = 'Label67'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 44450
        mmWidth = 3440
        BandType = 0
      end
      object ppLabel645: TppLabel
        UserName = 'Label68'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 97896
        mmTop = 40481
        mmWidth = 3440
        BandType = 0
      end
    end
    object ppDetailBand33: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText268: TppDBText
        UserName = 'DBText242'
        DataField = 'TRANSFOPE'
        DataPipeline = DbAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 265
        mmTop = 265
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText269: TppDBText
        UserName = 'DBText243'
        DataField = 'PERIODO'
        DataPipeline = DbAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText270: TppDBText
        UserName = 'DBText244'
        DataField = 'FRMPAG'
        DataPipeline = DbAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 41010
        mmTop = 265
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText271: TppDBText
        UserName = 'DBText245'
        DataField = 'MONTO'
        DataPipeline = DbAportes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 54240
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText272: TppDBText
        UserName = 'DBText246'
        DataField = 'USES'
        DataPipeline = DbAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 110067
        mmTop = 0
        mmWidth = 40481
        BandType = 4
      end
      object ppDBText273: TppDBText
        UserName = 'DBText247'
        DataField = 'USUARIO'
        DataPipeline = DbAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 151342
        mmTop = 0
        mmWidth = 28575
        BandType = 4
      end
      object ppDBText274: TppDBText
        UserName = 'DBText241'
        DataField = 'HREG'
        DataPipeline = DbAportes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 180446
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'MONDEV'
        DataPipeline = DbAportes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 72496
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'MONTOT'
        DataPipeline = DbAportes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 91546
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
    end
    object ppFooterBand26: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand31: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 18521
      mmPrintPosition = 0
      object ppLabel646: TppLabel
        UserName = 'Label588'
        Caption = 'Total General  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 1852
        mmWidth = 22225
        BandType = 7
      end
      object ppDBCalc218: TppDBCalc
        UserName = 'DBCalc213'
        DataField = 'MONTO'
        DataPipeline = DbAportes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 1852
        mmWidth = 18521
        BandType = 7
      end
      object ppDBCalc219: TppDBCalc
        UserName = 'DBCalc214'
        DataField = 'ASOCODMOD'
        DataPipeline = DbAportes
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 120386
        mmTop = 1852
        mmWidth = 21696
        BandType = 7
      end
      object ppLabel647: TppLabel
        UserName = 'Label589'
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 144463
        mmTop = 1852
        mmWidth = 13229
        BandType = 7
      end
      object ppLine158: TppLine
        UserName = 'Line147'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 529
        mmWidth = 201877
        BandType = 7
      end
      object ppLine159: TppLine
        UserName = 'Line148'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 7938
        mmWidth = 201877
        BandType = 7
      end
      object lblUsuario: TppLabel
        UserName = 'lblUsuario'
        AutoSize = False
        Caption = 'Emitido Por  :   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 10583
        mmWidth = 57944
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'MONDEV'
        DataPipeline = DbAportes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 70115
        mmTop = 1852
        mmWidth = 18521
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'MONTOT'
        DataPipeline = DbAportes
        DisplayFormat = '###,###,##0.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbAportes'
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 1852
        mmWidth = 18521
        BandType = 7
      end
    end
    object ppGroup40: TppGroup
      BreakName = 'TRANSANO'
      DataPipeline = DbAportes
      OutlineSettings.CreateNode = True
      UserName = 'Group38'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbAportes'
      object ppGroupHeaderBand40: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 20108
        mmPrintPosition = 0
        object ppDBText275: TppDBText
          UserName = 'DBText248'
          DataField = 'TRANSANO'
          DataPipeline = DbAportes
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Roman 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'DbAportes'
          mmHeight = 3704
          mmLeft = 10054
          mmTop = 1588
          mmWidth = 10848
          BandType = 3
          GroupNo = 0
        end
        object ppLabel648: TppLabel
          UserName = 'Label578'
          Caption = 'Fecha De'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 265
          mmTop = 10054
          mmWidth = 11853
          BandType = 3
          GroupNo = 0
        end
        object ppLabel649: TppLabel
          UserName = 'Label579'
          Caption = 'Operaci'#243'n'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 265
          mmTop = 14552
          mmWidth = 13335
          BandType = 3
          GroupNo = 0
        end
        object ppLabel650: TppLabel
          UserName = 'Label580'
          Caption = 'Periodo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 19844
          mmTop = 14552
          mmWidth = 12965
          BandType = 3
          GroupNo = 0
        end
        object ppLabel651: TppLabel
          UserName = 'Label581'
          Caption = 'Forma'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 39688
          mmTop = 10054
          mmWidth = 7408
          BandType = 3
          GroupNo = 0
        end
        object ppLabel652: TppLabel
          UserName = 'Label582'
          Caption = 'Aporte'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3598
          mmLeft = 60716
          mmTop = 13758
          mmWidth = 9398
          BandType = 3
          GroupNo = 0
        end
        object ppLabel653: TppLabel
          UserName = 'Label583'
          Caption = 'De Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 39688
          mmTop = 14288
          mmWidth = 10319
          BandType = 3
          GroupNo = 0
        end
        object ppLabel654: TppLabel
          UserName = 'Label584'
          Caption = 'Uses/Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 109802
          mmTop = 14023
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLabel655: TppLabel
          UserName = 'Label585'
          Caption = 'Usuario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 151342
          mmTop = 13494
          mmWidth = 13229
          BandType = 3
          GroupNo = 0
        end
        object ppLine160: TppLine
          UserName = 'Line136'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 18521
          mmWidth = 201877
          BandType = 3
          GroupNo = 0
        end
        object ppLine161: TppLine
          UserName = 'Line142'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 7673
          mmWidth = 201877
          BandType = 3
          GroupNo = 0
        end
        object ppLabel656: TppLabel
          UserName = 'Label627'
          AutoSize = False
          Caption = 'A'#209'O : '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 0
          mmTop = 1588
          mmWidth = 9525
          BandType = 3
          GroupNo = 0
        end
        object ppLabel657: TppLabel
          UserName = 'Label577'
          Caption = 'Fecha y Hora '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 180711
          mmTop = 13758
          mmWidth = 19315
          BandType = 3
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Devol.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3598
          mmLeft = 79354
          mmTop = 13758
          mmWidth = 9017
          BandType = 3
          GroupNo = 0
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3598
          mmLeft = 100277
          mmTop = 13758
          mmWidth = 7070
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand40: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppDBCalc220: TppDBCalc
          UserName = 'DBCalc211'
          DataField = 'MONTO'
          DataPipeline = DbAportes
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup40
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbAportes'
          mmHeight = 4233
          mmLeft = 51329
          mmTop = 1323
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc221: TppDBCalc
          UserName = 'DBCalc212'
          DataField = 'ASOCODMOD'
          DataPipeline = DbAportes
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup40
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'DbAportes'
          mmHeight = 4233
          mmLeft = 120650
          mmTop = 1588
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
        object ppLabel658: TppLabel
          UserName = 'Label586'
          Caption = 'Registros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 144727
          mmTop = 1588
          mmWidth = 13229
          BandType = 5
          GroupNo = 0
        end
        object ppLabel659: TppLabel
          UserName = 'Label587'
          Caption = 'Sub-Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 30956
          mmTop = 1323
          mmWidth = 15081
          BandType = 5
          GroupNo = 0
        end
        object ppLine162: TppLine
          UserName = 'Line145'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 265
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
        end
        object ppLine163: TppLine
          UserName = 'Line146'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 6615
          mmWidth = 201877
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataField = 'MONDEV'
          DataPipeline = DbAportes
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup40
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbAportes'
          mmHeight = 4233
          mmLeft = 70644
          mmTop = 1323
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'MONTOT'
          DataPipeline = DbAportes
          DisplayFormat = '###,###,##0.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 17cpi'
          Font.Size = 9
          Font.Style = [fsBold]
          ResetGroup = ppGroup40
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbAportes'
          mmHeight = 4233
          mmLeft = 89959
          mmTop = 1323
          mmWidth = 18521
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object DbAportes: TppDBPipeline
    DataSource = DM1.dsReclamoDCre
    UserName = 'DbAportes'
    Left = 368
    Top = 152
  end
  object ppdb2: TppDBPipeline
    UserName = 'db2'
    Left = 312
    Top = 480
  end
  object ppr2: TppReport
    AutoStop = False
    DataPipeline = ppdb2
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 20000
    PrinterSetup.mmMarginLeft = 20000
    PrinterSetup.mmMarginRight = 20000
    PrinterSetup.mmMarginTop = 30000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\SolExes\ApoDebe.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 352
    Top = 480
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb2'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 1058
        mmTop = 529
        mmWidth = 42069
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'Deuda de Aporte de Asociado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4657
        mmLeft = 56732
        mmTop = 5027
        mmWidth = 55076
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 529
        mmWidth = 17463
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 5027
        mmWidth = 21431
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 147902
        mmTop = 9525
        mmWidth = 13758
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 529
        mmTop = 20373
        mmWidth = 168540
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 529
        mmTop = 28840
        mmWidth = 168540
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Periodo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 6350
        mmTop = 22754
        mmWidth = 12065
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Pactado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 87842
        mmTop = 22754
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Pagado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 110596
        mmTop = 22754
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Por Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 133879
        mmTop = 22754
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Asociado :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 1852
        mmTop = 14552
        mmWidth = 16383
        BandType = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        AutoSize = True
        DataField = 'ASOAPENOM'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3969
        mmLeft = 23548
        mmTop = 14552
        mmWidth = 19579
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        AutoSize = True
        DataField = 'APOANO'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 4022
        mmLeft = 3969
        mmTop = 794
        mmWidth = 7789
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        AutoSize = True
        DataField = 'APOMES'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 4022
        mmLeft = 14817
        mmTop = 794
        mmWidth = 3895
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        AutoSize = True
        DataField = 'MESDESL'
        DataPipeline = ppdb2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 4022
        mmLeft = 30163
        mmTop = 794
        mmWidth = 19473
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'APOVALOR'
        DataPipeline = ppdb2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3969
        mmLeft = 84931
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'TRANSMTO'
        DataPipeline = ppdb2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3969
        mmLeft = 107156
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'PORPAGAR'
        DataPipeline = ppdb2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3969
        mmLeft = 131763
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'PORPAGAR'
        DataPipeline = ppdb2
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppdb2'
        mmHeight = 3969
        mmLeft = 131763
        mmTop = 3704
        mmWidth = 17198
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 529
        mmTop = 1058
        mmWidth = 168540
        BandType = 7
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Por Pagar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4022
        mmLeft = 96309
        mmTop = 2910
        mmWidth = 15790
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppd2: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppr2
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 392
    Top = 480
  end
end
