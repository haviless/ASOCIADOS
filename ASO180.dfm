object Fcamtipaso: TFcamtipaso
  Left = 267
  Top = 210
  ActiveControl = dblcdtipaso
  BorderStyle = bsDialog
  Caption = ' Mantenimiento del tipo de asociado '
  ClientHeight = 351
  ClientWidth = 557
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 1
    Top = 1
    Width = 552
    Height = 149
    Caption = ' Datos del asociado '
    TabOrder = 0
    object Label1: TLabel
      Left = 9
      Top = 18
      Width = 74
      Height = 13
      Caption = 'C'#243'digo Modular'
    end
    object Label2: TLabel
      Left = 92
      Top = 18
      Width = 101
      Height = 13
      Caption = 'Apellidos y Nombre(s)'
    end
    object Label3: TLabel
      Left = 9
      Top = 59
      Width = 90
      Height = 13
      Caption = 'Unidad de proceso'
    end
    object Label4: TLabel
      Left = 274
      Top = 59
      Width = 88
      Height = 13
      Caption = 'Unidad de Gesti'#243'n'
    end
    object Label5: TLabel
      Left = 9
      Top = 100
      Width = 82
      Height = 13
      Caption = 'Tipo de asociado'
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
      Left = 89
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
        Text = 'edtasoapenom'
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
      Left = 272
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
  end
  object gbmodificar: TGroupBox
    Left = 1
    Top = 184
    Width = 400
    Height = 162
    Caption = ' Modificar tipo de asociado '
    TabOrder = 1
    object btnActualizar: TBitBtn
      Left = 306
      Top = 124
      Width = 78
      Height = 25
      Caption = 'Actualizar'
      TabOrder = 0
      OnClick = btnActualizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object dblcdtipaso: TwwDBLookupComboDlg
      Left = 8
      Top = 21
      Width = 49
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTAso
      LookupField = 'ASOTIPID'
      TabOrder = 1
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdtipasoExit
    end
    object Panel6: TPanel
      Left = 61
      Top = 21
      Width = 247
      Height = 23
      Caption = 'Panel6'
      Enabled = False
      TabOrder = 2
      object metipaso: TMaskEdit
        Left = 1
        Top = 1
        Width = 245
        Height = 21
        TabOrder = 0
      end
    end
    object gbNroResol: TGroupBox
      Left = 8
      Top = 48
      Width = 273
      Height = 107
      Caption = ' Resoluci'#243'n de Resoluci'#243'n'
      TabOrder = 3
      object Label6: TLabel
        Left = 6
        Top = 23
        Width = 43
        Height = 13
        Caption = 'Numero :'
      end
      object lblFecinicio: TLabel
        Left = 6
        Top = 51
        Width = 36
        Height = 13
        Caption = 'Fecha :'
      end
      object lblFechaFinal: TLabel
        Left = 6
        Top = 78
        Width = 58
        Height = 13
        Caption = 'Fecha Final:'
        Visible = False
      end
      object Panel7: TPanel
        Left = 96
        Top = 19
        Width = 129
        Height = 23
        Caption = 'Panel7'
        TabOrder = 0
        object menumresnom: TMaskEdit
          Left = 1
          Top = 1
          Width = 128
          Height = 21
          CharCase = ecUpperCase
          MaxLength = 15
          TabOrder = 0
        end
      end
      object dbdtpfecresnom: TwwDBDateTimePicker
        Left = 96
        Top = 47
        Width = 121
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 1
      end
      object dbdtpFechaFinal: TwwDBDateTimePicker
        Left = 96
        Top = 74
        Width = 121
        Height = 21
        CalendarAttributes.Font.Charset = DEFAULT_CHARSET
        CalendarAttributes.Font.Color = clWindowText
        CalendarAttributes.Font.Height = -11
        CalendarAttributes.Font.Name = 'MS Sans Serif'
        CalendarAttributes.Font.Style = []
        Epoch = 1950
        ShowButton = True
        TabOrder = 2
        Visible = False
      end
    end
  end
  object btnModificar: TBitBtn
    Left = 1
    Top = 154
    Width = 75
    Height = 25
    Caption = 'Modificar'
    TabOrder = 2
    OnClick = btnModificarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
  end
  object btnCerrar: TBitBtn
    Left = 478
    Top = 305
    Width = 75
    Height = 25
    Caption = 'Cerrar'
    TabOrder = 3
    OnClick = btnCerrarClick
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
  object pnlconfirmacion: TPanel
    Left = 165
    Top = 46
    Width = 276
    Height = 283
    BorderStyle = bsSingle
    Color = clMoneyGreen
    ParentShowHint = False
    ShowHint = False
    TabOrder = 4
    object Memo1: TMemo
      Left = 14
      Top = 41
      Width = 244
      Height = 88
      Align = alCustom
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Lines.Strings = (
        'Color de prueba')
      ParentFont = False
      TabOrder = 0
    end
    object BtnAceptar: TBitBtn
      Left = 15
      Top = 136
      Width = 78
      Height = 25
      Caption = 'Aceptar'
      TabOrder = 1
      OnClick = BtnAceptarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object BtnCancelar: TBitBtn
      Left = 104
      Top = 136
      Width = 78
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = BtnCancelarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
    object BtnConfirmar2: TBitBtn
      Left = 16
      Top = 240
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 3
      OnClick = BtnConfirmar2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
    end
    object StaticText1: TStaticText
      Left = 1
      Top = 1
      Width = 270
      Height = 22
      Align = alTop
      Alignment = taCenter
      Caption = #161#161#161' ATENCION !!!'
      Color = clTeal
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object Memo2: TMemo
      Left = 15
      Top = 174
      Width = 247
      Height = 56
      Align = alCustom
      BorderStyle = bsNone
      Color = clMoneyGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      Lines.Strings = (
        'Tenga mucho cuidado.'
        'Este cambio no podr'#225' ser revertido despu'#233's de '
        'actualizado.')
      ParentFont = False
      TabOrder = 5
    end
    object BtnCancelar2: TBitBtn
      Left = 106
      Top = 240
      Width = 78
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 6
      OnClick = BtnCancelar2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
    end
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 496
    Top = 40
  end
  object Timer2: TTimer
    Interval = 500
    OnTimer = Timer2Timer
    Left = 496
    Top = 176
  end
end
