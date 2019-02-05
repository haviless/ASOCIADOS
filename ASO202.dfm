object fGestionCartera: TfGestionCartera
  Left = 331
  Top = 315
  Width = 959
  Height = 606
  Caption = 'Gesti'#243'n de Cartera'
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBLookupComboDlg1: TwwDBLookupComboDlg
    Left = 815
    Top = 92
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
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
  end
  object gbFiltros: TGroupBox
    Left = 0
    Top = 0
    Width = 943
    Height = 209
    Align = alTop
    Color = 13165023
    ParentColor = False
    TabOrder = 1
    object gbFiltro2: TGroupBox
      Left = 0
      Top = 64
      Width = 937
      Height = 92
      Caption = 'Tipo de Ubicaci'#243'n'
      TabOrder = 0
      object Label1: TLabel
        Left = 142
        Top = 12
        Width = 70
        Height = 13
        Caption = 'Departamento:'
      end
      object Label2: TLabel
        Left = 342
        Top = 12
        Width = 47
        Height = 13
        Caption = 'Provincia:'
      end
      object Label3: TLabel
        Left = 567
        Top = 12
        Width = 35
        Height = 13
        Caption = 'Distrito:'
      end
      object Label8: TLabel
        Left = 143
        Top = 52
        Width = 38
        Height = 13
        Caption = 'Colegio:'
      end
      object rbDomicilio: TRadioButton
        Left = 8
        Top = 24
        Width = 73
        Height = 17
        Caption = 'Domicilio'
        TabOrder = 0
        OnClick = rbDomicilioClick
      end
      object rbColegio: TRadioButton
        Left = 80
        Top = 24
        Width = 65
        Height = 17
        Caption = 'Colegio'
        TabOrder = 1
        OnClick = rbColegioClick
      end
      object dblcdcoddep: TwwDBLookupComboDlg
        Left = 142
        Top = 28
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
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdcoddepChange
        OnExit = dblcdcoddepExit
      end
      object medesdep: TMaskEdit
        Left = 187
        Top = 28
        Width = 150
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 3
      end
      object dblcdcodpro: TwwDBLookupComboDlg
        Left = 342
        Top = 28
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
        TabOrder = 4
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdcodproChange
        OnExit = dblcdcodproExit
      end
      object medespro: TMaskEdit
        Left = 394
        Top = 28
        Width = 167
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 5
      end
      object dblcdcoddis: TwwDBLookupComboDlg
        Left = 567
        Top = 28
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
        TabOrder = 6
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdcoddisChange
      end
      object medesdis: TMaskEdit
        Left = 637
        Top = 28
        Width = 176
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 7
      end
      object dblcdColegio: TwwDBLookupComboDlg
        Left = 143
        Top = 67
        Width = 570
        Height = 21
        CharCase = ecUpperCase
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        Color = clWhite
        MaxLength = 6
        TabOrder = 8
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdColegioChange
        OnExit = dblcdColegioExit
      end
      object mdesColegio: TMaskEdit
        Left = 720
        Top = 66
        Width = 92
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 9
      end
      object chkCADAPS: TCheckBox
        Left = 799
        Top = 10
        Width = 133
        Height = 17
        Alignment = taLeftJustify
        Caption = 'CADAPS (Colegios) >=1'
        TabOrder = 10
      end
    end
    object TGroupBox
      Left = 0
      Top = 152
      Width = 937
      Height = 57
      TabOrder = 1
      object Label5: TLabel
        Left = 384
        Top = 0
        Width = 78
        Height = 13
        Caption = 'Tipo de Gesti'#243'n:'
      end
      object lblBuscar: TLabel
        Left = 624
        Top = 24
        Width = 123
        Height = 13
        Caption = 'Buscar Colegio/Asociado:'
      end
      object lblFallecidos: TLabel
        Left = 529
        Top = 1
        Width = 50
        Height = 13
        Caption = 'Fallecidos:'
      end
      object gbTipoCar: TGroupBox
        Left = 0
        Top = 8
        Width = 377
        Height = 41
        Caption = 'Tipo de Cartera'
        TabOrder = 0
        object cbAfiliacion: TCheckBox
          Left = 40
          Top = 16
          Width = 81
          Height = 17
          Caption = 'Afiliaci'#243'n'
          TabOrder = 0
        end
        object cbNoveles: TCheckBox
          Left = 128
          Top = 16
          Width = 73
          Height = 17
          Caption = 'Noveles'
          TabOrder = 1
        end
        object cbFamiliarizada: TCheckBox
          Left = 208
          Top = 16
          Width = 89
          Height = 17
          Caption = 'Familirizada'
          TabOrder = 2
        end
        object cbPrecese: TCheckBox
          Left = 304
          Top = 16
          Width = 65
          Height = 17
          Caption = 'Pre-Cese'
          TabOrder = 3
        end
      end
      object bFiltrar: TBitBtn
        Left = 848
        Top = 16
        Width = 75
        Height = 35
        Caption = 'Filtrar'
        TabOrder = 1
        OnClick = bFiltrarClick
        Glyph.Data = {
          42080000424D4208000000000000420000002800000020000000200000000100
          1000030000000008000000000000000000000000000000000000007C0000E003
          00001F000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000018631863
          1863186318631863186318631863186318631863186318631042104210420000
          000010421863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
          1863186318631863186300400040186318631863186310421042104200000000
          10421863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
          18631863186318631863007C0040186318631863104210421042000000001042
          1863FF7F0000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
          1863186318631863186318631863186318631042104210420000000010421863
          FF7F00000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
          18631863186318631863007C004018631042104210420000000010421863FF7F
          000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000FF7F1863
          18631863186318631863007C00401042104210420000000010421863FF7F0000
          000000001863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000018631863
          18631863186318631863007C1042104210420000000010421863FF7F00000000
          000018631863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000010421042
          104210421042104210421042104210420000000010421863FF7F000000000000
          186318631863FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F10421042000010421042
          10421042104210421042104210420000000000000000FF7F0000000000001863
          186318631863FF7FFF7FFF7FFF7FFF7FFF7F1042104210421042000010421042
          1042104210421042104210420000000000001042000000000000000018631863
          186318631863FF7FFF7FFF7FFF7FFF7F10421042104200000000000010421863
          FF7F186310420000000000000000000010421863FF7F00000000186318631863
          186318631863FF7FFF7FFF7F1042104210420000000000000000000000000000
          104200000000000000000000000010421863FF7F000000000040186318631863
          186318631863FF7FFF7F10421042104200000000000000001863186318631863
          007C007C004000000000000000000000FF7F00000000007C0040186318631863
          186318631863FF7F104210420000000000000000186318631863186318631863
          007C007C004018631863000000000000000000000000007C0040186318631863
          186318631863FF7F104200000000000000001863186318631863186318631863
          007C007C007C0040186318630000000000000000007C007C0040186318631863
          1863186318631042104200000000000018631863186318631863186318631863
          1863007C007C007C004018631863000000000000007C007C1863186318631863
          18631863186310420000000000000000FF7F1863186318631863186318631863
          18631863007C007C007C00401863186300000000000018631863186318631863
          18631863186310420000000000000000FF7F1863186318631863186318631863
          186318631863007C007C007C0040186300001042000018631863186318631863
          186318631863000000000000FF7F0000FF7F1863186318631863004000400040
          1863186318631863007C007C0040186318630000000000001863186318631863
          186318631863000010420000FF7F0000186318631863186318631F7C007C0040
          1863186318631863007C007C0040186318630000104200001863FF7FFF7FFF7F
          FF7FFF7F1863000010420000FF7F0000104210421042186318631F7C007C007C
          004018631863007C007C007C0040186318630000104200000000000000000000
          000000000000000010420000FF7F00001042104210421042186318631F7C007C
          007C00400040007C007C007C004018631863000010420000FF7FFF7FFF7FFF7F
          FF7FFF7FFF7F000010420000FF7F000000000000000000000000000018631F7C
          007C007C007C007C007C1F7C186318631863000010420000FF7FFF7FFF7FFF7F
          FF7FFF7FFF7F000000000000FF7FFF7F0000104210421863FF7F000018631863
          1F7C1F7C1F7C1F7C1F7C1863186318631863000000000000FF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7F000010420000FF7FFF7F0000104218631863000018631863
          18631863186318631863186318631863000010420000FF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F000010421863000018631863
          18631863186318631863186318631863000000000000FF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F00001863000018631863
          1863186318631863186318631863000000000000FF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F000000001863FF7F
          FF7FFF7FFF7FFF7F18631863000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000FF7FFF7FFF7F000000000000
          00000000000000000000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F0000000000000000FF7FFF7FFF7FFF7F
          FF7FFF7FFF7F0000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F000000000000000010421863FF7F
          186310420000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F00000000000000001042
          0000000000000000FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
          FF7FFF7FFF7F}
      end
      object dblTipoGest: TwwDBLookupCombo
        Left = 389
        Top = 20
        Width = 38
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        LookupTable = DM1.cdsTipoGes
        LookupField = 'VALDES01'
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblTipoGestChange
      end
      object mdesTipoGest: TMaskEdit
        Left = 432
        Top = 20
        Width = 86
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 3
      end
      object txtColegioAso: TEdit
        Left = 728
        Top = 20
        Width = 105
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 4
        OnKeyUp = txtColegioAsoKeyUp
      end
      object dblcFallecidos: TwwDBLookupCombo
        Left = 529
        Top = 20
        Width = 73
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 5
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object gbFiltro1: TGroupBox
      Left = 2
      Top = -1
      Width = 945
      Height = 65
      TabOrder = 2
      object Label4: TLabel
        Left = 4
        Top = 24
        Width = 65
        Height = 13
        Caption = 'Responsable:'
      end
      object dblcdResponsable: TwwDBLookupComboDlg
        Left = 74
        Top = 20
        Width = 97
        Height = 21
        CharCase = ecUpperCase
        GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
        GridColor = clWhite
        GridTitleAlignment = taLeftJustify
        Caption = 'Lookup'
        MaxWidth = 0
        MaxHeight = 209
        LookupTable = DM1.cdsResponsable
        LookupField = 'USERID'
        Color = clWhite
        MaxLength = 2
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        AllowClearKey = False
        OnChange = dblcdResponsableChange
        OnExit = dblcdResponsableExit
      end
      object gbGestion: TGroupBox
        Left = 363
        Top = 6
        Width = 251
        Height = 48
        TabOrder = 1
        DesignSize = (
          251
          48)
        object rbPendientes: TRadioButton
          Left = 105
          Top = 24
          Width = 81
          Height = 17
          Anchors = [akTop]
          Caption = 'Pendientes'
          TabOrder = 0
          OnClick = rbPendientesClick
        end
        object rbCerradas: TRadioButton
          Left = 154
          Top = 24
          Width = 71
          Height = 17
          Anchors = [akTop]
          Caption = 'Cerradas'
          TabOrder = 1
          OnClick = rbCerradasClick
        end
        object rbTodas: TRadioButton
          Left = 200
          Top = 24
          Width = 49
          Height = 17
          Anchors = [akTop]
          Caption = 'Todas'
          TabOrder = 2
          OnClick = rbTodasClick
        end
        object rbNoAsignadas: TRadioButton
          Left = -2
          Top = 24
          Width = 91
          Height = 17
          Anchors = [akTop]
          Caption = 'No Asignadas'
          TabOrder = 3
          OnClick = rbNoAsignadasClick
        end
        object rbAsignadas: TRadioButton
          Left = 56
          Top = 24
          Width = 73
          Height = 17
          Caption = 'Asignadas'
          TabOrder = 4
          OnClick = rbAsignadasClick
          OnDblClick = rbAsignadasDblClick
        end
      end
      object mdesResponsable: TMaskEdit
        Left = 176
        Top = 20
        Width = 183
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 2
      end
      object gbEstResult: TGroupBox
        Left = 615
        Top = 6
        Width = 155
        Height = 49
        Caption = 'Estado de Resultado'
        TabOrder = 3
        object rbExitoso: TRadioButton
          Left = 8
          Top = 24
          Width = 57
          Height = 17
          Caption = 'Exitoso'
          TabOrder = 0
        end
        object rbNoExitoso: TRadioButton
          Left = 72
          Top = 24
          Width = 81
          Height = 17
          Caption = 'No Exitoso'
          TabOrder = 1
        end
      end
      object rdgApoReg: TRadioGroup
        Left = 773
        Top = 6
        Width = 165
        Height = 49
        Caption = 'Aportante y/o Docente Regular'
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          'Todos'
          'Si'
          'No')
        TabOrder = 4
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 209
    Width = 943
    Height = 313
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    Color = 13165023
    TabOrder = 2
    object pcGestion: TPageControl
      Left = 0
      Top = 0
      Width = 943
      Height = 313
      ActivePage = tsDetalle
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 13165023
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = pcGestionChange
      object tsPersonal: TTabSheet
        Caption = 'Cartera'
        object dtgAsignacion: TwwDBGrid
          Left = 0
          Top = 0
          Width = 935
          Height = 244
          Cursor = crHandPoint
          DisableThemesInTitle = False
          Selected.Strings = (
            'ASOCODMOD'#9'10'#9'Cod.Modular'
            'ASOCODAUX'#9'6'#9'Orden'
            'ASOAPENOMDNI'#9'45'#9'Apellidos y Nombres(D.N.I.)'#9'F'
            'ASOTIPID'#9'3'#9'Tipo'
            'USEID'#9'3'#9'Use'
            'UPROID'#9'3'#9'Lug.Proceso'
            'ASODNI'#9'10'#9'D.N.I.'
            'ASONCTA'#9'10'#9'Cta.Ahorros')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyOptions = []
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          object dtgAsociadoIButton: TwwIButton
            Left = 0
            Top = 0
            Width = 26
            Height = 29
            Hint = 'Crear Nuevo Asociado'
            AllowAllUp = True
            Enabled = False
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
              0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
              33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Visible = False
          end
        end
        object pnlPersonal: TPanel
          Left = 0
          Top = 244
          Width = 935
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'pnlPersonal'
          Color = 13165023
          TabOrder = 1
          object bConsolidado: TBitBtn
            Left = 8
            Top = 8
            Width = 113
            Height = 33
            Caption = 'Consolidado'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = bConsolidadoClick
            Glyph.Data = {
              96080000424D96080000000000003604000028000000260000001C0000000100
              08000000000060040000120B0000120B0000000100000001000000000000F955
              000000CCFF00DFE7ED00A14D1F00F8B79400298AB100CDC87200186BA300E197
              60007597B7006BC8BE00E18A4F000F0EF6000345820078A69B0053CFE100628A
              B000FCA60F00FADDB1008EFFFF005EEBFF00FFFFE600A09CF400DBCA6F00D58E
              5900F89E49006771680035D6F2002D6093004334ED002DA0BF00C7C4F600FE85
              0500FCE4DA0058DCF700C1BEE8005379A20086868200DFE1FF00F6D9A300052B
              6E00C7D6E3004EF8FF009EBCD70026D2F000FEB23000F6B77C00B1C7DC00B994
              670042BFE000125E9600FC852300FADFCF00BBAFEC0062D8E900F7D65C00FF75
              02008FF1FE0088AFCA00F6AA5F00CCFFFF00FF944900F8FDFE0058FDFF00EDF4
              F800FDDBC6002C2BF900FEC84F00FCE2E300AFC4D800BCFFFF00A8AC880000DE
              FF0031F1FF00FABA7B00386897004BE2FB00FAD8BE00FFA72400398FB7006B94
              B50084C8A60000BEFA00167CB00084AA9F00F7F59000D7E1EC009E81430047A8
              C40081F0FF00FFB56A000D548B00FA8C4600817CE700FC831A008083FF00FFC2
              9A006FBDD300F2A26500F9F2F60058F1F800FF7F0500FFFFFF007BF1FF00FFF9
              DE00F2D4B800EBF2EE0072BCB10002397B00FBBC4C0099FFFF00F6AA7A0025E2
              FF007BFFFF00156C9B00FE8E2C00B87C3700B2EAEF00F9BA120078EBD8005458
              FF00FDF7FD000A10FF00FFCE8400074C8B00369CC90000216300D1976500FFD7
              75001F74A800FDD32E009A9D840063C7D8005F83A9008BAC9E005D768400318D
              B900FFF5ED004AE1EF0070EEFD001F7EAD00F6B3720032D8FE0016E9FF00F8BD
              9C00FFEDAB005C8BB600FF7E230023709E00FFA56D00DB905900FC9D1A00F5F8
              FA00FAC02800FFD86C00FF6600000ECFFB0095ADC800FBA25100FDF1C400F7E2
              EC0068E5EE0078A99200F69A6400FDDE790073FCFA0022588E0055EFFC00FDB8
              9F00F89C27003FB4D300FBCEB100FFFFF200FFDDBD004C44F200E7EAFE00B0B7
              FD00FAD87400FFAA71007FC5C4004FFFFF00FEEDE00095A78900093675004385
              B1007EA6C600F8A47100FAC4A600E88D3800E77D1A002A92BC001BDBFF00F8F9
              E800D4DCFD00FF741500FFBD3600F9B48D009492E80075D1D6004A719C000853
              8A001B16F700F38E5200FFF1EC00FF9D5D00F5D37D006CE1EA002CB2C00026D7
              FF00F7AB8300FF8B1300A9FFFF003DB0D000CED8E600FFD3B200075EAB00EAB5
              A400FDA814004196B9003CF3FF0019548900E7864400FBD16F00D0E4EE00F7CB
              720041D5FC00D1925C0051DEEA0024EDFF000B5F9B004740F700FFD69200001C
              690045DCEF00FBD8C400939287007DB4A30093A89900698EB500CECDEB000023
              700052D5F00057E4F400F1AD7600DBF9FF000B447F00FCB31400FFFFDD00BACD
              DD003393B9002387B000F6F1FC0014E0FF00F29F6C0007F2FF0067676767E0B9
              C99593BA2CF9D65703414199993F676767676767676767676767676767676767
              87876767672A1D0E0E7D5C5C5C5CA71D4CC82586EFBA9E2CF9D657576B419999
              3F67676767676767878767676751290E956285D5D57EBFFB8D08335C7DF6F6F6
              F6F6F6A71D4C2586EFBA2A6767676767878767673FEFE99576478CA8B5B5B5B5
              656565F3F2F232D57E89FB8208E65C7D6D29F6BA3F676767878767673FEFE9DB
              3D3AE24D37851010E48B8B2B2B2BB5B5B54040656565F3373273F1B89E676767
              878767673FEFE9DB475A8FB4DEDE808018074884B787ED6C0B0B85E4E465B540
              72CF33E9EF3F6767878767673FEFE950475A8FEE9461AE92D991E870F4F4FE09
              09191931313148C7157206E9EF3F6767878767673FEFE95047688FEE3E8A67B1
              CA436B16CCCCCCCCCC22354EBC7094801540FB7F513F6767878767673FEFE950
              D468D1873E16B0AF437B43C2AED291BCAC4E4E42CCCCCDDEA22B8D7F513F6767
              878767673FEFE950D468D1873E69B03603F00D796A2F2F70BBBBBBCBBC67D297
              A22B8D7F513F6767878767673FEF7FFAD48CC0553EB66716F08A2417FCADCCB6
              2235EBBCEB7AB397F32B8D7F513F6767878767673FEFE9FAD48CC0553EB667C6
              0DE7ADAD6464676767676767677A9697F3DC8D7F513F6767878767673FEFE9FA
              D48C9D553E6927AFAFCAE7C2D7BBC50591BCBCBC357AB3978BDC8D7F513F6767
              878767673FEFE9FA6F8C9D553E69B0241620CA60359105C5D27070CBC564B319
              8BDC8D7F513F6767878767673FEFE9896F159D0F3EB667F8246BF036FC67677A
              6464B6EB3564B3198B4A547F513F6767878767673FEFE9896F15020F3E69995E
              7BE7C116454545647A676767677A9619EA4A547F513F6767878767673FEFE989
              6F15020F3EF8C21EE70DE7C2AEA4BBD2D20505A94E64B319EAE5547F513F6767
              878767673FEFE9891415020F3E692720ADB17B602205D2D2BBFEFE5DBBA17019
              1CE5547F513F6767878767673FEFE9BF14A802A33E8A6769B6AD2417FC676767
              7A64CC42426496191CE5547F513F6767878767673FEFE989144D020F34D7D75D
              CB96817C05BCACEB3522B6643F3FB3191CE5547F513F67678787676767EFE9FA
              6F4D53AB3180BD013921212121215F5F34345D5D63ACB30C1C90547F513F6767
              878767673F11E9BF14682D5353D05839C483C4C4C4C42E2E4F4F4F210134BDE3
              2DFD547F513F6767878767673FEFE9C91014724DFF9058C3A056C4C444389B9B
              9B9B566E9C75A3599DC0547F513F6767878767676730F6E9C91F1023DC529C66
              B23513E1446E44444481F84B9CA34902C02BFB7FEF3F6767878767676767461D
              B8B87DD888BE21F7F79ACE13AE13282828A0A094BE78B540A6CF737F11996767
              8787676767676741F92C260401391277F7F7779A44DFCECEA538D3011BBF7EAB
              59730E290A3F676787876767676767676767A05B3C9F1AAA9898981212DADA2E
              982174EC821DDDDD7D7D7D250367676787876767676767676767676799994535
              4EBC2F3C1A743434348EC1F503572A303B0A2C41676767678787}
          end
          object gbadiciona: TGroupBox
            Left = 543
            Top = 0
            Width = 385
            Height = 42
            TabOrder = 1
            DesignSize = (
              385
              42)
            object bABloque: TBitBtn
              Left = 8
              Top = 12
              Width = 169
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = 'A'#241'adir Hoja de Ruta Bloque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = bABloqueClick
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
            object bAUno: TBitBtn
              Left = 199
              Top = 11
              Width = 177
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = 'A'#241'adir Hoja de Ruta Selecci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = bAUnoClick
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
            end
          end
        end
      end
      object tsHojaruta: TTabSheet
        Caption = 'Hoja de Ruta'
        ImageIndex = 1
        object dtgCabHoja: TwwDBGrid
          Left = 0
          Top = 0
          Width = 508
          Height = 285
          Cursor = crHandPoint
          DisableThemesInTitle = False
          Selected.Strings = (
            'ASOCODMOD'#9'10'#9'Cod.Modular'
            'ASOCODAUX'#9'6'#9'Orden'
            'ASOAPENOMDNI'#9'45'#9'Apellidos y Nombres(D.N.I.)'#9'F'
            'ASOTIPID'#9'3'#9'Tipo'
            'USEID'#9'3'#9'Use'
            'UPROID'#9'3'#9'Lug.Proceso'
            'ASODNI'#9'10'#9'D.N.I.'
            'ASONCTA'#9'10'#9'Cta.Ahorros')
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyOptions = []
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDblClick = dtgCabHojaDblClick
          object wwIButton2: TwwIButton
            Left = 0
            Top = 0
            Width = 26
            Height = 29
            Hint = 'Crear Nuevo Asociado'
            AllowAllUp = True
            Enabled = False
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
              0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
              33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Visible = False
          end
        end
        object pnlBuscaCab: TPanel
          Left = 508
          Top = 0
          Width = 427
          Height = 285
          Align = alRight
          Color = 13165023
          TabOrder = 1
          object Label7: TLabel
            Left = 216
            Top = 43
            Width = 75
            Height = 13
            Caption = 'Fecha de Fin'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label6: TLabel
            Left = 8
            Top = 43
            Width = 89
            Height = 13
            Caption = 'Fecha de Inicio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 8
            Top = 11
            Width = 188
            Height = 13
            Caption = 'Buscar Periodo de Hoja de Ruta:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object bBuscaFechas: TBitBtn
            Left = 312
            Top = 88
            Width = 89
            Height = 33
            Caption = 'Buscar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = bBuscaFechasClick
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E000000000000000000009E3737C07F7F
              C07B7BC27D7DAD6767C78383B56F6FBB7777B36D6DB36D6DC27D7DC07B7BBC77
              77BC7777C07F7F9E3737C08080FFFFFFE3EAEAEDF3F3DFE6E6D4DBDBA8B0B065
              6D6DDFE6E6B3B9B9FAFFFFE8EFEFFFFFFFFFFFFFFFFFFFC08080BC7878FFFFFF
              D2D2D2B0B0B07777770B0B0B82828227273019191D7E7E7E2A2A2AA3A3A3D0D0
              D0FFFFFFFFFFFFBC7878C58282A5ADADB3B3B3ADADADC0C0C0FFFFFFFFFFFFCE
              D287FEFFE9FFFFFF9A9A9A858585B5B5B5797979FFFFFFBE7A7AC27E7ED9E1E1
              949494EFEFEFF7F7FAE7FFE39A0B007E5F00734F00C06F26FFFFFFECECECDCDC
              DC848484CCD4D4B57070BE7A7AFFFFFFBDBDBDC5C5C5FFFFFFC40B00748F005B
              5F26919D2FA15300E99E80EEF5F9000000000000878E8E8D4848D28F8F474F4F
              0000005F5F5FDDE4EF9F5900F5FF9D626A7E000022809F00F1A78D7B83870000
              00838383BDC5C5CB87879F5A5AC7CFCF5D5D5D0F0F0F000B0F691B00AB2C3D6D
              1F1F732A2FCB1D00691F28000000838383C3C3C3C4CACAC58282A05A5AC3CACA
              FFFFFF2C2C2C4E4E4E00080D000000000000000000000000000000858585CACA
              CA969696F4FAFAAB6666B16C6CDAE1E19292929D9D9D313131FFFFFF848484E3
              E3E3FAFAFAA6A6A6979797B5B5B56F6F6FCDCDCDD3D9D9C48080C48080FDFFFF
              E5E5E5D8D8D8B7B7B7828282616161A9A9A99292925F5F5F2828287E7E7EBEBE
              BEC5C5C5EBF1F1C07C7C965050EEF5F5FFFFFFF0F0F0FBFBFBD3D3D3C8C8C89B
              9B9B9191914B4B4B9D9D9DC8C8C8C3C3C3A2A2A2F0F7F7C07C7CCE8B8B636B6B
              A1A1A1FFFFFFF9F9F9FFFFFFF9F9F9EDEDEDDFDFDFFFFFFFD2D2D24C4C4C3F3F
              3F333333CAD2D2C48080C07C7CFFFFFF0000000000008C8C8CD7D7D7EAEAEADB
              DBDB8C8C8C3A3A3A000000000000000000000000FEFFFFC07C7CC08080FFFFFF
              FFFFFF8E96960000000000000000000000000000000000000000000B14148E96
              96FFFFFFFFFFFFC080809E3737C07F7FC07B7BCC8888D08C8C6D24244B00004F
              0000450000AA6565DF9C9CD59292CA8787C07B7BC07F7F9E3737}
          end
          object dtpFin: TDateTimePicker
            Left = 301
            Top = 40
            Width = 100
            Height = 21
            Date = 0.614796365742222400
            Time = 0.614796365742222400
            TabOrder = 1
          end
          object dtpInicio: TDateTimePicker
            Left = 109
            Top = 40
            Width = 100
            Height = 21
            Date = 0.614796365742222400
            Time = 0.614796365742222400
            TabOrder = 2
          end
        end
      end
      object tsDetalle: TTabSheet
        Caption = 'Detalle Hoja de Ruta'
        ImageIndex = 2
        object pnlHojaruta: TPanel
          Left = 0
          Top = 242
          Width = 935
          Height = 43
          Align = alBottom
          BevelOuter = bvNone
          Color = 13165023
          TabOrder = 0
          DesignSize = (
            935
            43)
          object bExportar: TBitBtn
            Left = 775
            Top = 11
            Width = 75
            Height = 25
            Anchors = [akRight, akBottom]
            Caption = 'Exportar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = bExportarClick
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              0400000000008000000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
              DDDDDDDDDDDDDDDDDDDDDDDDDDDDDD00000DD00000000006660DD08888880E00
              000DD000000000EEE080DD07778E0EEE0080DDD078E0EEE07700DDDD0E0EEE00
              0000DDD0E0EEE080DDDDDD0E0EEE07080DDDD0E0EEE0777080DD0E0EEE0D0777
              080D00EEE0DDD077700D00000DDDDD00000DDDDDDDDDDDDDDDDD}
          end
          object bImprimir: TBitBtn
            Left = 855
            Top = 16
            Width = 75
            Height = 20
            Anchors = [akRight, akBottom]
            Caption = 'Imprimir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = bImprimirClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              0003377777777777777308888888888888807F33333333333337088888888888
              88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
              8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
              8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
              03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
              03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
              33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
              33333337FFFF7733333333300000033333333337777773333333}
            NumGlyphs = 2
          end
          object gbAdiciona2: TGroupBox
            Left = 402
            Top = 0
            Width = 358
            Height = 43
            TabOrder = 2
            DesignSize = (
              358
              43)
            object bQBloque: TBitBtn
              Left = 8
              Top = 11
              Width = 159
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = 'Quitar Hoja de Ruta Bloque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = bQBloqueClick
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
            object bQUno: TBitBtn
              Left = 173
              Top = 11
              Width = 177
              Height = 25
              Anchors = [akRight, akBottom]
              Caption = 'Quitar Hoja de Ruta Selecci'#243'n'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = bQUnoClick
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
            end
          end
          object btnCtaInd: TBitBtn
            Left = 264
            Top = 11
            Width = 116
            Height = 25
            Caption = 'Cuenta Individual'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            WordWrap = True
            OnClick = btnCtaIndClick
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              909090A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A03030
              30FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0A0A03F3F3F7F7F7F7F7F7F7F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000FFFFFFFFFFFFFFFFFFFFFFFF
              A0A0A07F7F7F7F7F7F7F7F7FBFBFBF7F7F7FFFFFFFFFFFFFBFBFDF7F7FBF7F7F
              BF000000FFFFFFFFFFFFFFFFFFFFFFFFA0A0A07F7F7F2020204040407F7F7F7F
              7F7FFFFFFF7F7FBF7F7FBF7F7FBFBFBFDF000000FFFFFFFFFFFFFFFFFFFFFFFF
              A0A0A07F7F7FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBF
              BF000000FFFFFFFFFFFFFFFFFFFFFFFFA0A0A07F7F7F2020204040407F7F7F7F
              7F7F7F7F7F7F7F7F7F7F7FBFBFBFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
              A0A0A07F7F7F7F7F7F7F7F7FBFBFBF7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFF
              FF000000FFFFFFFFFFFFFFFFFFFFFFFFA0A0A07F7F7F7F7F7F7F7F7FBFBFBF7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
              A0A0A07F7F7F2020204040407F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF000000FFFFFFFFFFFFFFFFFFFFFFFFA0A0A07F7F7FFFFFFFFFFFFFFFFFFF7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
              A0A0A07F7F7F2020204040407F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFF
              FF000000FFFFFFFFFFFFFFFFFFFFFFFFA0A0A07F7F7F7F7F7F7F7F7FBFBFBF7F
              7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
              A0A0A07F7F7F7F7F7F7F7F7FBFBFBF7F7F7F7F7FBF7F7FBF9F9FBFBFBFBFBFBF
              BF000000FFFFFFFFFFFFFFFFFFFFFFFFA0A0A07F7F7F2020204040407F7F7F7F
              7F7F7F7FBF7F7FBF7F7F9F3F3F3F7F7F7F000000FFFFFFFFFFFFFFFFFFFFFFFF
              3030307F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7F3F3F
              3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000
              0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF}
            Spacing = 2
          end
        end
        object dtgHojaRuta: TwwDBGrid
          Left = 0
          Top = 0
          Width = 935
          Height = 242
          Cursor = crHandPoint
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Align = alClient
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyOptions = []
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDblClick = dtgHojaRutaDblClick
          object wwIButton1: TwwIButton
            Left = 0
            Top = 0
            Width = 26
            Height = 29
            Hint = 'Crear Nuevo Asociado'
            AllowAllUp = True
            Enabled = False
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
              0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
              33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Visible = False
          end
        end
        object dtgExcel: TwwDBGrid
          Left = 0
          Top = 72
          Width = 113
          Height = 81
          Cursor = crHandPoint
          DisableThemesInTitle = False
          IniAttributes.Delimiter = ';;'
          TitleColor = clBtnFace
          FixedCols = 0
          ShowHorzScrollBar = True
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyOptions = []
          MultiSelectOptions = [msoAutoUnselect, msoShiftSelect]
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgMultiSelect]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          TitleAlignment = taLeftJustify
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          TitleLines = 1
          TitleButtons = False
          OnDblClick = dtgHojaRutaDblClick
          object wwIButton3: TwwIButton
            Left = 0
            Top = 0
            Width = 26
            Height = 29
            Hint = 'Crear Nuevo Asociado'
            AllowAllUp = True
            Enabled = False
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
              0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
              33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            NumGlyphs = 2
            ParentShowHint = False
            ShowHint = True
            Visible = False
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 522
    Width = 943
    Height = 46
    Align = alBottom
    BevelOuter = bvNone
    Color = 13165023
    TabOrder = 3
    DesignSize = (
      943
      46)
    object bSalir: TBitBtn
      Left = 850
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Salir'
      TabOrder = 0
      OnClick = bSalirClick
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
    object gbContador: TGroupBox
      Left = 0
      Top = -8
      Width = 505
      Height = 57
      TabOrder = 1
      object Label11: TLabel
        Left = 40
        Top = 16
        Width = 53
        Height = 13
        Caption = 'Afiliaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblAfiliacion: TLabel
        Left = 48
        Top = 33
        Width = 52
        Height = 13
        Caption = 'lblAfiliacion'
      end
      object Label14: TLabel
        Left = 112
        Top = 16
        Width = 47
        Height = 13
        Caption = 'Noveles'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNoveles: TLabel
        Left = 120
        Top = 33
        Width = 49
        Height = 13
        Caption = 'lblNoveles'
      end
      object Label15: TLabel
        Left = 184
        Top = 16
        Width = 74
        Height = 13
        Caption = 'Familiarizada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblFamili: TLabel
        Left = 208
        Top = 33
        Width = 36
        Height = 13
        Caption = 'lblFamili'
      end
      object Label17: TLabel
        Left = 280
        Top = 16
        Width = 52
        Height = 13
        Caption = 'Pre-Cese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPrecese: TLabel
        Left = 288
        Top = 33
        Width = 49
        Height = 13
        Caption = 'lblPrecese'
      end
      object Label10: TLabel
        Left = 416
        Top = 16
        Width = 30
        Height = 13
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblContador: TLabel
        Left = 408
        Top = 33
        Width = 53
        Height = 13
        Caption = 'lblContador'
      end
    end
    object dtgData: TDBGrid
      Left = 543
      Top = 12
      Width = 50
      Height = 10
      DataSource = DM1.dsQry2
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Visible = False
    end
  end
  object pnlCuentaInd: TPanel
    Left = 352
    Top = 72
    Width = 292
    Height = 401
    TabOrder = 4
    Visible = False
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 290
      Height = 24
      Align = alTop
      Brush.Color = clNavy
    end
    object vleDNI: TValueListEditor
      Left = 6
      Top = 37
      Width = 282
      Height = 318
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goRowSelect, goThumbTracking]
      Strings.Strings = (
        '=')
      TabOrder = 0
      TitleCaptions.Strings = (
        'DNI'
        'Apellidos y Nombres'
        'ppp')
      Visible = False
      ColWidths = (
        37
        239)
    end
    object btnBloque: TBitBtn
      Left = 11
      Top = 367
      Width = 137
      Height = 30
      Caption = 'Impresion Bloque'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnClick = btnBloqueClick
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
    object btnPnlExit: TButton
      Left = 267
      Top = 4
      Width = 22
      Height = 17
      Caption = 'X'
      TabOrder = 2
      OnClick = btnPnlExitClick
    end
  end
  object ppDesigner1: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprReporteHojaRuta
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 24
    Top = 440
  end
  object ppbdReporteHojaRuta: TppBDEPipeline
    UserName = 'BDEPReporte'
    Left = 56
    Top = 440
  end
  object pprReporteHojaRuta: TppReport
    AutoStop = False
    DataPipeline = ppbdReporteHojaRuta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppbdReporteHojaRuta
    Template.FileName = 'C:\Users\rsanchezc.DERRAMA\Desktop\rptHojaRuta4.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 88
    Top = 440
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdReporteHojaRuta'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppltitulo: TppLabel
        UserName = 'ltitulo'
        Caption = 'HOJA DE TRABAJO DE CAMPO POR COLEGIOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4445
        mmLeft = 8467
        mmTop = 22754
        mmWidth = 86149
        BandType = 0
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 257705
        mmTop = 3704
        mmWidth = 20108
        BandType = 0
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 257705
        mmTop = 11642
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        Caption = 'P'#225'g :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 237596
        mmTop = 11642
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 257705
        mmTop = 7673
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 237596
        mmTop = 7673
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 237596
        mmTop = 3704
        mmWidth = 11906
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText4'
        DataField = 'NUMCOL'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 3810
        mmLeft = 257705
        mmTop = 15610
        mmWidth = 12965
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        Caption = 'Nro.Coleg :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 237596
        mmTop = 15610
        mmWidth = 18521
        BandType = 0
      end
      object ppImage1: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D61676543290000FFD8FFE1001845786966000049492A0008
          0000000000000000000000FFEC00114475636B7900010004000000640000FFE1
          036F687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C
          3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043
          656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120
          786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B
          3D2241646F626520584D5020436F726520352E332D633031312036362E313435
          3636312C20323031322F30322F30362D31343A35363A32372020202020202020
          223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777
          772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E
          7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D
          222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
          636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
          5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D4D3A4F7269
          67696E616C446F63756D656E7449443D22786D702E6469643A38384242323139
          413845363945333131393530364335414333303344354330382220786D704D4D
          3A446F63756D656E7449443D22786D702E6469643A3442453033434441363939
          3831314533383235463846314639373642313741362220786D704D4D3A496E73
          74616E636549443D22786D702E6969643A344245303343443936393938313145
          33383235463846314639373642313741362220786D703A43726561746F72546F
          6F6C3D2241646F62652050686F746F73686F7020435336202857696E646F7773
          29223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E73
          74616E636549443D22786D702E6969643A384642423231394138453639453331
          3139353036433541433330334435433038222073745265663A646F63756D656E
          7449443D22786D702E6469643A38384242323139413845363945333131393530
          36433541433330334435433038222F3E203C2F7264663A446573637269707469
          6F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F7870
          61636B657420656E643D2272223F3EFFEE000E41646F62650064C000000001FF
          DB00840001010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010202020202020202020202030303030303
          0303030301010101010101020101020202010202030303030303030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303FFC00011080040010403011100021101031101FFC4009C00000102
          070101000000000000000000000007080103040506090A0B0201010101010000
          0000000000000000000000010203100000060200040207030808030901000002
          03040506070108001112091314215394D415161731180A516191222393193941
          D192242556B778A133957181D336274768C81A8A110100030002000602030000
          0000000000000111213141516171810212B1D1F0A132FFDA000C030100021103
          11003F00D6A7E21FEE59B05B49BCB7D6B9993691C5B5B75BAC97FA8E255233BB
          2D6E8DBFC9600B4D8FCAAC49B22467109659227893A35996E1AC01806B6AC924
          A7000625672AC7CA76BA573BD938DFE830CE5F9CC167FE3E8E203C537973F14C
          FC9FF305CFF473E7C047C51FAE3BF4E7FF001389A1CE6A76E3EC5E91DB91DBAF
          5BACC9157F30625E894AD4685C570A2D336A4AA4B52A6293F8C96AD3B74BE26E
          982BA54A25411079F234B116704A3408B891EC67AC774A5D8FD70A1360D1340E
          3C96F0A6EB4B64A8F9AA32B06C3F5061ACF2A1B30966494DE732D237411193BC
          3060DE8EAC631CF971D50BA70070070070070070070070070070070070070070
          070070070070073E5F6F006338CFD9C01C01C01C019CE31F6F010E78FCB8FD38
          E0239CE31F6F00701E379DD8FF0099E7703C7FF30F617FD5092FF5F1CE79564C
          D5D9E7B9BBD51A1D8D6AD30B9555526C7C32C4AE38696B2E5CBE28680B3CA933
          65567BA956B3B47D421330A8A5A9990E4C721CF9A00B24733787D64380DA2EDC
          D3FB7F6E6ADA1740F5C2452D7179D22D3BB9A4D18871CB0E6C6D76B0F5F6BF95
          CEA7B2E94CCDE4A6486373E4BA42664C39C57A240158A42495D22180AE131738
          1B3C7BB4D771C945FD26D5F66D44B6CCBB218CC9E49288C383735B332B2C5D71
          AB486A942BB15EDD9B6B60C59FD537A925B5CC0EF940E67A730A4A69C60041E1
          5F2B4B34DBCE83B97596CC91D377E56D2BA9ECE8A8C803E43E62D8636B9A6256
          1385081C1319FB448EACEE89861391AE4661C89610209849A60058CE64DF6AF5
          F3ED63FCB47403FD9BEB7FFA4713E3AA15CD91DC8D57D4065677FD9DBF6AEA49
          048CF3D3470B9F4A9BD9DD64A6A31A62D7E238C19198FD202DB32B89CAB1A34C
          781284D088DC8022C6780E6E7B8B7766D848C774DED5F59E98ECE449EB4E76BC
          DA2332C360CC356D8D12B18A95ECD3FD6B3B0229DAD8FC81E111E18EA029B8F2
          9BD7A339B14807D41028EAE52E6E23A1D19EC86F0EA169FE1903B37B1B52D28B
          24850D4C7D9E75306D6C913E2228FF002C738B5468261EFEBDAD3A9FD99CA8A4
          C24E519E818F19E28CC59368F5BE4B492FD948EDED53BFEBFB4B4B9BF3ADCACF
          3C8E39D6ED6D2CBCC2F2B1CA5C8DC0E666F0B38B190AB01A680C4E6632033011
          6338E013A6FDFDD27776DA7DE1A369E8E776BBFE4B248852CE0D161C7DCD2597
          228764E2E5C82247205AA0B732E307938257A80E7CB235261449A600D3C900C2
          CE4771DD0B575D116DA0DBCD7F74AD1559CD34BA39B345971A76605F6C3EA546
          E2D75E372D6D5CA42E12A52D2B8B5B9484E0C38A41D4A8CC05380668428AD8EE
          65DBDE8D992CAEEDBDD0D6C824EDB1C4E697A883DDB90E2E431E744E6E0950DD
          26694EE8A164656A737D0616BC29C60F4F3FB33C2E02CB2BDABD6783D3683626
          5B7F53EC5423AFC33E15732EB0E2C1AC9D7E34B3E1CD196B9A96E638F38FC457
          872493E0A81F5998C871CF38CF2045275DCDFB7BD66E155B5CF37275EA28AEEC
          8DB24D2B0CBC5971E4E92530B9264F047A665AFC2B13735441F4C4C6811BA2E3
          52A152324C096688458B1860BCDD3DC5744F5CACA69A76F5DB2A22ACB39E7084
          C221732B0D81A9E9B53B9929D5362C93146AAC950E40E8955166A550EC344428
          273D650840C67385C0576E3D9BD74D798AB5CE6F6BDAA3A7E22F981E58243645
          83168735C8BA1312AC408E297C74440901D84AA0B33A11F8C3F0CCC67972CE39
          8615AF5BC1A7FB60ADDDB75AF65A97BADE581265C9EE3F5F5811F90491A1AF0A
          4A47F17728DA559F1D46CE258A0B282AC69829C468F01C0F22CE31C0393757A6
          763253287A756C674EB5CDB19519EE8B933792ADE1ED7A76B666A4C6AB34A01E
          E6ECE4A8A4C9480E7269E79812CBC6442C632090C4F67B5B27B66C9293836C25
          2133B961C27404BAA58A5AD0490D99171B12B290BD824304687E572765133AD3
          824ABC294A5E539A2C00CE916718E0257DE9759BEB07DDEBEF1345FD7DF13C2F
          A21F56A05F56FC6F85FC77C0FA6FF1FF009BFCC7C17FBEF4793EBF2BFB6FF97F
          ADC065D695CB50D1D191CD6EBB52B7A7E185282519B2CB46731880468B58A39F
          974837D9639B4B60551DD39E8064DEA172CF2C7A380ABAD2D6ABEE788A29F53B
          6440AD782399AA486D9A56B308F4EA26BCF446E49584229145DC5D1A151C90EC
          640680B3B392C58E42C633C02713FDB9D53AA27ED754DA5B35AF95B5A0F7F0DC
          B356F3EB9ABA87CF1DB0F4779766136C4243236E7F5B876521C969725A717981
          E3917D59F47011BF5DA54F9584FD8E97BEEB5A4AD1607B81B71F614D98D92C36
          180295F2588BC2B639642D64A230501C6750B5F942DE050B529A131D932A2B06
          67C3098178B8B6575D35DCB6036FFBF295A34A961EAD34587705A507AD012552
          8029B2B93B00A66FACD8783908561393829FAF2560C07572C0B1CDC721A36F07
          710AEF519669C165CD693588F66B66AB3AB9ED5CCECC636029828F98C7A6CE72
          2BB580D03984A5EC51C72626D4D95E6FF84604E2009A703232F3C27390F322D7
          DD173A823F5A508BA2A798D611513C065163C5AC587C86071B1479116E2FC17E
          97B4BC2C8F34098DBCE09EB3CC282FCB102C0CCE90E719E028A9CD8CD7DD8940
          F0EDAFF7AD3B79354755A640FEE5505990BB29031AE5648D42346F0AE1CF4F49
          DB152A20191940384011810E738C6718CF017B925D14F43A3C8E5D2EB5EB58B4
          4DC6505C1DBA51239D461963ABE686BDA88C950F44F4E4E899B55CA4C91A435B
          F0DE59B95795A5893E0BF14390E0304AB9F64505AEA7724BEAFAACE789186C5B
          71D0EB19B5B186B788C12048666F6264834A148A44E6D25BC556CC461A5DDC94
          A84E61CA51983505966E079C85EA9ED95D73D882DF0EA06FDA56F12A306A6224
          86D3F69C1ECC0478F59E2F9325EC70B7D7AC3518AF040F2584FF000F23C005CB
          9F2CF2723493F7E5DA7F9E3E0FF53D3FC3FF00FD0E7DC73CBFC990CE5F75AFA0
          9F39FD31F17E0FD5E3FCC3FDE3E33CFE33D5FB3F31D3FA9C66FF002AE49ABB8A
          54F38FC5053E8C5D28232F10D71EE19B2C63630CC4CC971591DA0DEF567B951F
          197E2C61196B50492EA471F4262234224EBBCC796342228D163333EDA34E33EB
          CF73D56E2C86E19ACFAEB6DDD9496DAF29D5FF000B648CF71305B089F8C65322
          6D881064878605ECAE85E5A53322524A4E8C90010129C050024E33737E63A4BE
          F756258276AB6D54B5CDDDBA3767DBDBF1A574DED486BD7A270D52495D37DAFE
          B9944CE997C5CC0E2A50BC452A5BC642E8689A4C11C991BFF50841F1D28041DC
          F1EE9DB55B71EC0DDEF9D8AB506B277B5664E55FFDF7B66A1A289AA785236F3E
          235CD67414A60316579CE7CCAC8E4364964BEAD6F4261B94898E71C6405F3208
          C932E7EB4AB4EF33B39CDFB54F66AB0A62B5649E78595BE353E66AFC70DD2527
          D61565BD5CE2B3811EFCACC35CD744EBD2654E44332238D114D49D5984A60964
          F2070F97108F4B3ED65FCB4BB7F7FB38D6FF00F48A29C6C71F554D055D7774FC
          48FBBB03DEC74779657FAF38B85A6B9A754C99E638DD268D5253D8ED57078337
          9ADAE8DAF6D51B21BA42AE5AB9334284A6B839E4F54663251EB303C73F2D5255
          BD3A0BAD7A19F883FB66567ACA4AB8B571675CDA9168AEAA8E91BBC952D71207
          2D8DC4517A38FB83F383B3EA6649395152D7929D6293CC214987E0B1052F9624
          A4C57CA2836FD7A9AB5EDDF707EE13B15B63DB6769BB9FCD49B25C18982B2AB1
          C24C38B514D2AE5B35606B699CB74690AA7DCFCBD1589A4648C1423F089214DE
          B44612729C90A533B9B80BB6B9D2DB49AEB56F7BF89675276E3547B7E5C5A2D7
          85935B41B63A36FE04B12B3236E90D4B01650CBDE9A1B1B5548871C91BDA1F0C
          A18DC96B6A44BE74C586A009F8B1DF852161EC25DAB20D61E9EBDF744B7E7D3D
          7F9BD1C9EF42F562B442FE14D5EC353D7516952B707D942434A39C1C82ED61BE
          B8292DA129EDC80224E250ABCE79E30B25F18EE4379FC397DA72AEDF262B1F63
          F65ACEB09AE9CD5CB59914D775AC2A5638B369D6990DB1F9BCAE712774392AA1
          3333A08F32B3261E1B7095C1767908C5840111403DF18B0BE3995A15DC9EF5DC
          3B4751BB116C46E5C49FECC993F595B4ECFB672DA31CC12B95962717C9455D59
          2F20E830E48E6E869B2142C4A0D5AEAA3CE80C5A8892D47920327881ABCD7E97
          CB55762AEEB74EBC2F7CC426A7DA9D3392C2A2B200E32BA29229ECE65D1F9AE0
          E2F00F0D02C7043016E0AA28BF08B0A94E316318C9A2EA91FE654F97623B476A
          0407F0E9555DC01A1A2666ED5AD8DD2D623D58ABA66FEB913EA1B3AC563829F5
          F2A87A970510F6F8A45E3D242F0DE6244699CB0A5BCAC9AA46030D2449F8C447
          9A24583DA7F5213FE1BE67EE306B6CE5CF6F14A18858ABED1709BC855A67142F
          97FB7D359AF15C416AE5116C445AA20BC034E781281DF2E290B37CDF96C891E5
          51F5B9E57B2BCB766F4E65DDB0BB2F6B1ED0E9DDABDC736C9E22D60BF5194A43
          EC496560E08602A6DDB3E978832BF587174EE331358DF1140D1266E666D4E615
          92E2851AACC4A993100536E2AA790D74EAF1FF004CFBD276C87EAD341EDAED78
          ED60DD550C5A4355492F73360215316699D9AD35DCED6C02C3C80F5CA9AA4105
          981ADEF4D872C5004A79A1C00B27AB1812AA611DA877A189027FA8509800A432
          487FCFBB9BA310CC4C616E8730CD622193ED4D5AD0A2450D90251056B04A1B12
          2B306897119C9A94FE430E3D19E353C0493BA16976B0D37DB6AEE9BD174EC128
          5B1B542B270B875DAD3A7630C705B32ACB0AB74E43C333E304E5A1127921A6BE
          650E52BDF985270DE922A3C2A846986789874156BC3B7169AC4BB7F5AF5A4729
          383B19D0EA3671358D5B0963CCE3BBD92DA8EC35CA52D17B916C9A9899B1D742
          198A229EC4FE6AEC2D3DC03911A664B1081C2434F8F6C1C5F682BFD2B465E834
          1BB916F3B568C6BADD36D496C32EA286D6F41336C3D78C4FE15533B52C68E4A1
          3C5665713F30AD5CDF1C8F3139399ADE8CE527012A1C1461D2EE3CCECD7E773F
          BE34FF00622EDB5E0FA391AEDF1389876B0DF6B15643AB9B3AAFB5E87BF2DBD5
          56DAF26F4CCDDA20F59B142D3FD54ABBE747125C1C5F18122A756277C202B278
          53E3207E86DFB50340B4753EAA55C23296A7360C57056B13B1ACBBBADA84C4EE
          19E6C74A2C98F249649AD6B1E7F356F90BD4E1CA7AE2FA7B875A8546A44E4A90
          A7480252964940540D06DDB4ED7146EB5F7EBA76AE7A769556F01DB5EDB2C314
          1CA256E13E5F13694CE5A98E096A1264AF2A97BA2A8CD2C62BF979911A95071E
          CED6853B78CCC89264594F1EFF00A1B54BDA939A515B9BB2DB4169E8187B8FD2
          37DC72B61314B610DB5C599B0FABF1AACA008E24EF45B051375485A1B26155CB
          E5197095A61C10E4EECA1D5E9C00EADEBC6044A30F30D7F64229DBE2DDA9FB53
          BD6ACD275423AB3F8C0D795BC86BA72A81244DEAB190BE365F2F778D2136ACA6
          4C091EAB1569A748CB54F1133D2236FF001C84EA0A4E34F94868A4D4D7A9050F
          73D35511DDFBD7CD2945A6330B4754607AED3ADE0956AE6A756951A48A5C578A
          9B722B52C22457A575207BAD227308055E992A972291E559E05F235EDE7AF4C7
          94DE4745EEBA1779B237496EC6EA3DC7A8BDB3B6AB542F1825F159C46CCB257D
          45425555CCEF50A70FE8A33B055B5D47C06F45A54A6311A891C549E3C156D2F0
          B1AE4AC2886D6024472918931DF62FDDA9B47EA99F47671B297AB430DE8BE29B
          81BB51FD418D4FD81A1FA17AC558B16E25AEA1C1657713716CCB337DB93BB39A
          DC1E9E260328D90284816C401525266F015956DC84AAABB268866D67514B595A
          B09B76EDBBBFBA0F71C7CD79D603D8A04E044CE6355ECF5C92091D92FEF16AAC
          455E4361D5B3439872E6F6E061DE586E24904A75279E12B2C18BDECCB74D636C
          697DD62ED5B5CE8F4C229BA5AC75B636335B6FBA3658CA3AAEF9B6E3F51D9D55
          5D3148B55F59CC65D059FB2CC7CB224A4A25C5B7C8468DC42A52E538C2A4132F
          FDC9FF00FACAFF00EAEF13F6BD7B3895EEB0A0F45DD0F7F55A434E4AAD36E4EC
          2284CA539A610A139E45AB2334A3C838192CC24D2860EB00C3E9E7CB38E333C8
          5BD277BFDEE4CD891C8E74A19DEF36E654B1A6BDC27ED6EA65E770DB98914771
          144C98BBF1C2207CA95BB96C18C9187C5383E442E79332BFC6CF5F0FB4FB8634
          FF00B6175CAB5DD7EB149A484C86B777D8F78DAF795EF8930E93B7ABAA45082E
          BF7C92BCCDD79C7BE3A16EAC24F59E51E60B272B165408591E79F12F28634F77
          FD86FDAF903D635EA5A05575736958570C69281A8A29F0B995991D83C5A4E6AC
          7AC0B2A16379AD75EB77809FA71828CF133CF3D58C05782BE79B296859342D03
          ADF275ACC755FAD2E5703B55A89131A342F08965E0FCC1249F09E9E4BC655BEE
          153A4692E5378B91652978C8439E9E58C3781EBA9DAC7F968E807FB37D6FFF00
          48E27C7546AA7B93FE1F449B6BB52DFBCFA95B472FD2BDA23BE1C6CCE4D176B7
          A5AD9267A69662632DF3561758ACBA172880CC0C8C17842E4626395A37720A2F
          232083C6B142B931737D86E711FC30F2763DAAD5ADC296F707B12DCBA2A4B36B
          8B86F6975AF03719A3FDCF33AEEC16D94B6258E3DBAD946BA4218088A3221642
          42B8D7F3CBC939521100BC948899F5DB0B9EDE7E1F6964AB6D26DBB1DBB375EC
          1D09B9ADA39DD6DBED3186F7C5D1796BCC95612E72A796E708D4B62CECD29E52
          F69C0E4E4D4B0B766F52EBCD493E544108316B6C2A543F648B56BAD3ADEAA0ED
          EEE0773EC25BDBDF1871679AD916323757DAEA0CF6A9A0D6804B2395B3ECD1DD
          E9CA5CE080C2923AB99AFA9C4B903737272C84C0420C8D101D976FAEDA2E1A39
          DBB1FB44155D24D8CB1ED1DD494168A481662A5377D5D29D40030B889F2B91E5
          665806E7E2721B863CCE71CBF678E5CAC64504FF00B3D7691FE169415D744C96
          E76FD836CB92C23266B96975D1D5EA540DAAA16D10D5EC0A1BCD99CC86E21584
          3708623707138E91F2E9FB73C48C81AEAA43F0ECECFEAA4D2CE836A97764BA68
          3D3AB7E5637A985590E81220DAA9D80C30297E171DB1954A543446E7D88E124B
          77CE0DAD88169A020919E8CD012023844570319AC7F0C038D6BA65BA7A869773
          D3B991B5D636BE4CDA66CAA8E3427419B284934BDFC86F766705A81F9ADC64E4
          4AC25187814A02D29A9BC4C16678990855514365D6FF0069176B53B3AC3FB55E
          2FD4AC8E31783D470F36EF156827146BFE974F23F37F1C35F066880F4A4BA858
          B09318F8C08C2702C1B91199C64194C5C50A594F685739276626FED318D814A9
          5C5144A2F1ACDED9ACF26243B31CBB1BAE2F17E9D026A518020F021C36631F19
          C998C67CC6739CF32F85650D7DCF3F0D34A0751E8AAAA4F77DF6A5DBCD1D88BD
          C1983601AAB7529DA2671B576DCFED88B1208B249DFC5226E5075D63B8212D46
          17B994E680CC92A53F40B1802BCF4642BFF0F0DF7626DAEA3EEAEC3F7359FDFD
          7650762D713E9E9B39A7DAC11A90A1AC2C96B9F4760952B0B1CD199BEA68B9C4
          A4509D607C1710295EACE70C12508D191956C48DF96DBEB8A8DA0AF60D054F32
          0C1870DD82D77BCB2EA362C487E200A1EE1885AC28CE11E5D1A7CA8A4DF2B791
          F37E20FCAF8DE2F846F4F40A8AFDC8D7C3B6C355AFED6B4F2D0C0CEBBAAF94D7
          209989971230C685246F310FC544C427167F8AE12E0CCE72479A23ABECEB0FDB
          C029B65400760D453FAB30EF968366D5BCAABFC3F811855E5AC5258C2E8EE1E0
          0DA23C90A9CA3CADF1F04E4D0E07D3D1D78E7CF80D5840BB726C76AA0AB49BE9
          7EC6D60D76421D56D6ED62D858A5FB4F482594D5F8A358A189E0D5A5CED24422
          C58B5875158AD51E50E0DE71299D5E1A1C5B54272D425F3288B58395E033EAF3
          47F611B36AE09BD5B25B479BA6CB83D2973552EB4A56F531709A39AA273D3E02
          FCD4C149C41E66F2992B34802F90B506BDBD3F3C3DB9CA047214DD4D889BC94D
          C581AC788583DB6E2512B0239587761DA4EDA75AAF54F0E73FD0B9A4A6BDA3EC
          6A09F5D917C624F01A52B9D81A764F775325FC756AB51F0C812E706513929370
          C022C9F0318990142D6FEDD8D9B2FAAFBF8CD5AB34AF52E89DCED87D7F986BA2
          39FC2A40EB612AA9F598749AA1DDD398CCDDF9A2C25524DA39AD6EF6F9955283
          8A931E9DDC97571C9C7A8E9139C1B41B2A99EE22C1674EE63AD7B7B4DB857D3F
          7148E69A9EDADD7D79B05254AB8A6D2D02FF00A596053B6853724511A723CA02
          ACB44813BBE493C02C10B4A09A3C714226F1DAD1D57EBF25602F6157AADB749B
          92C9DC2F3B26F3014CAA22E5B5AC68D247083D6D288E4E8884F4CE2B34818827
          8E92F785691A0051F85E6AE2F2A061994CB4D76AAE68FD5D6D593B2155D6DBDB
          424DE64ED4A5DBAFD4CCB1BAA143584F5BE30D538A2ADCA76C9B7662BADE80D8
          A4C6CB54E66E1E58D7A0704EDCADA8D46A9B8472C0CBEBFA3FB844CACAAFA5FB
          45B655430C02B279CC88AA874F2A29656A8EDE7D293F9441F59A7D6C58D69C8D
          4405016238FF009658D3B5815283C3956BD4812961182F7A81AE86EABD2D8A8D
          44C713C37EAADFD65E6421610C6F19C5DF7B58B74059F0D20747700331B0CF7E
          1FE360EC614F96F1B0593E27840062C776C09EC4D92BD9CD31B229E19B4147EC
          86E25EF5258D20AD8E9155EE110DCAB3DEAC2B3686B66AC4B3567512985BAA55
          0DC984EA81D9B1D5138B592E2872467034A30F99FE87EE86D43D52D2CDB8DBAA
          E19F1AFBB1D436C157950EAFD32F710A91EDEE9BB11B258E4AADC72B2AC09D58
          53F7290C6D3AA6F694C8D7313447D6A80389C95D8F20809705D7F85BABF99FE6
          3FAE41FE6E1FC517CB7D3F2BAFCA7D2CFA69F43FC7F9ABA79F2FEF3F30747574
          FECBC8F3FDAF0A2DC1B7E21AEDD57E6AB6FA5FD7ABAC3248FDAF7B2B67C86DE8
          1DBADCD0B15C512BED8ABD5C96475DC8DD12967A38F4B23D213D7149922B34B3
          17B6145AB2422C64D093998DB573F5E09BEA8CFEC0BFAB880F04DF5467F605FD
          5C01E09BEA8CFEC0BFAB8070DAC9AA57FEE2DB719A4B5DAB4935913E93B82342
          048CCDAACC6B6144AD5149CE92CC5F7C2C35C5228D7E2F8AADC57984A54E5079
          885F663323C207B236ADD2C5EB76B56BFEBE14F19910690A5EB2A98520C94626
          F8E9B5FC319E2C7BC0131861C6242DCCF6B11C127231F8201E03CF3CB9F1D50B
          CF007007007007007007007010E78E7CB9FA78039E3D3F9BEDE023C01C01CF1F
          6F3F47E5E00E021CF1E8CFA3F3678039E33F6671C04780B32C6162725CDEE6E2
          CCD2E0E4D23198D4E0B5BD1AA5CD860F1C8C31BD59E418A118861F467258C39C
          E3EDE02F18CE33E9C7FDF9FF00B3F2F0073C63F37FC38039E3F2E3F4E3808F00
          7010E78FCB8FD38E00E78FCB8FD38E00E78FCB8FD38E023C0483882541432541
          452824D0E4269271603493039F4F2194308806633F9F80B4FCAD19FF002E317A
          3ECFF086FF0077E00F95E33FE5D62FFA437FBBF007CAF19FF2EB17FD21BFDDF8
          0AE46D8DEDD8185BD022420333D46051244E97060B1CB964CC12006062E5FD39
          E02BF803803803803803803803806A3BAB6ACEA95D739C58B5BC8AAA89CAD955
          C54848FD73BEA48CC1D1A07495B3363D832F8EAB9A230DD2A5ACCA8F21846F8B
          DB5872F6624C38AB4E8F271980D5CC1FB8E6CBD9578D13128D06AC87C2A6708D
          5392461A76023E5D2F3FDB263B88996E2F19856B1E74B09C1FA2721AAD4C54B4
          ACCC4CA8E5C854293BCE2E72C33B835ADE084F1A3BA6ED1331E49D292600E6BC
          9A0E617C5DF5DB96B5DED0191EAAB8D75B35ADF5A5A95F3B3939C9958ED266AA
          2A5B5244BDD5D1B508CD129610BC031F0854427C94E3A09BD9B05B0BB028E154
          AA8A7566BA7D54DB0CACB5C503B45D575814BEB8C2B574E6947523D96FCC9177
          67B9C59572BFB51928C094320D035E4E6A2959A4F59CF40D49CF742EA9842A80
          AB7167C728A75766AED6618E6BF278BDEAED7DDE712BB9F684975A364D7D71BA
          CA472922230B3CD7C893818AD24970980C6E7F35AB00DD527868919A19DD36F4
          717FBDC88A3B57E2AF123143A5EDB61CCAAE78CBEE9CC75E36C7341D82B364EB
          F88CFD500D056D5B182941CD4E8E71D91203DBD51CF0991B5E0E3108F5391D50
          D80B79EF58FB8ADBA8EE8ABAD09440761EF82E9CB927E82D2866B6393241290A
          97E55907975E075746AA6913F27526BC2D8A28718F2A561725CD4A8E20EC0F87
          21A93F7744D8322ABAE64245974DD759328EBC2C268B3AD0A85D2511EDACD8BA
          82CC570E2B532976EAA2D2768C3D94B5A028D4259244DEA46B27253C27531A6F
          CFC39E1190BF00A04E77B2F297B4EECB4CD9F2B1A767D5AD2B7C8619DBD5F639
          3951B18FCCF14D7D69B0582E5597656D68C71E011D7E90BCA80015455A8684B6
          F2C2853399520214E490C17603B81DD53498EC5D215CAD93B6445D284DD36442
          CADF0C90C2B63A84B075A2AC873DC6275E6D82412597A5895BEFCF8B7E5F58FE
          D6C4E0F284E6D5ECD937193BC57907C7BFDB892DD73B4E8CAE51DE548EB4422C
          BA7B656C590DCD7557B26B252A0945203A6D443E1CD0D0C5348721201292276E
          425C154689638929028DAB2072389CE41AEB47739D87739A51E078AFD04064B2
          18A415A6F2D5C974294A7B42212C99EAE58F7EAAB0A17E4E62A67E7D72C3248D
          B3350D73C30236FC0D63835283487B4232CB781AB149FB93ED141A0BA82E9255
          B5A2FB96C6AF3576EFB56AB4153BDC4E2F634436CADC8A404359D0A091D9CF36
          EBE4EA848D2F705EF8AD1B53B14947F0F54EC4A14EB3CB168F3E4397DD9DCED8
          FA6F6B6B2A16A66CA922CCD25AAE3D62C524D79BB1313876C0D94E773B7D72FB
          AECC33A72746FF0096DFA39075817917C09049E4662F786A330D796E25778EEE
          859E2B7B5F95876F8B42CD852D324D7213BBB73D6513537737D83602065659DF
          72C90526800E0D6D2AD9E62F71D80C124B9C33109141294099BD30402C230F2E
          1FCFEC2647EEE6E952F207074BACF855955C466C3DBCA3DF08A975C2D14B632C
          2F5D68F7EBAA0D7C31B4AA982F657F7898099C6CAEB1821427683C632D436B90
          324AB24208BB87740DAD470BCB5065DAE0535A6D83B32B8FBE5B894C04D085B3
          C7B576BEBFEA98CC85C4CB45055E6BED913A992B8DAC766A93188B0DCC8AC86F
          24D7C116103F0335D94DEBDA56F6DDACAB489EC1ABEB61B7481D6E8ACD16BBC5
          0EBDD55353588D5B57CFEC2576CBDA9589A53165987292BB62307AF89931A934
          7CF6E1A071F8E275ADA638F50A74F77776C18CEBD65B1894D16F7AE755834EA0
          11EBF1155B377F40B526C744EAD9959FBA92F31B67E9232B687A9E392A3CE42C
          D1F355832352254F0EC81B1B8F52308FF101BD7EEB1F3F7CDB527CBDF7D1FBAF
          FDFF007E9ECCBEEE9F427E17E77EF7FF004F3E29FF0097FE77FF00D37F3FF1FF
          00913E71FF001BF8A7CBBFB3E16378DC01C01C01C01C01C01C01C01C01C01C01
          C01C048388215146A752494790780651E41E580D24F28C0E4232CD2478100C28
          C0E738CE058CE33C07C0D2A530D4EA069881A849834294E112588D4A13C2101C
          14E3C872611834000E07D3CB9E3973E011CAEB5CA8CA9251299B57157C4E272E
          9A0069A45236D6FEA7656DA6B9AA7B1B1245AACC506B3C644F6B8F5BF0B4794E
          DD85A78CFC13E28C43C82D05145905964905809289000A28A28012CB28B2C380
          0005803C8002C00C63A438C72C6380F911040CF2D408A2B2A092CD24A3F25832
          71651E328679459BCBC401678C806461C6790B20C73FB31C07C052A50E140429
          8808558C662A08492C21546180C1660D407A3183CC30A06022C8B9F3C6397013
          0A20924A2C828A2CB20A2C24964960080A2CA007A00500B0F2000B0031D380E3
          1CB18E02461020C14953851A409084448D11384C56094834E1C8091A42BA3C34
          E32422E40C83974E3ECE0277974F83FCDE0827CD785E5FCCF860F31E5FAFC5F0
          3C5E9F13C2C0FF005BA39F2E7E9E000A720B34E3CB20901EA3C3F30700B004E3
          FC10F413E31B80E0667860CF20F5673D3FD1C0634BA0B0C749732CF5CA2CC4BA
          6B1C617F8B304A55B62550FACD1C94B9471DE46C8DCE269425291B1EDD21ED4A
          14921160069ADE40858E65879064BE027F1FCD7805799C93E5FC7F0C3E3797EB
          F13C0F17A7AFC3EBFD6E8E7CB9FA780049C819A51E324A19E9F0660838658447
          1383B0109D824C107232F07746302E9E5D5CBD3C07C1C95328C902509C83C494
          FC294C238A2CCCA652001A585427C8C23C94A0251A30F58790B96738FB339E02
          AB80380A2CB720CA5020CA2499425F8382D1E5313E50BF00C01A47869FA3C007
          8269781079071D22C6338E5C04EC2720078D4849282A0D2CB28C3F0583071851
          4230451433718EB196588D16421FB319CE7F2E78002412124298049414C12B04
          848096109212301E8F070560382F05747EAF4F2E5CB8097E451F93F87F944DE4
          3CB792F23E017E4FC9785E0793F2BD1E0795F0BF53A3A7A3A3D1CB97012BA9D7
          D537FEFD4FBB704D1D4EBEA9BFF7EA7DDB81A3A9D7D537FEFD4FBB7034753AFA
          A6FF00DFA9F76E068EA75F54DFFBF53EEDC0D1D4EBEA9BFF007EA7DDB81A39B9
          FAA43ED4ABDDB81A8F53A7A941ED2A3DD781A87373F5487DA957BB70347373F5
          487DA957BB70351EA74F5283DA547BAF034753A7A941ED2A3DD781A87373F548
          7DA957BB70347373F5487DA957BB70347373F5487DA957BB70347373F5487DA9
          57BB70347373F5487DA957BB70347373F5487DA957BB70347373F5487DA957BB
          70347373F5487DA957BB7034753AFAA6FF00DFA9F76E068E6E7EA90FB52AF76E
          068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E
          6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7E
          A90FB52AF76E068EA75F54DFFBF53EEDC0D1CDCFD521F6A55EEDC0D1CDCFD521
          F6A55EEDC0D439B9FAA41ED4A7DDB81AFFD9}
        mmHeight = 16933
        mmLeft = 6615
        mmTop = 3969
        mmWidth = 72231
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        Caption = 'PROMOTOR(ES)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 8467
        mmTop = 27781
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 
          '................................................................' +
          '................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 36248
        mmTop = 28310
        mmWidth = 169334
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'FECHA : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 214313
        mmTop = 28046
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = '.......................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 231775
        mmTop = 28046
        mmWidth = 48683
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 
          '................................................................' +
          '................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 35983
        mmTop = 33317
        mmWidth = 169334
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1058
        mmTop = 8996
        mmWidth = 283105
        BandType = 4
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 283105
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 177536
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 9525
        mmLeft = 72231
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 6879
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 0
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 145521
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine28: TppLine
        UserName = 'Line28'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 56621
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppbdReporteHojaRuta
        DisplayFormat = '####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ResetGroup = ppGroup3
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 3969
        mmLeft = 265
        mmTop = 794
        mmWidth = 5556
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 20108
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText101'
        DataField = 'SITASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8467
        mmLeft = 73025
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 126736
        mmTop = 265
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText1'
        DataField = 'NOMASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8731
        mmLeft = 20902
        mmTop = 0
        mmWidth = 35719
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText5'
        DataField = 'TIPASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 2646
        mmLeft = 88636
        mmTop = 1058
        mmWidth = 5556
        BandType = 4
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8731
        mmLeft = 93927
        mmTop = 265
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText6'
        DataField = 'DIRASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8731
        mmLeft = 94986
        mmTop = 529
        mmWidth = 32015
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText7'
        DataField = 'TELASO1'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 3440
        mmLeft = 128059
        mmTop = 529
        mmWidth = 17198
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line21'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 88106
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'EMAIL'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8202
        mmLeft = 146050
        mmTop = 265
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText8'
        DataField = 'DNIASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 2646
        mmLeft = 7673
        mmTop = 0
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText9'
        DataField = 'NIVCENEDU'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8731
        mmLeft = 56886
        mmTop = 0
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText12'
        DataField = 'TELASO2'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 3175
        mmLeft = 128059
        mmTop = 4498
        mmWidth = 17198
        BandType = 4
      end
      object ppLine58: TppLine
        UserName = 'Line58'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 191030
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine61: TppLine
        UserName = 'Line61'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 259292
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        DataField = 'SF_ASO_MONTOAPORTEVOLU(GAC.ASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 2646
        mmLeft = 178065
        mmTop = 529
        mmWidth = 12700
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        DataField = '(SELECTMAX(TO_DATE(V.FECVAL,'#39'D'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 6085
        mmLeft = 191559
        mmTop = 265
        mmWidth = 16404
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 208227
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine63: TppLine
        UserName = 'Line101'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 233098
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine64: TppLine
        UserName = 'Line64'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8996
        mmLeft = 249238
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'OBS_AUTDESAPO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 2646
        mmLeft = 225161
        mmTop = 794
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'OBS_FECAUTDESAPO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 5821
        mmLeft = 233892
        mmTop = 794
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'OBS_ASOTIPID'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 2646
        mmLeft = 251619
        mmTop = 1058
        mmWidth = 6879
        BandType = 4
      end
      object ppLine66: TppLine
        UserName = 'Line102'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 9260
        mmLeft = 223309
        mmTop = 265
        mmWidth = 529
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'TIPO_CAR'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 7938
        mmLeft = 208492
        mmTop = 529
        mmWidth = 14817
        BandType = 4
      end
    end
    object ppSummaryBand1: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup5: TppGroup
      BreakName = 'DEP_COL'
      DataPipeline = ppbdReporteHojaRuta
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdReporteHojaRuta'
      object ppGroupHeaderBand5: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel25: TppLabel
          UserName = 'Label25'
          Caption = 'DEPARTAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 8731
          mmTop = 0
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          OnGetText = ppDBText3GetText
          AutoSize = True
          DataField = 'DEP_COL'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3725
          mmLeft = 43656
          mmTop = 265
          mmWidth = 16933
          BandType = 3
          GroupNo = 0
        end
        object ppLabel27: TppLabel
          UserName = 'Label27'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 38100
          mmTop = 264
          mmWidth = 2117
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand5: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'PROV_COL'
      DataPipeline = ppbdReporteHojaRuta
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdReporteHojaRuta'
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label1'
          Caption = 'PROVINCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 8996
          mmTop = 265
          mmWidth = 19050
          BandType = 3
          GroupNo = 1
        end
        object ppDBText14: TppDBText
          UserName = 'DBText14'
          OnGetText = ppDBText3GetText
          AutoSize = True
          DataField = 'PROV_COL'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3725
          mmLeft = 43392
          mmTop = 0
          mmWidth = 10583
          BandType = 3
          GroupNo = 1
        end
        object ppLabel37: TppLabel
          UserName = 'Label37'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 37835
          mmTop = 0
          mmWidth = 2117
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'DIS_COL'
      DataPipeline = ppbdReporteHojaRuta
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdReporteHojaRuta'
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel26: TppLabel
          UserName = 'Label26'
          Caption = 'DISTRITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 9260
          mmTop = 0
          mmWidth = 16933
          BandType = 3
          GroupNo = 1
        end
        object ppLabel28: TppLabel
          UserName = 'Label28'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 37835
          mmTop = 0
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          OnGetText = ppDBText3GetText
          AutoSize = True
          DataField = 'DIS_COL'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3725
          mmLeft = 43656
          mmTop = 0
          mmWidth = 14817
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup4: TppGroup
      BreakName = 'CENPOBCOL'
      DataPipeline = ppbdReporteHojaRuta
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group4'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdReporteHojaRuta'
      object ppGroupHeaderBand4: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLabel19: TppLabel
          UserName = 'Label19'
          Caption = 'CENTRO POB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 8996
          mmTop = 0
          mmWidth = 21167
          BandType = 3
          GroupNo = 3
        end
        object ppDBText11: TppDBText
          UserName = 'DBText11'
          OnGetText = ppDBText3GetText
          AutoSize = True
          DataField = 'CENPOBCOL'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3725
          mmLeft = 43656
          mmTop = 0
          mmWidth = 14817
          BandType = 3
          GroupNo = 3
        end
        object ppLabel20: TppLabel
          UserName = 'Label20'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 37571
          mmTop = 0
          mmWidth = 2117
          BandType = 3
          GroupNo = 3
        end
      end
      object ppGroupFooterBand4: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'CENEDU'
      DataPipeline = ppbdReporteHojaRuta
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdReporteHojaRuta'
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 16669
        mmPrintPosition = 0
        object ppLabel3: TppLabel
          UserName = 'Label3'
          Caption = 'N'#176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 2381
          mmTop = 10583
          mmWidth = 3440
          BandType = 3
          GroupNo = 2
        end
        object ppLine4: TppLine
          UserName = 'Line4'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9790
          mmLeft = 283898
          mmTop = 6615
          mmWidth = 529
          BandType = 3
          GroupNo = 2
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 176742
          mmTop = 6615
          mmWidth = 1323
          BandType = 3
          GroupNo = 2
        end
        object ppLine7: TppLine
          UserName = 'Line7'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 127000
          mmTop = 11377
          mmWidth = 1058
          BandType = 3
          GroupNo = 2
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8996
          mmLeft = 6615
          mmTop = 7408
          mmWidth = 794
          BandType = 3
          GroupNo = 2
        end
        object ppLine27: TppLine
          UserName = 'Line27'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8996
          mmLeft = 20638
          mmTop = 7144
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine29: TppLine
          UserName = 'Line29'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8996
          mmLeft = 72496
          mmTop = 6879
          mmWidth = 529
          BandType = 3
          GroupNo = 2
        end
        object ppLabel17: TppLabel
          UserName = 'Label17'
          Caption = 'DNI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          mmHeight = 3175
          mmLeft = 10848
          mmTop = 10054
          mmWidth = 6879
          BandType = 3
          GroupNo = 2
        end
        object ppLine3: TppLine
          UserName = 'Line3'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 794
          mmTop = 16404
          mmWidth = 283634
          BandType = 3
          GroupNo = 2
        end
        object ppLine25: TppLine
          UserName = 'Line25'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9790
          mmLeft = 144992
          mmTop = 6350
          mmWidth = 529
          BandType = 3
          GroupNo = 2
        end
        object ppLine26: TppLine
          UserName = 'Line20'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 94986
          mmTop = 11377
          mmWidth = 50271
          BandType = 3
          GroupNo = 2
        end
        object ppLabel29: TppLabel
          UserName = 'Label29'
          Caption = 'APELLIDOS Y'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 24871
          mmTop = 7408
          mmWidth = 20638
          BandType = 3
          GroupNo = 2
        end
        object ppLine9: TppLine
          UserName = 'Line9'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8996
          mmLeft = 56356
          mmTop = 7144
          mmWidth = 529
          BandType = 3
          GroupNo = 2
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          Caption = 'COLEGIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 8731
          mmTop = 0
          mmWidth = 14817
          BandType = 3
          GroupNo = 2
        end
        object ppLabel6: TppLabel
          UserName = 'Label201'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 37571
          mmTop = 0
          mmWidth = 2117
          BandType = 3
          GroupNo = 2
        end
        object ppLabel30: TppLabel
          UserName = 'Label30'
          Caption = 'DIRECCION :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 146579
          mmTop = 0
          mmWidth = 23283
          BandType = 3
          GroupNo = 3
        end
        object ppDBMemo2: TppDBMemo
          UserName = 'DBMemo2'
          CharWrap = False
          DataField = 'DIRCOL'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3969
          mmLeft = 171186
          mmTop = 529
          mmWidth = 102394
          BandType = 3
          GroupNo = 3
          mmBottomOffset = 0
          mmOverFlowOffset = 0
          mmStopPosition = 0
          mmLeading = 0
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          Caption = 'NIVEL C.E'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 57150
          mmTop = 8996
          mmWidth = 15346
          BandType = 3
          GroupNo = 3
        end
        object ppLabel33: TppLabel
          UserName = 'Label6'
          Caption = 'TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 88106
          mmTop = 9790
          mmWidth = 6615
          BandType = 3
          GroupNo = 3
        end
        object ppLine8: TppLine
          UserName = 'Line8'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9525
          mmLeft = 94456
          mmTop = 6350
          mmWidth = 529
          BandType = 3
          GroupNo = 3
        end
        object ppLabel34: TppLabel
          UserName = 'Label34'
          Caption = 'DIRECCION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 95779
          mmTop = 12435
          mmWidth = 30692
          BandType = 3
          GroupNo = 3
        end
        object ppLabel35: TppLabel
          UserName = 'Label33'
          Caption = 'TELEFONO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 128059
          mmTop = 12435
          mmWidth = 16933
          BandType = 3
          GroupNo = 3
        end
        object ppLabel36: TppLabel
          UserName = 'Label35'
          Caption = 'DOMICILIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 95250
          mmTop = 7673
          mmWidth = 48419
          BandType = 3
          GroupNo = 3
        end
        object ppLabel13: TppLabel
          UserName = 'Label13'
          Caption = 'SIT.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3217
          mmLeft = 77971
          mmTop = 8996
          mmWidth = 6773
          BandType = 3
          GroupNo = 3
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8996
          mmLeft = 87577
          mmTop = 6879
          mmWidth = 529
          BandType = 3
          GroupNo = 3
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 265
          mmTop = 6615
          mmWidth = 284163
          BandType = 3
          GroupNo = 3
        end
        object ppLabel12: TppLabel
          UserName = 'Label12'
          AutoSize = False
          Caption = 'EMAIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 148432
          mmTop = 7673
          mmWidth = 16669
          BandType = 3
          GroupNo = 3
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 0
          mmTop = 7144
          mmWidth = 265
          BandType = 3
          GroupNo = 4
        end
        object ppLine31: TppLine
          UserName = 'Line31'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8996
          mmLeft = 190765
          mmTop = 6879
          mmWidth = 794
          BandType = 3
          GroupNo = 4
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          Caption = 'MONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 180446
          mmTop = 6615
          mmWidth = 8467
          BandType = 3
          GroupNo = 4
        end
        object ppLabel10: TppLabel
          UserName = 'Label101'
          Caption = 'APORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 180446
          mmTop = 8996
          mmWidth = 9525
          BandType = 3
          GroupNo = 4
        end
        object ppLabel48: TppLabel
          UserName = 'Label103'
          Caption = 'ULTIMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 193940
          mmTop = 7144
          mmWidth = 10054
          BandType = 3
          GroupNo = 4
        end
        object ppLabel60: TppLabel
          UserName = 'Label104'
          Caption = 'ACTUALIZ.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 192352
          mmTop = 9260
          mmWidth = 15346
          BandType = 3
          GroupNo = 4
        end
        object ppLine60: TppLine
          UserName = 'Line60'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9525
          mmLeft = 260086
          mmTop = 6879
          mmWidth = 265
          BandType = 3
          GroupNo = 4
        end
        object ppLabel61: TppLabel
          UserName = 'Label105'
          Caption = 'FIRMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 268553
          mmTop = 9790
          mmWidth = 8731
          BandType = 3
          GroupNo = 4
        end
        object ppLabel16: TppLabel
          UserName = 'Label102'
          Caption = 'VOLUNT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 179652
          mmTop = 12435
          mmWidth = 10054
          BandType = 3
          GroupNo = 4
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          Caption = 'NOMBRES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 28046
          mmTop = 11642
          mmWidth = 11906
          BandType = 3
          GroupNo = 4
        end
        object ppLine11: TppLine
          UserName = 'Line601'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9525
          mmLeft = 208227
          mmTop = 6615
          mmWidth = 529
          BandType = 3
          GroupNo = 4
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          Caption = 'FIRM'#211
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 224367
          mmTop = 12435
          mmWidth = 8467
          BandType = 3
          GroupNo = 4
        end
        object ppLabel47: TppLabel
          UserName = 'Label47'
          Caption = 'FEC.FIRM'#211
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 234421
          mmTop = 12171
          mmWidth = 15346
          BandType = 3
          GroupNo = 4
        end
        object ppLine45: TppLine
          UserName = 'Line201'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 223838
          mmTop = 11377
          mmWidth = 36513
          BandType = 3
          GroupNo = 4
        end
        object ppLabel62: TppLabel
          UserName = 'Label62'
          Caption = 'OBSERVACIONES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3217
          mmLeft = 229633
          mmTop = 7938
          mmWidth = 22013
          BandType = 3
          GroupNo = 4
        end
        object ppLabel63: TppLabel
          UserName = 'Label63'
          Caption = 'CES'#211
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 251090
          mmTop = 12171
          mmWidth = 6879
          BandType = 3
          GroupNo = 4
        end
        object ppLine59: TppLine
          UserName = 'Line59'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 232834
          mmTop = 11377
          mmWidth = 794
          BandType = 3
          GroupNo = 4
        end
        object ppLine62: TppLine
          UserName = 'Line62'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 249503
          mmTop = 11113
          mmWidth = 529
          BandType = 3
          GroupNo = 4
        end
        object ppLine65: TppLine
          UserName = 'Line65'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9525
          mmLeft = 223573
          mmTop = 6879
          mmWidth = 529
          BandType = 3
          GroupNo = 4
        end
        object ppLabel64: TppLabel
          UserName = 'Label106'
          Caption = 'CART.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3217
          mmLeft = 210873
          mmTop = 9260
          mmWidth = 8467
          BandType = 3
          GroupNo = 4
        end
        object ppDBText32: TppDBText
          UserName = 'DBText32'
          OnGetText = ppDBText3GetText
          DataField = 'CENEDU'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3440
          mmLeft = 43921
          mmTop = 1323
          mmWidth = 101071
          BandType = 3
          GroupNo = 4
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 11113
        mmPrintPosition = 0
        object ppLabel31: TppLabel
          UserName = 'Label31'
          Caption = 'TOTAL DOCENTES :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 227278
          mmTop = 794
          mmWidth = 33867
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc2: TppDBCalc
          UserName = 'DBCalc2'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3704
          mmLeft = 263526
          mmTop = 1588
          mmWidth = 17198
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc3: TppDBCalc
          UserName = 'DBCalc3'
          DataField = 'CONFIRMA'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3704
          mmLeft = 74083
          mmTop = 794
          mmWidth = 27517
          BandType = 5
          GroupNo = 3
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          Caption = 'DOCENTES QUE NO AUTORIZARON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 7673
          mmTop = 5556
          mmWidth = 58208
          BandType = 5
          GroupNo = 3
        end
        object ppDBCalc6: TppDBCalc
          UserName = 'DBCalc6'
          DataField = 'SINFIRMA'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = []
          ResetGroup = ppGroup3
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3704
          mmLeft = 74083
          mmTop = 6350
          mmWidth = 26988
          BandType = 5
          GroupNo = 4
        end
        object ppLabel11: TppLabel
          UserName = 'Label11'
          Caption = 'DOCENTES QUE AUTORIZARON'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 7673
          mmTop = 529
          mmWidth = 52652
          BandType = 5
          GroupNo = 4
        end
        object ppLabel38: TppLabel
          UserName = 'Label36'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 68263
          mmTop = 529
          mmWidth = 2117
          BandType = 5
          GroupNo = 4
        end
        object ppLabel39: TppLabel
          UserName = 'Label38'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 68527
          mmTop = 5821
          mmWidth = 2117
          BandType = 5
          GroupNo = 4
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppDesigner2: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprReporteColegios
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 24
    Top = 408
  end
  object ppbdReporteColegios: TppBDEPipeline
    UserName = 'BDEPReporte1'
    Left = 56
    Top = 408
  end
  object pprReporteColegios: TppReport
    AutoStop = False
    DataPipeline = ppbdReporteColegios
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppbdReporteColegios
    Template.FileName = 'C:\Users\rsanchezc.DERRAMA\Desktop\rptConsolidadoxUsu2.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 88
    Top = 408
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdReporteColegios'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 47096
      mmPrintPosition = 0
      object ppLabel40: TppLabel
        UserName = 'ltitulo'
        Caption = 'CONSOLIDADO DE CARTERA ASIGNADA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 2910
        mmTop = 21960
        mmWidth = 80433
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 257176
        mmTop = 3440
        mmWidth = 20108
        BandType = 0
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 257176
        mmTop = 11377
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel41: TppLabel
        UserName = 'Label22'
        Caption = 'P'#225'g :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 237067
        mmTop = 11377
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 257176
        mmTop = 7408
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel42: TppLabel
        UserName = 'Label23'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 237067
        mmTop = 7408
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel43: TppLabel
        UserName = 'Label24'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 237067
        mmTop = 3440
        mmWidth = 11906
        BandType = 0
      end
      object ppImage2: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D61676543290000FFD8FFE1001845786966000049492A0008
          0000000000000000000000FFEC00114475636B7900010004000000640000FFE1
          036F687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C
          3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043
          656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120
          786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B
          3D2241646F626520584D5020436F726520352E332D633031312036362E313435
          3636312C20323031322F30322F30362D31343A35363A32372020202020202020
          223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777
          772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E
          7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D
          222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
          636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
          5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D4D3A4F7269
          67696E616C446F63756D656E7449443D22786D702E6469643A38384242323139
          413845363945333131393530364335414333303344354330382220786D704D4D
          3A446F63756D656E7449443D22786D702E6469643A3442453033434441363939
          3831314533383235463846314639373642313741362220786D704D4D3A496E73
          74616E636549443D22786D702E6969643A344245303343443936393938313145
          33383235463846314639373642313741362220786D703A43726561746F72546F
          6F6C3D2241646F62652050686F746F73686F7020435336202857696E646F7773
          29223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E73
          74616E636549443D22786D702E6969643A384642423231394138453639453331
          3139353036433541433330334435433038222073745265663A646F63756D656E
          7449443D22786D702E6469643A38384242323139413845363945333131393530
          36433541433330334435433038222F3E203C2F7264663A446573637269707469
          6F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F7870
          61636B657420656E643D2272223F3EFFEE000E41646F62650064C000000001FF
          DB00840001010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010202020202020202020202030303030303
          0303030301010101010101020101020202010202030303030303030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303FFC00011080040010403011100021101031101FFC4009C00000102
          070101000000000000000000000007080103040506090A0B0201010101010000
          0000000000000000000000010203100000060200040207030808030901000002
          03040506070108001112091314215394D415161731180A516191222393193941
          D192242556B778A133957181D336274768C81A8A110100030002000602030000
          0000000000000111213141516171810212B1D1F0A132FFDA000C030100021103
          11003F00D6A7E21FEE59B05B49BCB7D6B9993691C5B5B75BAC97FA8E255233BB
          2D6E8DBFC9600B4D8FCAAC49B22467109659227893A35996E1AC01806B6AC924
          A7000625672AC7CA76BA573BD938DFE830CE5F9CC167FE3E8E203C537973F14C
          FC9FF305CFF473E7C047C51FAE3BF4E7FF001389A1CE6A76E3EC5E91DB91DBAF
          5BACC9157F30625E894AD4685C570A2D336A4AA4B52A6293F8C96AD3B74BE26E
          982BA54A25411079F234B116704A3408B891EC67AC774A5D8FD70A1360D1340E
          3C96F0A6EB4B64A8F9AA32B06C3F5061ACF2A1B30966494DE732D237411193BC
          3060DE8EAC631CF971D50BA70070070070070070070070070070070070070070
          070070070070073E5F6F006338CFD9C01C01C01C019CE31F6F010E78FCB8FD38
          E0239CE31F6F00701E379DD8FF0099E7703C7FF30F617FD5092FF5F1CE79564C
          D5D9E7B9BBD51A1D8D6AD30B9555526C7C32C4AE38696B2E5CBE28680B3CA933
          65567BA956B3B47D421330A8A5A9990E4C721CF9A00B24733787D64380DA2EDC
          D3FB7F6E6ADA1740F5C2452D7179D22D3BB9A4D18871CB0E6C6D76B0F5F6BF95
          CEA7B2E94CCDE4A6486373E4BA42664C39C57A240158A42495D22180AE131738
          1B3C7BB4D771C945FD26D5F66D44B6CCBB218CC9E49288C383735B332B2C5D71
          AB486A942BB15EDD9B6B60C59FD537A925B5CC0EF940E67A730A4A69C60041E1
          5F2B4B34DBCE83B97596CC91D377E56D2BA9ECE8A8C803E43E62D8636B9A6256
          1385081C1319FB448EACEE89861391AE4661C89610209849A60058CE64DF6AF5
          F3ED63FCB47403FD9BEB7FFA4713E3AA15CD91DC8D57D4065677FD9DBF6AEA49
          048CF3D3470B9F4A9BD9DD64A6A31A62D7E238C19198FD202DB32B89CAB1A34C
          781284D088DC8022C6780E6E7B8B7766D848C774DED5F59E98ECE449EB4E76BC
          DA2332C360CC356D8D12B18A95ECD3FD6B3B0229DAD8FC81E111E18EA029B8F2
          9BD7A339B14807D41028EAE52E6E23A1D19EC86F0EA169FE1903B37B1B52D28B
          24850D4C7D9E75306D6C913E2228FF002C738B5468261EFEBDAD3A9FD99CA8A4
          C24E519E818F19E28CC59368F5BE4B492FD948EDED53BFEBFB4B4B9BF3ADCACF
          3C8E39D6ED6D2CBCC2F2B1CA5C8DC0E666F0B38B190AB01A680C4E6632033011
          6338E013A6FDFDD27776DA7DE1A369E8E776BBFE4B248852CE0D161C7DCD2597
          228764E2E5C82247205AA0B732E307938257A80E7CB235261449A600D3C900C2
          CE4771DD0B575D116DA0DBCD7F74AD1559CD34BA39B345971A76605F6C3EA546
          E2D75E372D6D5CA42E12A52D2B8B5B9484E0C38A41D4A8CC05380668428AD8EE
          65DBDE8D992CAEEDBDD0D6C824EDB1C4E697A883DDB90E2E431E744E6E0950DD
          26694EE8A164656A737D0616BC29C60F4F3FB33C2E02CB2BDABD6783D3683626
          5B7F53EC5423AFC33E15732EB0E2C1AC9D7E34B3E1CD196B9A96E638F38FC457
          872493E0A81F5998C871CF38CF2045275DCDFB7BD66E155B5CF37275EA28AEEC
          8DB24D2B0CBC5971E4E92530B9264F047A665AFC2B13735441F4C4C6811BA2E3
          52A152324C096688458B1860BCDD3DC5744F5CACA69A76F5DB2A22ACB39E7084
          C221732B0D81A9E9B53B9929D5362C93146AAC950E40E8955166A550EC344428
          273D650840C67385C0576E3D9BD74D798AB5CE6F6BDAA3A7E22F981E58243645
          83168735C8BA1312AC408E297C74440901D84AA0B33A11F8C3F0CCC67972CE39
          8615AF5BC1A7FB60ADDDB75AF65A97BADE581265C9EE3F5F5811F90491A1AF0A
          4A47F17728DA559F1D46CE258A0B282AC69829C468F01C0F22CE31C0393757A6
          763253287A756C674EB5CDB19519EE8B933792ADE1ED7A76B666A4C6AB34A01E
          E6ECE4A8A4C9480E7269E79812CBC6442C632090C4F67B5B27B66C9293836C25
          2133B961C27404BAA58A5AD0490D99171B12B290BD824304687E572765133AD3
          824ABC294A5E539A2C00CE916718E0257DE9759BEB07DDEBEF1345FD7DF13C2F
          A21F56A05F56FC6F85FC77C0FA6FF1FF009BFCC7C17FBEF4793EBF2BFB6FF97F
          ADC065D695CB50D1D191CD6EBB52B7A7E185282519B2CB46731880468B58A39F
          974837D9639B4B60551DD39E8064DEA172CF2C7A380ABAD2D6ABEE788A29F53B
          6440AD782399AA486D9A56B308F4EA26BCF446E49584229145DC5D1A151C90EC
          640680B3B392C58E42C633C02713FDB9D53AA27ED754DA5B35AF95B5A0F7F0DC
          B356F3EB9ABA87CF1DB0F4779766136C4243236E7F5B876521C969725A717981
          E3917D59F47011BF5DA54F9584FD8E97BEEB5A4AD1607B81B71F614D98D92C36
          180295F2588BC2B639642D64A230501C6750B5F942DE050B529A131D932A2B06
          67C3098178B8B6575D35DCB6036FFBF295A34A961EAD34587705A507AD012552
          8029B2B93B00A66FACD8783908561393829FAF2560C07572C0B1CDC721A36F07
          710AEF519669C165CD693588F66B66AB3AB9ED5CCECC636029828F98C7A6CE72
          2BB580D03984A5EC51C72626D4D95E6FF84604E2009A703232F3C27390F322D7
          DD173A823F5A508BA2A798D611513C065163C5AC587C86071B1479116E2FC17E
          97B4BC2C8F34098DBCE09EB3CC282FCB102C0CCE90E719E028A9CD8CD7DD8940
          F0EDAFF7AD3B79354755A640FEE5505990BB29031AE5648D42346F0AE1CF4F49
          DB152A20191940384011810E738C6718CF017B925D14F43A3C8E5D2EB5EB58B4
          4DC6505C1DBA51239D461963ABE686BDA88C950F44F4E4E899B55CA4C91A435B
          F0DE59B95795A5893E0BF14390E0304AB9F64505AEA7724BEAFAACE789186C5B
          71D0EB19B5B186B788C12048666F6264834A148A44E6D25BC556CC461A5DDC94
          A84E61CA51983505966E079C85EA9ED95D73D882DF0EA06FDA56F12A306A6224
          86D3F69C1ECC0478F59E2F9325EC70B7D7AC3518AF040F2584FF000F23C005CB
          9F2CF2723493F7E5DA7F9E3E0FF53D3FC3FF00FD0E7DC73CBFC990CE5F75AFA0
          9F39FD31F17E0FD5E3FCC3FDE3E33CFE33D5FB3F31D3FA9C66FF002AE49ABB8A
          54F38FC5053E8C5D28232F10D71EE19B2C63630CC4CC971591DA0DEF567B951F
          197E2C61196B50492EA471F4262234224EBBCC796342228D163333EDA34E33EB
          CF73D56E2C86E19ACFAEB6DDD9496DAF29D5FF000B648CF71305B089F8C65322
          6D881064878605ECAE85E5A53322524A4E8C90010129C050024E33737E63A4BE
          F756258276AB6D54B5CDDDBA3767DBDBF1A574DED486BD7A270D52495D37DAFE
          B9944CE997C5CC0E2A50BC452A5BC642E8689A4C11C991BFF50841F1D28041DC
          F1EE9DB55B71EC0DDEF9D8AB506B277B5664E55FFDF7B66A1A289AA785236F3E
          235CD67414A60316579CE7CCAC8E4364964BEAD6F4261B94898E71C6405F3208
          C932E7EB4AB4EF33B39CDFB54F66AB0A62B5649E78595BE353E66AFC70DD2527
          D61565BD5CE2B3811EFCACC35CD744EBD2654E44332238D114D49D5984A60964
          F2070F97108F4B3ED65FCB4BB7F7FB38D6FF00F48A29C6C71F554D055D7774FC
          48FBBB03DEC74779657FAF38B85A6B9A754C99E638DD268D5253D8ED57078337
          9ADAE8DAF6D51B21BA42AE5AB9334284A6B839E4F54663251EB303C73F2D5255
          BD3A0BAD7A19F883FB66567ACA4AB8B571675CDA9168AEAA8E91BBC952D71207
          2D8DC4517A38FB83F383B3EA6649395152D7929D6293CC214987E0B1052F9624
          A4C57CA2836FD7A9AB5EDDF707EE13B15B63DB6769BB9FCD49B25C18982B2AB1
          C24C38B514D2AE5B35606B699CB74690AA7DCFCBD1589A4648C1423F089214DE
          B44612729C90A533B9B80BB6B9D2DB49AEB56F7BF89675276E3547B7E5C5A2D7
          85935B41B63A36FE04B12B3236E90D4B01650CBDE9A1B1B5548871C91BDA1F0C
          A18DC96B6A44BE74C586A009F8B1DF852161EC25DAB20D61E9EBDF744B7E7D3D
          7F9BD1C9EF42F562B442FE14D5EC353D7516952B707D942434A39C1C82ED61BE
          B8292DA129EDC80224E250ABCE79E30B25F18EE4379FC397DA72AEDF262B1F63
          F65ACEB09AE9CD5CB59914D775AC2A5638B369D6990DB1F9BCAE712774392AA1
          3333A08F32B3261E1B7095C1767908C5840111403DF18B0BE3995A15DC9EF5DC
          3B4751BB116C46E5C49FECC993F595B4ECFB672DA31CC12B95962717C9455D59
          2F20E830E48E6E869B2142C4A0D5AEAA3CE80C5A8892D47920327881ABCD7E97
          CB55762AEEB74EBC2F7CC426A7DA9D3392C2A2B200E32BA29229ECE65D1F9AE0
          E2F00F0D02C7043016E0AA28BF08B0A94E316318C9A2EA91FE654F97623B476A
          0407F0E9555DC01A1A2666ED5AD8DD2D623D58ABA66FEB913EA1B3AC563829F5
          F2A87A970510F6F8A45E3D242F0DE6244699CB0A5BCAC9AA46030D2449F8C447
          9A24583DA7F5213FE1BE67EE306B6CE5CF6F14A18858ABED1709BC855A67142F
          97FB7D359AF15C416AE5116C445AA20BC034E781281DF2E290B37CDF96C891E5
          51F5B9E57B2BCB766F4E65DDB0BB2F6B1ED0E9DDABDC736C9E22D60BF5194A43
          EC496560E08602A6DDB3E978832BF587174EE331358DF1140D1266E666D4E615
          92E2851AACC4A993100536E2AA790D74EAF1FF004CFBD276C87EAD341EDAED78
          ED60DD550C5A4355492F73360215316699D9AD35DCED6C02C3C80F5CA9AA4105
          981ADEF4D872C5004A79A1C00B27AB1812AA611DA877A189027FA8509800A432
          487FCFBB9BA310CC4C616E8730CD622193ED4D5AD0A2450D90251056B04A1B12
          2B306897119C9A94FE430E3D19E353C0493BA16976B0D37DB6AEE9BD174EC128
          5B1B542B270B875DAD3A7630C705B32ACB0AB74E43C333E304E5A1127921A6BE
          650E52BDF985270DE922A3C2A846986789874156BC3B7169AC4BB7F5AF5A4729
          383B19D0EA3671358D5B0963CCE3BBD92DA8EC35CA52D17B916C9A9899B1D742
          198A229EC4FE6AEC2D3DC03911A664B1081C2434F8F6C1C5F682BFD2B465E834
          1BB916F3B568C6BADD36D496C32EA286D6F41336C3D78C4FE15533B52C68E4A1
          3C5665713F30AD5CDF1C8F3139399ADE8CE527012A1C1461D2EE3CCECD7E773F
          BE34FF00622EDB5E0FA391AEDF1389876B0DF6B15643AB9B3AAFB5E87BF2DBD5
          56DAF26F4CCDDA20F59B142D3FD54ABBE747125C1C5F18122A756277C202B278
          53E3207E86DFB50340B4753EAA55C23296A7360C57056B13B1ACBBBADA84C4EE
          19E6C74A2C98F249649AD6B1E7F356F90BD4E1CA7AE2FA7B875A8546A44E4A90
          A7480252964940540D06DDB4ED7146EB5F7EBA76AE7A769556F01DB5EDB2C314
          1CA256E13E5F13694CE5A98E096A1264AF2A97BA2A8CD2C62BF979911A95071E
          CED6853B78CCC89264594F1EFF00A1B54BDA939A515B9BB2DB4169E8187B8FD2
          37DC72B61314B610DB5C599B0FABF1AACA008E24EF45B051375485A1B26155CB
          E5197095A61C10E4EECA1D5E9C00EADEBC6044A30F30D7F64229DBE2DDA9FB53
          BD6ACD275423AB3F8C0D795BC86BA72A81244DEAB190BE365F2F778D2136ACA6
          4C091EAB1569A748CB54F1133D2236FF001C84EA0A4E34F94868A4D4D7A9050F
          73D35511DDFBD7CD2945A6330B4754607AED3ADE0956AE6A756951A48A5C578A
          9B722B52C22457A575207BAD227308055E992A972291E559E05F235EDE7AF4C7
          94DE4745EEBA1779B237496EC6EA3DC7A8BDB3B6AB542F1825F159C46CCB257D
          45425555CCEF50A70FE8A33B055B5D47C06F45A54A6311A891C549E3C156D2F0
          B1AE4AC2886D6024472918931DF62FDDA9B47EA99F47671B297AB430DE8BE29B
          81BB51FD418D4FD81A1FA17AC558B16E25AEA1C1657713716CCB337DB93BB39A
          DC1E9E260328D90284816C401525266F015956DC84AAABB268866D67514B595A
          B09B76EDBBBFBA0F71C7CD79D603D8A04E044CE6355ECF5C92091D92FEF16AAC
          455E4361D5B3439872E6F6E061DE586E24904A75279E12B2C18BDECCB74D636C
          697DD62ED5B5CE8F4C229BA5AC75B636335B6FBA3658CA3AAEF9B6E3F51D9D55
          5D3148B55F59CC65D059FB2CC7CB224A4A25C5B7C8468DC42A52E538C2A4132F
          FDC9FF00FACAFF00EAEF13F6BD7B3895EEB0A0F45DD0F7F55A434E4AAD36E4EC
          2284CA539A610A139E45AB2334A3C838192CC24D2860EB00C3E9E7CB38E333C8
          5BD277BFDEE4CD891C8E74A19DEF36E654B1A6BDC27ED6EA65E770DB98914771
          144C98BBF1C2207CA95BB96C18C9187C5383E442E79332BFC6CF5F0FB4FB8634
          FF00B6175CAB5DD7EB149A484C86B777D8F78DAF795EF8930E93B7ABAA45082E
          BF7C92BCCDD79C7BE3A16EAC24F59E51E60B272B165408591E79F12F28634F77
          FD86FDAF903D635EA5A05575736958570C69281A8A29F0B995991D83C5A4E6AC
          7AC0B2A16379AD75EB77809FA71828CF133CF3D58C05782BE79B296859342D03
          ADF275ACC755FAD2E5703B55A89131A342F08965E0FCC1249F09E9E4BC655BEE
          153A4692E5378B91652978C8439E9E58C3781EBA9DAC7F968E807FB37D6FFF00
          48E27C7546AA7B93FE1F449B6BB52DFBCFA95B472FD2BDA23BE1C6CCE4D176B7
          A5AD9267A69662632DF3561758ACBA172880CC0C8C17842E4626395A37720A2F
          232083C6B142B931737D86E711FC30F2763DAAD5ADC296F707B12DCBA2A4B36B
          8B86F6975AF03719A3FDCF33AEEC16D94B6258E3DBAD946BA4218088A3221642
          42B8D7F3CBC939521100BC948899F5DB0B9EDE7E1F6964AB6D26DBB1DBB375EC
          1D09B9ADA39DD6DBED3186F7C5D1796BCC95612E72A796E708D4B62CECD29E52
          F69C0E4E4D4B0B766F52EBCD493E544108316B6C2A543F648B56BAD3ADEAA0ED
          EEE0773EC25BDBDF1871679AD916323757DAEA0CF6A9A0D6804B2395B3ECD1DD
          E9CA5CE080C2923AB99AFA9C4B903737272C84C0420C8D101D976FAEDA2E1A39
          DBB1FB44155D24D8CB1ED1DD494168A481662A5377D5D29D40030B889F2B91E5
          665806E7E2721B863CCE71CBF678E5CAC64504FF00B3D7691FE169415D744C96
          E76FD836CB92C23266B96975D1D5EA540DAAA16D10D5EC0A1BCD99CC86E21584
          3708623707138E91F2E9FB73C48C81AEAA43F0ECECFEAA4D2CE836A97764BA68
          3D3AB7E5637A985590E81220DAA9D80C30297E171DB1954A543446E7D88E124B
          77CE0DAD88169A020919E8CD012023844570319AC7F0C038D6BA65BA7A869773
          D3B991B5D636BE4CDA66CAA8E3427419B284934BDFC86F766705A81F9ADC64E4
          4AC25187814A02D29A9BC4C16678990855514365D6FF0069176B53B3AC3FB55E
          2FD4AC8E31783D470F36EF156827146BFE974F23F37F1C35F066880F4A4BA858
          B09318F8C08C2702C1B91199C64194C5C50A594F685739276626FED318D814A9
          5C5144A2F1ACDED9ACF26243B31CBB1BAE2F17E9D026A518020F021C36631F19
          C998C67CC6739CF32F85650D7DCF3F0D34A0751E8AAAA4F77DF6A5DBCD1D88BD
          C1983601AAB7529DA2671B576DCFED88B1208B249DFC5226E5075D63B8212D46
          17B994E680CC92A53F40B1802BCF4642BFF0F0DF7626DAEA3EEAEC3F7359FDFD
          7650762D713E9E9B39A7DAC11A90A1AC2C96B9F4760952B0B1CD199BEA68B9C4
          A4509D607C1710295EACE70C12508D191956C48DF96DBEB8A8DA0AF60D054F32
          0C1870DD82D77BCB2EA362C487E200A1EE1885AC28CE11E5D1A7CA8A4DF2B791
          F37E20FCAF8DE2F846F4F40A8AFDC8D7C3B6C355AFED6B4F2D0C0CEBBAAF94D7
          209989971230C685246F310FC544C427167F8AE12E0CCE72479A23ABECEB0FDB
          C029B65400760D453FAB30EF968366D5BCAABFC3F811855E5AC5258C2E8EE1E0
          0DA23C90A9CA3CADF1F04E4D0E07D3D1D78E7CF80D5840BB726C76AA0AB49BE9
          7EC6D60D76421D56D6ED62D858A5FB4F482594D5F8A358A189E0D5A5CED24422
          C58B5875158AD51E50E0DE71299D5E1A1C5B54272D425F3288B58395E033EAF3
          47F611B36AE09BD5B25B479BA6CB83D2973552EB4A56F531709A39AA273D3E02
          FCD4C149C41E66F2992B34802F90B506BDBD3F3C3DB9CA047214DD4D889BC94D
          C581AC788583DB6E2512B0239587761DA4EDA75AAF54F0E73FD0B9A4A6BDA3EC
          6A09F5D917C624F01A52B9D81A764F775325FC756AB51F0C812E706513929370
          C022C9F0318990142D6FEDD8D9B2FAAFBF8CD5AB34AF52E89DCED87D7F986BA2
          39FC2A40EB612AA9F598749AA1DDD398CCDDF9A2C25524DA39AD6EF6F9955283
          8A931E9DDC97571C9C7A8E9139C1B41B2A99EE22C1674EE63AD7B7B4DB857D3F
          7148E69A9EDADD7D79B05254AB8A6D2D02FF00A596053B6853724511A723CA02
          ACB44813BBE493C02C10B4A09A3C714226F1DAD1D57EBF25602F6157AADB749B
          92C9DC2F3B26F3014CAA22E5B5AC68D247083D6D288E4E8884F4CE2B34818827
          8E92F785691A0051F85E6AE2F2A061994CB4D76AAE68FD5D6D593B2155D6DBDB
          424DE64ED4A5DBAFD4CCB1BAA143584F5BE30D538A2ADCA76C9B7662BADE80D8
          A4C6CB54E66E1E58D7A0704EDCADA8D46A9B8472C0CBEBFA3FB844CACAAFA5FB
          45B655430C02B279CC88AA874F2A29656A8EDE7D293F9441F59A7D6C58D69C8D
          4405016238FF009658D3B5815283C3956BD4812961182F7A81AE86EABD2D8A8D
          44C713C37EAADFD65E6421610C6F19C5DF7B58B74059F0D20747700331B0CF7E
          1FE360EC614F96F1B0593E27840062C776C09EC4D92BD9CD31B229E19B4147EC
          86E25EF5258D20AD8E9155EE110DCAB3DEAC2B3686B66AC4B3567512985BAA55
          0DC984EA81D9B1D5138B592E2872467034A30F99FE87EE86D43D52D2CDB8DBAA
          E19F1AFBB1D436C157950EAFD32F710A91EDEE9BB11B258E4AADC72B2AC09D58
          53F7290C6D3AA6F694C8D7313447D6A80389C95D8F20809705D7F85BABF99FE6
          3FAE41FE6E1FC517CB7D3F2BAFCA7D2CFA69F43FC7F9ABA79F2FEF3F30747574
          FECBC8F3FDAF0A2DC1B7E21AEDD57E6AB6FA5FD7ABAC3248FDAF7B2B67C86DE8
          1DBADCD0B15C512BED8ABD5C96475DC8DD12967A38F4B23D213D7149922B34B3
          17B6145AB2422C64D093998DB573F5E09BEA8CFEC0BFAB880F04DF5467F605FD
          5C01E09BEA8CFEC0BFAB8070DAC9AA57FEE2DB719A4B5DAB4935913E93B82342
          048CCDAACC6B6144AD5149CE92CC5F7C2C35C5228D7E2F8AADC57984A54E5079
          885F663323C207B236ADD2C5EB76B56BFEBE14F19910690A5EB2A98520C94626
          F8E9B5FC319E2C7BC0131861C6242DCCF6B11C127231F8201E03CF3CB9F1D50B
          CF007007007007007007007010E78E7CB9FA78039E3D3F9BEDE023C01C01CF1F
          6F3F47E5E00E021CF1E8CFA3F3678039E33F6671C04780B32C6162725CDEE6E2
          CCD2E0E4D23198D4E0B5BD1AA5CD860F1C8C31BD59E418A118861F467258C39C
          E3EDE02F18CE33E9C7FDF9FF00B3F2F0073C63F37FC38039E3F2E3F4E3808F00
          7010E78FCB8FD38E00E78FCB8FD38E00E78FCB8FD38E023C0483882541432541
          452824D0E4269271603493039F4F2194308806633F9F80B4FCAD19FF002E317A
          3ECFF086FF0077E00F95E33FE5D62FFA437FBBF007CAF19FF2EB17FD21BFDDF8
          0AE46D8DEDD8185BD022420333D46051244E97060B1CB964CC12006062E5FD39
          E02BF803803803803803803803806A3BAB6ACEA95D739C58B5BC8AAA89CAD955
          C54848FD73BEA48CC1D1A07495B3363D832F8EAB9A230DD2A5ACCA8F21846F8B
          DB5872F6624C38AB4E8F271980D5CC1FB8E6CBD9578D13128D06AC87C2A6708D
          5392461A76023E5D2F3FDB263B88996E2F19856B1E74B09C1FA2721AAD4C54B4
          ACCC4CA8E5C854293BCE2E72C33B835ADE084F1A3BA6ED1331E49D292600E6BC
          9A0E617C5DF5DB96B5DED0191EAAB8D75B35ADF5A5A95F3B3939C9958ED266AA
          2A5B5244BDD5D1B508CD129610BC031F0854427C94E3A09BD9B05B0BB028E154
          AA8A7566BA7D54DB0CACB5C503B45D575814BEB8C2B574E6947523D96FCC9177
          67B9C59572BFB51928C094320D035E4E6A2959A4F59CF40D49CF742EA9842A80
          AB7167C728A75766AED6618E6BF278BDEAED7DDE712BB9F684975A364D7D71BA
          CA472922230B3CD7C893818AD24970980C6E7F35AB00DD527868919A19DD36F4
          717FBDC88A3B57E2AF123143A5EDB61CCAAE78CBEE9CC75E36C7341D82B364EB
          F88CFD500D056D5B182941CD4E8E71D91203DBD51CF0991B5E0E3108F5391D50
          D80B79EF58FB8ADBA8EE8ABAD09440761EF82E9CB927E82D2866B6393241290A
          97E55907975E075746AA6913F27526BC2D8A28718F2A561725CD4A8E20EC0F87
          21A93F7744D8322ABAE64245974DD759328EBC2C268B3AD0A85D2511EDACD8BA
          82CC570E2B532976EAA2D2768C3D94B5A028D4259244DEA46B27253C27531A6F
          CFC39E1190BF00A04E77B2F297B4EECB4CD9F2B1A767D5AD2B7C8619DBD5F639
          3951B18FCCF14D7D69B0582E5597656D68C71E011D7E90BCA80015455A8684B6
          F2C2853399520214E490C17603B81DD53498EC5D215CAD93B6445D284DD36442
          CADF0C90C2B63A84B075A2AC873DC6275E6D82412597A5895BEFCF8B7E5F58FE
          D6C4E0F284E6D5ECD937193BC57907C7BFDB892DD73B4E8CAE51DE548EB4422C
          BA7B656C590DCD7557B26B252A0945203A6D443E1CD0D0C5348721201292276E
          425C154689638929028DAB2072389CE41AEB47739D87739A51E078AFD04064B2
          18A415A6F2D5C974294A7B42212C99EAE58F7EAAB0A17E4E62A67E7D72C3248D
          B3350D73C30236FC0D63835283487B4232CB781AB149FB93ED141A0BA82E9255
          B5A2FB96C6AF3576EFB56AB4153BDC4E2F634436CADC8A404359D0A091D9CF36
          EBE4EA848D2F705EF8AD1B53B14947F0F54EC4A14EB3CB168F3E4397DD9DCED8
          FA6F6B6B2A16A66CA922CCD25AAE3D62C524D79BB1313876C0D94E773B7D72FB
          AECC33A72746FF0096DFA39075817917C09049E4662F786A330D796E25778EEE
          859E2B7B5F95876F8B42CD852D324D7213BBB73D6513537737D83602065659DF
          72C90526800E0D6D2AD9E62F71D80C124B9C33109141294099BD30402C230F2E
          1FCFEC2647EEE6E952F207074BACF855955C466C3DBCA3DF08A975C2D14B632C
          2F5D68F7EBAA0D7C31B4AA982F657F7898099C6CAEB1821427683C632D436B90
          324AB24208BB87740DAD470BCB5065DAE0535A6D83B32B8FBE5B894C04D085B3
          C7B576BEBFEA98CC85C4CB45055E6BED913A992B8DAC766A93188B0DCC8AC86F
          24D7C116103F0335D94DEBDA56F6DDACAB489EC1ABEB61B7481D6E8ACD16BBC5
          0EBDD55353588D5B57CFEC2576CBDA9589A53165987292BB62307AF89931A934
          7CF6E1A071F8E275ADA638F50A74F77776C18CEBD65B1894D16F7AE755834EA0
          11EBF1155B377F40B526C744EAD9959FBA92F31B67E9232B687A9E392A3CE42C
          D1F355832352254F0EC81B1B8F52308FF101BD7EEB1F3F7CDB527CBDF7D1FBAF
          FDFF007E9ECCBEEE9F427E17E77EF7FF004F3E29FF0097FE77FF00D37F3FF1FF
          00913E71FF001BF8A7CBBFB3E16378DC01C01C01C01C01C01C01C01C01C01C01
          C01C048388215146A752494790780651E41E580D24F28C0E4232CD2478100C28
          C0E738CE058CE33C07C0D2A530D4EA069881A849834294E112588D4A13C2101C
          14E3C872611834000E07D3CB9E3973E011CAEB5CA8CA9251299B57157C4E272E
          9A0069A45236D6FEA7656DA6B9AA7B1B1245AACC506B3C644F6B8F5BF0B4794E
          DD85A78CFC13E28C43C82D05145905964905809289000A28A28012CB28B2C380
          0005803C8002C00C63A438C72C6380F911040CF2D408A2B2A092CD24A3F25832
          71651E328679459BCBC401678C806461C6790B20C73FB31C07C052A50E140429
          8808558C662A08492C21546180C1660D407A3183CC30A06022C8B9F3C6397013
          0A20924A2C828A2CB20A2C24964960080A2CA007A00500B0F2000B0031D380E3
          1CB18E02461020C14953851A409084448D11384C56094834E1C8091A42BA3C34
          E32422E40C83974E3ECE0277974F83FCDE0827CD785E5FCCF860F31E5FAFC5F0
          3C5E9F13C2C0FF005BA39F2E7E9E000A720B34E3CB20901EA3C3F30700B004E3
          FC10F413E31B80E0667860CF20F5673D3FD1C0634BA0B0C749732CF5CA2CC4BA
          6B1C617F8B304A55B62550FACD1C94B9471DE46C8DCE269425291B1EDD21ED4A
          14921160069ADE40858E65879064BE027F1FCD7805799C93E5FC7F0C3E3797EB
          F13C0F17A7AFC3EBFD6E8E7CB9FA780049C819A51E324A19E9F0660838658447
          1383B0109D824C107232F07746302E9E5D5CBD3C07C1C95328C902509C83C494
          FC294C238A2CCCA652001A585427C8C23C94A0251A30F58790B96738FB339E02
          AB80380A2CB720CA5020CA2499425F8382D1E5313E50BF00C01A47869FA3C007
          8269781079071D22C6338E5C04EC2720078D4849282A0D2CB28C3F0583071851
          4230451433718EB196588D16421FB319CE7F2E78002412124298049414C12B04
          848096109212301E8F070560382F05747EAF4F2E5CB8097E451F93F87F944DE4
          3CB792F23E017E4FC9785E0793F2BD1E0795F0BF53A3A7A3A3D1CB97012BA9D7
          D537FEFD4FBB704D1D4EBEA9BFF7EA7DDB81A3A9D7D537FEFD4FBB7034753AFA
          A6FF00DFA9F76E068EA75F54DFFBF53EEDC0D1D4EBEA9BFF007EA7DDB81A39B9
          FAA43ED4ABDDB81A8F53A7A941ED2A3DD781A87373F5487DA957BB70347373F5
          487DA957BB70351EA74F5283DA547BAF034753A7A941ED2A3DD781A87373F548
          7DA957BB70347373F5487DA957BB70347373F5487DA957BB70347373F5487DA9
          57BB70347373F5487DA957BB70347373F5487DA957BB70347373F5487DA957BB
          70347373F5487DA957BB7034753AFAA6FF00DFA9F76E068E6E7EA90FB52AF76E
          068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E
          6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7E
          A90FB52AF76E068EA75F54DFFBF53EEDC0D1CDCFD521F6A55EEDC0D1CDCFD521
          F6A55EEDC0D439B9FAA41ED4A7DDB81AFFD9}
        mmHeight = 16933
        mmLeft = 2117
        mmTop = 2646
        mmWidth = 72231
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label21'
        Caption = 'USUARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 26988
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label18'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 24077
        mmTop = 26723
        mmWidth = 2117
        BandType = 0
      end
      object ppLine21: TppLine
        UserName = 'Line1'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 529
        mmTop = 46567
        mmWidth = 282576
        BandType = 0
      end
      object ppLine30: TppLine
        UserName = 'Line18'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7144
        mmLeft = 207169
        mmTop = 39158
        mmWidth = 1058
        BandType = 0
      end
      object ppLine32: TppLine
        UserName = 'Line23'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 529
        mmTop = 38894
        mmWidth = 265
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line28'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 59531
        mmTop = 38629
        mmWidth = 1058
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 32279
        mmTop = 38629
        mmWidth = 1058
        BandType = 0
      end
      object ppLine35: TppLine
        UserName = 'Line11'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 165365
        mmTop = 38894
        mmWidth = 1058
        BandType = 0
      end
      object ppLine36: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 282311
        mmTop = 39158
        mmWidth = 1058
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line17'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 235215
        mmTop = 39158
        mmWidth = 794
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line21'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 220928
        mmTop = 39158
        mmWidth = 1058
        BandType = 0
      end
      object ppLine39: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 38894
        mmWidth = 282311
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label3'
        Caption = 'Centro Educativo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 126207
        mmTop = 40746
        mmWidth = 26988
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label4'
        Caption = 'Direcc. Colegio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 176213
        mmTop = 41010
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label6'
        Caption = 'Departamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 6085
        mmTop = 40481
        mmWidth = 20373
        BandType = 0
      end
      object ppLine40: TppLine
        UserName = 'Line16'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 247650
        mmTop = 38894
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label7'
        Caption = 'Centro Poblado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 40217
        mmWidth = 23813
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label8'
        Caption = 'Cart. Afili'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 6435
        mmLeft = 208757
        mmTop = 39158
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label9'
        Caption = 'Cart. Noveles'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 6435
        mmLeft = 222250
        mmTop = 39423
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label10'
        Caption = 'Cart. Famili'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 6435
        mmLeft = 236803
        mmTop = 39688
        mmWidth = 10160
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label11'
        Caption = 'Cart. Pre-Cese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        mmHeight = 6435
        mmLeft = 249767
        mmTop = 39423
        mmWidth = 13547
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label12'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 270669
        mmTop = 40746
        mmWidth = 8467
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line20'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7408
        mmLeft = 88636
        mmTop = 39158
        mmWidth = 265
        BandType = 0
      end
      object ppLine42: TppLine
        UserName = 'Line24'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 122238
        mmTop = 39158
        mmWidth = 794
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label5'
        Caption = 'Provincia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 37835
        mmTop = 39952
        mmWidth = 15346
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label13'
        Caption = 'Distrito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 66411
        mmTop = 39952
        mmWidth = 13494
        BandType = 0
      end
      object ppLine56: TppLine
        UserName = 'Line56'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 264319
        mmTop = 38894
        mmWidth = 1323
        BandType = 0
      end
      object pplUsuario: TppLabel
        UserName = 'lUsuario'
        Caption = 'ROLAZA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 29369
        mmTop = 27252
        mmWidth = 12700
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppLine43: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 1323
        mmTop = 12171
        mmWidth = 282311
        BandType = 4
      end
      object ppLine44: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 207169
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line7'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11642
        mmLeft = 1058
        mmTop = 529
        mmWidth = 265
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line8'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 59531
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine48: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 31750
        mmTop = 0
        mmWidth = 1588
        BandType = 4
      end
      object ppLine49: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 166159
        mmTop = 529
        mmWidth = 265
        BandType = 4
      end
      object ppLine50: TppLine
        UserName = 'Line12'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12435
        mmLeft = 282311
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine51: TppLine
        UserName = 'Line13'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12435
        mmLeft = 235480
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine52: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 221721
        mmTop = 265
        mmWidth = 1058
        BandType = 4
      end
      object ppLine53: TppLine
        UserName = 'Line19'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12435
        mmLeft = 248180
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine54: TppLine
        UserName = 'Line25'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12435
        mmLeft = 88106
        mmTop = 0
        mmWidth = 1058
        BandType = 4
      end
      object ppLine55: TppLine
        UserName = 'Line26'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12435
        mmLeft = 121709
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine57: TppLine
        UserName = 'Line57'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 264584
        mmTop = 265
        mmWidth = 1058
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'DPTODES'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 9790
        mmLeft = 2910
        mmTop = 794
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        DataField = 'CIUDDES'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 8996
        mmLeft = 33602
        mmTop = 1323
        mmWidth = 25929
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'ZIPDES'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 9260
        mmLeft = 60590
        mmTop = 1323
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        DataField = 'CENPOBCOL'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 9525
        mmLeft = 89165
        mmTop = 265
        mmWidth = 32279
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        DataField = 'CART_1'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 3006
        mmLeft = 209550
        mmTop = 794
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        DataField = 'CART_2'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 3006
        mmLeft = 223838
        mmTop = 794
        mmWidth = 11642
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        DataField = 'CART_3'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 3006
        mmLeft = 237332
        mmTop = 794
        mmWidth = 10583
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'CART_4'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 3006
        mmLeft = 250032
        mmTop = 529
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        DataField = 'TOTAL'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 3006
        mmLeft = 267494
        mmTop = 529
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'CENEDU'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 10848
        mmLeft = 123031
        mmTop = 0
        mmWidth = 42333
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        DataField = 'DIRCOL'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 10319
        mmLeft = 166423
        mmTop = 0
        mmWidth = 41010
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        DataField = 'CART_1'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 3175
        mmLeft = 207698
        mmTop = 0
        mmWidth = 13758
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        DataField = 'CART_2'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 3175
        mmLeft = 221457
        mmTop = 0
        mmWidth = 13758
        BandType = 7
      end
      object ppDBCalc7: TppDBCalc
        UserName = 'DBCalc7'
        DataField = 'CART_3'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 3175
        mmLeft = 235744
        mmTop = 0
        mmWidth = 11906
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        DataField = 'CART_4'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 3217
        mmLeft = 250032
        mmTop = 0
        mmWidth = 13758
        BandType = 7
      end
      object ppDBCalc9: TppDBCalc
        UserName = 'DBCalc9'
        DataField = 'TOTAL'
        DataPipeline = ppbdReporteColegios
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteColegios'
        mmHeight = 3217
        mmLeft = 267230
        mmTop = 265
        mmWidth = 13758
        BandType = 7
      end
      object ppLine67: TppLine
        UserName = 'Line67'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 4498
        mmWidth = 282046
        BandType = 7
      end
      object ppLine68: TppLine
        UserName = 'Line68'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 282576
        mmTop = 0
        mmWidth = 1058
        BandType = 7
      end
      object ppLine69: TppLine
        UserName = 'Line69'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 794
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 4498
        mmTop = 529
        mmWidth = 8467
        BandType = 7
      end
      object ppLine70: TppLine
        UserName = 'Line70'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 222515
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppLine71: TppLine
        UserName = 'Line701'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 235744
        mmTop = 0
        mmWidth = 529
        BandType = 7
      end
      object ppLine72: TppLine
        UserName = 'Line702'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 265113
        mmTop = 0
        mmWidth = 529
        BandType = 7
      end
      object ppLine73: TppLine
        UserName = 'Line703'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 248709
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppLine74: TppLine
        UserName = 'Line704'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 207434
        mmTop = 0
        mmWidth = 794
        BandType = 7
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
  object pprReporteHojaRutaDomicilio: TppReport
    AutoStop = False
    DataPipeline = ppbdReporteHojaRuta
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210079
    PrinterSetup.mmPaperWidth = 297127
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppbdReporteHojaRuta
    Template.FileName = 
      'D:\Desarrollo DM\ASOCIADOS\FUENTES_CLIENTE_201501\FUENTES_CLIENT' +
      'E_201501\rptHojaRuta4_domicilio.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 120
    Top = 440
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdReporteHojaRuta'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 37042
      mmPrintPosition = 0
      object ppLabel66: TppLabel
        UserName = 'ltitulo'
        Caption = 'HOJA DE TRABAJO DE CAMPO POR COLEGIOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4445
        mmLeft = 8467
        mmTop = 22754
        mmWidth = 86149
        BandType = 0
      end
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 257705
        mmTop = 3704
        mmWidth = 20108
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable2'
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 257705
        mmTop = 11642
        mmWidth = 7673
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label22'
        Caption = 'P'#225'g :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 237596
        mmTop = 11642
        mmWidth = 8467
        BandType = 0
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable3'
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3810
        mmLeft = 257705
        mmTop = 7673
        mmWidth = 21960
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label23'
        Caption = 'Hora :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 237596
        mmTop = 7673
        mmWidth = 10054
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label24'
        Caption = 'Fecha :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 237596
        mmTop = 3704
        mmWidth = 11906
        BandType = 0
      end
      object ppImage3: TppImage
        UserName = 'Image1'
        MaintainAspectRatio = False
        Picture.Data = {
          0A544A504547496D61676543290000FFD8FFE1001845786966000049492A0008
          0000000000000000000000FFEC00114475636B7900010004000000640000FFE1
          036F687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C
          3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043
          656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65746120
          786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B
          3D2241646F626520584D5020436F726520352E332D633031312036362E313435
          3636312C20323031322F30322F30362D31343A35363A32372020202020202020
          223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777
          772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E
          7323223E203C7264663A4465736372697074696F6E207264663A61626F75743D
          222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E
          636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D226874
          74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F
          5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F
          6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D4D3A4F7269
          67696E616C446F63756D656E7449443D22786D702E6469643A38384242323139
          413845363945333131393530364335414333303344354330382220786D704D4D
          3A446F63756D656E7449443D22786D702E6469643A3442453033434441363939
          3831314533383235463846314639373642313741362220786D704D4D3A496E73
          74616E636549443D22786D702E6969643A344245303343443936393938313145
          33383235463846314639373642313741362220786D703A43726561746F72546F
          6F6C3D2241646F62652050686F746F73686F7020435336202857696E646F7773
          29223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E73
          74616E636549443D22786D702E6969643A384642423231394138453639453331
          3139353036433541433330334435433038222073745265663A646F63756D656E
          7449443D22786D702E6469643A38384242323139413845363945333131393530
          36433541433330334435433038222F3E203C2F7264663A446573637269707469
          6F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F7870
          61636B657420656E643D2272223F3EFFEE000E41646F62650064C000000001FF
          DB00840001010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010202020202020202020202030303030303
          0303030301010101010101020101020202010202030303030303030303030303
          0303030303030303030303030303030303030303030303030303030303030303
          0303030303FFC00011080040010403011100021101031101FFC4009C00000102
          070101000000000000000000000007080103040506090A0B0201010101010000
          0000000000000000000000010203100000060200040207030808030901000002
          03040506070108001112091314215394D415161731180A516191222393193941
          D192242556B778A133957181D336274768C81A8A110100030002000602030000
          0000000000000111213141516171810212B1D1F0A132FFDA000C030100021103
          11003F00D6A7E21FEE59B05B49BCB7D6B9993691C5B5B75BAC97FA8E255233BB
          2D6E8DBFC9600B4D8FCAAC49B22467109659227893A35996E1AC01806B6AC924
          A7000625672AC7CA76BA573BD938DFE830CE5F9CC167FE3E8E203C537973F14C
          FC9FF305CFF473E7C047C51FAE3BF4E7FF001389A1CE6A76E3EC5E91DB91DBAF
          5BACC9157F30625E894AD4685C570A2D336A4AA4B52A6293F8C96AD3B74BE26E
          982BA54A25411079F234B116704A3408B891EC67AC774A5D8FD70A1360D1340E
          3C96F0A6EB4B64A8F9AA32B06C3F5061ACF2A1B30966494DE732D237411193BC
          3060DE8EAC631CF971D50BA70070070070070070070070070070070070070070
          070070070070073E5F6F006338CFD9C01C01C01C019CE31F6F010E78FCB8FD38
          E0239CE31F6F00701E379DD8FF0099E7703C7FF30F617FD5092FF5F1CE79564C
          D5D9E7B9BBD51A1D8D6AD30B9555526C7C32C4AE38696B2E5CBE28680B3CA933
          65567BA956B3B47D421330A8A5A9990E4C721CF9A00B24733787D64380DA2EDC
          D3FB7F6E6ADA1740F5C2452D7179D22D3BB9A4D18871CB0E6C6D76B0F5F6BF95
          CEA7B2E94CCDE4A6486373E4BA42664C39C57A240158A42495D22180AE131738
          1B3C7BB4D771C945FD26D5F66D44B6CCBB218CC9E49288C383735B332B2C5D71
          AB486A942BB15EDD9B6B60C59FD537A925B5CC0EF940E67A730A4A69C60041E1
          5F2B4B34DBCE83B97596CC91D377E56D2BA9ECE8A8C803E43E62D8636B9A6256
          1385081C1319FB448EACEE89861391AE4661C89610209849A60058CE64DF6AF5
          F3ED63FCB47403FD9BEB7FFA4713E3AA15CD91DC8D57D4065677FD9DBF6AEA49
          048CF3D3470B9F4A9BD9DD64A6A31A62D7E238C19198FD202DB32B89CAB1A34C
          781284D088DC8022C6780E6E7B8B7766D848C774DED5F59E98ECE449EB4E76BC
          DA2332C360CC356D8D12B18A95ECD3FD6B3B0229DAD8FC81E111E18EA029B8F2
          9BD7A339B14807D41028EAE52E6E23A1D19EC86F0EA169FE1903B37B1B52D28B
          24850D4C7D9E75306D6C913E2228FF002C738B5468261EFEBDAD3A9FD99CA8A4
          C24E519E818F19E28CC59368F5BE4B492FD948EDED53BFEBFB4B4B9BF3ADCACF
          3C8E39D6ED6D2CBCC2F2B1CA5C8DC0E666F0B38B190AB01A680C4E6632033011
          6338E013A6FDFDD27776DA7DE1A369E8E776BBFE4B248852CE0D161C7DCD2597
          228764E2E5C82247205AA0B732E307938257A80E7CB235261449A600D3C900C2
          CE4771DD0B575D116DA0DBCD7F74AD1559CD34BA39B345971A76605F6C3EA546
          E2D75E372D6D5CA42E12A52D2B8B5B9484E0C38A41D4A8CC05380668428AD8EE
          65DBDE8D992CAEEDBDD0D6C824EDB1C4E697A883DDB90E2E431E744E6E0950DD
          26694EE8A164656A737D0616BC29C60F4F3FB33C2E02CB2BDABD6783D3683626
          5B7F53EC5423AFC33E15732EB0E2C1AC9D7E34B3E1CD196B9A96E638F38FC457
          872493E0A81F5998C871CF38CF2045275DCDFB7BD66E155B5CF37275EA28AEEC
          8DB24D2B0CBC5971E4E92530B9264F047A665AFC2B13735441F4C4C6811BA2E3
          52A152324C096688458B1860BCDD3DC5744F5CACA69A76F5DB2A22ACB39E7084
          C221732B0D81A9E9B53B9929D5362C93146AAC950E40E8955166A550EC344428
          273D650840C67385C0576E3D9BD74D798AB5CE6F6BDAA3A7E22F981E58243645
          83168735C8BA1312AC408E297C74440901D84AA0B33A11F8C3F0CCC67972CE39
          8615AF5BC1A7FB60ADDDB75AF65A97BADE581265C9EE3F5F5811F90491A1AF0A
          4A47F17728DA559F1D46CE258A0B282AC69829C468F01C0F22CE31C0393757A6
          763253287A756C674EB5CDB19519EE8B933792ADE1ED7A76B666A4C6AB34A01E
          E6ECE4A8A4C9480E7269E79812CBC6442C632090C4F67B5B27B66C9293836C25
          2133B961C27404BAA58A5AD0490D99171B12B290BD824304687E572765133AD3
          824ABC294A5E539A2C00CE916718E0257DE9759BEB07DDEBEF1345FD7DF13C2F
          A21F56A05F56FC6F85FC77C0FA6FF1FF009BFCC7C17FBEF4793EBF2BFB6FF97F
          ADC065D695CB50D1D191CD6EBB52B7A7E185282519B2CB46731880468B58A39F
          974837D9639B4B60551DD39E8064DEA172CF2C7A380ABAD2D6ABEE788A29F53B
          6440AD782399AA486D9A56B308F4EA26BCF446E49584229145DC5D1A151C90EC
          640680B3B392C58E42C633C02713FDB9D53AA27ED754DA5B35AF95B5A0F7F0DC
          B356F3EB9ABA87CF1DB0F4779766136C4243236E7F5B876521C969725A717981
          E3917D59F47011BF5DA54F9584FD8E97BEEB5A4AD1607B81B71F614D98D92C36
          180295F2588BC2B639642D64A230501C6750B5F942DE050B529A131D932A2B06
          67C3098178B8B6575D35DCB6036FFBF295A34A961EAD34587705A507AD012552
          8029B2B93B00A66FACD8783908561393829FAF2560C07572C0B1CDC721A36F07
          710AEF519669C165CD693588F66B66AB3AB9ED5CCECC636029828F98C7A6CE72
          2BB580D03984A5EC51C72626D4D95E6FF84604E2009A703232F3C27390F322D7
          DD173A823F5A508BA2A798D611513C065163C5AC587C86071B1479116E2FC17E
          97B4BC2C8F34098DBCE09EB3CC282FCB102C0CCE90E719E028A9CD8CD7DD8940
          F0EDAFF7AD3B79354755A640FEE5505990BB29031AE5648D42346F0AE1CF4F49
          DB152A20191940384011810E738C6718CF017B925D14F43A3C8E5D2EB5EB58B4
          4DC6505C1DBA51239D461963ABE686BDA88C950F44F4E4E899B55CA4C91A435B
          F0DE59B95795A5893E0BF14390E0304AB9F64505AEA7724BEAFAACE789186C5B
          71D0EB19B5B186B788C12048666F6264834A148A44E6D25BC556CC461A5DDC94
          A84E61CA51983505966E079C85EA9ED95D73D882DF0EA06FDA56F12A306A6224
          86D3F69C1ECC0478F59E2F9325EC70B7D7AC3518AF040F2584FF000F23C005CB
          9F2CF2723493F7E5DA7F9E3E0FF53D3FC3FF00FD0E7DC73CBFC990CE5F75AFA0
          9F39FD31F17E0FD5E3FCC3FDE3E33CFE33D5FB3F31D3FA9C66FF002AE49ABB8A
          54F38FC5053E8C5D28232F10D71EE19B2C63630CC4CC971591DA0DEF567B951F
          197E2C61196B50492EA471F4262234224EBBCC796342228D163333EDA34E33EB
          CF73D56E2C86E19ACFAEB6DDD9496DAF29D5FF000B648CF71305B089F8C65322
          6D881064878605ECAE85E5A53322524A4E8C90010129C050024E33737E63A4BE
          F756258276AB6D54B5CDDDBA3767DBDBF1A574DED486BD7A270D52495D37DAFE
          B9944CE997C5CC0E2A50BC452A5BC642E8689A4C11C991BFF50841F1D28041DC
          F1EE9DB55B71EC0DDEF9D8AB506B277B5664E55FFDF7B66A1A289AA785236F3E
          235CD67414A60316579CE7CCAC8E4364964BEAD6F4261B94898E71C6405F3208
          C932E7EB4AB4EF33B39CDFB54F66AB0A62B5649E78595BE353E66AFC70DD2527
          D61565BD5CE2B3811EFCACC35CD744EBD2654E44332238D114D49D5984A60964
          F2070F97108F4B3ED65FCB4BB7F7FB38D6FF00F48A29C6C71F554D055D7774FC
          48FBBB03DEC74779657FAF38B85A6B9A754C99E638DD268D5253D8ED57078337
          9ADAE8DAF6D51B21BA42AE5AB9334284A6B839E4F54663251EB303C73F2D5255
          BD3A0BAD7A19F883FB66567ACA4AB8B571675CDA9168AEAA8E91BBC952D71207
          2D8DC4517A38FB83F383B3EA6649395152D7929D6293CC214987E0B1052F9624
          A4C57CA2836FD7A9AB5EDDF707EE13B15B63DB6769BB9FCD49B25C18982B2AB1
          C24C38B514D2AE5B35606B699CB74690AA7DCFCBD1589A4648C1423F089214DE
          B44612729C90A533B9B80BB6B9D2DB49AEB56F7BF89675276E3547B7E5C5A2D7
          85935B41B63A36FE04B12B3236E90D4B01650CBDE9A1B1B5548871C91BDA1F0C
          A18DC96B6A44BE74C586A009F8B1DF852161EC25DAB20D61E9EBDF744B7E7D3D
          7F9BD1C9EF42F562B442FE14D5EC353D7516952B707D942434A39C1C82ED61BE
          B8292DA129EDC80224E250ABCE79E30B25F18EE4379FC397DA72AEDF262B1F63
          F65ACEB09AE9CD5CB59914D775AC2A5638B369D6990DB1F9BCAE712774392AA1
          3333A08F32B3261E1B7095C1767908C5840111403DF18B0BE3995A15DC9EF5DC
          3B4751BB116C46E5C49FECC993F595B4ECFB672DA31CC12B95962717C9455D59
          2F20E830E48E6E869B2142C4A0D5AEAA3CE80C5A8892D47920327881ABCD7E97
          CB55762AEEB74EBC2F7CC426A7DA9D3392C2A2B200E32BA29229ECE65D1F9AE0
          E2F00F0D02C7043016E0AA28BF08B0A94E316318C9A2EA91FE654F97623B476A
          0407F0E9555DC01A1A2666ED5AD8DD2D623D58ABA66FEB913EA1B3AC563829F5
          F2A87A970510F6F8A45E3D242F0DE6244699CB0A5BCAC9AA46030D2449F8C447
          9A24583DA7F5213FE1BE67EE306B6CE5CF6F14A18858ABED1709BC855A67142F
          97FB7D359AF15C416AE5116C445AA20BC034E781281DF2E290B37CDF96C891E5
          51F5B9E57B2BCB766F4E65DDB0BB2F6B1ED0E9DDABDC736C9E22D60BF5194A43
          EC496560E08602A6DDB3E978832BF587174EE331358DF1140D1266E666D4E615
          92E2851AACC4A993100536E2AA790D74EAF1FF004CFBD276C87EAD341EDAED78
          ED60DD550C5A4355492F73360215316699D9AD35DCED6C02C3C80F5CA9AA4105
          981ADEF4D872C5004A79A1C00B27AB1812AA611DA877A189027FA8509800A432
          487FCFBB9BA310CC4C616E8730CD622193ED4D5AD0A2450D90251056B04A1B12
          2B306897119C9A94FE430E3D19E353C0493BA16976B0D37DB6AEE9BD174EC128
          5B1B542B270B875DAD3A7630C705B32ACB0AB74E43C333E304E5A1127921A6BE
          650E52BDF985270DE922A3C2A846986789874156BC3B7169AC4BB7F5AF5A4729
          383B19D0EA3671358D5B0963CCE3BBD92DA8EC35CA52D17B916C9A9899B1D742
          198A229EC4FE6AEC2D3DC03911A664B1081C2434F8F6C1C5F682BFD2B465E834
          1BB916F3B568C6BADD36D496C32EA286D6F41336C3D78C4FE15533B52C68E4A1
          3C5665713F30AD5CDF1C8F3139399ADE8CE527012A1C1461D2EE3CCECD7E773F
          BE34FF00622EDB5E0FA391AEDF1389876B0DF6B15643AB9B3AAFB5E87BF2DBD5
          56DAF26F4CCDDA20F59B142D3FD54ABBE747125C1C5F18122A756277C202B278
          53E3207E86DFB50340B4753EAA55C23296A7360C57056B13B1ACBBBADA84C4EE
          19E6C74A2C98F249649AD6B1E7F356F90BD4E1CA7AE2FA7B875A8546A44E4A90
          A7480252964940540D06DDB4ED7146EB5F7EBA76AE7A769556F01DB5EDB2C314
          1CA256E13E5F13694CE5A98E096A1264AF2A97BA2A8CD2C62BF979911A95071E
          CED6853B78CCC89264594F1EFF00A1B54BDA939A515B9BB2DB4169E8187B8FD2
          37DC72B61314B610DB5C599B0FABF1AACA008E24EF45B051375485A1B26155CB
          E5197095A61C10E4EECA1D5E9C00EADEBC6044A30F30D7F64229DBE2DDA9FB53
          BD6ACD275423AB3F8C0D795BC86BA72A81244DEAB190BE365F2F778D2136ACA6
          4C091EAB1569A748CB54F1133D2236FF001C84EA0A4E34F94868A4D4D7A9050F
          73D35511DDFBD7CD2945A6330B4754607AED3ADE0956AE6A756951A48A5C578A
          9B722B52C22457A575207BAD227308055E992A972291E559E05F235EDE7AF4C7
          94DE4745EEBA1779B237496EC6EA3DC7A8BDB3B6AB542F1825F159C46CCB257D
          45425555CCEF50A70FE8A33B055B5D47C06F45A54A6311A891C549E3C156D2F0
          B1AE4AC2886D6024472918931DF62FDDA9B47EA99F47671B297AB430DE8BE29B
          81BB51FD418D4FD81A1FA17AC558B16E25AEA1C1657713716CCB337DB93BB39A
          DC1E9E260328D90284816C401525266F015956DC84AAABB268866D67514B595A
          B09B76EDBBBFBA0F71C7CD79D603D8A04E044CE6355ECF5C92091D92FEF16AAC
          455E4361D5B3439872E6F6E061DE586E24904A75279E12B2C18BDECCB74D636C
          697DD62ED5B5CE8F4C229BA5AC75B636335B6FBA3658CA3AAEF9B6E3F51D9D55
          5D3148B55F59CC65D059FB2CC7CB224A4A25C5B7C8468DC42A52E538C2A4132F
          FDC9FF00FACAFF00EAEF13F6BD7B3895EEB0A0F45DD0F7F55A434E4AAD36E4EC
          2284CA539A610A139E45AB2334A3C838192CC24D2860EB00C3E9E7CB38E333C8
          5BD277BFDEE4CD891C8E74A19DEF36E654B1A6BDC27ED6EA65E770DB98914771
          144C98BBF1C2207CA95BB96C18C9187C5383E442E79332BFC6CF5F0FB4FB8634
          FF00B6175CAB5DD7EB149A484C86B777D8F78DAF795EF8930E93B7ABAA45082E
          BF7C92BCCDD79C7BE3A16EAC24F59E51E60B272B165408591E79F12F28634F77
          FD86FDAF903D635EA5A05575736958570C69281A8A29F0B995991D83C5A4E6AC
          7AC0B2A16379AD75EB77809FA71828CF133CF3D58C05782BE79B296859342D03
          ADF275ACC755FAD2E5703B55A89131A342F08965E0FCC1249F09E9E4BC655BEE
          153A4692E5378B91652978C8439E9E58C3781EBA9DAC7F968E807FB37D6FFF00
          48E27C7546AA7B93FE1F449B6BB52DFBCFA95B472FD2BDA23BE1C6CCE4D176B7
          A5AD9267A69662632DF3561758ACBA172880CC0C8C17842E4626395A37720A2F
          232083C6B142B931737D86E711FC30F2763DAAD5ADC296F707B12DCBA2A4B36B
          8B86F6975AF03719A3FDCF33AEEC16D94B6258E3DBAD946BA4218088A3221642
          42B8D7F3CBC939521100BC948899F5DB0B9EDE7E1F6964AB6D26DBB1DBB375EC
          1D09B9ADA39DD6DBED3186F7C5D1796BCC95612E72A796E708D4B62CECD29E52
          F69C0E4E4D4B0B766F52EBCD493E544108316B6C2A543F648B56BAD3ADEAA0ED
          EEE0773EC25BDBDF1871679AD916323757DAEA0CF6A9A0D6804B2395B3ECD1DD
          E9CA5CE080C2923AB99AFA9C4B903737272C84C0420C8D101D976FAEDA2E1A39
          DBB1FB44155D24D8CB1ED1DD494168A481662A5377D5D29D40030B889F2B91E5
          665806E7E2721B863CCE71CBF678E5CAC64504FF00B3D7691FE169415D744C96
          E76FD836CB92C23266B96975D1D5EA540DAAA16D10D5EC0A1BCD99CC86E21584
          3708623707138E91F2E9FB73C48C81AEAA43F0ECECFEAA4D2CE836A97764BA68
          3D3AB7E5637A985590E81220DAA9D80C30297E171DB1954A543446E7D88E124B
          77CE0DAD88169A020919E8CD012023844570319AC7F0C038D6BA65BA7A869773
          D3B991B5D636BE4CDA66CAA8E3427419B284934BDFC86F766705A81F9ADC64E4
          4AC25187814A02D29A9BC4C16678990855514365D6FF0069176B53B3AC3FB55E
          2FD4AC8E31783D470F36EF156827146BFE974F23F37F1C35F066880F4A4BA858
          B09318F8C08C2702C1B91199C64194C5C50A594F685739276626FED318D814A9
          5C5144A2F1ACDED9ACF26243B31CBB1BAE2F17E9D026A518020F021C36631F19
          C998C67CC6739CF32F85650D7DCF3F0D34A0751E8AAAA4F77DF6A5DBCD1D88BD
          C1983601AAB7529DA2671B576DCFED88B1208B249DFC5226E5075D63B8212D46
          17B994E680CC92A53F40B1802BCF4642BFF0F0DF7626DAEA3EEAEC3F7359FDFD
          7650762D713E9E9B39A7DAC11A90A1AC2C96B9F4760952B0B1CD199BEA68B9C4
          A4509D607C1710295EACE70C12508D191956C48DF96DBEB8A8DA0AF60D054F32
          0C1870DD82D77BCB2EA362C487E200A1EE1885AC28CE11E5D1A7CA8A4DF2B791
          F37E20FCAF8DE2F846F4F40A8AFDC8D7C3B6C355AFED6B4F2D0C0CEBBAAF94D7
          209989971230C685246F310FC544C427167F8AE12E0CCE72479A23ABECEB0FDB
          C029B65400760D453FAB30EF968366D5BCAABFC3F811855E5AC5258C2E8EE1E0
          0DA23C90A9CA3CADF1F04E4D0E07D3D1D78E7CF80D5840BB726C76AA0AB49BE9
          7EC6D60D76421D56D6ED62D858A5FB4F482594D5F8A358A189E0D5A5CED24422
          C58B5875158AD51E50E0DE71299D5E1A1C5B54272D425F3288B58395E033EAF3
          47F611B36AE09BD5B25B479BA6CB83D2973552EB4A56F531709A39AA273D3E02
          FCD4C149C41E66F2992B34802F90B506BDBD3F3C3DB9CA047214DD4D889BC94D
          C581AC788583DB6E2512B0239587761DA4EDA75AAF54F0E73FD0B9A4A6BDA3EC
          6A09F5D917C624F01A52B9D81A764F775325FC756AB51F0C812E706513929370
          C022C9F0318990142D6FEDD8D9B2FAAFBF8CD5AB34AF52E89DCED87D7F986BA2
          39FC2A40EB612AA9F598749AA1DDD398CCDDF9A2C25524DA39AD6EF6F9955283
          8A931E9DDC97571C9C7A8E9139C1B41B2A99EE22C1674EE63AD7B7B4DB857D3F
          7148E69A9EDADD7D79B05254AB8A6D2D02FF00A596053B6853724511A723CA02
          ACB44813BBE493C02C10B4A09A3C714226F1DAD1D57EBF25602F6157AADB749B
          92C9DC2F3B26F3014CAA22E5B5AC68D247083D6D288E4E8884F4CE2B34818827
          8E92F785691A0051F85E6AE2F2A061994CB4D76AAE68FD5D6D593B2155D6DBDB
          424DE64ED4A5DBAFD4CCB1BAA143584F5BE30D538A2ADCA76C9B7662BADE80D8
          A4C6CB54E66E1E58D7A0704EDCADA8D46A9B8472C0CBEBFA3FB844CACAAFA5FB
          45B655430C02B279CC88AA874F2A29656A8EDE7D293F9441F59A7D6C58D69C8D
          4405016238FF009658D3B5815283C3956BD4812961182F7A81AE86EABD2D8A8D
          44C713C37EAADFD65E6421610C6F19C5DF7B58B74059F0D20747700331B0CF7E
          1FE360EC614F96F1B0593E27840062C776C09EC4D92BD9CD31B229E19B4147EC
          86E25EF5258D20AD8E9155EE110DCAB3DEAC2B3686B66AC4B3567512985BAA55
          0DC984EA81D9B1D5138B592E2872467034A30F99FE87EE86D43D52D2CDB8DBAA
          E19F1AFBB1D436C157950EAFD32F710A91EDEE9BB11B258E4AADC72B2AC09D58
          53F7290C6D3AA6F694C8D7313447D6A80389C95D8F20809705D7F85BABF99FE6
          3FAE41FE6E1FC517CB7D3F2BAFCA7D2CFA69F43FC7F9ABA79F2FEF3F30747574
          FECBC8F3FDAF0A2DC1B7E21AEDD57E6AB6FA5FD7ABAC3248FDAF7B2B67C86DE8
          1DBADCD0B15C512BED8ABD5C96475DC8DD12967A38F4B23D213D7149922B34B3
          17B6145AB2422C64D093998DB573F5E09BEA8CFEC0BFAB880F04DF5467F605FD
          5C01E09BEA8CFEC0BFAB8070DAC9AA57FEE2DB719A4B5DAB4935913E93B82342
          048CCDAACC6B6144AD5149CE92CC5F7C2C35C5228D7E2F8AADC57984A54E5079
          885F663323C207B236ADD2C5EB76B56BFEBE14F19910690A5EB2A98520C94626
          F8E9B5FC319E2C7BC0131861C6242DCCF6B11C127231F8201E03CF3CB9F1D50B
          CF007007007007007007007010E78E7CB9FA78039E3D3F9BEDE023C01C01CF1F
          6F3F47E5E00E021CF1E8CFA3F3678039E33F6671C04780B32C6162725CDEE6E2
          CCD2E0E4D23198D4E0B5BD1AA5CD860F1C8C31BD59E418A118861F467258C39C
          E3EDE02F18CE33E9C7FDF9FF00B3F2F0073C63F37FC38039E3F2E3F4E3808F00
          7010E78FCB8FD38E00E78FCB8FD38E00E78FCB8FD38E023C0483882541432541
          452824D0E4269271603493039F4F2194308806633F9F80B4FCAD19FF002E317A
          3ECFF086FF0077E00F95E33FE5D62FFA437FBBF007CAF19FF2EB17FD21BFDDF8
          0AE46D8DEDD8185BD022420333D46051244E97060B1CB964CC12006062E5FD39
          E02BF803803803803803803803806A3BAB6ACEA95D739C58B5BC8AAA89CAD955
          C54848FD73BEA48CC1D1A07495B3363D832F8EAB9A230DD2A5ACCA8F21846F8B
          DB5872F6624C38AB4E8F271980D5CC1FB8E6CBD9578D13128D06AC87C2A6708D
          5392461A76023E5D2F3FDB263B88996E2F19856B1E74B09C1FA2721AAD4C54B4
          ACCC4CA8E5C854293BCE2E72C33B835ADE084F1A3BA6ED1331E49D292600E6BC
          9A0E617C5DF5DB96B5DED0191EAAB8D75B35ADF5A5A95F3B3939C9958ED266AA
          2A5B5244BDD5D1B508CD129610BC031F0854427C94E3A09BD9B05B0BB028E154
          AA8A7566BA7D54DB0CACB5C503B45D575814BEB8C2B574E6947523D96FCC9177
          67B9C59572BFB51928C094320D035E4E6A2959A4F59CF40D49CF742EA9842A80
          AB7167C728A75766AED6618E6BF278BDEAED7DDE712BB9F684975A364D7D71BA
          CA472922230B3CD7C893818AD24970980C6E7F35AB00DD527868919A19DD36F4
          717FBDC88A3B57E2AF123143A5EDB61CCAAE78CBEE9CC75E36C7341D82B364EB
          F88CFD500D056D5B182941CD4E8E71D91203DBD51CF0991B5E0E3108F5391D50
          D80B79EF58FB8ADBA8EE8ABAD09440761EF82E9CB927E82D2866B6393241290A
          97E55907975E075746AA6913F27526BC2D8A28718F2A561725CD4A8E20EC0F87
          21A93F7744D8322ABAE64245974DD759328EBC2C268B3AD0A85D2511EDACD8BA
          82CC570E2B532976EAA2D2768C3D94B5A028D4259244DEA46B27253C27531A6F
          CFC39E1190BF00A04E77B2F297B4EECB4CD9F2B1A767D5AD2B7C8619DBD5F639
          3951B18FCCF14D7D69B0582E5597656D68C71E011D7E90BCA80015455A8684B6
          F2C2853399520214E490C17603B81DD53498EC5D215CAD93B6445D284DD36442
          CADF0C90C2B63A84B075A2AC873DC6275E6D82412597A5895BEFCF8B7E5F58FE
          D6C4E0F284E6D5ECD937193BC57907C7BFDB892DD73B4E8CAE51DE548EB4422C
          BA7B656C590DCD7557B26B252A0945203A6D443E1CD0D0C5348721201292276E
          425C154689638929028DAB2072389CE41AEB47739D87739A51E078AFD04064B2
          18A415A6F2D5C974294A7B42212C99EAE58F7EAAB0A17E4E62A67E7D72C3248D
          B3350D73C30236FC0D63835283487B4232CB781AB149FB93ED141A0BA82E9255
          B5A2FB96C6AF3576EFB56AB4153BDC4E2F634436CADC8A404359D0A091D9CF36
          EBE4EA848D2F705EF8AD1B53B14947F0F54EC4A14EB3CB168F3E4397DD9DCED8
          FA6F6B6B2A16A66CA922CCD25AAE3D62C524D79BB1313876C0D94E773B7D72FB
          AECC33A72746FF0096DFA39075817917C09049E4662F786A330D796E25778EEE
          859E2B7B5F95876F8B42CD852D324D7213BBB73D6513537737D83602065659DF
          72C90526800E0D6D2AD9E62F71D80C124B9C33109141294099BD30402C230F2E
          1FCFEC2647EEE6E952F207074BACF855955C466C3DBCA3DF08A975C2D14B632C
          2F5D68F7EBAA0D7C31B4AA982F657F7898099C6CAEB1821427683C632D436B90
          324AB24208BB87740DAD470BCB5065DAE0535A6D83B32B8FBE5B894C04D085B3
          C7B576BEBFEA98CC85C4CB45055E6BED913A992B8DAC766A93188B0DCC8AC86F
          24D7C116103F0335D94DEBDA56F6DDACAB489EC1ABEB61B7481D6E8ACD16BBC5
          0EBDD55353588D5B57CFEC2576CBDA9589A53165987292BB62307AF89931A934
          7CF6E1A071F8E275ADA638F50A74F77776C18CEBD65B1894D16F7AE755834EA0
          11EBF1155B377F40B526C744EAD9959FBA92F31B67E9232B687A9E392A3CE42C
          D1F355832352254F0EC81B1B8F52308FF101BD7EEB1F3F7CDB527CBDF7D1FBAF
          FDFF007E9ECCBEEE9F427E17E77EF7FF004F3E29FF0097FE77FF00D37F3FF1FF
          00913E71FF001BF8A7CBBFB3E16378DC01C01C01C01C01C01C01C01C01C01C01
          C01C048388215146A752494790780651E41E580D24F28C0E4232CD2478100C28
          C0E738CE058CE33C07C0D2A530D4EA069881A849834294E112588D4A13C2101C
          14E3C872611834000E07D3CB9E3973E011CAEB5CA8CA9251299B57157C4E272E
          9A0069A45236D6FEA7656DA6B9AA7B1B1245AACC506B3C644F6B8F5BF0B4794E
          DD85A78CFC13E28C43C82D05145905964905809289000A28A28012CB28B2C380
          0005803C8002C00C63A438C72C6380F911040CF2D408A2B2A092CD24A3F25832
          71651E328679459BCBC401678C806461C6790B20C73FB31C07C052A50E140429
          8808558C662A08492C21546180C1660D407A3183CC30A06022C8B9F3C6397013
          0A20924A2C828A2CB20A2C24964960080A2CA007A00500B0F2000B0031D380E3
          1CB18E02461020C14953851A409084448D11384C56094834E1C8091A42BA3C34
          E32422E40C83974E3ECE0277974F83FCDE0827CD785E5FCCF860F31E5FAFC5F0
          3C5E9F13C2C0FF005BA39F2E7E9E000A720B34E3CB20901EA3C3F30700B004E3
          FC10F413E31B80E0667860CF20F5673D3FD1C0634BA0B0C749732CF5CA2CC4BA
          6B1C617F8B304A55B62550FACD1C94B9471DE46C8DCE269425291B1EDD21ED4A
          14921160069ADE40858E65879064BE027F1FCD7805799C93E5FC7F0C3E3797EB
          F13C0F17A7AFC3EBFD6E8E7CB9FA780049C819A51E324A19E9F0660838658447
          1383B0109D824C107232F07746302E9E5D5CBD3C07C1C95328C902509C83C494
          FC294C238A2CCCA652001A585427C8C23C94A0251A30F58790B96738FB339E02
          AB80380A2CB720CA5020CA2499425F8382D1E5313E50BF00C01A47869FA3C007
          8269781079071D22C6338E5C04EC2720078D4849282A0D2CB28C3F0583071851
          4230451433718EB196588D16421FB319CE7F2E78002412124298049414C12B04
          848096109212301E8F070560382F05747EAF4F2E5CB8097E451F93F87F944DE4
          3CB792F23E017E4FC9785E0793F2BD1E0795F0BF53A3A7A3A3D1CB97012BA9D7
          D537FEFD4FBB704D1D4EBEA9BFF7EA7DDB81A3A9D7D537FEFD4FBB7034753AFA
          A6FF00DFA9F76E068EA75F54DFFBF53EEDC0D1D4EBEA9BFF007EA7DDB81A39B9
          FAA43ED4ABDDB81A8F53A7A941ED2A3DD781A87373F5487DA957BB70347373F5
          487DA957BB70351EA74F5283DA547BAF034753A7A941ED2A3DD781A87373F548
          7DA957BB70347373F5487DA957BB70347373F5487DA957BB70347373F5487DA9
          57BB70347373F5487DA957BB70347373F5487DA957BB70347373F5487DA957BB
          70347373F5487DA957BB7034753AFAA6FF00DFA9F76E068E6E7EA90FB52AF76E
          068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E
          6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7EA90FB52AF76E068E6E7E
          A90FB52AF76E068EA75F54DFFBF53EEDC0D1CDCFD521F6A55EEDC0D1CDCFD521
          F6A55EEDC0D439B9FAA41ED4A7DDB81AFFD9}
        mmHeight = 16933
        mmLeft = 6615
        mmTop = 3969
        mmWidth = 72231
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label21'
        Caption = 'RESPONSABLE(S)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3895
        mmLeft = 8467
        mmTop = 27781
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label2'
        Caption = 
          '................................................................' +
          '................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 36248
        mmTop = 28310
        mmWidth = 169334
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label14'
        Caption = 'FECHA : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 214313
        mmTop = 28046
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label15'
        Caption = '.......................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 231775
        mmTop = 28046
        mmWidth = 48683
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label18'
        Caption = 
          '................................................................' +
          '................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3725
        mmLeft = 35983
        mmTop = 33317
        mmWidth = 169334
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 19844
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        mmHeight = 19844
        mmLeft = 0
        mmTop = 0
        mmWidth = 282840
        BandType = 4
      end
      object ppLine75: TppLine
        UserName = 'Line16'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19315
        mmLeft = 175684
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppLine76: TppLine
        UserName = 'Line18'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19315
        mmLeft = 70379
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine77: TppLine
        UserName = 'Line22'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19315
        mmLeft = 6615
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine78: TppLine
        UserName = 'Line24'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19579
        mmLeft = 143404
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBCalc10: TppDBCalc
        UserName = 'DBCalc1'
        DataPipeline = ppbdReporteHojaRuta
        DisplayFormat = '####'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 3969
        mmLeft = 265
        mmTop = 2117
        mmWidth = 5556
        BandType = 4
      end
      object ppLine79: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 20108
        mmTop = 1323
        mmWidth = 794
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText101'
        DataField = 'SITASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8467
        mmLeft = 70908
        mmTop = 1588
        mmWidth = 14817
        BandType = 4
      end
      object ppLine80: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19315
        mmLeft = 125413
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText1'
        DataField = 'NOMASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8731
        mmLeft = 20902
        mmTop = 1323
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText35: TppDBText
        UserName = 'DBText5'
        DataField = 'TIPASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 2646
        mmLeft = 86519
        mmTop = 2381
        mmWidth = 5556
        BandType = 4
      end
      object ppLine81: TppLine
        UserName = 'Line17'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19315
        mmLeft = 92340
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppDBText36: TppDBText
        UserName = 'DBText6'
        DataField = 'DIRASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8731
        mmLeft = 92869
        mmTop = 1323
        mmWidth = 32279
        BandType = 4
      end
      object ppDBText37: TppDBText
        UserName = 'DBText7'
        DataField = 'TELASO1'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 3440
        mmLeft = 126207
        mmTop = 1852
        mmWidth = 17198
        BandType = 4
      end
      object ppLine82: TppLine
        UserName = 'Line21'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 85461
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText38: TppDBText
        UserName = 'DBText13'
        DataField = 'EMAIL'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8202
        mmLeft = 143669
        mmTop = 1588
        mmWidth = 31485
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText8'
        DataField = 'DNIASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 2646
        mmLeft = 7673
        mmTop = 1323
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText9'
        DataField = 'NIVCENEDU'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8731
        mmLeft = 55033
        mmTop = 1323
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText12'
        DataField = 'TELASO2'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 3175
        mmLeft = 126207
        mmTop = 5821
        mmWidth = 17198
        BandType = 4
      end
      object ppLine83: TppLine
        UserName = 'Line58'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19579
        mmLeft = 188913
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine84: TppLine
        UserName = 'Line61'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19050
        mmLeft = 257969
        mmTop = 265
        mmWidth = 265
        BandType = 4
      end
      object ppDBText42: TppDBText
        UserName = 'DBText27'
        DataField = 'SF_ASO_MONTOAPORTEVOLU(GAC.ASO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 2646
        mmLeft = 176742
        mmTop = 1852
        mmWidth = 12171
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText28'
        DataField = '(SELECTMAX(TO_DATE(V.FECVAL,'#39'D'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 6085
        mmLeft = 189707
        mmTop = 1588
        mmWidth = 16404
        BandType = 4
      end
      object ppLine85: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19844
        mmLeft = 206111
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine86: TppLine
        UserName = 'Line101'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19579
        mmLeft = 230717
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine87: TppLine
        UserName = 'Line64'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19579
        mmLeft = 248180
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText44: TppDBText
        UserName = 'DBText10'
        DataField = 'OBS_AUTDESAPO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 2646
        mmLeft = 222250
        mmTop = 2117
        mmWidth = 7144
        BandType = 4
      end
      object ppDBText45: TppDBText
        UserName = 'DBText29'
        DataField = 'OBS_FECAUTDESAPO'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 5821
        mmLeft = 232569
        mmTop = 1852
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText46: TppDBText
        UserName = 'DBText30'
        DataField = 'OBS_ASOTIPID'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 2646
        mmLeft = 249238
        mmTop = 2117
        mmWidth = 6879
        BandType = 4
      end
      object ppLine88: TppLine
        UserName = 'Line102'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19579
        mmLeft = 221457
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText31'
        DataField = 'TIPO_CAR'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 6
        Font.Style = [fsBold]
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 7938
        mmLeft = 206640
        mmTop = 1852
        mmWidth = 14817
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo2'
        CharWrap = False
        DataField = 'DIRCOL'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8467
        mmLeft = 92869
        mmTop = 11113
        mmWidth = 32279
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmLeading = 0
      end
      object ppDBText48: TppDBText
        UserName = 'DBText32'
        OnGetText = ppDBText3GetText
        DataField = 'CENEDU'
        DataPipeline = ppbdReporteHojaRuta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporteHojaRuta'
        mmHeight = 8731
        mmLeft = 21167
        mmTop = 10848
        mmWidth = 32808
        BandType = 4
      end
      object ppLine89: TppLine
        UserName = 'Line1'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19579
        mmLeft = 20638
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
      object ppLine90: TppLine
        UserName = 'Line2'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 19579
        mmLeft = 54769
        mmTop = 0
        mmWidth = 265
        BandType = 4
      end
    end
    object ppSummaryBand3: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup6: TppGroup
      BreakName = 'DEP_ASO'
      DataPipeline = ppbdReporteHojaRuta
      OutlineSettings.CreateNode = True
      UserName = 'Group5'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdReporteHojaRuta'
      object ppGroupHeaderBand6: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4233
        mmPrintPosition = 0
        object ppLabel75: TppLabel
          UserName = 'Label25'
          Caption = 'DEPARTAMENTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 8731
          mmTop = 0
          mmWidth = 25400
          BandType = 3
          GroupNo = 0
        end
        object ppDBText49: TppDBText
          UserName = 'DBText3'
          OnGetText = ppDBText3GetText
          AutoSize = True
          DataField = 'DEP_COL'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3725
          mmLeft = 43656
          mmTop = 265
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppLabel76: TppLabel
          UserName = 'Label27'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 38100
          mmTop = 264
          mmWidth = 2117
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand6: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup7: TppGroup
      BreakName = 'PROV_ASO'
      DataPipeline = ppbdReporteHojaRuta
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdReporteHojaRuta'
      object ppGroupHeaderBand7: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 4763
        mmPrintPosition = 0
        object ppLabel77: TppLabel
          UserName = 'Label1'
          Caption = 'PROVINCIA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 8996
          mmTop = 265
          mmWidth = 19050
          BandType = 3
          GroupNo = 1
        end
        object ppDBText50: TppDBText
          UserName = 'DBText14'
          OnGetText = ppDBText3GetText
          AutoSize = True
          DataField = 'PROV_COL'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3725
          mmLeft = 43392
          mmTop = 0
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel78: TppLabel
          UserName = 'Label37'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 37835
          mmTop = 0
          mmWidth = 2117
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand7: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppGroup8: TppGroup
      BreakName = 'DIS_ASO'
      DataPipeline = ppbdReporteHojaRuta
      OutlineSettings.CreateNode = True
      NewPage = True
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppbdReporteHojaRuta'
      object ppGroupHeaderBand8: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 17463
        mmPrintPosition = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          mmHeight = 9525
          mmLeft = 0
          mmTop = 7938
          mmWidth = 282840
          BandType = 3
          GroupNo = 2
        end
        object ppLabel79: TppLabel
          UserName = 'Label26'
          Caption = 'DISTRITO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 3969
          mmLeft = 9260
          mmTop = 0
          mmWidth = 16933
          BandType = 3
          GroupNo = 1
        end
        object ppLabel80: TppLabel
          UserName = 'Label28'
          Caption = ':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 37835
          mmTop = 0
          mmWidth = 1852
          BandType = 3
          GroupNo = 1
        end
        object ppDBText51: TppDBText
          UserName = 'DBText2'
          OnGetText = ppDBText3GetText
          AutoSize = True
          DataField = 'DIS_COL'
          DataPipeline = ppbdReporteHojaRuta
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppbdReporteHojaRuta'
          mmHeight = 3725
          mmLeft = 43656
          mmTop = 0
          mmWidth = 8467
          BandType = 3
          GroupNo = 1
        end
        object ppLabel81: TppLabel
          UserName = 'Label3'
          Caption = 'N'#176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 0
          mmTop = 12171
          mmWidth = 3440
          BandType = 3
          GroupNo = 2
        end
        object ppLabel82: TppLabel
          UserName = 'Label17'
          Caption = 'DNI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          mmHeight = 3175
          mmLeft = 8467
          mmTop = 11906
          mmWidth = 6879
          BandType = 3
          GroupNo = 2
        end
        object ppLabel83: TppLabel
          UserName = 'Label29'
          Caption = 'APELLIDOS Y NOMBRES/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3217
          mmLeft = 20320
          mmTop = 9525
          mmWidth = 34396
          BandType = 3
          GroupNo = 2
        end
        object ppLabel84: TppLabel
          UserName = 'Label9'
          Caption = 'COLEGIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 30427
          mmTop = 13758
          mmWidth = 13758
          BandType = 3
          GroupNo = 2
        end
        object ppLabel85: TppLabel
          UserName = 'Label7'
          Caption = 'NIVEL C.E'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 55298
          mmTop = 10848
          mmWidth = 15346
          BandType = 3
          GroupNo = 2
        end
        object ppLabel86: TppLabel
          UserName = 'Label13'
          Caption = 'SIT.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 75671
          mmTop = 10848
          mmWidth = 6879
          BandType = 3
          GroupNo = 2
        end
        object ppLabel87: TppLabel
          UserName = 'Label6'
          Caption = 'TIPO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 2910
          mmLeft = 85725
          mmTop = 11642
          mmWidth = 6615
          BandType = 3
          GroupNo = 2
        end
        object ppLabel88: TppLabel
          UserName = 'Label35'
          Caption = 'DOMICILIO/COLEGIO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3217
          mmLeft = 102687
          mmTop = 9525
          mmWidth = 28787
          BandType = 3
          GroupNo = 2
        end
        object ppLabel89: TppLabel
          UserName = 'Label34'
          Caption = 'DIRECCION'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 93398
          mmTop = 14288
          mmWidth = 30692
          BandType = 3
          GroupNo = 2
        end
        object ppLabel90: TppLabel
          UserName = 'Label33'
          Caption = 'TELEFONO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 125677
          mmTop = 14288
          mmWidth = 16933
          BandType = 3
          GroupNo = 2
        end
        object ppLabel91: TppLabel
          UserName = 'Label12'
          AutoSize = False
          Caption = 'EMAIL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 146050
          mmTop = 9525
          mmWidth = 16669
          BandType = 3
          GroupNo = 2
        end
        object ppLabel92: TppLabel
          UserName = 'Label8'
          Caption = 'MONTO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 178065
          mmTop = 8202
          mmWidth = 8467
          BandType = 3
          GroupNo = 2
        end
        object ppLabel93: TppLabel
          UserName = 'Label101'
          Caption = 'APORTE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 178065
          mmTop = 11377
          mmWidth = 9525
          BandType = 3
          GroupNo = 2
        end
        object ppLabel94: TppLabel
          UserName = 'Label102'
          Caption = 'VOLUNT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 178065
          mmTop = 14288
          mmWidth = 10054
          BandType = 3
          GroupNo = 2
        end
        object ppLabel95: TppLabel
          UserName = 'Label103'
          Caption = 'ULTIMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 191559
          mmTop = 8996
          mmWidth = 10054
          BandType = 3
          GroupNo = 2
        end
        object ppLabel96: TppLabel
          UserName = 'Label104'
          Caption = 'ACTUALIZ.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 189971
          mmTop = 12700
          mmWidth = 15346
          BandType = 3
          GroupNo = 2
        end
        object ppLabel97: TppLabel
          UserName = 'Label106'
          Caption = 'CART.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 208492
          mmTop = 11113
          mmWidth = 8467
          BandType = 3
          GroupNo = 2
        end
        object ppLabel98: TppLabel
          UserName = 'Label62'
          Caption = 'OBSERVACIONES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 227278
          mmTop = 9790
          mmWidth = 21960
          BandType = 3
          GroupNo = 2
        end
        object ppLabel99: TppLabel
          UserName = 'Label45'
          Caption = 'FIRM'#211
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 221986
          mmTop = 14288
          mmWidth = 8467
          BandType = 3
          GroupNo = 2
        end
        object ppLabel100: TppLabel
          UserName = 'Label47'
          Caption = 'FEC.FIRM'#211
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 232040
          mmTop = 14023
          mmWidth = 15346
          BandType = 3
          GroupNo = 2
        end
        object ppLabel101: TppLabel
          UserName = 'Label63'
          Caption = 'CES'#211
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          mmHeight = 3175
          mmLeft = 249503
          mmTop = 14023
          mmWidth = 6879
          BandType = 3
          GroupNo = 2
        end
        object ppLabel102: TppLabel
          UserName = 'Label105'
          Caption = 'FIRMA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3175
          mmLeft = 266171
          mmTop = 11642
          mmWidth = 8731
          BandType = 3
          GroupNo = 2
        end
        object ppLine91: TppLine
          UserName = 'Line12'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 6615
          mmTop = 8202
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine92: TppLine
          UserName = 'Line27'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 20638
          mmTop = 8202
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine93: TppLine
          UserName = 'Line6'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 175684
          mmTop = 7938
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine94: TppLine
          UserName = 'Line7'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 125413
          mmTop = 12172
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine95: TppLine
          UserName = 'Line29'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9525
          mmLeft = 70379
          mmTop = 7938
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine96: TppLine
          UserName = 'Line25'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9790
          mmLeft = 143404
          mmTop = 7673
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine97: TppLine
          UserName = 'Line20'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 92869
          mmTop = 12435
          mmWidth = 50271
          BandType = 3
          GroupNo = 2
        end
        object ppLine98: TppLine
          UserName = 'Line9'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9260
          mmLeft = 54769
          mmTop = 8202
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine99: TppLine
          UserName = 'Line8'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9790
          mmLeft = 92340
          mmTop = 7673
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine100: TppLine
          UserName = 'Line19'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9525
          mmLeft = 85461
          mmTop = 7938
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine101: TppLine
          UserName = 'Line31'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 8996
          mmLeft = 188648
          mmTop = 8202
          mmWidth = 794
          BandType = 3
          GroupNo = 2
        end
        object ppLine102: TppLine
          UserName = 'Line60'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9525
          mmLeft = 257969
          mmTop = 7938
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine103: TppLine
          UserName = 'Line601'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9525
          mmLeft = 206111
          mmTop = 7938
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine104: TppLine
          UserName = 'Line201'
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 221721
          mmTop = 12435
          mmWidth = 36513
          BandType = 3
          GroupNo = 2
        end
        object ppLine105: TppLine
          UserName = 'Line59'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 230717
          mmTop = 12172
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine106: TppLine
          UserName = 'Line62'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 5292
          mmLeft = 248180
          mmTop = 12172
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
        object ppLine107: TppLine
          UserName = 'Line65'
          Position = lpRight
          Weight = 0.750000000000000000
          mmHeight = 9525
          mmLeft = 221457
          mmTop = 7938
          mmWidth = 265
          BandType = 3
          GroupNo = 2
        end
      end
      object ppGroupFooterBand8: TppGroupFooterBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
end
