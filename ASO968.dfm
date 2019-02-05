object FAsiCueAhoInt: TFAsiCueAhoInt
  Left = 241
  Top = 192
  BorderStyle = bsDialog
  Caption = 'Asignaci'#243'n de cuentas de ahorros internas'
  ClientHeight = 486
  ClientWidth = 546
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbdatos: TGroupBox
    Left = 8
    Top = 89
    Width = 534
    Height = 193
    Caption = ' Datos del asociado '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 18
      Width = 63
      Height = 13
      Caption = 'C'#243'd. Modular'
    end
    object Label2: TLabel
      Left = 89
      Top = 18
      Width = 101
      Height = 13
      Caption = 'Apellidos y Nombre(s)'
    end
    object Label3: TLabel
      Left = 6
      Top = 59
      Width = 90
      Height = 13
      Caption = 'Unidad de proceso'
    end
    object Label4: TLabel
      Left = 269
      Top = 59
      Width = 88
      Height = 13
      Caption = 'Unidad de Gesti'#243'n'
    end
    object Label5: TLabel
      Left = 6
      Top = 100
      Width = 82
      Height = 13
      Caption = 'Tipo de asociado'
    end
    object Label6: TLabel
      Left = 6
      Top = 145
      Width = 79
      Height = 13
      Caption = 'N'#250'mero de Cese'
    end
    object Label7: TLabel
      Left = 153
      Top = 145
      Width = 72
      Height = 13
      Caption = 'Fecha de Cese'
    end
    object Label8: TLabel
      Left = 276
      Top = 144
      Width = 88
      Height = 13
      Caption = 'Cuenta de Ahorros'
    end
    object Panel1: TPanel
      Left = 6
      Top = 34
      Width = 74
      Height = 23
      Caption = 'Panel1'
      DragMode = dmAutomatic
      Enabled = False
      TabOrder = 0
      object edtasocodmod: TEdit
        Left = 1
        Top = 1
        Width = 72
        Height = 21
        TabOrder = 0
      end
    end
    object Panel2: TPanel
      Left = 86
      Top = 34
      Width = 442
      Height = 23
      Caption = 'Panel2'
      Enabled = False
      TabOrder = 1
      object edtasoapenom: TEdit
        Left = 1
        Top = 1
        Width = 440
        Height = 21
        TabOrder = 0
      end
    end
    object Panel3: TPanel
      Left = 6
      Top = 74
      Width = 259
      Height = 23
      Caption = 'Panel3'
      Enabled = False
      TabOrder = 2
      object edtupronom: TEdit
        Left = 1
        Top = 1
        Width = 257
        Height = 21
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 269
      Top = 74
      Width = 259
      Height = 23
      Caption = 'Panel4'
      Enabled = False
      TabOrder = 3
      object edtusenom: TEdit
        Left = 1
        Top = 1
        Width = 257
        Height = 21
        TabOrder = 0
      end
    end
    object Panel5: TPanel
      Left = 6
      Top = 116
      Width = 259
      Height = 23
      Caption = 'Panel3'
      Enabled = False
      TabOrder = 4
      object edtasotipid: TEdit
        Left = 1
        Top = 1
        Width = 257
        Height = 21
        TabOrder = 0
      end
    end
    object Panel6: TPanel
      Left = 150
      Top = 161
      Width = 115
      Height = 23
      Caption = 'Panel3'
      Enabled = False
      TabOrder = 5
      object edtAsoFResCese: TEdit
        Left = 1
        Top = 1
        Width = 113
        Height = 21
        TabOrder = 0
      end
    end
    object Panel7: TPanel
      Left = 6
      Top = 161
      Width = 132
      Height = 23
      Caption = 'Panel3'
      Enabled = False
      TabOrder = 6
      object edtAsorescese: TEdit
        Left = 1
        Top = 1
        Width = 130
        Height = 21
        TabOrder = 0
      end
    end
    object Panel9: TPanel
      Left = 274
      Top = 161
      Width = 115
      Height = 23
      Caption = 'Panel3'
      Enabled = False
      TabOrder = 7
      object edtasoncta: TEdit
        Left = 1
        Top = 1
        Width = 113
        Height = 21
        TabOrder = 0
      end
    end
  end
  object btnActualizar: TBitBtn
    Left = 8
    Top = 294
    Width = 141
    Height = 35
    Caption = 'Asignar cuenta Interna'
    Enabled = False
    TabOrder = 1
    OnClick = btnActualizarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
      000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
      99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
      0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
      FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
      0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
      000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
      00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
      00FF3777773333F77733333333333000033F3333333337777333}
    NumGlyphs = 2
  end
  object BitBtn1: TBitBtn
    Left = 452
    Top = 447
    Width = 90
    Height = 31
    Caption = 'Cerrar'
    TabOrder = 2
    OnClick = BitBtn1Click
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
  object btnActualiza: TBitBtn
    Left = 8
    Top = 339
    Width = 141
    Height = 31
    Caption = 'Actualizar Cuenta'
    Enabled = False
    TabOrder = 3
    OnClick = btnActualizaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003FF0000000F0
      000033F77777773777773FFF0CCC0FF09990333F73F37337F33733FFF0C0FFF0
      99903333F7373337F337333FFF0FFFF0999033333F73FFF7FFF73333FFF000F0
      0000333333F77737777733333F07B70FFFFF3333337F337F33333333330BBB0F
      FFFF3333337F337F333333333307B70FFFFF33333373FF733F333333333000FF
      0FFF3333333777337FF3333333333FF000FF33FFFFF3333777FF300000333300
      000F377777F33377777F30EEE0333000000037F337F33777777730EEE0333330
      00FF37F337F3333777F330EEE033333000FF37FFF7F3333777F3300000333330
      00FF3777773333F77733333333333000033F3333333337777333}
    NumGlyphs = 2
  end
  object GroupBox2: TGroupBox
    Left = 158
    Top = 288
    Width = 98
    Height = 45
    Caption = 'CI. asignada '
    Enabled = False
    TabOrder = 4
    object Panel8: TPanel
      Left = 5
      Top = 15
      Width = 87
      Height = 23
      Caption = 'Panel8'
      TabOrder = 0
      object edtasonctaint: TEdit
        Left = 1
        Top = 1
        Width = 85
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
    end
  end
  object gbbuscar: TGroupBox
    Left = 8
    Top = 8
    Width = 249
    Height = 65
    Caption = 'Ingrese el DNI del asociado'
    TabOrder = 5
    object Label9: TLabel
      Left = 4
      Top = 27
      Width = 81
      Height = 15
      Caption = 'Ingrese el DNI:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Panel10: TPanel
      Left = 89
      Top = 21
      Width = 73
      Height = 27
      Caption = 'Panel9'
      TabOrder = 0
      object measodni: TMaskEdit
        Left = 1
        Top = 2
        Width = 72
        Height = 24
        EditMask = '########'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 8
        ParentFont = False
        TabOrder = 0
        Text = '        '
        OnExit = measodniExit
      end
    end
    object btnBuscar: TBitBtn
      Left = 166
      Top = 20
      Width = 74
      Height = 28
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = btnBuscarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00370777033333
        3330337F3F7F33333F3787070003333707303F737773333373F7007703333330
        700077337F3333373777887007333337007733F773F333337733700070333333
        077037773733333F7F37703707333300080737F373333377737F003333333307
        78087733FFF3337FFF7F33300033330008073F3777F33F777F73073070370733
        078073F7F7FF73F37FF7700070007037007837773777F73377FF007777700730
        70007733FFF77F37377707700077033707307F37773F7FFF7337080777070003
        3330737F3F7F777F333778080707770333333F7F737F3F7F3333080787070003
        33337F73FF737773333307800077033333337337773373333333}
      NumGlyphs = 2
    end
  end
  object Panel11: TPanel
    Left = 266
    Top = 11
    Width = 276
    Height = 62
    BorderStyle = bsSingle
    Caption = 'Panel11'
    Color = 13165023
    TabOrder = 6
    object Memo1: TMemo
      Left = 8
      Top = 7
      Width = 259
      Height = 45
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        'NOTA: S'#243'lo se puede asignar Cuenta Interna'
        'a Asociados "CESANTES" con Fecha de '
        'Resoluci'#243'n de Cese Menor al a'#241'o 1997.')
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnlAlerta: TPanel
    Left = 7
    Top = 382
    Width = 394
    Height = 97
    BorderStyle = bsSingle
    Color = 13165023
    Enabled = False
    TabOrder = 7
    Visible = False
    object Memo2: TMemo
      Left = 6
      Top = 5
      Width = 379
      Height = 84
      BorderStyle = bsNone
      Color = 13165023
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Lines.Strings = (
        '                              '#161#161#161' ATENCION !!!'
        ''
        'La asignaci'#243'n de una Cuenta Interna en forma directa, salta los '
        'algoritmos de verificaci'#243'n.'
        
          'Por lo tanto, esta Cuenta no est'#225' siendo validada si es verdader' +
          'a,'
        'considerar ello antes de Continuar.')
      ParentFont = False
      TabOrder = 0
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 504
    Top = 288
  end
end
