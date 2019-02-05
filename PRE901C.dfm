object FCboCausaCese: TFCboCausaCese
  Left = 0
  Top = 0
  Width = 234
  Height = 41
  TabOrder = 0
  DesignSize = (
    234
    41)
  object lblEtiqueta: TLabel
    Left = 0
    Top = 0
    Width = 72
    Height = 15
    Caption = 'Causa de Cese'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object cbListaDatos: TwwDBLookupComboDlg
    Left = 0
    Top = 19
    Width = 234
    Height = 21
    Cursor = crHandPoint
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Buscar Causa de Cese'
    MaxWidth = 0
    MaxHeight = 209
    Style = csDropDownList
    MaxLength = 5
    ParentFont = False
    TabOrder = 0
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = True
    OnEnter = cbListaDatosEnter
    OnExit = cbListaDatosExit
  end
end
