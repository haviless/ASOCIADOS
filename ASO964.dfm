object Fautdes: TFautdes
  Left = 532
  Top = 196
  BorderStyle = bsDialog
  Caption = 'Autorizaci'#243'n de descuento de Aportes'
  ClientHeight = 362
  ClientWidth = 443
  Color = 12114134
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
  object Label4: TLabel
    Left = 18
    Top = 297
    Width = 119
    Height = 13
    Caption = 'Motivo de Desestimiento:'
  end
  object Bevel1: TBevel
    Left = 3
    Top = 320
    Width = 437
    Height = 5
  end
  object gbgrupo: TGroupBox
    Left = 8
    Top = 8
    Width = 429
    Height = 277
    Caption = ' Detalle de la autorizaci'#243'n de descuento :'
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 25
      Width = 103
      Height = 13
      Caption = 'Usuario que autoriz'#243' :'
    end
    object Label2: TLabel
      Left = 7
      Top = 46
      Width = 111
      Height = 13
      Caption = 'Fecha de autorizaci'#243'n :'
    end
    object Label3: TLabel
      Left = 7
      Top = 120
      Width = 100
      Height = 13
      Caption = 'Oficina que autoriza :'
    end
    object Label5: TLabel
      Left = 31
      Top = 145
      Width = 84
      Height = 17
      Caption = 'Procesado En : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 31
      Top = 186
      Width = 84
      Height = 17
      Caption = 'Unidad De Pago'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 31
      Top = 224
      Width = 60
      Height = 17
      Caption = 'Use / Ugel'
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -12
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 7
      Top = 98
      Width = 88
      Height = 13
      Caption = 'Fecha de registro :'
    end
    object Label9: TLabel
      Left = 5
      Top = 73
      Width = 110
      Height = 13
      Caption = 'Motivo de autorizaci'#243'n:'
    end
    object edtusuaut: TEdit
      Left = 126
      Top = 21
      Width = 233
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 0
    end
    object edtfecregaut: TEdit
      Left = 126
      Top = 95
      Width = 233
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 2
    end
    object edtofiaut: TEdit
      Left = 126
      Top = 117
      Width = 233
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 3
    end
    object DbLUniPro: TwwDBLookupComboDlg
      Left = 33
      Top = 161
      Width = 49
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'UPROID'
      DataSource = DM1.dsAso
      LookupField = 'UPROID'
      Enabled = False
      TabOrder = 4
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dbeUproDes: TMaskEdit
      Left = 83
      Top = 161
      Width = 300
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 5
    end
    object DbLUniPag: TwwDBLookupComboDlg
      Left = 33
      Top = 202
      Width = 49
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'UPAGOID'
      DataSource = DM1.dsAso
      LookupField = 'UPAGOID'
      Enabled = False
      TabOrder = 6
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dbeUpagDes: TMaskEdit
      Left = 83
      Top = 202
      Width = 300
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 7
    end
    object DbLUses: TwwDBLookupComboDlg
      Left = 33
      Top = 241
      Width = 49
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      DataField = 'USEID'
      DataSource = DM1.dsAso
      LookupField = 'USEID'
      Enabled = False
      TabOrder = 8
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
    end
    object dbeUses: TMaskEdit
      Left = 83
      Top = 241
      Width = 300
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 9
    end
    object dbdtfecaut: TwwDBDateTimePicker
      Left = 126
      Top = 44
      Width = 107
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'MS Sans Serif'
      CalendarAttributes.Font.Style = []
      Epoch = 1950
      ShowButton = True
      TabOrder = 1
      UnboundDataType = wwDTEdtDate
      OnExit = dbdtfecautExit
    end
    object dblcdmotCADAPS: TwwDBLookupComboDlg
      Left = 126
      Top = 69
      Width = 49
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Lookup'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsAutCADAPS
      LookupField = 'CODMOTAUTCADAPS'
      TabOrder = 10
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnExit = dblcdmotCADAPSExit
    end
    object Panel2: TPanel
      Left = 179
      Top = 67
      Width = 230
      Height = 23
      Enabled = False
      TabOrder = 11
      object edtdesmotCADAPS: TEdit
        Left = 1
        Top = 1
        Width = 228
        Height = 21
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object dblcdmotdesapo: TwwDBLookupComboDlg
    Left = 150
    Top = 296
    Width = 49
    Height = 21
    GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
    GridColor = clWhite
    GridTitleAlignment = taLeftJustify
    Caption = 'Lookup'
    MaxWidth = 0
    MaxHeight = 209
    LookupTable = DM1.cdsReclamoMotiv
    LookupField = 'CODMOTDEST'
    Enabled = False
    TabOrder = 1
    AutoDropDown = False
    ShowButton = True
    AllowClearKey = False
    OnChange = dblcdmotdesapoChange
    OnExit = dblcdmotdesapoExit
  end
  object Panel1: TPanel
    Left = 200
    Top = 295
    Width = 230
    Height = 23
    Enabled = False
    TabOrder = 2
    object edtdesaut: TEdit
      Left = 1
      Top = 1
      Width = 228
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
  end
  object btnactualiza: TBitBtn
    Left = 264
    Top = 328
    Width = 89
    Height = 27
    Caption = 'Desaut. Dcto'
    TabOrder = 4
    OnClick = btnactualizaClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
      555557777F777555F55500000000555055557777777755F75555005500055055
      555577F5777F57555555005550055555555577FF577F5FF55555500550050055
      5555577FF77577FF555555005050110555555577F757777FF555555505099910
      555555FF75777777FF555005550999910555577F5F77777775F5500505509990
      3055577F75F77777575F55005055090B030555775755777575755555555550B0
      B03055555F555757575755550555550B0B335555755555757555555555555550
      BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
      50BB555555555555575F555555555555550B5555555555555575}
    NumGlyphs = 2
  end
  object btncerrar: TBitBtn
    Left = 360
    Top = 328
    Width = 77
    Height = 27
    Caption = 'Cerrar'
    TabOrder = 5
    OnClick = btncerrarClick
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
  object BitAutDes: TBitBtn
    Left = 184
    Top = 328
    Width = 73
    Height = 27
    Cursor = crHandPoint
    Hint = 'Autorizaci'#243'n de Descuentos de Aportes'
    Caption = 'Aut.Dcto.'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnClick = BitAutDesClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333FFFFF3333333333000003333333333F777773FF333333008877700
      33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
      703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
      77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
      07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
      780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
      8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
      3333333773FFFF77333333333000003333333333377777333333}
    NumGlyphs = 2
    Spacing = 0
  end
  object BitPrint: TBitBtn
    Left = 104
    Top = 328
    Width = 73
    Height = 27
    Hint = 'Imprimir'
    Caption = 'Imprimir'
    TabOrder = 6
    OnClick = BitPrintClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
      00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
      8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
      8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
      8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
      03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
      03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
      33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
      33333337FFFF7733333333300000033333333337777773333333}
    NumGlyphs = 2
  end
end
