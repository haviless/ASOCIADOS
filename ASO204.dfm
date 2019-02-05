object fGeneraLote: TfGeneraLote
  Left = 108
  Top = 70
  Width = 842
  Height = 550
  Caption = 'Actualizaci'#243'n Masiva Reniec'
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 631
    Top = 12
    Width = 35
    Height = 13
    Caption = 'Distrito:'
  end
  object Label12: TLabel
    Left = 80
    Top = 24
    Width = 42
    Height = 13
    Caption = 'Afiliaci'#243'n'
  end
  object Label13: TLabel
    Left = 80
    Top = 40
    Width = 52
    Height = 13
    Caption = 'lblAfiliacion'
  end
  object Label4: TLabel
    Left = 400
    Top = 120
    Width = 74
    Height = 13
    Caption = 'Firmo CADAPS:'
  end
  object Label11: TLabel
    Left = 24
    Top = 8
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
  object Label14: TLabel
    Left = 16
    Top = 19
    Width = 53
    Height = 13
    Caption = 'lblContador'
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 826
    Height = 201
    Align = alTop
    Color = 13165023
    ParentColor = False
    TabOrder = 0
    object TGroupBox
      Left = 0
      Top = 85
      Width = 825
      Height = 114
      Color = 10207162
      ParentColor = False
      TabOrder = 0
      object Label5: TLabel
        Left = 8
        Top = 26
        Width = 75
        Height = 13
        Caption = 'Credito Vigente:'
      end
      object Label6: TLabel
        Left = 222
        Top = 26
        Width = 74
        Height = 13
        Caption = 'Firmo CADAPS:'
      end
      object Label9: TLabel
        Left = 410
        Top = 26
        Width = 45
        Height = 13
        Caption = 'Tipo Aso:'
      end
      object Label16: TLabel
        Left = 8
        Top = 53
        Width = 82
        Height = 13
        Caption = 'Reg. de Pensi'#243'n:'
      end
      object Label17: TLabel
        Left = 8
        Top = 94
        Width = 133
        Height = 13
        Caption = #191'Existe ubigeo de domicilio?'
      end
      object Label22: TLabel
        Left = 235
        Top = 94
        Width = 98
        Height = 13
        Caption = #191'Existe en RENIEC?'
      end
      object Label23: TLabel
        Left = 426
        Top = 94
        Width = 107
        Height = 13
        Caption = #191'Es aportante regular?'
      end
      object GroupBox3: TGroupBox
        Left = 620
        Top = 20
        Width = 81
        Height = 85
        Caption = 'Liquidez'
        TabOrder = 0
        object rbTodos: TRadioButton
          Left = 9
          Top = 15
          Width = 65
          Height = 17
          Caption = 'Todos'
          TabOrder = 0
        end
        object rbMenor50: TRadioButton
          Left = 9
          Top = 39
          Width = 65
          Height = 17
          Caption = '<50%'
          TabOrder = 1
        end
        object rbMayor50: TRadioButton
          Left = 9
          Top = 63
          Width = 65
          Height = 17
          Caption = '>=50%'
          TabOrder = 2
        end
      end
      object bBuscar: TBitBtn
        Left = 722
        Top = 21
        Width = 95
        Height = 35
        Caption = 'Buscar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = bBuscarClick
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
      object dblcRegPension: TwwDBLookupCombo
        Left = 96
        Top = 49
        Width = 41
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 2
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcRegPensionChange
      end
      object dblcTipoAso: TwwDBLookupCombo
        Left = 458
        Top = 22
        Width = 113
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 3
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcTipoAsoChange
      end
      object mdesCreVigente: TMaskEdit
        Left = 142
        Top = 22
        Width = 70
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 4
      end
      object mdesFirmo: TMaskEdit
        Left = 345
        Top = 22
        Width = 54
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 5
      end
      object mdesRegPension: TMaskEdit
        Left = 142
        Top = 49
        Width = 70
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 6
      end
      object GroupBox4: TGroupBox
        Left = 222
        Top = 43
        Width = 351
        Height = 43
        TabOrder = 7
        object Label18: TLabel
          Left = 24
          Top = 17
          Width = 61
          Height = 13
          Caption = 'Fecha Inicio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 199
          Top = 17
          Width = 50
          Height = 13
          Caption = 'Fecha Fin:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object dtpInicio: TDateTimePicker
          Left = 93
          Top = 15
          Width = 92
          Height = 21
          Date = 0.614796365742222400
          Time = 0.614796365742222400
          TabOrder = 0
        end
        object dtpFin: TDateTimePicker
          Left = 253
          Top = 15
          Width = 92
          Height = 21
          Date = 0.614796365742222400
          Time = 0.614796365742222400
          TabOrder = 1
        end
        object chkFechas: TCheckBox
          Left = 6
          Top = 15
          Width = 16
          Height = 17
          TabOrder = 2
          OnClick = chkFechasClick
        end
      end
      object btnImportaExcel: TBitBtn
        Left = 722
        Top = 61
        Width = 95
        Height = 35
        Caption = 'Importar Excel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        OnClick = btnImportaExcelClick
      end
      object dblcFirmo: TwwDBLookupCombo
        Left = 304
        Top = 22
        Width = 38
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 9
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcFirmoChange
      end
      object dblcCreVigente: TwwDBLookupCombo
        Left = 96
        Top = 22
        Width = 41
        Height = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Options = [loColLines, loRowLines]
        ParentFont = False
        TabOrder = 10
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = dblcCreVigenteChange
      end
      object cbUbigeo: TComboBox
        Left = 148
        Top = 90
        Width = 74
        Height = 19
        AutoComplete = False
        Style = csOwnerDrawFixed
        ItemHeight = 13
        ItemIndex = 2
        TabOrder = 11
        Text = 'TODOS'
        Items.Strings = (
          'SI'
          'NO'
          'TODOS')
      end
      object cbReniec: TComboBox
        Left = 338
        Top = 90
        Width = 81
        Height = 19
        Style = csOwnerDrawFixed
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 12
        Text = 'SI  - CADUCO'
        Items.Strings = (
          'SI  - CADUCO'
          'SI  - NO CADUCO'
          'NO  RENIEC'
          'TODOS')
      end
      object cbAportante: TComboBox
        Left = 538
        Top = 90
        Width = 77
        Height = 19
        Style = csOwnerDrawFixed
        ItemHeight = 13
        ItemIndex = 2
        TabOrder = 13
        Text = 'TODOS'
        Items.Strings = (
          'SI'
          'NO'
          'TODOS')
      end
    end
    object GroupBox2: TGroupBox
      Left = 0
      Top = 7
      Width = 825
      Height = 85
      Caption = 'Tipo de Ubicaci'#243'n'
      Color = 10207162
      ParentColor = False
      TabOrder = 1
      object Label1: TLabel
        Left = 142
        Top = 8
        Width = 70
        Height = 13
        Caption = 'Departamento:'
      end
      object Label2: TLabel
        Left = 342
        Top = 8
        Width = 47
        Height = 13
        Caption = 'Provincia:'
      end
      object Label3: TLabel
        Left = 567
        Top = 8
        Width = 35
        Height = 13
        Caption = 'Distrito:'
      end
      object Label8: TLabel
        Left = 90
        Top = 52
        Width = 38
        Height = 13
        Caption = 'Colegio:'
      end
      object imgFirma: TImage
        Left = 10
        Top = 40
        Width = 137
        Height = 29
        Cursor = crHandPoint
        ParentShowHint = False
        ShowHint = True
        Stretch = True
        Visible = False
      end
      object rbDomicilio: TRadioButton
        Left = 8
        Top = 20
        Width = 73
        Height = 17
        Caption = 'Domicilio'
        TabOrder = 0
        OnClick = rbDomicilioClick
      end
      object rbColegio: TRadioButton
        Left = 80
        Top = 20
        Width = 65
        Height = 17
        Caption = 'Colegio'
        TabOrder = 1
        OnClick = rbColegioClick
      end
      object dblcdcoddep: TwwDBLookupComboDlg
        Left = 142
        Top = 24
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
        Top = 24
        Width = 150
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 3
      end
      object dblcdcodpro: TwwDBLookupComboDlg
        Left = 342
        Top = 24
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
        Top = 24
        Width = 167
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 5
      end
      object dblcdcoddis: TwwDBLookupComboDlg
        Left = 567
        Top = 24
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
        Top = 24
        Width = 176
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 7
      end
      object dblcdColegio: TwwDBLookupComboDlg
        Left = 139
        Top = 48
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
        Left = 716
        Top = 48
        Width = 92
        Height = 21
        CharCase = ecUpperCase
        Color = 15132390
        Enabled = False
        TabOrder = 9
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 456
    Width = 826
    Height = 56
    Align = alBottom
    BevelOuter = bvNone
    Color = 10207162
    TabOrder = 1
    DesignSize = (
      826
      56)
    object Label10: TLabel
      Left = 24
      Top = 8
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
      Left = 16
      Top = 19
      Width = 53
      Height = 13
      Caption = 'lblContador'
    end
    object bSalir: TBitBtn
      Left = 738
      Top = 20
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
    object bReporte: TBitBtn
      Left = 115
      Top = 20
      Width = 89
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Reporte'
      TabOrder = 1
      OnClick = bReporteClick
      Glyph.Data = {
        E2060000424DE206000000000000360400002800000023000000130000000100
        080000000000AC020000120B0000120B00000001000000010000000E6000FF66
        000011BCE100DDE9EF00B96D1A00DAA6A900BFC28E002585B900F9AA7E007B81
        F5005FCFC700235A8F003129FA00E09351007685AD00B6BDEE0000CCFF00FEA3
        0400577EAD009AA88900DEFFFF0000407F00FAE2D500E18A38007EDDE900B5BC
        D0003AE8FF00EECA8D002B71A100F8BF5A0099FFFF0036C1C900A49FEA000D9D
        C800959F71005755F700FEA33D00F36F2C0027E1FC00FFE2B300A0CCAC004D92
        B60066FFFF00FCECE500E4BE95002A427E00587AA500FFA3610033CCCC009599
        B900FADF8E0001E8FE007ACEC1005267FF00FFAA2F00C8884E00A1AA8600FF89
        00002D92BB0013A2D100FDD2B900CBDAE700002A6C00E8F4F8008789E100A370
        A100FFDFCF00AFE6B200ADB6CF0055BED500FD942900D9BD9A002AD4EE001D43
        82001EE7FF0042619000FFCDAE004CB3B800FFD03C0092E8BC006D868500CEC7
        DB00FE850C00F6CF9E00FDAC2100F9C970008FD9E400FFEEDB00FFE7BB003AFF
        FF00A8733400FFCC99002F90C300B4DFE9008CFFFF00EBEAEF00F9F2A500989A
        F7006CCEE100859EBC004B78A4006C78F20031EDF300E489440029BFDF00447A
        AC00B7886800F490520024C6DF00CC8B34003BA8B6003A599100ECB7430018FE
        FF00F8B69200FFFFFF002934FF00BEB2E80053CBC5006881AE0024D1FE0068A6
        A600DFECF20059A8AD00EBA673008B87EE00C5C6D90014ACD500FF81350098E0
        E90080CEDE003A4C8600A2A3BF00F2F4FA00F9C6AB00BD94A100FAE4DE00AAD0
        A400FDBE92004CC8DB0050E8F500FF711900BF764C00F9B831008491B6008488
        FE00C1D2B500AEFFFF000B47890000287200D7D8EE005CD7E30000196800FC94
        1A00A8C6DB00FDF1AB00ACA8880025DADD0018BDE000FECC5600FAD4C800FFF0
        C600200EFF00F5D084002D8FBE001D55910047AFB900AFFFB90038769C00FFCC
        6600F68F4B007376FD007CFFFF00F9C5A80041D8CE00FEB23C00ED822E0087F8
        EA0033CFEA00FDBC4600FDEE8D000AE0FF00B5A17500FFB608002B4F8900FFE7
        D70052FFFF001EFFFF00F1F9FF00F6FFFF00B3865D00FF993300DAEBFF003689
        B800FFF8DE00627FAB00FFA77200FEB17B00E0924A0033FFFF006E8DB300F9BF
        9D00D2CCE900E4EEF200E1DCF4006ED8CB0034578F00F8A54D0057B2BF00FFEF
        CD00FFD6A1001790C400A4A47B00585BFD0096C7EB00BDE6F40039D1E6004CFA
        FF00FBD0BA00A1A3F10043A8B200A0ABC600FDB7420000F4FF00FF801800FE8C
        1200FFE5B60093A7C400FEAB6C00BFC3EC008B89F200D0C7A60038A4C40016E2
        FF00599CBA00FCC23500FCE3DE002FE5FF00002E7400F8F6F8001CB6E100FBDA
        C60035568E00FCA41000A9CBAD00A27741004C83A2008A84FF00BECBA8001DBD
        E500FFD6670047C8CA00FFD88B0077D2E000E6EEFF00FEAA2900737373EF6394
        150B2EC8908444197E7E51965F5F85EFEF737373737373737373737373FF7373
        736349151C29293A3AC1C1C16969642EC3C3770E0E9090318484443D73737373
        73FF7373CBCE98EA5D188CED48686C6C6CF9F9F0F07F3B3B21D3D3D3071CA52D
        773D737373FF737303B89581142A8C2806F443A7A74F3434CD0A0A76FB1F1F30
        48B2E894002E3F7373FF73737A6FEE5693EDD0B02F4C054187531B2C2C47E7E7
        E792F80689B1AC8B00497A7373FF73737A6FEE82931A7B67A1BDF7A20CDBC227
        AD4C4C4C4CC94CC48D9CBAD83E6FCB7373FF73737A6FEE8293ED4D0D58FE0FE5
        6574DB9B5BC9C9C972722B2BAAB6D9683E4BCB7373FF73737A6FEEFD934A4D0D
        E273DB237DE5CC2B57575757B9B973576B9CD9683E4BCB7373FF73737A6FEEFD
        1E4AA60DE2FEDB7DD5AB96E2C9ADADADADC916B96B38C7683E4BCB7373FF7373
        7A6FEE621EE96EC6E2BC0F20E6E6CAD1F1A0A0A0DAAD88B9AA38C7683E4BCB73
        73FF73737A6FEE621EB56E0D58BC6123090F5F574216888842F12B426B38C79E
        3E4BCB7373FF73737A6FEE625EB56EC658C091D5743503270872C9C97272F1B9
        6B13BB023E4BCB7373FF73737A6FEE62ACB5DC172773B9A15140752B57ECECEC
        163C2B576B1371023E4BCB7373FF73737AF2EE185E103BBE7C0880E03670CF2F
        E4E4C5C5C58AF13C80D471023E4BCB7373FF73737A4900451E2A269D30F501B3
        4EB7B75454363636B32480803779DF023E4BCB7373FF7373857798153A457833
        300452B46055A9FAFA9F9F329B360122AE6659B23EB8037373FF737373039083
        0BA8A8506D3911EB55A3A3FC3232329BD2B05A683366973A98F2037373FF7373
        7373733F3D196A2546AF8FF3F354AFB3B31D1DDE468EF65C29291C94B8E38573
        73FF7373737373737373C2C216A0ADADC5CFBF99E1E152BF53D7D6DD31C86412
        9A73737373FF}
    end
    object bLote: TBitBtn
      Left = 538
      Top = 20
      Width = 82
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Ver Lotes'
      TabOrder = 2
      OnClick = bLoteClick
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
    object bProcesar: TBitBtn
      Left = 627
      Top = 20
      Width = 89
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Procesar'
      TabOrder = 3
      OnClick = bProcesarClick
      Glyph.Data = {
        16080000424D160800000000000036000000280000001F000000150000000100
        180000000000E0070000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F2F7E4E4E5FBFBFBFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFEF3F7E1E1E0E5E7
        E6FFFEFEFFFFFFFFFFFFFFFFFFE9F2EEA2C8B7C8D4D2FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFEFFFEFFFEFFFFFFFFF4FDD6D6D789B6A78FB4AADAE2
        DFFFFFFFFFFFFFFBF5FDB2CDB949B25B5FA873E6E3E7FCF7FBFFFCFEFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFFFEFEFEFEFFFEFFEBEBEF89CFB634D69C7BEBC9F0FFFFFFFF
        FFF2EBF5BAC6C166A67246B85C70DC8577A48A7A8284828A89918F93A9A1A7D3
        C7CEF9F2F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFCFFCFEAE552E2B112F59D76FFCDF9FFFFEDF1ED94AF
        965A94624CA85871CF7FAAEFBCB6F2CEA6EFC58FDEAE84CD9F7ABA9671A2825F
        79686A6A6DB8ACB5FFFBFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FDFEFFFEFFFFFFFEFFC1F0E648F0B238FEAC67EEBCEEF5F5FFFFFFCEEDDB81C5
        899ED8A0CBF1D1E0F7E6DCF2E4D4F3E0CFFFE3C0FFDAB8FCD1B0FAC9ACFBC5A4
        F2BD74BF883B614590868EFCF6F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FDFFFDFFFEFFCAF8EB4BF9B967FFBB4EE5A3B4E0D5FFFDFFFEFFFFFCFFFDFFFF
        FFFFFFFFEFF9F6E4F8EBEBFDF0E6FBEED4EBE5E0FAF1E2FBF0E0F7E9CBF0DAB0
        ECC5B3FCC67CDC8F346B44B0A8B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE8FCF859F8BC71FCBE7BF4B550C792E7E6E9FFFFFFFCFDFDFFFFFFFFFF
        FFFFFFFFFFFFFFF5FEFCECFFF8C3FBE86B9C8FC7C5C7FFFFFFF1FDFAE9FDF2E1
        F6E9BFEED1A2F5B73FAD5C7B9284FFF1FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF9EF9DB4EF4B0B0FED25CE29C56A27EF4E5EEFFFFFFFDFEFEEEEEF0E7E5
        E8FFFFFFFFFFFFFFFEFFFFFFFFE8FFFBA5D4CBC0C5C5FFFBFCFBFFFED7F8ECD4
        F9E9DBF9E8AEF3C443BD6584AD95FFF4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F0FEFA6EF0BE78F0B9C6FCDA79ECA6388759AA9FA9FFFDFFFFFFFFCCECDA6A7C
        72BCB1BAFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFDFDFDFCFDFFFFFFDCF7ECA3
        EBC6E1FAEBA4E8B73AAF56B4D0BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E7FCF77CF1C7A1F4CFD1F6DFACF7C674D7984C75608E808CD3C7CFB9E1C44DBA
        69476C5B8C848DE8DFE4FFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFFFFFD0F3DF86
        DEAAE2F7E76DC77862BB73F6F9F8FFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
        FBFEFEB5FBE8B0FCE1E3FBF0D0F5E4BAF8D49BEFBB78B3916B8879628A756ADB
        8998F8BB669D84586A649C9297EAD8DFFFFCFFFFFFFFFDFEFFFEFFFEA9E4BDA5
        E3B5A5D8A350B459D0EBD5FFFFFFFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF4FFFDCBFDF2D9FDF2F0FFF6E3FBEFD1FAE0CAFFDDBDFED4A8EFBEA1E7
        BFA5F2C3B3FFD89CE0C46B9E86526F667C8B87DEDFDEFFFFFFDCF1E68DD6A19B
        D79759B85CBBE4C2FFFFFFFCFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FEFFFFFFFFFFFCFEFFE8FEF8E9FEF8EDFEF9EDFDFAE9F9F2E5FAEEE6FBEED9F9
        E7C3F5D8B5F5D29DFFD47DFFD65BE7BE85D6BDF3F2F5F6F7F7A0D8AD88CE8879
        C67BC1E6C9FFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFEFEFEFFFEFFFFFFFFFBFFFFF7FDFEF3FEFDEDFCFAEBFCF9F2FEF8F5FC
        F6D1FAEA75F9CC6CF9CBACFDE3ECFFFEFFFFFFE8EDE9ADD8B39CD69DB6DEB7E9
        F4EAFFFFFFFEFDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFEFFF2FDFAB5F9
        E588FCDAA6FCE5EEFCFCFFFFFFFFFFFFEBEFEFC3D9CECAEBD0EDF9EEFFFFFFFF
        FFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFEFFE4FDFAC0FB
        EFE7FFF9FFFFFFFFFEFFFFFFFFFEFFFEF7FDFAF9FDFCFFFFFFFFFFFFFFFFFFFD
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFF6FEFEFEFE
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object GroupBox5: TGroupBox
      Left = 328
      Top = 0
      Width = 137
      Height = 57
      Anchors = [akRight, akBottom]
      TabOrder = 4
      object Label15: TLabel
        Left = 11
        Top = 8
        Width = 38
        Height = 13
        Caption = 'Cuota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -4
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCuota: TLabel
        Left = 92
        Top = 9
        Width = 53
        Height = 13
        Caption = 'lblContador'
      end
      object Label20: TLabel
        Left = 11
        Top = 24
        Width = 67
        Height = 13
        Caption = 'Realizados:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -4
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 11
        Top = 40
        Width = 38
        Height = 13
        Caption = 'Resta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -4
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblRealizado: TLabel
        Left = 92
        Top = 25
        Width = 53
        Height = 13
        Caption = 'lblContador'
      end
      object lblResta: TLabel
        Left = 92
        Top = 41
        Width = 53
        Height = 13
        Caption = 'lblContador'
      end
    end
    object bExportar: TBitBtn
      Left = 208
      Top = 20
      Width = 113
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Exportar Reporte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 201
    Width = 826
    Height = 255
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel3'
    TabOrder = 2
    object dtgConsultaDatos: TwwDBGrid
      Left = 0
      Top = 0
      Width = 826
      Height = 255
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
    object grbProceso: TGroupBox
      Left = 283
      Top = 83
      Width = 229
      Height = 47
      Caption = 'Procesando Informaci'#243'n'
      Color = 13165023
      ParentColor = False
      TabOrder = 1
      Visible = False
      object lblPor: TLabel
        Left = 13
        Top = 31
        Width = 210
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = '0   De  0  Registros'
      end
      object prbAvance: TProgressBar
        Left = 4
        Top = 14
        Width = 220
        Height = 16
        TabOrder = 0
      end
    end
    object dtgExcel: TwwDBGrid
      Left = 720
      Top = 184
      Width = 105
      Height = 73
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
  end
  object ppDesigner: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = pprReporte
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 16
    Top = 416
  end
  object ppbdReporte: TppBDEPipeline
    UserName = 'BDEPRC'
    Left = 48
    Top = 416
  end
  object pprReporte: TppReport
    AutoStop = False
    DataPipeline = ppbdReporte
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppbdReporte
    Template.FileName = 'C:\Users\rsanchezc.DERRAMA\Desktop\rptCaducos.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 80
    Top = 416
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppbdReporte'
    object ppHeaderBand2: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 47096
      mmPrintPosition = 0
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 169598
        mmTop = 2910
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
        mmLeft = 169598
        mmTop = 10848
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
        mmLeft = 149490
        mmTop = 10848
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
        mmLeft = 169598
        mmTop = 6879
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
        mmHeight = 4233
        mmLeft = 149490
        mmTop = 6879
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
        mmLeft = 149490
        mmTop = 2910
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
      object ppLine32: TppLine
        UserName = 'Line23'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8467
        mmLeft = 529
        mmTop = 38100
        mmWidth = 265
        BandType = 0
      end
      object ppLine33: TppLine
        UserName = 'Line28'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 55827
        mmTop = 38894
        mmWidth = 1058
        BandType = 0
      end
      object ppLine34: TppLine
        UserName = 'Line5'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 26988
        mmTop = 38895
        mmWidth = 529
        BandType = 0
      end
      object ppLine37: TppLine
        UserName = 'Line17'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 125148
        mmTop = 38894
        mmWidth = 794
        BandType = 0
      end
      object ppLine38: TppLine
        UserName = 'Line21'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 109538
        mmTop = 38894
        mmWidth = 1058
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label3'
        Caption = 'DEPART.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 3440
        mmTop = 39952
        mmWidth = 11906
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label4'
        Caption = 'PROV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 35983
        mmTop = 40481
        mmWidth = 8996
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label6'
        Caption = 'DIST'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 66940
        mmTop = 40746
        mmWidth = 6879
        BandType = 0
      end
      object ppLine40: TppLine
        UserName = 'Line16'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 153459
        mmTop = 38629
        mmWidth = 1323
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label8'
        Caption = 'Firmo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 97102
        mmTop = 41540
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label9'
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 114565
        mmTop = 40481
        mmWidth = 6773
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label10'
        Caption = 'Credito'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 133615
        mmTop = 39423
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label11'
        Caption = 'Estado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 155575
        mmTop = 39158
        mmWidth = 10160
        BandType = 0
      end
      object ppLine42: TppLine
        UserName = 'Line24'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7938
        mmLeft = 184415
        mmTop = 38629
        mmWidth = 529
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label5'
        Caption = 'CANT.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 173302
        mmTop = 40746
        mmWidth = 8467
        BandType = 0
      end
      object ppLine56: TppLine
        UserName = 'Line56'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 7673
        mmLeft = 170127
        mmTop = 38894
        mmWidth = 1323
        BandType = 0
      end
      object pplTitulo: TppLabel
        UserName = 'Label14'
        Caption = 'REPORTE DE DNI CADUCOS AGRUPADOS POR UBICACI'#211'N DEL DOMICILIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 11
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 1852
        mmTop = 25135
        mmWidth = 147902
        BandType = 0
      end
      object ppLine41: TppLine
        UserName = 'Line20'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 8202
        mmLeft = 91811
        mmTop = 38894
        mmWidth = 1323
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 38365
        mmWidth = 183621
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label101'
        Caption = 'Vigente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 134144
        mmTop = 42598
        mmWidth = 11853
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 156634
        mmTop = 42863
        mmWidth = 5080
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 12965
      mmPrintPosition = 0
      object ppLine44: TppLine
        UserName = 'Line4'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12700
        mmLeft = 153988
        mmTop = 0
        mmWidth = 794
        BandType = 4
      end
      object ppLine46: TppLine
        UserName = 'Line7'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 265
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine47: TppLine
        UserName = 'Line8'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 56356
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine48: TppLine
        UserName = 'Line9'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12171
        mmLeft = 25665
        mmTop = 265
        mmWidth = 1588
        BandType = 4
      end
      object ppLine49: TppLine
        UserName = 'Line10'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 125413
        mmTop = 794
        mmWidth = 1058
        BandType = 4
      end
      object ppLine51: TppLine
        UserName = 'Line13'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12435
        mmLeft = 183886
        mmTop = 265
        mmWidth = 794
        BandType = 4
      end
      object ppLine52: TppLine
        UserName = 'Line14'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 11906
        mmLeft = 171186
        mmTop = 529
        mmWidth = 529
        BandType = 4
      end
      object ppLine54: TppLine
        UserName = 'Line25'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12435
        mmLeft = 92604
        mmTop = 0
        mmWidth = 529
        BandType = 4
      end
      object ppLine55: TppLine
        UserName = 'Line26'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 12435
        mmLeft = 109273
        mmTop = 0
        mmWidth = 1323
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1323
        mmTop = 0
        mmWidth = 183092
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'DEP'
        DataPipeline = ppbdReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporte'
        mmHeight = 9525
        mmLeft = 2117
        mmTop = 1323
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'PROV'
        DataPipeline = ppbdReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporte'
        mmHeight = 9525
        mmLeft = 28840
        mmTop = 1323
        mmWidth = 27252
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'DIST'
        DataPipeline = ppbdReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        WordWrap = True
        DataPipelineName = 'ppbdReporte'
        mmHeight = 9525
        mmLeft = 58208
        mmTop = 1323
        mmWidth = 33602
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'AUTDESAPO'
        DataPipeline = ppbdReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdReporte'
        mmHeight = 3969
        mmLeft = 96044
        mmTop = 1588
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'ASOTIPID'
        DataPipeline = ppbdReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppbdReporte'
        mmHeight = 3969
        mmLeft = 111390
        mmTop = 1852
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        DataField = 'CREVIG'
        DataPipeline = ppbdReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporte'
        mmHeight = 3969
        mmLeft = 127000
        mmTop = 1852
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'ESTDNI'
        DataPipeline = ppbdReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppbdReporte'
        mmHeight = 3969
        mmLeft = 155311
        mmTop = 2381
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'COUNT(*)'
        DataPipeline = ppbdReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporte'
        mmHeight = 3969
        mmLeft = 171980
        mmTop = 2381
        mmWidth = 11113
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line6'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 529
        mmTop = 12700
        mmWidth = 184415
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 5556
      mmPrintPosition = 0
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc2'
        DataField = 'COUNT(*)'
        DataPipeline = ppbdReporte
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppbdReporte'
        mmHeight = 3175
        mmLeft = 172244
        mmTop = 1058
        mmWidth = 11906
        BandType = 7
      end
      object ppLine5: TppLine
        UserName = 'Line11'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 5292
        mmLeft = 171450
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppLine6: TppLine
        UserName = 'Line12'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 529
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppLine7: TppLine
        UserName = 'Line15'
        Position = lpRight
        Weight = 0.750000000000000000
        mmHeight = 4498
        mmLeft = 184680
        mmTop = 0
        mmWidth = 265
        BandType = 7
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Position = lpBottom
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 794
        mmTop = 4763
        mmWidth = 183886
        BandType = 7
      end
      object ppLabel3: TppLabel
        UserName = 'Label1'
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3217
        mmLeft = 5556
        mmTop = 1058
        mmWidth = 8467
        BandType = 7
      end
    end
    object ppPageStyle1: TppPageStyle
      EndPage = 0
      SinglePage = 0
      StartPage = 0
      mmBottomOffset = 0
      mmHeight = 8996
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
end
