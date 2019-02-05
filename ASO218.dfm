object FPadronMultiplicados: TFPadronMultiplicados
  Left = 35
  Top = 190
  BorderStyle = bsDialog
  Caption = 'Registros Multiplicados del Padr'#243'n'
  ClientHeight = 426
  ClientWidth = 1250
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl: TLabel
    Left = 152
    Top = 408
    Width = 97
    Height = 13
    Caption = 'Reg. a Procesar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblTotalRegPen: TLabel
    Left = 264
    Top = 408
    Width = 21
    Height = 13
    Caption = '     '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 152
    Top = 392
    Width = 273
    Height = 13
    Caption = '(*) Solo se muestran los cien primeros registros a procesar.'
    Color = 10207162
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object grpTipoRegistro: TGroupBox
    Left = 8
    Top = 8
    Width = 281
    Height = 75
    TabOrder = 0
    DesignSize = (
      281
      75)
    object Label2: TLabel
      Left = 7
      Top = 22
      Width = 34
      Height = 15
      Caption = 'Estado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 7
      Top = 46
      Width = 76
      Height = 15
      Caption = 'Inconsistencia'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcdEstado: TwwDBLookupComboDlg
      Left = 90
      Top = 20
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Estados'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTemp2
      LookupField = 'CODEST'
      MaxLength = 2
      TabOrder = 0
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdEstadoChange
    end
    object edtEstado: TMaskEdit
      Left = 145
      Top = 20
      Width = 131
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dblcdInconsistencia: TwwDBLookupComboDlg
      Left = 90
      Top = 44
      Width = 55
      Height = 21
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Estados'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsInconsistencia
      LookupField = 'CODTIPREG'
      MaxLength = 2
      TabOrder = 2
      AutoDropDown = True
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdInconsistenciaChange
    end
    object edtInconsistencia: TMaskEdit
      Left = 145
      Top = 44
      Width = 131
      Height = 21
      TabStop = False
      Anchors = [akLeft, akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object btnMostrar: TBitBtn
    Left = 1144
    Top = 56
    Width = 97
    Height = 27
    Cursor = crHandPoint
    Caption = 'Resultados'
    TabOrder = 3
    OnClick = btnMostrarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
      33333333373F33333333333330B03333333333337F7F33333333333330F03333
      333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
      333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
      333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
      3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
      33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
      33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
      03333337777777F7F33333330000000003333337777777773333}
    NumGlyphs = 2
  end
  object btnSalir: TBitBtn
    Left = 1152
    Top = 392
    Width = 89
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 10
    OnClick = btnSalirClick
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
  object dbgPadron: TwwDBGrid
    Left = 8
    Top = 88
    Width = 1233
    Height = 294
    DisableThemesInTitle = False
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    DataSource = DM1.dsQry1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgShowFooter]
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleLines = 2
    TitleButtons = False
    OnCalcCellColors = dbgPadronCalcCellColors
    OnDblClick = dbgPadronDblClick
  end
  object btnVerRegistro: TBitBtn
    Left = 728
    Top = 392
    Width = 89
    Height = 27
    Caption = 'Ver registro'
    TabOrder = 7
    OnClick = btnVerRegistroClick
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
  object grpBuscarAsociado: TGroupBox
    Left = 624
    Top = 8
    Width = 433
    Height = 75
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object rbtApeNom: TRadioButton
      Left = 42
      Top = 16
      Width = 135
      Height = 17
      Caption = 'Apellidos y Nombres(D.N.I.)'
      Checked = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = rbtApeNomClick
    end
    object rbtDni: TRadioButton
      Left = 176
      Top = 16
      Width = 57
      Height = 17
      Caption = 'D.N.I.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = rbtDniClick
    end
    object edtBuscar: TEdit
      Left = 10
      Top = 42
      Width = 114
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object rbtCodMod: TRadioButton
      Left = 224
      Top = 16
      Width = 89
      Height = 17
      Caption = 'Codigo Modular'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = rbtCodModClick
    end
    object rbtCuentaAhorros: TRadioButton
      Left = 312
      Top = 16
      Width = 89
      Height = 17
      Caption = 'Cuenta Ahorros'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -9
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = rbtCuentaAhorrosClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 296
    Top = 8
    Width = 321
    Height = 75
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 7
      Top = 22
      Width = 35
      Height = 15
      Caption = 'Regi'#243'n'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 52
      Width = 78
      Height = 15
      Caption = 'Tipo de planilla'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object dblcddptoid: TwwDBLookupComboDlg
      Left = 91
      Top = 18
      Width = 47
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Regi'#243'n'
      MaxWidth = 0
      MaxHeight = 209
      MaxLength = 3
      ParentFont = False
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcddptoidChange
    end
    object dblcdasotipid: TwwDBLookupComboDlg
      Left = 91
      Top = 47
      Width = 47
      Height = 22
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Tipo de planilla'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsTAso
      LookupField = 'ASOTIPID'
      TabOrder = 2
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdasotipidChange
    end
    object edtdptodes: TMaskEdit
      Left = 142
      Top = 18
      Width = 170
      Height = 22
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object edtasotipdes: TMaskEdit
      Left = 142
      Top = 46
      Width = 170
      Height = 22
      TabStop = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
  end
  object btnVerPorDni: TBitBtn
    Left = 824
    Top = 392
    Width = 89
    Height = 27
    Caption = 'Ver por DNI'
    TabOrder = 8
    OnClick = btnVerPorDniClick
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
  object btnReemplazarTexto: TBitBtn
    Left = 8
    Top = 391
    Width = 121
    Height = 27
    Caption = 'Reemplazar Texto'
    TabOrder = 5
    OnClick = btnReemplazarTextoClick
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
  object btnVerErrores: TBitBtn
    Left = 1056
    Top = 392
    Width = 89
    Height = 27
    Caption = 'Ver errores'
    TabOrder = 9
    OnClick = btnVerErroresClick
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
  object chkASOIDNOTNULL: TCheckBox
    Left = 1072
    Top = 24
    Width = 97
    Height = 17
    Caption = 'Tienen ASOID'
    TabOrder = 11
  end
  object btnEliminar: TBitBtn
    Left = 632
    Top = 392
    Width = 89
    Height = 27
    Caption = '&Eliminar DNI'
    TabOrder = 6
    OnClick = btnEliminarClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
      555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
      05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
      FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
      FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
      FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
      05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
      555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
      9055575757575757775505050505055505557575757575557555}
    NumGlyphs = 2
  end
  object btnProcesar: TBitBtn
    Left = 920
    Top = 392
    Width = 129
    Height = 27
    Caption = 'Proceso autom'#225'tico'
    TabOrder = 12
    OnClick = btnProcesarClick
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
