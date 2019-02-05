object FMantAsociadoIguApeLiqAnt: TFMantAsociadoIguApeLiqAnt
  Left = 586
  Top = 300
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Asociados con igual Apellido en Liquidaci'#243'n Antigua'
  ClientHeight = 181
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlValAsoPrev: TPanel
    Left = 0
    Top = 0
    Width = 529
    Height = 177
    TabOrder = 0
    object dbgValAsoPrev: TwwDBGrid
      Left = 17
      Top = 4
      Width = 497
      Height = 135
      DisableThemesInTitle = False
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ReadOnly = True
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
    object BitBtn2: TBitBtn
      Left = 185
      Top = 146
      Width = 75
      Height = 25
      Caption = 'Continua'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 300
      Top = 146
      Width = 75
      Height = 25
      Caption = 'Cancela'
      TabOrder = 2
    end
  end
end
