object FMantAsociadoZoom: TFMantAsociadoZoom
  Left = 230
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 399
  ClientWidth = 781
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
  object pnlzoom: TPanel
    Left = 0
    Top = 0
    Width = 777
    Height = 393
    TabOrder = 0
    object imgDerramaFoto: TImage
      Left = 85
      Top = 44
      Width = 253
      Height = 232
      Stretch = True
    end
    object imgReniecFoto: TImage
      Left = 488
      Top = 45
      Width = 189
      Height = 230
      Stretch = True
    end
    object imgDerramafirma: TImage
      Left = 17
      Top = 281
      Width = 369
      Height = 104
      Stretch = True
    end
    object imgReniecFirma: TImage
      Left = 399
      Top = 280
      Width = 369
      Height = 103
      Stretch = True
    end
    object Shape11: TShape
      Left = -1
      Top = 16
      Width = 780
      Height = 25
    end
    object Shape10: TShape
      Left = 389
      Top = 16
      Width = 7
      Height = 377
    end
    object Label40: TLabel
      Left = 160
      Top = 19
      Width = 90
      Height = 20
      Caption = 'DERRAMA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label41: TLabel
      Left = 536
      Top = 19
      Width = 68
      Height = 20
      Caption = 'RENIEC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
end
