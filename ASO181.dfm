object FCambioTipoAsociado: TFCambioTipoAsociado
  Left = 191
  Top = 152
  Width = 774
  Height = 536
  BorderWidth = 3
  Caption = 'Cambio de Tipo de Asociado'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel3: TPanel
    Left = 0
    Top = 459
    Width = 752
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      752
      33)
    object btnSalir: TBitBtn
      Left = 658
      Top = 5
      Width = 91
      Height = 27
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&Salir'
      TabOrder = 0
      OnClick = btnSalirClick
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 752
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object lblCantRegistros: TLabel
      Left = 306
      Top = 70
      Width = 110
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = '0 Registros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 298
      Height = 41
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      object Label1: TLabel
        Left = 2
        Top = 2
        Width = 181
        Height = 13
        Caption = 'Tipo de Asociado en el Maestro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtTipoAsociadoMaestro: TMaskEdit
        Left = 50
        Top = 17
        Width = 245
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object cbTipoAsociadoMaestro: TwwDBLookupComboDlg
        Left = 1
        Top = 17
        Width = 49
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = cbTipoAsociadoMaestroExit
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 45
      Width = 298
      Height = 41
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object Label2: TLabel
        Left = 2
        Top = 2
        Width = 176
        Height = 13
        Caption = 'Tipo de Asociado en el Padr'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edtTipoAsociadoPadron: TMaskEdit
        Left = 50
        Top = 17
        Width = 245
        Height = 21
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object cbTipoAsociadoPadron: TwwDBLookupComboDlg
        Left = 1
        Top = 17
        Width = 49
        Height = 21
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = cbTipoAsociadoPadronExit
      end
    end
    object btnFiltroTipo: TBitBtn
      Left = 306
      Top = 8
      Width = 135
      Height = 59
      Cursor = crHandPoint
      Caption = 'Filtro por Tipo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnFiltroTipoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object btnBuscarAsociado: TBitBtn
      Left = 447
      Top = 8
      Width = 154
      Height = 59
      Cursor = crHandPoint
      Caption = 'Buscar Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial Rounded MT Bold'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnBuscarAsociadoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
  end
  object dbgUniverso: TwwDBGrid
    Left = 0
    Top = 89
    Width = 752
    Height = 370
    Cursor = crHandPoint
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = 16053492
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clInfoText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
    ParentFont = False
    TabOrder = 2
    TitleAlignment = taCenter
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -12
    TitleFont.Name = 'Arial Rounded MT Bold'
    TitleFont.Style = []
    TitleLines = 3
    TitleButtons = False
    OnDblClick = dbgUniversoDblClick
    PaintOptions.AlternatingRowColor = 16053492
  end
end
