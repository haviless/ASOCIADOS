object FUgelRegionPlanilla: TFUgelRegionPlanilla
  Left = 534
  Top = 188
  Anchors = []
  BorderStyle = bsDialog
  Caption = 'Ugel/Regi'#243'n por Planilla'
  ClientHeight = 372
  ClientWidth = 722
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object btnGrabar: TBitBtn
    Left = 528
    Top = 340
    Width = 88
    Height = 27
    Cursor = crHandPoint
    Hint = 'Grabar'
    Caption = '&Grabar'
    TabOrder = 4
    OnClick = btnGrabarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
      00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
      00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
      00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
      00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
      0003737FFFFFFFFF7F7330099999999900333777777777777733}
    NumGlyphs = 2
  end
  object btnCerrar: TBitBtn
    Left = 627
    Top = 340
    Width = 86
    Height = 27
    Caption = 'Cerrar'
    ModalResult = 2
    TabOrder = 5
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
  object grpUgel: TGroupBox
    Left = 8
    Top = 4
    Width = 524
    Height = 101
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 16
      Width = 91
      Height = 13
      Caption = 'Unidad de Proceso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 44
      Width = 77
      Height = 13
      Caption = 'Unidad de Pago'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 12
      Top = 73
      Width = 88
      Height = 13
      Caption = 'Unidad de Gesti'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dblcdUniPro: TwwDBLookupComboDlg
      Left = 145
      Top = 13
      Width = 53
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'U.Proceso'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdUniProChange
      OnKeyDown = dblcdUniProKeyDown
    end
    object EdtUniProNom: TEdit
      Left = 201
      Top = 13
      Width = 311
      Height = 21
      TabStop = False
      Enabled = False
      TabOrder = 1
    end
    object dblcdUniPag: TwwDBLookupComboDlg
      Left = 145
      Top = 41
      Width = 53
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'U.Pago'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdUniPagChange
      OnKeyDown = dblcdUniPagKeyDown
    end
    object EdtUniPagNom: TEdit
      Left = 201
      Top = 41
      Width = 311
      Height = 21
      TabStop = False
      Enabled = False
      TabOrder = 3
    end
    object dblcdUniGes: TwwDBLookupComboDlg
      Left = 145
      Top = 69
      Width = 53
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Ugel'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsUSES
      LookupField = 'USEID'
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdUniGesChange
      OnKeyDown = dblcdUniGesKeyDown
    end
    object EdtUniGesNom: TEdit
      Left = 201
      Top = 69
      Width = 311
      Height = 21
      TabStop = False
      Enabled = False
      TabOrder = 5
    end
  end
  object grpUbigeo: TGroupBox
    Left = 8
    Top = 169
    Width = 705
    Height = 53
    Caption = 'Ubigeo'
    TabOrder = 1
    object Label12: TLabel
      Left = 8
      Top = 20
      Width = 67
      Height = 13
      Caption = 'Departamento'
    end
    object dblcdcoddep: TwwDBLookupComboDlg
      Left = 145
      Top = 20
      Width = 53
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Departamento'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'DPTOID'
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdcoddepChange
    end
    object medesdep: TMaskEdit
      Left = 201
      Top = 20
      Width = 192
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 1
    end
  end
  object grpRegion: TGroupBox
    Left = 8
    Top = 229
    Width = 705
    Height = 49
    Caption = 'Regi'#243'n'
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 20
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object edtCodRegion: TwwDBEdit
      Left = 144
      Top = 16
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 10
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object grpPlanilla: TGroupBox
    Left = 8
    Top = 286
    Width = 705
    Height = 47
    Caption = 'Planilla'
    TabOrder = 3
    object chkActivos: TCheckBox
      Left = 24
      Top = 21
      Width = 65
      Height = 17
      Caption = 'Activos'
      TabOrder = 0
    end
    object chkCesantes: TCheckBox
      Left = 96
      Top = 21
      Width = 73
      Height = 17
      Caption = 'Cesantes'
      TabOrder = 1
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 113
    Width = 705
    Height = 49
    Caption = 'Centro de Proceso'
    TabOrder = 6
    object Label3: TLabel
      Left = 8
      Top = 20
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    object dblcdCentroProcesos: TwwDBLookupCombo
      Left = 147
      Top = 16
      Width = 121
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupTable = DM1.cdsQry25
      LookupField = 'CENTRO_PROCESO'
      Options = [loColLines, loRowLines, loTitles]
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = []
      PreciseEditRegion = False
      AllowClearKey = True
      ShowMatchText = True
      OnExit = dblcdCentroProcesosExit
      OnNotInList = dblcdCentroProcesosNotInList
    end
  end
  object rgAutDes: TRadioGroup
    Left = 544
    Top = 4
    Width = 168
    Height = 69
    Caption = 'Autoriza descuento 2da vez'
    Columns = 2
    Items.Strings = (
      'No'
      'Si')
    TabOrder = 7
  end
end
