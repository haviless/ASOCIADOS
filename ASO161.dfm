object fimptexto: Tfimptexto
  Left = 384
  Top = 161
  ActiveControl = dblcddptoid
  BorderStyle = bsDialog
  Caption = 'Migrar informaci'#243'n'
  ClientHeight = 293
  ClientWidth = 527
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbDriver: TGroupBox
    Left = 3
    Top = 108
    Width = 518
    Height = 180
    Caption = ' Informaci'#243'n a descargar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object dcbarcmig: TDriveComboBox
      Left = 7
      Top = 17
      Width = 137
      Height = 19
      DirList = dbbarcmig
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object dbbarcmig: TDirectoryListBox
      Left = 7
      Top = 41
      Width = 264
      Height = 133
      FileList = flbarcmig
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
    end
    object flbarcmig: TFileListBox
      Left = 276
      Top = 17
      Width = 153
      Height = 113
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      Mask = '*.TXT'
      ParentFont = False
      TabOrder = 2
    end
    object btnprocesar: TBitBtn
      Left = 434
      Top = 17
      Width = 78
      Height = 28
      Caption = 'Migrar'
      TabOrder = 3
      OnClick = btnprocesarClick
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
    object btnSalir: TBitBtn
      Left = 434
      Top = 49
      Width = 78
      Height = 28
      Caption = 'Salir'
      TabOrder = 4
      OnClick = btnSalirClick
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
    object Edit1: TEdit
      Left = 436
      Top = 88
      Width = 33
      Height = 22
      TabOrder = 5
      Text = 'Edit1'
      Visible = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 3
    Top = 2
    Width = 335
    Height = 106
    Caption = ' Informaci'#243'n a migrar '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 21
      Top = 22
      Width = 71
      Height = 15
      Caption = 'Departamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 98
      Top = 22
      Width = 3
      Height = 15
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 107
      Top = 79
      Width = 20
      Height = 15
      Caption = 'A'#241'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 210
      Top = 79
      Width = 21
      Height = 15
      Caption = 'Mes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 136
      Top = 79
      Width = 3
      Height = 15
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 239
      Top = 79
      Width = 3
      Height = 15
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 52
      Width = 78
      Height = 15
      Caption = 'Tipo de planilla'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 98
      Top = 51
      Width = 3
      Height = 15
      Caption = ':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcddptoid: TwwDBLookupComboDlg
      Left = 107
      Top = 18
      Width = 45
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcddptoidExit
    end
    object Panel1: TPanel
      Left = 158
      Top = 18
      Width = 173
      Height = 24
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 4
      object medptodes: TMaskEdit
        Left = 1
        Top = 1
        Width = 170
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object seano: TSpinEdit
      Left = 144
      Top = 76
      Width = 57
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxValue = 2020
      MinValue = 2007
      ParentFont = False
      TabOrder = 2
      Value = 2008
    end
    object semes: TSpinEdit
      Left = 249
      Top = 76
      Width = 43
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      MaxValue = 12
      MinValue = 1
      ParentFont = False
      TabOrder = 3
      Value = 1
    end
    object dblcdasotipid: TwwDBLookupComboDlg
      Left = 107
      Top = 47
      Width = 47
      Height = 22
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTAso
      LookupField = 'ASOTIPID'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdasotipidExit
    end
    object Panel2: TPanel
      Left = 158
      Top = 46
      Width = 173
      Height = 24
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 5
      object measotipdes: TMaskEdit
        Left = 1
        Top = 1
        Width = 170
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object pnlBar: TPanel
    Left = 358
    Top = 262
    Width = 157
    Height = 22
    Caption = 'Por Archivo'
    TabOrder = 2
    object pbData: TProgressBar
      Left = 3
      Top = 3
      Width = 151
      Height = 16
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 347
    Top = 2
    Width = 174
    Height = 106
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object lblNumero: TLabel
      Left = 69
      Top = 26
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
    object Label9: TLabel
      Left = 13
      Top = 23
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
    object Label10: TLabel
      Left = 13
      Top = 55
      Width = 45
      Height = 15
      Caption = 'Periodo: '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblPeriodo: TLabel
      Left = 69
      Top = 58
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
  end
end
