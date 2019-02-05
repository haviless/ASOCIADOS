object FTipoDctoConver: TFTipoDctoConver
  Left = 478
  Top = 274
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Conversi'#243'n de tipo de descuento'
  ClientHeight = 164
  ClientWidth = 403
  Color = 10207162
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblCODDCTOORI: TLabel
    Left = 8
    Top = 128
    Width = 82
    Height = 13
    Caption = 'lblCODDCTOORI'
    Visible = False
  end
  object lblCODDCTODEST: TLabel
    Left = 8
    Top = 144
    Width = 92
    Height = 13
    Caption = 'lblCODDCTODEST'
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 8
    Width = 401
    Height = 49
    Caption = 'Tipo origen'
    TabOrder = 0
    object dblcdTipoOrigen: TwwDBLookupComboDlg
      Left = 8
      Top = 18
      Width = 105
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Tipo de descuento origen'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsDpto
      LookupField = 'CODDCTO'
      Enabled = False
      MaxLength = 20
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdTipoOrigenChange
    end
    object edtTipoOrigen: TMaskEdit
      Left = 116
      Top = 18
      Width = 277
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 1
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 64
    Width = 401
    Height = 57
    Caption = 'Tipo destino'
    TabOrder = 1
    object dblcdTipoDestino: TwwDBLookupComboDlg
      Left = 8
      Top = 18
      Width = 105
      Height = 21
      GridOptions = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgPerfectRowFit]
      GridColor = clWhite
      GridTitleAlignment = taLeftJustify
      Caption = 'Tipo de descuento destino'
      MaxWidth = 0
      MaxHeight = 209
      LookupTable = DM1.cdsProvin
      LookupField = 'CODDCTO'
      Enabled = False
      MaxLength = 20
      TabOrder = 0
      AutoDropDown = False
      ShowButton = True
      AllowClearKey = False
      OnChange = dblcdTipoDestinoChange
    end
    object edtTipoDestino: TMaskEdit
      Left = 116
      Top = 18
      Width = 277
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = 15132390
      Enabled = False
      TabOrder = 1
    end
  end
  object btnSalir: TBitBtn
    Left = 309
    Top = 129
    Width = 89
    Height = 27
    Cursor = crHandPoint
    Caption = '&Salir'
    TabOrder = 4
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
  object btngrabar: TBitBtn
    Left = 136
    Top = 129
    Width = 75
    Height = 27
    Caption = 'Grabar'
    TabOrder = 2
    OnClick = btngrabarClick
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
  object btnEliminar: TBitBtn
    Left = 224
    Top = 129
    Width = 75
    Height = 27
    Caption = 'Eliminar'
    TabOrder = 3
    OnClick = btnEliminarClick
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
end
