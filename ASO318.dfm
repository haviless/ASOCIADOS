object FRepFallecidos: TFRepFallecidos
  Left = 216
  Top = 236
  BorderStyle = bsDialog
  Caption = 'Reporte de Fallecidos'
  ClientHeight = 435
  ClientWidth = 915
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grpPeriodo: TGroupBox
    Left = 8
    Top = 8
    Width = 433
    Height = 49
    Caption = 'Periodo de Fallecimiento'
    TabOrder = 0
    object lblDesde: TLabel
      Left = 16
      Top = 24
      Width = 31
      Height = 13
      Caption = 'Desde'
    end
    object lblHasta: TLabel
      Left = 176
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Hasta'
    end
    object dtFechaDesde: TwwDBDateTimePicker
      Left = 53
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
      OnChange = dtFechaDesdeChange
    end
    object dtFechaHasta: TwwDBDateTimePicker
      Left = 213
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
      TabOrder = 1
      OnChange = dtFechaHastaChange
    end
    object btnBuscar: TBitBtn
      Left = 337
      Top = 13
      Width = 88
      Height = 28
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = btnBuscarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
  end
  object dbgFallecidos: TwwDBGrid
    Left = 8
    Top = 64
    Width = 897
    Height = 329
    Cursor = crHandPoint
    DisableThemesInTitle = False
    Selected.Strings = (
      'OFDESNOM'#9'20'#9'Fecha de~Registro'
      'AUTORIZARON'#9'10'#9'Autorizar'#243'n~Descuento'#9'F')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsQry1
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgFooter3DCells]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = True
    OnTitleButtonClick = dbgFallecidosTitleButtonClick
  end
  object btnCerrar: TBitBtn
    Left = 828
    Top = 400
    Width = 78
    Height = 27
    Caption = 'Cerrar'
    TabOrder = 2
    OnClick = btnCerrarClick
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
  object btnExcel: TBitBtn
    Left = 736
    Top = 400
    Width = 78
    Height = 27
    Caption = 'A Excel'
    TabOrder = 3
    OnClick = btnExcelClick
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
  object dtgData: TDBGrid
    Left = 488
    Top = 400
    Width = 25
    Height = 25
    DataSource = DM1.dsQry1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Visible = False
  end
  object chkSinFecha: TCheckBox
    Left = 448
    Top = 40
    Width = 289
    Height = 17
    Caption = 'Incluir los fallecidos sin fecha de fallecimiento asignada'
    TabOrder = 5
    Visible = False
    OnClick = chkSinFechaClick
  end
end
