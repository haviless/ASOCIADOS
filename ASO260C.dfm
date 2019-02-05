object FMantAsociadoObsSinRes: TFMantAsociadoObsSinRes
  Left = 440
  Top = 350
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'El Asociado tiene Observaciones Sin Resolver'
  ClientHeight = 172
  ClientWidth = 522
  Color = clBtnFace
  Constraints.MaxHeight = 200
  Constraints.MaxWidth = 530
  Constraints.MinHeight = 199
  Constraints.MinWidth = 530
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlObsSinResolver: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 169
    TabOrder = 0
    object wwDBGrid1: TwwDBGrid
      Left = 10
      Top = 3
      Width = 502
      Height = 161
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyOptions = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Comic Sans MS'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDblClick = wwDBGrid1DblClick
    end
    object pnlObsConsulta2: TPanel
      Left = 48
      Top = 58
      Width = 429
      Height = 90
      TabOrder = 1
      Visible = False
      object memObsConsulta2: TMemo
        Left = 7
        Top = 13
        Width = 400
        Height = 68
        Color = 11468799
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 200
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object Button12: TButton
        Left = 410
        Top = 1
        Width = 18
        Height = 18
        Caption = 'x'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button12Click
      end
    end
  end
end
