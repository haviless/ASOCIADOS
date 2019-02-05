object fResNomb: TfResNomb
  Left = 156
  Top = 278
  BorderStyle = bsDialog
  Caption = 'Resoluciones'
  ClientHeight = 207
  ClientWidth = 670
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grpResoluciones: TGroupBox
    Left = 2
    Top = 147
    Width = 666
    Height = 58
    TabOrder = 0
    object Label10: TLabel
      Left = 6
      Top = 7
      Width = 69
      Height = 17
      Caption = 'Resoluciones'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 335
      Top = 7
      Width = 42
      Height = 17
      Caption = 'Numero'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 467
      Top = 8
      Width = 31
      Height = 17
      Caption = 'Fecha'
      Color = 13165023
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object DbLlTipRes: TwwDBLookupCombo
      Left = 6
      Top = 24
      Width = 41
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TIPRESID'#9'3'#9'Codigo'#9'F'
        'TIPRESDES'#9'35'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsRecursos
      LookupField = 'TIPRESID'
      Options = [loColLines, loRowLines, loTitles]
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLlTipResChange
    end
    object Panel10: TPanel
      Left = 45
      Top = 23
      Width = 274
      Height = 24
      Caption = 'Panel10'
      Enabled = False
      TabOrder = 1
      object edtDesRes: TEdit
        Left = 3
        Top = 1
        Width = 268
        Height = 23
        Color = 15269887
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
    end
    object dbeNroRes: TwwDBEdit
      Left = 334
      Top = 24
      Width = 114
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbDtpFecRes: TwwDBDateTimePicker
      Left = 466
      Top = 24
      Width = 122
      Height = 23
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ShowButton = True
      TabOrder = 3
      DisplayFormat = 'DD/MM/YYYY'
    end
    object z2bbtnAcepta: TfcShapeBtn
      Left = 615
      Top = 19
      Width = 30
      Height = 31
      Cursor = crHandPoint
      Hint = 'Grabar Nueva Resoluci'#243'n'
      Color = 10207162
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 25
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 4
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnAceptaClick
    end
  end
  object grpDatos: TGroupBox
    Left = 3
    Top = -3
    Width = 665
    Height = 153
    TabOrder = 1
    object dtgResoluciones: TwwDBGrid
      Left = 5
      Top = 10
      Width = 655
      Height = 138
      DisableThemesInTitle = False
      Selected.Strings = (
        'RESID'#9'3'#9'ID'#9#9
        'TIPRESDES'#9'32'#9'Tipo De~Resoluci'#243'n'#9'F'#9
        'ASONRES'#9'10'#9'Numero'#9#9
        'ASOFRES'#9'12'#9'Fecha'#9#9
        'RESFVIG'#9'7'#9'Vigente'#9#9
        'USUARIO'#9'12'#9'Actualizado~Por'#9#9
        'HREG'#9'22'#9'Fecha/Hora'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      DataSource = DM1.dsGradoA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDrawDataCell = dtgResolucionesDrawDataCell
    end
  end
end
