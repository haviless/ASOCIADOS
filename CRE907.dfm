object fConsCre: TfConsCre
  Left = 143
  Top = 165
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cronograma De Pagos Previo'
  ClientHeight = 434
  ClientWidth = 717
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
  object GroupBox2: TGroupBox
    Left = 6
    Top = 3
    Width = 707
    Height = 375
    Color = 13165023
    ParentColor = False
    TabOrder = 0
    object TLabel
      Left = 148
      Top = 17
      Width = 81
      Height = 15
      Caption = 'Tipo De Credito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 27
      Top = 16
      Width = 79
      Height = 15
      Caption = 'Fecha Prestamo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 178
      Top = 76
      Width = 83
      Height = 15
      Caption = 'Monto Otorgado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 421
      Top = 77
      Width = 60
      Height = 15
      Caption = 'Nro. Cuotas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dtgCronograma: TwwDBGrid
      Left = 36
      Top = 117
      Width = 627
      Height = 243
      DisableThemesInTitle = False
      Selected.Strings = (
        'cdsIteCuo'#9'8'#9'N'#176' Cuota'
        'cdsFecVen'#9'12'#9'Fec.Venc.'
        'cdsAmort'#9'15'#9'Amortizaci'#243'n'
        'cdsInteres'#9'15'#9'Interes'
        'cdsGastos'#9'15'#9'Gastos/Flat'
        'cdsCuota'#9'15'#9'Monto De Cuota'#9'F')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = dsCronograma
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
      ParentFont = False
      TabOrder = 5
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object BitGenera: TBitBtn
      Left = 588
      Top = 71
      Width = 44
      Height = 37
      TabOrder = 4
      OnClick = BitGeneraClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F0000
        000000000000000000000000000000000000000000007F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F000000000000000000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF00000000000000000000007F
        7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F000000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF000000
        00000000007F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF7F7F7F000000000000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF00000000007F7F7F7F7F7F7F7F7FFFFFFF7F7F7F7F7F7FFFFFFFFFFFFF
        FFFFFFFFFFFF7F7F7F000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF00000000007F7F7F7F7F7F7F7F7F7F7F7F7F0000FFFFFFFFFFFF
        FFFFFF7F7F7F0000007F0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF00000000007F7F7F7F00007F0000FF0000FFFFFFFFFFFF
        7F7F7F0000007F0000FF00007F0000FF0000FF0000FF0000FF0000FF0000FF00
        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF00007F00007F00007F0000FF0000FFFF00FFFFFFFFFFFF
        7F7F7F000000FF00007F0000FF00007F0000FF0000FF0000FF0000FF0000FF00
        00000000000000000000000000000000000000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF00007F0000FF0000FF0000FFFF00FFFFFFFFFFFF
        000000FF00007F0000FF00007F0000FF00007F0000FF00007F00000000000000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FFFF007F7F7FFFFFFFFFFFFF
        7F00007F00007F00007F0000FF00007F0000FF00007F00000000007F7F7FFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F00007F00007F0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FF0000FFFF007F7F7FFFFFFF000000
        7F00007F00007F00007F00007F00007F00007F0000FF00000000007F7F7FFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF7F00007F0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FFFF000000007F7F7FFFFFFF000000
        7F00007F00007F00007F00007F00007F00007F00000000007F7F7F7F7F7FFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF0000FF0000FF0000FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FF0000FFFF000000007F7F7FFFFFFF000000
        7F00007F0000FFFFFFFFFFFF7F00007F00007F00007F7F7F7F7F7F7F7F7FFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FF0000FF0000FF
        0000FF0000FF0000FF0000FF0000FFFF007F007F0000007F7F7FFFFFFF000000
        7F00007F0000FFFFFFFF00FFFFFFFFFFFFFF7F00000000007F7F7F7F7F7F7F7F
        7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF00FF
        FF00FF0000FF0000FF0000FF0000FFFF007F007F0000007F7F7FFFFFFF000000
        7F0000FFFFFFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFFFFFFFFFF7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F
        007FFFFF00FFFF00FF0000FFFF007F007F7F007F0000007F7F7FFFFFFF000000
        7F0000FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFFFFFFFFFF
        FF7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F
        007F7F007F7F007FFFFF00FFFF007F007F7F007F0000007F7F7FFFFFFF000000
        FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F0000007F
        007F7F007F7F007F7F007F7F007F7F007F7F007F000000FFFFFFFFFFFF000000
        FFFFFFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF7F007F7F007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F000000FF00FF7F
        007FFF00FF7F007F7F007F7F007F7F007F7F007F000000FFFFFFFFFFFFFFFFFF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7F007F7F007F7F00
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000007F007FFF
        00FF7F007FFF00FF7F007FFF00FF7F007F000000FFFFFFFFFFFFFFFFFFFFFFFF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000000000
        007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000FF00FFFF00FF7F
        007FFF00FF7F007FFF00FF7F007FFF00FF000000FFFFFFFFFFFFFFFFFFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF000000000000000000000000000000000000FF00FFFF00FFFF00FFFF00FFFF
        00FF7F007FFF00FF7F007FFF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFF00FF
        FF00FF7F007FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF7F007FFF00FF7F007F000000FFFFFFFFFFFFFFFFFFFF00FF7F007F
        7F007F7F007F000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF7F007F000000FFFFFFFFFFFFFFFFFFFFFFFF7F007FFFFFFF
        FFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF000000000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        00000000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object SpECuotas: TSpinEdit
      Left = 491
      Top = 71
      Width = 57
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 99
      MinValue = 1
      ParentFont = False
      TabOrder = 3
      Value = 1
    end
    object dtPFecVen: TDateTimePicker
      Left = 24
      Top = 33
      Width = 105
      Height = 24
      CalColors.TextColor = clNavy
      Date = 37789.860849293980000000
      Time = 37789.860849293980000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EdtMonto: TwwDBEdit
      Left = 274
      Top = 70
      Width = 108
      Height = 27
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = EdtMontoExit
      OnKeyPress = EdtMontoKeyPress
    end
    object DBLCTipos: TwwDBLookupCombo
      Left = 149
      Top = 34
      Width = 44
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TIPCREID'#9'2'#9'Codigo'#9'F'#9
        'TIPCREDES'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsClaCre
      LookupField = 'TIPCREID'
      Options = [loColLines, loRowLines]
      ParentFont = False
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DBLCTiposChange
      OnCloseUp = DBLCTiposCloseUp
    end
    object GroupBox3: TGroupBox
      Left = 516
      Top = 8
      Width = 185
      Height = 54
      Enabled = False
      TabOrder = 6
      object TLabel
        Left = 27
        Top = 11
        Width = 38
        Height = 15
        Caption = 'Interes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 109
        Top = 11
        Width = 59
        Height = 15
        Caption = 'Gastos/Flat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object EdtInteres: TwwDBEdit
        Left = 18
        Top = 28
        Width = 60
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        EditAlignment = eaRightAlignEditing
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object EdtGastos: TwwDBEdit
        Left = 109
        Top = 28
        Width = 60
        Height = 21
        BorderStyle = bsNone
        Color = 13165023
        EditAlignment = eaRightAlignEditing
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel1: TPanel
      Left = 193
      Top = 33
      Width = 316
      Height = 25
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 7
      object EdtDesTip: TEdit
        Left = 0
        Top = -1
        Width = 314
        Height = 24
        Color = 13165023
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
  object GroupBox1: TGroupBox
    Left = 5
    Top = 382
    Width = 708
    Height = 49
    Color = 13165023
    ParentColor = False
    TabOrder = 1
    object BitSalir: TBitBtn
      Left = 548
      Top = 14
      Width = 77
      Height = 28
      Caption = '&Salir'
      TabOrder = 1
      OnClick = BitSalirClick
      Kind = bkClose
    end
    object BitBtn1: TBitBtn
      Left = 444
      Top = 13
      Width = 77
      Height = 28
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
  end
  object dsCronograma: TDataSource
    DataSet = cdsCronograma
    Left = 624
    Top = 328
  end
  object cdsCronograma: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'cdsIteCuo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cdsFecVen'
        DataType = ftDate
      end
      item
        Name = 'cdsAmort'
        DataType = ftCurrency
      end
      item
        Name = 'cdsInteres'
        DataType = ftCurrency
      end
      item
        Name = 'cdsGastos'
        DataType = ftCurrency
      end
      item
        Name = 'cdsCuota'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    PictureMasks.Strings = (
      
        'TRES'#9'{{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]' +
        ',({{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]),[-' +
        ']{{#[#][#]{{;,###*[;,###]},*#}[.*#]},.#*#}[E[[+,-]#[#][#]]]}'#9'T'#9'F')
    ValidateWithMask = True
    Left = 624
    Top = 304
    Data = {
      E10000009619E0BD010000001800000006000000000003000000E10009636473
      49746543756F0100490000000100055749445448020002001400096364734665
      6356656E040006000000000008636473416D6F72740800040000000100075355
      42545950450200490006004D6F6E6579000A636473496E746572657308000400
      0000010007535542545950450200490006004D6F6E6579000963647347617374
      6F73080004000000010007535542545950450200490006004D6F6E6579000863
      647343756F7461080004000000010007535542545950450200490006004D6F6E
      6579000000}
  end
  object ppReport1: TppReport
    AutoStop = False
    DataPipeline = ppDBPipeline1
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
    Template.FileName = 'F:\SOLREPO\CRE\CronPrv'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextFileType = ftCustom
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 320
    Top = 392
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 61119
      mmPrintPosition = 0
      object ppLblTitulo: TppLabel
        UserName = 'LblTitulo'
        AutoSize = False
        Caption = 'ESTADO DE CUENTA POR  PRESTAMO ESPECIFICO AL  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 8202
        mmTop = 17463
        mmWidth = 166688
        BandType = 0
      end
      object ppMonto: TppLabel
        UserName = 'Monto'
        Caption = 'Monto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 70644
        mmTop = 34925
        mmWidth = 10583
        BandType = 0
      end
      object ppFecPre: TppLabel
        UserName = 'Monto1'
        Caption = 'FecPre'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 68263
        mmTop = 45773
        mmWidth = 12700
        BandType = 0
      end
      object ppNroCuotas: TppLabel
        UserName = 'NroCuotas'
        Caption = 'NroCuotas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 62177
        mmTop = 40481
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'Monto       '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 14552
        mmTop = 34660
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'N'#176' De Cuotas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 14288
        mmTop = 39952
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Fecha        '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 14023
        mmTop = 45508
        mmWidth = 25929
        BandType = 0
      end
      object ppInteres: TppLabel
        UserName = 'Interes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 106363
        mmTop = 40217
        mmWidth = 35454
        BandType = 0
      end
      object ppGastos: TppLabel
        UserName = 'Gastos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 106363
        mmTop = 45508
        mmWidth = 35772
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Derrama Magisterial '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 10054
        mmTop = 1058
        mmWidth = 42333
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 144992
        mmTop = 1323
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Hora   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 144992
        mmTop = 6615
        mmWidth = 12700
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 162190
        mmTop = 1323
        mmWidth = 21167
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 6879
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Sistema De Creditos y Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 6350
        mmWidth = 65617
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        AutoSize = False
        Caption = 'Cuota'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 53975
        mmWidth = 9525
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        AutoSize = False
        Caption = 'F.Vencimiento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 14552
        mmTop = 53975
        mmWidth = 28046
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        AutoSize = False
        Caption = 'Amortizaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 47096
        mmTop = 53975
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        AutoSize = False
        Caption = 'Intereses'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 85990
        mmTop = 54240
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        AutoSize = False
        Caption = 'Gastos/Flat'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 117211
        mmTop = 53975
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'Cuota a Pagar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 147902
        mmTop = 53975
        mmWidth = 33073
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 1323
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 158221
        mmTop = 6615
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41275
        mmTop = 39688
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41275
        mmTop = 45508
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41275
        mmTop = 34660
        mmWidth = 2117
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 51594
        mmWidth = 180711
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 59531
        mmWidth = 180711
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Tipo '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 14817
        mmTop = 29369
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = ':'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41275
        mmTop = 29369
        mmWidth = 2117
        BandType = 0
      end
      object ppLblTipo: TppLabel
        UserName = 'Interes1'
        AutoSize = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 50006
        mmTop = 29369
        mmWidth = 104511
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'cdsIteCuo'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 2910
        mmTop = 0
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'cdsFecVen'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 15610
        mmTop = 0
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'cdsAmort'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 39688
        mmTop = 0
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'cdsInteres'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 73025
        mmTop = 0
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'cdsGastos'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 106363
        mmTop = 264
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'cdsCuota'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 12cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4057
        mmLeft = 141817
        mmTop = 0
        mmWidth = 28310
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
      mmHeight = 25665
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataField = 'cdsAmort'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 39952
        mmTop = 2117
        mmWidth = 31221
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'cdsInteres'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 73025
        mmTop = 1852
        mmWidth = 31221
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        DataField = 'cdsGastos'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 106627
        mmTop = 1852
        mmWidth = 31221
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'cdsCuota'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 4233
        mmLeft = 139436
        mmTop = 1852
        mmWidth = 31221
        BandType = 7
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'TOTAL : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 12cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 20416
        mmTop = 2117
        mmWidth = 16933
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 7673
        mmWidth = 180711
        BandType = 7
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1852
        mmLeft = 0
        mmTop = 0
        mmWidth = 180711
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDBPipeline1: TppDBPipeline
    DataSource = dsCronograma
    UserName = 'DBPipeline1'
    Left = 360
    Top = 392
    object ppDBPipeline1ppField1: TppField
      FieldAlias = 'cdsIteCuo'
      FieldName = 'cdsIteCuo'
      FieldLength = 20
      DisplayWidth = 8
      Position = 0
    end
    object ppDBPipeline1ppField2: TppField
      FieldAlias = 'cdsFecVen'
      FieldName = 'cdsFecVen'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 15
      Position = 1
    end
    object ppDBPipeline1ppField3: TppField
      FieldAlias = 'cdsAmort'
      FieldName = 'cdsAmort'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 19
      Position = 2
    end
    object ppDBPipeline1ppField4: TppField
      FieldAlias = 'cdsInteres'
      FieldName = 'cdsInteres'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 19
      Position = 3
    end
    object ppDBPipeline1ppField5: TppField
      FieldAlias = 'cdsGastos'
      FieldName = 'cdsGastos'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 19
      Position = 4
    end
    object ppDBPipeline1ppField6: TppField
      FieldAlias = 'cdsCuota'
      FieldName = 'cdsCuota'
      FieldLength = 0
      DataType = dtCurrency
      DisplayWidth = 19
      Position = 5
    end
  end
end
