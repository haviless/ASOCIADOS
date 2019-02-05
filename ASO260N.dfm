object FMantRegalo: TFMantRegalo
  Left = 537
  Top = 198
  BorderStyle = bsDialog
  Caption = 'Asignar Obsequio'
  ClientHeight = 313
  ClientWidth = 743
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblAsociado: TLabel
    Left = 4
    Top = 5
    Width = 92
    Height = 23
    Caption = 'ASOCIADO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgListRegalos: TwwDBGrid
    Left = 4
    Top = 91
    Width = 736
    Height = 185
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    ExportOptions.Delimiter = '|'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
  end
  object btnAceptar: TButton
    Left = 583
    Top = 284
    Width = 76
    Height = 25
    Caption = 'Obsequiar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnAceptarClick
  end
  object btnCancelar: TButton
    Left = 662
    Top = 283
    Width = 76
    Height = 25
    Caption = 'Cancelar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnCancelarClick
  end
  object GroupBox1: TGroupBox
    Left = 4
    Top = 28
    Width = 736
    Height = 60
    TabOrder = 3
    object Label3: TLabel
      Left = 3
      Top = 9
      Width = 59
      Height = 21
      Caption = 'Oficina:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 298
      Top = 7
      Width = 62
      Height = 21
      Caption = 'Entrega:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 620
      Top = 7
      Width = 104
      Height = 21
      Caption = 'Fecha Entrega'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbloficina: TLabel
      Left = 104
      Top = 29
      Width = 76
      Height = 23
      Caption = 'OFICINA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblINCURSION: TLabel
      Left = 394
      Top = 26
      Width = 49
      Height = 23
      Caption = 'ZONA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dblOficina: TwwDBLookupCombo
      Left = 3
      Top = 31
      Width = 93
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupField = 'CODOFI'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      SeqSearchOptions = [ssoEnabled, ssoCaseSensitive]
      PreciseEditRegion = False
      AllowClearKey = False
      ShowMatchText = True
      OnChange = dblOficinaChange
      OnKeyPress = dblOficinaKeyPress
    end
    object dblINCURSION: TwwDBLookupCombo
      Left = 296
      Top = 29
      Width = 93
      Height = 21
      DropDownAlignment = taLeftJustify
      LookupField = 'CODOFI'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblINCURSIONChange
      OnExit = dblINCURSIONExit
      OnKeyPress = dblINCURSIONKeyPress
    end
    object dbdFecentrega: TwwDBDateTimePicker
      Left = 622
      Top = 28
      Width = 97
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 2
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
end
