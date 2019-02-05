object fmandom: Tfmandom
  Left = 332
  Top = 236
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Mantenimiento de domicilio'
  ClientHeight = 322
  ClientWidth = 709
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
  object Label1: TLabel
    Left = 8
    Top = 114
    Width = 89
    Height = 13
    Caption = 'calle/avenida/jiron'
  end
  object Label2: TLabel
    Left = 211
    Top = 114
    Width = 127
    Height = 13
    Caption = 'nombre calle/avenida/jiron'
  end
  object Label3: TLabel
    Left = 644
    Top = 114
    Width = 35
    Height = 13
    Caption = 'n'#250'mero'
  end
  object lblmanzana: TLabel
    Left = 117
    Top = 157
    Width = 3
    Height = 13
  end
  object lbllote: TLabel
    Left = 181
    Top = 157
    Width = 3
    Height = 13
  end
  object Label6: TLabel
    Left = 243
    Top = 157
    Width = 57
    Height = 13
    Caption = 'tipo dpto/int'
  end
  object lblintlet: TLabel
    Left = 355
    Top = 157
    Width = 3
    Height = 13
  end
  object Label8: TLabel
    Left = 8
    Top = 29
    Width = 65
    Height = 13
    Caption = 'Tipo de  lugar'
  end
  object Label9: TLabel
    Left = 264
    Top = 28
    Width = 56
    Height = 13
    Caption = 'Descripci'#243'n'
  end
  object Label10: TLabel
    Left = 8
    Top = 71
    Width = 61
    Height = 13
    Caption = 'sector/etapa'
  end
  object Label11: TLabel
    Left = 104
    Top = 71
    Width = 99
    Height = 13
    Caption = 'nombre sector/etapa'
  end
  object Label12: TLabel
    Left = 8
    Top = 242
    Width = 65
    Height = 13
    Caption = 'departamento'
  end
  object Label13: TLabel
    Left = 223
    Top = 242
    Width = 43
    Height = 13
    Caption = 'provincia'
  end
  object Label14: TLabel
    Left = 456
    Top = 242
    Width = 30
    Height = 13
    Caption = 'distrito'
  end
  object Label15: TLabel
    Left = 8
    Top = 198
    Width = 47
    Height = 13
    Caption = 'referencia'
  end
  object Label16: TLabel
    Left = 8
    Top = 157
    Width = 73
    Height = 13
    Caption = 'Mz./Edif./Bock'
  end
  object medescal: TMaskEdit
    Left = 211
    Top = 129
    Width = 422
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 45
    TabOrder = 7
    OnKeyPress = medescalKeyPress
  end
  object menumdir: TMaskEdit
    Left = 644
    Top = 129
    Width = 56
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    MaxLength = 6
    TabOrder = 8
  end
  object cbpiso: TComboBox
    Left = 243
    Top = 173
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    OnExit = cbpisoExit
    Items.Strings = (
      'Ninguno'
      'INTERIOR'
      'LETRA'
      'DPTO')
  end
  object cbseceta: TComboBox
    Left = 8
    Top = 87
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    OnChange = cbsecetaChange
    OnExit = cbsecetaExit
    Items.Strings = (
      'Ninguno'
      'ZONA'
      'ETAPA'
      'SECTOR'
      'GRUPO')
  end
  object dblccodtiplug: TwwDBLookupComboDlg
    Left = 8
    Top = 129
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsCViv
    LookupField = 'CODTIPLUG'
    MaxLength = 2
    TabOrder = 5
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblccodtiplugChange
    OnExit = dblccodtiplugExit
  end
  object medestiplug: TMaskEdit
    Left = 55
    Top = 129
    Width = 146
    Height = 21
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 6
  end
  object dblccodurb: TwwDBLookupComboDlg
    Left = 8
    Top = 46
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsCia
    LookupField = 'CODURB'
    MaxLength = 2
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblccodurbChange
    OnExit = dblccodurbExit
  end
  object medesurb: TMaskEdit
    Left = 55
    Top = 46
    Width = 203
    Height = 21
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 1
  end
  object memanzana: TMaskEdit
    Left = 117
    Top = 173
    Width = 56
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    MaxLength = 6
    TabOrder = 10
    OnExit = memanzanaExit
  end
  object melote: TMaskEdit
    Left = 181
    Top = 173
    Width = 56
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    MaxLength = 6
    TabOrder = 11
  end
  object menumpiso: TMaskEdit
    Left = 355
    Top = 173
    Width = 56
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    MaxLength = 6
    TabOrder = 13
  end
  object merefdir: TMaskEdit
    Left = 8
    Top = 215
    Width = 692
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 65
    TabOrder = 14
  end
  object menomurb: TMaskEdit
    Left = 264
    Top = 46
    Width = 434
    Height = 21
    CharCase = ecUpperCase
    MaxLength = 50
    TabOrder = 2
  end
  object menomsec: TMaskEdit
    Left = 104
    Top = 87
    Width = 417
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    MaxLength = 50
    TabOrder = 4
  end
  object dblcdcoddep: TwwDBLookupComboDlg
    Left = 8
    Top = 258
    Width = 41
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsDpto
    LookupField = 'DPTOID'
    MaxLength = 2
    TabOrder = 15
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblcdcoddepChange
    OnExit = dblcdcoddepExit
  end
  object medesdep: TMaskEdit
    Left = 52
    Top = 258
    Width = 168
    Height = 21
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 16
  end
  object dblcdcodpro: TwwDBLookupComboDlg
    Left = 223
    Top = 258
    Width = 50
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsProvin
    LookupField = 'CIUDID'
    Color = clWhite
    MaxLength = 4
    TabOrder = 17
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblcdcodproChange
    OnExit = dblcdcodproExit
  end
  object medespro: TMaskEdit
    Left = 275
    Top = 258
    Width = 178
    Height = 21
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 18
  end
  object dblcdcoddis: TwwDBLookupComboDlg
    Left = 456
    Top = 258
    Width = 66
    Height = 21
    CharCase = ecUpperCase
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsDist
    LookupField = 'ZIPID'
    Color = clWhite
    MaxLength = 6
    TabOrder = 19
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnExit = dblcdcoddisExit
  end
  object medesdis: TMaskEdit
    Left = 526
    Top = 258
    Width = 176
    Height = 21
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 20
  end
  object btngrabar: TBitBtn
    Left = 516
    Top = 286
    Width = 75
    Height = 28
    Caption = 'Grabar'
    TabOrder = 21
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
    Left = 627
    Top = 286
    Width = 75
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 22
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
    Left = 436
    Top = 286
    Width = 75
    Height = 28
    Caption = 'Editar'
    TabOrder = 23
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
  object measodir: TMaskEdit
    Left = 8
    Top = 4
    Width = 691
    Height = 19
    Color = 16776176
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 24
  end
  object cbtipman: TComboBox
    Left = 8
    Top = 173
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    OnExit = cbtipmanExit
    Items.Strings = (
      'Ninguno'
      'MANZANA'
      'EDIFICIO'
      'BLOCK')
  end
end
