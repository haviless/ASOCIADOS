object fCtasAhorro: TfCtasAhorro
  Left = 267
  Top = 250
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cuentas De Ahorros'
  ClientHeight = 220
  ClientWidth = 684
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
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object grpDatos: TGroupBox
    Left = 3
    Top = -3
    Width = 678
    Height = 153
    TabOrder = 0
    object dtgCuentas: TwwDBGrid
      Left = 5
      Top = 10
      Width = 668
      Height = 138
      DisableThemesInTitle = False
      Selected.Strings = (
        'ASOITEM'#9'4'#9'Item'#9#9
        'ASONCTA'#9'12'#9'Cuenta~De Ahorros'#9#9
        'SITCTADES'#9'20'#9'Situaci'#243'n'#9'F'#9
        'BANCONOM'#9'25'#9'Banco'#9#9
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
      OnDrawDataCell = dtgCuentasDrawDataCell
    end
  end
  object grpCuentas: TGroupBox
    Left = 5
    Top = 151
    Width = 676
    Height = 66
    TabOrder = 1
    object Label10: TLabel
      Left = 209
      Top = 11
      Width = 93
      Height = 15
      Caption = 'Cuenta De Ahorros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 6
      Top = 11
      Width = 30
      Height = 15
      Caption = 'Banco'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 333
      Top = 11
      Width = 44
      Height = 15
      Caption = 'Situaci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object dbeCtaAho: TwwDBEdit
      Left = 209
      Top = 28
      Width = 119
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      MaxLength = 20
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DbLlTipBan: TwwDBLookupCombo
      Left = 6
      Top = 28
      Width = 41
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'BANCOID'#9'3'#9'Codigo'#9'F'
        'BANCONOM'#9'30'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsRecursos
      LookupField = 'BANCOID'
      Options = [loColLines, loRowLines, loTitles]
      Enabled = False
      ParentFont = False
      TabOrder = 1
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = DbLlTipBanChange
    end
    object Panel10: TPanel
      Left = 49
      Top = 27
      Width = 154
      Height = 25
      Caption = 'Panel10'
      Enabled = False
      TabOrder = 3
      object edtDesBan: TEdit
        Left = 1
        Top = 1
        Width = 152
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
    object dbSitCta: TwwDBLookupCombo
      Left = 332
      Top = 27
      Width = 42
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'SITCTAID'#9'3'#9'Codigo'#9'F'
        'SITCTADES'#9'15'#9'Descripci'#243'n'#9'F')
      LookupTable = DM1.cdsSitCta
      LookupField = 'SITCTAID'
      Options = [loColLines, loRowLines, loTitles]
      MaxLength = 1
      ParentFont = False
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dbSitCtaChange
    end
    object Panel1: TPanel
      Left = 380
      Top = 26
      Width = 124
      Height = 25
      Caption = 'Panel10'
      Enabled = False
      TabOrder = 5
      object EdtDesCta: TEdit
        Left = 1
        Top = 1
        Width = 121
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
    object z2bbtnAcepta: TfcShapeBtn
      Left = 508
      Top = 21
      Width = 32
      Height = 32
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
      RoundRectBias = 32
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 6
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnAceptaClick
    end
    object chkHabilita: TCheckBox
      Left = 52
      Top = 13
      Width = 98
      Height = 12
      Caption = 'Habilitar Bancos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = chkHabilitaClick
    end
    object fcShapeBtn1: TfcShapeBtn
      Left = 576
      Top = 21
      Width = 32
      Height = 32
      Cursor = crHandPoint
      Hint = 'Cancelar Cuenta'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
        0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
        FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
        FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
        0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
        F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
        FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
        0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
        003333337FFFFFFF773333330000000003333333777777777333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 32
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 7
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn1Click
    end
    object BitSalir: TBitBtn
      Left = 612
      Top = 23
      Width = 59
      Height = 27
      Cursor = crHandPoint
      Hint = 'Salir'
      Caption = 'Salir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
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
    object z2bbtnElimina: TfcShapeBtn
      Left = 542
      Top = 21
      Width = 32
      Height = 32
      Cursor = crHandPoint
      Hint = 'Eliminar Cuenta de Ahorros'
      Color = 10207162
      DitherColor = clWhite
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 32
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 9
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = z2bbtnEliminaClick
    end
  end
  object pnlCanCta: TPanel
    Left = 566
    Top = 21
    Width = 394
    Height = 108
    Color = 13165023
    TabOrder = 2
    Visible = False
    object Label3: TLabel
      Left = 8
      Top = 64
      Width = 116
      Height = 13
      Caption = '(Maximo 200 caracteres)'
    end
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 392
      Height = 23
      Align = alTop
      Brush.Color = 12870144
      Pen.Style = psClear
      Pen.Width = 0
    end
    object Label4: TLabel
      Left = 6
      Top = 5
      Width = 218
      Height = 13
      Caption = 'Comentario de Cancelaci'#243'n de Cuenta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object memObsCancelacion: TMemo
      Left = 7
      Top = 27
      Width = 362
      Height = 37
      MaxLength = 200
      TabOrder = 0
    end
    object Button1: TButton
      Left = 375
      Top = 4
      Width = 16
      Height = 17
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button1Click
    end
    object fcShapeBtn2: TfcShapeBtn
      Left = 356
      Top = 69
      Width = 32
      Height = 32
      Cursor = crHandPoint
      Hint = 'Graba Cancelacion de Cta'
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
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcShapeBtn2Click
    end
  end
  object pnlElimina: TPanel
    Left = 168
    Top = 16
    Width = 239
    Height = 152
    BorderWidth = 30
    BorderStyle = bsSingle
    Color = clTeal
    TabOrder = 3
    Visible = False
    object GroupBox1: TGroupBox
      Left = 6
      Top = 5
      Width = 225
      Height = 102
      Caption = ' Eliminar Cuenta '
      TabOrder = 0
      object Label5: TLabel
        Left = 9
        Top = 21
        Width = 34
        Height = 13
        Caption = 'Banco:'
      end
      object Label6: TLabel
        Left = 9
        Top = 43
        Width = 43
        Height = 13
        Caption = 'N'#250'mero: '
      end
      object Label7: TLabel
        Left = 9
        Top = 65
        Width = 36
        Height = 13
        Caption = 'Estado:'
      end
      object stbanco: TStaticText
        Left = 58
        Top = 20
        Width = 162
        Height = 17
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object stnumero: TStaticText
        Left = 58
        Top = 40
        Width = 131
        Height = 17
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object stestado: TStaticText
        Left = 58
        Top = 60
        Width = 131
        Height = 17
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
    end
    object fcselimina: TfcShapeBtn
      Left = 159
      Top = 115
      Width = 32
      Height = 32
      Cursor = crHandPoint
      Hint = 'Eliminar cuenta'
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
      RoundRectBias = 32
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 1
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcseliminaClick
    end
    object fcssalirelimina: TfcShapeBtn
      Left = 199
      Top = 114
      Width = 32
      Height = 32
      Cursor = crHandPoint
      Hint = 'Salir'
      Color = 10207162
      DitherColor = clWhite
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
      Options = [boFocusable]
      ParentClipping = True
      ParentShowHint = False
      RoundRectBias = 32
      ShadeColors.BtnFocus = clNavy
      ShadeStyle = fbsHighlight
      Shape = bsEllipse
      ShowHint = True
      TabOrder = 2
      TabStop = True
      TextOptions.Alignment = taCenter
      TextOptions.VAlignment = vaVCenter
      OnClick = fcssalireliminaClick
    end
  end
end
