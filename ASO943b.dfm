object FDatosSocEcoxReg: TFDatosSocEcoxReg
  Left = 250
  Top = 142
  Width = 800
  Height = 527
  Caption = 'Datos Socio Econ'#243'micos'
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
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object gbDatSoc: TGroupBox
    Left = 0
    Top = 0
    Width = 767
    Height = 213
    Align = alTop
    TabOrder = 0
    object Label8: TLabel
      Left = 5
      Top = 9
      Width = 71
      Height = 17
      Caption = 'Estado Civil '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 212
      Top = 9
      Width = 120
      Height = 17
      Caption = 'Grado De Instrucci'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 55
      Width = 55
      Height = 17
      Caption = 'Condici'#243'n '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 61
      Top = 55
      Width = 65
      Height = 17
      Caption = 'De Vivienda'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 256
      Top = 71
      Width = 64
      Height = 17
      Caption = 'Propiedades'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 112
      Width = 44
      Height = 17
      Caption = 'Negocio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 8
      Top = 148
      Width = 46
      Height = 17
      Caption = 'Vehiculo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 8
      Top = 185
      Width = 80
      Height = 17
      Caption = 'Carga Familiar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 206
      Top = 116
      Width = 91
      Height = 17
      Caption = 'Tipo De Negocio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label14: TLabel
      Left = 206
      Top = 152
      Width = 93
      Height = 17
      Caption = 'Tipo De Vehiculo'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 660
      Top = 152
      Width = 20
      Height = 17
      Caption = 'A'#241'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 361
      Top = 186
      Width = 55
      Height = 17
      Caption = 'Nro.Hijos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcEstCiv: TwwDBLookupCombo
      Left = 5
      Top = 26
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ESTCIVID'#9'2'#9'Codigo'#9'F'
        'ESTCIVDES'#9'20'#9'Descripci'#243'n'#9'F')
      DataField = 'ESTCIVID'
      DataSource = DM1.dsDSocioE
      LookupTable = DM1.cdsUSES
      LookupField = 'ESTCIVID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcEstCivChange
    end
    object dblGradIns: TwwDBLookupCombo
      Left = 210
      Top = 26
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'GRAINSID'#9'2'#9'Codigo'#9'F'
        'GRAINSABR'#9'20'#9'Descripci'#243'n'#9'F')
      DataField = 'GRAINSTID'
      DataSource = DM1.dsDSocioE
      LookupTable = DM1.cdsGradoI
      LookupField = 'GRAINSID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblGradInsChange
    end
    object dblcCondViv: TwwDBLookupCombo
      Left = 8
      Top = 74
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'TIPVIVID'#9'2'#9'Codigo'#9'F'
        'TIPVIVABR'#9'20'#9'Descripci'#243'n'#9'F')
      DataField = 'CONVIVID'
      DataSource = DM1.dsDSocioE
      LookupTable = DM1.cdsReclamo
      LookupField = 'TIPVIVID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcCondVivChange
    end
    object rgTipoPropiedad: TRadioGroup
      Left = 335
      Top = 61
      Width = 450
      Height = 33
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'CASA'
        'TERRENO'
        'LOCAL COMERCIAL')
      ParentFont = False
      TabOrder = 6
      OnClick = rgTipoPropiedadClick
    end
    object rgNegocio: TRadioGroup
      Left = 70
      Top = 102
      Width = 125
      Height = 33
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'NO'
        'SI')
      ParentFont = False
      TabOrder = 7
      OnClick = rgNegocioClick
    end
    object rgVehiculo: TRadioGroup
      Left = 70
      Top = 138
      Width = 125
      Height = 33
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Items.Strings = (
        'NO'
        'SI')
      ParentFont = False
      TabOrder = 9
      OnClick = rgVehiculoClick
    end
    object dbeTipNeg: TwwDBEdit
      Left = 310
      Top = 112
      Width = 437
      Height = 24
      CharCase = ecUpperCase
      DataField = 'INMUEBLE'
      DataSource = DM1.dsDSocioE
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeTipVei: TwwDBEdit
      Left = 310
      Top = 148
      Width = 309
      Height = 24
      CharCase = ecUpperCase
      DataField = 'VEHICULO'
      DataSource = DM1.dsDSocioE
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object dbeAnoVei: TwwDBEdit
      Left = 692
      Top = 148
      Width = 77
      Height = 24
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 4
      ParentFont = False
      TabOrder = 11
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
      OnKeyPress = dbeAnoVeiKeyPress
    end
    object dblcCargaFam: TwwDBLookupCombo
      Left = 100
      Top = 180
      Width = 42
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'PARENID'#9'2'#9'Codigo'#9'F'
        'PARENABR'#9'20'#9'Descripci'#243'n'#9'F')
      DataField = 'CRGFAMID'
      DataSource = DM1.dsDSocioE
      LookupTable = DM1.cdsTVia
      LookupField = 'PARENID'
      Options = [loColLines, loRowLines, loTitles]
      Style = csDropDownList
      ParentFont = False
      TabOrder = 12
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcCargaFamChange
    end
    object dbeNroHijos: TwwDBEdit
      Left = 424
      Top = 180
      Width = 57
      Height = 24
      CharCase = ecUpperCase
      DataField = 'NROHIJOS'
      DataSource = DM1.dsDSocioE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 2
      ParentFont = False
      TabOrder = 14
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object edtEstCiv: TEdit
      Left = 50
      Top = 26
      Width = 156
      Height = 24
      Color = 15527615
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtGraInst: TEdit
      Left = 255
      Top = 26
      Width = 156
      Height = 24
      Color = 15527615
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtCondViv: TEdit
      Left = 52
      Top = 74
      Width = 183
      Height = 24
      Color = 15527615
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object edtCargaFam: TEdit
      Left = 145
      Top = 180
      Width = 183
      Height = 24
      Color = 15527615
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
  end
  object gbLaborales: TGroupBox
    Left = 0
    Top = 213
    Width = 767
    Height = 240
    Align = alTop
    TabOrder = 1
    object lblCARLAB: TLabel
      Left = 32
      Top = 16
      Width = 76
      Height = 17
      Caption = 'Cargo Laboral'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblSITACT: TLabel
      Left = 34
      Top = 72
      Width = 97
      Height = 17
      Caption = 'Situaci'#243'n Laboral'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblTIPSER: TLabel
      Left = 35
      Top = 121
      Width = 92
      Height = 17
      Caption = 'Tipo de Servidor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblIngBruto: TLabel
      Left = 36
      Top = 168
      Width = 79
      Height = 17
      Caption = 'Ingreso Bruto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object lblIngresoNeto: TLabel
      Left = 165
      Top = 168
      Width = 75
      Height = 17
      Caption = 'Ingreso Neto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Splitter1: TSplitter
      Left = 379
      Top = 5
      Width = 9
      Height = 234
      Align = alCustom
      AutoSnap = False
      Beveled = True
      Color = clSilver
      ParentColor = False
    end
    object dbeIngBruto: TwwDBEdit
      Left = 36
      Top = 192
      Width = 110
      Height = 27
      BorderStyle = bsNone
      DataField = 'AINGFAM'
      DataSource = DM1.dsDSocioE
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 6
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeIngBrutoExit
      OnKeyPress = dbeIngBrutoKeyPress
    end
    object dbeIngresoNeto: TwwDBEdit
      Left = 168
      Top = 192
      Width = 112
      Height = 27
      BorderStyle = bsNone
      DataField = 'AINGMAG'
      DataSource = DM1.dsDSocioE
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Frame.Enabled = True
      Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
      ParentFont = False
      TabOrder = 7
      UnboundDataType = wwDefault
      UnboundAlignment = taRightJustify
      WantReturns = False
      WordWrap = False
      OnExit = dbeIngresoNetoExit
      OnKeyPress = dbeIngresoNetoKeyPress
    end
    object dblcSituacLab: TwwDBLookupCombo
      Left = 32
      Top = 88
      Width = 55
      Height = 21
      DropDownAlignment = taLeftJustify
      DataField = 'SITACT'
      DataSource = DM1.dsDSocioE
      LookupTable = DM1.cdsQry6
      LookupField = 'COD_SIT'
      Options = [loColLines, loRowLines, loTitles]
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcSituacLabChange
    end
    object dblcTipoServidor: TwwDBLookupCombo
      Left = 32
      Top = 138
      Width = 55
      Height = 21
      DropDownAlignment = taLeftJustify
      DataField = 'TIPSER'
      DataSource = DM1.dsDSocioE
      LookupTable = DM1.cdsTPension
      LookupField = 'COD_SIT'
      Options = [loColLines, loRowLines, loTitles]
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = dblcTipoServidorChange
    end
    object gbDatosPeriodo: TGroupBox
      Left = 400
      Top = 40
      Width = 370
      Height = 129
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object lblIDE_PAD: TLabel
        Left = 215
        Top = 74
        Width = 107
        Height = 17
        Caption = 'Padr'#243'n de Descargo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object lblPERIODO_PADRON: TLabel
        Left = 215
        Top = 22
        Width = 134
        Height = 17
        Caption = 'Periodo de Actualizaci'#243'n'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object rgTipoActualiz: TRadioGroup
        Left = 9
        Top = 35
        Width = 191
        Height = 59
        Caption = 'Tipo de Actualici'#243'n'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        Items.Strings = (
          'Descargo de Boleta de Pago'
          'Descargo por Padr'#243'n')
        ParentFont = False
        TabOrder = 0
        OnClick = rgTipoActualizClick
      end
      object dbeIDE_PAD: TwwDBEdit
        Left = 211
        Top = 94
        Width = 121
        Height = 23
        BorderStyle = bsNone
        Color = 13165023
        DataField = 'IDE_PAD'
        DataSource = DM1.dsDSocioE
        Enabled = False
        Frame.Enabled = True
        Frame.NonFocusBorders = [efRightBorder, efBottomBorder]
        ReadOnly = True
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object seAnoDatLab: TSpinEdit
        Left = 211
        Top = 43
        Width = 65
        Height = 27
        MaxValue = 2020
        MinValue = 0
        TabOrder = 1
        Value = 0
      end
      object seMesDatLab: TSpinEdit
        Left = 285
        Top = 43
        Width = 41
        Height = 27
        MaxLength = 2
        MaxValue = 12
        MinValue = 1
        TabOrder = 2
        Value = 1
        OnExit = seMesDatLabExit
      end
    end
    object edtCargoLab: TEdit
      Left = 98
      Top = 40
      Width = 200
      Height = 24
      Color = 15527615
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtSituacLab: TEdit
      Left = 98
      Top = 88
      Width = 200
      Height = 24
      Color = 15527615
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtTipoServidor: TEdit
      Left = 98
      Top = 138
      Width = 200
      Height = 24
      Color = 15527615
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object dblcdCargoLab: TwwDBLookupComboDlg
      Left = 32
      Top = 40
      Width = 55
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'CARLAB'
      DataSource = DM1.dsDSocioE
      LookupTable = DM1.cdsQry8
      LookupField = 'COD_SIT'
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdCargoLabChange
      OnDropDown = dblcdCargoLabDropDown
    end
    object btnDescuentos: TBitBtn
      Left = 288
      Top = 193
      Width = 89
      Height = 25
      Caption = '&Descuentos'
      TabOrder = 9
      OnClick = btnDescuentosClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555FFFFFFFFFF5555550000000000555557777777777F5555550FFFFFFFF
        0555557F5FFFF557F5555550F0000FFF0555557F77775557F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFFFFF7F5555550F000000F0555557F77777757F5555550FFFFFFFF
        0555557F5FFF5557F5555550F000FFFF0555557F77755FF7F5555550FFFFF000
        0555557F5FF5777755555550F00FF0F05555557F77557F7555555550FFFFF005
        5555557FFFFF7755555555500000005555555577777775555555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object gbpnlForma: TGroupBox
    Left = 0
    Top = 453
    Width = 767
    Height = 46
    Align = alTop
    TabOrder = 2
    object bbtnSalirDatLab: TBitBtn
      Left = 677
      Top = 12
      Width = 105
      Height = 25
      Caption = '&Salir'
      TabOrder = 0
      OnClick = bbtnSalirDatLabClick
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
    object bbtnGrabaDatLab: TBitBtn
      Left = 565
      Top = 12
      Width = 105
      Height = 25
      Caption = 'Grabar'
      TabOrder = 1
      OnClick = bbtnGrabaDatLabClick
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
end
