object FMantAsociadoAutDes: TFMantAsociadoAutDes
  Left = 411
  Top = 246
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 203
  ClientWidth = 257
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
  object pnlmenautdes: TPanel
    Left = 0
    Top = -1
    Width = 257
    Height = 202
    Color = clMoneyGreen
    TabOrder = 0
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 255
      Height = 19
      Align = alTop
      Alignment = taCenter
      Caption = 'AUTORIZACION  DE  DESCUENTO'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox3: TGroupBox
      Left = 7
      Top = 20
      Width = 244
      Height = 174
      TabOrder = 1
      object fcLabel1: TfcLabel
        Left = 32
        Top = 14
        Width = 185
        Height = 50
        AutoSize = False
        Caption = 'Asociado no cuenta con autorizaci'#243'n de descuento de aportes.'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaTop
        TextOptions.WordWrap = True
      end
      object lblDcto: TfcLabel
        Left = 24
        Top = 69
        Width = 201
        Height = 68
        AutoSize = False
        Caption = 
          'Debe volver a Firmar la carta de Autorizaci'#243'n de descuento de ap' +
          'ortes. Comunicarse con el Nivel 3.'
        Color = clMoneyGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TextOptions.Alignment = taCenter
        TextOptions.VAlignment = vaTop
        TextOptions.WordWrap = True
        Visible = False
      end
      object btnacepta: TBitBtn
        Left = 87
        Top = 141
        Width = 65
        Height = 25
        Caption = 'Salir'
        TabOrder = 0
        OnClick = btnaceptaClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F333333337F333301111111110333337F333333337F33330111111111
          0333337F3333333F7F333301111111B10333337F333333737F33330111111111
          0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
          0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
          0333337F377777337F333301111111110333337F333333337F33330111111111
          0333337FFFFFFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
      end
    end
  end
end
