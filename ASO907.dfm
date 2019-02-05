object FFiltrarColegios: TFFiltrarColegios
  Left = 403
  Top = 203
  BorderStyle = bsDialog
  Caption = 'Filtrar Colegios'
  ClientHeight = 356
  ClientWidth = 730
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object dbgPrevio: TwwDBGrid
    Left = 7
    Top = 142
    Width = 714
    Height = 169
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsCEdu
    Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnDblClick = dbgPrevioDblClick
  end
  object btnCerrar: TBitBtn
    Left = 642
    Top = 317
    Width = 78
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 1
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
  object rgtipbus: TRadioGroup
    Left = 10
    Top = 35
    Width = 156
    Height = 63
    Caption = ' Filtrar por :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'Ubicaci'#243'n Geografica'
      'Unidad de Gesti'#243'n')
    ParentFont = False
    TabOrder = 2
    OnClick = rgtipbusClick
  end
  object pnlxdepartamento: TPanel
    Left = 175
    Top = 35
    Width = 387
    Height = 99
    Caption = 'pnlxdepartamento'
    Color = 13165023
    TabOrder = 3
    object gbUbiGeo: TGroupBox
      Left = 2
      Top = 2
      Width = 382
      Height = 92
      Caption = ' Por Ubicaci'#243'n Geografica '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 7
        Top = 18
        Width = 80
        Height = 13
        Caption = 'Departamento'
      end
      object Label2: TLabel
        Left = 7
        Top = 43
        Width = 54
        Height = 13
        Caption = 'Provincia'
      end
      object Label3: TLabel
        Left = 7
        Top = 67
        Width = 41
        Height = 13
        Caption = 'Distrito'
      end
      object Label4: TLabel
        Left = 88
        Top = 18
        Width = 5
        Height = 13
        Caption = ':'
      end
      object Label5: TLabel
        Left = 88
        Top = 43
        Width = 5
        Height = 13
        Caption = ':'
      end
      object Label6: TLabel
        Left = 88
        Top = 67
        Width = 5
        Height = 13
        Caption = ':'
      end
      object dblcdDepIde: TwwDBLookupComboDlg
        Left = 95
        Top = 16
        Width = 43
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsDpto
        LookupField = 'DPTOID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdDepIdeExit
      end
      object dblcdProIde: TwwDBLookupComboDlg
        Left = 95
        Top = 40
        Width = 53
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsProvin
        LookupField = 'CIUDID'
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdProIdeExit
      end
      object dblcdDisIde: TwwDBLookupComboDlg
        Left = 95
        Top = 64
        Width = 63
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsDist
        LookupField = 'ZIPID'
        ParentFont = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdDisIdeExit
      end
      object Panel2: TPanel
        Left = 160
        Top = 16
        Width = 216
        Height = 21
        Caption = 'Panel2'
        TabOrder = 3
        object EdtDesDep: TEdit
          Left = 1
          Top = 1
          Width = 214
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel3: TPanel
        Left = 160
        Top = 40
        Width = 216
        Height = 21
        Caption = 'Panel2'
        TabOrder = 4
        object EdtDesPro: TEdit
          Left = 1
          Top = 1
          Width = 214
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 160
        Top = 64
        Width = 216
        Height = 21
        Caption = 'Panel2'
        TabOrder = 5
        object EdtDesDis: TEdit
          Left = 1
          Top = 1
          Width = 214
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object pnlxUniGes: TPanel
    Left = 583
    Top = 18
    Width = 387
    Height = 99
    Caption = 'pnlxdepartamento'
    Color = 13165023
    TabOrder = 4
    object gbUbiUniGes: TGroupBox
      Left = 3
      Top = 1
      Width = 382
      Height = 94
      Caption = ' Por Unidad de Gesti'#243'n '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label7: TLabel
        Left = 7
        Top = 18
        Width = 69
        Height = 13
        Caption = 'Uni. de Pro.'
      end
      object Label8: TLabel
        Left = 7
        Top = 43
        Width = 72
        Height = 13
        Caption = 'Uni. de Pag.'
      end
      object Label9: TLabel
        Left = 7
        Top = 67
        Width = 72
        Height = 13
        Caption = 'Uni. de Ges.'
      end
      object Label10: TLabel
        Left = 88
        Top = 18
        Width = 5
        Height = 13
        Caption = ':'
      end
      object Label11: TLabel
        Left = 88
        Top = 43
        Width = 5
        Height = 13
        Caption = ':'
      end
      object Label12: TLabel
        Left = 88
        Top = 67
        Width = 5
        Height = 13
        Caption = ':'
      end
      object dblcdUniPro: TwwDBLookupComboDlg
        Left = 95
        Top = 16
        Width = 51
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsUPro
        LookupField = 'UPROID'
        ParentFont = False
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUniProExit
      end
      object dblcdUniPag: TwwDBLookupComboDlg
        Left = 95
        Top = 40
        Width = 51
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsUPago
        LookupField = 'UPAGOID'
        ParentFont = False
        TabOrder = 1
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUniPagExit
      end
      object dblcdUniGes: TwwDBLookupComboDlg
        Left = 95
        Top = 64
        Width = 51
        Height = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsUSE
        LookupField = 'USEID'
        ParentFont = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnExit = dblcdUniGesExit
      end
      object Panel7: TPanel
        Left = 160
        Top = 16
        Width = 216
        Height = 21
        Caption = 'Panel2'
        TabOrder = 3
        object EdtUniProDes: TEdit
          Left = 1
          Top = 1
          Width = 214
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel8: TPanel
        Left = 160
        Top = 40
        Width = 216
        Height = 21
        Caption = 'Panel2'
        TabOrder = 4
        object EdtUniPagDes: TEdit
          Left = 1
          Top = 1
          Width = 214
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel9: TPanel
        Left = 160
        Top = 64
        Width = 216
        Height = 21
        Caption = 'Panel2'
        TabOrder = 5
        object EdtUnigesDes: TEdit
          Left = 1
          Top = 1
          Width = 214
          Height = 23
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 6
    Top = 6
    Width = 409
    Height = 23
    Caption = 'Panel5'
    TabOrder = 5
    object meDesCol: TMaskEdit
      Left = 1
      Top = 1
      Width = 406
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object btnFiltrar: TBitBtn
    Left = 427
    Top = 3
    Width = 78
    Height = 28
    Caption = 'Filtrar'
    TabOrder = 6
    OnClick = btnFiltrarClick
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
end
