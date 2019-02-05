object FResNomParaReliq: TFResNomParaReliq
  Left = 407
  Top = 232
  BorderStyle = bsDialog
  Caption = 'Cambiar Datos de Res. de Nombramiento para Reliquidaci'#243'n'
  ClientHeight = 299
  ClientWidth = 557
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 537
    Height = 97
    Caption = 'Datos del Asociado'
    TabOrder = 0
    object TLabel
      Left = 13
      Top = 18
      Width = 80
      Height = 15
      Caption = 'Codigo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 151
      Top = 18
      Width = 138
      Height = 15
      Caption = 'Apellidos y Nombres (DNI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 13
      Top = 66
      Width = 88
      Height = 15
      Caption = 'Tipo de Asociado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object edtASOCODMOD: TwwDBEdit
      Left = 10
      Top = 34
      Width = 111
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASOCODMOD'
      DataSource = DM1.dsAsociado
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtASOAPENOMDNI: TwwDBEdit
      Left = 146
      Top = 34
      Width = 383
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASOAPENOMDNI'
      DataSource = DM1.dsAsociado
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object BitBuscar: TButton
      Left = 123
      Top = 35
      Width = 22
      Height = 24
      Cursor = crHandPoint
      Caption = '...'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBuscarClick
    end
    object edtASOTIPID: TwwDBEdit
      Left = 104
      Top = 65
      Width = 33
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASOTIPID'
      DataSource = DM1.dsAsociado
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtTipoAsociado: TwwDBEdit
      Left = 140
      Top = 65
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASOTIPDES'
      DataSource = DM1.dsAsociado
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtASOID: TwwDBEdit
      Left = 324
      Top = 65
      Width = 105
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASOID'
      DataSource = DM1.dsAsociado
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      UnboundDataType = wwDefault
      Visible = False
      WantReturns = False
      WordWrap = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 112
    Width = 537
    Height = 81
    Caption = 'Datos de la Resoluci'#243'n Vigente'
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 24
      Width = 108
      Height = 13
      Caption = 'N'#186' Res. Nombramiento'
    end
    object Label2: TLabel
      Left = 253
      Top = 24
      Width = 101
      Height = 13
      Caption = 'Fecha Nombramiento'
    end
    object Label3: TLabel
      Left = 13
      Top = 56
      Width = 64
      Height = 13
      Caption = 'N'#186' Res. Cese'
    end
    object Label4: TLabel
      Left = 253
      Top = 56
      Width = 57
      Height = 13
      Caption = 'Fecha Cese'
    end
    object edtResNomb: TwwDBEdit
      Left = 130
      Top = 18
      Width = 111
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASORESNOM'
      DataSource = DM1.dsAsociado
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbdFecResNom: TwwDBDateTimePicker
      Left = 365
      Top = 18
      Width = 111
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'ASOFRESNOM'
      DataSource = DM1.dsAsociado
      Epoch = 1950
      Enabled = False
      ShowButton = True
      TabOrder = 1
      DisplayFormat = 'dd/mm/yyyy'
    end
    object edtResCese: TwwDBEdit
      Left = 130
      Top = 50
      Width = 111
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ASORESCESE'
      DataSource = DM1.dsAsociado
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbdFecResCese: TwwDBDateTimePicker
      Left = 365
      Top = 50
      Width = 111
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      DataField = 'ASOFRESCESE'
      DataSource = DM1.dsAsociado
      Epoch = 1950
      Enabled = False
      ShowButton = True
      TabOrder = 3
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 200
    Width = 537
    Height = 49
    Caption = 'Nuevos Datos de Resoluci'#243'n de Nombramiento'
    TabOrder = 2
    object Label5: TLabel
      Left = 13
      Top = 24
      Width = 108
      Height = 13
      Caption = 'N'#186' Res. Nombramiento'
    end
    object Label6: TLabel
      Left = 253
      Top = 24
      Width = 101
      Height = 13
      Caption = 'Fecha Nombramiento'
    end
    object edtResNomb2: TwwDBEdit
      Left = 130
      Top = 18
      Width = 111
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 15
      ParentFont = False
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbdFecResNom2: TwwDBDateTimePicker
      Left = 365
      Top = 18
      Width = 111
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
      DisplayFormat = 'dd/mm/yyyy'
    end
  end
  object btnGrabaResol: TBitBtn
    Left = 392
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Grabar'
    TabOrder = 3
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
  object BitSalir: TBitBtn
    Left = 475
    Top = 264
    Width = 70
    Height = 25
    Hint = 'Salir'
    Caption = 'Salir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
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
end
