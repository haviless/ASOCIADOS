object fRepRes: TfRepRes
  Left = 254
  Top = 177
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Reportes (Resumen)'
  ClientHeight = 414
  ClientWidth = 678
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PnFecGen: TPanel
    Left = 0
    Top = 0
    Width = 487
    Height = 87
    TabOrder = 1
    object Label3: TLabel
      Left = 7
      Top = 5
      Width = 75
      Height = 13
      Caption = 'Fecha De Inicio'
    end
    object Label4: TLabel
      Left = 102
      Top = 5
      Width = 64
      Height = 13
      Caption = 'Fecha De Fin'
    end
    object DtpFecIni: TwwDBDateTimePicker
      Left = 6
      Top = 19
      Width = 91
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
      Left = 101
      Top = 20
      Width = 91
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
    object BitMostrar: TBitBtn
      Left = 443
      Top = 18
      Width = 34
      Height = 33
      Hint = 'Mostar Datos'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = BitMostrarClick
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        18000000000078060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFB2B1B0FFFFFF90918ED3D4D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E3E3F9FAFF9C9C9BC7C7C6FFFFFF00
        0000FFFFFFFFFFFF9F9F9FD5D1D5BCBCC1505450B8B9B8FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A8A8C9D3D4C5D7DB585B
        57A5A8A5FFFFFF000000FFFFFFA7A7A7515151706F70474746383838ACABACFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F4F56B6A6AE1E1E1FFFFFFB9B9B94D4D4D
        7172734A4C4C393839979797FFFFFF000000FFFFFF858485EBEBEBB5B5B53231
        32333233AEADAEFFFFFFFFFFFFFFFFFFFFFFFFE0E0E01B1D1BC2C5C28C8B8CFF
        FFFFA1A0A1D4D4D4D0CFCF3231323837389B9A9BFFFFFF000000B4B9B4898E89
        9298928A908A757B75747A74939893ADB2ADA9AFA9AFB5AFA9ADA9272A27BCC0
        BC2C2C2C798079979D97747A74737873747A745A5F5A5A5F5A7278729CA19C00
        00009FA59FF4F5F4EDEEEDEEEFEEF0F1F0F0F1F0F5F6F5EDEEEDF2F3F2EBEBEB
        111411D4D2D4363034F0F5F8F3F8FDEEF3F8F6FBFAF8FFFBF9FFFBF6F9F7F1F3
        F1F7F8F78A918A000000CDD0CDC5C9C5C6CAC6C8CCC8D7DBD7E6EAE67E827EC9
        CDC9A8ACA80C0F0CD8D1D6496C4271B68B9E8158B19759AB95597F5F59723F59
        6E3951A6979ECAD0CBC5C9C5CFD2CF000000FFFFFFFFFFFFFFFFFFFFFFFF6564
        63201D1B0300001B1A1A343734DFDCDD26473946FF7565DD93B06F25DCA230D1
        9E307A343061003059001EC8A2B6FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        9E9EA00000001814270E2636253B521A1816000000000000009E1354FF8A66D5
        90AF712BD8A236CE9E367C3A366400365C0025C5A2B5FFFFFFFFFFFFFFFFFF00
        0000FFFFFFA7A6A8464B4DE7E765736E763A7CAF87C1FA7299BF464033000000
        4089584AFF8566D590AF712BD8A236CE9E367C3A366400365C0025C5A2B5FFFF
        FFFFFFFFFFFFFF000000D5D5D5000000F6F682FFFF6F6D68603572A37BB0E67C
        B0E385AED22A2A281906168EDC8960DC91AF712BD8A236CE9E367C3A36640036
        5C0025C5A2B5FFFFFFFFFFFFFFFFFF0000005E5E62838364FFFFDDFFFF9A6C67
        6E3572A279AEE482B8EC7BB4EA62747F0200005AAE5665E195AF712BD8A236CE
        9E367C3A366400365C0025C5A2B5FFFFFFFFFFFFFFFFFF0000000000009C9D5B
        FFFF98FFFF9C6C676D3572A279AEE481B6EA81B7EC86BBEC0000004CA14866E2
        97AF712BD8A236CE9E367C3A366400365C0025C5A2B5FFFFFFFFFFFFFFFFFF00
        0000000000A1943AFFFFFCFFFF5B6C69743572A27AAFE581B6EA82B7EB75B5F2
        0000004BA14766E197AF712BD8A236CE9E367C3A366400365C0025C5A2B5FFFF
        FFFFFFFFFFFFFF00000000000052431DFFFFECFFF18E6B54493372A3669FD77D
        B0E580B8EF9ABED918000F88CF8061DD92AF712BD8A236CE9E367C3A36640036
        5C0025C5A2B5FFFFFFFFFFFFFFFFFF000000CCCCCC000000DFB83FFFFFEF7DA6
        C24580AFCEE2F789DCFF89BEF3252A3A0035155BFF926ADB98AF712BD8A236CE
        9E367C3A366400365C0025C5A2B5FFFFFFFFFFFFFFFFFF000000EFEFEF151618
        1112189D83197D93AC89BDEB81BEDF67A7DD3F4B552F304700990229D54431B4
        48B47633D8A236CE9E367C3A366400365C0025C5A2B5FFFFFFFFFFFFFFFFFF00
        0000FFFFFFF9F9F9393A3B00000000000000040E00070F000003141C274784B5
        294050263A4D1D3A4EB58233D8A236CE9E367C3A366400365A0022C49FB2FFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFEAEAEA5454534C4A48261E2233
        69936AA5DD37779F36316736346B302F6DB58430D8A236CE9E367C3A36620032
        62002ED9C2CEFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFA19CB72A5E8B649CCF3979A13533643536682C3069B58530DAA436D0
        A1367A38334C0014E4D4DBFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF9590AA295C886DA3D94280A93432633031653235
        6AAA7622C78829BD8327702527DDC6D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9590AA2A618D68A3D73A7EA5
        2F2C613A3B67C7C9C7B995889C5E8D9A5C87D5BBCCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9694AE28
        3466444F823746763D3C69C9C8C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
    end
    object rgseleccion: TRadioGroup
      Left = 200
      Top = 5
      Width = 130
      Height = 72
      Caption = ' Selecci'#243'n '
      Items.Strings = (
        'Por Departamento'
        'Por Usuario'
        'Por Genero')
      TabOrder = 2
      OnClick = rgseleccionClick
    end
    object rgtipo: TRadioGroup
      Left = 339
      Top = 5
      Width = 92
      Height = 58
      Caption = ' Tipo '
      Items.Strings = (
        'Detalle'
        'Resumen')
      TabOrder = 3
    end
  end
  object pnlDptos: TPanel
    Left = 0
    Top = 87
    Width = 679
    Height = 327
    Caption = 'pnlDptos'
    TabOrder = 0
    object dbgprevio: TwwDBGrid
      Left = 5
      Top = 9
      Width = 668
      Height = 274
      DisableThemesInTitle = False
      Selected.Strings = (
        'DPTOID'#9'3'#9'Id'
        'DPTOABR'#9'50'#9'Departamento'
        'REGISTROS'#9'17'#9'Registros'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsReporte
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Times New Roman'
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
    end
    object BitSalir: TBitBtn
      Left = 583
      Top = 291
      Width = 91
      Height = 27
      Cursor = crHandPoint
      Caption = '&Salir'
      TabOrder = 1
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
    object btnimprimir: TBitBtn
      Left = 488
      Top = 291
      Width = 90
      Height = 27
      Cursor = crHandPoint
      Hint = 'Imprimir Resumen'
      Caption = 'Imprimir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
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
  end
  object RepDepDet: TppReport
    AutoStop = False
    DataPipeline = dbpPrevio
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
    Left = 340
    Top = 378
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpPrevio'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31221
      mmPrintPosition = 0
      object TitRes01: TppLabel
        UserName = 'TitRes03'
        AutoSize = False
        Caption = 
          'ESTADISTICA DE ACTUALIZACION DE DATOS POR GENERO DE  XX/XX/XXXX ' +
          'AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 20638
        mmWidth = 193940
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label524'
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
        UserName = 'Label526'
        Caption = 'Fecha'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 163513
        mmTop = 0
        mmWidth = 8509
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label527'
        Caption = 'Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 163513
        mmTop = 4498
        mmWidth = 6985
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label528'
        Caption = 'Pag.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3387
        mmLeft = 163777
        mmTop = 8996
        mmWidth = 6138
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable204'
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
        UserName = 'SystemVariable45'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 5027
        mmWidth = 16404
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable46'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 177007
        mmTop = 9260
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label529'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174361
        mmTop = 8996
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label530'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174361
        mmTop = 4498
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label531'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 174361
        mmTop = 0
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
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
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText229'
        DataField = 'REGISTROS'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 133350
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText226'
        DataField = 'USENOM'
        DataPipeline = dbpPrevio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3969
        mmLeft = 30163
        mmTop = 0
        mmWidth = 87048
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 11113
      mmPrintPosition = 0
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label521'
        AutoSize = False
        Caption = 'Total  General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 73025
        mmTop = 2117
        mmWidth = 25929
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc202'
        DataField = 'REGISTROS'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 133086
        mmTop = 2117
        mmWidth = 22754
        BandType = 7
      end
      object ppLine1: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 26194
        mmTop = 529
        mmWidth = 148696
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 26194
        mmTop = 6350
        mmWidth = 148696
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DPTOID'
      DataPipeline = dbpPrevio
      OutlineSettings.CreateNode = True
      UserName = 'Group45'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbpPrevio'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 13494
        mmPrintPosition = 0
        object ppDBText6: TppDBText
          UserName = 'DBText1'
          DataField = 'DPTODES'
          DataPipeline = dbpPrevio
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbpPrevio'
          mmHeight = 3387
          mmLeft = 19579
          mmTop = 1588
          mmWidth = 63236
          BandType = 3
          GroupNo = 0
        end
        object ppLine3: TppLine
          UserName = 'Line133'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 26194
          mmTop = 12171
          mmWidth = 148696
          BandType = 3
          GroupNo = 0
        end
        object ppLabel11: TppLabel
          UserName = 'Label517'
          AutoSize = False
          Caption = 'Uses/Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 30163
          mmTop = 7938
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
        end
        object ppLabel12: TppLabel
          UserName = 'Label1'
          AutoSize = False
          Caption = 'Registros'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 137848
          mmTop = 7938
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 26458
          mmTop = 6085
          mmWidth = 148696
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 7938
        mmPrintPosition = 0
        object ppLabel16: TppLabel
          UserName = 'Label4'
          Caption = 'Totales  Por Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 73290
          mmTop = 1588
          mmWidth = 34078
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc192'
          DataField = 'REGISTROS'
          DataPipeline = dbpPrevio
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup1
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpPrevio'
          mmHeight = 3704
          mmLeft = 133350
          mmTop = 1588
          mmWidth = 22754
          BandType = 5
          GroupNo = 0
        end
        object ppLine5: TppLine
          UserName = 'Line1'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 26194
          mmTop = 529
          mmWidth = 148696
          BandType = 5
          GroupNo = 0
        end
        object ppLine6: TppLine
          UserName = 'Line176'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 26194
          mmTop = 5821
          mmWidth = 148696
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
  object dbpPrevio: TppDBPipeline
    DataSource = DM1.dsReporte
    UserName = 'dbpPrevio'
    Left = 22
    Top = 130
  end
  object RepDepRes1: TppReport
    AutoStop = False
    DataPipeline = dbpPrevio
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
    Left = 425
    Top = 378
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpPrevio'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 34660
      mmPrintPosition = 0
      object TitDes03: TppLabel
        UserName = 'TitDes03'
        AutoSize = False
        Caption = 
          'ESTADISTICA DE ACTUALIZACION DE DATOS POR GENERO DE  XX/XX/XXXX ' +
          'AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 15875
        mmTop = 15610
        mmWidth = 177007
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label524'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 16933
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label526'
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
      object ppLabel15: TppLabel
        UserName = 'Label527'
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
      object ppLabel17: TppLabel
        UserName = 'Label528'
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
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable204'
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
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable45'
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
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable46'
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
      object ppLabel18: TppLabel
        UserName = 'Label529'
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
      object ppLabel19: TppLabel
        UserName = 'Label530'
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
      object ppLabel20: TppLabel
        UserName = 'Label531'
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
      object ppLine9: TppLine
        UserName = 'Line9'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 19050
        mmTop = 27517
        mmWidth = 170657
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 19050
        mmTop = 33866
        mmWidth = 170657
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'Departamentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 21167
        mmTop = 29104
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'Masculino'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 93663
        mmTop = 29104
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        AutoSize = False
        Caption = 'Femenino'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 118534
        mmTop = 29104
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        AutoSize = False
        Caption = 'Nulo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 144463
        mmTop = 29104
        mmWidth = 17992
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        AutoSize = False
        Caption = 'Total'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 169863
        mmTop = 29104
        mmWidth = 17992
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
        mmLeft = 16669
        mmTop = 4498
        mmWidth = 52451
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText2: TppDBText
        UserName = 'DBText229'
        DataField = 'MASCULINO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 89429
        mmTop = 0
        mmWidth = 22754
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText230'
        DataField = 'FEMENINO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 114829
        mmTop = 0
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText2301'
        DataField = 'NULO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 139436
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText232'
        DataField = 'TOTAL'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 165100
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText226'
        DataField = 'DPTODES'
        DataPipeline = dbpPrevio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3969
        mmLeft = 21431
        mmTop = 0
        mmWidth = 63236
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel21: TppLabel
        UserName = 'Label521'
        Caption = 'Total  General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 44186
        mmTop = 1852
        mmWidth = 23283
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc202'
        DataField = 'MASCULINO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 89165
        mmTop = 2117
        mmWidth = 22754
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc203'
        DataField = 'FEMENINO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 114565
        mmTop = 2117
        mmWidth = 21696
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc204'
        DataField = 'NULO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 139171
        mmTop = 2117
        mmWidth = 23019
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc2001'
        DataField = 'TOTAL'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 164836
        mmTop = 2117
        mmWidth = 22225
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 19050
        mmTop = 529
        mmWidth = 170657
        BandType = 7
      end
      object ppLine8: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 19050
        mmTop = 6350
        mmWidth = 170657
        BandType = 7
      end
    end
  end
  object RepDepRes: TppReport
    AutoStop = False
    DataPipeline = dbpPrevio
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
    Left = 369
    Top = 378
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpPrevio'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object TitDes01: TppLabel
        UserName = 'TitDes01'
        AutoSize = False
        Caption = 
          'ESTADISTICA DE ACTUALIZACION DE DATOS POR GENERO DE  XX/XX/XXXX ' +
          'AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 20638
        mmWidth = 202142
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label524'
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
      object ppLabel29: TppLabel
        UserName = 'Label526'
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
      object ppLabel30: TppLabel
        UserName = 'Label527'
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
      object ppLabel31: TppLabel
        UserName = 'Label528'
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
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable204'
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
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable45'
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
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable46'
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
      object ppLabel32: TppLabel
        UserName = 'Label529'
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
      object ppLabel33: TppLabel
        UserName = 'Label530'
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
      object ppLabel34: TppLabel
        UserName = 'Label531'
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
      object ppLine11: TppLine
        UserName = 'Line133'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 40747
        mmTop = 28310
        mmWidth = 121179
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line134'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 40746
        mmTop = 34131
        mmWidth = 121179
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        AutoSize = False
        Caption = 'Departamentos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 44186
        mmTop = 29633
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        AutoSize = False
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 131763
        mmTop = 29898
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
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
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText232'
        DataField = 'REGISTROS'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText226'
        DataField = 'DPTODES'
        DataPipeline = dbpPrevio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3969
        mmLeft = 44186
        mmTop = 0
        mmWidth = 82550
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel35: TppLabel
        UserName = 'Label521'
        Caption = 'Total  General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52917
        mmTop = 1852
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc2001'
        DataField = 'REGISTROS'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 1852
        mmWidth = 22225
        BandType = 7
      end
      object ppLine13: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 40747
        mmTop = 529
        mmWidth = 121179
        BandType = 7
      end
      object ppLine14: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 40747
        mmTop = 6350
        mmWidth = 121179
        BandType = 7
      end
    end
  end
  object RepDes02: TppReport
    AutoStop = False
    DataPipeline = dbpPrevio
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
    Left = 397
    Top = 378
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpPrevio'
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object TitRes02: TppLabel
        UserName = 'TitRes02'
        AutoSize = False
        Caption = 
          'ESTADISTICA DE ACTUALIZACION DE DATOS POR GENERO DE  XX/XX/XXXX ' +
          'AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 20638
        mmWidth = 202142
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label524'
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
      object ppLabel40: TppLabel
        UserName = 'Label526'
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
      object ppLabel41: TppLabel
        UserName = 'Label527'
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
      object ppLabel42: TppLabel
        UserName = 'Label528'
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
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable204'
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
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable45'
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
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable46'
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
      object ppLabel43: TppLabel
        UserName = 'Label529'
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
      object ppLabel44: TppLabel
        UserName = 'Label530'
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
      object ppLabel45: TppLabel
        UserName = 'Label531'
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
      object ppLine15: TppLine
        UserName = 'Line133'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 40747
        mmTop = 28310
        mmWidth = 121179
        BandType = 0
      end
      object ppLine16: TppLine
        UserName = 'Line134'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 40746
        mmTop = 34131
        mmWidth = 121179
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        AutoSize = False
        Caption = 'Usuarios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 44186
        mmTop = 29633
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        AutoSize = False
        Caption = 'Registros'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 131763
        mmTop = 29898
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        AutoSize = False
        Caption = 'Descripci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 71702
        mmTop = 29898
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
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
    object ppDetailBand4: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText232'
        DataField = 'REGISTROS'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 0
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText226'
        DataField = 'USUARIO_AUD'
        DataPipeline = dbpPrevio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3969
        mmLeft = 44186
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText1'
        DataField = 'USERNOM'
        DataPipeline = dbpPrevio
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3969
        mmLeft = 71438
        mmTop = 0
        mmWidth = 57415
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppLabel46: TppLabel
        UserName = 'Label521'
        Caption = 'Total  General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 52917
        mmTop = 1852
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc2001'
        DataField = 'REGISTROS'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 1852
        mmWidth = 22225
        BandType = 7
      end
      object ppLine17: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 40747
        mmTop = 529
        mmWidth = 121179
        BandType = 7
      end
      object ppLine18: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 40747
        mmTop = 6350
        mmWidth = 121179
        BandType = 7
      end
    end
  end
  object RepGenDet: TppReport
    AutoStop = False
    DataPipeline = dbpPrevio
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
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 453
    Top = 378
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'dbpPrevio'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31750
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 
          'ESTADISTICA DE ACTUALIZACION DE DATOS POR GENERO DE  XX/XX/XXXX ' +
          'AL XX/XX/XXXX'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 15875
        mmWidth = 175155
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 17463
        mmTop = 0
        mmWidth = 34396
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
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
      object ppLabel53: TppLabel
        UserName = 'Label53'
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
      object ppLabel54: TppLabel
        UserName = 'Label54'
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
      object ppSystemVariable13: TppSystemVariable
        UserName = 'SystemVariable13'
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
      object ppSystemVariable14: TppSystemVariable
        UserName = 'SystemVariable14'
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
      object ppSystemVariable15: TppSystemVariable
        UserName = 'SystemVariable15'
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
      object ppLabel55: TppLabel
        UserName = 'Label55'
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
      object ppLabel56: TppLabel
        UserName = 'Label5301'
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
      object ppLabel57: TppLabel
        UserName = 'Label57'
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
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Sistema De Mantenimiento De Asociados'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 17463
        mmTop = 4498
        mmWidth = 52388
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'USENOM'
        DataPipeline = dbpPrevio
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 21431
        mmTop = 0
        mmWidth = 69321
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'MASCULINO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 93927
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'FEMENINO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 118798
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'NULO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 144727
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'TOTAL'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3704
        mmLeft = 170127
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppSummaryBand5: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppLine23: TppLine
        UserName = 'Line23'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 19315
        mmTop = 0
        mmWidth = 170657
        BandType = 7
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        AutoSize = False
        Caption = 'Total  General'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 44715
        mmTop = 1323
        mmWidth = 25929
        BandType = 7
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 19315
        mmTop = 5556
        mmWidth = 170657
        BandType = 7
      end
      object ppDBCalc13: TppDBCalc
        UserName = 'DBCalc13'
        DataField = 'MASCULINO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3440
        mmLeft = 94192
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc14'
        DataField = 'FEMENINO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3440
        mmLeft = 119063
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc15: TppDBCalc
        UserName = 'DBCalc15'
        DataField = 'NULO'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3440
        mmLeft = 144992
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc16: TppDBCalc
        UserName = 'DBCalc16'
        DataField = 'TOTAL'
        DataPipeline = dbpPrevio
        DisplayFormat = '###,###,##0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 15cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbpPrevio'
        mmHeight = 3440
        mmLeft = 170392
        mmTop = 1323
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'ppDBText15'
      BreakType = btCustomField
      KeepTogether = True
      OutlineSettings.CreateNode = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = ''
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 12965
        mmPrintPosition = 0
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          DataField = 'DPTOID'
          DataPipeline = dbpPrevio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          Visible = False
          DataPipelineName = 'dbpPrevio'
          mmHeight = 3969
          mmLeft = 529
          mmTop = 0
          mmWidth = 4233
          BandType = 3
          GroupNo = 0
        end
        object ppDBText16: TppDBText
          UserName = 'DBText16'
          DataField = 'DPTODES'
          DataPipeline = dbpPrevio
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbpPrevio'
          mmHeight = 3704
          mmLeft = 19050
          mmTop = 0
          mmWidth = 40217
          BandType = 3
          GroupNo = 0
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 19050
          mmTop = 4763
          mmWidth = 170657
          BandType = 3
          GroupNo = 0
        end
        object ppLabel59: TppLabel
          UserName = 'Label59'
          AutoSize = False
          Caption = 'Uses/Ugel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 21431
          mmTop = 5821
          mmWidth = 18256
          BandType = 3
          GroupNo = 0
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 19050
          mmTop = 10054
          mmWidth = 170657
          BandType = 3
          GroupNo = 0
        end
        object ppLabel60: TppLabel
          UserName = 'Label60'
          AutoSize = False
          Caption = 'Masculino'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 93927
          mmTop = 5821
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLabel61: TppLabel
          UserName = 'Label61'
          AutoSize = False
          Caption = 'Femenino'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 118798
          mmTop = 5821
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          AutoSize = False
          Caption = 'Nulo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 144727
          mmTop = 5821
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          AutoSize = False
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3704
          mmLeft = 170127
          mmTop = 5821
          mmWidth = 17992
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLine21: TppLine
          UserName = 'Line21'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 19050
          mmTop = 529
          mmWidth = 170657
          BandType = 5
          GroupNo = 0
        end
        object ppLabel64: TppLabel
          UserName = 'Label64'
          Caption = 'Totales  Por Departamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          mmHeight = 3260
          mmLeft = 44450
          mmTop = 1588
          mmWidth = 34078
          BandType = 5
          GroupNo = 0
        end
        object ppLine22: TppLine
          UserName = 'Line22'
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 19050
          mmTop = 5821
          mmWidth = 170657
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc9: TppDBCalc
          UserName = 'DBCalc9'
          DataField = 'MASCULINO'
          DataPipeline = dbpPrevio
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpPrevio'
          mmHeight = 3440
          mmLeft = 93927
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc10: TppDBCalc
          UserName = 'DBCalc10'
          DataField = 'FEMENINO'
          DataPipeline = dbpPrevio
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpPrevio'
          mmHeight = 3440
          mmLeft = 118798
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc11: TppDBCalc
          UserName = 'DBCalc11'
          DataField = 'NULO'
          DataPipeline = dbpPrevio
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpPrevio'
          mmHeight = 3440
          mmLeft = 144727
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc12: TppDBCalc
          UserName = 'DBCalc12'
          DataField = 'TOTAL'
          DataPipeline = dbpPrevio
          DisplayFormat = '###,###,##0'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Name = 'Draft 15cpi'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbpPrevio'
          mmHeight = 3440
          mmLeft = 170127
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
  end
end
