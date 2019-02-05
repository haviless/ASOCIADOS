object FMantAsociadoCompara: TFMantAsociadoCompara
  Left = 562
  Top = 190
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Comparaci'#243'n de Datos'
  ClientHeight = 483
  ClientWidth = 573
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
  object pnlComparacion: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 481
    Caption = 'Comparaci'#243'n de Datos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lisTCompara: TListView
      Left = 17
      Top = 214
      Width = 544
      Height = 212
      Color = clHighlightText
      Columns = <
        item
          Caption = 'INFORMACION'
          Width = 180
        end
        item
          Caption = 'DERRAMA MAGISTERIAL'
          Width = 180
        end
        item
          Caption = 'RENIEC'
          Width = 180
        end>
      ColumnClick = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      GridLines = True
      ReadOnly = True
      RowSelect = True
      ParentFont = False
      TabOrder = 0
      ViewStyle = vsReport
    end
    object Panel12: TPanel
      Left = 15
      Top = 435
      Width = 469
      Height = 38
      BorderStyle = bsSingle
      Caption = 'EXISTE DIFERENCIAS EN DATOS DE RENIEC A REMPLAZAR, CONFIRME'
      Color = 467198
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 485
      Top = 436
      Width = 76
      Height = 36
      Caption = 'Confirma'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
    object GroupBox1: TGroupBox
      Left = 198
      Top = 1
      Width = 181
      Height = 212
      TabOrder = 3
      object imgFotoDerrCompara: TImage
        Left = 24
        Top = 8
        Width = 135
        Height = 149
        Cursor = crHandPoint
        Stretch = True
        OnDblClick = imgFotoDerrComparaDblClick
      end
      object imgFirmaDerrCompara: TImage
        Left = 8
        Top = 160
        Width = 166
        Height = 49
        Cursor = crHandPoint
        Stretch = True
        OnDblClick = imgFirmaDerrComparaDblClick
      end
    end
    object GroupBox2: TGroupBox
      Left = 378
      Top = 1
      Width = 183
      Height = 212
      TabOrder = 4
      object imgFotoRenCompara: TImage
        Left = 31
        Top = 8
        Width = 126
        Height = 149
        Cursor = crHandPoint
        Stretch = True
        OnDblClick = imgFotoRenComparaDblClick
      end
      object imgFirmaRenCompara: TImage
        Left = 9
        Top = 160
        Width = 167
        Height = 49
        Cursor = crHandPoint
        Stretch = True
        OnDblClick = imgFirmaRenComparaDblClick
      end
    end
  end
end
