object FManTel: TFManTel
  Left = 679
  Top = 291
  BorderStyle = bsDialog
  Caption = 'Mantenimiento de Tel'#233'fonos'
  ClientHeight = 166
  ClientWidth = 441
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btngrabar: TBitBtn
    Left = 275
    Top = 126
    Width = 75
    Height = 28
    Caption = 'Grabar'
    TabOrder = 11
    OnClick = btngrabarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
      7700333333337777777733333333008088003333333377F73377333333330088
      88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
      000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
      FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
      99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
  end
  object btncancelar: TBitBtn
    Left = 355
    Top = 126
    Width = 75
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 12
    OnClick = btncancelarClick
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
  object btneditar: TBitBtn
    Left = 195
    Top = 126
    Width = 75
    Height = 28
    Caption = 'Editar'
    TabOrder = 10
    OnClick = btneditarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object dblcdTipoTel1: TwwDBLookupComboDlg
    Left = 8
    Top = 26
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Tipo'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsTipTel01
    LookupField = 'CODTIPTEL'
    Enabled = False
    MaxLength = 2
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblcdTipoTel1Change
  end
  object edtTipoTel1: TMaskEdit
    Left = 52
    Top = 26
    Width = 109
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 1
  end
  object dblcdPropTel1: TwwDBLookupComboDlg
    Left = 272
    Top = 26
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Propietario'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsPropTel1
    LookupField = 'CODREFTEL'
    Enabled = False
    MaxLength = 2
    TabOrder = 3
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblcdPropTel1Change
  end
  object edtPropTel1: TMaskEdit
    Left = 316
    Top = 26
    Width = 109
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 4
  end
  object edtTel1: TwwDBEdit
    Left = 165
    Top = 25
    Width = 100
    Height = 21
    Color = clWhite
    DataField = 'ASOTELF1'
    DataSource = DM1.dsAso
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnKeyPress = edtTel1KeyPress
  end
  object dblcdTipoTel2: TwwDBLookupComboDlg
    Left = 8
    Top = 74
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Tipo'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsTipTel02
    LookupField = 'CODTIPTEL'
    Enabled = False
    MaxLength = 2
    TabOrder = 5
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblcdTipoTel2Change
  end
  object edtTipoTel2: TMaskEdit
    Left = 52
    Top = 74
    Width = 109
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 6
  end
  object dblcdPropTel2: TwwDBLookupComboDlg
    Left = 272
    Top = 74
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Propietario'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsPropTel2
    LookupField = 'CODREFTEL'
    Enabled = False
    MaxLength = 2
    TabOrder = 8
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblcdPropTel2Change
  end
  object edtPropTel2: TMaskEdit
    Left = 316
    Top = 74
    Width = 109
    Height = 21
    TabStop = False
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 9
  end
  object edtTel2: TwwDBEdit
    Left = 165
    Top = 73
    Width = 100
    Height = 21
    Color = clWhite
    DataField = 'ASOTELF2'
    DataSource = DM1.dsAso
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
    OnKeyPress = edtTel2KeyPress
  end
end
