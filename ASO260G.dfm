object FMantAsociadoConfirmaReniec: TFMantAsociadoConfirmaReniec
  Left = 462
  Top = 41
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Datos RENIEC'
  ClientHeight = 622
  ClientWidth = 442
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
  object pnlConfirma: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 617
    TabOrder = 0
    object ImgFotoConfirme: TImage
      Left = 8
      Top = 6
      Width = 126
      Height = 149
      Stretch = True
    end
    object ImgFirmaConfirme: TImage
      Left = 170
      Top = 25
      Width = 215
      Height = 112
      Stretch = True
    end
    object vlisConfirme: TValueListEditor
      Left = 6
      Top = 160
      Width = 427
      Height = 417
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing, goAlwaysShowEditor, goThumbTracking]
      TabOrder = 0
      TitleCaptions.Strings = (
        'Informaci'#243'n'
        'Datos')
      ColWidths = (
        163
        258)
    end
    object btnconfirma: TfcShapeBtn
      Left = 4
      Top = 584
      Width = 300
      Height = 25
      Caption = 'Estos Datos ser'#225'n Actualizados, Confirme'
      Color = clRed
      DitherColor = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 0
      ParentClipping = True
      ParentFont = False
      RoundRectBias = 25
      ShadeStyle = fbsHighlight
      TabOrder = 1
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = btnconfirmaClick
    end
  end
end
