object fRepDet: TfRepDet
  Left = 225
  Top = 207
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Reportes (Detalles)'
  ClientHeight = 113
  ClientWidth = 509
  Color = 13165023
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
  object grbRepfPago: TGroupBox
    Left = 4
    Top = 0
    Width = 501
    Height = 111
    Color = 13165023
    ParentColor = False
    TabOrder = 0
    object Label2: TLabel
      Left = 12
      Top = 16
      Width = 75
      Height = 13
      Caption = 'Fecha De Inicio'
    end
    object Label1: TLabel
      Left = 129
      Top = 16
      Width = 64
      Height = 13
      Caption = 'Fecha De Fin'
    end
    object LblUsuarios: TLabel
      Left = 12
      Top = 58
      Width = 41
      Height = 13
      Caption = 'Usuarios'
      Visible = False
    end
    object DtpFecIni: TDateTimePicker
      Left = 12
      Top = 30
      Width = 109
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DtpFecFin: TDateTimePicker
      Left = 127
      Top = 30
      Width = 109
      Height = 24
      CalColors.TextColor = clBtnText
      Date = 37814.561222696760000000
      Time = 37814.561222696760000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object BitPrint: TBitBtn
      Left = 408
      Top = 30
      Width = 85
      Height = 27
      Hint = 'Imprimir'
      Caption = 'Imprimir'
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
    object BitSalir: TBitBtn
      Left = 409
      Top = 65
      Width = 85
      Height = 27
      Caption = '&Salir'
      TabOrder = 3
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
      Top = 71
      Width = 130
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'USUARIO_AUD'#9'15'#9'Usuarios'#9'F')
      LookupTable = DM1.cdsCtasBco
      LookupField = 'USUARIO_AUD'
      Options = [loColLines, loRowLines]
      Color = 12975869
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLUsuariosChange
    end
    object Panel1: TPanel
      Left = 140
      Top = 70
      Width = 262
      Height = 26
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 5
      object EdtUser: TEdit
        Left = 3
        Top = 1
        Width = 257
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Color = 12975869
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object RepUser: TppReport
    AutoStop = False
    DataPipeline = DbRepUser
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta 210 x 279 mm'
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
    Top = 56
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepUser'
    object ppHeaderBand32: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31750
      mmPrintPosition = 0
      object Titulo: TppLabel
        UserName = 'lblTitulo2'
        AutoSize = False
        Caption = 
          'ACTUALIZACIONES REALIZADAS AL MAESTRO DE ASOCIADOS DEL XX/XX/XXX' +
          'X AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 1058
        mmTop = 14817
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel681: TppLabel
        UserName = 'Label681'
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
      object ppLabel683: TppLabel
        UserName = 'Label5702'
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
      object ppLabel684: TppLabel
        UserName = 'Label684'
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
      object ppLabel685: TppLabel
        UserName = 'Label685'
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
      object ppSystemVariable65: TppSystemVariable
        UserName = 'SystemVariable65'
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
      object ppSystemVariable66: TppSystemVariable
        UserName = 'SystemVariable66'
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
      object ppSystemVariable67: TppSystemVariable
        UserName = 'SystemVariable67'
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
      object ppLabel686: TppLabel
        UserName = 'Label686'
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
      object ppLabel687: TppLabel
        UserName = 'Label687'
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
      object ppLabel688: TppLabel
        UserName = 'Label688'
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
      object ppLine169: TppLine
        UserName = 'Line169'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 30956
        mmWidth = 202936
        BandType = 0
      end
      object ppLabel677: TppLabel
        UserName = 'Label677'
        AutoSize = False
        Caption = 'Usuario '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 4498
        mmTop = 21960
        mmWidth = 28575
        BandType = 0
      end
      object ppDBText276: TppDBText
        UserName = 'DBText276'
        DataField = 'USUARIO_AUD'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3704
        mmLeft = 4498
        mmTop = 26458
        mmWidth = 44450
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
        mmHeight = 3704
        mmLeft = 0
        mmTop = 4498
        mmWidth = 52451
        BandType = 0
      end
    end
    object ppDetailBand34: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText278: TppDBText
        UserName = 'DBText278'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 73819
        mmTop = 0
        mmWidth = 55827
        BandType = 4
      end
      object ppDBText280: TppDBText
        UserName = 'DBText280'
        DataField = 'ASOCODPAGO'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 46831
        mmTop = 0
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText281: TppDBText
        UserName = 'DBText281'
        DataField = 'ASODNI'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3260
        mmLeft = 130175
        mmTop = 0
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText282: TppDBText
        UserName = 'DBText282'
        DataField = 'ASOTIPID'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 144198
        mmTop = 0
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText287: TppDBText
        UserName = 'DBText287'
        DataField = 'USEID'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText288: TppDBText
        UserName = 'DBText288'
        DataField = 'UPAGOID'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3260
        mmLeft = 9525
        mmTop = 0
        mmWidth = 4233
        BandType = 4
      end
      object ppDBText289: TppDBText
        UserName = 'DBText289'
        DataField = 'UPROID'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3260
        mmLeft = 19050
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText285: TppDBText
        UserName = 'DBText285'
        DataField = 'REGISTRO_AUD'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 2879
        mmLeft = 161132
        mmTop = 0
        mmWidth = 28840
        BandType = 4
      end
      object ppDBText286: TppDBText
        UserName = 'DBText286'
        DataField = 'SECUENCIA'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 193411
        mmTop = 0
        mmWidth = 3704
        BandType = 4
      end
      object ppDBText291: TppDBText
        UserName = 'DBText291'
        DataField = 'REGPENABR'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 150019
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText279: TppDBText
        UserName = 'DBText2801'
        DataField = 'ASOCODMOD'
        DataPipeline = DbRepUser
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3175
        mmLeft = 29104
        mmTop = 0
        mmWidth = 16404
        BandType = 4
      end
    end
    object ppFooterBand27: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand32: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 13494
      mmPrintPosition = 0
      object ppLabel679: TppLabel
        UserName = 'Label679'
        AutoSize = False
        Caption = 'Total General                :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 95779
        mmTop = 1852
        mmWidth = 32808
        BandType = 7
      end
      object ppDBCalc223: TppDBCalc
        UserName = 'DBCalc223'
        DataField = 'REG'
        DataPipeline = DbRepUser
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'DbRepUser'
        mmHeight = 3440
        mmLeft = 132027
        mmTop = 1852
        mmWidth = 21696
        BandType = 7
      end
      object ppLine167: TppLine
        UserName = 'Line167'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 265
        mmWidth = 202936
        BandType = 7
      end
      object ppLine168: TppLine
        UserName = 'Line168'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 10848
        mmWidth = 202936
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 132027
        mmTop = 6085
        mmWidth = 11113
        BandType = 7
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'Cantidad de asociados :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 95779
        mmTop = 6085
        mmWidth = 32808
        BandType = 7
      end
    end
    object ppGroup41: TppGroup
      BreakName = 'FECHA'
      DataPipeline = DbRepUser
      OutlineSettings.CreateNode = True
      UserName = 'Group41'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepUser'
      object ppGroupHeaderBand41: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppDBText277: TppDBText
          UserName = 'DBText277'
          DataField = 'FECHA'
          DataPipeline = DbRepUser
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3704
          mmLeft = 4763
          mmTop = 5556
          mmWidth = 19050
          BandType = 3
          GroupNo = 0
        end
        object ppLabel676: TppLabel
          UserName = 'Label676'
          AutoSize = False
          Caption = 'Fecha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = [fsUnderline]
          Transparent = True
          mmHeight = 3969
          mmLeft = 4498
          mmTop = 794
          mmWidth = 10054
          BandType = 3
          GroupNo = 0
        end
        object ppLabel673: TppLabel
          UserName = 'Label673'
          AutoSize = False
          Caption = 'Secuencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 145257
          mmTop = 5292
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppLabel674: TppLabel
          UserName = 'Label674'
          AutoSize = False
          Caption = '0 : Antes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 162454
          mmTop = 5292
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppLabel675: TppLabel
          UserName = 'Label675'
          AutoSize = False
          Caption = '1 : Despues'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 178859
          mmTop = 5292
          mmWidth = 17727
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand41: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppDBCalc222: TppDBCalc
          UserName = 'DBCalc222'
          DataField = 'REG'
          DataPipeline = DbRepUser
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup41
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'DbRepUser'
          mmHeight = 3440
          mmLeft = 132027
          mmTop = 2381
          mmWidth = 21696
          BandType = 5
          GroupNo = 0
        end
        object ppLabel678: TppLabel
          UserName = 'Label678'
          AutoSize = False
          Caption = 'Total Actualizaciones  :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 95779
          mmTop = 2381
          mmWidth = 32808
          BandType = 5
          GroupNo = 0
        end
        object ppLine166: TppLine
          UserName = 'Line166'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 265
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 7144
          mmWidth = 202936
          BandType = 5
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          OnPrint = ppLabel22Print
          UserName = 'Label22'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          Visible = False
          mmHeight = 3440
          mmLeft = 168805
          mmTop = 2381
          mmWidth = 11113
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup42: TppGroup
      BreakName = 'USUARIO_AUD'
      DataPipeline = DbRepUser
      OutlineSettings.CreateNode = True
      UserName = 'Group42'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'DbRepUser'
      object ppGroupHeaderBand42: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10583
        mmPrintPosition = 0
        object ppLabel660: TppLabel
          UserName = 'Label660'
          AutoSize = False
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3440
          mmLeft = 0
          mmTop = 5292
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLabel661: TppLabel
          UserName = 'Label6601'
          AutoSize = False
          Caption = 'U.Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 6879
          mmTop = 5292
          mmWidth = 11113
          BandType = 3
          GroupNo = 1
        end
        object ppLabel662: TppLabel
          UserName = 'Label662'
          AutoSize = False
          Caption = 'U.Proc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 18256
          mmTop = 5292
          mmWidth = 9260
          BandType = 3
          GroupNo = 1
        end
        object ppLabel663: TppLabel
          UserName = 'Label663'
          AutoSize = False
          Caption = 'Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 29104
          mmTop = 5556
          mmWidth = 11906
          BandType = 3
          GroupNo = 1
        end
        object ppLabel664: TppLabel
          UserName = 'Label664'
          AutoSize = False
          Caption = 'Codigo Pago'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 46567
          mmTop = 5556
          mmWidth = 16669
          BandType = 3
          GroupNo = 1
        end
        object ppLabel665: TppLabel
          UserName = 'Label665'
          AutoSize = False
          Caption = 'Apellidos y Nombres (D.N.I.)'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 74083
          mmTop = 5556
          mmWidth = 37571
          BandType = 3
          GroupNo = 1
        end
        object ppLabel666: TppLabel
          UserName = 'Label666'
          AutoSize = False
          Caption = 'D.N.I.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 130440
          mmTop = 5556
          mmWidth = 9260
          BandType = 3
          GroupNo = 1
        end
        object ppLabel667: TppLabel
          UserName = 'Label667'
          AutoSize = False
          Caption = 'Aso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 143404
          mmTop = 5556
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLabel668: TppLabel
          UserName = 'Label668'
          AutoSize = False
          Caption = 'Tip'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 143404
          mmTop = 1588
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLabel669: TppLabel
          UserName = 'Label669'
          AutoSize = False
          Caption = 'Reg'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 150548
          mmTop = 1588
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLabel670: TppLabel
          UserName = 'Label670'
          AutoSize = False
          Caption = 'Pen'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 150548
          mmTop = 5556
          mmWidth = 6350
          BandType = 3
          GroupNo = 1
        end
        object ppLabel671: TppLabel
          UserName = 'Label6701'
          AutoSize = False
          Caption = 'Fecha y Hora'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 161396
          mmTop = 5556
          mmWidth = 24606
          BandType = 3
          GroupNo = 1
        end
        object ppLabel672: TppLabel
          UserName = 'Label672'
          AutoSize = False
          Caption = 'Secuencia'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 188119
          mmTop = 5556
          mmWidth = 14023
          BandType = 3
          GroupNo = 1
        end
        object ppLine164: TppLine
          UserName = 'Line164'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 794
          mmWidth = 202936
          BandType = 3
          GroupNo = 1
        end
        object ppLine165: TppLine
          UserName = 'Line165'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 0
          mmTop = 9525
          mmWidth = 202936
          BandType = 3
          GroupNo = 1
        end
        object ppLabel689: TppLabel
          UserName = 'Label689'
          AutoSize = False
          Caption = 'Codigo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 12cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 29104
          mmTop = 1323
          mmWidth = 11113
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand42: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
  end
  object DbRepUser: TppDBPipeline
    DataSource = DM1.dsSolicitud
    UserName = 'DbRepUser'
    Left = 264
    Top = 16
  end
  object DbRepCta: TppDBPipeline
    DataSource = DM1.dsCreditos
    UserName = 'DbRepCta'
    Left = 300
    Top = 16
  end
  object RepCta: TppReport
    AutoStop = False
    DataPipeline = DbRepCta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta 210 x 279 mm'
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
    Left = 304
    Top = 56
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepCta'
    object ppHeaderBand20: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 41010
      mmPrintPosition = 0
      object ppLabel405: TppLabel
        UserName = 'Label405'
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
      object ppLabel407: TppLabel
        UserName = 'Label407'
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
      object ppLabel408: TppLabel
        UserName = 'Label408'
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
      object ppLabel409: TppLabel
        UserName = 'Label409'
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
      object ppSystemVariable32: TppSystemVariable
        UserName = 'SystemVariable32'
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
      object ppSystemVariable33: TppSystemVariable
        UserName = 'SystemVariable301'
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
      object ppSystemVariable34: TppSystemVariable
        UserName = 'SystemVariable34'
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
      object ppLabel410: TppLabel
        UserName = 'Label410'
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
      object ppLabel411: TppLabel
        UserName = 'Label4001'
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
      object ppLabel412: TppLabel
        UserName = 'Label412'
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
      object ppLine108: TppLine
        UserName = 'Line108'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 6350
        mmTop = 31485
        mmWidth = 164836
        BandType = 0
      end
      object ppLabel416: TppLabel
        UserName = 'Label416'
        Caption = 'Cuenta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 10054
        mmTop = 32808
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel417: TppLabel
        UserName = 'Label417'
        Caption = 'De Ahorros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10054
        mmTop = 36777
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel418: TppLabel
        UserName = 'Label418'
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 29104
        mmTop = 35983
        mmWidth = 32279
        BandType = 0
      end
      object ppLabel424: TppLabel
        UserName = 'Label424'
        Caption = 'Situaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 109009
        mmTop = 36513
        mmWidth = 13229
        BandType = 0
      end
      object TitCta: TppLabel
        UserName = 'TitCta'
        AutoSize = False
        Caption = 
          'ACTUALIZACIONES REALIZADAS AL MAESTRO DE ASOCIADOS DEL XX/XX/XXX' +
          'X AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 1058
        mmTop = 14817
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha y Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 127265
        mmTop = 36248
        mmWidth = 25400
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 6350
        mmTop = 40481
        mmWidth = 164836
        BandType = 0
      end
      object lblUser: TppLabel
        UserName = 'lblUser'
        AutoSize = False
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 6085
        mmTop = 25665
        mmWidth = 69321
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Usuario '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 20902
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Sistema De Mantenimiento De Asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 0
        mmTop = 4498
        mmWidth = 52451
        BandType = 0
      end
    end
    object ppDetailBand22: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText188: TppDBText
        UserName = 'DBText188'
        DataField = 'ASOAPENOM'
        DataPipeline = DbRepCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCta'
        mmHeight = 3704
        mmLeft = 29369
        mmTop = 0
        mmWidth = 82021
        BandType = 4
      end
      object ppDBText187: TppDBText
        UserName = 'DBText187'
        DataField = 'ASONCTA'
        DataPipeline = DbRepCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCta'
        mmHeight = 3704
        mmLeft = 10054
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText189: TppDBText
        UserName = 'DBText189'
        DataField = 'SITCTA'
        DataPipeline = DbRepCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCta'
        mmHeight = 3704
        mmLeft = 112448
        mmTop = 0
        mmWidth = 5821
        BandType = 4
      end
      object ppDBText190: TppDBText
        UserName = 'DBText190'
        DataField = 'HREG'
        DataPipeline = DbRepCta
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepCta'
        mmHeight = 3704
        mmLeft = 126736
        mmTop = 0
        mmWidth = 40217
        BandType = 4
      end
    end
    object ppFooterBand15: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand20: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel403: TppLabel
        UserName = 'Label403'
        Caption = 'Total Cuentas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42069
        mmTop = 2117
        mmWidth = 19579
        BandType = 7
      end
      object ppLabel414: TppLabel
        UserName = 'Label414'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 67469
        mmTop = 2117
        mmWidth = 2910
        BandType = 7
      end
      object ppLabel415: TppLabel
        UserName = 'Label415'
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 105569
        mmTop = 1852
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc173: TppDBCalc
        UserName = 'DBCalc173'
        DataField = 'ASONCTA'
        DataPipeline = DbRepCta
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbRepCta'
        mmHeight = 4233
        mmLeft = 93398
        mmTop = 1852
        mmWidth = 10848
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 6350
        mmTop = 6879
        mmWidth = 164836
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 6350
        mmTop = 529
        mmWidth = 164836
        BandType = 7
      end
    end
  end
  object DbRepRes: TppDBPipeline
    DataSource = DM1.dsCuotas
    UserName = 'DbRepRes'
    Left = 340
    Top = 16
  end
  object RepRes: TppReport
    AutoStop = False
    DataPipeline = DbRepRes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta 210 x 279 mm'
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
    Left = 344
    Top = 56
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'DbRepRes'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 41010
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label405'
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
      object ppLabel5: TppLabel
        UserName = 'Label407'
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
      object ppLabel6: TppLabel
        UserName = 'Label408'
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
      object ppLabel7: TppLabel
        UserName = 'Label409'
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
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable32'
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
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable301'
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
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable34'
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
      object ppLabel8: TppLabel
        UserName = 'Label410'
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
      object ppLabel9: TppLabel
        UserName = 'Label4001'
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
      object ppLabel10: TppLabel
        UserName = 'Label412'
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
      object ppLine5: TppLine
        UserName = 'Line108'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 31485
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label416'
        Caption = 'Codigo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 32808
        mmWidth = 8932
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label417'
        Caption = 'Modular '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 36777
        mmWidth = 10964
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label418'
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 21167
        mmTop = 35983
        mmWidth = 32279
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label424'
        Caption = 'Resoluci'#243'n De '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 96309
        mmTop = 36513
        mmWidth = 19219
        BandType = 0
      end
      object TitRes: TppLabel
        UserName = 'TitCta'
        AutoSize = False
        Caption = 
          'ACTUALIZACIONES REALIZADAS AL MAESTRO DE ASOCIADOS DEL XX/XX/XXX' +
          'X AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4191
        mmLeft = 1058
        mmTop = 14817
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha y Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 159544
        mmTop = 36513
        mmWidth = 25400
        BandType = 0
      end
      object lblUsrRes: TppLabel
        UserName = 'lblUser'
        AutoSize = False
        Caption = 'Apellidos y Nombres'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 9
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 6085
        mmTop = 25665
        mmWidth = 69321
        BandType = 0
      end
      object TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Usuario '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 8
        Font.Style = [fsUnderline]
        Transparent = True
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 20902
        mmWidth = 28575
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Numero'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 124090
        mmTop = 36513
        mmWidth = 10075
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 142082
        mmTop = 36513
        mmWidth = 8731
        BandType = 0
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 40481
        mmWidth = 198702
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Sistema De Mantenimiento De Asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 0
        mmTop = 4498
        mmWidth = 52451
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText188'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = DbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepRes'
        mmHeight = 2879
        mmLeft = 21167
        mmTop = 529
        mmWidth = 73554
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText187'
        DataField = 'ASOCODMOD'
        DataPipeline = DbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepRes'
        mmHeight = 3704
        mmLeft = 1058
        mmTop = 0
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText189'
        DataField = 'TIPRESABRE'
        DataPipeline = DbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepRes'
        mmHeight = 3704
        mmLeft = 96044
        mmTop = 0
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText190'
        DataField = 'ASONRES'
        DataPipeline = DbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepRes'
        mmHeight = 3704
        mmLeft = 123825
        mmTop = 0
        mmWidth = 16933
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText1901'
        DataField = 'ASOFRES'
        DataPipeline = DbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepRes'
        mmHeight = 3704
        mmLeft = 141817
        mmTop = 0
        mmWidth = 16669
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText1902'
        DataField = 'HREG'
        DataPipeline = DbRepRes
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DbRepRes'
        mmHeight = 2879
        mmLeft = 159279
        mmTop = 529
        mmWidth = 37042
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
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel19: TppLabel
        UserName = 'Label403'
        Caption = 'Total Resoluciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 41275
        mmTop = 2117
        mmWidth = 24130
        BandType = 7
      end
      object ppLabel20: TppLabel
        UserName = 'Label414'
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 67469
        mmTop = 2117
        mmWidth = 2910
        BandType = 7
      end
      object ppLabel21: TppLabel
        UserName = 'Label415'
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 105569
        mmTop = 1852
        mmWidth = 15346
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc173'
        DataField = 'ASOCODMOD'
        DataPipeline = DbRepRes
        DisplayFormat = '###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'DbRepRes'
        mmHeight = 4233
        mmLeft = 93398
        mmTop = 1852
        mmWidth = 10848
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 529
        mmWidth = 198702
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 6615
        mmWidth = 198702
        BandType = 7
      end
    end
  end
end
