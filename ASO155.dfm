object FestONP: TFestONP
  Left = 300
  Top = 163
  BorderStyle = bsDialog
  Caption = 'Estadistica ONP'
  ClientHeight = 435
  ClientWidth = 710
  Color = 10207162
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
  object Label1: TLabel
    Left = 401
    Top = 10
    Width = 47
    Height = 13
    Caption = 'Registros:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 473
    Top = 26
    Width = 60
    Height = 13
    Caption = 'CodPensi'#243'n:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblEnviados: TLabel
    Left = 400
    Top = 26
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,999'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblActCodPension: TLabel
    Left = 552
    Top = 26
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,999'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label9: TLabel
    Left = 633
    Top = 10
    Width = 60
    Height = 13
    Caption = 'No Actualiza'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblNoActCodPension: TLabel
    Left = 632
    Top = 26
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,999'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 561
    Top = 10
    Width = 43
    Height = 13
    Caption = 'Actualiza'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 473
    Top = 42
    Width = 58
    Height = 13
    Caption = 'CodLeyPen:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblActCodLeyPen: TLabel
    Left = 552
    Top = 42
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,999'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblNoActCodLeyPen: TLabel
    Left = 632
    Top = 42
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,999'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label8: TLabel
    Left = 329
    Top = 26
    Width = 47
    Height = 13
    Caption = 'Enviados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 329
    Top = 42
    Width = 48
    Height = 13
    Caption = 'Cargados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblCargados: TLabel
    Left = 400
    Top = 42
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,999'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 26
    Top = 7
    Width = 49
    Height = 15
    Caption = 'N'#250'mero:  '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object lblNumero: TLabel
    Left = 16
    Top = 34
    Width = 73
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'XXXXXXXXX'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label6: TLabel
    Left = 473
    Top = 58
    Width = 72
    Height = 13
    Caption = 'CodPrestacion:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblActCodPrestacion: TLabel
    Left = 552
    Top = 58
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,999'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object lblNoActCodPrestacion: TLabel
    Left = 632
    Top = 58
    Width = 57
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = '99,999'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object dbgprevio: TwwDBGrid
    Left = 4
    Top = 96
    Width = 701
    Height = 300
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
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
  object btncerrar: TBitBtn
    Left = 626
    Top = 401
    Width = 76
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 1
    OnClick = btncerrarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
      03333377777777777F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F333333337F333301111111110333337F333333337F33330111111111
      0333337F3333333F7F333301111111B10333337F333333737F33330111111111
      0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
      0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
      0333337F377777337F333301111111110333337F333333337F33330111111111
      0333337FFFFFFFFF7F3333000000000003333377777777777333}
    NumGlyphs = 2
  end
  object btnaExcel: TBitBtn
    Left = 544
    Top = 401
    Width = 76
    Height = 28
    Caption = 'A Excel'
    TabOrder = 2
    OnClick = btnaExcelClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
      000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
      0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
      080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
  end
  object btnimprimir: TBitBtn
    Left = 464
    Top = 401
    Width = 76
    Height = 28
    Caption = 'Imprimir'
    TabOrder = 3
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
  object ppBDEPipeline1: TppBDEPipeline
    DataSource = DM1.dsReporte
    UserName = 'BDEPReporte'
    Left = 320
    Top = 144
  end
  object pprdep: TppReport
    AutoStop = False
    DataPipeline = ppBDEPipeline1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 384
    Top = 144
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEPipeline1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39952
      mmPrintPosition = 0
      object ppShape20: TppShape
        UserName = 'Shape1'
        mmHeight = 10583
        mmLeft = 4763
        mmTop = 29104
        mmWidth = 38365
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label1'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 7938
        mmLeft = 5556
        mmTop = 30427
        mmWidth = 36513
        BandType = 0
      end
      object ppShape25: TppShape
        UserName = 'Shape6'
        mmHeight = 10583
        mmLeft = 44450
        mmTop = 29104
        mmWidth = 14552
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label6'
        Caption = 'Reg. Enviados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8202
        mmLeft = 45244
        mmTop = 30427
        mmWidth = 12965
        BandType = 0
      end
      object ppShape26: TppShape
        UserName = 'Shape7'
        mmHeight = 10583
        mmLeft = 60061
        mmTop = 28840
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label7'
        Caption = 'Reg. Recepcionados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 60590
        mmTop = 30163
        mmWidth = 15875
        BandType = 0
      end
      object ppShape27: TppShape
        UserName = 'Shape8'
        mmHeight = 10583
        mmLeft = 77523
        mmTop = 29104
        mmWidth = 13494
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label8'
        Caption = 'Cobertura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8996
        mmLeft = 78317
        mmTop = 29898
        mmWidth = 12171
        BandType = 0
      end
      object ppShape28: TppShape
        UserName = 'Shape9'
        mmHeight = 5556
        mmLeft = 91017
        mmTop = 22490
        mmWidth = 31750
        BandType = 0
      end
      object ppShape29: TppShape
        UserName = 'Shape10'
        mmHeight = 10583
        mmLeft = 91017
        mmTop = 28840
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label9'
        Caption = 'Cant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 91811
        mmTop = 30163
        mmWidth = 14288
        BandType = 0
      end
      object ppShape30: TppShape
        UserName = 'Shape101'
        mmHeight = 10583
        mmLeft = 107686
        mmTop = 28840
        mmWidth = 14817
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label10'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7938
        mmLeft = 108215
        mmTop = 30427
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel40: TppLabel
        UserName = 'Label11'
        Caption = 'ACTUALIZA: CODPENSION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 92075
        mmTop = 23813
        mmWidth = 29898
        BandType = 0
      end
      object ppShape34: TppShape
        UserName = 'Shape15'
        mmHeight = 9790
        mmLeft = 125413
        mmTop = 29104
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label15'
        Caption = 'Cant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 126471
        mmTop = 30163
        mmWidth = 15081
        BandType = 0
      end
      object ppShape35: TppShape
        UserName = 'Shape16'
        mmHeight = 9790
        mmLeft = 142611
        mmTop = 29104
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label16'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 143404
        mmTop = 30163
        mmWidth = 14817
        BandType = 0
      end
      object ppShape38: TppShape
        UserName = 'Shape19'
        mmHeight = 5556
        mmLeft = 125413
        mmTop = 22225
        mmWidth = 35454
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label19'
        Caption = 'ACTUALIZA:CODLEYPEN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 127000
        mmTop = 23813
        mmWidth = 30956
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label21'
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3703
        mmLeft = 6350
        mmTop = 1323
        mmWidth = 41010
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label22'
        Caption = 'EQUIPO DE PREVISION SOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3703
        mmLeft = 6350
        mmTop = 4763
        mmWidth = 49742
        BandType = 0
      end
      object ppltitulodep: TppLabel
        UserName = 'ltitulo'
        Caption = 'ESTADISTICA DE ACTUALIZACION ONP - PERIODO: 2013-10'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 5292
        mmTop = 9260
        mmWidth = 190236
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label24'
        Caption = '(Por Departamento)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 88106
        mmTop = 13494
        mmWidth = 38100
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label2'
        Caption = 'N'#176' PROCESO : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 5027
        mmTop = 19844
        mmWidth = 21960
        BandType = 0
      end
      object pplnumero: TppLabel
        UserName = 'Label3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 28046
        mmTop = 19844
        mmWidth = 21960
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape2'
        mmHeight = 9790
        mmLeft = 161132
        mmTop = 28310
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label4'
        Caption = 'Cant.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 162454
        mmTop = 30163
        mmWidth = 15081
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape3'
        mmHeight = 9790
        mmLeft = 179388
        mmTop = 28310
        mmWidth = 16669
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label5'
        Caption = '%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        WordWrap = True
        mmHeight = 7673
        mmLeft = 180182
        mmTop = 30427
        mmWidth = 14817
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape4'
        mmHeight = 5556
        mmLeft = 161396
        mmTop = 22225
        mmWidth = 34660
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label12'
        Caption = 'ACTUALIZA:CODPRESTACION'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2646
        mmLeft = 161925
        mmTop = 23813
        mmWidth = 33073
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 3969
      mmPrintPosition = 0
      object ppDBText20: TppDBText
        UserName = 'DBText1'
        DataField = 'DPTDOM'
        DataPipeline = ppBDEPipeline1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 0
        mmWidth = 37571
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText8'
        DataField = 'ENVIADOS'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 44715
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText9'
        DataField = 'RECEPCIONADOS'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 60061
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText10'
        DataField = 'COBERTURA'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 77788
        mmTop = 265
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText12'
        DataField = 'ACTCODPENSION'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 92075
        mmTop = 265
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText32: TppDBText
        UserName = 'DBText13'
        DataField = 'PORC_ACTCODPENSION'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 108479
        mmTop = 265
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText15'
        DataField = 'ACTCODLEYPEN'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 125942
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText17'
        DataField = 'PORC_ACTCODLEYPEN'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 143404
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText2'
        DataField = 'ACTCODPRE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 162719
        mmTop = 0
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText3'
        DataField = 'PORC_ACTCODPRE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine3: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4233
        mmTop = 0
        mmWidth = 193146
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 4498
        mmTop = 3969
        mmWidth = 192882
        BandType = 7
      end
      object ppDBCalc14: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'RECEPCIONADOS'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 60061
        mmTop = 265
        mmWidth = 15875
        BandType = 7
      end
      object ppLabel57: TppLabel
        UserName = 'Label13'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 5292
        mmTop = 794
        mmWidth = 37042
        BandType = 7
      end
      object ppDBCalc17: TppDBCalc
        UserName = 'DBCalc6'
        DataField = 'ACTCODPENSION'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 92869
        mmTop = 265
        mmWidth = 14288
        BandType = 7
      end
      object ppDBCalc19: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'ACTCODLEYPEN'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 125942
        mmTop = 529
        mmWidth = 15610
        BandType = 7
      end
      object pplimpresopordep: TppLabel
        UserName = 'Label20'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 4763
        mmTop = 5821
        mmWidth = 67469
        BandType = 7
      end
      object ppDBCalc12: TppDBCalc
        UserName = 'DBCalc12'
        DataField = 'ENVIADOS'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 44715
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object ppltotCobertura: TppLabel
        UserName = 'lblTotCobertura'
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 77523
        mmTop = 265
        mmWidth = 11906
        BandType = 7
      end
      object pplCodPension: TppLabel
        UserName = 'lblTotCobertura1'
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 109273
        mmTop = 794
        mmWidth = 12965
        BandType = 7
      end
      object pplCodLeyPen: TppLabel
        UserName = 'lCodLeyPen'
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 143669
        mmTop = 529
        mmWidth = 15875
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'ACTCODPRE'
        DataPipeline = ppBDEPipeline1
        DisplayFormat = '###,##0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppBDEPipeline1'
        mmHeight = 3704
        mmLeft = 162984
        mmTop = 529
        mmWidth = 15610
        BandType = 7
      end
      object pplCodPre: TppLabel
        UserName = 'lCodLeyPen1'
        AutoSize = False
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 180182
        mmTop = 529
        mmWidth = 15875
        BandType = 7
      end
    end
  end
end
