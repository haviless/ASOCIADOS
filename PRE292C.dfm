object FNueSegExp: TFNueSegExp
  Left = 5
  Top = 218
  BorderStyle = bsDialog
  Caption = 'Consulta de Seguimiento'
  ClientHeight = 383
  ClientWidth = 819
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgSegExp: TwwDBGrid
    Left = 8
    Top = 102
    Width = 801
    Height = 236
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsFonSolDet
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
    Left = 733
    Top = 345
    Width = 76
    Height = 30
    Caption = 'Cerrar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Century Gothic'
    Font.Style = []
    ParentFont = False
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
  object GroupBox1: TGroupBox
    Left = 6
    Top = 4
    Width = 803
    Height = 93
    Caption = ' Datos del expediente '
    TabOrder = 2
    object Label1: TLabel
      Left = 11
      Top = 26
      Width = 113
      Height = 13
      Caption = 'N'#250'mero de expediente :'
    end
    object Label2: TLabel
      Left = 11
      Top = 47
      Width = 90
      Height = 13
      Caption = 'Fecha de Registro:'
    end
    object Label3: TLabel
      Left = 11
      Top = 67
      Width = 97
      Height = 13
      Caption = 'Usuario que registra:'
    end
    object Label4: TLabel
      Left = 283
      Top = 26
      Width = 171
      Height = 13
      Caption = 'Apellidos y nombre(s) del  asociado :'
    end
    object stNumExp: TStaticText
      Left = 132
      Top = 24
      Width = 137
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Color = clWhite
      ParentColor = False
      TabOrder = 0
    end
    object stFecreg: TStaticText
      Left = 132
      Top = 44
      Width = 137
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Color = clWhite
      ParentColor = False
      TabOrder = 1
    end
    object stUsuReg: TStaticText
      Left = 132
      Top = 64
      Width = 137
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Color = clWhite
      ParentColor = False
      TabOrder = 2
    end
    object stasoapenom: TStaticText
      Left = 459
      Top = 24
      Width = 336
      Height = 19
      AutoSize = False
      BorderStyle = sbsSingle
      Color = clWhite
      ParentColor = False
      TabOrder = 3
    end
  end
end
