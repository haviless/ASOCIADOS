object FUnificacion: TFUnificacion
  Left = 284
  Top = 130
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Unificaci'#243'n'
  ClientHeight = 545
  ClientWidth = 792
  Color = 13165023
  Font.Charset = ANSI_CHARSET
  Font.Color = clNavy
  Font.Height = -11
  Font.Name = 'Comic Sans MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 15
  object ImagAso1: TImage
    Left = 160
    Top = 422
    Width = 87
    Height = 94
    Cursor = crHandPoint
    Hint = 'Click Para Maximizar'
    ParentShowHint = False
    ShowHint = True
    Stretch = True
  end
  object ImagAso2: TImage
    Left = 464
    Top = 422
    Width = 89
    Height = 94
    Cursor = crHandPoint
    Hint = 'Click Para Maximizar'
    ParentShowHint = False
    ShowHint = True
    Stretch = True
  end
  object gbxAsociado1: TGroupBox
    Left = 0
    Top = 0
    Width = 792
    Height = 106
    Align = alTop
    Caption = 'ASOCIADO CORRECTO'
    TabOrder = 0
    object TLabel
      Left = 405
      Top = 16
      Width = 80
      Height = 15
      Caption = 'Codigo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 5
      Top = 16
      Width = 36
      Height = 15
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 533
      Top = 16
      Width = 82
      Height = 15
      Caption = 'Codigo Derrama'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 453
      Top = 61
      Width = 23
      Height = 15
      Caption = 'USE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 237
      Top = 61
      Width = 78
      Height = 15
      Caption = 'Unidad de Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 5
      Top = 61
      Width = 94
      Height = 15
      Caption = 'Unidad de Proceso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 661
      Top = 16
      Width = 23
      Height = 15
      Caption = 'DNI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbeApeNom: TwwDBEdit
      Left = 5
      Top = 31
      Width = 379
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'ASOAPENOM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = EnterGenerico
      OnExit = dbeApeNomExit
    end
    object dbeCodMod: TwwDBEdit
      Left = 400
      Top = 31
      Width = 113
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'ASOCODMOD'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = EnterGenerico
      OnExit = dbeCodModExit
    end
    object dbeCodigo: TwwDBEdit
      Left = 522
      Top = 31
      Width = 125
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'ASOID'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtBuscaUse: TEdit
      Left = 513
      Top = 77
      Width = 157
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dblcdBuscaUse: TwwDBLookupComboDlg
      Left = 453
      Top = 78
      Width = 58
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'USES'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'USEID'#9'3'#9'ID'#9'F'
        'USENOM'#9'75'#9'DESCRIPChhh'#9'F')
      LookupField = 'USEID'
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AutoSelect = False
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = True
      UseTFields = False
      ShowMatchText = True
    end
    object dblcdUPago: TwwDBLookupComboDlg
      Left = 237
      Top = 78
      Width = 58
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'U. de Pago'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'UPAGOID'#9'3'#9'Id'#9'F'
        'UPAGOABR'#9'15'#9'Nombre'#9'F')
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AutoSelect = False
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = True
      UseTFields = False
      ShowMatchText = True
    end
    object edtUnPago: TEdit
      Left = 297
      Top = 77
      Width = 149
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dblcdUProceso: TwwDBLookupComboDlg
      Left = 5
      Top = 78
      Width = 58
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'U. de  Proceso'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'UPROID'#9'3'#9'Id'#9'F'
        'UPROABR'#9'15'#9'Nombre'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AutoSelect = False
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 7
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = True
      UseTFields = False
      ShowMatchText = True
    end
    object edtUProceso: TEdit
      Left = 73
      Top = 77
      Width = 157
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object dbeDNI: TwwDBEdit
      Left = 661
      Top = 31
      Width = 125
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'ASOID'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object gbxAsociado2: TGroupBox
    Left = 0
    Top = 106
    Width = 792
    Height = 106
    Align = alTop
    Caption = 'ASOCIADO A CORREGIR'
    TabOrder = 1
    object TLabel
      Left = 405
      Top = 16
      Width = 80
      Height = 15
      Caption = 'Codigo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 5
      Top = 16
      Width = 36
      Height = 15
      Caption = 'Cliente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 533
      Top = 16
      Width = 82
      Height = 15
      Caption = 'Codigo Derrama'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 453
      Top = 61
      Width = 23
      Height = 15
      Caption = 'USE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 237
      Top = 61
      Width = 78
      Height = 15
      Caption = 'Unidad de Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 5
      Top = 61
      Width = 94
      Height = 15
      Caption = 'Unidad de Proceso'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 661
      Top = 16
      Width = 23
      Height = 15
      Caption = 'DNI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbeApeNom2: TwwDBEdit
      Left = 5
      Top = 31
      Width = 379
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'ASOAPENOM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = EnterGenerico
      OnExit = dbeApeNom2Exit
    end
    object dbeCodMod2: TwwDBEdit
      Left = 400
      Top = 31
      Width = 113
      Height = 21
      AutoFillDate = False
      AutoSelect = False
      AutoSize = False
      BorderStyle = bsNone
      CharCase = ecUpperCase
      Color = 13165023
      DataField = 'ASOCODMOD'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnEnter = EnterGenerico
      OnExit = dbeCodMod2Exit
    end
    object dbeCodigo2: TwwDBEdit
      Left = 522
      Top = 31
      Width = 125
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'ASOID'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtBuscaUse2: TEdit
      Left = 513
      Top = 77
      Width = 157
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object dblcdBuscaUse2: TwwDBLookupComboDlg
      Left = 453
      Top = 78
      Width = 58
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'USES'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'USEID'#9'3'#9'ID'#9'F'
        'USENOM'#9'75'#9'DESCRIPChhh'#9'F')
      LookupField = 'USEID'
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AutoSelect = False
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = True
      UseTFields = False
      ShowMatchText = True
    end
    object dblcdUPago2: TwwDBLookupComboDlg
      Left = 237
      Top = 78
      Width = 58
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'U. de Pago'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'UPAGOID'#9'3'#9'Id'#9'F'
        'UPAGOABR'#9'15'#9'Nombre'#9'F')
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AutoSelect = False
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = True
      UseTFields = False
      ShowMatchText = True
    end
    object edtUnPago2: TEdit
      Left = 297
      Top = 77
      Width = 149
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object dblcdUProceso2: TwwDBLookupComboDlg
      Left = 5
      Top = 78
      Width = 58
      Height = 21
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      CharCase = ecUpperCase
      BorderStyle = bsNone
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'U. de  Proceso'
      MaxWidth = 0
      MaxHeight = 209
      SearchDelay = 2
      Selected.Strings = (
        'UPROID'#9'3'#9'Id'#9'F'
        'UPROABR'#9'15'#9'Nombre'#9'F')
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      AutoSelect = False
      Color = 13165023
      Enabled = False
      Frame.Enabled = True
      Frame.FocusBorders = [efRightBorder, efBottomBorder]
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 7
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = True
      UseTFields = False
      ShowMatchText = True
    end
    object edtUProceso2: TEdit
      Left = 73
      Top = 77
      Width = 157
      Height = 23
      CharCase = ecUpperCase
      Color = 13165023
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object dbeDNI2: TwwDBEdit
      Left = 661
      Top = 31
      Width = 125
      Height = 21
      BorderStyle = bsNone
      Color = 13165023
      DataField = 'ASOID'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 212
    Width = 792
    Height = 29
    Align = alTop
    Color = 10207162
    TabOrder = 2
    object z2bbtnVisualizar: TfcShapeBtn
      Left = 620
      Top = 3
      Width = 166
      Height = 24
      Caption = 'Visualizar Aportes'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
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
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsFlat
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnVisualizarClick
    end
    object Z2bbtnRecuperar: TfcShapeBtn
      Left = 451
      Top = 3
      Width = 166
      Height = 24
      Caption = 'Recuperar Datos'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FFFFFFFFFFF
        FFFF33333333333FFFFF3FFFFFFFFF00000F333333333377777F33FFFFFFFF09
        990F33333333337F337F333FFFFFFF09990F33333333337F337F3333FFFFFF09
        990F33333333337FFF7F33333FFFFF00000F3333333333777773333333FFFFFF
        FFFF3FFFFF3333333F330000033FFFFF0FFF77777F3333337FF30EEE0333FFF0
        00FF7F337FFF333777FF0EEE00033F00000F7F33777F3777777F0EEE0E033000
        00007FFF7F7FF777777700000E00033000FF777773777F3777F3330EEE0E0330
        00FF337FFF7F7F3777F33300000E033000FF337777737F37773333330EEE0300
        03FF33337FFF77777333333300000333333F3333777773333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsFlat
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = Z2bbtnRecuperarClick
    end
  end
  object dbgDatos: TwwDBGrid
    Left = 0
    Top = 241
    Width = 792
    Height = 180
    DisableThemesInTitle = False
    Selected.Strings = (
      'DESCRIP'#9'20'#9'Campo'#9'T'
      'DATO1'#9'38'#9'Asociado 1'#9'T'
      'CHECK1'#9'2'#9' '#9'F'
      'CHECK2'#9'2'#9' '#9'F'
      'DATO2'#9'41'#9'Asociado 2'#9'T')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    EditControlOptions = [ecoCheckboxSingleClick, ecoSearchOwnerForm]
    DataSource = dsComparacion
    KeyOptions = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clNavy
    TitleFont.Height = -11
    TitleFont.Name = 'Comic Sans MS'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    UseTFields = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 516
    Width = 792
    Height = 29
    Align = alBottom
    Color = 10207162
    TabOrder = 4
    object z2bbtnUnificar: TfcShapeBtn
      Left = 453
      Top = 3
      Width = 166
      Height = 24
      Caption = 'Unificar'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsFlat
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 0
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnUnificarClick
    end
    object z2bbtnCerrar: TfcShapeBtn
      Left = 620
      Top = 3
      Width = 166
      Height = 24
      Caption = 'Cerrar'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
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
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsFlat
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnCerrarClick
    end
    object z2bbtnNuevo: TfcShapeBtn
      Left = 285
      Top = 3
      Width = 166
      Height = 24
      Caption = 'Nuevo'
      Color = 10207162
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333FFFFFFFFF333333000000000033333377777777773333330FFFFF
        FFF03333337F333333373333330FFFFFFFF03333337F3FF3FFF73333330F00F0
        00F03333F37F773777373330330FFFFFFFF03337FF7F3F3FF3F73339030F0800
        F0F033377F7F737737373339900FFFFFFFF03FF7777F3FF3FFF70999990F00F0
        00007777777F7737777709999990FFF0FF0377777777FF37F3730999999908F0
        F033777777777337F73309999990FFF0033377777777FFF77333099999000000
        3333777777777777333333399033333333333337773333333333333903333333
        3333333773333333333333303333333333333337333333333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsFlat
      Shape = bsRoundRect
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnNuevoClick
    end
  end
  object cdsComparacion: TwwClientDataSet
    Active = True
    Aggregates = <>
    Filter = 'FILTRO <> '#39'1'#39
    Filtered = True
    FieldDefs = <
      item
        Name = 'TABLA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CAMPO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATO1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATO2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CHECK1'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CHECK2'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DESCRIP'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATO1ACT'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'DATO2ACT'
        DataType = ftString
        Size = 90
      end
      item
        Name = 'FILTRO'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    ControlType.Strings = (
      'CHECK2;CheckBox;S;N'
      'CHECK1;CheckBox;S;N')
    ValidateWithMask = True
    Left = 88
    Top = 320
    Data = {
      290100009619E0BD01000000180000000A000000000003000000290105544142
      4C4101004900000001000557494454480200020014000543414D504F01004900
      00000100055749445448020002001400054441544F3101004900000001000557
      49445448020002001400054441544F3201004900000001000557494454480200
      0200140006434845434B31010049000000010005574944544802000200010006
      434845434B320100490000000100055749445448020002000100074445534352
      49500100490000000100055749445448020002001400084441544F3141435401
      00490000000100055749445448020002005A00084441544F3241435401004900
      00000100055749445448020002005A000646494C54524F010049000000010005
      57494454480200020001000000}
    object cdsComparacionDESCRIP: TStringField
      DisplayLabel = 'Campo'
      DisplayWidth = 20
      FieldName = 'DESCRIP'
    end
    object cdsComparacionDATO1: TStringField
      DisplayLabel = 'Asociado 1'
      DisplayWidth = 38
      FieldName = 'DATO1'
    end
    object cdsComparacionCHECK1: TStringField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'CHECK1'
      OnChange = cdsComparacionCHECK1Change
      Size = 1
    end
    object cdsComparacionCHECK2: TStringField
      DisplayLabel = ' '
      DisplayWidth = 2
      FieldName = 'CHECK2'
      OnChange = cdsComparacionCHECK2Change
      Size = 1
    end
    object cdsComparacionDATO2: TStringField
      DisplayLabel = 'Asociado 2'
      DisplayWidth = 41
      FieldName = 'DATO2'
    end
    object cdsComparacionTABLA: TStringField
      FieldName = 'TABLA'
      Visible = False
    end
    object cdsComparacionCAMPO: TStringField
      FieldName = 'CAMPO'
      Visible = False
    end
    object cdsComparacionDATO1ACT: TStringField
      FieldName = 'DATO1ACT'
      Visible = False
      Size = 90
    end
    object cdsComparacionDATO2ACT: TStringField
      FieldName = 'DATO2ACT'
      Visible = False
      Size = 90
    end
    object cdsComparacionFILTRO: TStringField
      FieldName = 'FILTRO'
      Visible = False
      Size = 1
    end
  end
  object dsComparacion: TwwDataSource
    DataSet = cdsComparacion
    Left = 120
    Top = 320
  end
  object cdsAsociado1: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 688
    Top = 178
  end
  object cdsAsociado2: TwwClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'prvTGE'
    RemoteServer = DM1.DCOM1
    ValidateWithMask = True
    Left = 712
    Top = 192
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
    DeviceType = 'Screen'
    OnPreviewFormCreate = ppReport1PreviewFormCreate
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 200
    Top = 320
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppDBPipeline1'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 59796
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        AutoSize = False
        Caption = 'DERRAMA MAGISTERIAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 1588
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        AutoSize = False
        Caption = 'Jr. Gregorio Escobedo 598 Jes'#250's Mar'#237'a - Telf. 461-7354'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 529
        mmTop = 11642
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Caption = 'Equipo de Cobranzas'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 529
        mmTop = 6615
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        AutoSize = False
        Caption = 'NOMBRE..........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 27252
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        AutoSize = False
        Caption = 'COD.MODULAR.....:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 32015
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        AutoSize = False
        Caption = 'C'#211'DIGO DERRAMA..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 36777
        mmWidth = 27517
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        AutoSize = False
        Caption = 'DNI.............:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 41804
        mmWidth = 27517
        BandType = 0
      end
      object pplblNombre1: TppLabel
        UserName = 'lblNombre1'
        AutoSize = False
        Caption = 'NOMBRE..........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 29633
        mmTop = 27517
        mmWidth = 77523
        BandType = 0
      end
      object pplblCodMod1: TppLabel
        UserName = 'lblCodMod1'
        AutoSize = False
        Caption = 'NOMBRE..........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 29633
        mmTop = 32015
        mmWidth = 77523
        BandType = 0
      end
      object pplblAsoid1: TppLabel
        UserName = 'lblAsoid1'
        AutoSize = False
        Caption = 'NOMBRE..........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 29633
        mmTop = 36777
        mmWidth = 77523
        BandType = 0
      end
      object pplblDNI1: TppLabel
        UserName = 'lblDNI1'
        AutoSize = False
        Caption = 'NOMBRE..........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 29633
        mmTop = 41804
        mmWidth = 77523
        BandType = 0
      end
      object pplblNombre2: TppLabel
        UserName = 'lblNombre2'
        AutoSize = False
        Caption = 'NOMBRE..........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120650
        mmTop = 27517
        mmWidth = 77523
        BandType = 0
      end
      object pplblCodMod2: TppLabel
        UserName = 'lblCodMod2'
        AutoSize = False
        Caption = 'NOMBRE..........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120650
        mmTop = 32015
        mmWidth = 77523
        BandType = 0
      end
      object pplblAsoid2: TppLabel
        UserName = 'Label101'
        AutoSize = False
        Caption = 'NOMBRE..........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120650
        mmTop = 36777
        mmWidth = 77523
        BandType = 0
      end
      object pplblDNI2: TppLabel
        UserName = 'lblDNI2'
        AutoSize = False
        Caption = 'NOMBRE..........:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 120650
        mmTop = 41804
        mmWidth = 77523
        BandType = 0
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        AutoSize = False
        Caption = 'PERIODO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 51065
        mmWidth = 19315
        BandType = 0
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        AutoSize = False
        Caption = 'Fecha.:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 1588
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        AutoSize = False
        Caption = 'Hora..:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 6615
        mmWidth = 15875
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        AutoSize = False
        Caption = 'Pag...:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 11377
        mmWidth = 15875
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 178859
        mmTop = 1852
        mmWidth = 14288
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 178859
        mmTop = 6879
        mmWidth = 17198
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtPageNo
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 178859
        mmTop = 11642
        mmWidth = 1588
        BandType = 0
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        AutoSize = False
        Caption = 'VERIFICACI'#211'N DE APORTES DE ASOCIADOS POR UNIFICAR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Roman 10cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 794
        mmTop = 19315
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label201'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 47361
        mmWidth = 197380
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 55298
        mmWidth = 197380
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'X1ASOCODMOD'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 29633
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'X1UPROID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 51065
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'X1USEID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 61383
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'X1UPAGOID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 71173
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'X1MTO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,###.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 82550
        mmTop = 265
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'ANO'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'MES'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 11642
        mmTop = 265
        mmWidth = 6615
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'X2ASOCODMOD'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 120650
        mmTop = 265
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'X2UPROID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 142082
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'X2USEID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 152400
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        DataField = 'X2UPAGOID'
        DataPipeline = ppDBPipeline1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 162190
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        DataField = 'X2MTO'
        DataPipeline = ppDBPipeline1
        DisplayFormat = '###,###.00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDBPipeline1'
        mmHeight = 3704
        mmLeft = 173567
        mmTop = 265
        mmWidth = 12171
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        UserName = 'Label10'
        AutoSize = False
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '--------------------'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 17cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 265
        mmTop = 794
        mmWidth = 197380
        BandType = 7
      end
    end
  end
  object ppDBPipeline1: TppDBPipeline
    UserName = 'DBPipeline1'
    Left = 168
    Top = 320
  end
  object IdFTP1: TIdFTP
    MaxLineAction = maException
    ReadTimeout = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Top = 544
  end
end
