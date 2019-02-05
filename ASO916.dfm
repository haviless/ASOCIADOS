object FNueManDom: TFNueManDom
  Left = 437
  Top = 249
  BorderStyle = bsDialog
  Caption = 'Mantenimiento de Direcci'#243'n'
  ClientHeight = 379
  ClientWidth = 753
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
  object Label15: TLabel
    Left = 14
    Top = 241
    Width = 127
    Height = 13
    Caption = 'Referencia (Dato Derrama)'
  end
  object Label16: TLabel
    Left = 14
    Top = 284
    Width = 70
    Height = 13
    Caption = 'Departamento:'
  end
  object Label17: TLabel
    Left = 230
    Top = 284
    Width = 47
    Height = 13
    Caption = 'Provincia:'
  end
  object Label18: TLabel
    Left = 463
    Top = 284
    Width = 35
    Height = 13
    Caption = 'Distrito:'
  end
  object measodir: TMaskEdit
    Left = 9
    Top = 7
    Width = 736
    Height = 19
    Color = 16776176
    Ctl3D = False
    Enabled = False
    ParentCtl3D = False
    TabOrder = 9
  end
  object gbdireccion: TGroupBox
    Left = 9
    Top = 35
    Width = 716
    Height = 63
    Caption = ' Direcci'#243'n: '
    TabOrder = 0
    object Label4: TLabel
      Left = 6
      Top = 14
      Width = 32
      Height = 13
      Caption = 'Prefijo:'
    end
    object Label9: TLabel
      Left = 669
      Top = 14
      Width = 40
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object Label1: TLabel
      Left = 166
      Top = 14
      Width = 40
      Height = 13
      Caption = 'Nombre:'
    end
    object medespredir: TMaskEdit
      Left = 53
      Top = 33
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 3
    end
    object menomdir: TMaskEdit
      Left = 166
      Top = 33
      Width = 489
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 45
      TabOrder = 1
    end
    object menumdir: TMaskEdit
      Left = 669
      Top = 33
      Width = 37
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 4
      TabOrder = 2
    end
    object dlcdPreDir: TwwDBLookupComboDlg
      Left = 6
      Top = 33
      Width = 41
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsCia
      LookupField = 'CODDIR'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dlcdPreDirChange
      OnExit = dlcdPreDirExit
    end
  end
  object gbblock: TGroupBox
    Left = 9
    Top = 169
    Width = 227
    Height = 63
    Caption = 'Block/Chalet '
    TabOrder = 2
    object Label5: TLabel
      Left = 20
      Top = 14
      Width = 32
      Height = 13
      Caption = 'Prefijo:'
    end
    object Label6: TLabel
      Left = 177
      Top = 14
      Width = 40
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object dblcdPreBloCha: TwwDBLookupComboDlg
      Left = 6
      Top = 33
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
      LookupField = 'CODBLO'
      Color = clWhite
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdPreBloChaChange
      OnExit = dblcdPreBloChaExit
    end
    object mePreBloChaDes: TMaskEdit
      Left = 67
      Top = 33
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 2
    end
    object mePreBloChaNum: TMaskEdit
      Left = 177
      Top = 33
      Width = 37
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 50
      TabOrder = 1
    end
  end
  object gbdpto: TGroupBox
    Left = 246
    Top = 169
    Width = 228
    Height = 63
    Caption = ' Dpto./Edif./Piso/Int.  '
    TabOrder = 3
    object Label8: TLabel
      Left = 20
      Top = 14
      Width = 32
      Height = 13
      Caption = 'Prefijo:'
    end
    object Label10: TLabel
      Left = 178
      Top = 14
      Width = 40
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object dblcdPreDepEdi: TwwDBLookupComboDlg
      Left = 20
      Top = 33
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTZona
      LookupField = 'CODDEP'
      Color = clWhite
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdPreDepEdiChange
      OnExit = dblcdPreDepEdiExit
    end
    object mePreDepEdiDes: TMaskEdit
      Left = 67
      Top = 33
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 2
    end
    object meDepEdiNum: TMaskEdit
      Left = 178
      Top = 33
      Width = 37
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 50
      TabOrder = 1
    end
  end
  object gburb: TGroupBox
    Left = 9
    Top = 101
    Width = 480
    Height = 63
    Caption = 'Urb./Cond./Res. '
    TabOrder = 1
    object Label12: TLabel
      Left = 20
      Top = 16
      Width = 32
      Height = 13
      Caption = 'Prefijo:'
    end
    object Label13: TLabel
      Left = 433
      Top = 16
      Width = 28
      Height = 13
      Caption = 'Etapa'
    end
    object Label14: TLabel
      Left = 180
      Top = 16
      Width = 40
      Height = 13
      Caption = 'Nombre:'
    end
    object dblcdPreUrbCon: TwwDBLookupComboDlg
      Left = 6
      Top = 35
      Width = 41
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsBcos
      LookupField = 'CODURB'
      Color = clWhite
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdPreUrbConChange
      OnExit = dblcdPreUrbConExit
    end
    object mePreUrbConDes: TMaskEdit
      Left = 67
      Top = 35
      Width = 106
      Height = 21
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 3
    end
    object meUrbConDes: TMaskEdit
      Left = 180
      Top = 35
      Width = 245
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 50
      TabOrder = 1
    end
    object meUrbConNum: TMaskEdit
      Left = 433
      Top = 35
      Width = 37
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 50
      TabOrder = 2
    end
  end
  object merefdir: TMaskEdit
    Left = 14
    Top = 258
    Width = 692
    Height = 21
    CharCase = ecUpperCase
    Color = clWhite
    MaxLength = 65
    TabOrder = 5
  end
  object dblcdcoddep: TwwDBLookupComboDlg
    Left = 14
    Top = 301
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
    Color = clWhite
    MaxLength = 2
    TabOrder = 6
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnExit = dblcdcoddepExit
  end
  object medesdep: TMaskEdit
    Left = 59
    Top = 301
    Width = 168
    Height = 21
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 10
  end
  object dblcdcodpro: TwwDBLookupComboDlg
    Left = 230
    Top = 301
    Width = 51
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
    TabOrder = 7
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnExit = dblcdcodproExit
  end
  object medespro: TMaskEdit
    Left = 287
    Top = 301
    Width = 170
    Height = 21
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 11
  end
  object dblcdcoddis: TwwDBLookupComboDlg
    Left = 463
    Top = 301
    Width = 64
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
    TabOrder = 8
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnExit = dblcdcoddisExit
  end
  object medesdis: TMaskEdit
    Left = 534
    Top = 301
    Width = 168
    Height = 21
    CharCase = ecUpperCase
    Color = 15132390
    Enabled = False
    TabOrder = 12
  end
  object btneditar: TBitBtn
    Left = 508
    Top = 342
    Width = 75
    Height = 28
    Caption = 'Editar'
    TabOrder = 13
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
  object btngrabar: TBitBtn
    Left = 588
    Top = 342
    Width = 75
    Height = 28
    Caption = 'Grabar'
    TabOrder = 14
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
    Left = 668
    Top = 342
    Width = 75
    Height = 28
    Caption = 'Cerrar'
    TabOrder = 15
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
  object gbmanlot: TGroupBox
    Left = 487
    Top = 169
    Width = 138
    Height = 63
    Caption = 'Manzana / Lote '
    TabOrder = 4
    object Label2: TLabel
      Left = 10
      Top = 16
      Width = 47
      Height = 13
      Caption = 'Manzana:'
    end
    object Label3: TLabel
      Left = 81
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Lote:'
    end
    object memandir: TMaskEdit
      Left = 10
      Top = 35
      Width = 37
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 50
      TabOrder = 0
    end
    object melotdir: TMaskEdit
      Left = 81
      Top = 35
      Width = 37
      Height = 21
      CharCase = ecUpperCase
      Color = clWhite
      MaxLength = 50
      TabOrder = 1
    end
  end
end
