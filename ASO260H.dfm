object FMantAsociadoCompletar: TFMantAsociadoCompletar
  Left = 415
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 254
  ClientWidth = 242
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCompletaInf: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 253
    ParentBackground = False
    TabOrder = 0
    TabStop = True
    object Shape15: TShape
      Left = 1
      Top = 1
      Width = 239
      Height = 24
      Align = alTop
      Brush.Color = clRed
    end
    object Label48: TLabel
      Left = 19
      Top = 5
      Width = 201
      Height = 16
      Caption = 'COMPLETAR INFORMACION'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape16: TShape
      Left = 1
      Top = 187
      Width = 239
      Height = 65
      Align = alBottom
      Brush.Color = clRed
    end
    object Label49: TLabel
      Left = 19
      Top = 199
      Width = 211
      Height = 16
      Caption = '* NO  PASARA  A CREDITOS *'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object wwDBGrid2: TwwDBGrid
      Left = 12
      Top = 31
      Width = 218
      Height = 154
      DisableThemesInTitle = False
      Selected.Strings = (
        'campo'#9'32'#9'INFORMACION INCOMPLETA'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      KeyOptions = []
      Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ReadOnly = True
      TabOrder = 0
      TitleAlignment = taCenter
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
    end
    object BitBtn5: TBitBtn
      Left = 86
      Top = 223
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 1
      OnClick = BitBtn5Click
    end
  end
end
