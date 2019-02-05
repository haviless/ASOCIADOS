object FMantAsociadoDatosValidar: TFMantAsociadoDatosValidar
  Left = 423
  Top = 276
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Datos a VALIDAR'
  ClientHeight = 178
  ClientWidth = 213
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlDatosAValidar: TPanel
    Left = 0
    Top = 0
    Width = 214
    Height = 177
    TabOrder = 0
    object dbgValida: TwwDBGrid
      Left = 7
      Top = 7
      Width = 201
      Height = 135
      DisableThemesInTitle = False
      ControlType.Strings = (
        'Flag;CheckBox;1;0')
      Selected.Strings = (
        'Descripcion'#9'20'#9'Descripcion'
        'Flag'#9'1'#9'Flag')
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      KeyOptions = []
      Options = [dgEditing, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      ParentFont = False
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      OnDrawDataCell = dbgValidaDrawDataCell
      OnDblClick = dbgValidaDblClick
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 7
      Top = 145
      Width = 198
      Height = 26
      Caption = 'Valida Datos'
      Color = 16777088
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentClipping = True
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
  end
end
