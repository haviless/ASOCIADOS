object FMantAsociado: TFMantAsociado
  Left = 317
  Top = 116
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Nuevo Asociado'
  ClientHeight = 601
  ClientWidth = 802
  Color = clBtnFace
  Constraints.MaxWidth = 818
  Constraints.MinHeight = 558
  Constraints.MinWidth = 802
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object bFirma: TBevel
    Left = 6
    Top = 121
    Width = 145
    Height = 35
    Cursor = crHandPoint
  end
  object ImaFirma: TImage
    Left = 10
    Top = 123
    Width = 137
    Height = 29
    Cursor = crHandPoint
    ParentShowHint = False
    ShowHint = True
    Stretch = True
  end
  object bFoto: TBevel
    Left = 6
    Top = 2
    Width = 146
    Height = 119
  end
  object ImagAso: TImage
    Left = 11
    Top = 20
    Width = 137
    Height = 114
    Cursor = crHandPoint
    ParentShowHint = False
    ShowHint = True
    Stretch = True
  end
  object Shape1: TShape
    Left = 156
    Top = 3
    Width = 637
    Height = 24
  end
  object lblAsoApeNom: TLabel
    Left = 159
    Top = 5
    Width = 485
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = 'lblAsoApeNom'
    Color = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Shape7: TShape
    Left = 647
    Top = 6
    Width = 12
    Height = 12
    Brush.Color = 9961367
  end
  object Shape8: TShape
    Left = 713
    Top = 6
    Width = 12
    Height = 12
    Brush.Color = clYellow
  end
  object Label36: TLabel
    Left = 661
    Top = 6
    Width = 50
    Height = 13
    Caption = 'Validado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label37: TLabel
    Left = 727
    Top = 5
    Width = 64
    Height = 13
    Caption = 'Por Vencer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lblFallecido: TfcLabel
    Left = 20
    Top = 50
    Width = 122
    Height = 27
    Caption = 'FALLECIDO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaTop
    Transparent = True
    Visible = False
  end
  object bitImpReniec: TBitBtn
    Left = 9
    Top = 154
    Width = 142
    Height = 22
    Caption = 'Informaci'#243'n RENIEC'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = bitImpReniecClick
  end
  object gbIdentidadAso: TGroupBox
    Left = 154
    Top = 30
    Width = 643
    Height = 249
    Caption = 'Datos de Identidad del Asociado:'
    Color = 12114134
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Label6: TLabel
      Left = 9
      Top = 21
      Width = 128
      Height = 17
      Caption = 'Apellido Paterno (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 170
      Top = 21
      Width = 132
      Height = 17
      Caption = 'Apellido Materno (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label25: TLabel
      Left = 506
      Top = 0
      Width = 81
      Height = 17
      Caption = 'Doc. Identidad'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 238
      Top = 66
      Width = 95
      Height = 17
      Caption = 'F. De Nacimiento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 7
      Top = 173
      Width = 27
      Height = 17
      Caption = 'Sexo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 9
      Top = 114
      Width = 57
      Height = 17
      Caption = 'Direcci'#243'n:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 219
      Top = 175
      Width = 54
      Height = 17
      Caption = 'Telefonos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 6
      Top = 135
      Width = 77
      Height = 17
      Caption = 'Departamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 148
      Top = 135
      Width = 50
      Height = 17
      Caption = 'Provincia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 356
      Top = 135
      Width = 47
      Height = 17
      Caption = 'Distrito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label28: TLabel
      Left = 133
      Top = 173
      Width = 74
      Height = 17
      Caption = 'E.Civil (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label24: TLabel
      Left = 9
      Top = 66
      Width = 86
      Height = 17
      Caption = 'Nombres (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 333
      Top = 21
      Width = 139
      Height = 17
      Caption = 'Apellido de Casada (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dbeLibDni: TwwDBEdit
      Left = 504
      Top = 39
      Width = 128
      Height = 24
      DataField = 'ASODNI'
      DataSource = DM1.dsAso
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 8
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeLibDniExit
    end
    object dbeTel1: TwwDBEdit
      Left = 221
      Top = 190
      Width = 100
      Height = 21
      TabStop = False
      Color = 15269887
      DataField = 'ASOTELF1'
      DataSource = DM1.dsAso
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTel2: TwwDBEdit
      Left = 411
      Top = 190
      Width = 100
      Height = 21
      TabStop = False
      Color = 15269887
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
    end
    object Panel14: TPanel
      Left = 50
      Top = 188
      Width = 79
      Height = 24
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 5
      object dbeSexo: TwwDBEdit
        Left = 2
        Top = 1
        Width = 75
        Height = 21
        CharCase = ecUpperCase
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel18: TPanel
      Left = 330
      Top = 84
      Width = 108
      Height = 23
      Enabled = False
      TabOrder = 3
      object edtanos: TwwDBEdit
        Left = 2
        Top = 1
        Width = 104
        Height = 21
        CharCase = ecUpperCase
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object btnActualizaReniec: TfcShapeBtn
      Left = 416
      Top = 216
      Width = 217
      Height = 25
      Cursor = crHandPoint
      Caption = ' Captura Datos de RENIEC '
      Color = clRed
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      NumGlyphs = 0
      ParentClipping = True
      ParentFont = False
      RoundRectBias = 25
      ShadeColors.Btn3DLight = clGray
      ShadeColors.BtnShadow = clGray
      ShadeStyle = fbsHighlight
      SmoothFont = True
      TabOrder = 8
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnActualizaReniecClick
    end
    object pnlRENIEC1: TPanel
      Left = 5
      Top = 39
      Width = 487
      Height = 25
      Color = clRed
      Enabled = False
      TabOrder = 0
      object EdtApePatDni: TwwDBEdit
        Left = 2
        Top = 2
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ASOAPEPATDNI'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object EdtApeMatDni: TwwDBEdit
        Left = 163
        Top = 2
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ASOAPEMATDNI'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object EdtApeCasDni: TwwDBEdit
        Left = 324
        Top = 2
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ASOAPECASDNI'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object pnlRENIEC2: TPanel
      Left = 237
      Top = 84
      Width = 91
      Height = 25
      Color = clRed
      Enabled = False
      TabOrder = 2
      object dbdtFecNac: TwwDBDateTimePicker
        Left = 2
        Top = 2
        Width = 87
        Height = 29
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'ASOFECNAC'
        DataSource = DM1.dsAso
        Date = 23146.000000000000000000
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 0
        DisplayFormat = 'dd/mm/yyyy'
        OnChange = dbdtFecNacChange
        OnExit = dbdtFecNacExit
      end
    end
    object pnlRENIEC3: TPanel
      Left = 5
      Top = 188
      Width = 44
      Height = 25
      Color = clRed
      Enabled = False
      TabOrder = 4
      object DbLlSexo: TwwDBLookupCombo
        Left = 2
        Top = 2
        Width = 40
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ID'#9'2'#9'Codigo'#9'F'
          'DESCRIP'#9'20'#9'Descripci'#243'n'#9'F')
        DataField = 'ASOSEXO'
        DataSource = DM1.dsAso
        LookupTable = DM1.cdsSexo
        LookupField = 'ID'
        Options = [loColLines, loRowLines, loTitles]
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = DbLlSexoChange
      end
    end
    object btnactdir: TBitBtn
      Left = 594
      Top = 113
      Width = 36
      Height = 19
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = btnactdirClick
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
    object Panel19: TPanel
      Left = 72
      Top = 111
      Width = 516
      Height = 23
      Caption = 'Panel19'
      Enabled = False
      TabOrder = 11
      object dbeDirec: TwwDBEdit
        Left = 1
        Top = 1
        Width = 514
        Height = 21
        CharCase = ecUpperCase
        Color = 15269887
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel1: TPanel
      Left = 6
      Top = 151
      Width = 138
      Height = 23
      Caption = 'Panel1'
      Enabled = False
      TabOrder = 12
      object lkcDpto: TwwDBLookupCombo
        Left = 1
        Top = 1
        Width = 40
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'DPTOID'#9'2'#9'DPTOID'#9'F'
          'DPTODES'#9'30'#9'DPTODES'#9'F')
        Options = [loColLines, loRowLines, loTitles]
        Enabled = False
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = lkcDptoChange
      end
      object edtDpto: TEdit
        Left = 41
        Top = 1
        Width = 95
        Height = 21
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnChange = edtDptoChange
      end
    end
    object Panel2: TPanel
      Left = 146
      Top = 151
      Width = 207
      Height = 23
      Enabled = False
      TabOrder = 13
      object lkcProv: TwwDBLookupCombo
        Left = 1
        Top = 1
        Width = 49
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'PROVID'#9'5'#9'PROVID'#9'F'
          'PROVDES'#9'30'#9'PROVDES'#9'F')
        Options = [loColLines, loRowLines, loTitles]
        Enabled = False
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = lkcProvChange
      end
      object edtProv: TEdit
        Left = 50
        Top = 1
        Width = 155
        Height = 21
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        OnChange = edtProvChange
      end
    end
    object Panel3: TPanel
      Left = 355
      Top = 151
      Width = 209
      Height = 23
      Enabled = False
      TabOrder = 14
      object lkcDist: TwwDBLookupCombo
        Left = 2
        Top = 1
        Width = 58
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ZIPID'#9'6'#9'ZIPID'#9'F'
          'ZIPDES'#9'35'#9'ZIPDES'#9'F')
        Options = [loColLines, loRowLines, loTitles]
        Enabled = False
        ParentFont = False
        TabOrder = 0
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
        OnChange = lkcDistChange
      end
      object edtDist: TEdit
        Left = 59
        Top = 1
        Width = 149
        Height = 21
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object dbeProp1: TwwDBEdit
      Left = 321
      Top = 190
      Width = 88
      Height = 21
      TabStop = False
      Color = 15269887
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeProp2: TwwDBEdit
      Left = 510
      Top = 190
      Width = 88
      Height = 21
      TabStop = False
      Color = 15269887
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object btnacttel: TBitBtn
      Left = 600
      Top = 189
      Width = 36
      Height = 21
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = btnacttelClick
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
    object PnlRENIEC1B: TPanel
      Left = 5
      Top = 84
      Width = 223
      Height = 25
      Color = clRed
      Enabled = False
      TabOrder = 17
      object EdtAsoNomDni: TwwDBEdit
        Left = 3
        Top = 2
        Width = 217
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ASONOMDNI'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object bgHojaCargoExp: TGroupBox
      Left = 440
      Top = 66
      Width = 161
      Height = 46
      Caption = 'Hoja de Cargo de Expediente'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      object lblHojaCargoExpFecha: TLabel
        Left = 9
        Top = 16
        Width = 30
        Height = 15
        Caption = 'fecha'
      end
      object lblHojaCargoExpUsuario: TLabel
        Left = 9
        Top = 29
        Width = 40
        Height = 15
        Caption = 'Usuario'
      end
    end
    object dblTipDoc: TwwDBLookupCombo
      Left = 504
      Top = 16
      Width = 41
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'REGPENID'#9'2'#9'Codigo'#9'F'
        'REGPENDES'#9'20'#9'Descripci'#243'n'#9'F')
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 19
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblTipDocChange
    end
    object edtTipDoc: TEdit
      Left = 547
      Top = 16
      Width = 84
      Height = 24
      Color = 15269887
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 20
    end
    object pnlRENIEC4: TPanel
      Left = 133
      Top = 188
      Width = 86
      Height = 26
      Color = clRed
      Enabled = False
      TabOrder = 21
      object edtEstadoCivil: TwwDBEdit
        Left = 2
        Top = 2
        Width = 80
        Height = 21
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dblEstadoCivil: TwwDBLookupCombo
        Left = 3
        Top = 3
        Width = 80
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        DropDownAlignment = taLeftJustify
        Options = [loColLines, loRowLines, loTitles]
        ParentFont = False
        TabOrder = 1
        Visible = False
        AutoDropDown = True
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object edtnumdoc: TEdit
      Left = 505
      Top = 40
      Width = 127
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 22
      Visible = False
      OnExit = edtnumdocExit
      OnKeyPress = edtnumdocKeyPress
    end
  end
  object gbLaboralAso: TGroupBox
    Left = 8
    Top = 281
    Width = 789
    Height = 320
    Caption = 'Datos Laborales del Asociado'
    Color = 12114134
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 3
    object Label7: TLabel
      Left = 107
      Top = 22
      Width = 92
      Height = 17
      Caption = 'Tipo de Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 10
      Top = 22
      Width = 83
      Height = 17
      Caption = 'Codigo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 9
      Top = 66
      Width = 84
      Height = 18
      Caption = 'Procesado en:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 422
      Top = 66
      Width = 85
      Height = 17
      Caption = 'Unidad de Pago:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 8
      Top = 109
      Width = 60
      Height = 17
      Caption = 'Use / Ugel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblResNom: TLabel
      Left = 402
      Top = 107
      Width = 77
      Height = 17
      Caption = 'N'#176'Resol.Nomb'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblFecNom: TLabel
      Left = 514
      Top = 107
      Width = 35
      Height = 17
      Caption = 'Fecha '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblResCes: TLabel
      Left = 598
      Top = 107
      Width = 72
      Height = 17
      Caption = 'N'#176'Resol.Cese'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblFecCes: TLabel
      Left = 696
      Top = 107
      Width = 35
      Height = 17
      Caption = 'Fecha '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 8
      Top = 190
      Width = 95
      Height = 17
      Caption = 'Centro Educativo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 661
      Top = 192
      Width = 54
      Height = 17
      Caption = 'Telefonos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 392
      Top = 192
      Width = 53
      Height = 17
      Caption = 'Direcci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 10
      Top = 231
      Width = 77
      Height = 17
      Caption = 'Departamento'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 228
      Top = 231
      Width = 50
      Height = 17
      Caption = 'Provincia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
      Left = 492
      Top = 231
      Width = 47
      Height = 17
      Caption = 'Distrito'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 663
      Top = 21
      Width = 79
      Height = 17
      Caption = 'Est. Beneficio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object msgReingreso: TLabel
      Left = 230
      Top = 0
      Width = 142
      Height = 23
      Caption = '(REINGRESANTE)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label22: TLabel
      Left = 7
      Top = 150
      Width = 66
      Height = 17
      Caption = 'Cod. de Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 79
      Top = 148
      Width = 84
      Height = 17
      Caption = 'Cta.TeleAhorro'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label23: TLabel
      Left = 174
      Top = 149
      Width = 17
      Height = 16
      AutoSize = False
      Caption = 'Sit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label52: TLabel
      Left = 198
      Top = 149
      Width = 41
      Height = 16
      AutoSize = False
      Caption = 'Cargo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 264
      Top = 149
      Width = 30
      Height = 17
      Caption = 'Email'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label27: TLabel
      Left = 479
      Top = 5
      Width = 86
      Height = 17
      Caption = 'Cod.Mod.Colegio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object DbLlTipAso: TwwDBLookupCombo
      Left = 110
      Top = 42
      Width = 43
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ASOTIPID'#9'3'#9'Codigo'#9'F'
        'ASOTIPDES'#9'20'#9'Descripci'#243'n'#9'F')
      DataField = 'ASOTIPID'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsTAso
      LookupField = 'ASOTIPID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      MaxLength = 2
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLlTipAsoChange
      OnExit = DbLlTipAsoExit
    end
    object Panel10: TPanel
      Left = 154
      Top = 41
      Width = 108
      Height = 24
      Caption = 'Panel10'
      Enabled = False
      TabOrder = 2
      object edtTipAso: TEdit
        Left = 3
        Top = 1
        Width = 101
        Height = 21
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Text = 'CESANTE'
      end
    end
    object pnlResoluciones: TPanel
      Left = 397
      Top = 123
      Width = 382
      Height = 29
      BorderStyle = bsSingle
      Enabled = False
      TabOrder = 10
      object dbeNroRes: TwwDBEdit
        Left = 3
        Top = 2
        Width = 102
        Height = 21
        Color = 15269887
        Ctl3D = True
        DataField = 'ASORESNOM'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        UnboundAlignment = taRightJustify
        WantReturns = False
        WordWrap = False
      end
      object DBDTResNom: TwwDBDateTimePicker
        Left = 108
        Top = 2
        Width = 83
        Height = 29
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 15269887
        DataField = 'ASOFRESNOM'
        DataSource = DM1.dsAso
        Date = 23146.000000000000000000
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 1
        DisplayFormat = 'dd/mm/yyyy'
      end
      object dbeNroCes: TwwDBEdit
        Left = 194
        Top = 2
        Width = 95
        Height = 21
        Color = 15269887
        DataField = 'ASORESCESE'
        DataSource = DM1.dsAso
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
      end
      object DBDTResCes: TwwDBDateTimePicker
        Left = 292
        Top = 1
        Width = 83
        Height = 29
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Color = 15269887
        DataField = 'ASOFRESCESE'
        DataSource = DM1.dsAso
        Date = 23146.000000000000000000
        Epoch = 1950
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ShowButton = True
        TabOrder = 3
        DisplayFormat = 'dd/mm/yyyy'
      end
    end
    object DbLUniPro: TwwDBLookupCombo
      Left = 8
      Top = 83
      Width = 48
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPROID'#9'4'#9'Codigo'#9'F'
        'UPRONOM'#9'40'#9'Descripci'#243'n'#9'F')
      DataField = 'UPROID'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsUPro
      LookupField = 'UPROID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      MaxLength = 3
      ParentFont = False
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLUniProChange
    end
    object Panel9: TPanel
      Left = 60
      Top = 82
      Width = 349
      Height = 25
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 5
      object dbeUproDes: TwwDBEdit
        Left = 3
        Top = 2
        Width = 343
        Height = 21
        CharCase = ecUpperCase
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbeUproDesChange
      end
    end
    object Panel4: TPanel
      Left = 472
      Top = 81
      Width = 306
      Height = 25
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 7
      object dbeUpagDes: TwwDBEdit
        Left = 3
        Top = 2
        Width = 300
        Height = 21
        CharCase = ecUpperCase
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnChange = dbeUpagDesChange
      end
    end
    object DbLUses: TwwDBLookupCombo
      Left = 7
      Top = 126
      Width = 45
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'USEID'#9'4'#9'Codigo'#9'F'
        'USENOM'#9'38'#9'Descripci'#243'n'#9'F')
      DataField = 'USEID'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsUSE
      LookupField = 'USEID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      MaxLength = 2
      ParentFont = False
      TabOrder = 8
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLUsesChange
    end
    object Panel5: TPanel
      Left = 53
      Top = 124
      Width = 340
      Height = 25
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 9
      object dbeUses: TwwDBEdit
        Left = 3
        Top = 2
        Width = 334
        Height = 21
        CharCase = ecUpperCase
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object measodeslab: TwwDBEdit
      Left = 53
      Top = 209
      Width = 334
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASODESLAB'
      DataSource = DM1.dsAso
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object measotellab: TwwDBEdit
      Left = 663
      Top = 208
      Width = 111
      Height = 21
      DataField = 'ASOTELLAB'
      DataSource = DM1.dsAso
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object measodirlab: TwwDBEdit
      Left = 391
      Top = 208
      Width = 267
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASODIRLAB'
      DataSource = DM1.dsAso
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object lkcDpto2: TwwDBLookupCombo
      Left = 9
      Top = 250
      Width = 40
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'DPTOID'#9'2'#9'DPTOID'#9'F'
        'DPTODES'#9'30'#9'DPTODES'#9'F')
      DataField = 'ASODPTLABID'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsRec
      LookupField = 'DPTOID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      MaxLength = 2
      ParentFont = False
      TabOrder = 14
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcDpto2Change
    end
    object lkcProv2: TwwDBLookupCombo
      Left = 225
      Top = 250
      Width = 51
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PROVID'#9'5'#9'PROVID'#9'F'
        'PROVDES'#9'30'#9'PROVDES'#9'F')
      DataField = 'ASOPRVLABID'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsTRela
      LookupField = 'PROVID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      MaxLength = 4
      ParentFont = False
      TabOrder = 15
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcProv2Change
    end
    object lkcDist2: TwwDBLookupCombo
      Left = 490
      Top = 250
      Width = 63
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ZIPID'#9'6'#9'ZIPID'#9'F'
        'ZIPDES'#9'35'#9'ZIPDES'#9'F')
      DataField = 'ASODSTLABID'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsQry7
      LookupField = 'ZIPID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      MaxLength = 6
      ParentFont = False
      TabOrder = 16
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcDist2Change
    end
    object DbLUniPag: TwwDBLookupCombo
      Left = 423
      Top = 83
      Width = 48
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      CharCase = ecUpperCase
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'UPAGOID'#9'4'#9'Codigo'#9'F'
        'UPAGONOM'#9'40'#9'Descripci'#243'n'#9'F')
      DataField = 'UPAGOID'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsUPago
      LookupField = 'UPAGOID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      MaxLength = 2
      ParentFont = False
      TabOrder = 6
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLUniPagChange
    end
    object pnlCodMod: TPanel
      Left = 10
      Top = 39
      Width = 96
      Height = 24
      Enabled = False
      TabOrder = 0
      OnExit = bbtnCartaClick
      object EdtCodMod: TwwDBEdit
        Left = 1
        Top = 1
        Width = 94
        Height = 24
        DataField = 'ASOCODMOD'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel15: TPanel
      Left = 662
      Top = 39
      Width = 121
      Height = 24
      Enabled = False
      TabOrder = 3
      object edtTipBen: TEdit
        Left = 1
        Top = 1
        Width = 55
        Height = 21
        Color = 15269887
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtEstBen: TEdit
        Left = 59
        Top = 1
        Width = 59
        Height = 21
        Color = 15269887
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object BitBtn6: TBitBtn
      Left = 10
      Top = 208
      Width = 38
      Height = 22
      Hint = 'Seleccione el centro educativo'
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = BitBtn6Click
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
    object edtDpto2: TEdit
      Left = 51
      Top = 250
      Width = 162
      Height = 21
      BevelInner = bvNone
      BevelKind = bkSoft
      BevelOuter = bvRaised
      Color = 15269887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
      OnChange = edtDpto2Change
    end
    object edtProv2: TEdit
      Left = 278
      Top = 250
      Width = 202
      Height = 21
      BevelKind = bkSoft
      BevelOuter = bvSpace
      Color = 15269887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 19
      OnChange = edtProv2Change
    end
    object edtDist2: TEdit
      Left = 555
      Top = 250
      Width = 218
      Height = 21
      Color = 15269887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 20
    end
    object dbeCodPag: TwwDBEdit
      Left = 7
      Top = 168
      Width = 66
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASOCODPAGO'
      DataSource = DM1.dsAso
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeCodPagExit
    end
    object pnlCtaTeleAhorro: TPanel
      Left = 77
      Top = 165
      Width = 92
      Height = 23
      BorderStyle = bsSingle
      Caption = 'Panel11'
      Enabled = False
      TabOrder = 22
      object dbeCuenta: TwwDBEdit
        Left = 1
        Top = 1
        Width = 85
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        Color = 15269887
        DataField = 'ASONCTA'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel17: TPanel
      Left = 171
      Top = 165
      Width = 23
      Height = 23
      BorderStyle = bsSingle
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 23
      object dbeSitCta: TwwDBEdit
        Left = 1
        Top = 1
        Width = 16
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        Color = 15269887
        DataField = 'SITCTA'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object Panel20: TPanel
      Left = 196
      Top = 165
      Width = 64
      Height = 23
      BorderStyle = bsSingle
      Caption = 'Panel11'
      Enabled = False
      TabOrder = 24
      object dbeCargo: TwwDBEdit
        Left = 2
        Top = 1
        Width = 56
        Height = 21
        AutoSize = False
        CharCase = ecUpperCase
        Color = 15269887
        DataField = 'CARGO'
        DataSource = DM1.dsAso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object dbeAsoEmail: TwwDBEdit
      Left = 263
      Top = 168
      Width = 188
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASOEMAIL'
      DataSource = DM1.dsAso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnExit = dbeAsoEmailExit
    end
    object dbeCenEduId: TwwDBEdit
      Left = 569
      Top = 1
      Width = 90
      Height = 21
      CharCase = ecUpperCase
      Color = 15269887
      DataField = 'CENEDUID'
      DataSource = DM1.dsAso
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
  end
  object pnlPrefente: TPanel
    Left = 21
    Top = 225
    Width = 115
    Height = 22
    Color = clBackground
    TabOrder = 4
    Visible = False
    object lblPrefente: TLabel
      Left = 3
      Top = 2
      Width = 109
      Height = 17
      Alignment = taCenter
      AutoSize = False
      Caption = 'PREFERENTE'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -17
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object pnlControl: TPanel
    Left = 9
    Top = 556
    Width = 783
    Height = 41
    TabOrder = 5
    object Shape2: TShape
      Left = 3
      Top = 4
      Width = 253
      Height = 32
    end
    object BitReasignacion: TBitBtn
      Left = 6
      Top = 8
      Width = 60
      Height = 26
      Cursor = crHandPoint
      Hint = 'Reasignaci'#243'n'
      Caption = '&Reasigna'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = BitReasignacionClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000888888838383
        92927B8888818383837F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF6E6E6ECACA9D0000F58181AEB5B5AE2A2A2A7D7D7D73
        73737373737373737777777777777777777777776F6F6FCBCBCBA2A27C2424FF
        0000FF2828F9ECECCE2C2C2C9D9D9DA6A6A6A6A6A6B0B0B08282828686868686
        8686868686868680808000007A1616FFFFFFAF0000FFBCBCD9353524AEAEAECF
        CFCFC3C3C38484848D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8F8F8F373780DFDFC1
        CACABC6464DE0000FF19194CB4B4ACC6C6C65151512929292E2E2E2E2E2E2E2E
        2E3030302E2E2E2E2E2E84847CFFFFFFF3F3F3FFFFEC3F3FFF000080B0B0A149
        4949909090D0D0D0CACACACACACACECECEB9B9B9D2D2D2CECECE7F7F7F1D1D1D
        4F4F4F4B4B4B63634B5B5B4B515151A0A0A0FFFFFFFFFFFFFFFFFFFFFFFFF6F6
        F6CDCDCDCDCDCDE3E3E3FFFFFF787878DDECECD7E2E2CAD2D2535353B5B5B5FF
        FFFF6B6B6B878787E2E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF788787
        7600007700007E3E3E5E6666FFFFFF0F0F0F6767674C4C4CE8E8E8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF707070D2E1E1D9F7F79A0000CFEDED761F2831
        3D46606C6C8A8A8AFFFFFFFFFFFFFFFFFF0303034F4F4F222222FFFFFF707070
        D5D5D53D3D3DFFFFFF280008BF4400A398428C031FF1FFFFFFFFFFFFFFFFC4C4
        C48E8E8EDBDBDB878787FFFFFF707070E1E1E1505050E1E1E1656969334C5447
        0000CEA200D3647CFFC7CFFFFFFF5A5A5ADDDDDDD5D5D5808080FFFFFF6C6C6C
        434343575757060606FFFFFF000000FFFFFFEB758C8E2600BB872FA1223B0B26
        264D55554343437C7C7CFFFFFFFFFFFFFFFFFFFFFFFFC4C4C4B5B5B5FFFFFFFF
        FFFFECFEFEFFC4CB000000D7A800901631FFE1E9FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFB5B5B5B5B5B5FFFFFF2E2E2E2F3737FFFFFFE86F87632A
        00B7872F880316FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C45F
        5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFE1E9690000C68F37FFFFFF}
      Margin = 2
      Spacing = 2
    end
    object BitResol: TBitBtn
      Left = 70
      Top = 7
      Width = 55
      Height = 27
      Cursor = crHandPoint
      Hint = 'Resoluciones'
      Caption = '&Resol.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = BitResolClick
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000010000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008888777777778888888800008800
        00000000788888880000880BFFFBFFF0777777880000880F444444F000000078
        0000880FFBFFFBF0FBFFF0780000880F444444F04444F0780000880BFFFBFFF0
        FFFBF0780000880F444444F04444F0780000880FFBFFFBF0FBFFF0780000880F
        44F000004440F0780000880BFFF0FFF0FFFBF0780000880F44F0FB00F0000078
        0000880FFBF0F0FFF0FFF0880000880000000F44F0FB08880000888888880FFB
        F0F0888800008888888800000008888800008888888888888888888800008888
        88888888888888880000}
      Margin = 2
      Spacing = 2
    end
    object BitCuentas: TBitBtn
      Left = 129
      Top = 7
      Width = 60
      Height = 27
      Cursor = crHandPoint
      Hint = 'Cuentas De Ahorros'
      Caption = '&Cta.Aho.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = BitCuentasClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000003B3B735B5B
        675757675757675757675757675757675757735B5B003232967F7FFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00848474FAFA68EFEF68EFEF68EFEF68EFEF68EFEF68
        EFEF74FAFA008282008D8D001313876F6FFFFFFFFFFFFFFFFFFF007C7C74ECEC
        68E1E168E1E168E1E168E1E168E1E168E1E174EDED007B7B008787008D8D008D
        8D001313876F6FFFFFFF00848480F7F774ECEC74ECEC74ECEC74ECEC74ECEC74
        ECEC80F7F7008282008787008787008787008D8D009191000000002F2F008E8E
        006F6F007B7B006B6B006F6F007F7F006F6F008383002929009191008D8D0087
        87008787008D8D004444928A8A000000FFFFFF7C6C6CFFFFFFFFF3F3544444FF
        FFFF8F80807068686B5353001C1C009191008D8D008D8D003F3FFFFFFF787878
        FAFAFF70707CFFFFFFFFFFFF444444FEFEFF84848F50505CFFFFFFFFFFFF5B43
        43001C1C009999004444FFFFFF686880D9D900505000CACA2FEFEFED484874E1
        E1005C5C00606000CECE00B7B78AFFFFFFFFFFFF5B4747001414FFFFFFC4C4CB
        70702F2222007B7B00FFFF008383005C5C2F444400333300878700DADA00C3C3
        00B7B78AFFFFFF2F2A2AFFFFFFFFFFFFFFFFFFCBCBDA8F8F482020009A9A0068
        68540F0F00939348262600262600878700DADA00CACA0087879FFFFFFFB6B6B6
        FFFFFFFFFFFF26262F3F3F502E2E00A2A2AE000000FFFFFFDCDCEB8F8F371D1D
        3F141400787837787880E8E8E85555557171717575752A2A2A91919189899187
        8787979797D1D1D15F5F5F6A6A72FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8A8
        C5C5C5DFDFDFA0A0A0BCBCBCC7C7C78484841D1D1DB5B5B5666666FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5A5A5AFFFFFFFFFFFFF2F2F2FEFEFEABABAB4E4E4EC4
        C4C4B6B6B6606060FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF575757
        595959FFFFFFFFFFFFFFFFFFFFFFFFB6B6B6767676FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF67676777777777777777777788
        88881D1D1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Margin = 2
      Spacing = 3
    end
    object BitSocio: TBitBtn
      Left = 192
      Top = 7
      Width = 60
      Height = 27
      Cursor = crHandPoint
      Hint = 'Datos Socieconomicos'
      Caption = 'Soc.Eco.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = BitSocioClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF8E7F7F0B67671F0D0D332222DACBCBFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1D0606005151A7818119
        5C5CA1FFFF1DBCBC785858CBBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF220606007979E1FFFF82FFFF91FFFF8FFFFF97FFFF8FFFFF26C0C07858
        58CBBCBCFFFFFFFFFFFFFFFFFFFFFFFFDACBCB003E3EA2FFFF89FFFF8FFFFF9F
        FFFF37B1B12FADAD9FFFFF37E1E197FFFF1DBCBC705050FFFFFFFFFFFFFFFFFF
        263B3B3FCACA97FFFF37B1B148BCBC00B5B53FE9E9A6FFFF2FB1B137B1B197FF
        FF8FFFFF8FFFFF786868FFFFFFDACBCB003E3EA1FFFF8FD6D63FE9E93FBCBC48
        EDED9FB5B52FE1E197E5E59FFFFF26A5A59FFFFF1458587F7777FFFFFF263F3F
        46AEAE7CD3D399FFFF2FDEDEA6B8B837E5E597E9E937E5E597B1B126DADA9FFF
        FF0B5050FFFFFFFFFFFFE1D3D3004D4D78B0B070A8A8339A9AA6FFFF2FDEDE37
        E1E197B1B137E1E18FFFFF8FFFFF87BCBCCBBCBCFFFFFFFFFFFF31525235AAAA
        748A96143A53391F282A6B7F9BFFFF8FFFFF8FFFFF2FDADA8FD6D68FFFFF0B58
        58FFFFFFFFFFFFFFFFFF8881811B404D595100EAE600E4E4BCB4AC005837268B
        FFFF87FFFF8FFFFF87FFFF87BCBCCBBCBCFFFFFFFFFFFFFFFFFFFFFFFF767286
        BFBF005B5B00131300C3C3006048008BFFFF87FFFF87FFFF8FFFFF0B5858FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFC7C7D34B4B00333300FEFE682A220033843797
        FFFF87FFFF87FFFF87BCBCCBBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        E5E5F800000029290037375896878E1457578FFFFF97FFFF0B5858FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F2FE8E800E1E1C47B7B00D3D3E1FF
        FFFF6F57570B5F5FD3C4C4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0F0F008D8D00828200B7B7005C5C70FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADAE92E2E003A3A0050503FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Margin = 2
      Spacing = 2
    end
    object BitPrest: TfcShapeBtn
      Left = 289
      Top = 7
      Width = 40
      Height = 27
      Cursor = crHandPoint
      Hint = 'Mostrar Prestamos'
      Caption = 'CRE'
      Color = clMenu
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3
        CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
        CACACACABCBCBCFFFFFF7F7F7F1313131C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
        1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C252525767676FFFFFF787878FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF808080767676FFFFFF788787FF7878FF7F7FFF2626FF2626FF8787FF2626FF
        2626FF8787FF2626FF1414FFFFFFFFFFFF787878767676FFFFFF788787FF8787
        FF7F7FFF3737FF3737FF8787FF3737FF3737FF8787FF3737FF3737FF6767FFD3
        D3788080767676FFFFFF788787FF7878FFFFFFFF8787FF8787FFFFFFFF8787FF
        8787FFFFFFFF8787FF8787FFFFFFFF7070788787767676FFFFFF788787FF8787
        FF7F7FFF3737FF3737FF8787FF3737FF3737FF8787FF3737FF3737FF7F7FFF87
        87788787767676FFFFFF788787FF8787FF7F7FFF3737FF3737FF8787FF3737FF
        3737FF8787FF3737FF3737FF7F7FFF8787788787767676FFFFFF788787FF7070
        FFFFFFFF8080FF8080FFFFFFFF8080FF8787FFFFFFFF8787FF8787FFFFFFFF78
        78788787767676FFFFFF788080FFD3D3FF5F5FFF7777FF7777FF6767FF7F7FFF
        2626FF8787FF3737FF3737FF7F7FFF8787788787767676FFFFFF787878FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7880FF878EFF2F37FF2F37FF8387FF78
        78788787767676FFFFFF787878FFFFFFC4E1C47FC07F87C48787C48787C48787
        D29687D29687D99E7FD596C4EFD3FFFFFF787878767676FFFFFF808080FFFFFF
        80C680007600007E00007E00007E00007E00007E00007E0000760080C680FFFF
        FF808080666666FFFFFF3737377F7F7F877F8796879696879696879696879696
        8796968796968796968796877F877F7F7F1D1D1DFFFFFFFFFFFF}
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      Spacing = 1
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitPrestClick
    end
    object BitMstApo: TfcShapeBtn
      Left = 331
      Top = 7
      Width = 40
      Height = 27
      Cursor = crHandPoint
      Hint = 'Mostrar Aportes'
      Caption = 'APO'
      Color = clMenu
      DitherColor = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -8
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FEFEFE3229293E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E2E3E2E
        2E3E2E2E3A29296F6F6FFFFFFFF7F7F7372F2F3B848497FFFF8FFFFF8FFFFF8F
        FFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF8FFFFF97FFFF3B2A2AFEFEFE2F2F2F
        FFFFFF2668688FFFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FFFF87FF
        FF87FFFF8FFFFF3F2F2F2A2222928A8A7F6F6F2F70708FFFFF8FFFFF87FFFF87
        FFFF87FFFF8FFFFF87FFFF8FFFFF87FFFF8FFFFF8FFFFF3F2F2F3F878797E1E1
        8FD3D397D3D38FFFFF2FB5B597FFFF8FB5B58FFFFF2FB5B597FFFF37676797C4
        C42F5F5F9FD3D33F3737488F8F481D1D3F87873F14149FD3D34878783F70703F
        70709FFFFF3768689FFFFF000B0B9FFFFF48D3D337D3D3483737508787007878
        50D3D300707048CBCB00686850D3D300828248E1E13700009FD3D3000B0BA6D3
        D3000000A6DADA3F37373F78789FFFFF8FFFFF97FFFF8FFFFF97FFFF99FFFF2A
        06064A282897FFFF87FFFF97FFFF87FFFF97FFFF8FFFFF3F2F2F3F78788FFFFF
        87FFFF87FFFF8FFFFF8FFFFF9BFFFF827262000000A6FFFF8FFFFF87FFFF87FF
        FF87FFFF8FFFFF3F2F2F3F78788FFFFF87FFFF8FFFFF3FDAD33F1D0000007300
        008A00009A00001448877397FFFF87FFFF87FFFF8FFFFF3F2F2F3F78788FFFFF
        87FFFF97FFFF000000A6A6FF0000FF00006F0000B800009100005B3F786C8FFF
        FF87FFFF8FFFFF3F2F2F3F78788FFFFF87FFFF97FFFF000000FFF8FF3F3F3300
        00E100004F00006700005F3F786C8FFFFF87FFFF8FFFFF3F2F2F48808097FFFF
        8FFFFF8FFFFFA6E1DA26776FB0A8890000E100008B605033488E839FFFFF8FFF
        FF8FFFFF97FFFF372626001D1D2F6F6F266767266767266F6F4A98942F263700
        001350486F004A2C488E8E2667672667672667671D6767878080FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF1D14005A5AFF0000FF0000FF0000B1807864FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1D300006F00
        007700007B3F3F48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      NumGlyphs = 0
      Options = [boFocusable]
      ParentClipping = True
      ParentFont = False
      ParentShowHint = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      ShowHint = True
      Spacing = 1
      TabOrder = 5
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = BitMstApoClick
    end
    object BitModifica: TBitBtn
      Left = 374
      Top = 7
      Width = 49
      Height = 27
      Cursor = crHandPoint
      Hint = 'Modificar Datos'
      Caption = '&Modif.'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BitModificaClick
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
      Spacing = 1
    end
    object BitAutDes: TBitBtn
      Left = 478
      Top = 7
      Width = 48
      Height = 27
      Cursor = crHandPoint
      Hint = 'Autorizaci'#243'n de Descuentos de Aportes'
      Caption = 'Dscto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BitAutDesClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008877700
        33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
        703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
        77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
        07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
        780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
        8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
      Spacing = 0
    end
    object BitGrabar: TBitBtn
      Left = 527
      Top = 7
      Width = 48
      Height = 27
      Cursor = crHandPoint
      Hint = 'Grabar Cambios'
      Caption = '&Graba'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
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
      Spacing = 1
    end
    object BitVerifica: TBitBtn
      Left = 619
      Top = 7
      Width = 49
      Height = 27
      Caption = 'Valida'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = BitVerificaClick
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
      Margin = 1
      NumGlyphs = 2
      Spacing = 1
    end
    object BitSalir: TBitBtn
      Left = 714
      Top = 7
      Width = 43
      Height = 27
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = '&Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = BitSalirClick
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
      Spacing = 1
    end
    object btnObservacion: TBitBtn
      Left = 671
      Top = 7
      Width = 40
      Height = 27
      Caption = 'Obs.'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = btnObservacionClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
      Spacing = 0
    end
    object BitFichaAso: TBitBtn
      Left = 425
      Top = 7
      Width = 48
      Height = 27
      Caption = 'Ficha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = BitFichaAsoClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
        00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
        00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
        F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
        F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
        FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
        0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
        0033333337FFFFFF773333333000000003333333377777777333}
      NumGlyphs = 2
      Spacing = 3
    end
    object bbtnN3: TBitBtn
      Left = 579
      Top = 7
      Width = 37
      Height = 27
      Hint = 'Envia a validar a Usuario con Nivel 3'
      Caption = 'N3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      OnClick = bbtnN3Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333FF3333333333333003333
        3333333333773FF3333333333309003333333333337F773FF333333333099900
        33333FFFFF7F33773FF30000000999990033777777733333773F099999999999
        99007FFFFFFF33333F7700000009999900337777777F333F7733333333099900
        33333333337F3F77333333333309003333333333337F77333333333333003333
        3333333333773333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      Spacing = 1
    end
    object bbtnCarta: TBitBtn
      Left = 760
      Top = 7
      Width = 17
      Height = 27
      Cursor = crHandPoint
      Hint = 'Imprimie Hoja de Autorizaci'#243'n de Descuentos de Aportes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      Visible = False
      OnClick = bbtnCartaClick
      Glyph.Data = {
        F6000000424DF60000000000000076000000280000000C000000100000000100
        04000000000080000000C40E0000C40E00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        0000500000000005000050FFFFFFFF05000050F0000FFF05000050FFFFFFFF05
        000050F000000F05000050FFFFFFFF05000050F000000F05000050FFFFFFFF05
        000050F000FFFF05000050FFFFF00005000050F00FF0F055000050FFFFF00555
        0000500000005555000055555555555500005555555555550000}
      Spacing = 0
    end
    object BitFoto: TPanel
      Left = 260
      Top = 7
      Width = 26
      Height = 27
      Cursor = crHandPoint
      Hint = 'Maximizar Foto y Firma'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 15
      object ImageBoton: TImage
        Left = 3
        Top = 1
        Width = 20
        Height = 22
        Cursor = crHandPoint
        Hint = 'Maximizar Foto y Firma'
        ParentShowHint = False
        ShowHint = True
        Stretch = True
        OnClick = ImageBotonClick
      end
    end
  end
  object pnlEstado: TPanel
    Left = 392
    Top = 243
    Width = 169
    Height = 33
    Color = clBackground
    TabOrder = 6
    Visible = False
    object lblEstado: TLabel
      Left = 11
      Top = -22
      Width = 162
      Height = 22
      Alignment = taCenter
      AutoSize = False
      Caption = 'RECHAZADO'
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -21
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object bbtnN1: TBitBtn
    Left = 163
    Top = 248
    Width = 38
    Height = 25
    Hint = 'Enviar a Mantenimiento'
    Caption = 'N1'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    Visible = False
    OnClick = bbtnN1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333FF3333333333333003333333333333F77F33333333333009033
      333333333F7737F333333333009990333333333F773337FFFFFF330099999000
      00003F773333377777770099999999999990773FF33333FFFFF7330099999000
      000033773FF33777777733330099903333333333773FF7F33333333333009033
      33333333337737F3333333333333003333333333333377333333333333333333
      3333333333333333333333333333333333333333333333333333333333333333
      3333333333333333333333333333333333333333333333333333}
    Layout = blGlyphRight
    NumGlyphs = 2
    Spacing = 1
  end
  object bitAutoriza: TfcShapeBtn
    Left = 276
    Top = 248
    Width = 105
    Height = 25
    Cursor = crHandPoint
    Caption = 'Autorizar'
    Color = 16744448
    DitherColor = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Layout = blGlyphRight
    NumGlyphs = 2
    ParentClipping = True
    ParentFont = False
    RoundRectBias = 25
    ShadeColors.Btn3DLight = clGray
    ShadeColors.BtnShadow = clGray
    ShadeStyle = fbsHighlight
    SmoothFont = True
    TabOrder = 8
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    Visible = False
    OnClick = bitAutorizaClick
  end
  object bitRechaza: TfcShapeBtn
    Left = 202
    Top = 248
    Width = 74
    Height = 25
    Cursor = crHandPoint
    Caption = 'Rechazar'
    Color = clRed
    DitherColor = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentClipping = True
    ParentFont = False
    RoundRectBias = 25
    ShadeColors.Btn3DLight = clGray
    ShadeColors.BtnShadow = clGray
    ShadeStyle = fbsHighlight
    SmoothFont = True
    TabOrder = 9
    TextOptions.Alignment = taLeftJustify
    TextOptions.VAlignment = vaVCenter
    Visible = False
    OnClick = bitRechazaClick
  end
  object btnCtaIndividual: TfcShapeBtn
    Left = 7
    Top = 178
    Width = 142
    Height = 22
    Cursor = crHandPoint
    Hint = 'Mostrar Prestamos'
    Caption = 'Cuenta Individual'
    Color = clMenu
    DitherColor = clWhite
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C3
      CACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACA
      CACACACABCBCBCFFFFFF7F7F7F1313131C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C
      1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C252525767676FFFFFF787878FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF808080767676FFFFFF788787FF7878FF7F7FFF2626FF2626FF8787FF2626FF
      2626FF8787FF2626FF1414FFFFFFFFFFFF787878767676FFFFFF788787FF8787
      FF7F7FFF3737FF3737FF8787FF3737FF3737FF8787FF3737FF3737FF6767FFD3
      D3788080767676FFFFFF788787FF7878FFFFFFFF8787FF8787FFFFFFFF8787FF
      8787FFFFFFFF8787FF8787FFFFFFFF7070788787767676FFFFFF788787FF8787
      FF7F7FFF3737FF3737FF8787FF3737FF3737FF8787FF3737FF3737FF7F7FFF87
      87788787767676FFFFFF788787FF8787FF7F7FFF3737FF3737FF8787FF3737FF
      3737FF8787FF3737FF3737FF7F7FFF8787788787767676FFFFFF788787FF7070
      FFFFFFFF8080FF8080FFFFFFFF8080FF8787FFFFFFFF8787FF8787FFFFFFFF78
      78788787767676FFFFFF788080FFD3D3FF5F5FFF7777FF7777FF6767FF7F7FFF
      2626FF8787FF3737FF3737FF7F7FFF8787788787767676FFFFFF787878FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7880FF878EFF2F37FF2F37FF8387FF78
      78788787767676FFFFFF787878FFFFFFC4E1C47FC07F87C48787C48787C48787
      D29687D29687D99E7FD596C4EFD3FFFFFF787878767676FFFFFF808080FFFFFF
      80C680007600007E00007E00007E00007E00007E00007E0000760080C680FFFF
      FF808080666666FFFFFF3737377F7F7F877F8796879696879696879696879696
      8796968796968796968796877F877F7F7F1D1D1DFFFFFFFFFFFF}
    NumGlyphs = 0
    Options = [boFocusable]
    ParentClipping = True
    ParentFont = False
    ParentShowHint = False
    RoundRectBias = 25
    ShadeStyle = fbsHighlight
    ShowHint = True
    Spacing = 1
    TabOrder = 1
    TabStop = True
    TextOptions.Alignment = taCenter
    TextOptions.VAlignment = vaVCenter
    OnClick = btnCtaIndividualClick
  end
  object BitFonSol: TBitBtn
    Left = 8
    Top = 201
    Width = 141
    Height = 20
    Cursor = crHandPoint
    Hint = 'Autorizaci'#243' de Descuentos de Aportes'
    Caption = 'Fondo Solidario'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnClick = BitFonSolClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333000003333333333F777773FF333333008877700
      33333337733FFF773F33330887000777033333733F777FFF73F330880F9F9F07
      703337F37733377FF7F33080F00000F07033373733777337F73F087F0091100F
      77037F3737333737FF7F08090919110907037F737F3333737F7F0F0F0999910F
      07037F737F3333737F7F0F090F99190908037F737FF33373737F0F7F00FF900F
      780373F737FFF737F3733080F00000F0803337F73377733737F330F80F9F9F08
      8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
      3333333773FFFF77333333333000003333333333377777333333}
    NumGlyphs = 2
  end
  object btnHojaCargoExpediente: TBitBtn
    Left = 8
    Top = 252
    Width = 141
    Height = 20
    Cursor = crHandPoint
    Caption = 'Hoja de Cargo de Exped.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = btnHojaCargoExpedienteClick
    NumGlyphs = 2
  end
  object pnlRegPension: TPanel
    Left = 271
    Top = 305
    Width = 397
    Height = 41
    Color = 12114134
    Enabled = False
    TabOrder = 12
    object Label9: TLabel
      Left = 5
      Top = -2
      Width = 103
      Height = 17
      Caption = 'Regimen de Pensi'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 179
      Top = -2
      Width = 20
      Height = 17
      Caption = 'Afp'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object DbLlRegPen: TwwDBLookupCombo
      Left = 5
      Top = 18
      Width = 42
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'REGPENID'#9'2'#9'Codigo'#9'F'
        'REGPENDES'#9'20'#9'Descripci'#243'n'#9'F')
      DataField = 'REGPENID'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsResol
      LookupField = 'REGPENID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLlRegPenChange
      OnExit = DbLlRegPenExit
    end
    object Panel7: TPanel
      Left = 45
      Top = 16
      Width = 130
      Height = 23
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 1
      object edtRegPen: TEdit
        Left = 3
        Top = 1
        Width = 123
        Height = 21
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
    object DbLlAfp: TwwDBLookupCombo
      Left = 175
      Top = 17
      Width = 42
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'IDAFP'#9'2'#9'Codigo'#9'F'
        'PROVDES'#9'20'#9'Descripci'#243'n'#9'F')
      DataField = 'CODAFP'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdscarta
      LookupField = 'IDAFP'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLlAfpChange
    end
    object Panel8: TPanel
      Left = 216
      Top = 15
      Width = 177
      Height = 23
      Caption = 'Panel7'
      Enabled = False
      TabOrder = 3
      object EdtAfp: TEdit
        Left = 2
        Top = 1
        Width = 173
        Height = 21
        Color = 15269887
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object pnlCodPension: TPanel
    Left = 460
    Top = 433
    Width = 329
    Height = 39
    Color = 12114134
    Enabled = False
    TabOrder = 13
    object Label29: TLabel
      Left = 1
      Top = 0
      Width = 85
      Height = 17
      Caption = 'Cod.Ley Pensi'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblCodPensionistaTit: TLabel
      Left = 134
      Top = 0
      Width = 59
      Height = 17
      Caption = 'Cod.Pensio.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 196
      Top = 0
      Width = 113
      Height = 17
      Caption = 'C'#243'digo de prestaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcdCodLeyPen: TwwDBLookupCombo
      Left = 1
      Top = 16
      Width = 42
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      DataField = 'CODLEYPEN'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsCodLeyPen
      LookupField = 'CODLEYPEN'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcdCodLeyPenExit
    end
    object edtCodLeyPen: TwwDBEdit
      Left = 44
      Top = 16
      Width = 89
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtCodPensionista: TwwDBEdit
      Left = 134
      Top = 16
      Width = 59
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CODPENSION'
      DataSource = DM1.dsAso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 7
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyPress = edtCodPensionistaKeyPress
    end
    object dblcdCodPrestacion: TwwDBLookupCombo
      Left = 196
      Top = 16
      Width = 42
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      DataField = 'CODPRE'
      DataSource = DM1.dsAso
      LookupTable = DM1.cdsCodPrestacion
      LookupField = 'CODPRE'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnExit = dblcdCodPrestacionExit
    end
    object edtdesprestacion: TwwDBEdit
      Left = 237
      Top = 16
      Width = 89
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 15269887
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object btnAsignarRegalo: TBitBtn
    Left = 758
    Top = 107
    Width = 29
    Height = 30
    Hint = 'Asignar Obsequio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    OnClick = btnAsignarRegaloClick
    Glyph.Data = {
      06130000424D06130000000000003600000028000000390000001C0000000100
      180000000000D0120000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBEAE8E3DFD9D4CEC6
      BCB3A999BBB0A2D0CAC1E1DDD7ECEAE7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFBFBFBEAE8E3DFD9D4CEC6BCB3A999BBB0A2D0CAC1E1DD
      D7ECEAE7FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E6E2B5A8
      9A816A4E593C153E1A00452100502C024E2B00431F003F1B005E411C867055BB
      B0A2EDEBE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF241CED
      241CED241CEDFFFFFFFFFFFFFFFFFFE9E6E2B5A89A816A4E593C153E1A004521
      00502C024E2B00431F003F1B005E411C867055BBB0A2EDEBE7FFFFFFFFFFFFFF
      FFFFFFFFFF241CED241CED241CEDFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFB2A899715838593B145838106547236C502C6B502C6B4E2B6B4E2B6C
      4F2C6B4F2B64462158360D5B3D16775E40C1B8ACFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF241CED241CED241CED241CED241CEDFFFFFFB2A899715838593B
      145838106547236C502C6B502C6B4E2B6B4E2B6C4F2C6B4F2B64462158360D5B
      3D16775E40C1B8ACFFFFFFFFFFFF241CED241CED241CED241CED241CED00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF86715859381160411B674A256A4D2A694C2868
      4B27684B27684B27684B27684B27684B27694C286A4E2A6649245F4019583810
      99866FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF241CED241CED241CED241CED241C
      ED241CED59381160411B674A256A4D2A694C28684B27684B27684B27684B2768
      4B27684B27694C286A4E2A6649245F401958381099866F241CED241CED241CED
      241CED241CED241CED00FFFFFFFFFFFFFFFFFFFFFFFF7861464E2A00694C2869
      4D296A4D29694D29694D29694D29694D29694D29694D29694D29694D29694D29
      694D296A4D29694D29694B27482400917D66FFFFFFFFFFFFFFFFFFFFFFFF241C
      ED241CED241CED241CED241CED241CED241CED694D296A4D29694D29694D2969
      4D29694D29694D29694D29694D29694D29694D29694D296A4D29694D29694B27
      241CED241CED241CED241CED241CED241CED241CED00FFFFFFFFFFFFFFFFFF83
      6D534E2C016E512E694C2964451F5B3C175B3C175B3D175B3D175B3D175C3D17
      5C3D175B3D175B3D175B3D175B3C175C3D17644722694C286E522F4824009683
      6CFFFFFFFFFFFFFFFFFFFFFFFF241CED241CED241CED241CED241CED241CED24
      1CED5B3C175B3C175B3D175B3D175B3D175C3D175C3D175B3D175B3D175B3D17
      5B3C175C3D17644722241CED241CED241CED241CED241CED241CED241CEDFFFF
      FF00FFFFFFFFFFFFAA9D8C583711694D28694C2862441E6F53318E78628C7760
      8C76608C77608A745D80684F8169508B76608C76608C76608C77618D76616A4D
      2A654722694C28694B28573710BEB2A5FFFFFFFFFFFFFFFFFFFFFFFF241CED24
      1CED241CED241CED241CED241CED241CED241CED8C76608C77608A745D80684F
      8169508B76608C76608C76608C7761241CED241CED241CED241CED241CED241C
      ED241CED241CEDFFFFFFFFFFFF00FFFFFFE0DCD86B4F2D62421C694C29674925
      62441EC8BFB3CFC7BBC9C0B2CAC0B4C7BDAFCCC3B8FEFEFEFBFAFAC5BBAEC8BE
      B1C9C0B3C8BEB1D5CDC4B3A796583812694C28694C2860401B755B3CEBE9E5FF
      FFFFFFFFFFE0DCD86B4F2D241CED241CED241CED241CED241CED241CED241CED
      241CEDC7BDAFCCC3B8FEFEFEFBFAFAC5BBAEC8BEB1C9C0B3241CED241CED241C
      ED241CED241CED241CED241CED241CEDEBE9E5FFFFFFFFFFFF00FFFFFFA89989
      56370F694B27694C28654622684D29D5CCC262452E5E3F1761421D5938116448
      25F4F2F0E8E6E254340D5D3E1660411C5B3D156F5335C5BCAF583A13694B2769
      4C286749255A3B14B7AB9CFFFFFFFFFFFFA8998956370F694B27241CED241CED
      241CED241CED241CED241CED241CED241CED644825F4F2F0E8E6E254340D5D3E
      16241CED241CED241CED241CED241CED241CED241CED241CED5A3B14B7AB9CFF
      FFFFFFFFFF00F7F7F77156365D3E17694D29694C28654722664A27D1C8BE674B
      27664923684B2761421C6A4D2CF4F2F1E9E5E15A3A15654822684B2763462172
      5939C2B9AA593A14694C27694C286A4D2958370F81694CFCFBFBF7F7F7715636
      5D3E17694D29694C28241CED241CED241CED241CED241CED241CED241CED241C
      EDF4F2F1E9E5E15A3A15241CED241CED241CED241CED241CED241CED241CED24
      1CED6A4D2958370F81694CFCFBFBFFFFFF00E1DCD64321006B4E2A694C28694C
      28654722664A26D1C8BD684B28664925694C2962421C6B4F2EF5F2F1EAE5E15A
      3C17664824694C28644722745A3AC2B8AB593A13694C27694C28694C28654823
      583914EAE7E2E1DCD64321006B4E2A694C28694C28654722241CED241CED241C
      ED241CED241CED241CED241CED241CEDEAE5E1241CED241CED241CED241CED24
      1CED241CED241CED241CED694C28694C28654823583914EAE7E2FFFFFF00C7BD
      B34622006C4F2B684B27694C28654722664A26D0C8BD684A27664925694C2962
      421C6A4F2DF5F2F0EAE5E15A3C17664823694C28644722745A3AC2B8AB593A13
      694C27694C28694B276C502C3E1900DED8D2C7BDB34622006C4F2B684B27694C
      28654722664A26D0C8BD241CED241CED241CED241CED241CED241CED241CED24
      1CED241CED241CED241CED241CED241CED593A13694C27694C28694B276C502C
      3E1900DED8D2FFFFFF00A6988454330B6A4D29694C28694C28654722664A26D0
      C8BD684A28664924684B2862421C694F2CF5F2F1EAE5E15A3C17664823694C28
      644722745A3AC2B8AB593A13694C27694C28694B276B4F2C472400CAC1B6A698
      8454330B6A4D29694C28694C28654722664A26D0C8BD684A28241CED241CED24
      1CED241CED241CED241CED241CED241CED241CED241CED241CEDC2B8AB593A13
      694C27694C28694B276B4F2C472400CAC1B6FFFFFF0096836D5A3A12694D2969
      4C28694C28664822644823CFC6BC674921644821674A24604119694D2AF3F3F0
      E9E6E1593A1364451F674A2565441F705736C0B6A857380E694C27694C28694C
      276A4D2A512F04B1A39396836D5A3A12694D29694C28694C28664822644823CF
      C6BC674921644821241CED241CED241CED241CED241CED241CED241CED241CED
      241CED705736C0B6A857380E694C27694C28694C276A4D2A512F04B1A393FFFF
      FF0095836A5B3A13694D29694C28694C285F421C725739D5CECA765B526F5334
      7156396B4E32785F4AF5F3F2EBE8E4694E346E52367256396D5135826C53CAC0
      BB644529654721694C28694C286A4D2A502F04B2A59695836A5B3A13694D2969
      4C28694C285F421C725739D5CECA765B526F5334715639241CED241CED241CED
      241CED241CED241CED241CED6D5135826C53CAC0BB644529654721694C28694C
      286A4D2A502F04B2A596FFFFFF00A3937F57350C6A4D29694C28674A25614421
      FEFEFDBEB1A2C2B7A6C8BEB2C8BEB1C4BBACC4BBACFCFDFCF7F5F4B9AE9EC6BC
      AEC6BCAFC7BDAFBCB0A1C7BCAFEDEAE761441D684925684C286B4F2C472300CC
      C3B9A3937F57350C6A4D29694C28674A25614421FEFEFDBEB1A2C2B7A6C8BEB2
      241CED241CED241CED241CED241CED241CED241CED241CED241CEDBCB0A1C7BC
      AFEDEAE761441D684925684C286B4F2C472300CCC3B9FFFFFF00C4BBAE482500
      6B4F2B694B28674B25644724D4CBC252310C421D00472400472500401C004928
      00EFEBE8DED8D2310B004622004723004724003E180062452BD5CEC564462068
      4925684C286C502C3E1900DFD9D3C4BBAE4825006B4F2B694B28674B25644724
      D4CBC252310C421D00241CED241CED241CED241CED241CED241CED241CED241C
      ED241CED241CED241CED62452BD5CEC5644620684925684C286C502C3E1900DF
      D9D3FFFFFF00DFDAD4401D006C4F2C694C28684A25634620E5E3DDB1A294A291
      7CA79682A79683A2917DAA9A88FFFFFFFAFCFB9C8A76A69682A89884A89784A0
      8E79BDB4A9D4D0C661421E674A26694C286547215A3C18EBE8E5DFDAD4401D00
      6C4F2C694C28684A25634620E5E3DD241CED241CED241CED241CED241CED241C
      ED241CED241CED241CED241CED241CED241CED241CED241CED241CED61421E67
      4A26694C286547215A3C18EBE8E5FFFFFF00F5F4F26C502F5E3F19694D29694C
      2860411D735839AC9D8BA597849D8A759B8A749B8A759A89728D77608E7A629E
      8C779E8D779D8C779F8F7BA99B8BAC9E8D6B502D5F421C694C286A4D2957370F
      826B51FCFCFCF5F4F26C502F5E3F19694D29694C2860411D241CED241CED241C
      ED241CED241CED241CED241CED241CED8E7A62241CED241CED241CED241CED24
      1CED241CED241CED241CED694C286A4D2957370F826B51FCFCFCFFFFFF00FFFF
      FFA2917D56370D694C28694C28694D2962431E4E2C0254330A8F7B608F7C628A
      7459857054877055867155856F548B775D927F668B765A4C2900512E04644620
      694D29694C286749245B3C16B9AEA0FFFFFFFFFFFFA2917D56370D694C28694C
      28241CED241CED241CED241CED241CED241CED241CED241CED87705586715585
      6F54241CED241CED241CED241CED241CED241CED241CED241CED6749245B3C16
      B9AEA0FFFFFFFFFFFF00FFFFFFDBD4CE674A2862441F694C28694C2867492466
      4923D3CBC2A79A8F87715DA69789F8F9F8FFFFFFFFFFFFF1F0EEA09182897563
      B5A9A9BFB5A762441E684B27694C28694C285F401A765E3FEDEAE7FFFFFFFFFF
      FFDBD4CE674A2862441F241CED241CED241CED241CED241CED241CED241CED24
      1CEDF8F9F8FFFFFFFFFFFFF1F0EEA09182241CED241CED241CED241CED241CED
      241CED241CED241CED765E3FEDEAE7FFFFFFFFFFFF00FFFFFFFFFFFFA3927F59
      3810694C29694C27664924654621C5BCB0B4A8A0B0A295C2B6AD9D8A74826B5B
      836B5FA49482C0B6ACAD9F92C0B7B7B5AA9961431C674A25694C28684B285838
      12BFB5AAFFFFFFFFFFFFFFFFFFFFFFFFA3927F241CED241CED241CED241CED24
      1CED241CED241CED241CEDC2B6AD9D8A74826B5B836B5FA49482C0B6ACAD9F92
      241CED241CED241CED241CED241CED241CED241CED241CEDFFFFFFFFFFFFFFFF
      FF00FFFFFFFFFFFFFFFFFF7D65485231076C512D694C286546215C3D179A8870
      9F8D766D51305A3A13593A17593A175A3913745A3BA3937C928167593A136649
      24694C286E522E472400988670FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF241CED24
      1CED241CED241CED241CED241CED241CED9A88709F8D766D51305A3A13593A17
      593A175A3913745A3BA3937C928167593A13241CED241CED241CED241CED241C
      ED241CED241CEDFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFDFFFF6D5433522F05
      694D28694C29684A265E3F175C3D17654723694D296A4C27694C28684C276546
      215C3D165F4019694C27694C29694B27482400917F69FFFFFFFFFFFFFDFDFDFF
      FFFFFFFFFF241CED241CED241CED241CED241CED241CED241CED684A265E3F17
      5C3D17654723694D296A4C27694C28684C276546215C3D165F4019694C27694C
      29241CED241CED241CED241CED241CED241CED241CEDFFFFFF00FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF7E664958381061431D684B266B4E2A694C29694C28694B
      27684C28694C28694C27694C28694D296B4E2A6749245F4019583810978670FF
      FFFFFFFFFFECECECE6E6E6FEFEFE241CED241CED241CED241CED241CED241CED
      241CED61431D684B266B4E2A694C29694C28694B27684C28694C28694C27694C
      28694D296B4E2A6749245F4019583810241CED241CED241CED241CED241CED24
      1CED241CED00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA99A886D52315838
      115A3912674A256C502C6B4F2C6A4E2A6A4E2A6B4F2C6C502C65472258370E5B
      3C16765D3FC0B6AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF241CED241CED
      241CED241CED241CED241CEDA99A886D52315838115A3912674A256C502C6B4F
      2C6A4E2A6A4E2A6B4F2C6C502C65472258370E5B3C16765D3FC0B6AAFFFFFF24
      1CED241CED241CED241CED241CED241CED00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFE6E2DDAFA18E7C614452320D3D17004A2600523107512E0447
      22003E1A005A3C16846D53B9AE9FEDEAE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF241CED241CED241CED241CED241CEDFFFFFFFFFFFFE6E2DDAFA1
      8E7C614452320D3D17004A2600523107512E044722003E1A005A3C16846D53B9
      AE9FEDEAE7FFFFFFFFFFFFFFFFFF241CED241CED241CED241CED241CED00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFAE7E4DFDC
      D6D0C5BDB1AA9D8BB2A797CAC3B9DFDAD5ECE8E5FCFCFCFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF241CED241CED241CEDFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFBFAFAE7E4DFDCD6D0C5BDB1AA9D8BB2A797CA
      C3B9DFDAD5ECE8E5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF241CED
      241CED241CEDFFFFFF00}
    NumGlyphs = 2
  end
  object btnContactabilidad: TBitBtn
    Left = 721
    Top = 178
    Width = 70
    Height = 27
    Cursor = crHandPoint
    Caption = 'Contacto'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
    OnClick = btnContactabilidadClick
    Glyph.Data = {
      AA040000424DAA04000000000000360000002800000013000000130000000100
      18000000000074040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFF4F4F4CCCCCCB5B5B5DEDEDEF3F3F3FEFEFEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFB7B7B75D5C5D8E928E0002007776778182818B8C8BCFCFCFFCFCFC
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFA6AA
      A62325236E736EA9AEA9595C59FFFFFFEEEFEEABADAB797B79878987ACB2ACFF
      FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFC4C4C4000000C0C1C0
      E4E5E4D4D4D4E3E4E2F5F8F9F4F5F3F9FBF9DFE5DFA8AFA87B7F7B616561D2D6
      D2FFFFFFFFFFFF000000FFFFFFFFFFFFFDFFFD555C55919191FFFFFFFFFFFFFF
      FFFFFFFFFFF6F8F9EEEFEEE7ECE7E6EDE6DFE7DFDEE0DEC1C1C1535453909390
      FFFFFF000000FFFFFFFFFFFFAFB0AF424542EFF3EFFFFFFFFFFFFFFFFFFFFFFE
      FFF3F7F9EFF0EEEDEEEDE4EBE4DBE1DBD5DED5DDDBDDEEEDEE7B7B7BD1D1D100
      0000FFFFFFF5F5F56463648C8F8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDFF
      EFF1F2EEEFEEE6ECE6DFE5DFD4DCD4DBD9DBC7C8C7747374D9D9D9000000FFFF
      FFB8B8B8505050C1C1C1DCDFDCEAE9EAFFFFFFFFFFFFFFFFFFF9FDFFF0F2F2EE
      EEEDE4EBE4E2E7E2D9E1D9C5C5C5848784B5B5B5F4F4F4000000F6F6F65D5D5D
      808180ACB3ABA9B0A9B2B6B1EEEDEEFFFFFFFFFFFFFEFEFFF1F0F0F0F1F1E8ED
      E8E6EDE6DEE3DE8A8F8AB7B6B7FFFFFFFFFFFF000000F1F1F1828281A9B1AAC0
      CAC576747A707276B4BBB8EAEBEBFFFFFFFFFFFFF0F3F6F2F2F0E8EEE8E8EEE8
      DBE2DB5D5B5DFFFFFFFFFFFFFFFFFF000000D3D3D3777878A2A8A45F5B56544E
      463D362E5A554EB0B2B1FFFFFFFFFFFFF3F8FCF1EFEEEAEEEAFAFFFA616361C5
      C5C5FFFFFFFFFFFFFFFFFF000000E1E1E151545A5754279E8D00BFB100C1B400
      A19000595223DFDFE3FFFFFFFCFCFCEEEEEFFDFDFDC5CCC5515351FFFFFFFFFF
      FFFFFFFFFFFFFF000000FFFFFF8F909A757200DBE3028A7E008B7E00D3D9035E
      5E00C9C8CAFFFFFFFDFDFEF4F4F6FEFFFD5E605EE5E5E5FFFFFFFFFFFFFFFFFF
      FFFFFF000000FFFFFFC4C3CC6E7304595C09769400B5B4066F740E9D9807E2E1
      DCFFFFFFFDFEFFFCFEFFCBCBCA7A7A7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
      0000FFFFFFFFFFFFB7BABB0000169EA100D8D600000000130E1AC9C9CBFDFDFD
      FFFFFFFFFFFF585958D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
      FFFFFFFFF2F3FA7085542C4D0C4C5A04637740E4EBF2727873747774B7BAB792
      93929DA19DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
      818683A6B600F9FF00F6FF00B5C400878E79FFFFFFD8DBD7979B97838683DFE0
      DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA3A39DAD
      AE00B4B600B3B400AFB100A7A991F2F2F9FFFFFFFFFFFFF1F1F1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFCFCFFEEEFDFE1E3
      C4E1E3C4EAECD8FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFF000000}
    Spacing = -1
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 250
    OnTimer = Timer1Timer
    Left = 561
    Top = 10
  end
  object CDSVALIDA: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Descripcion'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Flag'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Campo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Objeto'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Tiempo'
        DataType = ftInteger
      end
      item
        Name = 'validado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'feccad'
        DataType = ftDate
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 690
    Top = 405
    Data = {
      C30000009619E0BD010000001800000007000000000003000000C3000B446573
      6372697063696F6E010049000000010005574944544802000200140004466C61
      6701004900000001000557494454480200020001000543616D706F0100490000
      000100055749445448020002001400064F626A65746F01004900000001000557
      49445448020002001400065469656D706F04000100000000000876616C696461
      646F010049000000010005574944544802000200010006666563636164040006
      00000000000000}
  end
  object DSVALIDA: TDataSource
    DataSet = CDSVALIDA
    Left = 658
    Top = 405
  end
  object ppBDEReniec: TppBDEPipeline
    UserName = 'BDEReniec'
    Left = 32
    Top = 24
  end
  object ppRReniec: TppReport
    AutoStop = False
    DataPipeline = ppBDEReniec
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
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 120
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 64
    Top = 80
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppBDEReniec'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 11377
      mmPrintPosition = 0
      object ppShape41: TppShape
        UserName = 'Shape41'
        Brush.Color = 14341846
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 0
        mmTop = 5556
        mmWidth = 125413
        BandType = 0
      end
      object ppLabel21: TppLabel
        UserName = 'Label11'
        Caption = 'DATOS PERSONALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 41275
        mmTop = 6879
        mmWidth = 29845
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 198438
      mmPrintPosition = 0
      object ppShape79: TppShape
        UserName = 'Shape602'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 162719
        mmWidth = 83873
        BandType = 4
      end
      object ppShape78: TppShape
        UserName = 'Shape78'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 156898
        mmWidth = 83873
        BandType = 4
      end
      object ppShape76: TppShape
        UserName = 'Shape76'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 156513
        mmWidth = 40481
        BandType = 4
      end
      object ppShape77: TppShape
        UserName = 'Shape77'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 162093
        mmWidth = 40481
        BandType = 4
      end
      object ppShape75: TppShape
        UserName = 'Shape601'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 151342
        mmWidth = 83873
        BandType = 4
      end
      object ppShape74: TppShape
        UserName = 'Shape74'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 265
        mmTop = 150932
        mmWidth = 40481
        BandType = 4
      end
      object ppShape40: TppShape
        UserName = 'Shape201'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 128588
        mmWidth = 83873
        BandType = 4
      end
      object ppShape39: TppShape
        UserName = 'Shape30'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 128588
        mmWidth = 40481
        BandType = 4
      end
      object ppShape29: TppShape
        UserName = 'Shape29'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 123031
        mmWidth = 40481
        BandType = 4
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5822
        mmLeft = 0
        mmTop = 95250
        mmWidth = 40480
        BandType = 4
      end
      object ppShape69: TppShape
        UserName = 'Shape69'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 84138
        mmWidth = 83874
        BandType = 4
      end
      object ppShape71: TppShape
        UserName = 'Shape71'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5822
        mmLeft = 0
        mmTop = 73010
        mmWidth = 40481
        BandType = 4
      end
      object ppShape32: TppShape
        UserName = 'Shape32'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 67455
        mmWidth = 40481
        BandType = 4
      end
      object ppShape67: TppShape
        UserName = 'Shape67'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 61913
        mmWidth = 83874
        BandType = 4
      end
      object ppShape66: TppShape
        UserName = 'Shape66'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 61900
        mmWidth = 40480
        BandType = 4
      end
      object ppShape65: TppShape
        UserName = 'Shape102'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 41540
        mmTop = 28575
        mmWidth = 83874
        BandType = 4
      end
      object ppShape64: TppShape
        UserName = 'Shape64'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 0
        mmTop = 28570
        mmWidth = 40480
        BandType = 4
      end
      object ppShape31: TppShape
        UserName = 'Shape31'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 73025
        mmWidth = 83874
        BandType = 4
      end
      object ppShape28: TppShape
        UserName = 'Shape28'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 106363
        mmWidth = 83873
        BandType = 4
      end
      object ppShape26: TppShape
        UserName = 'Shape26'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 45244
        mmWidth = 83874
        BandType = 4
      end
      object ppShape21: TppShape
        UserName = 'Shape21'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 56356
        mmWidth = 83874
        BandType = 4
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 41540
        mmTop = 6350
        mmWidth = 83874
        BandType = 4
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 0
        mmTop = 6350
        mmWidth = 40480
        BandType = 4
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5555
        mmLeft = 0
        mmTop = 794
        mmWidth = 40480
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Caption = 'Nro. de Libro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 1852
        mmWidth = 16404
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Caption = 'D.N.I.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 7408
        mmWidth = 7408
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 0
        mmTop = 11906
        mmWidth = 40480
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 41540
        mmTop = 11906
        mmWidth = 83874
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape7'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 0
        mmTop = 17460
        mmWidth = 40480
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 41540
        mmTop = 17463
        mmWidth = 83874
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 0
        mmTop = 23015
        mmWidth = 40480
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5556
        mmLeft = 41540
        mmTop = 23019
        mmWidth = 83874
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 95250
        mmWidth = 83874
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5822
        mmLeft = 0
        mmTop = 89695
        mmWidth = 40480
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 67470
        mmWidth = 40480
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Caption = 'N'#250'mero documento alterno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 68792
        mmWidth = 34396
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Caption = 'Lugar de Nacimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 96573
        mmWidth = 26194
        BandType = 4
      end
      object ppShape14: TppShape
        UserName = 'Shape14'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 67469
        mmWidth = 83874
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 34125
        mmWidth = 40480
        BandType = 4
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 34131
        mmWidth = 83874
        BandType = 4
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 39680
        mmWidth = 40480
        BandType = 4
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 39688
        mmWidth = 83874
        BandType = 4
      end
      object ppShape20: TppShape
        UserName = 'Shape101'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 89694
        mmWidth = 83874
        BandType = 4
      end
      object ppShape22: TppShape
        UserName = 'Shape22'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 56345
        mmWidth = 40481
        BandType = 4
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 50800
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Caption = 'Estatura'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 52123
        mmWidth = 10583
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 57679
        mmWidth = 6350
        BandType = 4
      end
      object ppShape24: TppShape
        UserName = 'Shape24'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 50800
        mmWidth = 83874
        BandType = 4
      end
      object ppShape25: TppShape
        UserName = 'Shape25'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 45244
        mmWidth = 40481
        BandType = 4
      end
      object ppShape27: TppShape
        UserName = 'Shape27'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5822
        mmLeft = 0
        mmTop = 106340
        mmWidth = 40481
        BandType = 4
      end
      object ppShape33: TppShape
        UserName = 'Shape33'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 111895
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Caption = 'Restricciones'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 113242
        mmWidth = 16933
        BandType = 4
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        Caption = 'Fecha de Inscripci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 74348
        mmWidth = 26194
        BandType = 4
      end
      object ppShape34: TppShape
        UserName = 'Shape34'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 111919
        mmWidth = 83873
        BandType = 4
      end
      object ppShape35: TppShape
        UserName = 'Shape35'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5822
        mmLeft = 0
        mmTop = 100785
        mmWidth = 40481
        BandType = 4
      end
      object ppShape36: TppShape
        UserName = 'Shape36'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5822
        mmLeft = 41010
        mmTop = 100806
        mmWidth = 83873
        BandType = 4
      end
      object ppShape37: TppShape
        UserName = 'Shape37'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5822
        mmLeft = 0
        mmTop = 78565
        mmWidth = 40481
        BandType = 4
      end
      object ppShape38: TppShape
        UserName = 'Shape38'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41540
        mmTop = 78581
        mmWidth = 83874
        BandType = 4
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        Caption = 'Apellido Paterno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 12965
        mmWidth = 20902
        BandType = 4
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        Caption = 'Apellido Materno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 18521
        mmWidth = 21167
        BandType = 4
      end
      object ppLabel11: TppLabel
        UserName = 'Label101'
        Caption = 'Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 24077
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        Caption = 'Nombre del Padre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 35454
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        Caption = 'Nombre de la Madre'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 41010
        mmWidth = 25665
        BandType = 4
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        Caption = 'Fecha de Nacimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 91017
        mmWidth = 26723
        BandType = 4
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        Caption = 'Estado Civil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 46567
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        Caption = 'Grado de Instrucci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1323
        mmTop = 107686
        mmWidth = 26458
        BandType = 4
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        Caption = 'Constancia de Votaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 102129
        mmWidth = 29898
        BandType = 4
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        Caption = 'Fecha de Emisi'#243'n de Docum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 79904
        mmWidth = 37306
        BandType = 4
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5555
        mmLeft = 41540
        mmTop = 794
        mmWidth = 83873
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        DataField = 'NUMLIB'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 1852
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        DataField = 'DNI'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 7408
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        DataField = 'APEPAT'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 12965
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        DataField = 'APEMAT'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 18521
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        DataField = 'NOMBRE'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 24077
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        DataField = 'LUGNAC'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 42863
        mmTop = 96573
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        DataField = 'NOMPAD'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 35454
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        DataField = 'NOMMAD'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3439
        mmLeft = 43127
        mmTop = 41010
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        DataField = 'FECNAC'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 42863
        mmTop = 91017
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        DataField = 'ESTATURA'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3439
        mmLeft = 43127
        mmTop = 52123
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        DataField = 'FECEMIDOC'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 79904
        mmWidth = 79639
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        DataField = 'FECINS'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 74348
        mmWidth = 79639
        BandType = 4
      end
      object ppFirma: TppImage
        UserName = 'Firma'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        mmHeight = 34925
        mmLeft = 124619
        mmTop = 61383
        mmWidth = 70644
        BandType = 4
      end
      object ppFoto: TppImage
        UserName = 'Foto'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        mmHeight = 51329
        mmLeft = 139436
        mmTop = 2646
        mmWidth = 35190
        BandType = 4
      end
      object ppLabel143: TppLabel
        UserName = 'Label143'
        Caption = 'Nombre de Casada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 29633
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        DataField = 'APECAS'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 29633
        mmWidth = 79639
        BandType = 4
      end
      object ppLabel144: TppLabel
        UserName = 'Label144'
        Caption = 'Tipo documento alterno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 63236
        mmWidth = 29633
        BandType = 4
      end
      object ppDBText30: TppDBText
        UserName = 'DBText30'
        DataField = 'NUMDOCSUS'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 68792
        mmWidth = 79639
        BandType = 4
      end
      object pplDocAltRepRen: TppLabel
        UserName = 'lDocAltRepRen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 43127
        mmTop = 63236
        mmWidth = 79639
        BandType = 4
      end
      object ppShape68: TppShape
        UserName = 'Shape68'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5822
        mmLeft = 0
        mmTop = 84120
        mmWidth = 40480
        BandType = 4
      end
      object ppLabel146: TppLabel
        UserName = 'Label146'
        Caption = 'Fecha de Expiraci. de Docum.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 1058
        mmTop = 85461
        mmWidth = 38015
        BandType = 4
      end
      object ppDBText31: TppDBText
        UserName = 'DBText31'
        DataField = 'FECEXP'
        DataPipeline = ppBDEReniec
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 3440
        mmLeft = 43127
        mmTop = 85461
        mmWidth = 79639
        BandType = 4
      end
      object pplEstCivRepRen: TppLabel
        UserName = 'lDocAlt1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 43127
        mmTop = 46567
        mmWidth = 79639
        BandType = 4
      end
      object pplSexoRepRen: TppLabel
        UserName = 'lSexoRepRen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3429
        mmLeft = 43127
        mmTop = 57415
        mmWidth = 79639
        BandType = 4
      end
      object pplEstVotRepRen: TppLabel
        UserName = 'lDocAltRepRen1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 102129
        mmWidth = 79639
        BandType = 4
      end
      object pplGraInsRepRen: TppLabel
        UserName = 'lGraInsRepRen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 107686
        mmWidth = 79639
        BandType = 4
      end
      object pplResRepRen: TppLabel
        UserName = 'lGraInsRepRen1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 113242
        mmWidth = 79639
        BandType = 4
      end
      object ppShape72: TppShape
        UserName = 'Shape72'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 117450
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel145: TppLabel
        UserName = 'Label145'
        Caption = 'Domicilio - Ubigeo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 118798
        mmWidth = 23029
        BandType = 4
      end
      object ppShape73: TppShape
        UserName = 'Shape73'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 117475
        mmWidth = 83873
        BandType = 4
      end
      object pplLugDomRepRen: TppLabel
        UserName = 'lLugDomRepRen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 118798
        mmWidth = 79639
        BandType = 4
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        Caption = 'Domicilio - Prefijo Urbanizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 124354
        mmWidth = 39412
        BandType = 4
      end
      object ppShape30: TppShape
        UserName = 'Shape20'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41010
        mmTop = 123031
        mmWidth = 83873
        BandType = 4
      end
      object pplPreUrbImpRen: TppLabel
        UserName = 'lLugDomRepRen1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 124354
        mmWidth = 79639
        BandType = 4
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        Caption = 'Domicilio - Desc. Urbanizaci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 129911
        mmWidth = 38650
        BandType = 4
      end
      object pplDesUrbImpRen: TppLabel
        UserName = 'lDesUrbImpRen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 129911
        mmWidth = 79639
        BandType = 4
      end
      object ppShape60: TppShape
        UserName = 'Shape60'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 139700
        mmWidth = 83873
        BandType = 4
      end
      object ppShape61: TppShape
        UserName = 'Shape301'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 265
        mmTop = 139771
        mmWidth = 40481
        BandType = 4
      end
      object ppShape62: TppShape
        UserName = 'Shape62'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 265
        mmTop = 134191
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel141: TppLabel
        UserName = 'Label141'
        Caption = 'Domicilio - Prefijo Direcci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 135467
        mmWidth = 34756
        BandType = 4
      end
      object ppShape63: TppShape
        UserName = 'Shape202'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 134144
        mmWidth = 83873
        BandType = 4
      end
      object pplPreDirImpRen: TppLabel
        UserName = 'lPreDirImpRen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 135467
        mmWidth = 79639
        BandType = 4
      end
      object ppLabel147: TppLabel
        UserName = 'Label208'
        Caption = 'Domicilio - Desc. Direcci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 141023
        mmWidth = 33994
        BandType = 4
      end
      object pplDesDirImpRen: TppLabel
        UserName = 'lDesUrbImpRen1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 141023
        mmWidth = 79639
        BandType = 4
      end
      object ppLabel142: TppLabel
        UserName = 'Label142'
        Caption = 'Domicilio - Etapa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 152136
        mmWidth = 21431
        BandType = 4
      end
      object pplEtaDirImpRen: TppLabel
        UserName = 'lEtaDirImpRen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42333
        mmTop = 152665
        mmWidth = 79639
        BandType = 4
      end
      object ppLabel149: TppLabel
        UserName = 'Label149'
        Caption = 'Domicilio - Prefijo Bloque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 157957
        mmWidth = 31750
        BandType = 4
      end
      object ppLabel150: TppLabel
        UserName = 'Label150'
        Caption = 'Domicilio - Descripci'#243'n Bloque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 163513
        mmWidth = 38629
        BandType = 4
      end
      object pplPreBloImpRen: TppLabel
        UserName = 'lPreDirImpRen1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42333
        mmTop = 158221
        mmWidth = 79639
        BandType = 4
      end
      object pplDesBloImpRen: TppLabel
        UserName = 'lDesBloImpRen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42333
        mmTop = 164042
        mmWidth = 79639
        BandType = 4
      end
      object ppShape80: TppShape
        UserName = 'Shape80'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 173832
        mmWidth = 83873
        BandType = 4
      end
      object ppShape83: TppShape
        UserName = 'Shape83'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 168275
        mmWidth = 83873
        BandType = 4
      end
      object ppShape84: TppShape
        UserName = 'Shape84'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 167673
        mmWidth = 40481
        BandType = 4
      end
      object ppShape85: TppShape
        UserName = 'Shape85'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 173254
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel153: TppLabel
        UserName = 'Label153'
        Caption = 'Domicilio - Prefijo Interior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 169069
        mmWidth = 31750
        BandType = 4
      end
      object ppLabel162: TppLabel
        UserName = 'Label1501'
        Caption = 'Domicilio - Descripci'#243'n Interior'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 174625
        mmWidth = 38629
        BandType = 4
      end
      object pplPreIntImpren: TppLabel
        UserName = 'lPreIntImpren'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42333
        mmTop = 169598
        mmWidth = 79639
        BandType = 4
      end
      object pplDesIntImpRen: TppLabel
        UserName = 'lDesBloImpRen1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42333
        mmTop = 175155
        mmWidth = 79639
        BandType = 4
      end
      object ppShape86: TppShape
        UserName = 'Shape603'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41275
        mmTop = 145521
        mmWidth = 83873
        BandType = 4
      end
      object ppShape87: TppShape
        UserName = 'Shape87'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 265
        mmTop = 145352
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel163: TppLabel
        UserName = 'Label163'
        Caption = 'Domicilio - N'#250'mero Direcci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 794
        mmTop = 146579
        mmWidth = 36777
        BandType = 4
      end
      object pplNumDirImpRen: TppLabel
        UserName = 'lNumDirImpRen'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42863
        mmTop = 146844
        mmWidth = 79639
        BandType = 4
      end
      object ppShape88: TppShape
        UserName = 'Shape801'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41804
        mmTop = 184415
        mmWidth = 83873
        BandType = 4
      end
      object ppShape89: TppShape
        UserName = 'Shape89'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 41804
        mmTop = 178859
        mmWidth = 83873
        BandType = 4
      end
      object ppShape90: TppShape
        UserName = 'Shape90'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 178859
        mmWidth = 40481
        BandType = 4
      end
      object ppShape91: TppShape
        UserName = 'Shape91'
        Brush.Color = 15395048
        Pen.Color = clWindow
        mmHeight = 5821
        mmLeft = 0
        mmTop = 184415
        mmWidth = 40481
        BandType = 4
      end
      object ppLabel164: TppLabel
        UserName = 'Label164'
        Caption = 'Domicilio - Manzana'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 180182
        mmWidth = 25654
        BandType = 4
      end
      object ppLabel165: TppLabel
        UserName = 'Label165'
        Caption = 'Domicilio - Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 794
        mmTop = 185738
        mmWidth = 19600
        BandType = 4
      end
      object pplManImpren: TppLabel
        UserName = 'lPreIntImpren1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 42333
        mmTop = 180182
        mmWidth = 79639
        BandType = 4
      end
      object pplLotImpren: TppLabel
        UserName = 'lLotImpren'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 42333
        mmTop = 185738
        mmWidth = 79639
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object PPR1: TppReport
    AutoStop = False
    DataPipeline = PPDBP1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296863
    PrinterSetup.mmPaperWidth = 210079
    PrinterSetup.PaperSize = 9
    Template.FileName = 
      'C:\Documents and Settings\irevilla.DERRAMA\Escritorio\FORMULARIO' +
      '.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 120
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = False
    Left = 360
    Top = 397
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'PPDBP1'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand2: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 289719
      mmPrintPosition = 0
      object ppShape42: TppShape
        UserName = 'Shape1'
        Pen.Width = 2
        mmHeight = 34131
        mmLeft = 145257
        mmTop = 7144
        mmWidth = 42069
        BandType = 4
      end
      object ppDBBarCode1: TppDBBarCode
        UserName = 'DBBarCode1'
        BarCodeType = bcCode39
        BarColor = clWindowText
        DataField = 'IDIMAGE'
        DataPipeline = PPDBP1
        Alignment = taCenter
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'PPDBP1'
        mmHeight = 12435
        mmLeft = 145786
        mmTop = 42069
        mmWidth = 42069
        BandType = 4
        mmBarWidth = 254
        mmWideBarRatio = 76200
      end
      object ppLabel22: TppLabel
        UserName = 'Label3'
        Caption = 'C'#243'digo Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 125942
        mmWidth = 23283
        BandType = 4
      end
      object ppLabel24: TppLabel
        UserName = 'Label6'
        Caption = 'Apellido Paterno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 44450
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel25: TppLabel
        UserName = 'Label7'
        Caption = 'Apellido Materno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 49213
        mmWidth = 25929
        BandType = 4
      end
      object ppLabel26: TppLabel
        UserName = 'Label9'
        Caption = 'Doc. Identidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 63500
        mmWidth = 23283
        BandType = 4
      end
      object ppLabel27: TppLabel
        UserName = 'Label10'
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 70115
        mmTop = 68263
        mmWidth = 7408
        BandType = 4
      end
      object ppLabel28: TppLabel
        UserName = 'Label101'
        Caption = 'F. de Nacimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 68263
        mmWidth = 26458
        BandType = 4
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        Caption = 'Centro Laboral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 131234
        mmWidth = 22490
        BandType = 4
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        Caption = 'D. Domiciliaria '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 73025
        mmWidth = 24077
        BandType = 4
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        Caption = 'Telefono Domicilio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 82550
        mmWidth = 27781
        BandType = 4
      end
      object ppMaquina: TppLabel
        UserName = 'Label21'
        Caption = 'tmaquina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 29104
        mmTop = 267230
        mmWidth = 11642
        BandType = 4
      end
      object ppLabel80: TppLabel
        UserName = 'Label26'
        Caption = 'Equipo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 10054
        mmTop = 267230
        mmWidth = 9525
        BandType = 4
      end
      object pplCodMod: TppLabel
        UserName = 'Label31'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 43921
        mmTop = 125942
        mmWidth = 29898
        BandType = 4
      end
      object ppLApePat: TppLabel
        UserName = 'Label52'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 45244
        mmTop = 44715
        mmWidth = 64029
        BandType = 4
      end
      object ppLApeMat: TppLabel
        UserName = 'Label79'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 45244
        mmTop = 49213
        mmWidth = 64029
        BandType = 4
      end
      object ppLNombres: TppLabel
        UserName = 'Label80'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 45244
        mmTop = 53975
        mmWidth = 64029
        BandType = 4
      end
      object ppLDni: TppLabel
        UserName = 'LDni'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 45244
        mmTop = 63500
        mmWidth = 23283
        BandType = 4
      end
      object ppLFecNac: TppLabel
        UserName = 'LFecNac'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 45244
        mmTop = 68263
        mmWidth = 23019
        BandType = 4
      end
      object ppLsexo: TppLabel
        UserName = 'Lsexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 84138
        mmTop = 68263
        mmWidth = 22754
        BandType = 4
      end
      object pptelefono: TppLabel
        UserName = 'telefono'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 45508
        mmTop = 82815
        mmWidth = 41804
        BandType = 4
      end
      object ppLAsoCenLab: TppLabel
        UserName = 'LAsoCenLab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 43392
        mmTop = 131498
        mmWidth = 80433
        BandType = 4
      end
      object ppUsuario: TppLabel
        UserName = 'Usuario'
        Caption = 'tusuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 29104
        mmTop = 271198
        mmWidth = 10054
        BandType = 4
      end
      object ppLabel82: TppLabel
        UserName = 'Label82'
        Caption = 'Usuario :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 10054
        mmTop = 271198
        mmWidth = 11345
        BandType = 4
      end
      object ppLabel84: TppLabel
        UserName = 'Label84'
        Caption = 'Fecha y Hora:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 10054
        mmTop = 275167
        mmWidth = 17780
        BandType = 4
      end
      object ppFechaHora: TppLabel
        UserName = 'FechaHora'
        Caption = 'tFecha y Hora'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 29104
        mmTop = 275167
        mmWidth = 17727
        BandType = 4
      end
      object ppLAsodir: TppLabel
        UserName = 'LCodPag1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 45244
        mmTop = 73025
        mmWidth = 129911
        BandType = 4
      end
      object ppLabel29: TppLabel
        UserName = 'Label301'
        Caption = 'Direcci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 12700
        mmTop = 136261
        mmWidth = 14023
        BandType = 4
      end
      object ppLUbigeoDir: TppLabel
        UserName = 'LCodPag2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 45244
        mmTop = 78052
        mmWidth = 129911
        BandType = 4
      end
      object ppLAsoDirLab: TppLabel
        UserName = 'LAsoDirLab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 43392
        mmTop = 136525
        mmWidth = 129911
        BandType = 4
      end
      object ppLabel31: TppLabel
        UserName = 'Label2'
        Caption = 'DATOS PERSONALES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4763
        mmLeft = 12700
        mmTop = 38629
        mmWidth = 39423
        BandType = 4
      end
      object ppLabel32: TppLabel
        UserName = 'Label15'
        Caption = 'Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 53975
        mmWidth = 13229
        BandType = 4
      end
      object ppLUbigeoLab: TppLabel
        UserName = 'LUbigeoLab'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 43392
        mmTop = 141288
        mmWidth = 75406
        BandType = 4
      end
      object ppLabel33: TppLabel
        UserName = 'Label4'
        Caption = 'FICHA DE ACTUALIZACION DE DATOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5927
        mmLeft = 35951
        mmTop = 26194
        mmWidth = 88371
        BandType = 4
      end
      object ppImage2: TppImage
        UserName = 'Image2'
        MaintainAspectRatio = False
        Stretch = True
        Picture.Data = {
          0A544A504547496D616765451C0000FFD8FFE000104A46494600010101006000
          600000FFE100164578696600004D4D002A00000008000000000000FFEC001144
          75636B7900010004000000640000FFE10380687474703A2F2F6E732E61646F62
          652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D22
          EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B6339
          64223F3E0D0A3C783A786D706D65746120786D6C6E733A783D2261646F62653A
          6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F72
          6520352E332D633031312036362E3134353636312C20323031322F30322F3036
          2D31343A35363A32372020202020202020223E0D0A093C7264663A5244462078
          6D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F31393939
          2F30322F32322D7264662D73796E7461782D6E7323223E0D0A09093C7264663A
          4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A78
          6D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E
          302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E6164
          6F62652E636F6D2F7861702F312E302F73547970652F5265736F757263655265
          66232220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E63
          6F6D2F7861702F312E302F2220786D704D4D3A4F726967696E616C446F63756D
          656E7449443D22786D702E6469643A3838424232313941384536394533313139
          3530364335414333303344354330382220786D704D4D3A446F63756D656E7449
          443D22786D702E6469643A344245303343444136393938313145333832354638
          46314639373642313741362220786D704D4D3A496E7374616E636549443D2278
          6D702E6969643A34424530334344393639393831314533383235463846314639
          373642313741362220786D703A43726561746F72546F6F6C3D2241646F626520
          50686F746F73686F7020435336202857696E646F777329223E0D0A0909093C78
          6D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549
          443D22786D702E6969643A384642423231394138453639453331313935303643
          3541433330334435433038222073745265663A646F63756D656E7449443D2278
          6D702E6469643A38384242323139413845363945333131393530364335414333
          30334435433038222F3E0D0A09093C2F7264663A4465736372697074696F6E3E
          0D0A093C2F7264663A5244463E0D0A3C2F783A786D706D6574613E0D0A3C3F78
          7061636B657420656E643D2777273F3EFFDB0043000201010201010202020202
          020202030503030303030604040305070607070706070708090B0908080A0807
          070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303
          060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800
          2A010403012200021101031101FFC4001F000001050101010101010000000000
          0000000102030405060708090A0BFFC400B51000020103030204030505040400
          00017D01020300041105122131410613516107227114328191A1082342B1C115
          52D1F02433627282090A161718191A25262728292A3435363738393A43444546
          4748494A535455565758595A636465666768696A737475767778797A83848586
          8788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2
          C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5
          F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405
          060708090A0BFFC400B511000201020404030407050404000102770001020311
          04052131061241510761711322328108144291A1B1C109233352F0156272D10A
          162434E125F11718191A262728292A35363738393A434445464748494A535455
          565758595A636465666768696A737475767778797A82838485868788898A9293
          9495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8
          C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA00
          0C03010002110311003F00F9ABFE0E1FFF0082967C41FDA93F6E5F1EFC396D73
          52D2BE1B7C36D626D02C341B79DA3B6BA9ED98C535DDC2A902691A557D858109
          1ED0A012ECFF009DC667ECCFF9D7D01FF0563FF949E7ED05FF0065075BFF00D2
          D96B4F4AFF00823CFED39AD7C0D1F11ED3E0BF8CE5F0A3DA7DBD26F2231792DB
          1008992CCB7DA9E32A7707588A95F987CBCD4DF503E6CF35F19DEDF9D2F9ADFD
          F7AFB4BF6A2FF82737883E2FFED73E16F017C01F86FA8EAF737BF0D7C31E22BD
          B2D3D99A2864BAD26DA6B8BA9A699F642AF34A725DD53738031902BCCFC3DFF0
          49AFDA3BC53F1FB53F85D65F087C5CDE36D16DD6F2F6CA5863860B6B762C1276
          BA765B7F29CAB849049B1CA90A5882286070DFB277ED8FF11BF623F8B9A778DB
          E1B789B51F0FEB1612A3C91C5337D97518C364C17310216685B1CA37D460E08F
          EC6BF663F8D317ED1FFB38F807E214366DA745E38F0F586BCB68CFBCDAFDA6DD
          26F2F7606EDBBF19C0CE2BF8C5F8E7F00FC67FB32FC4CD4BC1BE3EF0DEADE13F
          13E9440B9D3F5084C52A06195707A3A30C15752558104120D7F5F5FF0004B1FF
          009468FECFFF00F64F342FFD20868881EF545799FED23FB647C2BFD90345B3D4
          3E27F8FF00C2DE08B7D498A598D56F9219AF0A901BCA8FEFC81772EE2AA42E46
          715F9B9FF0516FF82B37C42F0C7FC1537F657F0CFC18F89DA45EFC1CF8B0DA3F
          DB9B4CB5B1D4AD357136B525ADC05B868DDD4F96A10847528C0F46CD55C0FD6F
          A2BCA7F690FDB83E107EC7E2C47C4EF88FE12F04CDA902F696FA9EA0915CDCA0
          382E9172EC80F0582E01EA6B6744FDA8FE1BF897E095C7C4AD3BC79E13D43E1F
          DA4125D4FE22B7D521974D8238FF00D633CEAC5176F4604820F071401DED15E3
          FA7FEDFBF04F57D3BC1F7967F153C0D796BF102F27D3FC392DBEAD14A9ACCF06
          44E909527708C8C337DD562A09058034E0FF00828EFC05BBF8751F8BADFE2F7C
          3FBAF0CCBAD47E1C8F52B7D6619ADE5D4A45564B456563BA528C1F68C9099638
          504800F6CA2BC37E2BFF00C14CBF67BF819E329BC3BE2EF8D1F0DB41D7AD6630
          5CE9F73AFDB8B8B4901C149503131303D43E0D765E2BFDAAFE19F81BE0DDBFC4
          5D5FC7FE0EB0F00DDF97E4788A5D5A01A5CFE636D4D9701BCB6DCDC0C1393401
          E814578578EBFE0A6FFB3DFC33D43C2B6BAF7C65F879A4CDE36B38B51D17ED1A
          CC2A97D6B2E7CAB90D9DA90B9042C8E5558A9C1383573E34FF00C1453E04FECE
          5F12AD3C1DE3BF8B5E03F0AF89EF7632E9DA8EAD1453C2AE0146941388558105
          5A42A08E4645007B4D15C2FC63FDA6FE1CFECF3E15B5D77C77E3BF08F83F48BE
          CFD96EF58D5A0B38AEFE50D888C8C3CC3820E172706B13F67AFDB83E0FFED617
          7796DF0D7E25F82FC6D7BA7C7E75CDA693AAC571736F1EE0BE63C40EF54DC40D
          C57193D6803D568AA9AAEB365A1C514B7B776B671CF3476D1B4F2AC6B24B2384
          8E3049E59988551D49200E4D721E13FDA7BE1AF8F7E276A5E09D0BE21781F5AF
          19E8C6417FA0D8EBB6B71A9D918D82C825B6473226D62036E51827071401DD51
          5C1FFC3527C32FF85C1FF0AF3FE162F817FE13FCEDFF00846BFB7AD7FB5F3B3C
          CC7D977F9B9D9F3E36FDDE7A735AFF0014BE32F843E06F865B5BF1B78AFC37E0
          FD151C46D7FADEA7069F6C18F45F326655C9F4CD0074B4573FF0D3E2B785FE33
          F84A0D7FC1DE24D07C59A0DD332C3A8E8FA8437F692953860B2C4CC8483C100F
          15CE78FF00F6B9F853F0A3C7D6BE14F14FC4DF87BE1AF145F797F67D1F55F115
          9D9DFCFE61C47B20924591B71E170393D33401E879A01CF4AF3CF8F9AB6ABAE7
          C30F1058F82BC7DE1AF0478A74FB9B385B56D4ADA3D46DF4A669A0768A681A48
          FE69A06D881994E664619E01B9F18BF695F873FB3BC7A7BF8FFC7DE0AF0326AC
          CC9627C41ADDB6982F5971B847E73AEF2372E42E7191EB401DBD15F367EDC1FF
          000510F0EFEC8D79F06D575AF04CD0FC4DF19D86897326A3ACC56E2D7499E1B8
          797528CEEC3471B4712EF3FBBFDE8C91915ECDE16F8F7E05F1D7816FFC53A1F8
          D3C27ACF85F4A328BDD62C757B7B8B0B3F294349E64E8E634D8A4336E2368393
          8A00EB68271D6B8BF83BFB45FC3EFDA26C2F2EFE1FF8EFC1DE39B4D3A458AEA6
          F0FEB36DA9C76CEC32AAED0BB05247201C671577C49F19FC1FE0EF0F43ABEAFE
          2CF0D695A45CDE8D321BDBCD4E082DA5BB329885BAC8CC14CBE62B26C0776E05
          71918A00E9F70F514138EB5E77F0BB5DD47C0BF0EB5ED4FC7BE3DF0CEBD0D86A
          FA94EDABC30C5A6D9E9766B7327976B31F31943DBA0F2DE4620968C9600E6AEF
          C1EFDA57E1CFED0F1DF3F803C7FE0AF1CA696CAB78DE1FD72DB531685B3B449E
          43B6C270719C6706803B7A2BE73FD80FE3B78AFE34EB9F1FA1F13EAA9A947E0A
          F8B5AB78674602DA387EC7A7416B6324507C806FDAD34877B658EEE4F0305007
          E067C3BF0A784FC6FF00F07416BFA5F8D6DF4CBCD1AE7E2CEBC61B5D40E2D2F3
          50592EDF4F8641FC4B25EADB2143C36EDA7209AF8E7C7DF1CFE345D7ED8BA8F8
          C75BD7FC6D6DF1B61D79D67BAF3268758B5D4965319811570F1B238F2C44A005
          002050005AE9FF00E0AB1712597FC150FE3FCD0BBC5345F10F5A747462AC8C2F
          A52083D88EB9AEDED3FE0B7DF1DEDB4C86E5EEBC0579E3AB6B75B383E20DD783
          F4E9BC63142B0F92146A4D1194BF97C79CD99BBEFCF352D81F63FF00C16EBE22
          78866FD95BE2AEAF75796DA678A3C5FF0014FC2BE1EF1C0D26E0795797363E0A
          B59A7D3A468D8ABC56D7D2CC7CB390B2E7F8901AF95BE31FED03E38D73FE0855
          F083C3179E2BD66E7C3E3E256BFA71B07B8631B5B5AD969B35B40DDDA38A5BBB
          8754276A99781F2AEDF9BF5FFDAC3C6DE2AFD9DEE3E186A7A926A3E1BBCF184B
          E3AB896E63F36FEE75596D85B4934970C4BB868C64827963BBAD666B7F1FFC43
          AF7ECFBA0FC31B896CCF85BC39ADDEF882C904004E2EAEE1B78662D27565296D
          1617B1CFAF05C0FA63F6E6D5AEBC71FF0004A9FD8D3C43ACCF36A9AF2AF8C342
          FED2BA632DD369F67A85AFD92D4C87E66860134A234271187217038AFE96BFE0
          965FF28D2FD9FF00FEC9EE85FF00A6F86BF915F1E7ED29E28F893F017C01F0DF
          549EC9FC2FF0D26D4E7D1238ED9639A36D4258E5B9F324EB265E24C67EE8AFEB
          ABFE0963FF0028D1FD9FFF00EC9E685FFA410D34C0FC7CF853F00BC39FF0574F
          F8391FE37E83F1DAEAF356F0FF00C3CFED38348F0F3DEC96D1DE416175159DBD
          B2956574882CAF72CB1152EFB98F0CF9E53F6E9FD817E1AFEC17FF000707FECC
          BE19F86493695E1BF13F88BC35ADCBA1B5E49729A3CCFAC792CB1348CCE12410
          870ACC4862D8C2ED51FA07FF000527FF00837D21FDAD7F6A9B7F8E9F093E28EB
          1F057E28BEC6D46F6CA091E2BD9523112DCC6F14B1496F3794363952CB20032A
          AC5D9FCE7C23FF0006C3EA9A1FED55F0B3E30EAFFB42788BC5DE34F096B563E2
          0F13DFEBBA5BDEDC788AEAD6ED26458A47B8DD046228E3886F3291B7770308A5
          80FCFAFD9EBC6B6BFB5DFF00C141FF00685F88BF167F66CF8A7FB506B69AC3DA
          DAE8BA24B31B5F0C46D71711A4770B1297F922852284676A88A4C866DACBDE7E
          CE5F05BE297ECEBF0B7F6E0D20FC24F8B9F0A3F67DF18FC31D5B58D1F4CF17D9
          CA12C2FE27805B47E7BA2A993CB96E1300976444DE5CC61ABF40FF006BCFF837
          DB56F15FED69ADFC6CFD9D7E367887E0278CFC5AD249E2082CA2964B5BF96560
          F3488D14B1B2091C091E36122349F30D9802BA9F80FF00F0448F15FC3AFD8EBE
          3AF807C5FF00B4178D3E2178BFE3C593DBEA5AC6AF1C93E9DA64A6329F688AD6
          4999DA665215E4328DC9142A15446322407C07FF000412FF008256685F10FF00
          63DBEFDA8BC61AFEBFA86B9E064D5C781F468AEB6E9DA72DAC13334B329059B7
          5C492B0894A27CA59B7F9842F9E7FC1B99FF00049CF0B7EDE5A17893E247C4BF
          13F886D3C1BF0B75D89F48D1B4DBE36B136A2122B89AE66720EC458E3817F77B
          5DBBBA88C06FD97FF827DFFC1346E3F61CFF0082765FFC079BC6A9E249AF63D5
          506B71E97F6410FDB43F22132BEED9BF3CBF3ED581FF00047AFF008248FF00C3
          AD3E0178DBC09A9F8D2DFE215AF8CB563A8C920D20E9C9121B6481A22A669776
          42939C8EBD28480FCC5D4E1F809FF0527F8EBF18BC53F08BF610F889F19B48D4
          359BABAD67C716FE3CB8D0A517330DD24F6768C0C3E6B3933AC2C59CF980BA28
          6D83E5DFD9FBC5FABDD7FC10ABF6AEF075E5C5F0D13C27E38F0B5E69B63743F7
          9633DCDD4F15C647F0B32DB45B80C0DCA4F739FD51F821FF0006ECFC50FD953C
          69E27D0BE147ED65E35F00FC1CF17DF9B9D4343D3F4B51AB2424E36457464291
          5C796153ED51A2B10AA4A10A16B33E18FF00C1B0173F0D7F632F8D5F0862F8D1
          1DD47F16357D175183527F0C90DA647A6CD3C811D3ED3FBD6904C012190294CE
          0E700480F8D3F688FF008247FC1FF00FFC1BA7E14FDA02CECF5A7F8AB3D9E95A
          BDCEAF2EA32C8974977791DB9B43016312C51C728DA5555F744B96209531FC41
          FF00824FFC23B7FF00836FACFF0068C7B6D76EBE2F4B15B6AF2EB72EA533ACC9
          26AAB63F6468198C5E4AC2C0821449BD01DFB7295FACDF17FF00E092377F153F
          E08EDA3FECAA3C7F158DCE97A669BA7B7894E8C64497EC77515C67ECDE702037
          97B7FD664673CF4A8BC53FF0485BAF127FC118ADFF0064B1F10628AE60B0B7B3
          FF00849FFB1B28DE56A4B7D9FB2F9C0E0EDF2FFD6E7F8BDA8B01F99B7BFB4DFC
          1CF177FC130FF62EF863F147E0EF8AFF0068EF8B379637B75E19F0DE9FABCFA5
          C91599D42EEC208E4BA8834A6375B68D5228C118B352C5155437974DF0F2FF00
          F633FF0082D27ECC77FE19F807E2DFD976EFC43E23D32C6EF42BCF141F10596A
          114F7A96B70D6D75CB14782729246588524602E79FD01F1E7FC1B4FAA3FC23F8
          152F827E385FF84BE2F7C0EB0974CB5F1541A3B2C3A8C0D7F737B08F244FBA16
          85AEA540DBDC3A1C32E0F1A37FFF0006F178FBE227ED6BF08FE35FC44FDA6BC4
          1E3FF1B780757B1D57546D4FC3E82DAED2D2F12E62B5B28E39956D2221595B87
          0CEECF8192B4580FA5FF00E0B41E125F1FFEC85A2787CEA3A968FF00DBFF0011
          3C23A77F6869D39B7BDB0F375CB34334128E63954312AE3953CD723FF0542FD8
          BBE187C1BFF826D78DF5CF02F83B41F01788FE13E8AFE20F08EB9E1EB28AC353
          D0EF6D4078E58EE1009097DBB64DCC4C8AEDBB24E6BE90FDADFF0067093F6A1F
          87BA1E851EB23426D1BC57A2789BCF36BF68F3469DA84179E4EDDCB8F33C9D9B
          B276EECE0E3153FED91FB3E3FED61FB2B78FFE1AC7AB8D05FC6FA2DC69035136
          DF69167E6A15F33CBDCBBF19E9B87D6981E27F1BFF00E09C5F06BC25FF0004FE
          F15F8674DF04E8760FA37866EF51B3D752D233AE5B6A515BBCC9AA0BD204C6F4
          4CA25F38BEE2E3938245793F877F683D2FF69FF87FF05615F805A17ED23F1D2D
          7E19687E23D7AF3561A7D969BE158B53B48E4DD3DE5CC7208A6BA92391D60822
          77288CC42260B7DD5F127C00DF107E116BFE151786CDF5CD1EE34AFB508F7F91
          E6C0D1799B33CE376719ED8CD7CB1E02FF0082727C48FD94DBC33AE7C17F88FE
          17B5F12C1E07D0BC17E2CB1F15787E5BBD1BC52DA4DB0B7B4D45041711CF6772
          B19950859248DD19032EE8C3900F9B3C77E3FF001E7EC81FB4478DBC59A1FC0D
          D33F67BD7358F81FE31D5E4D3F47D6ACB56D07C53A968E96B71617296F6A910F
          B5DBF9F286926855A48A7D8376DE3EBFFD903F602F81D6FF00B2A7858B782BC1
          BF108F8C346B6D5F59F12EBDA6C1AC5FF8BEE2EA159A5BEBAB99D5DE7699A467
          CB31501C2A8550A052F879FB0FFC42D33F6ABD07E3AFC49F8A47C6BE26D0FC37
          AA6853F86F47D0458E8705B5C9B69122B081E6924493CC818C92CD24AF3EE897
          F7491AAD7CC7E10F883FB36F84BC25E20D37C2FF00B587C52FD9A7C3570F2CDA
          AFC2ED46FAD343D4BC2B33AEF9AD6C2D750B492F2C8798CEDE5D9BBC7BD9BC9C
          0DB401E5FF001B7E0EF86FE06FECD7FB7B7837C2D7B77AAF86F40F1E7812D6C4
          DEDF3EA1258461F4561A7895C96315A13E446AC498D234427E4CD7D55F1DBE09
          EB5F02BF6CDF897F143C55F0047ED21E08F1F59D89B5BFD361B3D4FC45E0A82D
          2D1607D323D3AF64559AD2597CCB906CC890C93CA248E4211AB86FD9BFFE09D9
          6BFB4BFECAFF001FACBC3565AB7C25F027C67F16E8BA878463D574D965D45F4D
          D24E9E4EA57114EEB3997509ED6E26DD7044C44EB2BEE66C1FA87E257C19FDA2
          740F89DAF6B3F0D7E2FF00836E3C3DE2099664F0FF008EBC2926A09A0B840ADF
          63B9B3B9B690C4C406F2A612608387193401F23FED21E14FD9F3E2E7C27FD94E
          F7E167827C270F8547ED0165A3DDE913787D6D27D167913519350D32E2D2640F
          6A44EA1A4B62AA995460A57613D17ED9F6DE13F0EFEDF7F0F7E0A41F06358F14
          FC28D07C2379F12EFBC13E04D1AC12D3C43AB9BF86CADE6D46D6478229ADEDC0
          7902EE21E6922675611AE3D7F58FF825ADDDFF00ECFF00169EBF10AE25F8B70F
          C438BE2CFF00C26371A52B59CDE238D56205AC16400597D9545B0804BB9630A7
          7971B8ECF8CBF635F8ABF19BC3FE16F16F897E247857C35F1DBC03A95D4FE1BF
          127853C3B3C7A3C5A7DCA42971A5DED8DCDD48D796F3888339F362747585A328
          D16E7480F12F1B59DD78B3F68DF847E32F845FB337C55F84FE38D07C516161AC
          EB12E81A5695A6EA9E19B89562D4ECEFCDBDE912C51C245C45BA391926B68CC6
          1773137FFE094FFB0FF853C7FE1DD77E2578EECEC3C7571A4FC40F165A7802CF
          55B58EE2CBC17A7C7E21BC2CD6B0B2EC5BC9AE925964BA20CA54429B82C6057B
          B7C3FF0081FF00B4278CBE25787B58F8A5F167C2761E1FF0C5C7DAD740F87DA0
          4FA626BF301B57EDF7377717121B75F98FD9E10818B0DCEC1003DEFEC81FB3A3
          FECAFF0005878464D67FB79FFB7359D67ED62D7ECDFF00210D52EAFF00CBD9B9
          BFD5FDA76673F36CCE0670181F117C2BF893E03D1BF66793C15E25F85717C6EF
          1778E3E35F8E6E7C25E0A6B5B591751BAB3D6AFA596F247BB220861811FE795C
          9DA65550ACCC0565FC76D17C6BF0C7E2C7C17F1B1FD95BC39F03B58D27E23681
          A3FF00C25FE0EF14E997709D3B51BF8ACAEEC6FE18ADA096682649F6AA856093
          18E4DC9B486F7D9BFE0983AFF84F44F0F6BBE0BF8931E8BF143C0FE30F13F8A3
          41D5EEF47373A5CB6DAEDEC97377A5DED98994CB030312F9892248AF0AC89B79
          429E3FFD83BE347ED51AD782B56F8B9F177C37663E1F78BF47F15E93A0782BC3
          B2D9E91732D8DE24CED7AF733CB3DC33C41D1155E28E266121599954000BDFF0
          4B2FF9197F6A7FFB2EFAEFFE90E99457ABFECA9FB2BBFECD1A9FC56B97D786B5
          FF000B33C7B7FE3655FB2080E9C2E60B5885B6773799B3ECD9DFF2E77E368C64
          9401FCE07FC1C35FF04EAF1F7ECADFB7A78FFC7777A2EA57FF000F7E25EB536B
          FA5EBF0DBB3DA24D74ED2CB672B8C88E6490C802B105D00619E42FE7EF94FF00
          DC6FCABFB9E9A14B8568E44492371F32B0041FA8AABFF08B699FF40DB0E3FE9D
          D3FC2803F86BF29FFB8DF951E53FF71BF2AFEE53FE117D33FE81D61FF80E9FE1
          47FC22FA67FD03AC3FF01D3FC2803F8ADFD993F652F881FB62FC5BD33C11F0EF
          C33A9F8935FD525588476F0B18AD51980334F2636C512E72CEE42802BFB23FD9
          6FE0AAFECDDFB357C3FF0087A97A7521E07F0ED86826EF695FB49B6B6484C983
          9C06284E32719AEDACB4DB6D3908B7B78200DC911C6141FCAA7A4900514514C0
          28A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A002A9DE681
          63A95F5BDD5CD95A5C5CDA12609A4895E4849EEAC4657F0AB945001451450014
          51450014514500146E1EA28A2800A28A2803FFD9}
        mmHeight = 10054
        mmLeft = 12435
        mmTop = 6085
        mmWidth = 51594
        BandType = 4
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Style = lsDouble
        Weight = 0.899999976158142100
        mmHeight = 794
        mmLeft = 12965
        mmTop = 146844
        mmWidth = 172244
        BandType = 4
      end
      object ppLabel34: TppLabel
        UserName = 'Label8'
        Caption = 'OTROS DATOS ADICIONALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4763
        mmLeft = 12965
        mmTop = 148961
        mmWidth = 54504
        BandType = 4
      end
      object ppLabel35: TppLabel
        UserName = 'Label12'
        Caption = 'C'#243'digo de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 99748
        mmTop = 125942
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel36: TppLabel
        UserName = 'Label16'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 115359
        mmTop = 120915
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel37: TppLabel
        UserName = 'Label17'
        Caption = 'Unidad de Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 120915
        mmWidth = 28310
        BandType = 4
      end
      object ppLabel43: TppLabel
        UserName = 'Label22'
        Caption = 'Correo electronico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 12965
        mmTop = 155311
        mmWidth = 27517
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 55563
        mmTop = 159015
        mmWidth = 55827
        BandType = 4
      end
      object ppLabel44: TppLabel
        UserName = 'Label19'
        Caption = '@'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 113771
        mmTop = 155575
        mmWidth = 3175
        BandType = 4
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 119327
        mmTop = 158221
        mmWidth = 33338
        BandType = 4
      end
      object ppShape50: TppShape
        UserName = 'Shape50'
        mmHeight = 4498
        mmLeft = 74613
        mmTop = 160073
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel45: TppLabel
        UserName = 'Label29'
        Caption = 'Grado de Instrucci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 12965
        mmTop = 160602
        mmWidth = 31485
        BandType = 4
      end
      object ppLabel46: TppLabel
        UserName = 'Label33'
        Caption = 'Carga Familiar (Numero):'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 13229
        mmTop = 181505
        mmWidth = 36777
        BandType = 4
      end
      object ppLabel47: TppLabel
        UserName = 'Label42'
        Caption = 'Secundaria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 56356
        mmTop = 160073
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel48: TppLabel
        UserName = 'Label43'
        Caption = 'T'#233'cnica'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 81492
        mmTop = 160073
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel49: TppLabel
        UserName = 'Label44'
        Caption = 'Universitaria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 101071
        mmTop = 160073
        mmWidth = 21696
        BandType = 4
      end
      object ppLabel50: TppLabel
        UserName = 'Label45'
        Caption = 'Post Grado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 130969
        mmTop = 160073
        mmWidth = 17198
        BandType = 4
      end
      object ppShape51: TppShape
        UserName = 'Shape501'
        mmHeight = 4498
        mmLeft = 94192
        mmTop = 160073
        mmWidth = 5821
        BandType = 4
      end
      object ppShape52: TppShape
        UserName = 'Shape52'
        mmHeight = 4498
        mmLeft = 123825
        mmTop = 160073
        mmWidth = 5821
        BandType = 4
      end
      object ppShape53: TppShape
        UserName = 'Shape53'
        mmHeight = 4498
        mmLeft = 149490
        mmTop = 160073
        mmWidth = 5821
        BandType = 4
      end
      object ppShape94: TppShape
        UserName = 'Shape502'
        mmHeight = 4498
        mmLeft = 63765
        mmTop = 165365
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel51: TppLabel
        UserName = 'Label46'
        Caption = 'Condici'#243'n de la Vivienda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 12965
        mmTop = 165894
        mmWidth = 35983
        BandType = 4
      end
      object ppLabel52: TppLabel
        UserName = 'Label47'
        Caption = 'Propia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 52123
        mmTop = 165365
        mmWidth = 10319
        BandType = 4
      end
      object ppLabel53: TppLabel
        UserName = 'Label48'
        Caption = 'Alquilada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 70908
        mmTop = 165365
        mmWidth = 14817
        BandType = 4
      end
      object ppLabel54: TppLabel
        UserName = 'Label49'
        Caption = 'Familiar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 94986
        mmTop = 165365
        mmWidth = 13494
        BandType = 4
      end
      object ppShape95: TppShape
        UserName = 'Shape95'
        mmHeight = 4498
        mmLeft = 87313
        mmTop = 165365
        mmWidth = 5821
        BandType = 4
      end
      object ppShape96: TppShape
        UserName = 'Shape96'
        mmHeight = 4498
        mmLeft = 120650
        mmTop = 165365
        mmWidth = 5821
        BandType = 4
      end
      object ppShape97: TppShape
        UserName = 'Shape97'
        mmHeight = 4498
        mmLeft = 63765
        mmTop = 170657
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel55: TppLabel
        UserName = 'Label50'
        Caption = 'Propiedades:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 12965
        mmTop = 171186
        mmWidth = 18785
        BandType = 4
      end
      object ppLabel57: TppLabel
        UserName = 'Label35'
        Caption = 'Casa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 52123
        mmTop = 170657
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel59: TppLabel
        UserName = 'Label53'
        Caption = 'Terreno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 70908
        mmTop = 170657
        mmWidth = 14023
        BandType = 4
      end
      object ppLabel60: TppLabel
        UserName = 'Label54'
        Caption = 'Local Comercial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 94986
        mmTop = 170657
        mmWidth = 24342
        BandType = 4
      end
      object ppShape98: TppShape
        UserName = 'Shape98'
        mmHeight = 4498
        mmLeft = 87313
        mmTop = 170657
        mmWidth = 5821
        BandType = 4
      end
      object ppShape99: TppShape
        UserName = 'Shape99'
        mmHeight = 4498
        mmLeft = 120650
        mmTop = 170657
        mmWidth = 5821
        BandType = 4
      end
      object ppShape100: TppShape
        UserName = 'Shape100'
        mmHeight = 4498
        mmLeft = 63765
        mmTop = 175684
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel61: TppLabel
        UserName = 'Label501'
        Caption = 'Negocio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 12965
        mmTop = 176213
        mmWidth = 11906
        BandType = 4
      end
      object ppLabel62: TppLabel
        UserName = 'Label55'
        Caption = 'No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 52123
        mmTop = 175684
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel63: TppLabel
        UserName = 'Label57'
        Caption = 'Si'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 77258
        mmTop = 175684
        mmWidth = 6085
        BandType = 4
      end
      object ppLabel64: TppLabel
        UserName = 'Label59'
        Caption = 'Tipo de Negocio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 94986
        mmTop = 175684
        mmWidth = 24606
        BandType = 4
      end
      object ppShape101: TppShape
        UserName = 'Shape41'
        mmHeight = 4498
        mmLeft = 87313
        mmTop = 175684
        mmWidth = 5821
        BandType = 4
      end
      object ppLine9: TppLine
        UserName = 'Line9'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 121179
        mmTop = 179917
        mmWidth = 54504
        BandType = 4
      end
      object ppLabel65: TppLabel
        UserName = 'Label38'
        Caption = 'Huella Digital'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 142611
        mmTop = 256646
        mmWidth = 31221
        BandType = 4
      end
      object ppShape54: TppShape
        UserName = 'Shape30'
        Brush.Color = clSilver
        Pen.Style = psClear
        mmHeight = 50271
        mmLeft = 8731
        mmTop = 206375
        mmWidth = 173038
        BandType = 4
      end
      object ppLabel66: TppLabel
        UserName = 'Label37'
        Caption = 'Firmar dentro del recuadro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4498
        mmLeft = 21960
        mmTop = 256382
        mmWidth = 55033
        BandType = 4
      end
      object ppShape55: TppShape
        UserName = 'Shape39'
        Pen.Style = psClear
        mmHeight = 45508
        mmLeft = 13494
        mmTop = 208492
        mmWidth = 103452
        BandType = 4
      end
      object ppShape70: TppShape
        UserName = 'Shape70'
        Pen.Style = psClear
        mmHeight = 44715
        mmLeft = 135467
        mmTop = 208492
        mmWidth = 43127
        BandType = 4
      end
      object ppLabel68: TppLabel
        UserName = 'Label67'
        Caption = 'DATOS LABORALES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4868
        mmLeft = 12435
        mmTop = 93927
        mmWidth = 36830
        BandType = 4
      end
      object lblUniPro: TppLabel
        UserName = 'lblUniPro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 43392
        mmTop = 120915
        mmWidth = 70908
        BandType = 4
      end
      object lblUgel: TppLabel
        UserName = 'lblUgel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 127265
        mmTop = 120915
        mmWidth = 61383
        BandType = 4
      end
      object lblCodPag: TppLabel
        UserName = 'lblCodPag'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 127794
        mmTop = 126207
        mmWidth = 61119
        BandType = 4
      end
      object ppLabel76: TppLabel
        UserName = 'Label71'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 41010
        mmTop = 120915
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel77: TppLabel
        UserName = 'Label75'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 124090
        mmTop = 125942
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel78: TppLabel
        UserName = 'Label76'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 41010
        mmTop = 131498
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel79: TppLabel
        UserName = 'Label77'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41010
        mmTop = 136525
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel81: TppLabel
        UserName = 'Label78'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 40746
        mmTop = 44715
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel83: TppLabel
        UserName = 'Label81'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 40746
        mmTop = 49213
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel85: TppLabel
        UserName = 'Label83'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 40746
        mmTop = 53975
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel86: TppLabel
        UserName = 'Label85'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 40746
        mmTop = 63500
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel87: TppLabel
        UserName = 'Label86'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 40746
        mmTop = 68263
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel88: TppLabel
        UserName = 'Label87'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 40746
        mmTop = 73025
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel89: TppLabel
        UserName = 'Label88'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 41010
        mmTop = 125942
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel90: TppLabel
        UserName = 'Label91'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 80433
        mmTop = 67998
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel91: TppLabel
        UserName = 'Label92'
        Caption = 'Estado Civil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 112448
        mmTop = 67733
        mmWidth = 17992
        BandType = 4
      end
      object ppLabel92: TppLabel
        UserName = 'Label901'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 133086
        mmTop = 67733
        mmWidth = 1588
        BandType = 4
      end
      object pplestciv: TppLabel
        UserName = 'Label93'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 136790
        mmTop = 67998
        mmWidth = 22225
        BandType = 4
      end
      object ppLabel93: TppLabel
        UserName = 'Label94'
        Caption = 'Doc.de Identidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 58738
        mmWidth = 26988
        BandType = 4
      end
      object ppLabel94: TppLabel
        UserName = 'Label95'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 40746
        mmTop = 58738
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel95: TppLabel
        UserName = 'Label102'
        Caption = 'DNI:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 45773
        mmTop = 58738
        mmWidth = 7938
        BandType = 4
      end
      object ppShape46: TppShape
        UserName = 'Shape2'
        mmHeight = 4233
        mmLeft = 55298
        mmTop = 58738
        mmWidth = 5556
        BandType = 4
      end
      object ppLabel96: TppLabel
        UserName = 'Label96'
        Caption = 'Carn'#233' Extranjer'#237'a:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 67733
        mmTop = 58738
        mmWidth = 29104
        BandType = 4
      end
      object ppShape47: TppShape
        UserName = 'Shape3'
        mmHeight = 4233
        mmLeft = 98425
        mmTop = 58738
        mmWidth = 5556
        BandType = 4
      end
      object ppLabel97: TppLabel
        UserName = 'Label97'
        Caption = 'Carn'#233' Identidad:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 111390
        mmTop = 58738
        mmWidth = 26458
        BandType = 4
      end
      object ppShape48: TppShape
        UserName = 'Shape4'
        mmHeight = 4233
        mmLeft = 139436
        mmTop = 58738
        mmWidth = 5556
        BandType = 4
      end
      object ppLDNIFLAG: TppLabel
        UserName = 'Label98'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 56886
        mmTop = 59002
        mmWidth = 2381
        BandType = 4
      end
      object ppLCarnetExtFlag: TppLabel
        UserName = 'Label99'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 100013
        mmTop = 59002
        mmWidth = 2381
        BandType = 4
      end
      object ppLCarnetIdentFlag: TppLabel
        UserName = 'Label100'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 141023
        mmTop = 59002
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel100: TppLabel
        UserName = 'Label302'
        Caption = 'Cta.Ahorros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 126471
        mmTop = 131234
        mmWidth = 18785
        BandType = 4
      end
      object ppLabel101: TppLabel
        UserName = 'Label103'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 146315
        mmTop = 130969
        mmWidth = 1588
        BandType = 4
      end
      object ppLCtaAhorro: TppLabel
        UserName = 'lblCodPag1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 148432
        mmTop = 131498
        mmWidth = 25135
        BandType = 4
      end
      object ppLabel102: TppLabel
        UserName = 'Label104'
        Caption = 'Telefono'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 120121
        mmTop = 140759
        mmWidth = 13229
        BandType = 4
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 51858
        mmTop = 185473
        mmWidth = 15346
        BandType = 4
      end
      object ppLabel98: TppLabel
        UserName = 'Label27'
        Caption = 'Dpto./Prov./Dist.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 77788
        mmWidth = 27252
        BandType = 4
      end
      object ppLabel99: TppLabel
        UserName = 'Label28'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 40746
        mmTop = 77788
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel103: TppLabel
        UserName = 'Label23'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 40746
        mmTop = 82550
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel104: TppLabel
        UserName = 'Label32'
        Caption = 'Telefono Referencial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 97102
        mmTop = 82815
        mmWidth = 32015
        BandType = 4
      end
      object ppLabel105: TppLabel
        UserName = 'Label34'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 130175
        mmTop = 82815
        mmWidth = 1588
        BandType = 4
      end
      object ppLTelefonoRef: TppLabel
        UserName = 'telefono1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 133350
        mmTop = 83079
        mmWidth = 53975
        BandType = 4
      end
      object ppLabel106: TppLabel
        UserName = 'Label36'
        Caption = 'Dpto./Prov./Dist.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 12700
        mmTop = 141023
        mmWidth = 27252
        BandType = 4
      end
      object ppLabel107: TppLabel
        UserName = 'Label60'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41010
        mmTop = 141288
        mmWidth = 1588
        BandType = 4
      end
      object ppLAsoTelLab: TppLabel
        UserName = 'Label61'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 136790
        mmTop = 141023
        mmWidth = 51329
        BandType = 4
      end
      object ppLabel108: TppLabel
        UserName = 'Label62'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 134144
        mmTop = 140759
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel111: TppLabel
        UserName = 'Label64'
        Caption = 
          'Declaro bajo juramento, que ante cualquier falsedad delo manifes' +
          'tado, me someto a las sanciones que estipule el C'#243'digo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 11377
        mmTop = 193940
        mmWidth = 175419
        BandType = 4
      end
      object ppLabel112: TppLabel
        UserName = 'Label65'
        Caption = 'Penal y dem'#225's Leyes Vigentes.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 11377
        mmTop = 198967
        mmWidth = 44186
        BandType = 4
      end
      object ppLabel113: TppLabel
        UserName = 'Label24'
        Caption = 'APROBADO POR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 148696
        mmTop = 275432
        mmWidth = 23029
        BandType = 4
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 141288
        mmTop = 274903
        mmWidth = 37042
        BandType = 4
      end
      object ppLine8: TppLine
        UserName = 'Line8'
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 11377
        mmTop = 204259
        mmWidth = 173302
        BandType = 4
      end
      object ppLabel114: TppLabel
        UserName = 'Label25'
        Caption = 'EQUIPO DE PREVISION SOCIAL- ACTUALIZACION DE DATOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 2910
        mmLeft = 12700
        mmTop = 19579
        mmWidth = 73554
        BandType = 4
      end
      object ppLine10: TppLine
        UserName = 'Line10'
        Style = lsDouble
        Weight = 0.899999976158142100
        mmHeight = 794
        mmLeft = 12965
        mmTop = 23283
        mmWidth = 132292
        BandType = 4
      end
      object ppImgfoto: TppImage
        UserName = 'Imgfoto'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 32808
        mmLeft = 146315
        mmTop = 7673
        mmWidth = 39952
        BandType = 4
      end
      object ppLabel115: TppLabel
        UserName = 'Label66'
        Caption = 
          '(Datos que todo Docente Activo y/o Cesante debe llenar para Acce' +
          'der a los Servicios de Derrama Magisterial)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 12700
        mmTop = 32544
        mmWidth = 130704
        BandType = 4
      end
      object ppLabel116: TppLabel
        UserName = 'Label89'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 124354
        mmTop = 120915
        mmWidth = 1588
        BandType = 4
      end
      object ppLgrado2: TppLabel
        UserName = 'Label902'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 76200
        mmTop = 160338
        mmWidth = 2381
        BandType = 4
      end
      object ppLgrado3: TppLabel
        UserName = 'Label105'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 96044
        mmTop = 160338
        mmWidth = 2381
        BandType = 4
      end
      object ppLgrado4: TppLabel
        UserName = 'Label106'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 125677
        mmTop = 160338
        mmWidth = 2381
        BandType = 4
      end
      object ppLgrado5: TppLabel
        UserName = 'Label107'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 151077
        mmTop = 160338
        mmWidth = 2381
        BandType = 4
      end
      object ppLCondViv2: TppLabel
        UserName = 'Label108'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 65352
        mmTop = 165629
        mmWidth = 2381
        BandType = 4
      end
      object ppLCondViv1: TppLabel
        UserName = 'Label109'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 89165
        mmTop = 165629
        mmWidth = 2381
        BandType = 4
      end
      object ppLCondViv3: TppLabel
        UserName = 'Label110'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 122238
        mmTop = 165629
        mmWidth = 2381
        BandType = 4
      end
      object ppLPropie1: TppLabel
        UserName = 'Label111'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 65352
        mmTop = 170921
        mmWidth = 2381
        BandType = 4
      end
      object ppLPropie2: TppLabel
        UserName = 'Label112'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 88900
        mmTop = 170921
        mmWidth = 2381
        BandType = 4
      end
      object ppLPropie3: TppLabel
        UserName = 'Label113'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 122238
        mmTop = 170921
        mmWidth = 2381
        BandType = 4
      end
      object ppLNegocioNo: TppLabel
        UserName = 'Label114'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 65352
        mmTop = 175948
        mmWidth = 2381
        BandType = 4
      end
      object ppLNegocioSi: TppLabel
        UserName = 'Label115'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 88900
        mmTop = 175948
        mmWidth = 2381
        BandType = 4
      end
      object ppLNroHijos: TppLabel
        UserName = 'Label117'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 52388
        mmTop = 181240
        mmWidth = 13758
        BandType = 4
      end
      object ppLInmueble: TppLabel
        UserName = 'Label116'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 121444
        mmTop = 175684
        mmWidth = 52917
        BandType = 4
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 80169
        mmTop = 274373
        mmWidth = 37042
        BandType = 4
      end
      object ppLabel117: TppLabel
        UserName = 'Label11'
        Caption = 'EMITIDO POR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 87842
        mmTop = 274903
        mmWidth = 18754
        BandType = 4
      end
      object ppLabel23: TppLabel
        UserName = 'Label1'
        Caption = 'Activo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 49213
        mmTop = 99748
        mmWidth = 9525
        BandType = 4
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        Caption = 'Resoluci'#243'n de Nombramiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12435
        mmTop = 105304
        mmWidth = 43921
        BandType = 4
      end
      object ppLabel67: TppLabel
        UserName = 'Label40'
        Caption = 'Tipo de Docente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 99484
        mmWidth = 25135
        BandType = 4
      end
      object ppLabel69: TppLabel
        UserName = 'Label68'
        Caption = 'Resoluci'#243'n de Cese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 12700
        mmTop = 110331
        mmWidth = 28840
        BandType = 4
      end
      object ppLabel70: TppLabel
        UserName = 'Label69'
        Caption = 'Resoluci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 96838
        mmTop = 110331
        mmWidth = 16933
        BandType = 4
      end
      object ppLFResCes: TppLabel
        UserName = 'LFResNom1'
        Caption = 'LFResNom1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 75936
        mmTop = 110331
        mmWidth = 16933
        BandType = 4
      end
      object ppLResCes: TppLabel
        UserName = 'LResNom1'
        Caption = 'LResNom1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 118798
        mmTop = 110331
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel72: TppLabel
        UserName = 'Label72'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 61119
        mmTop = 110331
        mmWidth = 10319
        BandType = 4
      end
      object ppLFResNom: TppLabel
        UserName = 'Label5'
        Caption = 'LFResNom1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 75936
        mmTop = 105304
        mmWidth = 16933
        BandType = 4
      end
      object ppLResNom: TppLabel
        UserName = 'LResNom'
        Caption = 'LResNom1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 118798
        mmTop = 105304
        mmWidth = 15081
        BandType = 4
      end
      object ppLabel73: TppLabel
        UserName = 'Label73'
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 61119
        mmTop = 105304
        mmWidth = 10319
        BandType = 4
      end
      object ppLabel74: TppLabel
        UserName = 'Label74'
        Caption = 'Resoluci'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 96838
        mmTop = 105304
        mmWidth = 16933
        BandType = 4
      end
      object ppLabel71: TppLabel
        UserName = 'Label41'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 57679
        mmTop = 105304
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel75: TppLabel
        UserName = 'Label70'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 57679
        mmTop = 110331
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel109: TppLabel
        UserName = 'Label601'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 41010
        mmTop = 99748
        mmWidth = 1588
        BandType = 4
      end
      object ppLabel110: TppLabel
        UserName = 'Label63'
        Caption = 'Cesante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 81492
        mmTop = 99748
        mmWidth = 11906
        BandType = 4
      end
      object ppShape49: TppShape
        UserName = 'Shape5'
        mmHeight = 4233
        mmLeft = 61383
        mmTop = 100013
        mmWidth = 5556
        BandType = 4
      end
      object ppShape56: TppShape
        UserName = 'Shape6'
        mmHeight = 4233
        mmLeft = 96044
        mmTop = 100013
        mmWidth = 5556
        BandType = 4
      end
      object ppLDOFlag: TppLabel
        UserName = 'Label51'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 62971
        mmTop = 100013
        mmWidth = 2381
        BandType = 4
      end
      object ppLCEFlag: TppLabel
        UserName = 'LCEFlag'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 97631
        mmTop = 100277
        mmWidth = 2381
        BandType = 4
      end
      object ppLabel38: TppLabel
        UserName = 'Label13'
        Caption = 'Regimen de Pensi'#243'n:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4403
        mmLeft = 12435
        mmTop = 115623
        mmWidth = 30988
        BandType = 4
      end
      object ppLabel40: TppLabel
        UserName = 'Label14'
        Caption = '20530'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 55298
        mmTop = 115623
        mmWidth = 9790
        BandType = 4
      end
      object ppShape43: TppShape
        UserName = 'Shape7'
        mmHeight = 5027
        mmLeft = 66675
        mmTop = 115623
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel41: TppLabel
        UserName = 'Label201'
        Caption = '19990'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 73554
        mmTop = 115623
        mmWidth = 9260
        BandType = 4
      end
      object ppShape44: TppShape
        UserName = 'Shape8'
        mmHeight = 5027
        mmLeft = 84138
        mmTop = 115623
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel42: TppLabel
        UserName = 'Label18'
        Caption = 'AFP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 92604
        mmTop = 115623
        mmWidth = 5821
        BandType = 4
      end
      object ppShape45: TppShape
        UserName = 'Shape9'
        mmHeight = 5027
        mmLeft = 101071
        mmTop = 115623
        mmWidth = 5821
        BandType = 4
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 108744
        mmTop = 119592
        mmWidth = 50800
        BandType = 4
      end
      object ppLRegPen1: TppLabel
        UserName = 'LRegPen1'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 68263
        mmTop = 116152
        mmWidth = 2381
        BandType = 4
      end
      object ppLRegPen2: TppLabel
        UserName = 'LRegPen2'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 85990
        mmTop = 116152
        mmWidth = 2381
        BandType = 4
      end
      object ppLRegPen3: TppLabel
        UserName = 'Label90'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 102659
        mmTop = 116152
        mmWidth = 2381
        BandType = 4
      end
      object pplAFP: TppLabel
        UserName = 'lAFP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 112184
        mmTop = 115623
        mmWidth = 44715
        BandType = 4
      end
      object ppLabel118: TppLabel
        UserName = 'Label118'
        Caption = 'RENIEC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4403
        mmLeft = 12700
        mmTop = 87313
        mmWidth = 14023
        BandType = 4
      end
      object ppLabel119: TppLabel
        UserName = 'Label119'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 40746
        mmTop = 87313
        mmWidth = 1588
        BandType = 4
      end
      object pplVerificaReniec: TppLabel
        UserName = 'Label202'
        Caption = 'VERIFICADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4868
        mmLeft = 45773
        mmTop = 87048
        mmWidth = 22818
        BandType = 4
      end
      object pplEstadocta: TppLabel
        UserName = 'Label203'
        Caption = 'ACTIVO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4498
        mmLeft = 174361
        mmTop = 131234
        mmWidth = 8202
        BandType = 4
      end
      object ppLabel120: TppLabel
        UserName = 'Label120'
        Caption = 'Vehiculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4445
        mmLeft = 13229
        mmTop = 186532
        mmWidth = 12361
        BandType = 4
      end
      object ppShape57: TppShape
        UserName = 'Shape1001'
        mmHeight = 4498
        mmLeft = 63500
        mmTop = 186532
        mmWidth = 5821
        BandType = 4
      end
      object ppLabel121: TppLabel
        UserName = 'Label121'
        Caption = 'No'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 51858
        mmTop = 186532
        mmWidth = 6879
        BandType = 4
      end
      object ppLabel122: TppLabel
        UserName = 'Label122'
        Caption = 'Si'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 76994
        mmTop = 186532
        mmWidth = 6085
        BandType = 4
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        Caption = 'Tipo de Vehiculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4445
        mmLeft = 94721
        mmTop = 186532
        mmWidth = 24215
        BandType = 4
      end
      object ppShape58: TppShape
        UserName = 'Shape58'
        mmHeight = 4498
        mmLeft = 87048
        mmTop = 186532
        mmWidth = 5821
        BandType = 4
      end
      object ppLine11: TppLine
        UserName = 'Line11'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 120915
        mmTop = 190765
        mmWidth = 54504
        BandType = 4
      end
      object pplVehiculoNo: TppLabel
        UserName = 'lVehiculoNo'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 65088
        mmTop = 186796
        mmWidth = 2381
        BandType = 4
      end
      object pplVehiculoSi: TppLabel
        UserName = 'lVehiculoSi'
        Caption = 'X'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 88636
        mmTop = 186796
        mmWidth = 2381
        BandType = 4
      end
      object pplVehiculo: TppLabel
        UserName = 'lVehiculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3704
        mmLeft = 121973
        mmTop = 186532
        mmWidth = 52388
        BandType = 4
      end
      object ppImgFrima: TppImage
        UserName = 'ImgFrima'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        mmHeight = 35719
        mmLeft = 20902
        mmTop = 213255
        mmWidth = 87577
        BandType = 4
      end
      object ppLabel124: TppLabel
        UserName = 'Label204'
        Caption = 'Datos de Impresi'#243'n:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3440
        mmLeft = 10054
        mmTop = 263261
        mmWidth = 30163
        BandType = 4
      end
      object pplDatIncompletos: TppLabel
        UserName = 'Label205'
        Caption = '<< DATOS INCOMPLETOS >>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 6879
        mmLeft = 68792
        mmTop = 7408
        mmWidth = 73819
        BandType = 4
      end
      object pplSinFot: TppLabel
        UserName = 'Label206'
        Caption = '<< SIN FOT0 >>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 153194
        mmTop = 55298
        mmWidth = 29633
        BandType = 4
      end
      object pplSinFirma: TppLabel
        UserName = 'lSinFirma'
        Caption = '<< SIN FIRMA >>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 3969
        mmLeft = 151871
        mmTop = 59531
        mmWidth = 31750
        BandType = 4
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubReport1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 282576
        mmWidth = 197379
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppBDEReniec
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296863
          PrinterSetup.mmPaperWidth = 210079
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppBDEReniec'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppLabel125: TppLabel
              UserName = 'Label125'
              Caption = 'Datos Incompletos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 12
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 64294
              mmTop = 1588
              mmWidth = 50536
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText21: TppDBText
              UserName = 'DBText21'
              DataField = 'campo'
              DataPipeline = ppBDEReniec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppBDEReniec'
              mmHeight = 3969
              mmLeft = 49477
              mmTop = 264
              mmWidth = 98690
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLMaquina: TppLabel
              UserName = 'LMaquina'
              Caption = 'tmaquina'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 68263
              mmTop = 5292
              mmWidth = 11642
              BandType = 7
            end
            object ppLabel127: TppLabel
              UserName = 'Label127'
              Caption = 'Equipo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 49213
              mmTop = 5292
              mmWidth = 9525
              BandType = 7
            end
            object ppLusuario: TppLabel
              UserName = 'Usuario1'
              Caption = 'tusuario'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 68263
              mmTop = 1588
              mmWidth = 10054
              BandType = 7
            end
            object ppLabel129: TppLabel
              UserName = 'Label129'
              Caption = 'Usuario :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 49213
              mmTop = 1588
              mmWidth = 11377
              BandType = 7
            end
            object ppLabel130: TppLabel
              UserName = 'Label130'
              Caption = 'Fecha y Hora:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 49213
              mmTop = 8731
              mmWidth = 17727
              BandType = 7
            end
            object ppLFechaHora: TppLabel
              UserName = 'FechaHora1'
              Caption = 'tFecha y Hora'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 68263
              mmTop = 8731
              mmWidth = 17727
              BandType = 7
            end
            object ppLine12: TppLine
              UserName = 'Line12'
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 48419
              mmTop = 529
              mmWidth = 40481
              BandType = 7
            end
          end
        end
      end
      object pplAsoEmail: TppLabel
        UserName = 'LUbigeoLab1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Comic Sans MS'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 55827
        mmTop = 154782
        mmWidth = 55298
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
  object PPDBP1: TppBDEPipeline
    UserName = 'PPDBP1'
    Left = 325
    Top = 397
  end
  object CDSLISRENIEC: TwwClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Nro'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'DNI'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'ApePat'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ApeMat'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nombres'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Sta'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    ValidateWithMask = True
    Left = 593
    Top = 11
    Data = {
      B40000009619E0BD010000001800000006000000000003000000B400034E726F
      010049000000010005574944544802000200020003444E490100490000000100
      0557494454480200020009000641706550617401004900000001000557494454
      48020002001400064170654D6174010049000000010005574944544802000200
      1400074E6F6D6272657301004900000001000557494454480200020028000353
      746101004900000001000557494454480200020002000000}
  end
  object DSLISRENIEC: TwwDataSource
    DataSet = CDSLISRENIEC
    Left = 529
    Top = 11
  end
  object PPR2: TppReport
    AutoStop = False
    DataPipeline = PPDBP1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297127
    PrinterSetup.mmPaperWidth = 209815
    PrinterSetup.PaperSize = 9
    Template.FileName = 'D:\Desarrollo DM\ASOCIADOS\HPC_200909_ASO\FichaFallecido.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    PreviewFormSettings.ZoomPercentage = 120
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 394
    Top = 397
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'PPDBP1'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDetailBand4: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 271992
      mmPrintPosition = 0
      object ppShape59: TppShape
        UserName = 'Shape59'
        Pen.Width = 2
        mmHeight = 34131
        mmLeft = 145257
        mmTop = 7144
        mmWidth = 42069
        BandType = 4
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        Caption = 'C'#243'digo Modular'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 110596
        mmTop = 92075
        mmWidth = 22479
        BandType = 4
      end
      object ppLabel128: TppLabel
        UserName = 'Label128'
        Caption = 'Apellido Paterno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11906
        mmTop = 42333
        mmWidth = 23453
        BandType = 4
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        Caption = 'Apellido Materno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11906
        mmTop = 47096
        mmWidth = 23918
        BandType = 4
      end
      object ppLabel133: TppLabel
        UserName = 'Label1010'
        Caption = 'Sexo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 82021
        mmTop = 56886
        mmWidth = 7197
        BandType = 4
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        Caption = 'F. de Nacimiento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11906
        mmTop = 61913
        mmWidth = 24172
        BandType = 4
      end
      object ppLabel135: TppLabel
        UserName = 'Label303'
        Caption = 'Centro Laboral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11642
        mmTop = 127794
        mmWidth = 21124
        BandType = 4
      end
      object ppLabel136: TppLabel
        UserName = 'Label136'
        Caption = 'D. Domiciliaria '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11906
        mmTop = 67204
        mmWidth = 21505
        BandType = 4
      end
      object ppLabel137: TppLabel
        UserName = 'Label137'
        Caption = 'Telefono Domicilio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11906
        mmTop = 77788
        mmWidth = 26289
        BandType = 4
      end
      object ppLCodMod2: TppLabel
        UserName = 'LCodMod2'
        Caption = '1028807181'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 138377
        mmTop = 92075
        mmWidth = 17780
        BandType = 4
      end
      object pplapepat2: TppLabel
        UserName = 'lapepat2'
        Caption = 'LICLA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 42863
        mmTop = 42333
        mmWidth = 9313
        BandType = 4
      end
      object pplapemat2: TppLabel
        UserName = 'lapemat2'
        Caption = 'RIVERA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 42863
        mmTop = 47096
        mmWidth = 11938
        BandType = 4
      end
      object ppLNombres2: TppLabel
        UserName = 'Label801'
        Caption = 'OSCAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 42863
        mmTop = 51858
        mmWidth = 11388
        BandType = 4
      end
      object ppLDNI2: TppLabel
        UserName = 'LDni1'
        Caption = '28807181'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 50800
        mmTop = 56886
        mmWidth = 14224
        BandType = 4
      end
      object ppLFecNac2: TppLabel
        UserName = 'LFecNac1'
        Caption = '19/01/1965'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 61913
        mmWidth = 16002
        BandType = 4
      end
      object ppLSEXO2: TppLabel
        UserName = 'Lsexo1'
        Caption = 'M'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 93663
        mmTop = 56886
        mmWidth = 2582
        BandType = 4
      end
      object ppLTelefono2: TppLabel
        UserName = 'telefono2'
        Caption = 'S/DATOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 43127
        mmTop = 78052
        mmWidth = 13885
        BandType = 4
      end
      object ppLAsoCenLab2: TppLabel
        UserName = 'LAsoCenLab1'
        Caption = 'C.E.S.  INDUSTRIAL CARLOS MARIATEGUI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 128059
        mmWidth = 64262
        BandType = 4
      end
      object ppLAsodir2: TppLabel
        UserName = 'LAsodir2'
        Caption = 'JIRON TACNA # S/N'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 67204
        mmWidth = 29972
        BandType = 4
      end
      object ppLabel148: TppLabel
        UserName = 'Label148'
        Caption = 'Direcci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11642
        mmTop = 132821
        mmWidth = 13335
        BandType = 4
      end
      object ppLUbigeoDir2: TppLabel
        UserName = 'LUbigeoDir2'
        Caption = 'AYACUCHO/LUCANAS/PUQUIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 72761
        mmWidth = 47159
        BandType = 4
      end
      object ppLAsoDirLab2: TppLabel
        UserName = 'LAsoDirLab1'
        Caption = 'ANEXO UTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 133086
        mmWidth = 18246
        BandType = 4
      end
      object ppLabel151: TppLabel
        UserName = 'Label151'
        Caption = '1. PERSONALES: (VALIDADOS POR RENIEC)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 11906
        mmTop = 36513
        mmWidth = 75734
        BandType = 4
      end
      object ppLabel152: TppLabel
        UserName = 'Label152'
        Caption = 'Nombres'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11906
        mmTop = 51858
        mmWidth = 12954
        BandType = 4
      end
      object ppLUbigeoLab2: TppLabel
        UserName = 'LUbigeoLab2'
        Caption = 'AYACUCHO/LUCANAS/PUQUIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 138113
        mmWidth = 47159
        BandType = 4
      end
      object ppLabel154: TppLabel
        UserName = 'Label154'
        Caption = 'FICHA DE DATOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4995
        mmLeft = 68796
        mmTop = 26194
        mmWidth = 35179
        BandType = 4
      end
      object ppLabel155: TppLabel
        UserName = 'Label155'
        Caption = '3. ADICIONALES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 11377
        mmTop = 146050
        mmWidth = 27855
        BandType = 4
      end
      object ppLabel156: TppLabel
        UserName = 'Label156'
        Caption = 'C'#243'digo de Pago'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11377
        mmTop = 122502
        mmWidth = 22902
        BandType = 4
      end
      object ppLabel157: TppLabel
        UserName = 'Label157'
        Caption = 'UGEL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 11642
        mmTop = 117740
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel158: TppLabel
        UserName = 'Label158'
        Caption = 'Unidad de Proceso'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11642
        mmTop = 113242
        mmWidth = 27178
        BandType = 4
      end
      object ppLabel159: TppLabel
        UserName = 'Label159'
        Caption = 'Email'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11377
        mmTop = 161132
        mmWidth = 8001
        BandType = 4
      end
      object ppLabel161: TppLabel
        UserName = 'Label161'
        Caption = 'Grado de Instrucci'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11377
        mmTop = 151871
        mmWidth = 29676
        BandType = 4
      end
      object ppLGradoInst2: TppLabel
        UserName = 'LGradoInst2'
        Caption = 'SUPERIOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 49985
        mmTop = 151342
        mmWidth = 16552
        BandType = 4
      end
      object ppLabel166: TppLabel
        UserName = 'Label166'
        Caption = '2. LABORALES:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4191
        mmLeft = 11377
        mmTop = 86254
        mmWidth = 26712
        BandType = 4
      end
      object ppLUniPro2: TppLabel
        UserName = 'lblUniPro1'
        Caption = 'LUC U.S.E. LUCANAS PUQUIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42598
        mmTop = 113242
        mmWidth = 45678
        BandType = 4
      end
      object ppLUgel2: TppLabel
        UserName = 'lblUgel1'
        Caption = 'AK UGEL LUCANAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 42863
        mmTop = 117740
        mmWidth = 26501
        BandType = 4
      end
      object ppLCodPag2: TppLabel
        UserName = 'lblCodPag2'
        Caption = 'AK763382'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 122767
        mmWidth = 14901
        BandType = 4
      end
      object ppLabel170: TppLabel
        UserName = 'Label170'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 113242
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel171: TppLabel
        UserName = 'Label171'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 122502
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel172: TppLabel
        UserName = 'Label172'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 128059
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel173: TppLabel
        UserName = 'Label173'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 133086
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel174: TppLabel
        UserName = 'Label174'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 42598
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel175: TppLabel
        UserName = 'Label175'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 47096
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel176: TppLabel
        UserName = 'Label176'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 51858
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel178: TppLabel
        UserName = 'Label178'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 61913
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel179: TppLabel
        UserName = 'Label179'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 67204
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel180: TppLabel
        UserName = 'Label180'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 134938
        mmTop = 92075
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel181: TppLabel
        UserName = 'Label181'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 91017
        mmTop = 57150
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel182: TppLabel
        UserName = 'Label182'
        Caption = 'Estado Civil'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 115623
        mmTop = 56886
        mmWidth = 16849
        BandType = 4
      end
      object ppLabel183: TppLabel
        UserName = 'Label183'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 134144
        mmTop = 56886
        mmWidth = 1016
        BandType = 4
      end
      object ppLEstCiv2: TppLabel
        UserName = 'LEstCiv2'
        Caption = 'Soltero(a)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 137054
        mmTop = 56886
        mmWidth = 14012
        BandType = 4
      end
      object ppLabel185: TppLabel
        UserName = 'Label185'
        Caption = 'Doc.de Identidad'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11906
        mmTop = 56886
        mmWidth = 24172
        BandType = 4
      end
      object ppLabel186: TppLabel
        UserName = 'Label186'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 56886
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel187: TppLabel
        UserName = 'Label187'
        Caption = 'DNI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 43127
        mmTop = 56886
        mmWidth = 5461
        BandType = 4
      end
      object ppLabel193: TppLabel
        UserName = 'Label193'
        Caption = 'Cta.Ahorros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 110596
        mmTop = 123031
        mmWidth = 17018
        BandType = 4
      end
      object ppLabel194: TppLabel
        UserName = 'Label194'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 134938
        mmTop = 122767
        mmWidth = 1016
        BandType = 4
      end
      object ppLCtaAhorros2: TppLabel
        UserName = 'LCtaAhorros2'
        Caption = '4619311251'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 138377
        mmTop = 123031
        mmWidth = 17780
        BandType = 4
      end
      object ppLabel196: TppLabel
        UserName = 'Label196'
        Caption = 'Telefono'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 138907
        mmTop = 132821
        mmWidth = 12404
        BandType = 4
      end
      object ppLabel197: TppLabel
        UserName = 'Label197'
        Caption = 'Dpto./Prov./Dist.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11906
        mmTop = 72496
        mmWidth = 23199
        BandType = 4
      end
      object ppLabel198: TppLabel
        UserName = 'Label198'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 72496
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel199: TppLabel
        UserName = 'Label199'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 77788
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel200: TppLabel
        UserName = 'Label200'
        Caption = 'Referencial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3599
        mmLeft = 110596
        mmTop = 78052
        mmWidth = 16172
        BandType = 4
      end
      object ppLabel201: TppLabel
        UserName = 'Label1'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 134673
        mmTop = 78052
        mmWidth = 1016
        BandType = 4
      end
      object ppLTelefonoRef2: TppLabel
        UserName = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 138377
        mmTop = 78317
        mmWidth = 20913
        BandType = 4
      end
      object ppLabel203: TppLabel
        UserName = 'Label3'
        Caption = 'Dpto./Prov./Dist.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11642
        mmTop = 137584
        mmWidth = 23199
        BandType = 4
      end
      object ppLabel204: TppLabel
        UserName = 'Label602'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 137848
        mmWidth = 1016
        BandType = 4
      end
      object ppLTelfCol2: TppLabel
        UserName = 'Label4'
        Caption = 's/d'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 156369
        mmTop = 133086
        mmWidth = 4276
        BandType = 4
      end
      object ppLabel206: TppLabel
        UserName = 'Label5'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 153459
        mmTop = 132821
        mmWidth = 1016
        BandType = 4
      end
      object ppLine16: TppLine
        UserName = 'Line101'
        Style = lsDouble
        Weight = 0.899999976158142100
        mmHeight = 794
        mmLeft = 12965
        mmTop = 23283
        mmWidth = 132292
        BandType = 4
      end
      object ppImgfoto2: TppImage
        UserName = 'Imgfoto1'
        MaintainAspectRatio = False
        Stretch = True
        mmHeight = 32808
        mmLeft = 146315
        mmTop = 7673
        mmWidth = 39952
        BandType = 4
      end
      object ppLabel209: TppLabel
        UserName = 'Label209'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 40481
        mmTop = 117740
        mmWidth = 1058
        BandType = 4
      end
      object ppLTipAso2: TppLabel
        UserName = 'LTipAso2'
        Caption = 'CESANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 92075
        mmWidth = 14944
        BandType = 4
      end
      object ppLabel215: TppLabel
        UserName = 'Label215'
        Caption = 'Nombramiento el'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11377
        mmTop = 97631
        mmWidth = 24342
        BandType = 4
      end
      object ppLabel216: TppLabel
        UserName = 'Label401'
        Caption = 'Tipo de Docente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11642
        mmTop = 91811
        mmWidth = 23410
        BandType = 4
      end
      object ppLabel217: TppLabel
        UserName = 'Label217'
        Caption = 'Cesado el'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11642
        mmTop = 102659
        mmWidth = 14393
        BandType = 4
      end
      object ppLabel218: TppLabel
        UserName = 'Label218'
        Caption = 'Resoluci'#243'n N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 110596
        mmTop = 102659
        mmWidth = 20278
        BandType = 4
      end
      object ppLFResCes2: TppLabel
        UserName = 'LFResCes2'
        Caption = '24/10/2008'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 102659
        mmWidth = 16002
        BandType = 4
      end
      object ppLResCes2: TppLabel
        UserName = 'LResCes2'
        Caption = '2635'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 138377
        mmTop = 102659
        mmWidth = 7112
        BandType = 4
      end
      object ppLFResNom2: TppLabel
        UserName = 'LFResNom2'
        Caption = '26/04/1991'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 97631
        mmWidth = 16002
        BandType = 4
      end
      object ppLResNom2: TppLabel
        UserName = 'LResNom2'
        Caption = '296'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 138377
        mmTop = 97631
        mmWidth = 5334
        BandType = 4
      end
      object ppLabel225: TppLabel
        UserName = 'Label225'
        Caption = 'Resoluci'#243'n N'#176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 110596
        mmTop = 97631
        mmWidth = 20278
        BandType = 4
      end
      object ppLabel226: TppLabel
        UserName = 'Label226'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40746
        mmTop = 97631
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel227: TppLabel
        UserName = 'Label701'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40746
        mmTop = 102659
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel228: TppLabel
        UserName = 'Label228'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40746
        mmTop = 92075
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel232: TppLabel
        UserName = 'Label232'
        Caption = 'Regimen de Pensi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11377
        mmTop = 107950
        mmWidth = 29676
        BandType = 4
      end
      object ppLTipoPension2: TppLabel
        UserName = 'LTipoPension2'
        Caption = '19990'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 42863
        mmTop = 107950
        mmWidth = 8890
        BandType = 4
      end
      object ppLAFP2: TppLabel
        UserName = 'lAFP1'
        Caption = 'lAFP2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3598
        mmLeft = 55298
        mmTop = 107950
        mmWidth = 8678
        BandType = 4
      end
      object ppLEstCta2: TppLabel
        UserName = 'LEstCta2'
        Caption = '(A)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 160073
        mmTop = 123031
        mmWidth = 4233
        BandType = 4
      end
      object ppLSINFOT2: TppLabel
        UserName = 'LSINFOT2'
        Caption = '<< SIN FOT0 >>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4191
        mmLeft = 153194
        mmTop = 41540
        mmWidth = 25950
        BandType = 4
      end
      object ppLSINFIRMA2: TppLabel
        UserName = 'lSinFirma1'
        Caption = '<< SIN FIRMA >>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4191
        mmLeft = 151871
        mmTop = 45773
        mmWidth = 27982
        BandType = 4
      end
      object ppLEmail: TppLabel
        UserName = 'LEmail'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 49477
        mmTop = 160867
        mmWidth = 9779
        BandType = 4
      end
      object ppLmaquina_2: TppLabel
        UserName = 'Lmaquina_2'
        Caption = 'SISTEMAS06'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 27517
        mmTop = 240507
        mmWidth = 17526
        BandType = 4
      end
      object ppLabel249: TppLabel
        UserName = 'Label249'
        Caption = 'Equipo:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 8467
        mmTop = 240507
        mmWidth = 9525
        BandType = 4
      end
      object ppLUsuario_2: TppLabel
        UserName = 'Usuario2'
        Caption = 'JCARBONEL-Jorge Carbonel'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 27517
        mmTop = 247915
        mmWidth = 37253
        BandType = 4
      end
      object ppLabel251: TppLabel
        UserName = 'Label251'
        Caption = 'Usuario :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 8467
        mmTop = 247915
        mmWidth = 11345
        BandType = 4
      end
      object ppLabel252: TppLabel
        UserName = 'Label252'
        Caption = 'Fecha y Hora:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 8467
        mmTop = 244211
        mmWidth = 17780
        BandType = 4
      end
      object ppLFechaHora_2: TppLabel
        UserName = 'FechaHora2'
        Caption = '22/12/2009 10:44:39 a.m.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 27252
        mmTop = 244211
        mmWidth = 32343
        BandType = 4
      end
      object ppLabel255: TppLabel
        UserName = 'Label255'
        Caption = 'Condici'#243'n de la Vivienda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 11377
        mmTop = 156369
        mmWidth = 35179
        BandType = 4
      end
      object ppLCondicionViv2: TppLabel
        UserName = 'LCondicionViv2'
        Caption = 'Propia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3598
        mmLeft = 49477
        mmTop = 156104
        mmWidth = 9229
        BandType = 4
      end
      object ppLabel267: TppLabel
        UserName = 'Label267'
        Caption = 'Huella Digital'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3598
        mmLeft = 144039
        mmTop = 221457
        mmWidth = 18838
        BandType = 4
      end
      object ppShape81: TppShape
        UserName = 'Shape302'
        Brush.Color = clWindow
        Pen.Style = psInsideFrame
        mmHeight = 50271
        mmLeft = 8467
        mmTop = 171186
        mmWidth = 173038
        BandType = 4
      end
      object ppLabel268: TppLabel
        UserName = 'Label268'
        Caption = 'Firmar dentro del recuadro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 44715
        mmTop = 221192
        mmWidth = 42598
        BandType = 4
      end
      object ppShape82: TppShape
        UserName = 'Shape82'
        Pen.Style = psClear
        mmHeight = 45508
        mmLeft = 13229
        mmTop = 173302
        mmWidth = 103452
        BandType = 4
      end
      object ppLabel271: TppLabel
        UserName = 'Label271'
        Caption = 'APROBADO POR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3260
        mmLeft = 143934
        mmTop = 257176
        mmWidth = 23029
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 136525
        mmTop = 255853
        mmWidth = 37042
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line22'
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 69056
        mmTop = 255853
        mmWidth = 37042
        BandType = 4
      end
      object ppLabel282: TppLabel
        UserName = 'Label282'
        Caption = 'EMITIDO POR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3260
        mmLeft = 76729
        mmTop = 257176
        mmWidth = 18754
        BandType = 4
      end
      object ppImage4: TppImage
        UserName = 'ImgFrima1'
        MaintainAspectRatio = False
        Stretch = True
        Transparent = True
        mmHeight = 35719
        mmLeft = 21960
        mmTop = 178065
        mmWidth = 87577
        BandType = 4
      end
      object ppLabel290: TppLabel
        UserName = 'Label290'
        Caption = 'Datos de Impresi'#243'n:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3440
        mmLeft = 8467
        mmTop = 236273
        mmWidth = 30163
        BandType = 4
      end
      object ppSubReport2: TppSubReport
        UserName = 'SubReport2'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppBDEReniec'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 266965
        mmWidth = 197115
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppBDEReniec
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Units = utMillimeters
          Version = '7.02'
          mmColumnWidth = 0
          DataPipelineName = 'ppBDEReniec'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppLabel291: TppLabel
              UserName = 'Label125'
              Caption = 'Datos Incompletos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 12
              Font.Style = [fsBold, fsUnderline]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 4763
              mmLeft = 64294
              mmTop = 1588
              mmWidth = 50536
              BandType = 1
            end
          end
          object ppDetailBand5: TppDetailBand
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText22: TppDBText
              UserName = 'DBText21'
              DataField = 'campo'
              DataPipeline = ppBDEReniec
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 10
              Font.Style = [fsBold]
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'ppBDEReniec'
              mmHeight = 3969
              mmLeft = 49477
              mmTop = 264
              mmWidth = 98690
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLMaquina_3: TppLabel
              UserName = 'LMaquina'
              Caption = 'SISTEMAS06'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 68263
              mmTop = 5292
              mmWidth = 17526
              BandType = 7
            end
            object ppLabel293: TppLabel
              UserName = 'Label127'
              Caption = 'Equipo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 49213
              mmTop = 5292
              mmWidth = 9525
              BandType = 7
            end
            object ppLusuario_3: TppLabel
              UserName = 'Usuario1'
              Caption = 'JCARBONEL-Jorge Carbonel'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 68263
              mmTop = 1588
              mmWidth = 37253
              BandType = 7
            end
            object ppLabel295: TppLabel
              UserName = 'Label129'
              Caption = 'Usuario :'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 49213
              mmTop = 1588
              mmWidth = 11377
              BandType = 7
            end
            object ppLabel296: TppLabel
              UserName = 'Label130'
              Caption = 'Fecha y Hora:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 49213
              mmTop = 8731
              mmWidth = 17727
              BandType = 7
            end
            object ppLFechaHora_3: TppLabel
              UserName = 'FechaHora1'
              Caption = '22/12/2009 10:44:39 a.m.'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3260
              mmLeft = 68263
              mmTop = 8731
              mmWidth = 32343
              BandType = 7
            end
            object ppLine24: TppLine
              UserName = 'Line12'
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 48419
              mmTop = 529
              mmWidth = 40481
              BandType = 7
            end
          end
        end
      end
      object pplValReniec: TppLabel
        UserName = 'lValReniec'
        Caption = 'SI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4191
        mmLeft = 94721
        mmTop = 36513
        mmWidth = 3302
        BandType = 4
      end
      object ppLabel132: TppLabel
        UserName = 'Label1801'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 134938
        mmTop = 97367
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel177: TppLabel
        UserName = 'Label177'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 134938
        mmTop = 102659
        mmWidth = 1016
        BandType = 4
      end
      object ppLabel160: TppLabel
        UserName = 'Label160'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 40481
        mmTop = 107950
        mmWidth = 1016
        BandType = 4
      end
      object ppLine13: TppLine
        UserName = 'Line13'
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 50006
        mmLeft = 125942
        mmTop = 171450
        mmWidth = 265
        BandType = 4
      end
      object ppLabel138: TppLabel
        UserName = 'Label138'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 47361
        mmTop = 151342
        mmWidth = 1058
        BandType = 4
      end
      object ppLabel139: TppLabel
        UserName = 'Label139'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 47361
        mmTop = 156369
        mmWidth = 1058
        BandType = 4
      end
      object ppLabel140: TppLabel
        UserName = 'Label140'
        Caption = ':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 47361
        mmTop = 161132
        mmWidth = 1058
        BandType = 4
      end
      object pplDatIncompletos2: TppLabel
        UserName = 'lDatIncompletos2'
        Caption = '<< DATOS INCOMPLETOS >>'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        Visible = False
        mmHeight = 5821
        mmLeft = 53446
        mmTop = 265
        mmWidth = 71173
        BandType = 4
      end
      object pplblFallecido: TppLabel
        UserName = 'lblFallecido'
        Caption = 'lblFallecido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4191
        mmLeft = 103188
        mmTop = 36513
        mmWidth = 19346
        BandType = 4
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
        mmLeft = 12435
        mmTop = 6085
        mmWidth = 72231
        BandType = 4
      end
    end
    object ppSummaryBand4: TppSummaryBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppdb1: TppDBPipeline
    UserName = 'db1'
    Left = 424
    Top = 400
  end
  object CDSINCOMPLETOS: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'campo'
        DataType = ftString
        Size = 50
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 722
    Top = 377
    Data = {
      340000009619E0BD01000000180000000100000000000300000034000563616D
      706F01004900000001000557494454480200020032000000}
  end
  object DSINCOMPLETOS: TDataSource
    DataSet = CDSINCOMPLETOS
    Left = 746
    Top = 377
  end
  object CDSOBSSINRESOLVER: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'PROCEDENCIA'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'OFICINA'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'OBSERVACION'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'CARACTER'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'COMENTARIO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'USUARIO'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FECHA'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 658
    Top = 369
    Data = {
      DC0000009619E0BD010000001800000007000000000003000000DC000B50524F
      434544454E4349410100490000000100055749445448020002000F00074F4649
      43494E410100490000000100055749445448020002001E000B4F425345525641
      43494F4E010049000000010005574944544802000200C8000843415241435445
      5201004900000001000557494454480200020014000A434F4D454E544152494F
      0100490000000100055749445448020002002800075553554152494F01004900
      0000010005574944544802000200140005464543484108000800000000000000}
  end
  object DSOBSSINRESOLVER: TDataSource
    DataSet = CDSOBSSINRESOLVER
    Left = 690
    Top = 369
  end
  object ppd3: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.CollationType = ctASCII
    DataSettings.DatabaseType = dtParadox
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = ppR3
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 488
    Top = 400
  end
  object ppR3: TppReport
    AutoStop = False
    DataPipeline = ppdb1
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 18000
    PrinterSetup.mmMarginLeft = 20000
    PrinterSetup.mmMarginRight = 15000
    PrinterSetup.mmMarginTop = 20000
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.FileName = 'C:\Users\rsanchezc.DERRAMA\Desktop\CARTA_AUT_DSCO_APO.rtm'
    Units = utMillimeters
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = False
    OutlineSettings.Visible = False
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 456
    Top = 399
    Version = '7.02'
    mmColumnWidth = 0
    DataPipelineName = 'ppdb1'
    object ppHeaderBand5: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 39952
      mmPrintPosition = 0
      object ppDBText35: TppDBText
        UserName = 'DBText1'
        DataField = 'DIA'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4022
        mmLeft = 92340
        mmTop = 15669
        mmWidth = 3895
        BandType = 0
      end
      object ppDBText36: TppDBText
        UserName = 'DBText2'
        DataField = 'MESDES'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4022
        mmLeft = 113025
        mmTop = 15669
        mmWidth = 20278
        BandType = 0
      end
      object ppDBText37: TppDBText
        UserName = 'DBText3'
        DataField = 'ANO'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4022
        mmLeft = 166159
        mmTop = 15669
        mmWidth = 3895
        BandType = 0
      end
    end
    object ppDetailBand7: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 67733
      mmPrintPosition = 0
      object ppDBText38: TppDBText
        UserName = 'DBText4'
        DataField = 'ASOAPENOMDNI'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4763
        mmLeft = 55563
        mmTop = 20902
        mmWidth = 115094
        BandType = 4
      end
      object ppDBText39: TppDBText
        UserName = 'DBText5'
        DataField = 'ASODNI'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4763
        mmLeft = 58473
        mmTop = 26988
        mmWidth = 26723
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText6'
        DataField = 'ANO_NOMB'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4763
        mmLeft = 27252
        mmTop = 33338
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText7'
        DataField = 'USENOM'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3217
        mmLeft = 30073
        mmTop = 39423
        mmWidth = 45244
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        DataField = 'DIRREGEDU'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3175
        mmLeft = 129117
        mmTop = 33867
        mmWidth = 41275
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 30163
      mmPrintPosition = 0
      object ppDBText43: TppDBText
        UserName = 'DBText10'
        DataField = 'ASODIR'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 34925
        mmTop = 0
        mmWidth = 136790
        BandType = 8
      end
      object ppDBText44: TppDBText
        UserName = 'DBText11'
        AutoSize = True
        DataField = 'ASOTELF1'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4022
        mmLeft = 25400
        mmTop = 5556
        mmWidth = 14817
        BandType = 8
      end
      object ppDBText45: TppDBText
        UserName = 'DBText12'
        AutoSize = True
        DataField = 'ASOEMAIL'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4022
        mmLeft = 24871
        mmTop = 11113
        mmWidth = 54102
        BandType = 8
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        AutoSize = True
        DataField = 'ASOTELF2'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4022
        mmLeft = 90729
        mmTop = 5556
        mmWidth = 17526
        BandType = 8
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        AutoSize = True
        DataField = 'ASODESLAB'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 4022
        mmLeft = 35454
        mmTop = 16404
        mmWidth = 38312
        BandType = 8
      end
      object ppDBText11: TppDBText
        UserName = 'DBText9'
        DataField = 'ASORESNOM'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 114829
        mmTop = 22225
        mmWidth = 17463
        BandType = 8
      end
      object ppDBText6: TppDBText
        UserName = 'DBText8'
        DataField = 'FERESDIA'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 47096
        mmTop = 22225
        mmWidth = 8467
        BandType = 8
      end
      object ppDBText12: TppDBText
        UserName = 'DBText14'
        DataField = 'FERESMES'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 58738
        mmTop = 22490
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        DataField = 'FERESANIO'
        DataPipeline = ppdb1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppdb1'
        mmHeight = 3969
        mmLeft = 73290
        mmTop = 22754
        mmWidth = 13229
        BandType = 8
      end
    end
    object ppParameterList2: TppParameterList
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
    Report = ppR3
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    Left = 752
    Top = 289
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Options = [ofHideReadOnly, ofFileMustExist, ofEnableSizing]
    Left = 116
    Top = 16
  end
  object pprHojaCargoExp: TppReport
    OnPrintingComplete = pprHojaCargoExpPrintingComplete
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
    Template.FileName = 
      'D:\Juver\01_Proyectos\2016\PREVISION SOCIAL\HPC_20160XX_PRE\FUEN' +
      'TES_CLIENTE_2016XX\Reportes\HOJA_CARGO_EXP.rtm'
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 490
    Top = 14
    Version = '7.02'
    mmColumnWidth = 0
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 115359
      mmPrintPosition = 0
      object ppImage3: TppImage
        UserName = 'Image3'
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
        mmTop = 1852
        mmWidth = 72231
        BandType = 0
      end
      object ppLabel190: TppLabel
        UserName = 'Label190'
        Caption = 'Cargo de recepci'#243'n de expediente de beneficio'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 14
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 5821
        mmLeft = 37835
        mmTop = 19844
        mmWidth = 121444
        BandType = 0
      end
      object ppLblCodCarExp: TppLabel
        UserName = 'LblCodCarExp'
        Caption = 'N'#176' CCCCCCCC-YYYY-PS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4022
        mmLeft = 148805
        mmTop = 28046
        mmWidth = 41063
        BandType = 0
      end
      object ppLblTitular: TppLabel
        UserName = 'LblCodCarExp1'
        Caption = 'nombre del titular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 37042
        mmWidth = 120122
        BandType = 0
      end
      object pplblDNI: TppLabel
        UserName = 'lblDNI'
        Caption = 'dni'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 42333
        mmWidth = 120122
        BandType = 0
      end
      object pplblTelefonos: TppLabel
        UserName = 'lblTelefonos'
        Caption = 'Telefonos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 47625
        mmWidth = 120122
        BandType = 0
      end
      object pplblCorreo: TppLabel
        UserName = 'lblCorreo'
        Caption = 'Correo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 52917
        mmWidth = 120122
        BandType = 0
      end
      object pplblFechaHora: TppLabel
        UserName = 'Label1'
        Caption = 'Fecha hora de recepcion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 58208
        mmWidth = 120122
        BandType = 0
      end
      object pplblUsuario: TppLabel
        UserName = 'Label2'
        Caption = 'usuario'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 63500
        mmWidth = 120122
        BandType = 0
      end
      object pplblOficina: TppLabel
        UserName = 'lblOficina'
        Caption = 'Oficina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 69850
        mmTop = 69586
        mmWidth = 120122
        BandType = 0
      end
      object ppLabel208: TppLabel
        UserName = 'Label3'
        Caption = 'Nombre del Titular del Expediente : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 37042
        mmWidth = 65088
        BandType = 0
      end
      object ppLabel167: TppLabel
        UserName = 'Label167'
        Caption = 'Tel'#233'fonos : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 47625
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel168: TppLabel
        UserName = 'Label168'
        Caption = 'Correo : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 52917
        mmWidth = 16140
        BandType = 0
      end
      object ppLabel169: TppLabel
        UserName = 'Label169'
        Caption = 'Fecha y hora de recepci'#243'n : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 58208
        mmWidth = 49742
        BandType = 0
      end
      object ppLabel184: TppLabel
        UserName = 'Label184'
        Caption = 'Usuario : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 63500
        mmWidth = 17463
        BandType = 0
      end
      object ppLabel188: TppLabel
        UserName = 'Label188'
        Caption = 'Oficina de origen : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 69586
        mmWidth = 34131
        BandType = 0
      end
      object ppLabel189: TppLabel
        UserName = 'Label189'
        Caption = 'DNI : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 42333
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel191: TppLabel
        UserName = 'Label191'
        Caption = 
          'Agradecemos dejar sus datos correctos para comunicarnos con uste' +
          'd, ante cualquier consulta y/u observaci'#243'n.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 77523
        mmWidth = 188119
        BandType = 0
      end
      object ppLabel192: TppLabel
        UserName = 'Label192'
        Caption = 'Previsi'#243'n Social'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        mmHeight = 3175
        mmLeft = 2646
        mmTop = 82021
        mmWidth = 25135
        BandType = 0
      end
      object ppLine14: TppLine
        UserName = 'Line14'
        Weight = 0.750000000000000000
        mmHeight = 3969
        mmLeft = 127000
        mmTop = 108479
        mmWidth = 62971
        BandType = 0
      end
      object ppLabel195: TppLabel
        UserName = 'Label195'
        Caption = 'Firma del Titular'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3175
        mmLeft = 148432
        mmTop = 110331
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel202: TppLabel
        UserName = 'Label4'
        Caption = 'Fecha y hora de impresi'#243'n : '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Draft 20cpi'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2646
        mmTop = 110596
        mmWidth = 47625
        BandType = 0
      end
      object pplfechahoraimpresion: TppLabel
        UserName = 'Label5'
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3979
        mmLeft = 52123
        mmTop = 110596
        mmWidth = 44958
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
  end
end
