object fManColAgr: TfManColAgr
  Left = 284
  Top = 197
  BorderStyle = bsDialog
  Caption = 'Agregar un Centro Educativo'
  ClientHeight = 474
  ClientWidth = 728
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  DesignSize = (
    728
    474)
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 24
    Top = 200
    Width = 97
    Height = 13
    Caption = 'Unidad de Proceso :'
  end
  object bbtnCerrar: TBitBtn
    Left = 627
    Top = 444
    Width = 86
    Height = 27
    Anchors = [akTop, akRight]
    Caption = 'Cerrar'
    ModalResult = 2
    TabOrder = 1
    OnClick = bbtnCerrarClick
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
  object pcColegios: TPageControl
    Left = 0
    Top = 5
    Width = 723
    Height = 428
    ActivePage = TabSheet2
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Datos de la Unidad de Gesti'#243'n'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 12
        Width = 705
        Height = 173
        Caption = ' Datos de Gesti'#243'n de la Instituci'#243'n '
        TabOrder = 0
        object Label17: TLabel
          Left = 12
          Top = 71
          Width = 102
          Height = 13
          Caption = 'Nivel / Modalidad'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 12
          Top = 23
          Width = 89
          Height = 13
          Caption = 'C'#243'digo Modular'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 12
          Top = 46
          Width = 44
          Height = 13
          Caption = 'Nombre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 12
          Top = 93
          Width = 109
          Height = 13
          Caption = 'Unidad de Proceso'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 12
          Top = 116
          Width = 92
          Height = 13
          Caption = 'Unidad de Pago'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 12
          Top = 141
          Width = 106
          Height = 13
          Caption = 'Unidad de Gesti'#243'n'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 136
          Top = 93
          Width = 3
          Height = 13
          Caption = ':'
        end
        object Label22: TLabel
          Left = 136
          Top = 116
          Width = 3
          Height = 13
          Caption = ':'
        end
        object Label23: TLabel
          Left = 136
          Top = 141
          Width = 3
          Height = 13
          Caption = ':'
        end
        object Label24: TLabel
          Left = 136
          Top = 46
          Width = 3
          Height = 13
          Caption = ':'
        end
        object Label25: TLabel
          Left = 136
          Top = 23
          Width = 3
          Height = 13
          Caption = ':'
        end
        object Label26: TLabel
          Left = 136
          Top = 71
          Width = 3
          Height = 13
          Caption = ':'
        end
        object dblcdNivModid: TwwDBLookupComboDlg
          Left = 145
          Top = 67
          Width = 53
          Height = 21
          CharCase = ecUpperCase
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          TabOrder = 2
          AutoDropDown = True
          ShowButton = True
          AllowClearKey = False
          OnExit = dblcdNivModidExit
        end
        object edCodigoModular: TEdit
          Left = 145
          Top = 20
          Width = 105
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 8
          TabOrder = 0
        end
        object edNomCenEdu: TEdit
          Left = 145
          Top = 43
          Width = 369
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 255
          TabOrder = 1
        end
        object dblcdUniPro: TwwDBLookupComboDlg
          Left = 145
          Top = 90
          Width = 53
          Height = 21
          CharCase = ecUpperCase
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          LookupTable = DM1.cdsUPro
          LookupField = 'UPROID'
          TabOrder = 4
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnExit = dblcdUniProExit
        end
        object dblcdUniPag: TwwDBLookupComboDlg
          Left = 145
          Top = 113
          Width = 53
          Height = 21
          CharCase = ecUpperCase
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          LookupTable = DM1.cdsUPago
          LookupField = 'UPAGOID'
          TabOrder = 5
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnExit = dblcdUniPagExit
        end
        object dblcdUniGes: TwwDBLookupComboDlg
          Left = 145
          Top = 137
          Width = 53
          Height = 21
          CharCase = ecUpperCase
          GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
          GridColor = clWhite
          GridTitleAlignment = taLeftJustify
          Caption = 'Lookup'
          MaxWidth = 0
          MaxHeight = 209
          LookupTable = DM1.cdsUSES
          LookupField = 'USEID'
          TabOrder = 6
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnExit = dblcdUniGesExit
        end
        object edNivEdu: TEdit
          Left = 201
          Top = 67
          Width = 311
          Height = 21
          Enabled = False
          TabOrder = 3
        end
        object EdtUniProNom: TEdit
          Left = 201
          Top = 90
          Width = 311
          Height = 21
          Enabled = False
          TabOrder = 7
        end
        object EdtUniPagNom: TEdit
          Left = 201
          Top = 113
          Width = 311
          Height = 21
          Enabled = False
          TabOrder = 8
        end
        object EdtUniGesNom: TEdit
          Left = 201
          Top = 137
          Width = 311
          Height = 21
          Enabled = False
          TabOrder = 9
        end
      end
      object BitSiguiente: TBitBtn
        Left = 624
        Top = 366
        Width = 88
        Height = 27
        Cursor = crHandPoint
        Caption = '&Siguiente'
        TabOrder = 2
        OnClick = BitSiguienteClick
        NumGlyphs = 2
      end
      object dbgCodigosPago: TwwDBGrid
        Left = 0
        Top = 192
        Width = 569
        Height = 169
        DisableThemesInTitle = False
        IniAttributes.Delimiter = ';;'
        TitleColor = 10207162
        FixedCols = 0
        ShowHorzScrollBar = True
        DataSource = DM1.dsCbcos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyOptions = []
        Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter, dgFooter3DCells]
        ParentFont = False
        TabOrder = 1
        TitleAlignment = taCenter
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        TitleLines = 2
        TitleButtons = True
        OnDblClick = dbgCodigosPagoDblClick
        FooterColor = clSilver
        FooterCellColor = clBtnHighlight
        PaintOptions.AlternatingRowRegions = [arrDataColumns, arrActiveDataColumn]
        PaintOptions.AlternatingRowColor = 14342874
        object dbgPrincipalIBtnAdd: TwwIButton
          Left = 0
          Top = 0
          Width = 30
          Height = 30
          AllowAllUp = True
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333333FF33333333FF333993333333300033377F3333333777333993333333
            300033F77FFF3333377739999993333333333777777F3333333F399999933333
            33003777777333333377333993333333330033377F3333333377333993333333
            3333333773333333333F333333333333330033333333F33333773333333C3333
            330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
            993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
            333333333337733333FF3333333C333330003333333733333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
          OnClick = dbgPrincipalIBtnAddClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Ubicaci'#243'n del Centro Educativo'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 4
        Top = 6
        Width = 705
        Height = 347
        Caption = ' Direcci'#243'n '
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 130
          Width = 89
          Height = 13
          Caption = 'calle/avenida/jiron'
        end
        object Label4: TLabel
          Left = 211
          Top = 130
          Width = 127
          Height = 13
          Caption = 'nombre calle/avenida/jiron'
        end
        object Label5: TLabel
          Left = 642
          Top = 130
          Width = 35
          Height = 13
          Caption = 'n'#250'mero'
        end
        object lblmanzana: TLabel
          Left = 117
          Top = 173
          Width = 3
          Height = 13
        end
        object lbllote: TLabel
          Left = 181
          Top = 173
          Width = 3
          Height = 13
        end
        object Label7: TLabel
          Left = 243
          Top = 173
          Width = 57
          Height = 13
          Caption = 'tipo dpto/int'
        end
        object lblintlet: TLabel
          Left = 355
          Top = 173
          Width = 3
          Height = 13
        end
        object Label8: TLabel
          Left = 8
          Top = 45
          Width = 65
          Height = 13
          Caption = 'Tipo de  lugar'
        end
        object Label9: TLabel
          Left = 264
          Top = 44
          Width = 56
          Height = 13
          Caption = 'Descripci'#243'n'
        end
        object Label10: TLabel
          Left = 8
          Top = 87
          Width = 61
          Height = 13
          Caption = 'sector/etapa'
        end
        object Label11: TLabel
          Left = 104
          Top = 87
          Width = 99
          Height = 13
          Caption = 'nombre sector/etapa'
        end
        object Label12: TLabel
          Left = 8
          Top = 258
          Width = 65
          Height = 13
          Caption = 'departamento'
        end
        object Label13: TLabel
          Left = 223
          Top = 258
          Width = 43
          Height = 13
          Caption = 'provincia'
        end
        object Label14: TLabel
          Left = 456
          Top = 258
          Width = 30
          Height = 13
          Caption = 'distrito'
        end
        object Label15: TLabel
          Left = 8
          Top = 214
          Width = 47
          Height = 13
          Caption = 'referencia'
        end
        object Label16: TLabel
          Left = 8
          Top = 173
          Width = 73
          Height = 13
          Caption = 'Mz./Edif./Bock'
        end
        object Label27: TLabel
          Left = 419
          Top = 173
          Width = 56
          Height = 13
          Caption = 'Telefono(s):'
        end
        object Label28: TLabel
          Left = 9
          Top = 299
          Width = 73
          Height = 13
          Caption = 'Centro Poblado'
        end
        object medescal: TMaskEdit
          Left = 211
          Top = 145
          Width = 422
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 45
          TabOrder = 8
        end
        object menumdir: TMaskEdit
          Left = 641
          Top = 145
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 6
          TabOrder = 9
        end
        object cbpiso: TComboBox
          Left = 243
          Top = 189
          Width = 105
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 13
          Text = 'Ninguno'
          OnExit = cbpisoExit
          OnKeyDown = cbpisoKeyDown
          Items.Strings = (
            'Ninguno'
            'INTERIOR'
            'LETRA')
        end
        object cbseceta: TComboBox
          Left = 8
          Top = 103
          Width = 89
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 4
          Text = 'Ninguno'
          OnChange = cbsecetaChange
          OnExit = cbsecetaExit
          OnKeyDown = cbsecetaKeyDown
          Items.Strings = (
            'Ninguno'
            'ZONA'
            'ETAPA'
            'SECTOR'
            'GRUPO')
        end
        object dblccodtiplug: TwwDBLookupComboDlg
          Left = 8
          Top = 145
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
          TabOrder = 6
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnChange = dblccodtiplugChange
          OnExit = dblccodtiplugExit
          OnKeyDown = dblccodtiplugKeyDown
        end
        object medestiplug: TMaskEdit
          Left = 55
          Top = 145
          Width = 146
          Height = 21
          CharCase = ecUpperCase
          Color = 15132390
          Enabled = False
          TabOrder = 7
        end
        object dblccodurb: TwwDBLookupComboDlg
          Left = 8
          Top = 62
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
          TabOrder = 1
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnChange = dblccodurbChange
          OnExit = dblccodurbExit
          OnKeyDown = dblccodurbKeyDown
        end
        object medesurb: TMaskEdit
          Left = 55
          Top = 62
          Width = 203
          Height = 21
          CharCase = ecUpperCase
          Color = 15132390
          Enabled = False
          TabOrder = 2
        end
        object memanzana: TMaskEdit
          Left = 117
          Top = 189
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 3
          TabOrder = 11
        end
        object melote: TMaskEdit
          Left = 181
          Top = 189
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 3
          TabOrder = 12
        end
        object menumpiso: TMaskEdit
          Left = 355
          Top = 189
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 4
          TabOrder = 14
        end
        object merefdir: TMaskEdit
          Left = 8
          Top = 231
          Width = 689
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 65
          TabOrder = 16
        end
        object menomurb: TMaskEdit
          Left = 264
          Top = 62
          Width = 424
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 3
        end
        object menomsec: TMaskEdit
          Left = 104
          Top = 103
          Width = 417
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 50
          TabOrder = 5
        end
        object dblcdcoddep: TwwDBLookupComboDlg
          Left = 8
          Top = 274
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
          TabOrder = 17
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnChange = dblcdcoddepChange
        end
        object medesdep: TMaskEdit
          Left = 52
          Top = 274
          Width = 168
          Height = 21
          CharCase = ecUpperCase
          Color = 15132390
          Enabled = False
          TabOrder = 18
        end
        object dblcdcodpro: TwwDBLookupComboDlg
          Left = 223
          Top = 274
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
          TabOrder = 19
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnChange = dblcdcodproChange
        end
        object medespro: TMaskEdit
          Left = 275
          Top = 274
          Width = 178
          Height = 21
          CharCase = ecUpperCase
          Color = 15132390
          Enabled = False
          TabOrder = 20
        end
        object dblcdcoddis: TwwDBLookupComboDlg
          Left = 456
          Top = 274
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
          TabOrder = 21
          AutoDropDown = False
          ShowButton = True
          AllowClearKey = False
          OnChange = dblcdcoddisChange
        end
        object medesdis: TMaskEdit
          Left = 526
          Top = 274
          Width = 176
          Height = 21
          CharCase = ecUpperCase
          Color = 15132390
          Enabled = False
          TabOrder = 22
        end
        object mecendir: TMaskEdit
          Left = 8
          Top = 20
          Width = 681
          Height = 19
          Color = 16776176
          Ctl3D = False
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object cbtipman: TComboBox
          Left = 8
          Top = 189
          Width = 105
          Height = 21
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 10
          Text = 'Ninguno'
          OnExit = cbtipmanExit
          OnKeyDown = cbtipmanKeyDown
          Items.Strings = (
            'Ninguno'
            'MANZANA'
            'EDIFICIO'
            'BLOCK')
        end
        object metelefono: TMaskEdit
          Left = 419
          Top = 189
          Width = 214
          Height = 21
          CharCase = ecUpperCase
          Color = clWhite
          MaxLength = 35
          TabOrder = 15
        end
        object mecenpob: TMaskEdit
          Left = 8
          Top = 314
          Width = 441
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 50
          TabOrder = 23
        end
      end
      object BitGrabar: TBitBtn
        Left = 616
        Top = 358
        Width = 88
        Height = 27
        Cursor = crHandPoint
        Hint = 'Grabar'
        Caption = '&Grabar'
        TabOrder = 1
        OnClick = BitGrabarClick
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
    end
  end
end
