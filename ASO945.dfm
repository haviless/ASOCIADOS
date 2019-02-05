object fContRegistro: TfContRegistro
  Left = 235
  Top = 201
  BorderStyle = bsDialog
  Caption = 'Log  De Usuario'
  ClientHeight = 280
  ClientWidth = 481
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 2
    Top = -2
    Width = 476
    Height = 280
    Color = 13165023
    ParentColor = False
    TabOrder = 0
    object BitSalir: TBitBtn
      Left = 364
      Top = 245
      Width = 91
      Height = 27
      Cursor = crHandPoint
      Caption = '&Salir'
      TabOrder = 0
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
    object BitLog: TBitBtn
      Left = 268
      Top = 245
      Width = 90
      Height = 26
      Cursor = crHandPoint
      Hint = 'Imprimir Log'
      Caption = 'Ver Log'
      TabOrder = 1
      OnClick = BitLogClick
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
    object dtgUsuarios: TwwDBGrid
      Left = 6
      Top = 11
      Width = 462
      Height = 166
      DisableThemesInTitle = False
      Selected.Strings = (
        'USERID'#9'18'#9'Usuario'
        'USERNOM'#9'25'#9'Descripci'#243'n'
        'OFDESNOM'#9'20'#9'Origen~De Operaciones'
        'NIVEL'#9'5'#9'Nivel'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      OnRowChanged = dtgUsuariosRowChanged
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsUSESx
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 2
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDblClick = dtgUsuariosDblClick
    end
    object pUsuario: TPanel
      Left = 5
      Top = 180
      Width = 465
      Height = 59
      TabOrder = 3
      object lblUsuario: TLabel
        Left = 171
        Top = 4
        Width = 286
        Height = 19
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 10
        Top = 3
        Width = 87
        Height = 16
        AutoSize = False
        Caption = 'Usuario                           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 10
        Top = 20
        Width = 135
        Height = 16
        AutoSize = False
        Caption = 'Origen De Operaciones   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object lblOrigen: TLabel
        Left = 171
        Top = 21
        Width = 285
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 10
        Top = 39
        Width = 103
        Height = 16
        AutoSize = False
        Caption = 'Nivel                              '
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object lblNivel: TLabel
        Left = 170
        Top = 39
        Width = 288
        Height = 16
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 138
        Top = 6
        Width = 15
        Height = 17
        Alignment = taCenter
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 138
        Top = 21
        Width = 15
        Height = 19
        Alignment = taCenter
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 138
        Top = 40
        Width = 15
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object ppDBEstCta01: TppDBPipeline
    DataSource = DM1.dsCEdu
    UserName = 'DBPipEstCta1'
    Left = 429
    Top = 192
  end
  object ppREstCta01: TppReport
    AutoStop = False
    DataPipeline = ppDBEstCta01
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
    Template.FileName = 'D:\sistemas\NewSiscre\Reportes\EstCtaDet.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 398
    Top = 191
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBEstCta01'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 59267
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 5821
        mmWidth = 19262
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 53446
        mmWidth = 198120
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'Descripci'#243'n De Acceso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 54240
        mmWidth = 44979
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Autorizado Por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 54240
        mmWidth = 24342
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label16'
        Caption = 'Derrama Magisterial'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 28152
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label17'
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
      object ppLabel11: TppLabel
        UserName = 'Label18'
        Caption = 'Fecha  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155840
        mmTop = 1058
        mmWidth = 10372
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label19'
        Caption = 'Hora    '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 155840
        mmTop = 5292
        mmWidth = 11853
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 171980
        mmTop = 1058
        mmWidth = 14817
        BandType = 0
      end
      object ppLblTitulo01: TppLabel
        UserName = 'LblTitulo'
        AutoSize = False
        Caption = 'DETALLE DE AUTORIZACION DE ACCESO AL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 19844
        mmWidth = 168805
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line5'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 59002
        mmWidth = 198120
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label401'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 168275
        mmTop = 5556
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label402'
        AutoSize = False
        Caption = ': '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 168275
        mmTop = 1058
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'Fecha Autorizaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 89429
        mmTop = 54240
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel29: TppLabel
        UserName = 'Label102'
        AutoSize = False
        Caption = 'Usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 31750
        mmWidth = 14288
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label22'
        AutoSize = False
        Caption = 'Origen De Operaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 36513
        mmWidth = 37306
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label23'
        AutoSize = False
        Caption = 'Nivel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 41275
        mmWidth = 10848
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label24'
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
        mmLeft = 39952
        mmTop = 31485
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label25'
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
        mmLeft = 39952
        mmTop = 36513
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label26'
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
        mmLeft = 39952
        mmTop = 41804
        mmWidth = 3969
        BandType = 0
      end
      object lblUser01: TppLabel
        UserName = 'lblUser'
        AutoSize = False
        Caption = 'Origen De Operaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 31750
        mmWidth = 99219
        BandType = 0
      end
      object lblOrig01: TppLabel
        UserName = 'lblOrig'
        AutoSize = False
        Caption = 'Origen De Operaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 36777
        mmWidth = 99219
        BandType = 0
      end
      object lblNiv01: TppLabel
        UserName = 'lblNiv'
        AutoSize = False
        Caption = 'Origen De Operaciones'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47625
        mmTop = 42069
        mmWidth = 99219
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        AutoSize = False
        Caption = 'Fecha Denegado'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 54504
        mmWidth = 34925
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        AutoSize = False
        Caption = 'Denegado Por'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 126736
        mmTop = 54504
        mmWidth = 24342
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText2'
        DataField = 'CAMPODES'
        DataPipeline = ppDBEstCta01
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta01'
        mmHeight = 3969
        mmLeft = 265
        mmTop = 0
        mmWidth = 56886
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText7'
        DataField = 'USRAUT'
        DataPipeline = ppDBEstCta01
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta01'
        mmHeight = 3969
        mmLeft = 57944
        mmTop = 0
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText9'
        DataField = 'FREG'
        DataPipeline = ppDBEstCta01
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta01'
        mmHeight = 3969
        mmLeft = 89165
        mmTop = 0
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'USRRET'
        DataPipeline = ppDBEstCta01
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta01'
        mmHeight = 3969
        mmLeft = 126736
        mmTop = 0
        mmWidth = 30427
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'FRET'
        DataPipeline = ppDBEstCta01
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBEstCta01'
        mmHeight = 3969
        mmLeft = 157957
        mmTop = 0
        mmWidth = 37306
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
      mmHeight = 44186
      mmPrintPosition = 0
      object ppLine9: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 265
        mmWidth = 198120
        BandType = 7
      end
      object ppLabel39: TppLabel
        UserName = 'Label1'
        Caption = 'Numero De  ACCESOS  : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 55563
        mmTop = 1588
        mmWidth = 37042
        BandType = 7
      end
      object ppLine10: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 7408
        mmWidth = 198120
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'USERID'
        DataPipeline = ppDBEstCta01
        DisplayFormat = '#,###'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppDBEstCta01'
        mmHeight = 3969
        mmLeft = 117475
        mmTop = 1588
        mmWidth = 19315
        BandType = 7
      end
      object ppLabel41: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'RESPONSABLE '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 76729
        mmTop = 27252
        mmWidth = 42069
        BandType = 7
      end
      object ppLabel42: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'DEL MODULO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 76729
        mmTop = 32015
        mmWidth = 42069
        BandType = 7
      end
      object ppLine11: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 64558
        mmTop = 25929
        mmWidth = 64823
        BandType = 7
      end
    end
  end
end
