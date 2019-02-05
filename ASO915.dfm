object fRepBolDep: TfRepBolDep
  Left = 332
  Top = 235
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Reportes Por Depositos en Banco'
  ClientHeight = 290
  ClientWidth = 362
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grbRepfPago: TGroupBox
    Left = 13
    Top = 4
    Width = 339
    Height = 277
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
      Left = 137
      Top = 16
      Width = 64
      Height = 13
      Caption = 'Fecha De Fin'
    end
    object LblUsuarios: TLabel
      Left = 22
      Top = 72
      Width = 41
      Height = 13
      Caption = 'Usuarios'
      Visible = False
    end
    object Bevel1: TBevel
      Left = 8
      Top = 60
      Width = 321
      Height = 5
    end
    object Bevel2: TBevel
      Left = 8
      Top = 124
      Width = 321
      Height = 5
    end
    object Bevel3: TBevel
      Left = 8
      Top = 180
      Width = 321
      Height = 5
    end
    object Bevel4: TBevel
      Left = 8
      Top = 233
      Width = 321
      Height = 5
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
      Left = 135
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
      Left = 191
      Top = 80
      Width = 133
      Height = 25
      Hint = 'Imprimir'
      Caption = 'Imprimir por Usuario'
      TabOrder = 3
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
      Left = 239
      Top = 244
      Width = 79
      Height = 27
      Caption = '&Salir'
      TabOrder = 4
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
      Left = 20
      Top = 85
      Width = 131
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'USERID'#9'15'#9'Usuarios'#9'F')
      LookupTable = DM1.cdsCtasBco
      LookupField = 'USERID'
      Options = [loColLines, loRowLines]
      Color = 12975869
      ParentFont = False
      TabOrder = 2
      Visible = False
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object bbtnBanco: TBitBtn
      Left = 191
      Top = 141
      Width = 133
      Height = 25
      Hint = 'Imprimir'
      Caption = 'Imprimir por Banco'
      TabOrder = 5
      OnClick = bbtnBancoClick
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
    object bbtnDevol: TBitBtn
      Left = 191
      Top = 197
      Width = 133
      Height = 25
      Hint = 'Imprimir'
      Caption = 'Imprimir Anulados'
      TabOrder = 6
      OnClick = bbtnDevolClick
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
  object ppDBRefPago: TppDBPipeline
    DataSource = DM1.dsFPago
    UserName = 'DBRefPago'
    Left = 316
    Top = 24
  end
  object ppRepfPago: TppReport
    AutoStop = False
    DataPipeline = ppDBRefPago
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\REPDEP.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 169
    Top = 80
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRefPago'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25135
      mmPrintPosition = 0
      object ppLabel11: TppLabel
        UserName = 'Label11'
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
      object ppLabel12: TppLabel
        UserName = 'Label101'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171186
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label102'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171186
        mmTop = 4498
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label103'
        Caption = 'Pag '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171450
        mmTop = 8996
        mmWidth = 5080
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 183357
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLblTitulo: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 
          'REGISTRO DE BOLETAS DE DEPOSITOS DE BANCOS DEL 01/06/2004 AL 30/' +
          '06/2004'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 14023
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 0
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 4498
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label202'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 9260
        mmWidth = 2646
        BandType = 0
      end
      object ppLblOFDes: TppLabel
        UserName = 'LblOFDes'
        AutoSize = False
        Caption = 'OFICINA DESCONCENTRADA: SEDE CENTRAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 19315
        mmWidth = 183092
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'USEID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 0
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 7408
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 23019
        mmTop = 0
        mmWidth = 42863
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'FREG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 88900
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 132027
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'CREDID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 67998
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'CREDOCPAG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 118269
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'CREAMORT'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 145521
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'CREINTERES'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 159015
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'CREFLAT'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 172509
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'CREMTOEXC'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 186002
        mmTop = 0
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        DataField = 'CREFPAG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 103452
        mmTop = 0
        mmWidth = 14552
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
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup1: TppGroup
      BreakName = 'USUARIO'
      DataPipeline = ppDBRefPago
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppLabel111: TppLabel
          UserName = 'Label111'
          Caption = 'Usuario'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 81227
          mmTop = 2910
          mmWidth = 11906
          BandType = 3
          GroupNo = 0
        end
        object ppDBText52: TppDBText
          UserName = 'DBText52'
          AutoSize = True
          DataField = 'USUARIO'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 97367
          mmTop = 2910
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 14817
        mmPrintPosition = 0
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 119856
          mmTop = 1323
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 265
          mmWidth = 197644
          BandType = 5
          GroupNo = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'Importe '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1323
          mmWidth = 13547
          BandType = 5
          GroupNo = 0
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'Movimientos '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 6085
          mmWidth = 20320
          BandType = 5
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line5'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 11642
          mmWidth = 197644
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CREDOCPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 119856
          mmTop = 6085
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
        object ppLabel16: TppLabel
          UserName = 'Label16'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112977
          mmTop = 1588
          mmWidth = 3440
          BandType = 5
          GroupNo = 0
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112977
          mmTop = 6085
          mmWidth = 3440
          BandType = 5
          GroupNo = 0
        end
        object ppLabel90: TppLabel
          UserName = 'Label90'
          Caption = 'TOTAL USUARIO :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 5027
          mmTop = 6085
          mmWidth = 30427
          BandType = 5
          GroupNo = 0
        end
        object ppDBText43: TppDBText
          UserName = 'DBText43'
          AutoSize = True
          DataField = 'USUARIO'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 37571
          mmTop = 6085
          mmWidth = 8467
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'BANCOID'
      DataPipeline = ppDBRefPago
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 10054
        mmPrintPosition = 0
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          DataField = 'BANCOID'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 16140
          mmTop = 2910
          mmWidth = 5821
          BandType = 3
          GroupNo = 1
        end
        object ppDBText9: TppDBText
          UserName = 'DBText9'
          DataField = 'BANCONOM'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 23548
          mmTop = 2910
          mmWidth = 48948
          BandType = 3
          GroupNo = 1
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          Caption = 'Banco :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 3440
          mmTop = 2910
          mmWidth = 11906
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 119592
          mmTop = 1852
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 794
          mmWidth = 197644
          BandType = 5
          GroupNo = 1
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'Importe '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1852
          mmWidth = 13547
          BandType = 5
          GroupNo = 1
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = 'Movimientos '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 6615
          mmWidth = 20320
          BandType = 5
          GroupNo = 1
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 11377
          mmWidth = 197644
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'CREDOCPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 119592
          mmTop = 6615
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112977
          mmTop = 1852
          mmWidth = 3440
          BandType = 5
          GroupNo = 1
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112977
          mmTop = 6615
          mmWidth = 3440
          BandType = 5
          GroupNo = 1
        end
        object ppDBText35: TppDBText
          UserName = 'DBText35'
          DataField = 'BANCOID'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 30956
          mmTop = 6615
          mmWidth = 5821
          BandType = 5
          GroupNo = 1
        end
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          DataField = 'BANCONOM'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 37571
          mmTop = 6615
          mmWidth = 48948
          BandType = 5
          GroupNo = 1
        end
        object ppLabel32: TppLabel
          UserName = 'Label18'
          Caption = 'Total Banco :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 8731
          mmTop = 6615
          mmWidth = 20638
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'CCBCOID'
      DataPipeline = ppDBRefPago
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7408
        mmPrintPosition = 0
        object ppDBText37: TppDBText
          UserName = 'DBText401'
          AutoSize = True
          DataField = 'CCBCOID'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 31221
          mmTop = 1588
          mmWidth = 18627
          BandType = 3
          GroupNo = 2
        end
        object ppLabel2: TppLabel
          UserName = 'Label901'
          Caption = 'Cuenta Corriente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 3440
          mmTop = 1588
          mmWidth = 26988
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 15081
        mmPrintPosition = 0
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 118798
          mmTop = 3969
          mmWidth = 26458
          BandType = 5
          GroupNo = 2
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 2910
          mmWidth = 197644
          BandType = 5
          GroupNo = 2
        end
        object ppLabel4: TppLabel
          UserName = 'Label3'
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 3969
          mmWidth = 11853
          BandType = 5
          GroupNo = 2
        end
        object ppLabel5: TppLabel
          UserName = 'Label4'
          Caption = 'Movimientos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 8731
          mmWidth = 18627
          BandType = 5
          GroupNo = 2
        end
        object ppLine4: TppLine
          UserName = 'Line3'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 13494
          mmWidth = 197644
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          DataField = 'CREDOCPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup3
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 118798
          mmTop = 8731
          mmWidth = 26458
          BandType = 5
          GroupNo = 2
        end
        object ppLabel6: TppLabel
          UserName = 'Label5'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112977
          mmTop = 3969
          mmWidth = 3440
          BandType = 5
          GroupNo = 2
        end
        object ppLabel24: TppLabel
          UserName = 'Label6'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112977
          mmTop = 8731
          mmWidth = 3440
          BandType = 5
          GroupNo = 2
        end
        object ppDBText42: TppDBText
          UserName = 'DBText42'
          AutoSize = True
          DataField = 'CCBCOID'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 56621
          mmTop = 8731
          mmWidth = 18627
          BandType = 5
          GroupNo = 2
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          Caption = 'Total Cuenta Corriente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 18256
          mmTop = 8731
          mmWidth = 35454
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'FILTRA'
      DataPipeline = ppDBRefPago
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group7'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 15081
        mmPrintPosition = 0
        object ppLabel67: TppLabel
          UserName = 'Label67'
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 2117
          mmTop = 8731
          mmWidth = 3704
          BandType = 3
          GroupNo = 3
        end
        object ppLabel80: TppLabel
          UserName = 'Label80'
          Caption = 'Cod.Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 6350
          mmTop = 8731
          mmWidth = 14023
          BandType = 3
          GroupNo = 3
        end
        object ppLabel81: TppLabel
          UserName = 'Label81'
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 22754
          mmTop = 8731
          mmWidth = 24077
          BandType = 3
          GroupNo = 3
        end
        object ppLabel82: TppLabel
          UserName = 'Label82'
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 134938
          mmTop = 8731
          mmWidth = 8996
          BandType = 3
          GroupNo = 3
        end
        object ppLabel83: TppLabel
          UserName = 'Label83'
          Caption = 'Fecha Doc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 103452
          mmTop = 8731
          mmWidth = 12700
          BandType = 3
          GroupNo = 3
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 1323
          mmTop = 13494
          mmWidth = 197644
          BandType = 3
          GroupNo = 3
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 1323
          mmTop = 7408
          mmWidth = 197644
          BandType = 3
          GroupNo = 3
        end
        object ppLabel88: TppLabel
          UserName = 'Label88'
          Caption = 'N'#176' Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 67733
          mmTop = 8731
          mmWidth = 12700
          BandType = 3
          GroupNo = 3
        end
        object ppLabel89: TppLabel
          UserName = 'Label89'
          Caption = 'N'#176' Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 118004
          mmTop = 8731
          mmWidth = 15346
          BandType = 3
          GroupNo = 3
        end
        object ppDBText40: TppDBText
          UserName = 'DBText40'
          AutoSize = True
          DataField = 'FILTRA'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 3440
          mmTop = 2117
          mmWidth = 93134
          BandType = 3
          GroupNo = 3
        end
        object ppLabel91: TppLabel
          UserName = 'Label91'
          Caption = 'Amortiz.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 147902
          mmTop = 8731
          mmWidth = 10054
          BandType = 3
          GroupNo = 3
        end
        object ppLabel92: TppLabel
          UserName = 'Label301'
          Caption = 'Inter'#233's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 161396
          mmTop = 8731
          mmWidth = 8996
          BandType = 3
          GroupNo = 3
        end
        object ppLabel93: TppLabel
          UserName = 'Label93'
          Caption = 'Gastos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 176213
          mmTop = 8731
          mmWidth = 7673
          BandType = 3
          GroupNo = 3
        end
        object ppLabel94: TppLabel
          UserName = 'Label94'
          Caption = 'Excesos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 189442
          mmTop = 8731
          mmWidth = 8996
          BandType = 3
          GroupNo = 3
        end
        object ppLabel3: TppLabel
          UserName = 'Label2'
          Caption = 'Fecha Reg.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 88900
          mmTop = 8467
          mmWidth = 12700
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 12965
        mmPrintPosition = 0
        object ppDBCalc15: TppDBCalc
          UserName = 'DBCalc15'
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 119327
          mmTop = 1852
          mmWidth = 26458
          BandType = 5
          GroupNo = 3
        end
        object ppLine21: TppLine
          UserName = 'Line21'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 1323
          mmTop = 529
          mmWidth = 197644
          BandType = 5
          GroupNo = 3
        end
        object ppLabel25: TppLabel
          UserName = 'Label8'
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 1852
          mmWidth = 11853
          BandType = 5
          GroupNo = 3
        end
        object ppLabel26: TppLabel
          UserName = 'Label10'
          Caption = 'Movimientos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 91281
          mmTop = 6350
          mmWidth = 18627
          BandType = 5
          GroupNo = 3
        end
        object ppLine22: TppLine
          UserName = 'Line22'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 1323
          mmTop = 11642
          mmWidth = 197644
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc16: TppDBCalc
          UserName = 'DBCalc16'
          DataField = 'CREDOCPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup7
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 119327
          mmTop = 6350
          mmWidth = 26458
          BandType = 5
          GroupNo = 3
        end
        object ppLabel30: TppLabel
          UserName = 'Label14'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112977
          mmTop = 2117
          mmWidth = 3440
          BandType = 5
          GroupNo = 3
        end
        object ppLabel31: TppLabel
          UserName = 'Label15'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112977
          mmTop = 6350
          mmWidth = 3440
          BandType = 5
          GroupNo = 3
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppd1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppRepfPago
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 276
    Top = 24
  end
  object pprBanco: TppReport
    AutoStop = False
    DataPipeline = ppDBRefPago
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\REPBCO.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 170
    Top = 140
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRefPago'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 25400
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'Label11'
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
      object ppLabel10: TppLabel
        UserName = 'Label101'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label13'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171186
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label102'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171186
        mmTop = 4498
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label103'
        Caption = 'Pag '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171450
        mmTop = 8996
        mmWidth = 5080
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 183357
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object pplTit1: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 
          'COBRANZA EFECTUADA DEL 01/06/2004 AL 30/06/2004-DEPOSITO EN BANC' +
          'OS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 14023
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label20'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 0
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label201'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 4498
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label202'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 9260
        mmWidth = 2646
        BandType = 0
      end
      object pplTit2: TppLabel
        UserName = 'LblOFDes'
        AutoSize = False
        Caption = 'OFICINA DESCONCENTRADA: SEDE CENTRAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 19315
        mmWidth = 183092
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText14: TppDBText
        UserName = 'DBText2'
        DataField = 'USEID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 2117
        mmTop = 0
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 7144
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 22754
        mmTop = 0
        mmWidth = 43921
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText5'
        DataField = 'CREFPAG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 103981
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 134938
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText7'
        DataField = 'CREDID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 66940
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText8'
        DataField = 'CREDOCPAG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 118534
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText10'
        DataField = 'CREAMORT'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 148167
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText11'
        DataField = 'CREINTERES'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 161132
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText12'
        DataField = 'CREFLAT'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 174096
        mmTop = 0
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText13'
        DataField = 'CREMTOEXC'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 187061
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        DataField = 'FREG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 89694
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 17463
      mmPrintPosition = 0
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 113771
        mmTop = 3704
        mmWidth = 26458
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 2117
        mmTop = 1852
        mmWidth = 196586
        BandType = 7
      end
      object ppLabel40: TppLabel
        UserName = 'Label7'
        Caption = 'Importe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 88371
        mmTop = 3704
        mmWidth = 11853
        BandType = 7
      end
      object ppLabel41: TppLabel
        UserName = 'Label9'
        Caption = 'Movimientos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 88371
        mmTop = 8467
        mmWidth = 18627
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 2117
        mmTop = 14288
        mmWidth = 196586
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CREDOCPAG'
        DataPipeline = ppDBRefPago
        DisplayFormat = '##,###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 113771
        mmTop = 8467
        mmWidth = 26458
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label16'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 3704
        mmWidth = 3440
        BandType = 7
      end
      object ppLabel43: TppLabel
        UserName = 'Label17'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 109802
        mmTop = 8467
        mmWidth = 3440
        BandType = 7
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        Caption = 'TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 19050
        mmTop = 8467
        mmWidth = 8467
        BandType = 7
      end
    end
    object ppGroup5: TppGroup
      BreakName = 'BANCOID'
      DataPipeline = ppDBRefPago
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppDBText25: TppDBText
          UserName = 'DBText1'
          DataField = 'BANCOID'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 16140
          mmTop = 2117
          mmWidth = 5821
          BandType = 3
          GroupNo = 1
        end
        object ppDBText26: TppDBText
          UserName = 'DBText9'
          DataField = 'BANCONOM'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 23548
          mmTop = 2117
          mmWidth = 48948
          BandType = 3
          GroupNo = 1
        end
        object ppLabel51: TppLabel
          UserName = 'Label23'
          Caption = 'Banco :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 3440
          mmTop = 2117
          mmWidth = 11906
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 15610
        mmPrintPosition = 0
        object ppDBCalc7: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 113771
          mmTop = 3175
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLine11: TppLine
          UserName = 'Line7'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2910
          mmTop = 1588
          mmWidth = 195263
          BandType = 5
          GroupNo = 1
        end
        object ppLabel56: TppLabel
          UserName = 'Label1'
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 88371
          mmTop = 3175
          mmWidth = 11853
          BandType = 5
          GroupNo = 1
        end
        object ppLabel57: TppLabel
          UserName = 'Label27'
          Caption = 'Movimientos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 88371
          mmTop = 7938
          mmWidth = 18627
          BandType = 5
          GroupNo = 1
        end
        object ppLine12: TppLine
          UserName = 'Line8'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 13494
          mmWidth = 196586
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc8: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'CREDOCPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 113771
          mmTop = 7938
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLabel58: TppLabel
          UserName = 'Label28'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 109802
          mmTop = 3175
          mmWidth = 3440
          BandType = 5
          GroupNo = 1
        end
        object ppLabel59: TppLabel
          UserName = 'Label29'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 109802
          mmTop = 7938
          mmWidth = 3440
          BandType = 5
          GroupNo = 1
        end
        object ppDBText46: TppDBText
          UserName = 'DBText46'
          DataField = 'BANCOID'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 27252
          mmTop = 7938
          mmWidth = 5027
          BandType = 5
          GroupNo = 0
        end
        object ppDBText47: TppDBText
          UserName = 'DBText47'
          DataField = 'BANCONOM'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 34660
          mmTop = 7938
          mmWidth = 48948
          BandType = 5
          GroupNo = 0
        end
        object ppLabel104: TppLabel
          UserName = 'Label15'
          Caption = 'Banco :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 14552
          mmTop = 7938
          mmWidth = 11906
          BandType = 5
          GroupNo = 0
        end
        object ppLabel107: TppLabel
          UserName = 'Label107'
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 19050
          mmTop = 3175
          mmWidth = 8467
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup6: TppGroup
      BreakName = 'CCBCOID'
      DataPipeline = ppDBRefPago
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppLabel95: TppLabel
          UserName = 'Label95'
          Caption = 'Cuenta Corriente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 8731
          mmTop = 2381
          mmWidth = 27093
          BandType = 3
          GroupNo = 1
        end
        object ppDBText44: TppDBText
          UserName = 'DBText44'
          AutoSize = True
          DataField = 'CCBCOID'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 37835
          mmTop = 2381
          mmWidth = 27093
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 15610
        mmPrintPosition = 0
        object ppDBCalc17: TppDBCalc
          UserName = 'DBCalc17'
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 113771
          mmTop = 3440
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLine23: TppLine
          UserName = 'Line23'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 1852
          mmWidth = 196586
          BandType = 5
          GroupNo = 1
        end
        object ppLabel96: TppLabel
          UserName = 'Label96'
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 88371
          mmTop = 3440
          mmWidth = 11853
          BandType = 5
          GroupNo = 1
        end
        object ppLabel97: TppLabel
          UserName = 'Label97'
          Caption = 'Movimientos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 88371
          mmTop = 8202
          mmWidth = 18627
          BandType = 5
          GroupNo = 1
        end
        object ppLine24: TppLine
          UserName = 'Line24'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 13758
          mmWidth = 196586
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          DataField = 'CREDOCPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup5
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 113771
          mmTop = 8202
          mmWidth = 26458
          BandType = 5
          GroupNo = 1
        end
        object ppLabel98: TppLabel
          UserName = 'Label98'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 109802
          mmTop = 3440
          mmWidth = 3440
          BandType = 5
          GroupNo = 1
        end
        object ppLabel99: TppLabel
          UserName = 'Label99'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 109802
          mmTop = 8202
          mmWidth = 3440
          BandType = 5
          GroupNo = 1
        end
        object ppLabel105: TppLabel
          UserName = 'Label105'
          Caption = 'Cuenta Corriente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 19844
          mmTop = 8202
          mmWidth = 26988
          BandType = 5
          GroupNo = 1
        end
        object ppDBText48: TppDBText
          UserName = 'DBText48'
          AutoSize = True
          DataField = 'CCBCOID'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 48948
          mmTop = 8202
          mmWidth = 27093
          BandType = 5
          GroupNo = 1
        end
        object ppLabel106: TppLabel
          UserName = 'Label106'
          Caption = 'TOTAL'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 25665
          mmTop = 3440
          mmWidth = 8467
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'FILTRA'
      DataPipeline = ppDBRefPago
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group8'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand8: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 18521
        mmPrintPosition = 0
        object ppDBText45: TppDBText
          UserName = 'DBText45'
          AutoSize = True
          DataField = 'FILTRA'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 15610
          mmTop = 3704
          mmWidth = 82973
          BandType = 3
          GroupNo = 2
        end
        object ppLabel44: TppLabel
          UserName = 'Label2'
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 2381
          mmTop = 11377
          mmWidth = 3704
          BandType = 3
          GroupNo = 2
        end
        object ppLabel45: TppLabel
          UserName = 'Label3'
          Caption = 'Cod.Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 6879
          mmTop = 11377
          mmWidth = 14023
          BandType = 3
          GroupNo = 2
        end
        object ppLabel46: TppLabel
          UserName = 'Label4'
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 23283
          mmTop = 11377
          mmWidth = 24077
          BandType = 3
          GroupNo = 2
        end
        object ppLabel47: TppLabel
          UserName = 'Label5'
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 136525
          mmTop = 11377
          mmWidth = 8996
          BandType = 3
          GroupNo = 2
        end
        object ppLabel48: TppLabel
          UserName = 'Label6'
          Caption = 'Fecha Doc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 104775
          mmTop = 11377
          mmWidth = 12700
          BandType = 3
          GroupNo = 2
        end
        object ppLine9: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 16669
          mmWidth = 196586
          BandType = 3
          GroupNo = 2
        end
        object ppLine10: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 10054
          mmWidth = 196586
          BandType = 3
          GroupNo = 2
        end
        object ppLabel49: TppLabel
          UserName = 'Label25'
          Caption = 'N'#176' Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 67469
          mmTop = 11377
          mmWidth = 12700
          BandType = 3
          GroupNo = 2
        end
        object ppLabel50: TppLabel
          UserName = 'Label26'
          Caption = 'N'#176' Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 118798
          mmTop = 11377
          mmWidth = 15346
          BandType = 3
          GroupNo = 2
        end
        object ppLabel52: TppLabel
          UserName = 'Label24'
          Caption = 'Amortiz.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 148961
          mmTop = 11377
          mmWidth = 10054
          BandType = 3
          GroupNo = 2
        end
        object ppLabel53: TppLabel
          UserName = 'Label30'
          Caption = 'Inter'#233's'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 162454
          mmTop = 11377
          mmWidth = 8996
          BandType = 3
          GroupNo = 2
        end
        object ppLabel54: TppLabel
          UserName = 'Label31'
          Caption = 'Gastos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 176477
          mmTop = 11377
          mmWidth = 7673
          BandType = 3
          GroupNo = 2
        end
        object ppLabel55: TppLabel
          UserName = 'Label32'
          Caption = 'Excesos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 187590
          mmTop = 11377
          mmWidth = 8996
          BandType = 3
          GroupNo = 2
        end
        object ppLabel109: TppLabel
          UserName = 'Label109'
          Caption = 'Fecha Reg.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 89694
          mmTop = 11377
          mmWidth = 12700
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 113771
          mmTop = 3175
          mmWidth = 26458
          BandType = 5
          GroupNo = 2
        end
        object ppLine25: TppLine
          UserName = 'Line25'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 1588
          mmWidth = 196586
          BandType = 5
          GroupNo = 2
        end
        object ppLabel100: TppLabel
          UserName = 'Label100'
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 88371
          mmTop = 3175
          mmWidth = 11853
          BandType = 5
          GroupNo = 2
        end
        object ppLabel101: TppLabel
          UserName = 'Label8'
          Caption = 'Movimientos'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 88371
          mmTop = 7938
          mmWidth = 18627
          BandType = 5
          GroupNo = 2
        end
        object ppLine26: TppLine
          UserName = 'Line26'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 2117
          mmTop = 13494
          mmWidth = 196586
          BandType = 5
          GroupNo = 2
        end
        object ppDBCalc20: TppDBCalc
          UserName = 'DBCalc20'
          DataField = 'CREDOCPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup8
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 113771
          mmTop = 7938
          mmWidth = 26458
          BandType = 5
          GroupNo = 2
        end
        object ppLabel102: TppLabel
          UserName = 'Label10'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 109802
          mmTop = 3175
          mmWidth = 3440
          BandType = 5
          GroupNo = 2
        end
        object ppLabel103: TppLabel
          UserName = 'Label14'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 109802
          mmTop = 7938
          mmWidth = 3440
          BandType = 5
          GroupNo = 2
        end
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object pprDev: TppReport
    AutoStop = False
    DataPipeline = ppDBRefPago
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\REPDEV.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 170
    Top = 200
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBRefPago'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppLabel34: TppLabel
        UserName = 'Label11'
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
      object ppLabel35: TppLabel
        UserName = 'Label101'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 4498
        mmWidth = 43656
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label13'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171186
        mmTop = 0
        mmWidth = 7938
        BandType = 0
      end
      object ppLabel60: TppLabel
        UserName = 'Label102'
        Caption = 'Hora '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171186
        mmTop = 4498
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel61: TppLabel
        UserName = 'Label103'
        Caption = 'Pag '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171450
        mmTop = 8996
        mmWidth = 5080
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183357
        mmTop = 265
        mmWidth = 16140
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 183092
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 183357
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object pplblTit1: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 
          'REGISTROS DE DEPOSITOS EN BANCO ANULADOS EN EL SISTEMA DEL 01/06' +
          '/2004 AL 30/06/2004-DEPOSITO EN BANCOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 14023
        mmWidth = 183092
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label20'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 0
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label201'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 4498
        mmWidth = 2646
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label202'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 179917
        mmTop = 9260
        mmWidth = 2646
        BandType = 0
      end
      object pplblTit3: TppLabel
        UserName = 'LblOFDes'
        AutoSize = False
        Caption = 'OFICINA DESCONCENTRADA: CHICLAYO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 10319
        mmTop = 19315
        mmWidth = 183092
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText27: TppDBText
        UserName = 'DBText2'
        DataField = 'USEID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 0
        mmWidth = 5027
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText3'
        DataField = 'ASOCODMOD'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 7673
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOAPENOM'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 23548
        mmTop = 0
        mmWidth = 51329
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText5'
        DataField = 'CREFPAG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 150548
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText6'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 181505
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText7'
        DataField = 'CREDID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 112713
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText8'
        DataField = 'CREDOCPAG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 165365
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText1'
        DataField = 'BANCOID'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 75406
        mmTop = 0
        mmWidth = 4498
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText9'
        DataField = 'BANCONOM'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 79904
        mmTop = 0
        mmWidth = 32544
        BandType = 4
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        DataField = 'FREG'
        DataPipeline = ppDBRefPago
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 135732
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 17463
      mmPrintPosition = 0
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'CREMTOCOB'
        DataPipeline = ppDBRefPago
        DisplayFormat = '###,###,###.#0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 2646
        mmWidth = 26458
        BandType = 7
      end
      object ppLine13: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 2381
        mmTop = 1058
        mmWidth = 195263
        BandType = 7
      end
      object ppLabel68: TppLabel
        UserName = 'Label7'
        Caption = 'Importe'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 2646
        mmWidth = 11853
        BandType = 7
      end
      object ppLabel69: TppLabel
        UserName = 'Label9'
        Caption = 'Movimientos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 133615
        mmTop = 7673
        mmWidth = 18627
        BandType = 7
      end
      object ppLine14: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 2381
        mmTop = 13229
        mmWidth = 195263
        BandType = 7
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'CREDOCPAG'
        DataPipeline = ppDBRefPago
        DisplayFormat = '##,###,###,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBRefPago'
        mmHeight = 4233
        mmLeft = 169069
        mmTop = 7673
        mmWidth = 26458
        BandType = 7
      end
      object ppLabel70: TppLabel
        UserName = 'Label16'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 160338
        mmTop = 2910
        mmWidth = 3440
        BandType = 7
      end
      object ppLabel71: TppLabel
        UserName = 'Label17'
        Caption = ' :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 160338
        mmTop = 7673
        mmWidth = 3440
        BandType = 7
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'USUARIO'
      DataPipeline = ppDBRefPago
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppDBRefPago'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 16140
        mmPrintPosition = 0
        object ppLabel72: TppLabel
          UserName = 'Label2'
          Caption = 'Use'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 2381
          mmTop = 8202
          mmWidth = 3704
          BandType = 3
          GroupNo = 0
        end
        object ppLabel73: TppLabel
          UserName = 'Label3'
          Caption = 'Cod.Modular'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 7938
          mmTop = 8202
          mmWidth = 14023
          BandType = 3
          GroupNo = 0
        end
        object ppLabel74: TppLabel
          UserName = 'Label4'
          Caption = 'Apellidos y Nombres'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 25135
          mmTop = 8202
          mmWidth = 24077
          BandType = 3
          GroupNo = 0
        end
        object ppLabel75: TppLabel
          UserName = 'Label5'
          Caption = 'Importe'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 185473
          mmTop = 8202
          mmWidth = 8996
          BandType = 3
          GroupNo = 0
        end
        object ppLabel76: TppLabel
          UserName = 'Label6'
          Caption = 'Fecha Doc.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 150284
          mmTop = 8202
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLine15: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 1588
          mmTop = 13494
          mmWidth = 196586
          BandType = 3
          GroupNo = 0
        end
        object ppLine16: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 1588
          mmTop = 6879
          mmWidth = 196586
          BandType = 3
          GroupNo = 0
        end
        object ppLabel77: TppLabel
          UserName = 'Label25'
          Caption = 'N'#176' Cr'#233'dito'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 112713
          mmTop = 8202
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
        object ppLabel78: TppLabel
          UserName = 'Label26'
          Caption = 'N'#176' Documento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 165365
          mmTop = 8202
          mmWidth = 15346
          BandType = 3
          GroupNo = 0
        end
        object ppLabel79: TppLabel
          UserName = 'Label23'
          Caption = 'Usuario :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4233
          mmLeft = 3440
          mmTop = 1588
          mmWidth = 15240
          BandType = 3
          GroupNo = 0
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          Caption = 'Banco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 83608
          mmTop = 8202
          mmWidth = 6350
          BandType = 3
          GroupNo = 0
        end
        object ppDBText34: TppDBText
          UserName = 'DBText101'
          AutoSize = True
          DataField = 'USUARIO'
          DataPipeline = ppDBRefPago
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 22490
          mmTop = 1588
          mmWidth = 10160
          BandType = 3
          GroupNo = 0
        end
        object ppLabel110: TppLabel
          UserName = 'Label110'
          Caption = 'Fecha Reg.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 20cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 136525
          mmTop = 8202
          mmWidth = 12700
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 14817
        mmPrintPosition = 0
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc5'
          DataField = 'CREMTOCOB'
          DataPipeline = ppDBRefPago
          DisplayFormat = '###,###,###.#0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 169069
          mmTop = 1852
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line7'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1852
          mmLeft = 3175
          mmTop = 529
          mmWidth = 195263
          BandType = 5
          GroupNo = 0
        end
        object ppLabel84: TppLabel
          UserName = 'Label1'
          Caption = 'Importe '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 134144
          mmTop = 1852
          mmWidth = 13547
          BandType = 5
          GroupNo = 0
        end
        object ppLabel85: TppLabel
          UserName = 'Label27'
          Caption = 'Movimientos '
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 134144
          mmTop = 6879
          mmWidth = 20320
          BandType = 5
          GroupNo = 0
        end
        object ppLine18: TppLine
          UserName = 'Line8'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 3175
          mmTop = 12435
          mmWidth = 195263
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'CREDOCPAG'
          DataPipeline = ppDBRefPago
          DisplayFormat = '##,###,###,###'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          ResetGroup = ppGroup4
          TextAlignment = taRightJustified
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppDBRefPago'
          mmHeight = 4233
          mmLeft = 169069
          mmTop = 6879
          mmWidth = 26458
          BandType = 5
          GroupNo = 0
        end
        object ppLabel86: TppLabel
          UserName = 'Label28'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 160338
          mmTop = 2117
          mmWidth = 3440
          BandType = 5
          GroupNo = 0
        end
        object ppLabel87: TppLabel
          UserName = 'Label29'
          Caption = ' :'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 160338
          mmTop = 6879
          mmWidth = 3440
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
end
