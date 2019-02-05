object FMantAsociadoObservacion: TFMantAsociadoObservacion
  Left = 314
  Top = 365
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Observaci'#243'n sobre el Asociado'
  ClientHeight = 142
  ClientWidth = 573
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
  object pnlObservacion: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 137
    TabOrder = 0
    object dbgObservacion: TwwDBGrid
      Left = 12
      Top = 8
      Width = 545
      Height = 121
      DisableThemesInTitle = False
      Selected.Strings = (
        'FECHA'#9'22'#9'Fecha'#9#9
        'CODOBS'#9'2'#9'Cod'#9#9
        'RECOBS'#9'1'#9'Rec'#9#9
        'OBSERVA'#9'200'#9'Observacion'#9#9
        'USUARIO'#9'10'#9'Usuario'#9#9
        'EQUUSU'#9'10'#9'Equipo'#9#9
        'OFIUSU'#9'2'#9'Ofi'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      KeyOptions = []
      Options = [dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
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
      OnDblClick = dbgObservacionDblClick
      object wwDBGrid2IButton: TwwIButton
        Left = 0
        Top = 0
        Width = 25
        Height = 22
        AllowAllUp = True
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
        OnClick = wwDBGrid2IButtonClick
      end
    end
  end
  object pnlIngObs: TPanel
    Left = 566
    Top = 17
    Width = 436
    Height = 118
    TabOrder = 2
    Visible = False
    object Label39: TLabel
      Left = 9
      Top = 84
      Width = 117
      Height = 13
      Caption = '(Maximo 200 Caracteres)'
    end
    object memObsAso: TMemo
      Left = 9
      Top = 43
      Width = 418
      Height = 43
      MaxLength = 200
      TabOrder = 0
    end
    object btnGrabaObs: TBitBtn
      Left = 323
      Top = 90
      Width = 104
      Height = 25
      Caption = 'Graba Obs.'
      TabOrder = 1
      OnClick = btnGrabaObsClick
    end
    object Button7: TButton
      Left = 414
      Top = 3
      Width = 20
      Height = 20
      Caption = 'x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button7Click
    end
    object lkcTipObs: TwwDBLookupCombo
      Left = 10
      Top = 18
      Width = 49
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CODOBS'#9'2'#9'COD'#9'F'
        'DESOBS'#9'30'#9'DESCRIPCION'#9'F')
      LookupTable = DM1.cdsQry8
      LookupField = 'codobs'
      Options = [loColLines, loRowLines, loTitles]
      TabOrder = 3
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = lkcTipObsChange
      OnExit = lkcTipObsExit
    end
    object Panel16: TPanel
      Left = 62
      Top = 17
      Width = 347
      Height = 22
      Enabled = False
      TabOrder = 4
      object edtObs: TEdit
        Left = 2
        Top = 1
        Width = 341
        Height = 21
        Color = clInfoBk
        TabOrder = 0
      end
    end
  end
  object pnlObsConsulta: TPanel
    Left = 112
    Top = 42
    Width = 429
    Height = 90
    Constraints.MaxHeight = 90
    Constraints.MaxWidth = 429
    Constraints.MinHeight = 90
    Constraints.MinWidth = 429
    TabOrder = 1
    Visible = False
    object memObsConsulta: TMemo
      Left = 4
      Top = 29
      Width = 402
      Height = 55
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
    object Button8: TButton
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
      OnClick = Button8Click
    end
    object edtObsConsulta: TEdit
      Left = 5
      Top = 5
      Width = 401
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
end
