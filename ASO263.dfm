object FRepControl: TFRepControl
  Left = 208
  Top = 146
  BorderStyle = bsDialog
  Caption = 'Reportes de Control'
  ClientHeight = 367
  ClientWidth = 912
  Color = 12114134
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  DesignSize = (
    912
    367)
  PixelsPerInch = 96
  TextHeight = 13
  object rgprincipal: TRadioGroup
    Left = 6
    Top = 8
    Width = 326
    Height = 76
    Caption = ' Tipo de reporte '
    ItemIndex = 0
    Items.Strings = (
      'CADAPS autorizadas o recepcionadas'
      'CADAPS autorizadas y no recepcionadas por prevision social'
      'CADAPS autorizadas y no archivadas')
    TabOrder = 0
    OnClick = rgprincipalClick
  end
  object dbgreporte: TwwDBGrid
    Left = 6
    Top = 90
    Width = 896
    Height = 235
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsReporte
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
  object BitExporta: TBitBtn
    Left = 724
    Top = 330
    Width = 82
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Exportar'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = BitExportaClick
    Glyph.Data = {
      F6000000424DF600000000000000760000002800000010000000100000000100
      0400000000008000000000000000000000001000000010000000000000000000
      BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
      DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
      000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
      0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
      080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
    Spacing = 10
  end
  object Bitsalir: TBitBtn
    Left = 814
    Top = 330
    Width = 85
    Height = 27
    Caption = '&Salir'
    TabOrder = 3
    OnClick = BitsalirClick
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
  object dbgexcel: TDBGrid
    Left = 641
    Top = 328
    Width = 80
    Height = 25
    DataSource = DM1.dsReporte
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    Visible = False
  end
  object pnlreporte01: TPanel
    Left = 345
    Top = 7
    Width = 441
    Height = 78
    BorderStyle = bsSingle
    Color = 12114134
    TabOrder = 5
    object Label1: TLabel
      Left = 169
      Top = 14
      Width = 62
      Height = 13
      Caption = 'Fecha inicial:'
    end
    object Label2: TLabel
      Left = 169
      Top = 41
      Width = 55
      Height = 13
      Caption = 'Fecha final:'
    end
    object btnrep01: TBitBtn
      Left = 356
      Top = 5
      Width = 75
      Height = 28
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = btnrep01Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object rgrep01tipfec: TRadioGroup
      Left = 7
      Top = 4
      Width = 146
      Height = 63
      Caption = ' Tipo '
      ItemIndex = 0
      Items.Strings = (
        'Fecha de recepci'#243'n'
        'Fecha de autorizaci'#243'n')
      TabOrder = 1
      OnClick = rgrep01tipfecClick
    end
    object dbdiniciorep01: TwwDBDateTimePicker
      Left = 248
      Top = 11
      Width = 94
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
      OnChange = dbdiniciorep01Change
    end
    object dbdfinalrep01: TwwDBDateTimePicker
      Left = 248
      Top = 37
      Width = 94
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 3
      OnChange = dbdfinalrep01Change
    end
  end
  object pnlreporte02: TPanel
    Left = 337
    Top = 127
    Width = 441
    Height = 78
    BorderStyle = bsSingle
    Color = 12114134
    TabOrder = 6
    object Label4: TLabel
      Left = 10
      Top = 14
      Width = 80
      Height = 13
      Caption = 'Lote a procesar :'
    end
    object btnrep02: TBitBtn
      Left = 351
      Top = 5
      Width = 75
      Height = 28
      Caption = 'Buscar'
      TabOrder = 0
      OnClick = btnrep02Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object dblcdcodenv: TwwDBLookupComboDlg
      Left = 104
      Top = 10
      Width = 68
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsCreditoCab
      LookupField = 'CODGENENV'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdcodenvChange
    end
    object stdatos: TStaticText
      Left = 10
      Top = 40
      Width = 415
      Height = 21
      AutoSize = False
      BorderStyle = sbsSingle
      TabOrder = 2
    end
  end
  object pnlreporte03: TPanel
    Left = 353
    Top = 223
    Width = 441
    Height = 78
    BorderStyle = bsSingle
    Color = 12114134
    TabOrder = 7
    object Label5: TLabel
      Left = 19
      Top = 12
      Width = 62
      Height = 13
      Caption = 'Fecha inicial:'
    end
    object Label7: TLabel
      Left = 19
      Top = 44
      Width = 88
      Height = 13
      Caption = 'Dias de tolerancia:'
    end
    object btnrep03: TBitBtn
      Left = 356
      Top = 5
      Width = 75
      Height = 28
      Caption = 'Buscar'
      TabOrder = 2
      OnClick = btnrep03Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object dbdtpiniciorep03: TwwDBDateTimePicker
      Left = 88
      Top = 8
      Width = 94
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 0
      OnChange = dbdtpiniciorep03Change
      OnExit = dbdtpiniciorep03Exit
    end
    object metolerancia: TMaskEdit
      Left = 114
      Top = 40
      Width = 59
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 3
      TabOrder = 1
      OnChange = metoleranciaChange
    end
  end
  object pnlcanreg: TPanel
    Left = 5
    Top = 328
    Width = 149
    Height = 23
    Alignment = taLeftJustify
    BorderStyle = bsSingle
    TabOrder = 8
  end
end
