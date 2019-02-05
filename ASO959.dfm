object fResNomb2: TfResNomb2
  Left = 300
  Top = 275
  BorderStyle = bsDialog
  Caption = 'Resoluciones'
  ClientHeight = 165
  ClientWidth = 675
  Color = 13165023
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grpResoluciones: TGroupBox
    Left = 8
    Top = 3
    Width = 658
    Height = 158
    Caption = 'Resoluciones :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object dbgResoluciones: TwwDBGrid
      Left = 11
      Top = 18
      Width = 636
      Height = 107
      DisableThemesInTitle = False
      Selected.Strings = (
        'CORRELATIVO'#9'3'#9'Corr.'#9#9
        'ASORESNOM'#9'10'#9'Numero~Res.Nomb.'#9#9
        'ASOFRESNOM'#9'10'#9'Fecha~Res.Nomb.'#9#9
        'ASORESCESE'#9'10'#9'Numero~Res.Cese'#9#9
        'ASOFRESCESE'#9'10'#9'Fecha~Res.Cese'#9#9
        'RESFVIG'#9'7'#9'Vigente'#9#9
        'USUARIO'#9'12'#9'Actualizado~Por'#9#9
        'HREG'#9'22'#9'Fecha/Hora'#9#9)
      IniAttributes.Delimiter = ';;'
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      KeyOptions = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      TitleLines = 2
      TitleButtons = False
      OnDrawDataCell = dbgResolucionesDrawDataCell
      OnDblClick = dbgResolucionesDblClick
      object dbgResolucionesIButton: TwwIButton
        Left = 0
        Top = 0
        Width = 25
        Height = 36
        AllowAllUp = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33333333FF33333333FF333993333333300033377F3333333777333993333333
          300033F77FFF3333377739999993333333333777777F3333333F399999933333
          33003777777333333377333993333333330033377F3333333377333993333333
          3333333773333333333F333333333333330033333333F33333773333333C3333
          330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
          993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
          333333333337733333FF3333333C333330003333333733333777333333333333
          3000333333333333377733333333333333333333333333333333}
        NumGlyphs = 2
        OnClick = dbgResolucionesIButtonClick
      end
    end
    object bitAnula: TBitBtn
      Left = 506
      Top = 128
      Width = 69
      Height = 25
      Caption = 'Anular'
      TabOrder = 1
      OnClick = bitAnulaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object BitSalir: TBitBtn
      Left = 587
      Top = 128
      Width = 59
      Height = 25
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = 'Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitSalirClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
    object BitMostrar: TBitBtn
      Left = 10
      Top = 128
      Width = 103
      Height = 25
      Caption = 'Ver Historial'
      TabOrder = 3
      OnClick = bitMostrarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
  end
  object pnlResoluciones: TPanel
    Left = 78
    Top = -50
    Width = 500
    Height = 151
    Color = 13165023
    TabOrder = 1
    Visible = False
    object Shape3: TShape
      Left = 1
      Top = 1
      Width = 498
      Height = 21
      Align = alTop
      Brush.Color = clBackground
    end
    object Button1: TButton
      Left = 479
      Top = 2
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
      OnClick = Button1Click
    end
    object gbMantRes: TGroupBox
      Left = 9
      Top = 26
      Width = 485
      Height = 92
      Caption = 'Resoluciones :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object lblResNom: TLabel
        Left = 7
        Top = 22
        Width = 115
        Height = 16
        Caption = 'Nro. de Res. Nomb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblResCese: TLabel
        Left = 7
        Top = 46
        Width = 110
        Height = 16
        Caption = 'Nro. de Res. Cese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblFecRes: TLabel
        Left = 244
        Top = 23
        Width = 116
        Height = 16
        Caption = 'Fec. de Res. Nomb'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblFecCes: TLabel
        Left = 243
        Top = 46
        Width = 111
        Height = 16
        Caption = 'Fec. de Res. Cese'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 69
        Width = 81
        Height = 16
        Caption = 'Reingresante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 244
        Top = 69
        Width = 88
        Height = 16
        Caption = 'Resol. Vigente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object dbeNroResNom: TwwDBEdit
        Left = 128
        Top = 15
        Width = 105
        Height = 24
        DataField = 'ASORESNOM'
        DataSource = DM1.dsGradoA
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbeNroResCes: TwwDBEdit
        Left = 128
        Top = 41
        Width = 105
        Height = 24
        DataField = 'ASORESCESE'
        DataSource = DM1.dsGradoA
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object dbdFecResNom: TwwDBDateTimePicker
        Left = 365
        Top = 15
        Width = 111
        Height = 24
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'ASOFRESNOM'
        DataSource = DM1.dsGradoA
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
        DisplayFormat = 'dd/mm/yyyy'
      end
      object dbdFecResCes: TwwDBDateTimePicker
        Left = 365
        Top = 41
        Width = 111
        Height = 24
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        DataField = 'ASOFRESCESE'
        DataSource = DM1.dsGradoA
        Epoch = 1950
        ShowButton = True
        TabOrder = 3
        DisplayFormat = 'dd/mm/yyyy'
      end
      object chkReingreso: TwwCheckBox
        Left = 127
        Top = 68
        Width = 21
        Height = 20
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        DisplayValueChecked = 'S'
        DisplayValueUnchecked = 'N'
        NullAndBlankState = cbUnchecked
        DataField = 'REINGRESO'
        DataSource = DM1.dsGradoA
        Enabled = False
        TabOrder = 4
      end
      object chkVigente: TwwCheckBox
        Left = 364
        Top = 69
        Width = 17
        Height = 17
        DisableThemes = False
        AlwaysTransparent = False
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        DisplayValueChecked = 'S'
        DisplayValueUnchecked = 'N'
        NullAndBlankState = cbUnchecked
        DataField = 'RESVIG'
        DataSource = DM1.dsGradoA
        Enabled = False
        TabOrder = 5
      end
    end
    object btnGrabaResol: TBitBtn
      Left = 416
      Top = 121
      Width = 75
      Height = 24
      Caption = 'Grabar'
      TabOrder = 1
      OnClick = btnGrabaResolClick
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
    end
  end
  object pnlAnulacion: TPanel
    Left = 56
    Top = 24
    Width = 361
    Height = 89
    Caption = 'pnlAnulacion'
    Color = 13165023
    TabOrder = 2
    Visible = False
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 359
      Height = 21
      Align = alTop
      Brush.Color = clBackground
    end
    object Label7: TLabel
      Left = 7
      Top = 3
      Width = 183
      Height = 16
      Caption = 'Observaci'#243'n de Anulaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object BitBtn1: TBitBtn
      Left = 276
      Top = 60
      Width = 75
      Height = 25
      Caption = 'Anular'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object Button2: TButton
      Left = 341
      Top = 2
      Width = 20
      Height = 20
      Caption = 'x'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button2Click
    end
    object edtObsAnula: TEdit
      Left = 8
      Top = 31
      Width = 345
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
  end
end
